(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:31:16
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
(declare-sort $FVF<Ref__Integer_value> 0)
(declare-sort $FVF<Ref__b> 0)
(declare-sort $FVF<Ref__c> 0)
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
; /field_value_functions_declarations.smt2 [Ref__Integer_value: Int]
(declare-fun $FVF.domain_Ref__Integer_value ($FVF<Ref__Integer_value>) Set<$Ref>)
(declare-fun $FVF.lookup_Ref__Integer_value ($FVF<Ref__Integer_value> $Ref) Int)
(declare-fun $FVF.after_Ref__Integer_value ($FVF<Ref__Integer_value> $FVF<Ref__Integer_value>) Bool)
(declare-fun $FVF.loc_Ref__Integer_value (Int $Ref) Bool)
(declare-fun $FVF.perm_Ref__Integer_value ($FPM $Ref) $Perm)
(declare-const $fvfTOP_Ref__Integer_value $FVF<Ref__Integer_value>)
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
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))))))
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
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))))))))
  $Snap.unit))
; [eval] diz.Ref__b[tid].Ref__Integer_value == tid
; [eval] diz.Ref__b[tid]
(set-option :timeout 0)
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
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))))))))
  tid@11@01))
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
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))
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
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))
; [eval] diz.Ref__a[tid]
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@19@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))
      tid@11@01)
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))
; [eval] diz.Ref__b[tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@20@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))
    tid@11@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))
      tid@11@01)
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))))
; [eval] diz.Ref__c[tid]
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@21@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))
    tid@11@01))))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))
    tid@11@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))
      tid@11@01)
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))))
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (> tid@11@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (> tid@11@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | tid@11@01 > 0 | live]
; [else-branch: 0 | !(tid@11@01 > 0) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | tid@11@01 > 0]
(assert (> tid@11@01 0))
; [eval] diz.Ref__a[tid - 1]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@19@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 4
(assert (not (>= (- tid@11@01 1) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  (- tid@11@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))
    (- tid@11@01 1)))))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))
    (- tid@11@01 1)))))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))
    (- tid@11@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))
      (- tid@11@01 1))
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))))))
; [eval] tid == tcount - 1
; [eval] tcount - 1
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= tid@11@01 (- tcount@9@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= tid@11@01 (- tcount@9@01 1))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | tid@11@01 == tcount@9@01 - 1 | live]
; [else-branch: 1 | tid@11@01 != tcount@9@01 - 1 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 1 | tid@11@01 == tcount@9@01 - 1]
(assert (= tid@11@01 (- tcount@9@01 1)))
; [eval] diz.Ref__a[tid]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@19@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))))
  $Snap.unit))
; [eval] diz.Ref__a[tid].Ref__Integer_value == tid + 1
; [eval] diz.Ref__a[tid]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@19@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] tid + 1
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))
  (+ tid@11@01 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))))
  $Snap.unit))
; [eval] diz.Ref__b[tid].Ref__Integer_value == tid
; [eval] diz.Ref__b[tid]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@20@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))
  tid@11@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))))
  $Snap.unit))
; [eval] tid > 0 ==> diz.Ref__c[tid].Ref__Integer_value == tid + 2
; [eval] tid > 0
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (> tid@11@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | tid@11@01 > 0 | live]
; [else-branch: 2 | !(tid@11@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 2 | tid@11@01 > 0]
; [eval] diz.Ref__c[tid].Ref__Integer_value == tid + 2
; [eval] diz.Ref__c[tid]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@21@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] tid + 2
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (> tid@11@01 0)
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))
    (+ tid@11@01 2))))
(pop) ; 4
(push) ; 4
; [else-branch: 1 | tid@11@01 != tcount@9@01 - 1]
(assert (not (= tid@11@01 (- tcount@9@01 1))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))))
  $Snap.unit))
; [eval] diz.Ref__a[tid].Ref__Integer_value == tid + 1
; [eval] diz.Ref__a[tid]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@19@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] tid + 1
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))
  (+ tid@11@01 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))))
  $Snap.unit))
; [eval] diz.Ref__b[tid].Ref__Integer_value == tid
; [eval] diz.Ref__b[tid]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@20@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))
  tid@11@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))))
  $Snap.unit))
; [eval] tid > 0 ==> diz.Ref__c[tid].Ref__Integer_value == tid + 2
; [eval] tid > 0
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (> tid@11@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | tid@11@01 > 0 | live]
; [else-branch: 3 | !(tid@11@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 3 | tid@11@01 > 0]
; [eval] diz.Ref__c[tid].Ref__Integer_value == tid + 2
; [eval] diz.Ref__c[tid]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@21@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] tid + 2
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (> tid@11@01 0)
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))
    (+ tid@11@01 2))))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 0 | !(tid@11@01 > 0)]
(assert (not (> tid@11@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))))))
; [eval] tid == tcount - 1
; [eval] tcount - 1
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= tid@11@01 (- tcount@9@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= tid@11@01 (- tcount@9@01 1))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | tid@11@01 == tcount@9@01 - 1 | live]
; [else-branch: 4 | tid@11@01 != tcount@9@01 - 1 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 4 | tid@11@01 == tcount@9@01 - 1]
(assert (= tid@11@01 (- tcount@9@01 1)))
; [eval] diz.Ref__a[tid]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@19@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))))
  $Snap.unit))
; [eval] diz.Ref__a[tid].Ref__Integer_value == tid + 1
; [eval] diz.Ref__a[tid]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@19@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] tid + 1
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))
  (+ tid@11@01 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))))
  $Snap.unit))
; [eval] diz.Ref__b[tid].Ref__Integer_value == tid
; [eval] diz.Ref__b[tid]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@20@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))
  tid@11@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))))
  $Snap.unit))
; [eval] tid > 0 ==> diz.Ref__c[tid].Ref__Integer_value == tid + 2
; [eval] tid > 0
(push) ; 5
; [then-branch: 5 | tid@11@01 > 0 | dead]
; [else-branch: 5 | !(tid@11@01 > 0) | live]
(push) ; 6
; [else-branch: 5 | !(tid@11@01 > 0)]
(pop) ; 6
(pop) ; 5
; Joined path conditions
(pop) ; 4
(push) ; 4
; [else-branch: 4 | tid@11@01 != tcount@9@01 - 1]
(assert (not (= tid@11@01 (- tcount@9@01 1))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))))
  $Snap.unit))
; [eval] diz.Ref__a[tid].Ref__Integer_value == tid + 1
; [eval] diz.Ref__a[tid]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@19@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] tid + 1
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))
  (+ tid@11@01 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))))
  $Snap.unit))
; [eval] diz.Ref__b[tid].Ref__Integer_value == tid
; [eval] diz.Ref__b[tid]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@20@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))
  tid@11@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))))))))
  $Snap.unit))
; [eval] tid > 0 ==> diz.Ref__c[tid].Ref__Integer_value == tid + 2
; [eval] tid > 0
(push) ; 5
; [then-branch: 6 | tid@11@01 > 0 | dead]
; [else-branch: 6 | !(tid@11@01 > 0) | live]
(push) ; 6
; [else-branch: 6 | !(tid@11@01 > 0)]
(pop) ; 6
(pop) ; 5
; Joined path conditions
(pop) ; 4
(pop) ; 3
(pop) ; 2
(push) ; 2
; [exec]
; var __last_barrier: Int
(declare-const __last_barrier@22@01 Int)
; [exec]
; var __flatten_1: Ref
(declare-const __flatten_1@23@01 $Ref)
; [exec]
; var __flatten_2: Int
(declare-const __flatten_2@24@01 Int)
; [exec]
; var __flatten_3: Ref
(declare-const __flatten_3@25@01 $Ref)
; [exec]
; var __flatten_4: Ref
(declare-const __flatten_4@26@01 $Ref)
; [exec]
; var __flatten_5: Int
(declare-const __flatten_5@27@01 Int)
; [exec]
; var __flatten_6: Ref
(declare-const __flatten_6@28@01 $Ref)
; [exec]
; __last_barrier := 0
; [exec]
; __flatten_1 := diz.Ref__a[tid]
; [eval] diz.Ref__a[tid]
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
(declare-const __flatten_1@29@01 $Ref)
(assert (=
  __flatten_1@29@01
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    tid@11@01)))
; [exec]
; __flatten_3 := diz.Ref__b[tid]
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
(declare-const __flatten_3@30@01 $Ref)
(assert (=
  __flatten_3@30@01
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
    tid@11@01)))
; [exec]
; __flatten_2 := __flatten_3.Ref__Integer_value + 1
; [eval] __flatten_3.Ref__Integer_value + 1
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
    tid@11@01)
  __flatten_3@30@01)))
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
  __flatten_3@30@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_2@31@01 Int)
(assert (=
  __flatten_2@31@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))))))))
    1)))
; [exec]
; __flatten_1.Ref__Integer_value := __flatten_2
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
    tid@11@01)
  __flatten_1@29@01)))
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
  __flatten_1@29@01)))
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
  __flatten_1@29@01)))
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
  __flatten_1@29@01)))
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
  __flatten_1@29@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_1@29@01 $Ref.null)))
; [exec]
; assert tid < tcount - 1 ==> diz.Ref__a[tid].Ref__Integer_value == tid + 1
; [eval] tid < tcount - 1 ==> diz.Ref__a[tid].Ref__Integer_value == tid + 1
; [eval] tid < tcount - 1
; [eval] tcount - 1
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< tid@11@01 (- tcount@9@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< tid@11@01 (- tcount@9@01 1))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | tid@11@01 < tcount@9@01 - 1 | live]
; [else-branch: 7 | !(tid@11@01 < tcount@9@01 - 1) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 7 | tid@11@01 < tcount@9@01 - 1]
(assert (< tid@11@01 (- tcount@9@01 1)))
; [eval] diz.Ref__a[tid].Ref__Integer_value == tid + 1
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
; [eval] tid + 1
(pop) ; 4
(push) ; 4
; [else-branch: 7 | !(tid@11@01 < tcount@9@01 - 1)]
(assert (not (< tid@11@01 (- tcount@9@01 1))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (< tid@11@01 (- tcount@9@01 1))) (< tid@11@01 (- tcount@9@01 1))))
(push) ; 3
(assert (not (=> (< tid@11@01 (- tcount@9@01 1)) (= __flatten_2@31@01 (+ tid@11@01 1)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=> (< tid@11@01 (- tcount@9@01 1)) (= __flatten_2@31@01 (+ tid@11@01 1))))
; [exec]
; exhale tid < tcount - 1 ==> acc(diz.Ref__a[tid].Ref__Integer_value, 1 / 2)
; [eval] tid < tcount - 1
; [eval] tcount - 1
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< tid@11@01 (- tcount@9@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< tid@11@01 (- tcount@9@01 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | tid@11@01 < tcount@9@01 - 1 | live]
; [else-branch: 8 | !(tid@11@01 < tcount@9@01 - 1) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 8 | tid@11@01 < tcount@9@01 - 1]
(assert (< tid@11@01 (- tcount@9@01 1)))
; [eval] diz.Ref__a[tid]
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
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale tid > 0 ==> acc(diz.Ref__a[tid - 1].Ref__Integer_value, 1 / 2)
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (> tid@11@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (> tid@11@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | tid@11@01 > 0 | live]
; [else-branch: 9 | !(tid@11@01 > 0) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 9 | tid@11@01 > 0]
(assert (> tid@11@01 0))
; [eval] diz.Ref__a[tid - 1]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 5
(assert (not (>= (- tid@11@01 1) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  (- tid@11@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $t@32@01 Int)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    (- tid@11@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    (- tid@11@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  __flatten_1@29@01
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    (- tid@11@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
      (- tid@11@01 1))
    $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale tid > 0 ==> diz.Ref__a[tid - 1].Ref__Integer_value == tid
(declare-const $t@33@01 $Snap)
(assert (= $t@33@01 $Snap.unit))
; [eval] tid > 0 ==> diz.Ref__a[tid - 1].Ref__Integer_value == tid
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (> tid@11@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | tid@11@01 > 0 | live]
; [else-branch: 10 | !(tid@11@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 10 | tid@11@01 > 0]
; [eval] diz.Ref__a[tid - 1].Ref__Integer_value == tid
; [eval] diz.Ref__a[tid - 1]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
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
(assert (not (<
  (- tid@11@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=> (> tid@11@01 0) (= $t@32@01 tid@11@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> tid@11@01 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | tid@11@01 > 0 | live]
; [else-branch: 11 | !(tid@11@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 11 | tid@11@01 > 0]
; [exec]
; __flatten_4 := diz.Ref__c[tid]
; [eval] diz.Ref__c[tid]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_4@34@01 $Ref)
(assert (=
  __flatten_4@34@01
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
    tid@11@01)))
; [exec]
; __flatten_6 := diz.Ref__a[tid - 1]
; [eval] diz.Ref__a[tid - 1]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 6
(assert (not (>= (- tid@11@01 1) 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  (- tid@11@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_6@35@01 $Ref)
(assert (=
  __flatten_6@35@01
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    (- tid@11@01 1))))
; [exec]
; __flatten_5 := __flatten_6.Ref__Integer_value + 2
; [eval] __flatten_6.Ref__Integer_value + 2
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    (- tid@11@01 1))
  __flatten_6@35@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_5@36@01 Int)
(assert (= __flatten_5@36@01 (+ $t@32@01 2)))
; [exec]
; __flatten_4.Ref__Integer_value := __flatten_5
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    (- tid@11@01 1))
  __flatten_4@34@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
    tid@11@01)
  __flatten_4@34@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    (- tid@11@01 1))
  __flatten_4@34@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
    tid@11@01)
  __flatten_4@34@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= __flatten_1@29@01 __flatten_4@34@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_4@34@01 $Ref.null)))
; [eval] 0 <= tid
; [eval] tid < tcount
; [eval] tid == lid
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@37@01 $Perm)
(assert ($Perm.isReadVar $k@37@01))
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= $k@15@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (< $k@37@01 $k@15@01))
(assert (<= $Perm.No (- $k@15@01 $k@37@01)))
(assert (<= (- $k@15@01 $k@37@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@15@01 $k@37@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $k@38@01 $Perm)
(assert ($Perm.isReadVar $k@38@01))
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= $k@16@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (< $k@38@01 $k@16@01))
(assert (<= $Perm.No (- $k@16@01 $k@38@01)))
(assert (<= (- $k@16@01 $k@38@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@16@01 $k@38@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $k@39@01 $Perm)
(assert ($Perm.isReadVar $k@39@01))
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= $k@17@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (< $k@39@01 $k@17@01))
(assert (<= $Perm.No (- $k@17@01 $k@39@01)))
(assert (<= (- $k@17@01 $k@39@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@17@01 $k@39@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__a == old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__b == old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__c == old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__a[tid]
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  __flatten_4@34@01
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    tid@11@01))))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    (- tid@11@01 1))
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    tid@11@01))))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    tid@11@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__b[tid]
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__c[tid]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] tid > 0
(push) ; 6
(set-option :timeout 10)
(assert (not (not (> tid@11@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | tid@11@01 > 0 | live]
; [else-branch: 12 | !(tid@11@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 12 | tid@11@01 > 0]
; [eval] diz.Ref__a[tid - 1]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
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
(assert (not (<
  (- tid@11@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] tid == tcount - 1
; [eval] tcount - 1
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= tid@11@01 (- tcount@9@01 1)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | tid@11@01 == tcount@9@01 - 1 | dead]
; [else-branch: 13 | tid@11@01 != tcount@9@01 - 1 | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 13 | tid@11@01 != tcount@9@01 - 1]
(assert (not (= tid@11@01 (- tcount@9@01 1))))
; [eval] diz.Ref__a[tid].Ref__Integer_value == tid + 1
; [eval] diz.Ref__a[tid]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  __flatten_4@34@01
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    tid@11@01))))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    (- tid@11@01 1))
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    tid@11@01))))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    tid@11@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] tid + 1
(set-option :timeout 0)
(push) ; 8
(assert (not (= __flatten_2@31@01 (+ tid@11@01 1))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (= __flatten_2@31@01 (+ tid@11@01 1)))
; [eval] diz.Ref__b[tid].Ref__Integer_value == tid
; [eval] diz.Ref__b[tid]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] tid > 0 ==> diz.Ref__c[tid].Ref__Integer_value == tid + 2
; [eval] tid > 0
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (> tid@11@01 0))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | tid@11@01 > 0 | live]
; [else-branch: 14 | !(tid@11@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 14 | tid@11@01 > 0]
; [eval] diz.Ref__c[tid].Ref__Integer_value == tid + 2
; [eval] diz.Ref__c[tid]
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] tid + 2
(pop) ; 9
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (not (=> (> tid@11@01 0) (= __flatten_5@36@01 (+ tid@11@01 2)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=> (> tid@11@01 0) (= __flatten_5@36@01 (+ tid@11@01 2))))
(pop) ; 7
(pop) ; 6
(pop) ; 5
; [eval] !(tid > 0)
; [eval] tid > 0
; [then-branch: 15 | !(tid@11@01 > 0) | dead]
; [else-branch: 15 | tid@11@01 > 0 | live]
(push) ; 5
; [else-branch: 15 | tid@11@01 > 0]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 9 | !(tid@11@01 > 0)]
(assert (not (> tid@11@01 0)))
(declare-const $t@40@01 $Snap)
(assert (= $t@40@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale tid > 0 ==> diz.Ref__a[tid - 1].Ref__Integer_value == tid
(declare-const $t@41@01 $Snap)
(assert (= $t@41@01 $Snap.unit))
; [eval] tid > 0 ==> diz.Ref__a[tid - 1].Ref__Integer_value == tid
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 5
; [then-branch: 16 | tid@11@01 > 0 | dead]
; [else-branch: 16 | !(tid@11@01 > 0) | live]
(push) ; 6
; [else-branch: 16 | !(tid@11@01 > 0)]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [eval] tid > 0
; [then-branch: 17 | tid@11@01 > 0 | dead]
; [else-branch: 17 | !(tid@11@01 > 0) | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 17 | !(tid@11@01 > 0)]
(pop) ; 5
; [eval] !(tid > 0)
; [eval] tid > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (> tid@11@01 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 18 | !(tid@11@01 > 0) | live]
; [else-branch: 18 | tid@11@01 > 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 18 | !(tid@11@01 > 0)]
; [eval] 0 <= tid
; [eval] tid < tcount
; [eval] tid == lid
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@42@01 $Perm)
(assert ($Perm.isReadVar $k@42@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= $k@15@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (< $k@42@01 $k@15@01))
(assert (<= $Perm.No (- $k@15@01 $k@42@01)))
(assert (<= (- $k@15@01 $k@42@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@15@01 $k@42@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $k@43@01 $Perm)
(assert ($Perm.isReadVar $k@43@01))
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= $k@16@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (< $k@43@01 $k@16@01))
(assert (<= $Perm.No (- $k@16@01 $k@43@01)))
(assert (<= (- $k@16@01 $k@43@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@16@01 $k@43@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $k@44@01 $Perm)
(assert ($Perm.isReadVar $k@44@01))
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= $k@17@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (< $k@44@01 $k@17@01))
(assert (<= $Perm.No (- $k@17@01 $k@44@01)))
(assert (<= (- $k@17@01 $k@44@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@17@01 $k@44@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__a == old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__b == old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__c == old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__a[tid]
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    tid@11@01))))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    tid@11@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__b[tid]
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__c[tid]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] tid > 0
; [then-branch: 19 | tid@11@01 > 0 | dead]
; [else-branch: 19 | !(tid@11@01 > 0) | live]
(push) ; 6
; [else-branch: 19 | !(tid@11@01 > 0)]
; [eval] tid == tcount - 1
; [eval] tcount - 1
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= tid@11@01 (- tcount@9@01 1)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 20 | tid@11@01 == tcount@9@01 - 1 | dead]
; [else-branch: 20 | tid@11@01 != tcount@9@01 - 1 | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 20 | tid@11@01 != tcount@9@01 - 1]
(assert (not (= tid@11@01 (- tcount@9@01 1))))
; [eval] diz.Ref__a[tid].Ref__Integer_value == tid + 1
; [eval] diz.Ref__a[tid]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    tid@11@01))))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    tid@11@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] tid + 1
(set-option :timeout 0)
(push) ; 8
(assert (not (= __flatten_2@31@01 (+ tid@11@01 1))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (= __flatten_2@31@01 (+ tid@11@01 1)))
; [eval] diz.Ref__b[tid].Ref__Integer_value == tid
; [eval] diz.Ref__b[tid]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] tid > 0 ==> diz.Ref__c[tid].Ref__Integer_value == tid + 2
; [eval] tid > 0
(push) ; 8
; [then-branch: 21 | tid@11@01 > 0 | dead]
; [else-branch: 21 | !(tid@11@01 > 0) | live]
(push) ; 9
; [else-branch: 21 | !(tid@11@01 > 0)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 8 | !(tid@11@01 < tcount@9@01 - 1)]
(assert (not (< tid@11@01 (- tcount@9@01 1))))
; [exec]
; inhale tid > 0 ==> acc(diz.Ref__a[tid - 1].Ref__Integer_value, 1 / 2)
; [eval] tid > 0
(push) ; 4
(set-option :timeout 10)
(assert (not (not (> tid@11@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (> tid@11@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 22 | tid@11@01 > 0 | live]
; [else-branch: 22 | !(tid@11@01 > 0) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 22 | tid@11@01 > 0]
(assert (> tid@11@01 0))
; [eval] diz.Ref__a[tid - 1]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 5
(assert (not (>= (- tid@11@01 1) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  (- tid@11@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $t@45@01 Int)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  __flatten_1@29@01
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    (- tid@11@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    (- tid@11@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    (- tid@11@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
      (- tid@11@01 1))
    $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale tid > 0 ==> diz.Ref__a[tid - 1].Ref__Integer_value == tid
(declare-const $t@46@01 $Snap)
(assert (= $t@46@01 $Snap.unit))
; [eval] tid > 0 ==> diz.Ref__a[tid - 1].Ref__Integer_value == tid
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (> tid@11@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | tid@11@01 > 0 | live]
; [else-branch: 23 | !(tid@11@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 23 | tid@11@01 > 0]
; [eval] diz.Ref__a[tid - 1].Ref__Integer_value == tid
; [eval] diz.Ref__a[tid - 1]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
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
(assert (not (<
  (- tid@11@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=> (> tid@11@01 0) (= $t@45@01 tid@11@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> tid@11@01 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 24 | tid@11@01 > 0 | live]
; [else-branch: 24 | !(tid@11@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 24 | tid@11@01 > 0]
; [exec]
; __flatten_4 := diz.Ref__c[tid]
; [eval] diz.Ref__c[tid]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_4@47@01 $Ref)
(assert (=
  __flatten_4@47@01
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
    tid@11@01)))
; [exec]
; __flatten_6 := diz.Ref__a[tid - 1]
; [eval] diz.Ref__a[tid - 1]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 6
(assert (not (>= (- tid@11@01 1) 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  (- tid@11@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_6@48@01 $Ref)
(assert (=
  __flatten_6@48@01
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    (- tid@11@01 1))))
; [exec]
; __flatten_5 := __flatten_6.Ref__Integer_value + 2
; [eval] __flatten_6.Ref__Integer_value + 2
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    (- tid@11@01 1))
  __flatten_6@48@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_5@49@01 Int)
(assert (= __flatten_5@49@01 (+ $t@45@01 2)))
; [exec]
; __flatten_4.Ref__Integer_value := __flatten_5
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    (- tid@11@01 1))
  __flatten_4@47@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= __flatten_1@29@01 __flatten_4@47@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
    tid@11@01)
  __flatten_4@47@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    (- tid@11@01 1))
  __flatten_4@47@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= __flatten_1@29@01 __flatten_4@47@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
    tid@11@01)
  __flatten_4@47@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_4@47@01 $Ref.null)))
; [eval] 0 <= tid
; [eval] tid < tcount
; [eval] tid == lid
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@50@01 $Perm)
(assert ($Perm.isReadVar $k@50@01))
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= $k@15@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (< $k@50@01 $k@15@01))
(assert (<= $Perm.No (- $k@15@01 $k@50@01)))
(assert (<= (- $k@15@01 $k@50@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@15@01 $k@50@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $k@51@01 $Perm)
(assert ($Perm.isReadVar $k@51@01))
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= $k@16@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (< $k@51@01 $k@16@01))
(assert (<= $Perm.No (- $k@16@01 $k@51@01)))
(assert (<= (- $k@16@01 $k@51@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@16@01 $k@51@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $k@52@01 $Perm)
(assert ($Perm.isReadVar $k@52@01))
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= $k@17@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (< $k@52@01 $k@17@01))
(assert (<= $Perm.No (- $k@17@01 $k@52@01)))
(assert (<= (- $k@17@01 $k@52@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@17@01 $k@52@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__a == old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__b == old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__c == old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__a[tid]
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  __flatten_4@47@01
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    tid@11@01))))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    (- tid@11@01 1))
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    tid@11@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__b[tid]
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__c[tid]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] tid > 0
(push) ; 6
(set-option :timeout 10)
(assert (not (not (> tid@11@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | tid@11@01 > 0 | live]
; [else-branch: 25 | !(tid@11@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 25 | tid@11@01 > 0]
; [eval] diz.Ref__a[tid - 1]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
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
(assert (not (<
  (- tid@11@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] tid == tcount - 1
; [eval] tcount - 1
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= tid@11@01 (- tcount@9@01 1)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= tid@11@01 (- tcount@9@01 1))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 26 | tid@11@01 == tcount@9@01 - 1 | live]
; [else-branch: 26 | tid@11@01 != tcount@9@01 - 1 | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 26 | tid@11@01 == tcount@9@01 - 1]
(assert (= tid@11@01 (- tcount@9@01 1)))
; [eval] diz.Ref__a[tid]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__a[tid].Ref__Integer_value == tid + 1
; [eval] diz.Ref__a[tid]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  __flatten_4@47@01
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    tid@11@01))))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    (- tid@11@01 1))
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    tid@11@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] tid + 1
(set-option :timeout 0)
(push) ; 8
(assert (not (= __flatten_2@31@01 (+ tid@11@01 1))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (= __flatten_2@31@01 (+ tid@11@01 1)))
; [eval] diz.Ref__b[tid].Ref__Integer_value == tid
; [eval] diz.Ref__b[tid]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] tid > 0 ==> diz.Ref__c[tid].Ref__Integer_value == tid + 2
; [eval] tid > 0
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (> tid@11@01 0))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 27 | tid@11@01 > 0 | live]
; [else-branch: 27 | !(tid@11@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 27 | tid@11@01 > 0]
; [eval] diz.Ref__c[tid].Ref__Integer_value == tid + 2
; [eval] diz.Ref__c[tid]
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] tid + 2
(pop) ; 9
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (not (=> (> tid@11@01 0) (= __flatten_5@49@01 (+ tid@11@01 2)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=> (> tid@11@01 0) (= __flatten_5@49@01 (+ tid@11@01 2))))
(pop) ; 7
(pop) ; 6
(pop) ; 5
; [eval] !(tid > 0)
; [eval] tid > 0
; [then-branch: 28 | !(tid@11@01 > 0) | dead]
; [else-branch: 28 | tid@11@01 > 0 | live]
(push) ; 5
; [else-branch: 28 | tid@11@01 > 0]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 22 | !(tid@11@01 > 0)]
(assert (not (> tid@11@01 0)))
(declare-const $t@53@01 $Snap)
(assert (= $t@53@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale tid > 0 ==> diz.Ref__a[tid - 1].Ref__Integer_value == tid
(declare-const $t@54@01 $Snap)
(assert (= $t@54@01 $Snap.unit))
; [eval] tid > 0 ==> diz.Ref__a[tid - 1].Ref__Integer_value == tid
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 5
; [then-branch: 29 | tid@11@01 > 0 | dead]
; [else-branch: 29 | !(tid@11@01 > 0) | live]
(push) ; 6
; [else-branch: 29 | !(tid@11@01 > 0)]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [eval] tid > 0
; [then-branch: 30 | tid@11@01 > 0 | dead]
; [else-branch: 30 | !(tid@11@01 > 0) | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 30 | !(tid@11@01 > 0)]
(pop) ; 5
; [eval] !(tid > 0)
; [eval] tid > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (> tid@11@01 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 31 | !(tid@11@01 > 0) | live]
; [else-branch: 31 | tid@11@01 > 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 31 | !(tid@11@01 > 0)]
; [eval] 0 <= tid
; [eval] tid < tcount
; [eval] tid == lid
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@55@01 $Perm)
(assert ($Perm.isReadVar $k@55@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= $k@15@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (< $k@55@01 $k@15@01))
(assert (<= $Perm.No (- $k@15@01 $k@55@01)))
(assert (<= (- $k@15@01 $k@55@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@15@01 $k@55@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $k@56@01 $Perm)
(assert ($Perm.isReadVar $k@56@01))
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= $k@16@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (< $k@56@01 $k@16@01))
(assert (<= $Perm.No (- $k@16@01 $k@56@01)))
(assert (<= (- $k@16@01 $k@56@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@16@01 $k@56@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $k@57@01 $Perm)
(assert ($Perm.isReadVar $k@57@01))
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= $k@17@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (< $k@57@01 $k@17@01))
(assert (<= $Perm.No (- $k@17@01 $k@57@01)))
(assert (<= (- $k@17@01 $k@57@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@17@01 $k@57@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__a == old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__b == old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__c == old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__a[tid]
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__b[tid]
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__c[tid]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] tid > 0
; [then-branch: 32 | tid@11@01 > 0 | dead]
; [else-branch: 32 | !(tid@11@01 > 0) | live]
(push) ; 6
; [else-branch: 32 | !(tid@11@01 > 0)]
; [eval] tid == tcount - 1
; [eval] tcount - 1
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= tid@11@01 (- tcount@9@01 1)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= tid@11@01 (- tcount@9@01 1))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 33 | tid@11@01 == tcount@9@01 - 1 | live]
; [else-branch: 33 | tid@11@01 != tcount@9@01 - 1 | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 33 | tid@11@01 == tcount@9@01 - 1]
(assert (= tid@11@01 (- tcount@9@01 1)))
; [eval] diz.Ref__a[tid]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__a[tid].Ref__Integer_value == tid + 1
; [eval] diz.Ref__a[tid]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] tid + 1
(push) ; 8
(assert (not (= __flatten_2@31@01 (+ tid@11@01 1))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (= __flatten_2@31@01 (+ tid@11@01 1)))
; [eval] diz.Ref__b[tid].Ref__Integer_value == tid
; [eval] diz.Ref__b[tid]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] tid > 0 ==> diz.Ref__c[tid].Ref__Integer_value == tid + 2
; [eval] tid > 0
(push) ; 8
; [then-branch: 34 | tid@11@01 > 0 | dead]
; [else-branch: 34 | !(tid@11@01 > 0) | live]
(push) ; 9
; [else-branch: 34 | !(tid@11@01 > 0)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- Ref__main_resources_of_1 ----------
(declare-const diz@58@01 $Ref)
(declare-const current_thread_id@59@01 Int)
(declare-const tcount@60@01 Int)
(declare-const gsize@61@01 Int)
(declare-const gid@62@01 Int)
(declare-const diz@63@01 $Ref)
(declare-const current_thread_id@64@01 Int)
(declare-const tcount@65@01 Int)
(declare-const gsize@66@01 Int)
(declare-const gid@67@01 Int)
(push) ; 1
(declare-const $t@68@01 $Snap)
(assert (= $t@68@01 ($Snap.combine ($Snap.first $t@68@01) ($Snap.second $t@68@01))))
(assert (= ($Snap.first $t@68@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@63@01 $Ref.null)))
(assert (=
  ($Snap.second $t@68@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@68@01))
    ($Snap.second ($Snap.second $t@68@01)))))
(assert (= ($Snap.first ($Snap.second $t@68@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@64@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@68@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@68@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@68@01))) $Snap.unit))
; [eval] tcount == gsize
(assert (= tcount@65@01 gsize@66@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@68@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))
  $Snap.unit))
; [eval] gid == 0
(assert (= gid@67@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
(declare-const $k@69@01 $Perm)
(assert ($Perm.isReadVar $k@69@01))
(assert (<= $Perm.No $k@69@01))
(assert (<= $k@69@01 $Perm.Write))
(assert (=> (< $Perm.No $k@69@01) (not (= diz@63@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
  $Snap.unit))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@69@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))
  tcount@65@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))))
(declare-const $k@70@01 $Perm)
(assert ($Perm.isReadVar $k@70@01))
(assert (<= $Perm.No $k@70@01))
(assert (<= $k@70@01 $Perm.Write))
(assert (=> (< $Perm.No $k@70@01) (not (= diz@63@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
  $Snap.unit))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@70@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))))
  tcount@65@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))))))
(declare-const $k@71@01 $Perm)
(assert ($Perm.isReadVar $k@71@01))
(assert (<= $Perm.No $k@71@01))
(assert (<= $k@71@01 $Perm.Write))
(assert (=> (< $Perm.No $k@71@01) (not (= diz@63@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))))
  $Snap.unit))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@71@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))))))
  tcount@65@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { diz.Ref__a[i], diz.Ref__a[j] } i >= 0 && (i < |diz.Ref__a| && (j >= 0 && (j < |diz.Ref__a| && i != j))) ==> diz.Ref__a[i] != diz.Ref__a[j])
(declare-const i@72@01 Int)
(declare-const j@73@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] i >= 0 && (i < |diz.Ref__a| && (j >= 0 && (j < |diz.Ref__a| && i != j))) ==> diz.Ref__a[i] != diz.Ref__a[j]
; [eval] i >= 0 && (i < |diz.Ref__a| && (j >= 0 && (j < |diz.Ref__a| && i != j)))
; [eval] i >= 0
(push) ; 3
; [then-branch: 35 | !(i@72@01 >= 0) | live]
; [else-branch: 35 | i@72@01 >= 0 | live]
(push) ; 4
; [then-branch: 35 | !(i@72@01 >= 0)]
(assert (not (>= i@72@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 35 | i@72@01 >= 0]
(assert (>= i@72@01 0))
; [eval] i < |diz.Ref__a|
; [eval] |diz.Ref__a|
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@69@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [then-branch: 36 | !(i@72@01 < |First:(Second:(Second:(Second:(Second:($t@68@01)))))|) | live]
; [else-branch: 36 | i@72@01 < |First:(Second:(Second:(Second:(Second:($t@68@01)))))| | live]
(push) ; 6
; [then-branch: 36 | !(i@72@01 < |First:(Second:(Second:(Second:(Second:($t@68@01)))))|)]
(assert (not
  (<
    i@72@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))))
(pop) ; 6
(push) ; 6
; [else-branch: 36 | i@72@01 < |First:(Second:(Second:(Second:(Second:($t@68@01)))))|]
(assert (<
  i@72@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))))
; [eval] j >= 0
(push) ; 7
; [then-branch: 37 | !(j@73@01 >= 0) | live]
; [else-branch: 37 | j@73@01 >= 0 | live]
(push) ; 8
; [then-branch: 37 | !(j@73@01 >= 0)]
(assert (not (>= j@73@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 37 | j@73@01 >= 0]
(assert (>= j@73@01 0))
; [eval] j < |diz.Ref__a|
; [eval] |diz.Ref__a|
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@69@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 38 | !(j@73@01 < |First:(Second:(Second:(Second:(Second:($t@68@01)))))|) | live]
; [else-branch: 38 | j@73@01 < |First:(Second:(Second:(Second:(Second:($t@68@01)))))| | live]
(push) ; 10
; [then-branch: 38 | !(j@73@01 < |First:(Second:(Second:(Second:(Second:($t@68@01)))))|)]
(assert (not
  (<
    j@73@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))))
(pop) ; 10
(push) ; 10
; [else-branch: 38 | j@73@01 < |First:(Second:(Second:(Second:(Second:($t@68@01)))))|]
(assert (<
  j@73@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<
    j@73@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
  (not
    (<
      j@73@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@73@01 0)
  (and
    (>= j@73@01 0)
    (or
      (<
        j@73@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
      (not
        (<
          j@73@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))))))))
(assert (or (>= j@73@01 0) (not (>= j@73@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<
    i@72@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
  (and
    (<
      i@72@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
    (=>
      (>= j@73@01 0)
      (and
        (>= j@73@01 0)
        (or
          (<
            j@73@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
          (not
            (<
              j@73@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))))))
    (or (>= j@73@01 0) (not (>= j@73@01 0))))))
(assert (or
  (<
    i@72@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
  (not
    (<
      i@72@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@72@01 0)
  (and
    (>= i@72@01 0)
    (=>
      (<
        i@72@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
      (and
        (<
          i@72@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
        (=>
          (>= j@73@01 0)
          (and
            (>= j@73@01 0)
            (or
              (<
                j@73@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
              (not
                (<
                  j@73@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))))))
        (or (>= j@73@01 0) (not (>= j@73@01 0)))))
    (or
      (<
        i@72@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
      (not
        (<
          i@72@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))))))))
(assert (or (>= i@72@01 0) (not (>= i@72@01 0))))
(push) ; 3
; [then-branch: 39 | i@72@01 >= 0 && i@72@01 < |First:(Second:(Second:(Second:(Second:($t@68@01)))))| && j@73@01 >= 0 && j@73@01 < |First:(Second:(Second:(Second:(Second:($t@68@01)))))| && i@72@01 != j@73@01 | live]
; [else-branch: 39 | !(i@72@01 >= 0 && i@72@01 < |First:(Second:(Second:(Second:(Second:($t@68@01)))))| && j@73@01 >= 0 && j@73@01 < |First:(Second:(Second:(Second:(Second:($t@68@01)))))| && i@72@01 != j@73@01) | live]
(push) ; 4
; [then-branch: 39 | i@72@01 >= 0 && i@72@01 < |First:(Second:(Second:(Second:(Second:($t@68@01)))))| && j@73@01 >= 0 && j@73@01 < |First:(Second:(Second:(Second:(Second:($t@68@01)))))| && i@72@01 != j@73@01]
(assert (and
  (>= i@72@01 0)
  (and
    (<
      i@72@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
    (and
      (>= j@73@01 0)
      (and
        (<
          j@73@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
        (not (= i@72@01 j@73@01)))))))
; [eval] diz.Ref__a[i] != diz.Ref__a[j]
; [eval] diz.Ref__a[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@69@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__a[j]
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@69@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 39 | !(i@72@01 >= 0 && i@72@01 < |First:(Second:(Second:(Second:(Second:($t@68@01)))))| && j@73@01 >= 0 && j@73@01 < |First:(Second:(Second:(Second:(Second:($t@68@01)))))| && i@72@01 != j@73@01)]
(assert (not
  (and
    (>= i@72@01 0)
    (and
      (<
        i@72@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
      (and
        (>= j@73@01 0)
        (and
          (<
            j@73@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
          (not (= i@72@01 j@73@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= i@72@01 0)
    (and
      (<
        i@72@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
      (and
        (>= j@73@01 0)
        (and
          (<
            j@73@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
          (not (= i@72@01 j@73@01))))))
  (and
    (>= i@72@01 0)
    (<
      i@72@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
    (>= j@73@01 0)
    (<
      j@73@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
    (not (= i@72@01 j@73@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@72@01 0)
      (and
        (<
          i@72@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
        (and
          (>= j@73@01 0)
          (and
            (<
              j@73@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
            (not (= i@72@01 j@73@01)))))))
  (and
    (>= i@72@01 0)
    (and
      (<
        i@72@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
      (and
        (>= j@73@01 0)
        (and
          (<
            j@73@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
          (not (= i@72@01 j@73@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@72@01 Int) (j@73@01 Int)) (!
  (and
    (=>
      (>= i@72@01 0)
      (and
        (>= i@72@01 0)
        (=>
          (<
            i@72@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
          (and
            (<
              i@72@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
            (=>
              (>= j@73@01 0)
              (and
                (>= j@73@01 0)
                (or
                  (<
                    j@73@01
                    (Seq_length
                      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
                  (not
                    (<
                      j@73@01
                      (Seq_length
                        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))))))
            (or (>= j@73@01 0) (not (>= j@73@01 0)))))
        (or
          (<
            i@72@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
          (not
            (<
              i@72@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))))))
    (or (>= i@72@01 0) (not (>= i@72@01 0)))
    (=>
      (and
        (>= i@72@01 0)
        (and
          (<
            i@72@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
          (and
            (>= j@73@01 0)
            (and
              (<
                j@73@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
              (not (= i@72@01 j@73@01))))))
      (and
        (>= i@72@01 0)
        (<
          i@72@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
        (>= j@73@01 0)
        (<
          j@73@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
        (not (= i@72@01 j@73@01))))
    (or
      (not
        (and
          (>= i@72@01 0)
          (and
            (<
              i@72@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
            (and
              (>= j@73@01 0)
              (and
                (<
                  j@73@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
                (not (= i@72@01 j@73@01)))))))
      (and
        (>= i@72@01 0)
        (and
          (<
            i@72@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
          (and
            (>= j@73@01 0)
            (and
              (<
                j@73@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
              (not (= i@72@01 j@73@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
    i@72@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
    j@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_noauto_pvl.vpr@88@12@88@136-aux|)))
(assert (forall ((i@72@01 Int) (j@73@01 Int)) (!
  (=>
    (and
      (>= i@72@01 0)
      (and
        (<
          i@72@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
        (and
          (>= j@73@01 0)
          (and
            (<
              j@73@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
            (not (= i@72@01 j@73@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
          i@72@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
          j@73@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
    i@72@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
    j@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_noauto_pvl.vpr@88@12@88@136|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))))))))))
(declare-const tid@74@01 Int)
(push) ; 2
; [eval] 0 <= tid && tid < (tcount - 1 < gsize ? tcount - 1 : gsize)
; [eval] 0 <= tid
(push) ; 3
; [then-branch: 40 | !(0 <= tid@74@01) | live]
; [else-branch: 40 | 0 <= tid@74@01 | live]
(push) ; 4
; [then-branch: 40 | !(0 <= tid@74@01)]
(assert (not (<= 0 tid@74@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 40 | 0 <= tid@74@01]
(assert (<= 0 tid@74@01))
; [eval] tid < (tcount - 1 < gsize ? tcount - 1 : gsize)
; [eval] (tcount - 1 < gsize ? tcount - 1 : gsize)
; [eval] tcount - 1 < gsize
; [eval] tcount - 1
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< (- tcount@65@01 1) gsize@66@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< (- tcount@65@01 1) gsize@66@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 41 | tcount@65@01 - 1 < gsize@66@01 | live]
; [else-branch: 41 | !(tcount@65@01 - 1 < gsize@66@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 41 | tcount@65@01 - 1 < gsize@66@01]
(assert (< (- tcount@65@01 1) gsize@66@01))
; [eval] tcount - 1
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (< (- tcount@65@01 1) gsize@66@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=> (<= 0 tid@74@01) (and (<= 0 tid@74@01) (< (- tcount@65@01 1) gsize@66@01))))
(assert (or (<= 0 tid@74@01) (not (<= 0 tid@74@01))))
(assert (and (<= 0 tid@74@01) (< tid@74@01 (- tcount@65@01 1))))
; [eval] diz.Ref__a[tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@69@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= tid@74@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  tid@74@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@75@01 ($Ref) Int)
(declare-fun img@76@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((tid@74@01 Int)) (!
  (=>
    (and (<= 0 tid@74@01) (< tid@74@01 (- tcount@65@01 1)))
    (and
      (=>
        (<= 0 tid@74@01)
        (and (<= 0 tid@74@01) (< (- tcount@65@01 1) gsize@66@01)))
      (or (<= 0 tid@74@01) (not (<= 0 tid@74@01)))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
    tid@74@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((tid1@74@01 Int) (tid2@74@01 Int)) (!
  (=>
    (and
      (and (<= 0 tid1@74@01) (< tid1@74@01 (- tcount@65@01 1)))
      (and (<= 0 tid2@74@01) (< tid2@74@01 (- tcount@65@01 1)))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
          tid1@74@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
          tid2@74@01)))
    (= tid1@74@01 tid2@74@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((tid@74@01 Int)) (!
  (=>
    (and (<= 0 tid@74@01) (< tid@74@01 (- tcount@65@01 1)))
    (and
      (=
        (inv@75@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
          tid@74@01))
        tid@74@01)
      (img@76@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
        tid@74@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
    tid@74@01))
  :qid |quant-u-7539|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@76@01 r)
      (and (<= 0 (inv@75@01 r)) (< (inv@75@01 r) (- tcount@65@01 1))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
        (inv@75@01 r))
      r))
  :pattern ((inv@75@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((tid@74@01 Int)) (!
  (=>
    (and (<= 0 tid@74@01) (< tid@74@01 (- tcount@65@01 1)))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
          tid@74@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
    tid@74@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))))))
  $Snap.unit))
; [eval] (forall tid: Int :: { diz.Ref__a[tid] } 0 <= tid && tid < (tcount - 1 < gsize ? tcount - 1 : gsize) ==> diz.Ref__a[tid].Ref__Integer_value == tid + 1)
(declare-const tid@77@01 Int)
(push) ; 2
; [eval] 0 <= tid && tid < (tcount - 1 < gsize ? tcount - 1 : gsize) ==> diz.Ref__a[tid].Ref__Integer_value == tid + 1
; [eval] 0 <= tid && tid < (tcount - 1 < gsize ? tcount - 1 : gsize)
; [eval] 0 <= tid
(push) ; 3
; [then-branch: 42 | !(0 <= tid@77@01) | live]
; [else-branch: 42 | 0 <= tid@77@01 | live]
(push) ; 4
; [then-branch: 42 | !(0 <= tid@77@01)]
(assert (not (<= 0 tid@77@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 42 | 0 <= tid@77@01]
(assert (<= 0 tid@77@01))
; [eval] tid < (tcount - 1 < gsize ? tcount - 1 : gsize)
; [eval] (tcount - 1 < gsize ? tcount - 1 : gsize)
; [eval] tcount - 1 < gsize
; [eval] tcount - 1
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< (- tcount@65@01 1) gsize@66@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< (- tcount@65@01 1) gsize@66@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 43 | tcount@65@01 - 1 < gsize@66@01 | live]
; [else-branch: 43 | !(tcount@65@01 - 1 < gsize@66@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 43 | tcount@65@01 - 1 < gsize@66@01]
(assert (< (- tcount@65@01 1) gsize@66@01))
; [eval] tcount - 1
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (< (- tcount@65@01 1) gsize@66@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=> (<= 0 tid@77@01) (and (<= 0 tid@77@01) (< (- tcount@65@01 1) gsize@66@01))))
(assert (or (<= 0 tid@77@01) (not (<= 0 tid@77@01))))
(push) ; 3
; [then-branch: 44 | 0 <= tid@77@01 && tid@77@01 < tcount@65@01 - 1 | live]
; [else-branch: 44 | !(0 <= tid@77@01 && tid@77@01 < tcount@65@01 - 1) | live]
(push) ; 4
; [then-branch: 44 | 0 <= tid@77@01 && tid@77@01 < tcount@65@01 - 1]
(assert (and (<= 0 tid@77@01) (< tid@77@01 (- tcount@65@01 1))))
; [eval] diz.Ref__a[tid].Ref__Integer_value == tid + 1
; [eval] diz.Ref__a[tid]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@69@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= tid@77@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  tid@77@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (and
  (img@76@01 (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
    tid@77@01))
  (and
    (<=
      0
      (inv@75@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
        tid@77@01)))
    (<
      (inv@75@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
        tid@77@01))
      (- tcount@65@01 1))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] tid + 1
(pop) ; 4
(push) ; 4
; [else-branch: 44 | !(0 <= tid@77@01 && tid@77@01 < tcount@65@01 - 1)]
(assert (not (and (<= 0 tid@77@01) (< tid@77@01 (- tcount@65@01 1)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 tid@77@01) (< tid@77@01 (- tcount@65@01 1))))
  (and (<= 0 tid@77@01) (< tid@77@01 (- tcount@65@01 1)))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((tid@77@01 Int)) (!
  (and
    (=>
      (<= 0 tid@77@01)
      (and (<= 0 tid@77@01) (< (- tcount@65@01 1) gsize@66@01)))
    (or (<= 0 tid@77@01) (not (<= 0 tid@77@01)))
    (or
      (not (and (<= 0 tid@77@01) (< tid@77@01 (- tcount@65@01 1))))
      (and (<= 0 tid@77@01) (< tid@77@01 (- tcount@65@01 1)))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
    tid@77@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_noauto_pvl.vpr@90@13@90@147-aux|)))
(assert (forall ((tid@77@01 Int)) (!
  (=>
    (and (<= 0 tid@77@01) (< tid@77@01 (- tcount@65@01 1)))
    (=
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))))))) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
        tid@77@01))
      (+ tid@77@01 1)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
    tid@77@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_noauto_pvl.vpr@90@13@90@147|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@78@01 $Snap)
(assert (= $t@78@01 ($Snap.combine ($Snap.first $t@78@01) ($Snap.second $t@78@01))))
(assert (= ($Snap.first $t@78@01) $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second $t@78@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@78@01))
    ($Snap.second ($Snap.second $t@78@01)))))
(assert (= ($Snap.first ($Snap.second $t@78@01)) $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second $t@78@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@78@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@78@01))))))
(declare-const $k@79@01 $Perm)
(assert ($Perm.isReadVar $k@79@01))
(assert (<= $Perm.No $k@79@01))
(assert (<= $k@79@01 $Perm.Write))
(assert (=> (< $Perm.No $k@79@01) (not (= diz@63@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@78@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@78@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@78@01))))
  $Snap.unit))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@79@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@78@01)))))
  tcount@65@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01))))))))
(declare-const $k@80@01 $Perm)
(assert ($Perm.isReadVar $k@80@01))
(assert (<= $Perm.No $k@80@01))
(assert (<= $k@80@01 $Perm.Write))
(assert (=> (< $Perm.No $k@80@01) (not (= diz@63@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01))))))
  $Snap.unit))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@80@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))))
  tcount@65@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01))))))))))
(declare-const $k@81@01 $Perm)
(assert ($Perm.isReadVar $k@81@01))
(assert (<= $Perm.No $k@81@01))
(assert (<= $k@81@01 $Perm.Write))
(assert (=> (< $Perm.No $k@81@01) (not (= diz@63@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01))))))))
  $Snap.unit))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@81@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))))))
  tcount@65@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))))))
  $Snap.unit))
; [eval] diz.Ref__a == old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@79@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@69@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@78@01))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01))))))))))
  $Snap.unit))
; [eval] diz.Ref__b == old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@80@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@70@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))))))))
  $Snap.unit))
; [eval] diz.Ref__c == old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@81@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@71@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))))))
(declare-const tid@82@01 Int)
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
; [then-branch: 45 | True | live]
; [else-branch: 45 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 45 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 46 | !(0 <= tid@82@01) | live]
; [else-branch: 46 | 0 <= tid@82@01 | live]
(push) ; 5
; [then-branch: 46 | !(0 <= tid@82@01)]
(assert (not (<= 0 tid@82@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 46 | 0 <= tid@82@01]
(assert (<= 0 tid@82@01))
; [eval] tid < gsize - 1
; [eval] gsize - 1
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 tid@82@01) (not (<= 0 tid@82@01))))
(assert (and (<= 0 tid@82@01) (< tid@82@01 (- gsize@66@01 1))))
; [eval] diz.Ref__a[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@79@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@82@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@82@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@78@01))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@83@01 ($Ref) Int)
(declare-fun img@84@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((tid@82@01 Int)) (!
  (=>
    (and (<= 0 tid@82@01) (< tid@82@01 (- gsize@66@01 1)))
    (or (<= 0 tid@82@01) (not (<= 0 tid@82@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@78@01))))
    tid@82@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((tid1@82@01 Int) (tid2@82@01 Int)) (!
  (=>
    (and
      (and (<= 0 tid1@82@01) (< tid1@82@01 (- gsize@66@01 1)))
      (and (<= 0 tid2@82@01) (< tid2@82@01 (- gsize@66@01 1)))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@78@01))))
          tid1@82@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@78@01))))
          tid2@82@01)))
    (= tid1@82@01 tid2@82@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((tid@82@01 Int)) (!
  (=>
    (and (<= 0 tid@82@01) (< tid@82@01 (- gsize@66@01 1)))
    (and
      (=
        (inv@83@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@78@01))))
          tid@82@01))
        tid@82@01)
      (img@84@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@78@01))))
        tid@82@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@78@01))))
    tid@82@01))
  :qid |quant-u-7541|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@84@01 r)
      (and (<= 0 (inv@83@01 r)) (< (inv@83@01 r) (- gsize@66@01 1))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@78@01))))
        (inv@83@01 r))
      r))
  :pattern ((inv@83@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((tid@82@01 Int)) (!
  (=>
    (and (<= 0 tid@82@01) (< tid@82@01 (- gsize@66@01 1)))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@78@01))))
          tid@82@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@78@01))))
    tid@82@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@85@01 $Perm)
(assert ($Perm.isReadVar $k@85@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@69@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@85@01 $k@69@01))
(assert (<= $Perm.No (- $k@69@01 $k@85@01)))
(assert (<= (- $k@69@01 $k@85@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@69@01 $k@85@01)) (not (= diz@63@01 $Ref.null))))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@69@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@86@01 $Perm)
(assert ($Perm.isReadVar $k@86@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@70@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@86@01 $k@70@01))
(assert (<= $Perm.No (- $k@70@01 $k@86@01)))
(assert (<= (- $k@70@01 $k@86@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@70@01 $k@86@01)) (not (= diz@63@01 $Ref.null))))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@70@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@87@01 $Perm)
(assert ($Perm.isReadVar $k@87@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@71@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@87@01 $k@71@01))
(assert (<= $Perm.No (- $k@71@01 $k@87@01)))
(assert (<= (- $k@71@01 $k@87@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@71@01 $k@87@01)) (not (= diz@63@01 $Ref.null))))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@71@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__a == old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@69@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@69@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__b == old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@70@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@70@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__c == old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@71@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@71@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const tid@88@01 Int)
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
; [then-branch: 47 | True | live]
; [else-branch: 47 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 47 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 48 | !(0 <= tid@88@01) | live]
; [else-branch: 48 | 0 <= tid@88@01 | live]
(push) ; 5
; [then-branch: 48 | !(0 <= tid@88@01)]
(assert (not (<= 0 tid@88@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 48 | 0 <= tid@88@01]
(assert (<= 0 tid@88@01))
; [eval] tid < gsize - 1
; [eval] gsize - 1
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 tid@88@01) (not (<= 0 tid@88@01))))
(assert (and (<= 0 tid@88@01) (< tid@88@01 (- gsize@66@01 1))))
; [eval] diz.Ref__a[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@69@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@88@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@88@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@89@01 ($Ref) Int)
(declare-fun img@90@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((tid@88@01 Int)) (!
  (=>
    (and (<= 0 tid@88@01) (< tid@88@01 (- gsize@66@01 1)))
    (or (<= 0 tid@88@01) (not (<= 0 tid@88@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
    tid@88@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((tid1@88@01 Int) (tid2@88@01 Int)) (!
  (=>
    (and
      (and (<= 0 tid1@88@01) (< tid1@88@01 (- gsize@66@01 1)))
      (and (<= 0 tid2@88@01) (< tid2@88@01 (- gsize@66@01 1)))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
          tid1@88@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
          tid2@88@01)))
    (= tid1@88@01 tid2@88@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((tid@88@01 Int)) (!
  (=>
    (and (<= 0 tid@88@01) (< tid@88@01 (- gsize@66@01 1)))
    (and
      (=
        (inv@89@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
          tid@88@01))
        tid@88@01)
      (img@90@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
        tid@88@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
    tid@88@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@90@01 r)
      (and (<= 0 (inv@89@01 r)) (< (inv@89@01 r) (- gsize@66@01 1))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
        (inv@89@01 r))
      r))
  :pattern ((inv@89@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@91@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@89@01 r)) (< (inv@89@01 r) (- gsize@66@01 1)))
      (img@90@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
          (inv@89@01 r))))
    ($Perm.min
      (ite
        (and
          (img@76@01 r)
          (and (<= 0 (inv@75@01 r)) (< (inv@75@01 r) (- tcount@65@01 1))))
        (/ (to_real 1) (to_real 2))
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
          (img@76@01 r)
          (and (<= 0 (inv@75@01 r)) (< (inv@75@01 r) (- tcount@65@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@91@01 r))
    $Perm.No)
  
  :qid |quant-u-7544|))))
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
      (and (<= 0 (inv@89@01 r)) (< (inv@89@01 r) (- gsize@66@01 1)))
      (img@90@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
          (inv@89@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@91@01 r)) $Perm.No))
  
  :qid |quant-u-7545|))))
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
(declare-const diz@92@01 $Ref)
(declare-const current_thread_id@93@01 Int)
(declare-const tcount@94@01 Int)
(declare-const gsize@95@01 Int)
(declare-const tid@96@01 Int)
(declare-const gid@97@01 Int)
(declare-const lid@98@01 Int)
(declare-const diz@99@01 $Ref)
(declare-const current_thread_id@100@01 Int)
(declare-const tcount@101@01 Int)
(declare-const gsize@102@01 Int)
(declare-const tid@103@01 Int)
(declare-const gid@104@01 Int)
(declare-const lid@105@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@106@01 $Snap)
(assert (= $t@106@01 ($Snap.combine ($Snap.first $t@106@01) ($Snap.second $t@106@01))))
(assert (= ($Snap.first $t@106@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@99@01 $Ref.null)))
(assert (=
  ($Snap.second $t@106@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@106@01))
    ($Snap.second ($Snap.second $t@106@01)))))
(assert (= ($Snap.first ($Snap.second $t@106@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@100@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@106@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@106@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@106@01))) $Snap.unit))
; [eval] 0 <= tid
(assert (<= 0 tid@103@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@106@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@106@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@106@01))))
  $Snap.unit))
; [eval] tid < tcount
(assert (< tid@103@01 tcount@101@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))
  $Snap.unit))
; [eval] tid == lid
(assert (= tid@103@01 lid@105@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (= tcount@101@01 gsize@102@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))
  $Snap.unit))
; [eval] gid == 0
(assert (= gid@104@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
(declare-const $k@107@01 $Perm)
(assert ($Perm.isReadVar $k@107@01))
(assert (<= $Perm.No $k@107@01))
(assert (<= $k@107@01 $Perm.Write))
(assert (=> (< $Perm.No $k@107@01) (not (= diz@99@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
  $Snap.unit))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@107@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))
  tcount@101@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
(declare-const $k@108@01 $Perm)
(assert ($Perm.isReadVar $k@108@01))
(assert (<= $Perm.No $k@108@01))
(assert (<= $k@108@01 $Perm.Write))
(assert (=> (< $Perm.No $k@108@01) (not (= diz@99@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
  $Snap.unit))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))
  tcount@101@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
(declare-const $k@109@01 $Perm)
(assert ($Perm.isReadVar $k@109@01))
(assert (<= $Perm.No $k@109@01))
(assert (<= $k@109@01 $Perm.Write))
(assert (=> (< $Perm.No $k@109@01) (not (= diz@99@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
  $Snap.unit))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))
  tcount@101@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { diz.Ref__a[i], diz.Ref__a[j] } i >= 0 && (i < |diz.Ref__a| && (j >= 0 && (j < |diz.Ref__a| && i != j))) ==> diz.Ref__a[i] != diz.Ref__a[j])
(declare-const i@110@01 Int)
(declare-const j@111@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] i >= 0 && (i < |diz.Ref__a| && (j >= 0 && (j < |diz.Ref__a| && i != j))) ==> diz.Ref__a[i] != diz.Ref__a[j]
; [eval] i >= 0 && (i < |diz.Ref__a| && (j >= 0 && (j < |diz.Ref__a| && i != j)))
; [eval] i >= 0
(push) ; 3
; [then-branch: 49 | !(i@110@01 >= 0) | live]
; [else-branch: 49 | i@110@01 >= 0 | live]
(push) ; 4
; [then-branch: 49 | !(i@110@01 >= 0)]
(assert (not (>= i@110@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 49 | i@110@01 >= 0]
(assert (>= i@110@01 0))
; [eval] i < |diz.Ref__a|
; [eval] |diz.Ref__a|
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@107@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [then-branch: 50 | !(i@110@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))|) | live]
; [else-branch: 50 | i@110@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))| | live]
(push) ; 6
; [then-branch: 50 | !(i@110@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))|)]
(assert (not
  (<
    i@110@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
(pop) ; 6
(push) ; 6
; [else-branch: 50 | i@110@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))|]
(assert (<
  i@110@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))
; [eval] j >= 0
(push) ; 7
; [then-branch: 51 | !(j@111@01 >= 0) | live]
; [else-branch: 51 | j@111@01 >= 0 | live]
(push) ; 8
; [then-branch: 51 | !(j@111@01 >= 0)]
(assert (not (>= j@111@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 51 | j@111@01 >= 0]
(assert (>= j@111@01 0))
; [eval] j < |diz.Ref__a|
; [eval] |diz.Ref__a|
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
; [then-branch: 52 | !(j@111@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))|) | live]
; [else-branch: 52 | j@111@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))| | live]
(push) ; 10
; [then-branch: 52 | !(j@111@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))|)]
(assert (not
  (<
    j@111@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
(pop) ; 10
(push) ; 10
; [else-branch: 52 | j@111@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))|]
(assert (<
  j@111@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<
    j@111@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
  (not
    (<
      j@111@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))
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
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
      (not
        (<
          j@111@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))
(assert (or (>= j@111@01 0) (not (>= j@111@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<
    i@110@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
  (and
    (<
      i@110@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
    (=>
      (>= j@111@01 0)
      (and
        (>= j@111@01 0)
        (or
          (<
            j@111@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
          (not
            (<
              j@111@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
    (or (>= j@111@01 0) (not (>= j@111@01 0))))))
(assert (or
  (<
    i@110@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
  (not
    (<
      i@110@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))
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
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
      (and
        (<
          i@110@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
        (=>
          (>= j@111@01 0)
          (and
            (>= j@111@01 0)
            (or
              (<
                j@111@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
              (not
                (<
                  j@111@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
        (or (>= j@111@01 0) (not (>= j@111@01 0)))))
    (or
      (<
        i@110@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
      (not
        (<
          i@110@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))
(assert (or (>= i@110@01 0) (not (>= i@110@01 0))))
(push) ; 3
; [then-branch: 53 | i@110@01 >= 0 && i@110@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))| && j@111@01 >= 0 && j@111@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))| && i@110@01 != j@111@01 | live]
; [else-branch: 53 | !(i@110@01 >= 0 && i@110@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))| && j@111@01 >= 0 && j@111@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))| && i@110@01 != j@111@01) | live]
(push) ; 4
; [then-branch: 53 | i@110@01 >= 0 && i@110@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))| && j@111@01 >= 0 && j@111@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))| && i@110@01 != j@111@01]
(assert (and
  (>= i@110@01 0)
  (and
    (<
      i@110@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
    (and
      (>= j@111@01 0)
      (and
        (<
          j@111@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
        (not (= i@110@01 j@111@01)))))))
; [eval] diz.Ref__a[i] != diz.Ref__a[j]
; [eval] diz.Ref__a[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@107@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__a[j]
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@107@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 53 | !(i@110@01 >= 0 && i@110@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))| && j@111@01 >= 0 && j@111@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))| && i@110@01 != j@111@01)]
(assert (not
  (and
    (>= i@110@01 0)
    (and
      (<
        i@110@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
      (and
        (>= j@111@01 0)
        (and
          (<
            j@111@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
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
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
      (and
        (>= j@111@01 0)
        (and
          (<
            j@111@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
          (not (= i@110@01 j@111@01))))))
  (and
    (>= i@110@01 0)
    (<
      i@110@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
    (>= j@111@01 0)
    (<
      j@111@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
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
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
        (and
          (>= j@111@01 0)
          (and
            (<
              j@111@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
            (not (= i@110@01 j@111@01)))))))
  (and
    (>= i@110@01 0)
    (and
      (<
        i@110@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
      (and
        (>= j@111@01 0)
        (and
          (<
            j@111@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
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
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
          (and
            (<
              i@110@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
            (=>
              (>= j@111@01 0)
              (and
                (>= j@111@01 0)
                (or
                  (<
                    j@111@01
                    (Seq_length
                      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
                  (not
                    (<
                      j@111@01
                      (Seq_length
                        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
            (or (>= j@111@01 0) (not (>= j@111@01 0)))))
        (or
          (<
            i@110@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
          (not
            (<
              i@110@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
    (or (>= i@110@01 0) (not (>= i@110@01 0)))
    (=>
      (and
        (>= i@110@01 0)
        (and
          (<
            i@110@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
          (and
            (>= j@111@01 0)
            (and
              (<
                j@111@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
              (not (= i@110@01 j@111@01))))))
      (and
        (>= i@110@01 0)
        (<
          i@110@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
        (>= j@111@01 0)
        (<
          j@111@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
        (not (= i@110@01 j@111@01))))
    (or
      (not
        (and
          (>= i@110@01 0)
          (and
            (<
              i@110@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
            (and
              (>= j@111@01 0)
              (and
                (<
                  j@111@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
                (not (= i@110@01 j@111@01)))))))
      (and
        (>= i@110@01 0)
        (and
          (<
            i@110@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
          (and
            (>= j@111@01 0)
            (and
              (<
                j@111@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
              (not (= i@110@01 j@111@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
    i@110@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
    j@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_noauto_pvl.vpr@120@12@120@136-aux|)))
(assert (forall ((i@110@01 Int) (j@111@01 Int)) (!
  (=>
    (and
      (>= i@110@01 0)
      (and
        (<
          i@110@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
        (and
          (>= j@111@01 0)
          (and
            (<
              j@111@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
            (not (= i@110@01 j@111@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
          i@110@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
          j@111@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
    i@110@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
    j@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_noauto_pvl.vpr@120@12@120@136|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { diz.Ref__b[i], diz.Ref__b[j] } i >= 0 && (i < |diz.Ref__b| && (j >= 0 && (j < |diz.Ref__b| && i != j))) ==> diz.Ref__b[i] != diz.Ref__b[j])
(declare-const i@112@01 Int)
(declare-const j@113@01 Int)
(push) ; 2
; [eval] i >= 0 && (i < |diz.Ref__b| && (j >= 0 && (j < |diz.Ref__b| && i != j))) ==> diz.Ref__b[i] != diz.Ref__b[j]
; [eval] i >= 0 && (i < |diz.Ref__b| && (j >= 0 && (j < |diz.Ref__b| && i != j)))
; [eval] i >= 0
(push) ; 3
; [then-branch: 54 | !(i@112@01 >= 0) | live]
; [else-branch: 54 | i@112@01 >= 0 | live]
(push) ; 4
; [then-branch: 54 | !(i@112@01 >= 0)]
(assert (not (>= i@112@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 54 | i@112@01 >= 0]
(assert (>= i@112@01 0))
; [eval] i < |diz.Ref__b|
; [eval] |diz.Ref__b|
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@108@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [then-branch: 55 | !(i@112@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))|) | live]
; [else-branch: 55 | i@112@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))| | live]
(push) ; 6
; [then-branch: 55 | !(i@112@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))|)]
(assert (not
  (<
    i@112@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
(pop) ; 6
(push) ; 6
; [else-branch: 55 | i@112@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))|]
(assert (<
  i@112@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))
; [eval] j >= 0
(push) ; 7
; [then-branch: 56 | !(j@113@01 >= 0) | live]
; [else-branch: 56 | j@113@01 >= 0 | live]
(push) ; 8
; [then-branch: 56 | !(j@113@01 >= 0)]
(assert (not (>= j@113@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 56 | j@113@01 >= 0]
(assert (>= j@113@01 0))
; [eval] j < |diz.Ref__b|
; [eval] |diz.Ref__b|
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@108@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 57 | !(j@113@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))|) | live]
; [else-branch: 57 | j@113@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))| | live]
(push) ; 10
; [then-branch: 57 | !(j@113@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))|)]
(assert (not
  (<
    j@113@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
(pop) ; 10
(push) ; 10
; [else-branch: 57 | j@113@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))|]
(assert (<
  j@113@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<
    j@113@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
  (not
    (<
      j@113@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@113@01 0)
  (and
    (>= j@113@01 0)
    (or
      (<
        j@113@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
      (not
        (<
          j@113@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))))
(assert (or (>= j@113@01 0) (not (>= j@113@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<
    i@112@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
  (and
    (<
      i@112@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
    (=>
      (>= j@113@01 0)
      (and
        (>= j@113@01 0)
        (or
          (<
            j@113@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
          (not
            (<
              j@113@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))
    (or (>= j@113@01 0) (not (>= j@113@01 0))))))
(assert (or
  (<
    i@112@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
  (not
    (<
      i@112@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@112@01 0)
  (and
    (>= i@112@01 0)
    (=>
      (<
        i@112@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
      (and
        (<
          i@112@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
        (=>
          (>= j@113@01 0)
          (and
            (>= j@113@01 0)
            (or
              (<
                j@113@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
              (not
                (<
                  j@113@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))
        (or (>= j@113@01 0) (not (>= j@113@01 0)))))
    (or
      (<
        i@112@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
      (not
        (<
          i@112@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))))
(assert (or (>= i@112@01 0) (not (>= i@112@01 0))))
(push) ; 3
; [then-branch: 58 | i@112@01 >= 0 && i@112@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))| && j@113@01 >= 0 && j@113@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))| && i@112@01 != j@113@01 | live]
; [else-branch: 58 | !(i@112@01 >= 0 && i@112@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))| && j@113@01 >= 0 && j@113@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))| && i@112@01 != j@113@01) | live]
(push) ; 4
; [then-branch: 58 | i@112@01 >= 0 && i@112@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))| && j@113@01 >= 0 && j@113@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))| && i@112@01 != j@113@01]
(assert (and
  (>= i@112@01 0)
  (and
    (<
      i@112@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
    (and
      (>= j@113@01 0)
      (and
        (<
          j@113@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
        (not (= i@112@01 j@113@01)))))))
; [eval] diz.Ref__b[i] != diz.Ref__b[j]
; [eval] diz.Ref__b[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@108@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__b[j]
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@108@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 58 | !(i@112@01 >= 0 && i@112@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))| && j@113@01 >= 0 && j@113@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))| && i@112@01 != j@113@01)]
(assert (not
  (and
    (>= i@112@01 0)
    (and
      (<
        i@112@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
      (and
        (>= j@113@01 0)
        (and
          (<
            j@113@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
          (not (= i@112@01 j@113@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= i@112@01 0)
    (and
      (<
        i@112@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
      (and
        (>= j@113@01 0)
        (and
          (<
            j@113@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
          (not (= i@112@01 j@113@01))))))
  (and
    (>= i@112@01 0)
    (<
      i@112@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
    (>= j@113@01 0)
    (<
      j@113@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
    (not (= i@112@01 j@113@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@112@01 0)
      (and
        (<
          i@112@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
        (and
          (>= j@113@01 0)
          (and
            (<
              j@113@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
            (not (= i@112@01 j@113@01)))))))
  (and
    (>= i@112@01 0)
    (and
      (<
        i@112@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
      (and
        (>= j@113@01 0)
        (and
          (<
            j@113@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
          (not (= i@112@01 j@113@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@112@01 Int) (j@113@01 Int)) (!
  (and
    (=>
      (>= i@112@01 0)
      (and
        (>= i@112@01 0)
        (=>
          (<
            i@112@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
          (and
            (<
              i@112@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
            (=>
              (>= j@113@01 0)
              (and
                (>= j@113@01 0)
                (or
                  (<
                    j@113@01
                    (Seq_length
                      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
                  (not
                    (<
                      j@113@01
                      (Seq_length
                        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))
            (or (>= j@113@01 0) (not (>= j@113@01 0)))))
        (or
          (<
            i@112@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
          (not
            (<
              i@112@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))
    (or (>= i@112@01 0) (not (>= i@112@01 0)))
    (=>
      (and
        (>= i@112@01 0)
        (and
          (<
            i@112@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
          (and
            (>= j@113@01 0)
            (and
              (<
                j@113@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
              (not (= i@112@01 j@113@01))))))
      (and
        (>= i@112@01 0)
        (<
          i@112@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
        (>= j@113@01 0)
        (<
          j@113@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
        (not (= i@112@01 j@113@01))))
    (or
      (not
        (and
          (>= i@112@01 0)
          (and
            (<
              i@112@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
            (and
              (>= j@113@01 0)
              (and
                (<
                  j@113@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
                (not (= i@112@01 j@113@01)))))))
      (and
        (>= i@112@01 0)
        (and
          (<
            i@112@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
          (and
            (>= j@113@01 0)
            (and
              (<
                j@113@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
              (not (= i@112@01 j@113@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
    i@112@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
    j@113@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_noauto_pvl.vpr@121@12@121@136-aux|)))
(assert (forall ((i@112@01 Int) (j@113@01 Int)) (!
  (=>
    (and
      (>= i@112@01 0)
      (and
        (<
          i@112@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
        (and
          (>= j@113@01 0)
          (and
            (<
              j@113@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
            (not (= i@112@01 j@113@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
          i@112@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
          j@113@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
    i@112@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
    j@113@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_noauto_pvl.vpr@121@12@121@136|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { diz.Ref__c[i], diz.Ref__c[j] } i >= 0 && (i < |diz.Ref__c| && (j >= 0 && (j < |diz.Ref__c| && i != j))) ==> diz.Ref__c[i] != diz.Ref__c[j])
(declare-const i@114@01 Int)
(declare-const j@115@01 Int)
(push) ; 2
; [eval] i >= 0 && (i < |diz.Ref__c| && (j >= 0 && (j < |diz.Ref__c| && i != j))) ==> diz.Ref__c[i] != diz.Ref__c[j]
; [eval] i >= 0 && (i < |diz.Ref__c| && (j >= 0 && (j < |diz.Ref__c| && i != j)))
; [eval] i >= 0
(push) ; 3
; [then-branch: 59 | !(i@114@01 >= 0) | live]
; [else-branch: 59 | i@114@01 >= 0 | live]
(push) ; 4
; [then-branch: 59 | !(i@114@01 >= 0)]
(assert (not (>= i@114@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 59 | i@114@01 >= 0]
(assert (>= i@114@01 0))
; [eval] i < |diz.Ref__c|
; [eval] |diz.Ref__c|
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
; [then-branch: 60 | !(i@114@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))))|) | live]
; [else-branch: 60 | i@114@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))))| | live]
(push) ; 6
; [then-branch: 60 | !(i@114@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))))|)]
(assert (not
  (<
    i@114@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))
(pop) ; 6
(push) ; 6
; [else-branch: 60 | i@114@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))))|]
(assert (<
  i@114@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))
; [eval] j >= 0
(push) ; 7
; [then-branch: 61 | !(j@115@01 >= 0) | live]
; [else-branch: 61 | j@115@01 >= 0 | live]
(push) ; 8
; [then-branch: 61 | !(j@115@01 >= 0)]
(assert (not (>= j@115@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 61 | j@115@01 >= 0]
(assert (>= j@115@01 0))
; [eval] j < |diz.Ref__c|
; [eval] |diz.Ref__c|
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
; [then-branch: 62 | !(j@115@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))))|) | live]
; [else-branch: 62 | j@115@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))))| | live]
(push) ; 10
; [then-branch: 62 | !(j@115@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))))|)]
(assert (not
  (<
    j@115@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))
(pop) ; 10
(push) ; 10
; [else-branch: 62 | j@115@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))))|]
(assert (<
  j@115@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<
    j@115@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
  (not
    (<
      j@115@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@115@01 0)
  (and
    (>= j@115@01 0)
    (or
      (<
        j@115@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
      (not
        (<
          j@115@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))))))
(assert (or (>= j@115@01 0) (not (>= j@115@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<
    i@114@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
  (and
    (<
      i@114@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
    (=>
      (>= j@115@01 0)
      (and
        (>= j@115@01 0)
        (or
          (<
            j@115@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
          (not
            (<
              j@115@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))))
    (or (>= j@115@01 0) (not (>= j@115@01 0))))))
(assert (or
  (<
    i@114@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
  (not
    (<
      i@114@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@114@01 0)
  (and
    (>= i@114@01 0)
    (=>
      (<
        i@114@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
      (and
        (<
          i@114@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
        (=>
          (>= j@115@01 0)
          (and
            (>= j@115@01 0)
            (or
              (<
                j@115@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
              (not
                (<
                  j@115@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))))
        (or (>= j@115@01 0) (not (>= j@115@01 0)))))
    (or
      (<
        i@114@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
      (not
        (<
          i@114@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))))))
(assert (or (>= i@114@01 0) (not (>= i@114@01 0))))
(push) ; 3
; [then-branch: 63 | i@114@01 >= 0 && i@114@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))))| && j@115@01 >= 0 && j@115@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))))| && i@114@01 != j@115@01 | live]
; [else-branch: 63 | !(i@114@01 >= 0 && i@114@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))))| && j@115@01 >= 0 && j@115@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))))| && i@114@01 != j@115@01) | live]
(push) ; 4
; [then-branch: 63 | i@114@01 >= 0 && i@114@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))))| && j@115@01 >= 0 && j@115@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))))| && i@114@01 != j@115@01]
(assert (and
  (>= i@114@01 0)
  (and
    (<
      i@114@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
    (and
      (>= j@115@01 0)
      (and
        (<
          j@115@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
        (not (= i@114@01 j@115@01)))))))
; [eval] diz.Ref__c[i] != diz.Ref__c[j]
; [eval] diz.Ref__c[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@109@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__c[j]
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
; [else-branch: 63 | !(i@114@01 >= 0 && i@114@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))))| && j@115@01 >= 0 && j@115@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@106@01))))))))))))| && i@114@01 != j@115@01)]
(assert (not
  (and
    (>= i@114@01 0)
    (and
      (<
        i@114@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
      (and
        (>= j@115@01 0)
        (and
          (<
            j@115@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
          (not (= i@114@01 j@115@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= i@114@01 0)
    (and
      (<
        i@114@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
      (and
        (>= j@115@01 0)
        (and
          (<
            j@115@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
          (not (= i@114@01 j@115@01))))))
  (and
    (>= i@114@01 0)
    (<
      i@114@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
    (>= j@115@01 0)
    (<
      j@115@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
    (not (= i@114@01 j@115@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@114@01 0)
      (and
        (<
          i@114@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
        (and
          (>= j@115@01 0)
          (and
            (<
              j@115@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
            (not (= i@114@01 j@115@01)))))))
  (and
    (>= i@114@01 0)
    (and
      (<
        i@114@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
      (and
        (>= j@115@01 0)
        (and
          (<
            j@115@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
          (not (= i@114@01 j@115@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@114@01 Int) (j@115@01 Int)) (!
  (and
    (=>
      (>= i@114@01 0)
      (and
        (>= i@114@01 0)
        (=>
          (<
            i@114@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
          (and
            (<
              i@114@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
            (=>
              (>= j@115@01 0)
              (and
                (>= j@115@01 0)
                (or
                  (<
                    j@115@01
                    (Seq_length
                      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
                  (not
                    (<
                      j@115@01
                      (Seq_length
                        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))))
            (or (>= j@115@01 0) (not (>= j@115@01 0)))))
        (or
          (<
            i@114@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
          (not
            (<
              i@114@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))))
    (or (>= i@114@01 0) (not (>= i@114@01 0)))
    (=>
      (and
        (>= i@114@01 0)
        (and
          (<
            i@114@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
          (and
            (>= j@115@01 0)
            (and
              (<
                j@115@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
              (not (= i@114@01 j@115@01))))))
      (and
        (>= i@114@01 0)
        (<
          i@114@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
        (>= j@115@01 0)
        (<
          j@115@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
        (not (= i@114@01 j@115@01))))
    (or
      (not
        (and
          (>= i@114@01 0)
          (and
            (<
              i@114@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
            (and
              (>= j@115@01 0)
              (and
                (<
                  j@115@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
                (not (= i@114@01 j@115@01)))))))
      (and
        (>= i@114@01 0)
        (and
          (<
            i@114@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
          (and
            (>= j@115@01 0)
            (and
              (<
                j@115@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
              (not (= i@114@01 j@115@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
    i@114@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
    j@115@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_noauto_pvl.vpr@122@12@122@136-aux|)))
(assert (forall ((i@114@01 Int) (j@115@01 Int)) (!
  (=>
    (and
      (>= i@114@01 0)
      (and
        (<
          i@114@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
        (and
          (>= j@115@01 0)
          (and
            (<
              j@115@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
            (not (= i@114@01 j@115@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
          i@114@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
          j@115@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
    i@114@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
    j@115@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_noauto_pvl.vpr@122@12@122@136|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))))))
(declare-const _x_tid@116@01 Int)
(push) ; 2
; [eval] 0 <= _x_tid && _x_tid < gsize
; [eval] 0 <= _x_tid
(push) ; 3
; [then-branch: 64 | !(0 <= _x_tid@116@01) | live]
; [else-branch: 64 | 0 <= _x_tid@116@01 | live]
(push) ; 4
; [then-branch: 64 | !(0 <= _x_tid@116@01)]
(assert (not (<= 0 _x_tid@116@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 64 | 0 <= _x_tid@116@01]
(assert (<= 0 _x_tid@116@01))
; [eval] _x_tid < gsize
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 _x_tid@116@01) (not (<= 0 _x_tid@116@01))))
(assert (and (<= 0 _x_tid@116@01) (< _x_tid@116@01 gsize@102@01)))
; [eval] diz.Ref__a[_x_tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@107@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= _x_tid@116@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  _x_tid@116@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@117@01 ($Ref) Int)
(declare-fun img@118@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((_x_tid@116@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@116@01) (< _x_tid@116@01 gsize@102@01))
    (or (<= 0 _x_tid@116@01) (not (<= 0 _x_tid@116@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
    _x_tid@116@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((_x_tid1@116@01 Int) (_x_tid2@116@01 Int)) (!
  (=>
    (and
      (and (<= 0 _x_tid1@116@01) (< _x_tid1@116@01 gsize@102@01))
      (and (<= 0 _x_tid2@116@01) (< _x_tid2@116@01 gsize@102@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
          _x_tid1@116@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
          _x_tid2@116@01)))
    (= _x_tid1@116@01 _x_tid2@116@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((_x_tid@116@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@116@01) (< _x_tid@116@01 gsize@102@01))
    (and
      (=
        (inv@117@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
          _x_tid@116@01))
        _x_tid@116@01)
      (img@118@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
        _x_tid@116@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
    _x_tid@116@01))
  :qid |quant-u-7547|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@118@01 r)
      (and (<= 0 (inv@117@01 r)) (< (inv@117@01 r) gsize@102@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
        (inv@117@01 r))
      r))
  :pattern ((inv@117@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((_x_tid@116@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@116@01) (< _x_tid@116@01 gsize@102@01))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
          _x_tid@116@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
    _x_tid@116@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))))))
(declare-const _x_tid@119@01 Int)
(push) ; 2
; [eval] 0 <= _x_tid && _x_tid < gsize
; [eval] 0 <= _x_tid
(push) ; 3
; [then-branch: 65 | !(0 <= _x_tid@119@01) | live]
; [else-branch: 65 | 0 <= _x_tid@119@01 | live]
(push) ; 4
; [then-branch: 65 | !(0 <= _x_tid@119@01)]
(assert (not (<= 0 _x_tid@119@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 65 | 0 <= _x_tid@119@01]
(assert (<= 0 _x_tid@119@01))
; [eval] _x_tid < gsize
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 _x_tid@119@01) (not (<= 0 _x_tid@119@01))))
(assert (and (<= 0 _x_tid@119@01) (< _x_tid@119@01 gsize@102@01)))
; [eval] diz.Ref__b[_x_tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@108@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= _x_tid@119@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  _x_tid@119@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@120@01 ($Ref) Int)
(declare-fun img@121@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((_x_tid@119@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@119@01) (< _x_tid@119@01 gsize@102@01))
    (or (<= 0 _x_tid@119@01) (not (<= 0 _x_tid@119@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
    _x_tid@119@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((_x_tid1@119@01 Int) (_x_tid2@119@01 Int)) (!
  (=>
    (and
      (and (<= 0 _x_tid1@119@01) (< _x_tid1@119@01 gsize@102@01))
      (and (<= 0 _x_tid2@119@01) (< _x_tid2@119@01 gsize@102@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
          _x_tid1@119@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
          _x_tid2@119@01)))
    (= _x_tid1@119@01 _x_tid2@119@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((_x_tid@119@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@119@01) (< _x_tid@119@01 gsize@102@01))
    (and
      (=
        (inv@120@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
          _x_tid@119@01))
        _x_tid@119@01)
      (img@121@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
        _x_tid@119@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
    _x_tid@119@01))
  :qid |quant-u-7549|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@121@01 r)
      (and (<= 0 (inv@120@01 r)) (< (inv@120@01 r) gsize@102@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
        (inv@120@01 r))
      r))
  :pattern ((inv@120@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((_x_tid@119@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@119@01) (< _x_tid@119@01 gsize@102@01))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
          _x_tid@119@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
    _x_tid@119@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
        _x_tid@119@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
        _x_tid@116@01))
    (=
      (and
        (img@121@01 r)
        (and (<= 0 (inv@120@01 r)) (< (inv@120@01 r) gsize@102@01)))
      (and
        (img@118@01 r)
        (and (<= 0 (inv@117@01 r)) (< (inv@117@01 r) gsize@102@01)))))
  
  :qid |quant-u-7550|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))))))))
(declare-const _x_tid@122@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] 0 <= _x_tid && _x_tid < gsize
; [eval] 0 <= _x_tid
(push) ; 3
; [then-branch: 66 | !(0 <= _x_tid@122@01) | live]
; [else-branch: 66 | 0 <= _x_tid@122@01 | live]
(push) ; 4
; [then-branch: 66 | !(0 <= _x_tid@122@01)]
(assert (not (<= 0 _x_tid@122@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 66 | 0 <= _x_tid@122@01]
(assert (<= 0 _x_tid@122@01))
; [eval] _x_tid < gsize
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 _x_tid@122@01) (not (<= 0 _x_tid@122@01))))
(assert (and (<= 0 _x_tid@122@01) (< _x_tid@122@01 gsize@102@01)))
; [eval] diz.Ref__c[_x_tid]
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
(assert (not (>= _x_tid@122@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  _x_tid@122@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@123@01 ($Ref) Int)
(declare-fun img@124@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((_x_tid@122@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@122@01) (< _x_tid@122@01 gsize@102@01))
    (or (<= 0 _x_tid@122@01) (not (<= 0 _x_tid@122@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
    _x_tid@122@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((_x_tid1@122@01 Int) (_x_tid2@122@01 Int)) (!
  (=>
    (and
      (and (<= 0 _x_tid1@122@01) (< _x_tid1@122@01 gsize@102@01))
      (and (<= 0 _x_tid2@122@01) (< _x_tid2@122@01 gsize@102@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
          _x_tid1@122@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
          _x_tid2@122@01)))
    (= _x_tid1@122@01 _x_tid2@122@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((_x_tid@122@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@122@01) (< _x_tid@122@01 gsize@102@01))
    (and
      (=
        (inv@123@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
          _x_tid@122@01))
        _x_tid@122@01)
      (img@124@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
        _x_tid@122@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
    _x_tid@122@01))
  :qid |quant-u-7552|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@124@01 r)
      (and (<= 0 (inv@123@01 r)) (< (inv@123@01 r) gsize@102@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
        (inv@123@01 r))
      r))
  :pattern ((inv@123@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((_x_tid@122@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@122@01) (< _x_tid@122@01 gsize@102@01))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
          _x_tid@122@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
    _x_tid@122@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
        _x_tid@122@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
        _x_tid@119@01))
    (=
      (and
        (img@124@01 r)
        (and (<= 0 (inv@123@01 r)) (< (inv@123@01 r) gsize@102@01)))
      (and
        (img@121@01 r)
        (and (<= 0 (inv@120@01 r)) (< (inv@120@01 r) gsize@102@01)))))
  
  :qid |quant-u-7553|))))
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
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
        _x_tid@122@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
        _x_tid@116@01))
    (=
      (and
        (img@124@01 r)
        (and (<= 0 (inv@123@01 r)) (< (inv@123@01 r) gsize@102@01)))
      (and
        (img@118@01 r)
        (and (<= 0 (inv@117@01 r)) (< (inv@117@01 r) gsize@102@01)))))
  
  :qid |quant-u-7554|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))))
  $Snap.unit))
; [eval] (forall _x_tid: Int :: { diz.Ref__a[_x_tid] } 0 <= _x_tid && _x_tid < (tcount - 1 < gsize ? tcount - 1 : gsize) ==> diz.Ref__a[_x_tid].Ref__Integer_value == _x_tid + 1)
(declare-const _x_tid@125@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] 0 <= _x_tid && _x_tid < (tcount - 1 < gsize ? tcount - 1 : gsize) ==> diz.Ref__a[_x_tid].Ref__Integer_value == _x_tid + 1
; [eval] 0 <= _x_tid && _x_tid < (tcount - 1 < gsize ? tcount - 1 : gsize)
; [eval] 0 <= _x_tid
(push) ; 3
; [then-branch: 67 | !(0 <= _x_tid@125@01) | live]
; [else-branch: 67 | 0 <= _x_tid@125@01 | live]
(push) ; 4
; [then-branch: 67 | !(0 <= _x_tid@125@01)]
(assert (not (<= 0 _x_tid@125@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 67 | 0 <= _x_tid@125@01]
(assert (<= 0 _x_tid@125@01))
; [eval] _x_tid < (tcount - 1 < gsize ? tcount - 1 : gsize)
; [eval] (tcount - 1 < gsize ? tcount - 1 : gsize)
; [eval] tcount - 1 < gsize
; [eval] tcount - 1
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< (- tcount@101@01 1) gsize@102@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< (- tcount@101@01 1) gsize@102@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 68 | tcount@101@01 - 1 < gsize@102@01 | live]
; [else-branch: 68 | !(tcount@101@01 - 1 < gsize@102@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 68 | tcount@101@01 - 1 < gsize@102@01]
(assert (< (- tcount@101@01 1) gsize@102@01))
; [eval] tcount - 1
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (< (- tcount@101@01 1) gsize@102@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 _x_tid@125@01)
  (and (<= 0 _x_tid@125@01) (< (- tcount@101@01 1) gsize@102@01))))
(assert (or (<= 0 _x_tid@125@01) (not (<= 0 _x_tid@125@01))))
(push) ; 3
; [then-branch: 69 | 0 <= _x_tid@125@01 && _x_tid@125@01 < tcount@101@01 - 1 | live]
; [else-branch: 69 | !(0 <= _x_tid@125@01 && _x_tid@125@01 < tcount@101@01 - 1) | live]
(push) ; 4
; [then-branch: 69 | 0 <= _x_tid@125@01 && _x_tid@125@01 < tcount@101@01 - 1]
(assert (and (<= 0 _x_tid@125@01) (< _x_tid@125@01 (- tcount@101@01 1))))
; [eval] diz.Ref__a[_x_tid].Ref__Integer_value == _x_tid + 1
; [eval] diz.Ref__a[_x_tid]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@107@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= _x_tid@125@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  _x_tid@125@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@126@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@118@01 r)
      (and (<= 0 (inv@117@01 r)) (< (inv@117@01 r) gsize@102@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@121@01 r)
      (and (<= 0 (inv@120@01 r)) (< (inv@120@01 r) gsize@102@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@124@01 r)
      (and (<= 0 (inv@123@01 r)) (< (inv@123@01 r) gsize@102@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))))) r))
  :qid |qp.fvfValDef2|)))
(declare-const pm@127@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@127@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@118@01 r)
            (and (<= 0 (inv@117@01 r)) (< (inv@117@01 r) gsize@102@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@121@01 r)
            (and (<= 0 (inv@120@01 r)) (< (inv@120@01 r) gsize@102@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@124@01 r)
          (and (<= 0 (inv@123@01 r)) (< (inv@123@01 r) gsize@102@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@127@01  $FPM) r))
  :qid |qp.resPrmSumDef3|)))
(push) ; 5
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@127@01  $FPM) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
    _x_tid@125@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] _x_tid + 1
(pop) ; 4
(push) ; 4
; [else-branch: 69 | !(0 <= _x_tid@125@01 && _x_tid@125@01 < tcount@101@01 - 1)]
(assert (not (and (<= 0 _x_tid@125@01) (< _x_tid@125@01 (- tcount@101@01 1)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@118@01 r)
      (and (<= 0 (inv@117@01 r)) (< (inv@117@01 r) gsize@102@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@121@01 r)
      (and (<= 0 (inv@120@01 r)) (< (inv@120@01 r) gsize@102@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@124@01 r)
      (and (<= 0 (inv@123@01 r)) (< (inv@123@01 r) gsize@102@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@127@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@118@01 r)
            (and (<= 0 (inv@117@01 r)) (< (inv@117@01 r) gsize@102@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@121@01 r)
            (and (<= 0 (inv@120@01 r)) (< (inv@120@01 r) gsize@102@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@124@01 r)
          (and (<= 0 (inv@123@01 r)) (< (inv@123@01 r) gsize@102@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@127@01  $FPM) r))
  :qid |qp.resPrmSumDef3|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 _x_tid@125@01) (< _x_tid@125@01 (- tcount@101@01 1))))
  (and (<= 0 _x_tid@125@01) (< _x_tid@125@01 (- tcount@101@01 1)))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@118@01 r)
      (and (<= 0 (inv@117@01 r)) (< (inv@117@01 r) gsize@102@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@121@01 r)
      (and (<= 0 (inv@120@01 r)) (< (inv@120@01 r) gsize@102@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@124@01 r)
      (and (<= 0 (inv@123@01 r)) (< (inv@123@01 r) gsize@102@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@127@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@118@01 r)
            (and (<= 0 (inv@117@01 r)) (< (inv@117@01 r) gsize@102@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@121@01 r)
            (and (<= 0 (inv@120@01 r)) (< (inv@120@01 r) gsize@102@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@124@01 r)
          (and (<= 0 (inv@123@01 r)) (< (inv@123@01 r) gsize@102@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@127@01  $FPM) r))
  :qid |qp.resPrmSumDef3|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((_x_tid@125@01 Int)) (!
  (and
    (=>
      (<= 0 _x_tid@125@01)
      (and (<= 0 _x_tid@125@01) (< (- tcount@101@01 1) gsize@102@01)))
    (or (<= 0 _x_tid@125@01) (not (<= 0 _x_tid@125@01)))
    (or
      (not (and (<= 0 _x_tid@125@01) (< _x_tid@125@01 (- tcount@101@01 1))))
      (and (<= 0 _x_tid@125@01) (< _x_tid@125@01 (- tcount@101@01 1)))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
    _x_tid@125@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_noauto_pvl.vpr@126@13@126@162-aux|)))
(assert (forall ((_x_tid@125@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@125@01) (< _x_tid@125@01 (- tcount@101@01 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
        _x_tid@125@01))
      (+ _x_tid@125@01 1)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
    _x_tid@125@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_noauto_pvl.vpr@126@13@126@162|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@128@01 $Snap)
(assert (= $t@128@01 ($Snap.combine ($Snap.first $t@128@01) ($Snap.second $t@128@01))))
(assert (= ($Snap.first $t@128@01) $Snap.unit))
; [eval] 0 <= tid
(assert (=
  ($Snap.second $t@128@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@128@01))
    ($Snap.second ($Snap.second $t@128@01)))))
(assert (= ($Snap.first ($Snap.second $t@128@01)) $Snap.unit))
; [eval] tid < tcount
(assert (=
  ($Snap.second ($Snap.second $t@128@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@128@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@128@01))) $Snap.unit))
; [eval] tid == lid
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@128@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@128@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@128@01))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))
  $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))
(declare-const $k@129@01 $Perm)
(assert ($Perm.isReadVar $k@129@01))
(assert (<= $Perm.No $k@129@01))
(assert (<= $k@129@01 $Perm.Write))
(assert (=> (< $Perm.No $k@129@01) (not (= diz@99@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))
  $Snap.unit))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@129@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))
  tcount@101@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))))
(declare-const $k@130@01 $Perm)
(assert ($Perm.isReadVar $k@130@01))
(assert (<= $Perm.No $k@130@01))
(assert (<= $k@130@01 $Perm.Write))
(assert (=> (< $Perm.No $k@130@01) (not (= diz@99@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))
  $Snap.unit))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@130@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))))
  tcount@101@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))))))
(declare-const $k@131@01 $Perm)
(assert ($Perm.isReadVar $k@131@01))
(assert (<= $Perm.No $k@131@01))
(assert (<= $k@131@01 $Perm.Write))
(assert (=> (< $Perm.No $k@131@01) (not (= diz@99@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))))
  $Snap.unit))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))))))
  tcount@101@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))))))
  $Snap.unit))
; [eval] diz.Ref__a == old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@129@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@107@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))))))
  $Snap.unit))
; [eval] diz.Ref__b == old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@130@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__b)
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
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))))))))
  $Snap.unit))
; [eval] diz.Ref__c == old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@131@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__c)
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
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))))))))))))
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (> tid@103@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (> tid@103@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 70 | tid@103@01 > 0 | live]
; [else-branch: 70 | !(tid@103@01 > 0) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 70 | tid@103@01 > 0]
(assert (> tid@103@01 0))
; [eval] diz.Ref__a[tid - 1]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@129@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 4
(assert (not (>= (- tid@103@01 1) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  (- tid@103@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@132@01 $FVF<Ref__Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@132@01  $FVF<Ref__Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))
    (- tid@103@01 1)))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))
        (- tid@103@01 1))
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))
        (- tid@103@01 1)))
    (/ (to_real 1) (to_real 2))
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))
        (- tid@103@01 1))
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))
        (- tid@103@01 1)))
    (/ (to_real 1) (to_real 2))
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))
      (- tid@103@01 1))
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))
      (- tid@103@01 1)))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))
        (- tid@103@01 1))
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))))))))
  $Snap.unit))
; [eval] tid > 0 ==> diz.Ref__a[tid - 1].Ref__Integer_value == tid
; [eval] tid > 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> tid@103@01 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 71 | tid@103@01 > 0 | live]
; [else-branch: 71 | !(tid@103@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 71 | tid@103@01 > 0]
; [eval] diz.Ref__a[tid - 1].Ref__Integer_value == tid
; [eval] diz.Ref__a[tid - 1]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@129@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 6
(assert (not (>= (- tid@103@01 1) 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  (- tid@103@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))
    (- tid@103@01 1))
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))
    (- tid@103@01 1)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (> tid@103@01 0)
  (=
    ($FVF.lookup_Ref__Integer_value (as sm@132@01  $FVF<Ref__Integer_value>) (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))
      (- tid@103@01 1)))
    tid@103@01)))
(pop) ; 3
(push) ; 3
; [else-branch: 70 | !(tid@103@01 > 0)]
(assert (not (> tid@103@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))))))))
  $Snap.unit))
; [eval] tid > 0 ==> diz.Ref__a[tid - 1].Ref__Integer_value == tid
; [eval] tid > 0
(push) ; 4
; [then-branch: 72 | tid@103@01 > 0 | dead]
; [else-branch: 72 | !(tid@103@01 > 0) | live]
(push) ; 5
; [else-branch: 72 | !(tid@103@01 > 0)]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(pop) ; 3
(pop) ; 2
(push) ; 2
; [eval] 0 <= tid
; [eval] tid < tcount
; [eval] tid == lid
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@133@01 $Perm)
(assert ($Perm.isReadVar $k@133@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@107@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@133@01 $k@107@01))
(assert (<= $Perm.No (- $k@107@01 $k@133@01)))
(assert (<= (- $k@107@01 $k@133@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@107@01 $k@133@01)) (not (= diz@99@01 $Ref.null))))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@107@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@134@01 $Perm)
(assert ($Perm.isReadVar $k@134@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@108@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@134@01 $k@108@01))
(assert (<= $Perm.No (- $k@108@01 $k@134@01)))
(assert (<= (- $k@108@01 $k@134@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@108@01 $k@134@01)) (not (= diz@99@01 $Ref.null))))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@108@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@135@01 $Perm)
(assert ($Perm.isReadVar $k@135@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@109@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@135@01 $k@109@01))
(assert (<= $Perm.No (- $k@109@01 $k@135@01)))
(assert (<= (- $k@109@01 $k@135@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@109@01 $k@135@01)) (not (= diz@99@01 $Ref.null))))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@109@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__a == old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@107@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@107@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__b == old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@108@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@108@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__c == old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@109@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@109@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (> tid@103@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (> tid@103@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 73 | tid@103@01 > 0 | live]
; [else-branch: 73 | !(tid@103@01 > 0) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 73 | tid@103@01 > 0]
(assert (> tid@103@01 0))
; [eval] diz.Ref__a[tid - 1]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@107@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 4
(assert (not (>= (- tid@103@01 1) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  (- tid@103@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@136@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
        (- tid@103@01 1)))
    ($Perm.min
      (ite
        (and
          (img@118@01 r)
          (and (<= 0 (inv@117@01 r)) (< (inv@117@01 r) gsize@102@01)))
        $Perm.Write
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@137@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
        (- tid@103@01 1)))
    ($Perm.min
      (ite
        (and
          (img@121@01 r)
          (and (<= 0 (inv@120@01 r)) (< (inv@120@01 r) gsize@102@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@136@01 r)))
    $Perm.No))
(define-fun pTaken@138@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
        (- tid@103@01 1)))
    ($Perm.min
      (ite
        (and
          (img@124@01 r)
          (and (<= 0 (inv@123@01 r)) (< (inv@123@01 r) gsize@102@01)))
        $Perm.Write
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@136@01 r)) (pTaken@137@01 r)))
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
          (img@118@01 r)
          (and (<= 0 (inv@117@01 r)) (< (inv@117@01 r) gsize@102@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@136@01 r))
    $Perm.No)
  
  :qid |quant-u-7556|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@136@01 r) $Perm.No)
  
  :qid |quant-u-7557|))))
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
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
        (- tid@103@01 1)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@136@01 r)) $Perm.No))
  
  :qid |quant-u-7558|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] tid > 0 ==> diz.Ref__a[tid - 1].Ref__Integer_value == tid
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> tid@103@01 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 74 | tid@103@01 > 0 | live]
; [else-branch: 74 | !(tid@103@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 74 | tid@103@01 > 0]
; [eval] diz.Ref__a[tid - 1].Ref__Integer_value == tid
; [eval] diz.Ref__a[tid - 1]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@107@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 6
(assert (not (>= (- tid@103@01 1) 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  (- tid@103@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@118@01 r)
        (and (<= 0 (inv@117@01 r)) (< (inv@117@01 r) gsize@102@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@121@01 r)
        (and (<= 0 (inv@120@01 r)) (< (inv@120@01 r) gsize@102@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))))) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@124@01 r)
        (and (<= 0 (inv@123@01 r)) (< (inv@123@01 r) gsize@102@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))))) r))
    :qid |qp.fvfValDef2|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@118@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
            (- tid@103@01 1)))
          (and
            (<=
              0
              (inv@117@01 (Seq_index
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
                (- tid@103@01 1))))
            (<
              (inv@117@01 (Seq_index
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
                (- tid@103@01 1)))
              gsize@102@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@121@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
            (- tid@103@01 1)))
          (and
            (<=
              0
              (inv@120@01 (Seq_index
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
                (- tid@103@01 1))))
            (<
              (inv@120@01 (Seq_index
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
                (- tid@103@01 1)))
              gsize@102@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@124@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
          (- tid@103@01 1)))
        (and
          (<=
            0
            (inv@123@01 (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
              (- tid@103@01 1))))
          (<
            (inv@123@01 (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
              (- tid@103@01 1)))
            gsize@102@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@118@01 r)
      (and (<= 0 (inv@117@01 r)) (< (inv@117@01 r) gsize@102@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@121@01 r)
      (and (<= 0 (inv@120@01 r)) (< (inv@120@01 r) gsize@102@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@124@01 r)
      (and (<= 0 (inv@123@01 r)) (< (inv@123@01 r) gsize@102@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))))))) r))
  :qid |qp.fvfValDef2|)))
(push) ; 4
(assert (not (=>
  (> tid@103@01 0)
  (=
    ($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
      (- tid@103@01 1)))
    tid@103@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (> tid@103@01 0)
  (=
    ($FVF.lookup_Ref__Integer_value (as sm@126@01  $FVF<Ref__Integer_value>) (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
      (- tid@103@01 1)))
    tid@103@01)))
(pop) ; 3
(push) ; 3
; [else-branch: 73 | !(tid@103@01 > 0)]
(assert (not (> tid@103@01 0)))
; [eval] tid > 0 ==> diz.Ref__a[tid - 1].Ref__Integer_value == tid
; [eval] tid > 0
(push) ; 4
; [then-branch: 75 | tid@103@01 > 0 | dead]
; [else-branch: 75 | !(tid@103@01 > 0) | live]
(push) ; 5
; [else-branch: 75 | !(tid@103@01 > 0)]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(pop) ; 3
(pop) ; 2
(pop) ; 1
