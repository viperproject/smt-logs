(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:35:21
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
(declare-sort Set<Int> 0)
(declare-sort Set<$Ref> 0)
(declare-sort Set<$Snap> 0)
(declare-sort $FVF<f> 0)
(declare-sort $FVF<g> 0)
(declare-sort $PSF<pred> 0)
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
(declare-fun $SortWrappers.$FVF<g>To$Snap ($FVF<g>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<g> ($Snap) $FVF<g>)
(assert (forall ((x $FVF<g>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<g>($SortWrappers.$FVF<g>To$Snap x)))
    :pattern (($SortWrappers.$FVF<g>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<g>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<g>To$Snap($SortWrappers.$SnapTo$FVF<g> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<g> x))
    :qid |$Snap.$FVF<g>To$SnapTo$FVF<g>|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$PSF<pred>To$Snap ($PSF<pred>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<pred> ($Snap) $PSF<pred>)
(assert (forall ((x $PSF<pred>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<pred>($SortWrappers.$PSF<pred>To$Snap x)))
    :pattern (($SortWrappers.$PSF<pred>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<pred>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<pred>To$Snap($SortWrappers.$SnapTo$PSF<pred> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<pred> x))
    :qid |$Snap.$PSF<pred>To$SnapTo$PSF<pred>|
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
; /field_value_functions_declarations.smt2 [f: Int]
(declare-fun $FVF.domain_f ($FVF<f>) Set<$Ref>)
(declare-fun $FVF.lookup_f ($FVF<f> $Ref) Int)
(declare-fun $FVF.after_f ($FVF<f> $FVF<f>) Bool)
(declare-fun $FVF.loc_f (Int $Ref) Bool)
(declare-fun $FVF.perm_f ($FPM $Ref) $Perm)
(declare-const $fvfTOP_f $FVF<f>)
; /field_value_functions_declarations.smt2 [g: Int]
(declare-fun $FVF.domain_g ($FVF<g>) Set<$Ref>)
(declare-fun $FVF.lookup_g ($FVF<g> $Ref) Int)
(declare-fun $FVF.after_g ($FVF<g> $FVF<g>) Bool)
(declare-fun $FVF.loc_g (Int $Ref) Bool)
(declare-fun $FVF.perm_g ($FPM $Ref) $Perm)
(declare-const $fvfTOP_g $FVF<g>)
; /predicate_snap_functions_declarations.smt2 [pred: Int]
(declare-fun $PSF.domain_pred ($PSF<pred>) Set<$Snap>)
(declare-fun $PSF.lookup_pred ($PSF<pred> $Snap) Int)
(declare-fun $PSF.after_pred ($PSF<pred> $PSF<pred>) Bool)
(declare-fun $PSF.loc_pred (Int $Snap) Bool)
(declare-fun $PSF.perm_pred ($PPM $Snap) $Perm)
(declare-const $psfTOP_pred $PSF<pred>)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun pred%trigger ($Snap $Ref) Bool)
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
; /field_value_functions_axioms.smt2 [g: Int]
(assert (forall ((vs $FVF<g>) (ws $FVF<g>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_g vs) ($FVF.domain_g ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_g vs))
            (= ($FVF.lookup_g vs x) ($FVF.lookup_g ws x)))
          :pattern (($FVF.lookup_g vs x) ($FVF.lookup_g ws x))
          :qid |qp.$FVF<g>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<g>To$Snap vs)
              ($SortWrappers.$FVF<g>To$Snap ws)
              )
    :qid |qp.$FVF<g>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_g pm r))
    :pattern (($FVF.perm_g pm r)))))
(assert (forall ((r $Ref) (f Int)) (!
    (= ($FVF.loc_g f r) true)
    :pattern (($FVF.loc_g f r)))))
; /predicate_snap_functions_axioms.smt2 [pred: Int]
(assert (forall ((vs $PSF<pred>) (ws $PSF<pred>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_pred vs) ($PSF.domain_pred ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_pred vs))
            (= ($PSF.lookup_pred vs x) ($PSF.lookup_pred ws x)))
          :pattern (($PSF.lookup_pred vs x) ($PSF.lookup_pred ws x))
          :qid |qp.$PSF<pred>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<pred>To$Snap vs)
              ($SortWrappers.$PSF<pred>To$Snap ws)
              )
    :qid |qp.$PSF<pred>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_pred pm s))
    :pattern (($PSF.perm_pred pm s)))))
(assert (forall ((s $Snap) (f Int)) (!
    (= ($PSF.loc_pred f s) true)
    :pattern (($PSF.loc_pred f s)))))
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
; ---------- m1 ----------
(declare-const xs@0@01 Seq<$Ref>)
(declare-const xs@1@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const x@2@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@1@01 x@2@01))
(pop) ; 2
(declare-const $t@3@01 $FVF<f>)
(declare-fun inv@4@01 ($Ref) $Ref)
(declare-fun img@5@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@2@01 $Ref) (x2@2@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@1@01 x1@2@01)
      (Seq_contains xs@1@01 x2@2@01)
      (= x1@2@01 x2@2@01))
    (= x1@2@01 x2@2@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@2@01 $Ref)) (!
  (=>
    (Seq_contains xs@1@01 x@2@01)
    (and (= (inv@4@01 x@2@01) x@2@01) (img@5@01 x@2@01)))
  :pattern ((Seq_contains xs@1@01 x@2@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@2@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@2@01))
  :pattern ((inv@4@01 x@2@01))
  :pattern ((img@5@01 x@2@01))
  :qid |quant-u-16150|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@5@01 r) (Seq_contains xs@1@01 (inv@4@01 r))) (= (inv@4@01 r) r))
  :pattern ((inv@4@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@2@01 $Ref)) (!
  (=> (Seq_contains xs@1@01 x@2@01) (not (= x@2@01 $Ref.null)))
  :pattern ((Seq_contains xs@1@01 x@2@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@2@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@2@01))
  :pattern ((inv@4@01 x@2@01))
  :pattern ((img@5@01 x@2@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const x@6@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@1@01 x@6@01))
(pop) ; 3
(declare-const $t@7@01 $FVF<f>)
(declare-fun inv@8@01 ($Ref) $Ref)
(declare-fun img@9@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@6@01 $Ref) (x2@6@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@1@01 x1@6@01)
      (Seq_contains xs@1@01 x2@6@01)
      (= x1@6@01 x2@6@01))
    (= x1@6@01 x2@6@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@6@01 $Ref)) (!
  (=>
    (Seq_contains xs@1@01 x@6@01)
    (and (= (inv@8@01 x@6@01) x@6@01) (img@9@01 x@6@01)))
  :pattern ((Seq_contains xs@1@01 x@6@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@6@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@6@01))
  :pattern ((inv@8@01 x@6@01))
  :pattern ((img@9@01 x@6@01))
  :qid |quant-u-16152|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@9@01 r) (Seq_contains xs@1@01 (inv@8@01 r))) (= (inv@8@01 r) r))
  :pattern ((inv@8@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@6@01 $Ref)) (!
  (=> (Seq_contains xs@1@01 x@6@01) (not (= x@6@01 $Ref.null)))
  :pattern ((Seq_contains xs@1@01 x@6@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@6@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@6@01))
  :pattern ((inv@8@01 x@6@01))
  :pattern ((img@9@01 x@6@01))
  :qid |f-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
(declare-const x@10@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@1@01 x@10@01))
(pop) ; 3
(declare-fun inv@11@01 ($Ref) $Ref)
(declare-fun img@12@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@10@01 $Ref) (x2@10@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@1@01 x1@10@01)
      (Seq_contains xs@1@01 x2@10@01)
      (= x1@10@01 x2@10@01))
    (= x1@10@01 x2@10@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@10@01 $Ref)) (!
  (=>
    (Seq_contains xs@1@01 x@10@01)
    (and (= (inv@11@01 x@10@01) x@10@01) (img@12@01 x@10@01)))
  :pattern ((Seq_contains xs@1@01 x@10@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@10@01))
  :pattern ((inv@11@01 x@10@01))
  :pattern ((img@12@01 x@10@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@12@01 r) (Seq_contains xs@1@01 (inv@11@01 r)))
    (= (inv@11@01 r) r))
  :pattern ((inv@11@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@13@01 ((r $Ref)) $Perm
  (ite
    (and (Seq_contains xs@1@01 (inv@11@01 r)) (img@12@01 r) (= r (inv@11@01 r)))
    ($Perm.min
      (ite
        (and (img@5@01 r) (Seq_contains xs@1@01 (inv@4@01 r)))
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
        (and (img@5@01 r) (Seq_contains xs@1@01 (inv@4@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@13@01 r))
    $Perm.No)
  
  :qid |quant-u-16155|))))
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
    (and (Seq_contains xs@1@01 (inv@11@01 r)) (img@12@01 r) (= r (inv@11@01 r)))
    (= (- $Perm.Write (pTaken@13@01 r)) $Perm.No))
  
  :qid |quant-u-16156|))))
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
(declare-const xs@14@01 Seq<$Ref>)
(declare-const xs@15@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const x@16@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@15@01 x@16@01))
(pop) ; 2
(declare-const $t@17@01 $PSF<pred>)
(declare-fun inv@18@01 ($Ref) $Ref)
(declare-fun img@19@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@16@01 $Ref) (x2@16@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@15@01 x1@16@01)
      (Seq_contains xs@15@01 x2@16@01)
      (= x1@16@01 x2@16@01))
    (= x1@16@01 x2@16@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@16@01 $Ref)) (!
  (=>
    (Seq_contains xs@15@01 x@16@01)
    (and (= (inv@18@01 x@16@01) x@16@01) (img@19@01 x@16@01)))
  :pattern ((Seq_contains xs@15@01 x@16@01))
  :pattern ((Seq_contains_trigger xs@15@01 x@16@01))
  :pattern ((Seq_contains_trigger xs@15@01 x@16@01))
  :pattern ((inv@18@01 x@16@01))
  :pattern ((img@19@01 x@16@01))
  :qid |quant-u-16158|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@19@01 x) (Seq_contains xs@15@01 (inv@18@01 x)))
    (= (inv@18@01 x) x))
  :pattern ((inv@18@01 x))
  :qid |pred-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const x@20@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@15@01 x@20@01))
(pop) ; 3
(declare-const $t@21@01 $PSF<pred>)
(declare-fun inv@22@01 ($Ref) $Ref)
(declare-fun img@23@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@20@01 $Ref) (x2@20@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@15@01 x1@20@01)
      (Seq_contains xs@15@01 x2@20@01)
      (= x1@20@01 x2@20@01))
    (= x1@20@01 x2@20@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@20@01 $Ref)) (!
  (=>
    (Seq_contains xs@15@01 x@20@01)
    (and (= (inv@22@01 x@20@01) x@20@01) (img@23@01 x@20@01)))
  :pattern ((Seq_contains xs@15@01 x@20@01))
  :pattern ((Seq_contains_trigger xs@15@01 x@20@01))
  :pattern ((Seq_contains_trigger xs@15@01 x@20@01))
  :pattern ((inv@22@01 x@20@01))
  :pattern ((img@23@01 x@20@01))
  :qid |quant-u-16160|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@23@01 x) (Seq_contains xs@15@01 (inv@22@01 x)))
    (= (inv@22@01 x) x))
  :pattern ((inv@22@01 x))
  :qid |pred-fctOfInv|)))
; Permissions are non-negative
(pop) ; 2
(push) ; 2
(declare-const x@24@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@15@01 x@24@01))
(pop) ; 3
(declare-fun inv@25@01 ($Ref) $Ref)
(declare-fun img@26@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@24@01 $Ref) (x2@24@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@15@01 x1@24@01)
      (Seq_contains xs@15@01 x2@24@01)
      (= x1@24@01 x2@24@01))
    (= x1@24@01 x2@24@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@24@01 $Ref)) (!
  (=>
    (Seq_contains xs@15@01 x@24@01)
    (and (= (inv@25@01 x@24@01) x@24@01) (img@26@01 x@24@01)))
  :pattern ((Seq_contains xs@15@01 x@24@01))
  :pattern ((Seq_contains_trigger xs@15@01 x@24@01))
  :pattern ((inv@25@01 x@24@01))
  :pattern ((img@26@01 x@24@01))
  :qid |pred-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@26@01 x) (Seq_contains xs@15@01 (inv@25@01 x)))
    (= (inv@25@01 x) x))
  :pattern ((inv@25@01 x))
  :qid |pred-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@27@01 ((x $Ref)) $Perm
  (ite
    (and (Seq_contains xs@15@01 (inv@25@01 x)) (img@26@01 x) (= x (inv@25@01 x)))
    ($Perm.min
      (ite
        (and (img@19@01 x) (Seq_contains xs@15@01 (inv@18@01 x)))
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@19@01 x) (Seq_contains xs@15@01 (inv@18@01 x)))
        $Perm.Write
        $Perm.No)
      (pTaken@27@01 x))
    $Perm.No)
  
  :qid |quant-u-16163|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (Seq_contains xs@15@01 (inv@25@01 x)) (img@26@01 x) (= x (inv@25@01 x)))
    (= (- $Perm.Write (pTaken@27@01 x)) $Perm.No))
  
  :qid |quant-u-16164|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m3 ----------
(declare-const xs@28@01 Seq<$Ref>)
(declare-const xs@29@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@30@01 $Snap)
(assert (= $t@30@01 ($Snap.combine ($Snap.first $t@30@01) ($Snap.second $t@30@01))))
(declare-const x@31@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@29@01 x@31@01))
(pop) ; 2
(declare-fun inv@32@01 ($Ref) $Ref)
(declare-fun img@33@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@31@01 $Ref) (x2@31@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@29@01 x1@31@01)
      (Seq_contains xs@29@01 x2@31@01)
      (= x1@31@01 x2@31@01))
    (= x1@31@01 x2@31@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@31@01 $Ref)) (!
  (=>
    (Seq_contains xs@29@01 x@31@01)
    (and (= (inv@32@01 x@31@01) x@31@01) (img@33@01 x@31@01)))
  :pattern ((Seq_contains xs@29@01 x@31@01))
  :pattern ((Seq_contains_trigger xs@29@01 x@31@01))
  :pattern ((Seq_contains_trigger xs@29@01 x@31@01))
  :pattern ((inv@32@01 x@31@01))
  :pattern ((img@33@01 x@31@01))
  :qid |quant-u-16166|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@33@01 r) (Seq_contains xs@29@01 (inv@32@01 r)))
    (= (inv@32@01 r) r))
  :pattern ((inv@32@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@31@01 $Ref)) (!
  (=> (Seq_contains xs@29@01 x@31@01) (not (= x@31@01 $Ref.null)))
  :pattern ((Seq_contains xs@29@01 x@31@01))
  :pattern ((Seq_contains_trigger xs@29@01 x@31@01))
  :pattern ((Seq_contains_trigger xs@29@01 x@31@01))
  :pattern ((inv@32@01 x@31@01))
  :pattern ((img@33@01 x@31@01))
  :qid |f-permImpliesNonNull|)))
(declare-const x@34@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@29@01 x@34@01))
(pop) ; 2
(declare-fun inv@35@01 ($Ref) $Ref)
(declare-fun img@36@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@34@01 $Ref) (x2@34@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@29@01 x1@34@01)
      (Seq_contains xs@29@01 x2@34@01)
      (= x1@34@01 x2@34@01))
    (= x1@34@01 x2@34@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@34@01 $Ref)) (!
  (=>
    (Seq_contains xs@29@01 x@34@01)
    (and (= (inv@35@01 x@34@01) x@34@01) (img@36@01 x@34@01)))
  :pattern ((Seq_contains xs@29@01 x@34@01))
  :pattern ((Seq_contains_trigger xs@29@01 x@34@01))
  :pattern ((Seq_contains_trigger xs@29@01 x@34@01))
  :pattern ((inv@35@01 x@34@01))
  :pattern ((img@36@01 x@34@01))
  :qid |quant-u-16168|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@36@01 r) (Seq_contains xs@29@01 (inv@35@01 r)))
    (= (inv@35@01 r) r))
  :pattern ((inv@35@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@34@01 $Ref)) (!
  (=> (Seq_contains xs@29@01 x@34@01) (not (= x@34@01 $Ref.null)))
  :pattern ((Seq_contains xs@29@01 x@34@01))
  :pattern ((Seq_contains_trigger xs@29@01 x@34@01))
  :pattern ((Seq_contains_trigger xs@29@01 x@34@01))
  :pattern ((inv@35@01 x@34@01))
  :pattern ((img@36@01 x@34@01))
  :qid |g-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@37@01 $Snap)
(assert (= $t@37@01 ($Snap.combine ($Snap.first $t@37@01) ($Snap.second $t@37@01))))
(declare-const x@38@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@29@01 x@38@01))
(pop) ; 3
(declare-fun inv@39@01 ($Ref) $Ref)
(declare-fun img@40@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@38@01 $Ref) (x2@38@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@29@01 x1@38@01)
      (Seq_contains xs@29@01 x2@38@01)
      (= x1@38@01 x2@38@01))
    (= x1@38@01 x2@38@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@38@01 $Ref)) (!
  (=>
    (Seq_contains xs@29@01 x@38@01)
    (and (= (inv@39@01 x@38@01) x@38@01) (img@40@01 x@38@01)))
  :pattern ((Seq_contains xs@29@01 x@38@01))
  :pattern ((Seq_contains_trigger xs@29@01 x@38@01))
  :pattern ((Seq_contains_trigger xs@29@01 x@38@01))
  :pattern ((inv@39@01 x@38@01))
  :pattern ((img@40@01 x@38@01))
  :qid |quant-u-16170|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (Seq_contains xs@29@01 (inv@39@01 r)))
    (= (inv@39@01 r) r))
  :pattern ((inv@39@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@38@01 $Ref)) (!
  (=> (Seq_contains xs@29@01 x@38@01) (not (= x@38@01 $Ref.null)))
  :pattern ((Seq_contains xs@29@01 x@38@01))
  :pattern ((Seq_contains_trigger xs@29@01 x@38@01))
  :pattern ((Seq_contains_trigger xs@29@01 x@38@01))
  :pattern ((inv@39@01 x@38@01))
  :pattern ((img@40@01 x@38@01))
  :qid |f-permImpliesNonNull|)))
(declare-const x@41@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@29@01 x@41@01))
(pop) ; 3
(declare-fun inv@42@01 ($Ref) $Ref)
(declare-fun img@43@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@41@01 $Ref) (x2@41@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@29@01 x1@41@01)
      (Seq_contains xs@29@01 x2@41@01)
      (= x1@41@01 x2@41@01))
    (= x1@41@01 x2@41@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@41@01 $Ref)) (!
  (=>
    (Seq_contains xs@29@01 x@41@01)
    (and (= (inv@42@01 x@41@01) x@41@01) (img@43@01 x@41@01)))
  :pattern ((Seq_contains xs@29@01 x@41@01))
  :pattern ((Seq_contains_trigger xs@29@01 x@41@01))
  :pattern ((Seq_contains_trigger xs@29@01 x@41@01))
  :pattern ((inv@42@01 x@41@01))
  :pattern ((img@43@01 x@41@01))
  :qid |quant-u-16172|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@43@01 r) (Seq_contains xs@29@01 (inv@42@01 r)))
    (= (inv@42@01 r) r))
  :pattern ((inv@42@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@41@01 $Ref)) (!
  (=> (Seq_contains xs@29@01 x@41@01) (not (= x@41@01 $Ref.null)))
  :pattern ((Seq_contains xs@29@01 x@41@01))
  :pattern ((Seq_contains_trigger xs@29@01 x@41@01))
  :pattern ((Seq_contains_trigger xs@29@01 x@41@01))
  :pattern ((inv@42@01 x@41@01))
  :pattern ((img@43@01 x@41@01))
  :qid |g-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
(declare-const x@44@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@29@01 x@44@01))
(pop) ; 3
(declare-fun inv@45@01 ($Ref) $Ref)
(declare-fun img@46@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@44@01 $Ref) (x2@44@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@29@01 x1@44@01)
      (Seq_contains xs@29@01 x2@44@01)
      (= x1@44@01 x2@44@01))
    (= x1@44@01 x2@44@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@44@01 $Ref)) (!
  (=>
    (Seq_contains xs@29@01 x@44@01)
    (and (= (inv@45@01 x@44@01) x@44@01) (img@46@01 x@44@01)))
  :pattern ((Seq_contains xs@29@01 x@44@01))
  :pattern ((Seq_contains_trigger xs@29@01 x@44@01))
  :pattern ((inv@45@01 x@44@01))
  :pattern ((img@46@01 x@44@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@46@01 r) (Seq_contains xs@29@01 (inv@45@01 r)))
    (= (inv@45@01 r) r))
  :pattern ((inv@45@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@47@01 ((r $Ref)) $Perm
  (ite
    (and (Seq_contains xs@29@01 (inv@45@01 r)) (img@46@01 r) (= r (inv@45@01 r)))
    ($Perm.min
      (ite
        (and (img@33@01 r) (Seq_contains xs@29@01 (inv@32@01 r)))
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
        (and (img@33@01 r) (Seq_contains xs@29@01 (inv@32@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@47@01 r))
    $Perm.No)
  
  :qid |quant-u-16175|))))
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
    (and (Seq_contains xs@29@01 (inv@45@01 r)) (img@46@01 r) (= r (inv@45@01 r)))
    (= (- $Perm.Write (pTaken@47@01 r)) $Perm.No))
  
  :qid |quant-u-16176|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@48@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@29@01 x@48@01))
(pop) ; 3
(declare-fun inv@49@01 ($Ref) $Ref)
(declare-fun img@50@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@48@01 $Ref) (x2@48@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@29@01 x1@48@01)
      (Seq_contains xs@29@01 x2@48@01)
      (= x1@48@01 x2@48@01))
    (= x1@48@01 x2@48@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@48@01 $Ref)) (!
  (=>
    (Seq_contains xs@29@01 x@48@01)
    (and (= (inv@49@01 x@48@01) x@48@01) (img@50@01 x@48@01)))
  :pattern ((Seq_contains xs@29@01 x@48@01))
  :pattern ((Seq_contains_trigger xs@29@01 x@48@01))
  :pattern ((inv@49@01 x@48@01))
  :pattern ((img@50@01 x@48@01))
  :qid |g-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@50@01 r) (Seq_contains xs@29@01 (inv@49@01 r)))
    (= (inv@49@01 r) r))
  :pattern ((inv@49@01 r))
  :qid |g-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@51@01 ((r $Ref)) $Perm
  (ite
    (and (Seq_contains xs@29@01 (inv@49@01 r)) (img@50@01 r) (= r (inv@49@01 r)))
    ($Perm.min
      (ite
        (and (img@36@01 r) (Seq_contains xs@29@01 (inv@35@01 r)))
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
        (and (img@36@01 r) (Seq_contains xs@29@01 (inv@35@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@51@01 r))
    $Perm.No)
  
  :qid |quant-u-16179|))))
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
    (and (Seq_contains xs@29@01 (inv@49@01 r)) (img@50@01 r) (= r (inv@49@01 r)))
    (= (- $Perm.Write (pTaken@51@01 r)) $Perm.No))
  
  :qid |quant-u-16180|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m4 ----------
(declare-const xs@52@01 Seq<$Ref>)
(declare-const xs@53@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@54@01 $Snap)
(assert (= $t@54@01 ($Snap.combine ($Snap.first $t@54@01) ($Snap.second $t@54@01))))
(declare-const x@55@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@53@01 x@55@01))
(pop) ; 2
(declare-fun inv@56@01 ($Ref) $Ref)
(declare-fun img@57@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@55@01 $Ref) (x2@55@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@53@01 x1@55@01)
      (Seq_contains xs@53@01 x2@55@01)
      (= x1@55@01 x2@55@01))
    (= x1@55@01 x2@55@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@55@01 $Ref)) (!
  (=>
    (Seq_contains xs@53@01 x@55@01)
    (and (= (inv@56@01 x@55@01) x@55@01) (img@57@01 x@55@01)))
  :pattern ((Seq_contains xs@53@01 x@55@01))
  :pattern ((Seq_contains_trigger xs@53@01 x@55@01))
  :pattern ((Seq_contains_trigger xs@53@01 x@55@01))
  :pattern ((inv@56@01 x@55@01))
  :pattern ((img@57@01 x@55@01))
  :qid |quant-u-16182|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@57@01 x) (Seq_contains xs@53@01 (inv@56@01 x)))
    (= (inv@56@01 x) x))
  :pattern ((inv@56@01 x))
  :qid |pred-fctOfInv|)))
; Permissions are non-negative
(declare-const x@58@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@53@01 x@58@01))
(pop) ; 2
(declare-fun inv@59@01 ($Ref) $Ref)
(declare-fun img@60@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@58@01 $Ref) (x2@58@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@53@01 x1@58@01)
      (Seq_contains xs@53@01 x2@58@01)
      (= x1@58@01 x2@58@01))
    (= x1@58@01 x2@58@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@58@01 $Ref)) (!
  (=>
    (Seq_contains xs@53@01 x@58@01)
    (and (= (inv@59@01 x@58@01) x@58@01) (img@60@01 x@58@01)))
  :pattern ((Seq_contains xs@53@01 x@58@01))
  :pattern ((Seq_contains_trigger xs@53@01 x@58@01))
  :pattern ((Seq_contains_trigger xs@53@01 x@58@01))
  :pattern ((inv@59@01 x@58@01))
  :pattern ((img@60@01 x@58@01))
  :qid |quant-u-16184|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Seq_contains xs@53@01 (inv@59@01 r)))
    (= (inv@59@01 r) r))
  :pattern ((inv@59@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@58@01 $Ref)) (!
  (=> (Seq_contains xs@53@01 x@58@01) (not (= x@58@01 $Ref.null)))
  :pattern ((Seq_contains xs@53@01 x@58@01))
  :pattern ((Seq_contains_trigger xs@53@01 x@58@01))
  :pattern ((Seq_contains_trigger xs@53@01 x@58@01))
  :pattern ((inv@59@01 x@58@01))
  :pattern ((img@60@01 x@58@01))
  :qid |g-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@61@01 $Snap)
(assert (= $t@61@01 ($Snap.combine ($Snap.first $t@61@01) ($Snap.second $t@61@01))))
(declare-const x@62@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@53@01 x@62@01))
(pop) ; 3
(declare-fun inv@63@01 ($Ref) $Ref)
(declare-fun img@64@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@62@01 $Ref) (x2@62@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@53@01 x1@62@01)
      (Seq_contains xs@53@01 x2@62@01)
      (= x1@62@01 x2@62@01))
    (= x1@62@01 x2@62@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@62@01 $Ref)) (!
  (=>
    (Seq_contains xs@53@01 x@62@01)
    (and (= (inv@63@01 x@62@01) x@62@01) (img@64@01 x@62@01)))
  :pattern ((Seq_contains xs@53@01 x@62@01))
  :pattern ((Seq_contains_trigger xs@53@01 x@62@01))
  :pattern ((Seq_contains_trigger xs@53@01 x@62@01))
  :pattern ((inv@63@01 x@62@01))
  :pattern ((img@64@01 x@62@01))
  :qid |quant-u-16186|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@64@01 x) (Seq_contains xs@53@01 (inv@63@01 x)))
    (= (inv@63@01 x) x))
  :pattern ((inv@63@01 x))
  :qid |pred-fctOfInv|)))
; Permissions are non-negative
(declare-const x@65@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@53@01 x@65@01))
(pop) ; 3
(declare-fun inv@66@01 ($Ref) $Ref)
(declare-fun img@67@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@65@01 $Ref) (x2@65@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@53@01 x1@65@01)
      (Seq_contains xs@53@01 x2@65@01)
      (= x1@65@01 x2@65@01))
    (= x1@65@01 x2@65@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@65@01 $Ref)) (!
  (=>
    (Seq_contains xs@53@01 x@65@01)
    (and (= (inv@66@01 x@65@01) x@65@01) (img@67@01 x@65@01)))
  :pattern ((Seq_contains xs@53@01 x@65@01))
  :pattern ((Seq_contains_trigger xs@53@01 x@65@01))
  :pattern ((Seq_contains_trigger xs@53@01 x@65@01))
  :pattern ((inv@66@01 x@65@01))
  :pattern ((img@67@01 x@65@01))
  :qid |quant-u-16188|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@67@01 r) (Seq_contains xs@53@01 (inv@66@01 r)))
    (= (inv@66@01 r) r))
  :pattern ((inv@66@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@65@01 $Ref)) (!
  (=> (Seq_contains xs@53@01 x@65@01) (not (= x@65@01 $Ref.null)))
  :pattern ((Seq_contains xs@53@01 x@65@01))
  :pattern ((Seq_contains_trigger xs@53@01 x@65@01))
  :pattern ((Seq_contains_trigger xs@53@01 x@65@01))
  :pattern ((inv@66@01 x@65@01))
  :pattern ((img@67@01 x@65@01))
  :qid |g-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
(declare-const x@68@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@53@01 x@68@01))
(pop) ; 3
(declare-fun inv@69@01 ($Ref) $Ref)
(declare-fun img@70@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@68@01 $Ref) (x2@68@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@53@01 x1@68@01)
      (Seq_contains xs@53@01 x2@68@01)
      (= x1@68@01 x2@68@01))
    (= x1@68@01 x2@68@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@68@01 $Ref)) (!
  (=>
    (Seq_contains xs@53@01 x@68@01)
    (and (= (inv@69@01 x@68@01) x@68@01) (img@70@01 x@68@01)))
  :pattern ((Seq_contains xs@53@01 x@68@01))
  :pattern ((Seq_contains_trigger xs@53@01 x@68@01))
  :pattern ((inv@69@01 x@68@01))
  :pattern ((img@70@01 x@68@01))
  :qid |pred-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@70@01 x) (Seq_contains xs@53@01 (inv@69@01 x)))
    (= (inv@69@01 x) x))
  :pattern ((inv@69@01 x))
  :qid |pred-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@71@01 ((x $Ref)) $Perm
  (ite
    (and (Seq_contains xs@53@01 (inv@69@01 x)) (img@70@01 x) (= x (inv@69@01 x)))
    ($Perm.min
      (ite
        (and (img@57@01 x) (Seq_contains xs@53@01 (inv@56@01 x)))
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@57@01 x) (Seq_contains xs@53@01 (inv@56@01 x)))
        $Perm.Write
        $Perm.No)
      (pTaken@71@01 x))
    $Perm.No)
  
  :qid |quant-u-16191|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (Seq_contains xs@53@01 (inv@69@01 x)) (img@70@01 x) (= x (inv@69@01 x)))
    (= (- $Perm.Write (pTaken@71@01 x)) $Perm.No))
  
  :qid |quant-u-16192|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@72@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@53@01 x@72@01))
(pop) ; 3
(declare-fun inv@73@01 ($Ref) $Ref)
(declare-fun img@74@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@72@01 $Ref) (x2@72@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@53@01 x1@72@01)
      (Seq_contains xs@53@01 x2@72@01)
      (= x1@72@01 x2@72@01))
    (= x1@72@01 x2@72@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@72@01 $Ref)) (!
  (=>
    (Seq_contains xs@53@01 x@72@01)
    (and (= (inv@73@01 x@72@01) x@72@01) (img@74@01 x@72@01)))
  :pattern ((Seq_contains xs@53@01 x@72@01))
  :pattern ((Seq_contains_trigger xs@53@01 x@72@01))
  :pattern ((inv@73@01 x@72@01))
  :pattern ((img@74@01 x@72@01))
  :qid |g-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Seq_contains xs@53@01 (inv@73@01 r)))
    (= (inv@73@01 r) r))
  :pattern ((inv@73@01 r))
  :qid |g-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@75@01 ((r $Ref)) $Perm
  (ite
    (and (Seq_contains xs@53@01 (inv@73@01 r)) (img@74@01 r) (= r (inv@73@01 r)))
    ($Perm.min
      (ite
        (and (img@60@01 r) (Seq_contains xs@53@01 (inv@59@01 r)))
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
        (and (img@60@01 r) (Seq_contains xs@53@01 (inv@59@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@75@01 r))
    $Perm.No)
  
  :qid |quant-u-16195|))))
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
    (and (Seq_contains xs@53@01 (inv@73@01 r)) (img@74@01 r) (= r (inv@73@01 r)))
    (= (- $Perm.Write (pTaken@75@01 r)) $Perm.No))
  
  :qid |quant-u-16196|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m5 ----------
(declare-const xs@76@01 Seq<$Ref>)
(declare-const xs@77@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@78@01 $Snap)
(assert (= $t@78@01 ($Snap.combine ($Snap.first $t@78@01) ($Snap.second $t@78@01))))
(declare-const x@79@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@77@01 x@79@01))
(pop) ; 2
(declare-fun inv@80@01 ($Ref) $Ref)
(declare-fun img@81@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@79@01 $Ref) (x2@79@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@77@01 x1@79@01)
      (Seq_contains xs@77@01 x2@79@01)
      (= x1@79@01 x2@79@01))
    (= x1@79@01 x2@79@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@79@01 $Ref)) (!
  (=>
    (Seq_contains xs@77@01 x@79@01)
    (and (= (inv@80@01 x@79@01) x@79@01) (img@81@01 x@79@01)))
  :pattern ((Seq_contains xs@77@01 x@79@01))
  :pattern ((Seq_contains_trigger xs@77@01 x@79@01))
  :pattern ((Seq_contains_trigger xs@77@01 x@79@01))
  :pattern ((inv@80@01 x@79@01))
  :pattern ((img@81@01 x@79@01))
  :qid |quant-u-16198|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@81@01 r) (Seq_contains xs@77@01 (inv@80@01 r)))
    (= (inv@80@01 r) r))
  :pattern ((inv@80@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@79@01 $Ref)) (!
  (=> (Seq_contains xs@77@01 x@79@01) (not (= x@79@01 $Ref.null)))
  :pattern ((Seq_contains xs@77@01 x@79@01))
  :pattern ((Seq_contains_trigger xs@77@01 x@79@01))
  :pattern ((Seq_contains_trigger xs@77@01 x@79@01))
  :pattern ((inv@80@01 x@79@01))
  :pattern ((img@81@01 x@79@01))
  :qid |g-permImpliesNonNull|)))
(declare-const x@82@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@77@01 x@82@01))
(pop) ; 2
(declare-fun inv@83@01 ($Ref) $Ref)
(declare-fun img@84@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@82@01 $Ref) (x2@82@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@77@01 x1@82@01)
      (Seq_contains xs@77@01 x2@82@01)
      (= x1@82@01 x2@82@01))
    (= x1@82@01 x2@82@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@82@01 $Ref)) (!
  (=>
    (Seq_contains xs@77@01 x@82@01)
    (and (= (inv@83@01 x@82@01) x@82@01) (img@84@01 x@82@01)))
  :pattern ((Seq_contains xs@77@01 x@82@01))
  :pattern ((Seq_contains_trigger xs@77@01 x@82@01))
  :pattern ((Seq_contains_trigger xs@77@01 x@82@01))
  :pattern ((inv@83@01 x@82@01))
  :pattern ((img@84@01 x@82@01))
  :qid |quant-u-16200|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@84@01 x) (Seq_contains xs@77@01 (inv@83@01 x)))
    (= (inv@83@01 x) x))
  :pattern ((inv@83@01 x))
  :qid |pred-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@85@01 $Snap)
(assert (= $t@85@01 ($Snap.combine ($Snap.first $t@85@01) ($Snap.second $t@85@01))))
(declare-const x@86@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@77@01 x@86@01))
(pop) ; 3
(declare-fun inv@87@01 ($Ref) $Ref)
(declare-fun img@88@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@86@01 $Ref) (x2@86@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@77@01 x1@86@01)
      (Seq_contains xs@77@01 x2@86@01)
      (= x1@86@01 x2@86@01))
    (= x1@86@01 x2@86@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@86@01 $Ref)) (!
  (=>
    (Seq_contains xs@77@01 x@86@01)
    (and (= (inv@87@01 x@86@01) x@86@01) (img@88@01 x@86@01)))
  :pattern ((Seq_contains xs@77@01 x@86@01))
  :pattern ((Seq_contains_trigger xs@77@01 x@86@01))
  :pattern ((Seq_contains_trigger xs@77@01 x@86@01))
  :pattern ((inv@87@01 x@86@01))
  :pattern ((img@88@01 x@86@01))
  :qid |quant-u-16202|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@88@01 r) (Seq_contains xs@77@01 (inv@87@01 r)))
    (= (inv@87@01 r) r))
  :pattern ((inv@87@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@86@01 $Ref)) (!
  (=> (Seq_contains xs@77@01 x@86@01) (not (= x@86@01 $Ref.null)))
  :pattern ((Seq_contains xs@77@01 x@86@01))
  :pattern ((Seq_contains_trigger xs@77@01 x@86@01))
  :pattern ((Seq_contains_trigger xs@77@01 x@86@01))
  :pattern ((inv@87@01 x@86@01))
  :pattern ((img@88@01 x@86@01))
  :qid |g-permImpliesNonNull|)))
(declare-const x@89@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@77@01 x@89@01))
(pop) ; 3
(declare-fun inv@90@01 ($Ref) $Ref)
(declare-fun img@91@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@89@01 $Ref) (x2@89@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@77@01 x1@89@01)
      (Seq_contains xs@77@01 x2@89@01)
      (= x1@89@01 x2@89@01))
    (= x1@89@01 x2@89@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@89@01 $Ref)) (!
  (=>
    (Seq_contains xs@77@01 x@89@01)
    (and (= (inv@90@01 x@89@01) x@89@01) (img@91@01 x@89@01)))
  :pattern ((Seq_contains xs@77@01 x@89@01))
  :pattern ((Seq_contains_trigger xs@77@01 x@89@01))
  :pattern ((Seq_contains_trigger xs@77@01 x@89@01))
  :pattern ((inv@90@01 x@89@01))
  :pattern ((img@91@01 x@89@01))
  :qid |quant-u-16204|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@91@01 x) (Seq_contains xs@77@01 (inv@90@01 x)))
    (= (inv@90@01 x) x))
  :pattern ((inv@90@01 x))
  :qid |pred-fctOfInv|)))
; Permissions are non-negative
(pop) ; 2
(push) ; 2
(declare-const x@92@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@77@01 x@92@01))
(pop) ; 3
(declare-fun inv@93@01 ($Ref) $Ref)
(declare-fun img@94@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@92@01 $Ref) (x2@92@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@77@01 x1@92@01)
      (Seq_contains xs@77@01 x2@92@01)
      (= x1@92@01 x2@92@01))
    (= x1@92@01 x2@92@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@92@01 $Ref)) (!
  (=>
    (Seq_contains xs@77@01 x@92@01)
    (and (= (inv@93@01 x@92@01) x@92@01) (img@94@01 x@92@01)))
  :pattern ((Seq_contains xs@77@01 x@92@01))
  :pattern ((Seq_contains_trigger xs@77@01 x@92@01))
  :pattern ((inv@93@01 x@92@01))
  :pattern ((img@94@01 x@92@01))
  :qid |g-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@94@01 r) (Seq_contains xs@77@01 (inv@93@01 r)))
    (= (inv@93@01 r) r))
  :pattern ((inv@93@01 r))
  :qid |g-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@95@01 ((r $Ref)) $Perm
  (ite
    (and (Seq_contains xs@77@01 (inv@93@01 r)) (img@94@01 r) (= r (inv@93@01 r)))
    ($Perm.min
      (ite
        (and (img@81@01 r) (Seq_contains xs@77@01 (inv@80@01 r)))
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
        (and (img@81@01 r) (Seq_contains xs@77@01 (inv@80@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@95@01 r))
    $Perm.No)
  
  :qid |quant-u-16207|))))
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
    (and (Seq_contains xs@77@01 (inv@93@01 r)) (img@94@01 r) (= r (inv@93@01 r)))
    (= (- $Perm.Write (pTaken@95@01 r)) $Perm.No))
  
  :qid |quant-u-16208|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@96@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@77@01 x@96@01))
(pop) ; 3
(declare-fun inv@97@01 ($Ref) $Ref)
(declare-fun img@98@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@96@01 $Ref) (x2@96@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@77@01 x1@96@01)
      (Seq_contains xs@77@01 x2@96@01)
      (= x1@96@01 x2@96@01))
    (= x1@96@01 x2@96@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@96@01 $Ref)) (!
  (=>
    (Seq_contains xs@77@01 x@96@01)
    (and (= (inv@97@01 x@96@01) x@96@01) (img@98@01 x@96@01)))
  :pattern ((Seq_contains xs@77@01 x@96@01))
  :pattern ((Seq_contains_trigger xs@77@01 x@96@01))
  :pattern ((inv@97@01 x@96@01))
  :pattern ((img@98@01 x@96@01))
  :qid |pred-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@98@01 x) (Seq_contains xs@77@01 (inv@97@01 x)))
    (= (inv@97@01 x) x))
  :pattern ((inv@97@01 x))
  :qid |pred-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@99@01 ((x $Ref)) $Perm
  (ite
    (and (Seq_contains xs@77@01 (inv@97@01 x)) (img@98@01 x) (= x (inv@97@01 x)))
    ($Perm.min
      (ite
        (and (img@84@01 x) (Seq_contains xs@77@01 (inv@83@01 x)))
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@84@01 x) (Seq_contains xs@77@01 (inv@83@01 x)))
        $Perm.Write
        $Perm.No)
      (pTaken@99@01 x))
    $Perm.No)
  
  :qid |quant-u-16211|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (Seq_contains xs@77@01 (inv@97@01 x)) (img@98@01 x) (= x (inv@97@01 x)))
    (= (- $Perm.Write (pTaken@99@01 x)) $Perm.No))
  
  :qid |quant-u-16212|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m6 ----------
(declare-const xs@100@01 Seq<$Ref>)
(declare-const xs@101@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@102@01 $Snap)
(assert (= $t@102@01 ($Snap.combine ($Snap.first $t@102@01) ($Snap.second $t@102@01))))
(declare-const x@103@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@101@01 x@103@01))
(pop) ; 2
(declare-fun inv@104@01 ($Ref) $Ref)
(declare-fun img@105@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@103@01 $Ref) (x2@103@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@101@01 x1@103@01)
      (Seq_contains xs@101@01 x2@103@01)
      (= x1@103@01 x2@103@01))
    (= x1@103@01 x2@103@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@103@01 $Ref)) (!
  (=>
    (Seq_contains xs@101@01 x@103@01)
    (and (= (inv@104@01 x@103@01) x@103@01) (img@105@01 x@103@01)))
  :pattern ((Seq_contains xs@101@01 x@103@01))
  :pattern ((Seq_contains_trigger xs@101@01 x@103@01))
  :pattern ((Seq_contains_trigger xs@101@01 x@103@01))
  :pattern ((inv@104@01 x@103@01))
  :pattern ((img@105@01 x@103@01))
  :qid |quant-u-16214|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@105@01 x) (Seq_contains xs@101@01 (inv@104@01 x)))
    (= (inv@104@01 x) x))
  :pattern ((inv@104@01 x))
  :qid |pred-fctOfInv|)))
; Permissions are non-negative
(declare-const x@106@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@101@01 x@106@01))
(pop) ; 2
(declare-fun inv@107@01 ($Ref) $Ref)
(declare-fun img@108@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@106@01 $Ref) (x2@106@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@101@01 x1@106@01)
      (Seq_contains xs@101@01 x2@106@01)
      (= x1@106@01 x2@106@01))
    (= x1@106@01 x2@106@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@106@01 $Ref)) (!
  (=>
    (Seq_contains xs@101@01 x@106@01)
    (and (= (inv@107@01 x@106@01) x@106@01) (img@108@01 x@106@01)))
  :pattern ((Seq_contains xs@101@01 x@106@01))
  :pattern ((Seq_contains_trigger xs@101@01 x@106@01))
  :pattern ((Seq_contains_trigger xs@101@01 x@106@01))
  :pattern ((inv@107@01 x@106@01))
  :pattern ((img@108@01 x@106@01))
  :qid |quant-u-16216|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@108@01 x) (Seq_contains xs@101@01 (inv@107@01 x)))
    (= (inv@107@01 x) x))
  :pattern ((inv@107@01 x))
  :qid |pred-fctOfInv|)))
; Permissions are non-negative
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (and
    (= x@106@01 x@103@01)
    (=
      (and (img@108@01 x) (Seq_contains xs@101@01 (inv@107@01 x)))
      (and (img@105@01 x) (Seq_contains xs@101@01 (inv@104@01 x)))))
  
  :qid |quant-u-16217|))))
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
(declare-const $t@109@01 $Snap)
(assert (= $t@109@01 ($Snap.combine ($Snap.first $t@109@01) ($Snap.second $t@109@01))))
(declare-const x@110@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@101@01 x@110@01))
(pop) ; 3
(declare-fun inv@111@01 ($Ref) $Ref)
(declare-fun img@112@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@110@01 $Ref) (x2@110@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@101@01 x1@110@01)
      (Seq_contains xs@101@01 x2@110@01)
      (= x1@110@01 x2@110@01))
    (= x1@110@01 x2@110@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@110@01 $Ref)) (!
  (=>
    (Seq_contains xs@101@01 x@110@01)
    (and (= (inv@111@01 x@110@01) x@110@01) (img@112@01 x@110@01)))
  :pattern ((Seq_contains xs@101@01 x@110@01))
  :pattern ((Seq_contains_trigger xs@101@01 x@110@01))
  :pattern ((Seq_contains_trigger xs@101@01 x@110@01))
  :pattern ((inv@111@01 x@110@01))
  :pattern ((img@112@01 x@110@01))
  :qid |quant-u-16219|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@112@01 x) (Seq_contains xs@101@01 (inv@111@01 x)))
    (= (inv@111@01 x) x))
  :pattern ((inv@111@01 x))
  :qid |pred-fctOfInv|)))
; Permissions are non-negative
(declare-const x@113@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@101@01 x@113@01))
(pop) ; 3
(declare-fun inv@114@01 ($Ref) $Ref)
(declare-fun img@115@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@113@01 $Ref) (x2@113@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@101@01 x1@113@01)
      (Seq_contains xs@101@01 x2@113@01)
      (= x1@113@01 x2@113@01))
    (= x1@113@01 x2@113@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@113@01 $Ref)) (!
  (=>
    (Seq_contains xs@101@01 x@113@01)
    (and (= (inv@114@01 x@113@01) x@113@01) (img@115@01 x@113@01)))
  :pattern ((Seq_contains xs@101@01 x@113@01))
  :pattern ((Seq_contains_trigger xs@101@01 x@113@01))
  :pattern ((Seq_contains_trigger xs@101@01 x@113@01))
  :pattern ((inv@114@01 x@113@01))
  :pattern ((img@115@01 x@113@01))
  :qid |quant-u-16221|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@115@01 x) (Seq_contains xs@101@01 (inv@114@01 x)))
    (= (inv@114@01 x) x))
  :pattern ((inv@114@01 x))
  :qid |pred-fctOfInv|)))
; Permissions are non-negative
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (and
    (= x@113@01 x@110@01)
    (=
      (and (img@115@01 x) (Seq_contains xs@101@01 (inv@114@01 x)))
      (and (img@112@01 x) (Seq_contains xs@101@01 (inv@111@01 x)))))
  
  :qid |quant-u-16222|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
(declare-const x@116@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@101@01 x@116@01))
(pop) ; 3
(declare-fun inv@117@01 ($Ref) $Ref)
(declare-fun img@118@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@116@01 $Ref) (x2@116@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@101@01 x1@116@01)
      (Seq_contains xs@101@01 x2@116@01)
      (= x1@116@01 x2@116@01))
    (= x1@116@01 x2@116@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@116@01 $Ref)) (!
  (=>
    (Seq_contains xs@101@01 x@116@01)
    (and (= (inv@117@01 x@116@01) x@116@01) (img@118@01 x@116@01)))
  :pattern ((Seq_contains xs@101@01 x@116@01))
  :pattern ((Seq_contains_trigger xs@101@01 x@116@01))
  :pattern ((inv@117@01 x@116@01))
  :pattern ((img@118@01 x@116@01))
  :qid |pred-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@118@01 x) (Seq_contains xs@101@01 (inv@117@01 x)))
    (= (inv@117@01 x) x))
  :pattern ((inv@117@01 x))
  :qid |pred-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@119@01 ((x $Ref)) $Perm
  (ite
    (and
      (Seq_contains xs@101@01 (inv@117@01 x))
      (img@118@01 x)
      (= x (inv@117@01 x)))
    ($Perm.min
      (ite
        (and (img@105@01 x) (Seq_contains xs@101@01 (inv@104@01 x)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@120@01 ((x $Ref)) $Perm
  (ite
    (and
      (Seq_contains xs@101@01 (inv@117@01 x))
      (img@118@01 x)
      (= x (inv@117@01 x)))
    ($Perm.min
      (ite
        (and (img@108@01 x) (Seq_contains xs@101@01 (inv@107@01 x)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@119@01 x)))
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@105@01 x) (Seq_contains xs@101@01 (inv@104@01 x)))
        $Perm.Write
        $Perm.No)
      (pTaken@119@01 x))
    $Perm.No)
  
  :qid |quant-u-16225|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and
      (Seq_contains xs@101@01 (inv@117@01 x))
      (img@118@01 x)
      (= x (inv@117@01 x)))
    (= (- $Perm.Write (pTaken@119@01 x)) $Perm.No))
  
  :qid |quant-u-16226|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@121@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@101@01 x@121@01))
(pop) ; 3
(declare-fun inv@122@01 ($Ref) $Ref)
(declare-fun img@123@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@121@01 $Ref) (x2@121@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@101@01 x1@121@01)
      (Seq_contains xs@101@01 x2@121@01)
      (= x1@121@01 x2@121@01))
    (= x1@121@01 x2@121@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@121@01 $Ref)) (!
  (=>
    (Seq_contains xs@101@01 x@121@01)
    (and (= (inv@122@01 x@121@01) x@121@01) (img@123@01 x@121@01)))
  :pattern ((Seq_contains xs@101@01 x@121@01))
  :pattern ((Seq_contains_trigger xs@101@01 x@121@01))
  :pattern ((inv@122@01 x@121@01))
  :pattern ((img@123@01 x@121@01))
  :qid |pred-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@123@01 x) (Seq_contains xs@101@01 (inv@122@01 x)))
    (= (inv@122@01 x) x))
  :pattern ((inv@122@01 x))
  :qid |pred-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@124@01 ((x $Ref)) $Perm
  (ite
    (and
      (Seq_contains xs@101@01 (inv@122@01 x))
      (img@123@01 x)
      (= x (inv@122@01 x)))
    ($Perm.min
      (ite
        (and (img@108@01 x) (Seq_contains xs@101@01 (inv@107@01 x)))
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@108@01 x) (Seq_contains xs@101@01 (inv@107@01 x)))
        $Perm.Write
        $Perm.No)
      (pTaken@124@01 x))
    $Perm.No)
  
  :qid |quant-u-16229|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and
      (Seq_contains xs@101@01 (inv@122@01 x))
      (img@123@01 x)
      (= x (inv@122@01 x)))
    (= (- $Perm.Write (pTaken@124@01 x)) $Perm.No))
  
  :qid |quant-u-16230|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m7 ----------
(declare-const xs@125@01 Seq<$Ref>)
(declare-const xs@126@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@127@01 $Snap)
(assert (= $t@127@01 ($Snap.combine ($Snap.first $t@127@01) ($Snap.second $t@127@01))))
(declare-const x@128@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@126@01 x@128@01))
(pop) ; 2
(declare-fun inv@129@01 ($Ref) $Ref)
(declare-fun img@130@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@128@01 $Ref) (x2@128@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@126@01 x1@128@01)
      (Seq_contains xs@126@01 x2@128@01)
      (= x1@128@01 x2@128@01))
    (= x1@128@01 x2@128@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@128@01 $Ref)) (!
  (=>
    (Seq_contains xs@126@01 x@128@01)
    (and (= (inv@129@01 x@128@01) x@128@01) (img@130@01 x@128@01)))
  :pattern ((Seq_contains xs@126@01 x@128@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@128@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@128@01))
  :pattern ((inv@129@01 x@128@01))
  :pattern ((img@130@01 x@128@01))
  :qid |quant-u-16232|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@130@01 r) (Seq_contains xs@126@01 (inv@129@01 r)))
    (= (inv@129@01 r) r))
  :pattern ((inv@129@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@128@01 $Ref)) (!
  (=> (Seq_contains xs@126@01 x@128@01) (not (= x@128@01 $Ref.null)))
  :pattern ((Seq_contains xs@126@01 x@128@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@128@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@128@01))
  :pattern ((inv@129@01 x@128@01))
  :pattern ((img@130@01 x@128@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@127@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@127@01))
    ($Snap.second ($Snap.second $t@127@01)))))
(declare-const x@131@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@126@01 x@131@01))
(pop) ; 2
(declare-fun inv@132@01 ($Ref) $Ref)
(declare-fun img@133@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@131@01 $Ref) (x2@131@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@126@01 x1@131@01)
      (Seq_contains xs@126@01 x2@131@01)
      (= x1@131@01 x2@131@01))
    (= x1@131@01 x2@131@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@131@01 $Ref)) (!
  (=>
    (Seq_contains xs@126@01 x@131@01)
    (and (= (inv@132@01 x@131@01) x@131@01) (img@133@01 x@131@01)))
  :pattern ((Seq_contains xs@126@01 x@131@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@131@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@131@01))
  :pattern ((inv@132@01 x@131@01))
  :pattern ((img@133@01 x@131@01))
  :qid |quant-u-16234|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@133@01 r) (Seq_contains xs@126@01 (inv@132@01 r)))
    (= (inv@132@01 r) r))
  :pattern ((inv@132@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@131@01 $Ref)) (!
  (=> (Seq_contains xs@126@01 x@131@01) (not (= x@131@01 $Ref.null)))
  :pattern ((Seq_contains xs@126@01 x@131@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@131@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@131@01))
  :pattern ((inv@132@01 x@131@01))
  :pattern ((img@133@01 x@131@01))
  :qid |g-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@127@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@127@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
(declare-const x@134@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@126@01 x@134@01))
(pop) ; 2
(declare-fun inv@135@01 ($Ref) $Ref)
(declare-fun img@136@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@134@01 $Ref) (x2@134@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@126@01 x1@134@01)
      (Seq_contains xs@126@01 x2@134@01)
      (= x1@134@01 x2@134@01))
    (= x1@134@01 x2@134@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@134@01 $Ref)) (!
  (=>
    (Seq_contains xs@126@01 x@134@01)
    (and (= (inv@135@01 x@134@01) x@134@01) (img@136@01 x@134@01)))
  :pattern ((Seq_contains xs@126@01 x@134@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@134@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@134@01))
  :pattern ((inv@135@01 x@134@01))
  :pattern ((img@136@01 x@134@01))
  :qid |quant-u-16236|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@136@01 x) (Seq_contains xs@126@01 (inv@135@01 x)))
    (= (inv@135@01 x) x))
  :pattern ((inv@135@01 x))
  :qid |pred-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@127@01))) $Snap.unit))
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0)
(declare-const x@137@01 $Ref)
(push) ; 2
; [eval] (x in xs) ==> x.f > 0
; [eval] (x in xs)
(push) ; 3
; [then-branch: 0 | x@137@01 in xs@126@01 | live]
; [else-branch: 0 | !(x@137@01 in xs@126@01) | live]
(push) ; 4
; [then-branch: 0 | x@137@01 in xs@126@01]
(assert (Seq_contains xs@126@01 x@137@01))
; [eval] x.f > 0
(push) ; 5
(assert (not (and (img@130@01 x@137@01) (Seq_contains xs@126@01 (inv@129@01 x@137@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 0 | !(x@137@01 in xs@126@01)]
(assert (not (Seq_contains xs@126@01 x@137@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (Seq_contains xs@126@01 x@137@01)) (Seq_contains xs@126@01 x@137@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@137@01 $Ref)) (!
  (or (not (Seq_contains xs@126@01 x@137@01)) (Seq_contains xs@126@01 x@137@01))
  :pattern ((Seq_contains xs@126@01 x@137@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@137@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/forall.vpr@43@10@43@45-aux|)))
(assert (forall ((x@137@01 $Ref)) (!
  (or (not (Seq_contains xs@126@01 x@137@01)) (Seq_contains xs@126@01 x@137@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@137@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/forall.vpr@43@10@43@45-aux|)))
(assert (forall ((x@137@01 $Ref)) (!
  (=>
    (Seq_contains xs@126@01 x@137@01)
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@127@01)) x@137@01)
      0))
  :pattern ((Seq_contains xs@126@01 x@137@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@137@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/forall.vpr@43@10@43@45|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@138@01 $Snap)
(assert (= $t@138@01 ($Snap.combine ($Snap.first $t@138@01) ($Snap.second $t@138@01))))
(declare-const x@139@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@126@01 x@139@01))
(pop) ; 3
(declare-fun inv@140@01 ($Ref) $Ref)
(declare-fun img@141@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@139@01 $Ref) (x2@139@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@126@01 x1@139@01)
      (Seq_contains xs@126@01 x2@139@01)
      (= x1@139@01 x2@139@01))
    (= x1@139@01 x2@139@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@139@01 $Ref)) (!
  (=>
    (Seq_contains xs@126@01 x@139@01)
    (and (= (inv@140@01 x@139@01) x@139@01) (img@141@01 x@139@01)))
  :pattern ((Seq_contains xs@126@01 x@139@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@139@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@139@01))
  :pattern ((inv@140@01 x@139@01))
  :pattern ((img@141@01 x@139@01))
  :qid |quant-u-16238|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@141@01 r) (Seq_contains xs@126@01 (inv@140@01 r)))
    (= (inv@140@01 r) r))
  :pattern ((inv@140@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@139@01 $Ref)) (!
  (=> (Seq_contains xs@126@01 x@139@01) (not (= x@139@01 $Ref.null)))
  :pattern ((Seq_contains xs@126@01 x@139@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@139@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@139@01))
  :pattern ((inv@140@01 x@139@01))
  :pattern ((img@141@01 x@139@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@138@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@138@01))
    ($Snap.second ($Snap.second $t@138@01)))))
(declare-const x@142@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@126@01 x@142@01))
(pop) ; 3
(declare-fun inv@143@01 ($Ref) $Ref)
(declare-fun img@144@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@142@01 $Ref) (x2@142@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@126@01 x1@142@01)
      (Seq_contains xs@126@01 x2@142@01)
      (= x1@142@01 x2@142@01))
    (= x1@142@01 x2@142@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@142@01 $Ref)) (!
  (=>
    (Seq_contains xs@126@01 x@142@01)
    (and (= (inv@143@01 x@142@01) x@142@01) (img@144@01 x@142@01)))
  :pattern ((Seq_contains xs@126@01 x@142@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@142@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@142@01))
  :pattern ((inv@143@01 x@142@01))
  :pattern ((img@144@01 x@142@01))
  :qid |quant-u-16240|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@144@01 r) (Seq_contains xs@126@01 (inv@143@01 r)))
    (= (inv@143@01 r) r))
  :pattern ((inv@143@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@142@01 $Ref)) (!
  (=> (Seq_contains xs@126@01 x@142@01) (not (= x@142@01 $Ref.null)))
  :pattern ((Seq_contains xs@126@01 x@142@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@142@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@142@01))
  :pattern ((inv@143@01 x@142@01))
  :pattern ((img@144@01 x@142@01))
  :qid |g-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@138@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@138@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))
(declare-const x@145@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@126@01 x@145@01))
(pop) ; 3
(declare-fun inv@146@01 ($Ref) $Ref)
(declare-fun img@147@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@145@01 $Ref) (x2@145@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@126@01 x1@145@01)
      (Seq_contains xs@126@01 x2@145@01)
      (= x1@145@01 x2@145@01))
    (= x1@145@01 x2@145@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@145@01 $Ref)) (!
  (=>
    (Seq_contains xs@126@01 x@145@01)
    (and (= (inv@146@01 x@145@01) x@145@01) (img@147@01 x@145@01)))
  :pattern ((Seq_contains xs@126@01 x@145@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@145@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@145@01))
  :pattern ((inv@146@01 x@145@01))
  :pattern ((img@147@01 x@145@01))
  :qid |quant-u-16242|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@147@01 x) (Seq_contains xs@126@01 (inv@146@01 x)))
    (= (inv@146@01 x) x))
  :pattern ((inv@146@01 x))
  :qid |pred-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@138@01))) $Snap.unit))
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0)
(declare-const x@148@01 $Ref)
(push) ; 3
; [eval] (x in xs) ==> x.f > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 1 | x@148@01 in xs@126@01 | live]
; [else-branch: 1 | !(x@148@01 in xs@126@01) | live]
(push) ; 5
; [then-branch: 1 | x@148@01 in xs@126@01]
(assert (Seq_contains xs@126@01 x@148@01))
; [eval] x.f > 0
(push) ; 6
(assert (not (and (img@141@01 x@148@01) (Seq_contains xs@126@01 (inv@140@01 x@148@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 1 | !(x@148@01 in xs@126@01)]
(assert (not (Seq_contains xs@126@01 x@148@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Seq_contains xs@126@01 x@148@01)) (Seq_contains xs@126@01 x@148@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@148@01 $Ref)) (!
  (or (not (Seq_contains xs@126@01 x@148@01)) (Seq_contains xs@126@01 x@148@01))
  :pattern ((Seq_contains xs@126@01 x@148@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@148@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/forall.vpr@45@10@45@45-aux|)))
(assert (forall ((x@148@01 $Ref)) (!
  (or (not (Seq_contains xs@126@01 x@148@01)) (Seq_contains xs@126@01 x@148@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@148@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/forall.vpr@45@10@45@45-aux|)))
(assert (forall ((x@148@01 $Ref)) (!
  (=>
    (Seq_contains xs@126@01 x@148@01)
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@138@01)) x@148@01)
      0))
  :pattern ((Seq_contains xs@126@01 x@148@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@148@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/forall.vpr@45@10@45@45|)))
(pop) ; 2
(push) ; 2
(declare-const x@149@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@126@01 x@149@01))
(pop) ; 3
(declare-fun inv@150@01 ($Ref) $Ref)
(declare-fun img@151@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@149@01 $Ref) (x2@149@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@126@01 x1@149@01)
      (Seq_contains xs@126@01 x2@149@01)
      (= x1@149@01 x2@149@01))
    (= x1@149@01 x2@149@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@149@01 $Ref)) (!
  (=>
    (Seq_contains xs@126@01 x@149@01)
    (and (= (inv@150@01 x@149@01) x@149@01) (img@151@01 x@149@01)))
  :pattern ((Seq_contains xs@126@01 x@149@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@149@01))
  :pattern ((inv@150@01 x@149@01))
  :pattern ((img@151@01 x@149@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@151@01 r) (Seq_contains xs@126@01 (inv@150@01 r)))
    (= (inv@150@01 r) r))
  :pattern ((inv@150@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@152@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains xs@126@01 (inv@150@01 r))
      (img@151@01 r)
      (= r (inv@150@01 r)))
    ($Perm.min
      (ite
        (and (img@130@01 r) (Seq_contains xs@126@01 (inv@129@01 r)))
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
        (and (img@130@01 r) (Seq_contains xs@126@01 (inv@129@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@152@01 r))
    $Perm.No)
  
  :qid |quant-u-16245|))))
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
      (Seq_contains xs@126@01 (inv@150@01 r))
      (img@151@01 r)
      (= r (inv@150@01 r)))
    (= (- $Perm.Write (pTaken@152@01 r)) $Perm.No))
  
  :qid |quant-u-16246|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@153@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@126@01 x@153@01))
(pop) ; 3
(declare-fun inv@154@01 ($Ref) $Ref)
(declare-fun img@155@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@153@01 $Ref) (x2@153@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@126@01 x1@153@01)
      (Seq_contains xs@126@01 x2@153@01)
      (= x1@153@01 x2@153@01))
    (= x1@153@01 x2@153@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@153@01 $Ref)) (!
  (=>
    (Seq_contains xs@126@01 x@153@01)
    (and (= (inv@154@01 x@153@01) x@153@01) (img@155@01 x@153@01)))
  :pattern ((Seq_contains xs@126@01 x@153@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@153@01))
  :pattern ((inv@154@01 x@153@01))
  :pattern ((img@155@01 x@153@01))
  :qid |g-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@155@01 r) (Seq_contains xs@126@01 (inv@154@01 r)))
    (= (inv@154@01 r) r))
  :pattern ((inv@154@01 r))
  :qid |g-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@156@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains xs@126@01 (inv@154@01 r))
      (img@155@01 r)
      (= r (inv@154@01 r)))
    ($Perm.min
      (ite
        (and (img@133@01 r) (Seq_contains xs@126@01 (inv@132@01 r)))
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
        (and (img@133@01 r) (Seq_contains xs@126@01 (inv@132@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@156@01 r))
    $Perm.No)
  
  :qid |quant-u-16249|))))
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
      (Seq_contains xs@126@01 (inv@154@01 r))
      (img@155@01 r)
      (= r (inv@154@01 r)))
    (= (- $Perm.Write (pTaken@156@01 r)) $Perm.No))
  
  :qid |quant-u-16250|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@157@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@126@01 x@157@01))
(pop) ; 3
(declare-fun inv@158@01 ($Ref) $Ref)
(declare-fun img@159@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@157@01 $Ref) (x2@157@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@126@01 x1@157@01)
      (Seq_contains xs@126@01 x2@157@01)
      (= x1@157@01 x2@157@01))
    (= x1@157@01 x2@157@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@157@01 $Ref)) (!
  (=>
    (Seq_contains xs@126@01 x@157@01)
    (and (= (inv@158@01 x@157@01) x@157@01) (img@159@01 x@157@01)))
  :pattern ((Seq_contains xs@126@01 x@157@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@157@01))
  :pattern ((inv@158@01 x@157@01))
  :pattern ((img@159@01 x@157@01))
  :qid |pred-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@159@01 x) (Seq_contains xs@126@01 (inv@158@01 x)))
    (= (inv@158@01 x) x))
  :pattern ((inv@158@01 x))
  :qid |pred-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@160@01 ((x $Ref)) $Perm
  (ite
    (and
      (Seq_contains xs@126@01 (inv@158@01 x))
      (img@159@01 x)
      (= x (inv@158@01 x)))
    ($Perm.min
      (ite
        (and (img@136@01 x) (Seq_contains xs@126@01 (inv@135@01 x)))
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@136@01 x) (Seq_contains xs@126@01 (inv@135@01 x)))
        $Perm.Write
        $Perm.No)
      (pTaken@160@01 x))
    $Perm.No)
  
  :qid |quant-u-16253|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and
      (Seq_contains xs@126@01 (inv@158@01 x))
      (img@159@01 x)
      (= x (inv@158@01 x)))
    (= (- $Perm.Write (pTaken@160@01 x)) $Perm.No))
  
  :qid |quant-u-16254|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0)
(declare-const x@161@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs) ==> x.f > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 2 | x@161@01 in xs@126@01 | live]
; [else-branch: 2 | !(x@161@01 in xs@126@01) | live]
(push) ; 5
; [then-branch: 2 | x@161@01 in xs@126@01]
(assert (Seq_contains xs@126@01 x@161@01))
; [eval] x.f > 0
(push) ; 6
(assert (not (and (img@130@01 x@161@01) (Seq_contains xs@126@01 (inv@129@01 x@161@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 2 | !(x@161@01 in xs@126@01)]
(assert (not (Seq_contains xs@126@01 x@161@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Seq_contains xs@126@01 x@161@01)) (Seq_contains xs@126@01 x@161@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@161@01 $Ref)) (!
  (or (not (Seq_contains xs@126@01 x@161@01)) (Seq_contains xs@126@01 x@161@01))
  :pattern ((Seq_contains xs@126@01 x@161@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@161@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/forall.vpr@45@10@45@45-aux|)))
(assert (forall ((x@161@01 $Ref)) (!
  (or (not (Seq_contains xs@126@01 x@161@01)) (Seq_contains xs@126@01 x@161@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@161@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/forall.vpr@45@10@45@45-aux|)))
(push) ; 3
(assert (not (forall ((x@161@01 $Ref)) (!
  (=>
    (Seq_contains xs@126@01 x@161@01)
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@127@01)) x@161@01)
      0))
  :pattern ((Seq_contains xs@126@01 x@161@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@161@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@161@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/forall.vpr@45@10@45@45|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@161@01 $Ref)) (!
  (=>
    (Seq_contains xs@126@01 x@161@01)
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@127@01)) x@161@01)
      0))
  :pattern ((Seq_contains xs@126@01 x@161@01))
  :pattern ((Seq_contains_trigger xs@126@01 x@161@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/forall.vpr@45@10@45@45|)))
(pop) ; 2
(pop) ; 1
; ---------- m8 ----------
(declare-const xs@162@01 Seq<$Ref>)
(declare-const ys@163@01 Seq<$Ref>)
(declare-const xs@164@01 Seq<$Ref>)
(declare-const ys@165@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@166@01 $Snap)
(assert (= $t@166@01 ($Snap.combine ($Snap.first $t@166@01) ($Snap.second $t@166@01))))
(declare-const x@167@01 $Ref)
(push) ; 2
; [eval] (x in xs) && (x in ys)
; [eval] (x in xs)
(push) ; 3
; [then-branch: 3 | !(x@167@01 in xs@164@01) | live]
; [else-branch: 3 | x@167@01 in xs@164@01 | live]
(push) ; 4
; [then-branch: 3 | !(x@167@01 in xs@164@01)]
(assert (not (Seq_contains xs@164@01 x@167@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 3 | x@167@01 in xs@164@01]
(assert (Seq_contains xs@164@01 x@167@01))
; [eval] (x in ys)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@164@01 x@167@01) (not (Seq_contains xs@164@01 x@167@01))))
(assert (and (Seq_contains xs@164@01 x@167@01) (Seq_contains ys@165@01 x@167@01)))
(pop) ; 2
(declare-fun inv@168@01 ($Ref) $Ref)
(declare-fun img@169@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@167@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@164@01 x@167@01) (Seq_contains ys@165@01 x@167@01))
    (or
      (Seq_contains xs@164@01 x@167@01)
      (not (Seq_contains xs@164@01 x@167@01))))
  :pattern ((Seq_contains xs@164@01 x@167@01))
  :pattern ((Seq_contains_trigger xs@164@01 x@167@01))
  :pattern ((Seq_contains_trigger xs@164@01 x@167@01))
  :pattern ((Seq_contains ys@165@01 x@167@01))
  :pattern ((Seq_contains_trigger ys@165@01 x@167@01))
  :pattern ((Seq_contains_trigger ys@165@01 x@167@01))
  :pattern ((inv@168@01 x@167@01))
  :pattern ((img@169@01 x@167@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@167@01 $Ref) (x2@167@01 $Ref)) (!
  (=>
    (and
      (and (Seq_contains xs@164@01 x1@167@01) (Seq_contains ys@165@01 x1@167@01))
      (and (Seq_contains xs@164@01 x2@167@01) (Seq_contains ys@165@01 x2@167@01))
      (= x1@167@01 x2@167@01))
    (= x1@167@01 x2@167@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@167@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@164@01 x@167@01) (Seq_contains ys@165@01 x@167@01))
    (and (= (inv@168@01 x@167@01) x@167@01) (img@169@01 x@167@01)))
  :pattern ((Seq_contains xs@164@01 x@167@01))
  :pattern ((Seq_contains_trigger xs@164@01 x@167@01))
  :pattern ((Seq_contains_trigger xs@164@01 x@167@01))
  :pattern ((Seq_contains ys@165@01 x@167@01))
  :pattern ((Seq_contains_trigger ys@165@01 x@167@01))
  :pattern ((Seq_contains_trigger ys@165@01 x@167@01))
  :pattern ((inv@168@01 x@167@01))
  :pattern ((img@169@01 x@167@01))
  :qid |quant-u-16256|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@169@01 r)
      (and
        (Seq_contains xs@164@01 (inv@168@01 r))
        (Seq_contains ys@165@01 (inv@168@01 r))))
    (= (inv@168@01 r) r))
  :pattern ((inv@168@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@167@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@164@01 x@167@01) (Seq_contains ys@165@01 x@167@01))
    (not (= x@167@01 $Ref.null)))
  :pattern ((Seq_contains xs@164@01 x@167@01))
  :pattern ((Seq_contains_trigger xs@164@01 x@167@01))
  :pattern ((Seq_contains_trigger xs@164@01 x@167@01))
  :pattern ((Seq_contains ys@165@01 x@167@01))
  :pattern ((Seq_contains_trigger ys@165@01 x@167@01))
  :pattern ((Seq_contains_trigger ys@165@01 x@167@01))
  :pattern ((inv@168@01 x@167@01))
  :pattern ((img@169@01 x@167@01))
  :qid |f-permImpliesNonNull|)))
(declare-const x@170@01 $Ref)
(push) ; 2
; [eval] (x in xs) && (x in ys)
; [eval] (x in xs)
(push) ; 3
; [then-branch: 4 | !(x@170@01 in xs@164@01) | live]
; [else-branch: 4 | x@170@01 in xs@164@01 | live]
(push) ; 4
; [then-branch: 4 | !(x@170@01 in xs@164@01)]
(assert (not (Seq_contains xs@164@01 x@170@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 4 | x@170@01 in xs@164@01]
(assert (Seq_contains xs@164@01 x@170@01))
; [eval] (x in ys)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@164@01 x@170@01) (not (Seq_contains xs@164@01 x@170@01))))
(assert (and (Seq_contains xs@164@01 x@170@01) (Seq_contains ys@165@01 x@170@01)))
(pop) ; 2
(declare-fun inv@171@01 ($Ref) $Ref)
(declare-fun img@172@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@170@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@164@01 x@170@01) (Seq_contains ys@165@01 x@170@01))
    (or
      (Seq_contains xs@164@01 x@170@01)
      (not (Seq_contains xs@164@01 x@170@01))))
  :pattern ((Seq_contains xs@164@01 x@170@01))
  :pattern ((Seq_contains_trigger xs@164@01 x@170@01))
  :pattern ((Seq_contains_trigger xs@164@01 x@170@01))
  :pattern ((Seq_contains ys@165@01 x@170@01))
  :pattern ((Seq_contains_trigger ys@165@01 x@170@01))
  :pattern ((Seq_contains_trigger ys@165@01 x@170@01))
  :pattern ((inv@171@01 x@170@01))
  :pattern ((img@172@01 x@170@01))
  :qid |g-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@170@01 $Ref) (x2@170@01 $Ref)) (!
  (=>
    (and
      (and (Seq_contains xs@164@01 x1@170@01) (Seq_contains ys@165@01 x1@170@01))
      (and (Seq_contains xs@164@01 x2@170@01) (Seq_contains ys@165@01 x2@170@01))
      (= x1@170@01 x2@170@01))
    (= x1@170@01 x2@170@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@170@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@164@01 x@170@01) (Seq_contains ys@165@01 x@170@01))
    (and (= (inv@171@01 x@170@01) x@170@01) (img@172@01 x@170@01)))
  :pattern ((Seq_contains xs@164@01 x@170@01))
  :pattern ((Seq_contains_trigger xs@164@01 x@170@01))
  :pattern ((Seq_contains_trigger xs@164@01 x@170@01))
  :pattern ((Seq_contains ys@165@01 x@170@01))
  :pattern ((Seq_contains_trigger ys@165@01 x@170@01))
  :pattern ((Seq_contains_trigger ys@165@01 x@170@01))
  :pattern ((inv@171@01 x@170@01))
  :pattern ((img@172@01 x@170@01))
  :qid |quant-u-16258|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@172@01 r)
      (and
        (Seq_contains xs@164@01 (inv@171@01 r))
        (Seq_contains ys@165@01 (inv@171@01 r))))
    (= (inv@171@01 r) r))
  :pattern ((inv@171@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@170@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@164@01 x@170@01) (Seq_contains ys@165@01 x@170@01))
    (not (= x@170@01 $Ref.null)))
  :pattern ((Seq_contains xs@164@01 x@170@01))
  :pattern ((Seq_contains_trigger xs@164@01 x@170@01))
  :pattern ((Seq_contains_trigger xs@164@01 x@170@01))
  :pattern ((Seq_contains ys@165@01 x@170@01))
  :pattern ((Seq_contains_trigger ys@165@01 x@170@01))
  :pattern ((Seq_contains_trigger ys@165@01 x@170@01))
  :pattern ((inv@171@01 x@170@01))
  :pattern ((img@172@01 x@170@01))
  :qid |g-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
(pop) ; 2
(pop) ; 1
; ---------- m9 ----------
(declare-const xs@173@01 Seq<$Ref>)
(declare-const xs@174@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@175@01 $Snap)
(assert (= $t@175@01 ($Snap.combine ($Snap.first $t@175@01) ($Snap.second $t@175@01))))
(declare-const x@176@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@174@01 x@176@01))
(pop) ; 2
(declare-fun inv@177@01 ($Ref) $Ref)
(declare-fun img@178@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@176@01 $Ref) (x2@176@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@174@01 x1@176@01)
      (Seq_contains xs@174@01 x2@176@01)
      (= x1@176@01 x2@176@01))
    (= x1@176@01 x2@176@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@176@01 $Ref)) (!
  (=>
    (Seq_contains xs@174@01 x@176@01)
    (and (= (inv@177@01 x@176@01) x@176@01) (img@178@01 x@176@01)))
  :pattern ((Seq_contains xs@174@01 x@176@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@176@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@176@01))
  :pattern ((inv@177@01 x@176@01))
  :pattern ((img@178@01 x@176@01))
  :qid |quant-u-16260|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@178@01 r) (Seq_contains xs@174@01 (inv@177@01 r)))
    (= (inv@177@01 r) r))
  :pattern ((inv@177@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@176@01 $Ref)) (!
  (=> (Seq_contains xs@174@01 x@176@01) (not (= x@176@01 $Ref.null)))
  :pattern ((Seq_contains xs@174@01 x@176@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@176@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@176@01))
  :pattern ((inv@177@01 x@176@01))
  :pattern ((img@178@01 x@176@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@175@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@175@01))
    ($Snap.second ($Snap.second $t@175@01)))))
(declare-const x@179@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@174@01 x@179@01))
(pop) ; 2
(declare-fun inv@180@01 ($Ref) $Ref)
(declare-fun img@181@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@179@01 $Ref) (x2@179@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@174@01 x1@179@01)
      (Seq_contains xs@174@01 x2@179@01)
      (= x1@179@01 x2@179@01))
    (= x1@179@01 x2@179@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@179@01 $Ref)) (!
  (=>
    (Seq_contains xs@174@01 x@179@01)
    (and (= (inv@180@01 x@179@01) x@179@01) (img@181@01 x@179@01)))
  :pattern ((Seq_contains xs@174@01 x@179@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@179@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@179@01))
  :pattern ((inv@180@01 x@179@01))
  :pattern ((img@181@01 x@179@01))
  :qid |quant-u-16262|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@181@01 r) (Seq_contains xs@174@01 (inv@180@01 r)))
    (= (inv@180@01 r) r))
  :pattern ((inv@180@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@179@01 $Ref)) (!
  (=> (Seq_contains xs@174@01 x@179@01) (not (= x@179@01 $Ref.null)))
  :pattern ((Seq_contains xs@174@01 x@179@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@179@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@179@01))
  :pattern ((inv@180@01 x@179@01))
  :pattern ((img@181@01 x@179@01))
  :qid |g-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@175@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@175@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
(declare-const x@182@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@174@01 x@182@01))
(pop) ; 2
(declare-fun inv@183@01 ($Ref) $Ref)
(declare-fun img@184@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@182@01 $Ref) (x2@182@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@174@01 x1@182@01)
      (Seq_contains xs@174@01 x2@182@01)
      (= x1@182@01 x2@182@01))
    (= x1@182@01 x2@182@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@182@01 $Ref)) (!
  (=>
    (Seq_contains xs@174@01 x@182@01)
    (and (= (inv@183@01 x@182@01) x@182@01) (img@184@01 x@182@01)))
  :pattern ((Seq_contains xs@174@01 x@182@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@182@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@182@01))
  :pattern ((inv@183@01 x@182@01))
  :pattern ((img@184@01 x@182@01))
  :qid |quant-u-16264|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@184@01 x) (Seq_contains xs@174@01 (inv@183@01 x)))
    (= (inv@183@01 x) x))
  :pattern ((inv@183@01 x))
  :qid |pred-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@175@01))) $Snap.unit))
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0)
(declare-const x@185@01 $Ref)
(push) ; 2
; [eval] (x in xs) ==> x.f > 0
; [eval] (x in xs)
(push) ; 3
; [then-branch: 5 | x@185@01 in xs@174@01 | live]
; [else-branch: 5 | !(x@185@01 in xs@174@01) | live]
(push) ; 4
; [then-branch: 5 | x@185@01 in xs@174@01]
(assert (Seq_contains xs@174@01 x@185@01))
; [eval] x.f > 0
(push) ; 5
(assert (not (and (img@178@01 x@185@01) (Seq_contains xs@174@01 (inv@177@01 x@185@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 5 | !(x@185@01 in xs@174@01)]
(assert (not (Seq_contains xs@174@01 x@185@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (Seq_contains xs@174@01 x@185@01)) (Seq_contains xs@174@01 x@185@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@185@01 $Ref)) (!
  (or (not (Seq_contains xs@174@01 x@185@01)) (Seq_contains xs@174@01 x@185@01))
  :pattern ((Seq_contains xs@174@01 x@185@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@185@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/forall.vpr@55@10@55@86-aux|)))
(assert (forall ((x@185@01 $Ref)) (!
  (or (not (Seq_contains xs@174@01 x@185@01)) (Seq_contains xs@174@01 x@185@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@185@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/forall.vpr@55@10@55@86-aux|)))
(assert (forall ((x@185@01 $Ref)) (!
  (=>
    (Seq_contains xs@174@01 x@185@01)
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@175@01)) x@185@01)
      0))
  :pattern ((Seq_contains xs@174@01 x@185@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@185@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/forall.vpr@55@10@55@86|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@186@01 $Snap)
(assert (= $t@186@01 ($Snap.combine ($Snap.first $t@186@01) ($Snap.second $t@186@01))))
(declare-const x@187@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@174@01 x@187@01))
(pop) ; 3
(declare-fun inv@188@01 ($Ref) $Ref)
(declare-fun img@189@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@187@01 $Ref) (x2@187@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@174@01 x1@187@01)
      (Seq_contains xs@174@01 x2@187@01)
      (= x1@187@01 x2@187@01))
    (= x1@187@01 x2@187@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@187@01 $Ref)) (!
  (=>
    (Seq_contains xs@174@01 x@187@01)
    (and (= (inv@188@01 x@187@01) x@187@01) (img@189@01 x@187@01)))
  :pattern ((Seq_contains xs@174@01 x@187@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@187@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@187@01))
  :pattern ((inv@188@01 x@187@01))
  :pattern ((img@189@01 x@187@01))
  :qid |quant-u-16266|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@189@01 r) (Seq_contains xs@174@01 (inv@188@01 r)))
    (= (inv@188@01 r) r))
  :pattern ((inv@188@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@187@01 $Ref)) (!
  (=> (Seq_contains xs@174@01 x@187@01) (not (= x@187@01 $Ref.null)))
  :pattern ((Seq_contains xs@174@01 x@187@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@187@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@187@01))
  :pattern ((inv@188@01 x@187@01))
  :pattern ((img@189@01 x@187@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@186@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@186@01))
    ($Snap.second ($Snap.second $t@186@01)))))
(declare-const x@190@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@174@01 x@190@01))
(pop) ; 3
(declare-fun inv@191@01 ($Ref) $Ref)
(declare-fun img@192@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@190@01 $Ref) (x2@190@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@174@01 x1@190@01)
      (Seq_contains xs@174@01 x2@190@01)
      (= x1@190@01 x2@190@01))
    (= x1@190@01 x2@190@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@190@01 $Ref)) (!
  (=>
    (Seq_contains xs@174@01 x@190@01)
    (and (= (inv@191@01 x@190@01) x@190@01) (img@192@01 x@190@01)))
  :pattern ((Seq_contains xs@174@01 x@190@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@190@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@190@01))
  :pattern ((inv@191@01 x@190@01))
  :pattern ((img@192@01 x@190@01))
  :qid |quant-u-16268|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@192@01 r) (Seq_contains xs@174@01 (inv@191@01 r)))
    (= (inv@191@01 r) r))
  :pattern ((inv@191@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@190@01 $Ref)) (!
  (=> (Seq_contains xs@174@01 x@190@01) (not (= x@190@01 $Ref.null)))
  :pattern ((Seq_contains xs@174@01 x@190@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@190@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@190@01))
  :pattern ((inv@191@01 x@190@01))
  :pattern ((img@192@01 x@190@01))
  :qid |g-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@186@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@186@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@186@01))))))
(declare-const x@193@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@174@01 x@193@01))
(pop) ; 3
(declare-fun inv@194@01 ($Ref) $Ref)
(declare-fun img@195@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@193@01 $Ref) (x2@193@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@174@01 x1@193@01)
      (Seq_contains xs@174@01 x2@193@01)
      (= x1@193@01 x2@193@01))
    (= x1@193@01 x2@193@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@193@01 $Ref)) (!
  (=>
    (Seq_contains xs@174@01 x@193@01)
    (and (= (inv@194@01 x@193@01) x@193@01) (img@195@01 x@193@01)))
  :pattern ((Seq_contains xs@174@01 x@193@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@193@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@193@01))
  :pattern ((inv@194@01 x@193@01))
  :pattern ((img@195@01 x@193@01))
  :qid |quant-u-16270|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@195@01 x) (Seq_contains xs@174@01 (inv@194@01 x)))
    (= (inv@194@01 x) x))
  :pattern ((inv@194@01 x))
  :qid |pred-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@186@01))) $Snap.unit))
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0)
(declare-const x@196@01 $Ref)
(push) ; 3
; [eval] (x in xs) ==> x.f > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 6 | x@196@01 in xs@174@01 | live]
; [else-branch: 6 | !(x@196@01 in xs@174@01) | live]
(push) ; 5
; [then-branch: 6 | x@196@01 in xs@174@01]
(assert (Seq_contains xs@174@01 x@196@01))
; [eval] x.f > 0
(push) ; 6
(assert (not (and (img@189@01 x@196@01) (Seq_contains xs@174@01 (inv@188@01 x@196@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 6 | !(x@196@01 in xs@174@01)]
(assert (not (Seq_contains xs@174@01 x@196@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Seq_contains xs@174@01 x@196@01)) (Seq_contains xs@174@01 x@196@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@196@01 $Ref)) (!
  (or (not (Seq_contains xs@174@01 x@196@01)) (Seq_contains xs@174@01 x@196@01))
  :pattern ((Seq_contains xs@174@01 x@196@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@196@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/forall.vpr@56@9@56@85-aux|)))
(assert (forall ((x@196@01 $Ref)) (!
  (or (not (Seq_contains xs@174@01 x@196@01)) (Seq_contains xs@174@01 x@196@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@196@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/forall.vpr@56@9@56@85-aux|)))
(assert (forall ((x@196@01 $Ref)) (!
  (=>
    (Seq_contains xs@174@01 x@196@01)
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@186@01)) x@196@01)
      0))
  :pattern ((Seq_contains xs@174@01 x@196@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@196@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/forall.vpr@56@9@56@85|)))
(pop) ; 2
(push) ; 2
(declare-const x@197@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@174@01 x@197@01))
(pop) ; 3
(declare-fun inv@198@01 ($Ref) $Ref)
(declare-fun img@199@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@197@01 $Ref) (x2@197@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@174@01 x1@197@01)
      (Seq_contains xs@174@01 x2@197@01)
      (= x1@197@01 x2@197@01))
    (= x1@197@01 x2@197@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@197@01 $Ref)) (!
  (=>
    (Seq_contains xs@174@01 x@197@01)
    (and (= (inv@198@01 x@197@01) x@197@01) (img@199@01 x@197@01)))
  :pattern ((Seq_contains xs@174@01 x@197@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@197@01))
  :pattern ((inv@198@01 x@197@01))
  :pattern ((img@199@01 x@197@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@199@01 r) (Seq_contains xs@174@01 (inv@198@01 r)))
    (= (inv@198@01 r) r))
  :pattern ((inv@198@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@200@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains xs@174@01 (inv@198@01 r))
      (img@199@01 r)
      (= r (inv@198@01 r)))
    ($Perm.min
      (ite
        (and (img@178@01 r) (Seq_contains xs@174@01 (inv@177@01 r)))
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
        (and (img@178@01 r) (Seq_contains xs@174@01 (inv@177@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@200@01 r))
    $Perm.No)
  
  :qid |quant-u-16273|))))
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
      (Seq_contains xs@174@01 (inv@198@01 r))
      (img@199@01 r)
      (= r (inv@198@01 r)))
    (= (- $Perm.Write (pTaken@200@01 r)) $Perm.No))
  
  :qid |quant-u-16274|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@201@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@174@01 x@201@01))
(pop) ; 3
(declare-fun inv@202@01 ($Ref) $Ref)
(declare-fun img@203@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@201@01 $Ref) (x2@201@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@174@01 x1@201@01)
      (Seq_contains xs@174@01 x2@201@01)
      (= x1@201@01 x2@201@01))
    (= x1@201@01 x2@201@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@201@01 $Ref)) (!
  (=>
    (Seq_contains xs@174@01 x@201@01)
    (and (= (inv@202@01 x@201@01) x@201@01) (img@203@01 x@201@01)))
  :pattern ((Seq_contains xs@174@01 x@201@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@201@01))
  :pattern ((inv@202@01 x@201@01))
  :pattern ((img@203@01 x@201@01))
  :qid |g-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@203@01 r) (Seq_contains xs@174@01 (inv@202@01 r)))
    (= (inv@202@01 r) r))
  :pattern ((inv@202@01 r))
  :qid |g-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@204@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains xs@174@01 (inv@202@01 r))
      (img@203@01 r)
      (= r (inv@202@01 r)))
    ($Perm.min
      (ite
        (and (img@181@01 r) (Seq_contains xs@174@01 (inv@180@01 r)))
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
        (and (img@181@01 r) (Seq_contains xs@174@01 (inv@180@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@204@01 r))
    $Perm.No)
  
  :qid |quant-u-16277|))))
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
      (Seq_contains xs@174@01 (inv@202@01 r))
      (img@203@01 r)
      (= r (inv@202@01 r)))
    (= (- $Perm.Write (pTaken@204@01 r)) $Perm.No))
  
  :qid |quant-u-16278|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@205@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@174@01 x@205@01))
(pop) ; 3
(declare-fun inv@206@01 ($Ref) $Ref)
(declare-fun img@207@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@205@01 $Ref) (x2@205@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@174@01 x1@205@01)
      (Seq_contains xs@174@01 x2@205@01)
      (= x1@205@01 x2@205@01))
    (= x1@205@01 x2@205@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@205@01 $Ref)) (!
  (=>
    (Seq_contains xs@174@01 x@205@01)
    (and (= (inv@206@01 x@205@01) x@205@01) (img@207@01 x@205@01)))
  :pattern ((Seq_contains xs@174@01 x@205@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@205@01))
  :pattern ((inv@206@01 x@205@01))
  :pattern ((img@207@01 x@205@01))
  :qid |pred-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@207@01 x) (Seq_contains xs@174@01 (inv@206@01 x)))
    (= (inv@206@01 x) x))
  :pattern ((inv@206@01 x))
  :qid |pred-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@208@01 ((x $Ref)) $Perm
  (ite
    (and
      (Seq_contains xs@174@01 (inv@206@01 x))
      (img@207@01 x)
      (= x (inv@206@01 x)))
    ($Perm.min
      (ite
        (and (img@184@01 x) (Seq_contains xs@174@01 (inv@183@01 x)))
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@184@01 x) (Seq_contains xs@174@01 (inv@183@01 x)))
        $Perm.Write
        $Perm.No)
      (pTaken@208@01 x))
    $Perm.No)
  
  :qid |quant-u-16281|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and
      (Seq_contains xs@174@01 (inv@206@01 x))
      (img@207@01 x)
      (= x (inv@206@01 x)))
    (= (- $Perm.Write (pTaken@208@01 x)) $Perm.No))
  
  :qid |quant-u-16282|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0)
(declare-const x@209@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs) ==> x.f > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 7 | x@209@01 in xs@174@01 | live]
; [else-branch: 7 | !(x@209@01 in xs@174@01) | live]
(push) ; 5
; [then-branch: 7 | x@209@01 in xs@174@01]
(assert (Seq_contains xs@174@01 x@209@01))
; [eval] x.f > 0
(push) ; 6
(assert (not (and (img@178@01 x@209@01) (Seq_contains xs@174@01 (inv@177@01 x@209@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 7 | !(x@209@01 in xs@174@01)]
(assert (not (Seq_contains xs@174@01 x@209@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Seq_contains xs@174@01 x@209@01)) (Seq_contains xs@174@01 x@209@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@209@01 $Ref)) (!
  (or (not (Seq_contains xs@174@01 x@209@01)) (Seq_contains xs@174@01 x@209@01))
  :pattern ((Seq_contains xs@174@01 x@209@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@209@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/forall.vpr@56@9@56@85-aux|)))
(assert (forall ((x@209@01 $Ref)) (!
  (or (not (Seq_contains xs@174@01 x@209@01)) (Seq_contains xs@174@01 x@209@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@209@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/forall.vpr@56@9@56@85-aux|)))
(push) ; 3
(assert (not (forall ((x@209@01 $Ref)) (!
  (=>
    (Seq_contains xs@174@01 x@209@01)
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@175@01)) x@209@01)
      0))
  :pattern ((Seq_contains xs@174@01 x@209@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@209@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@209@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/forall.vpr@56@9@56@85|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@209@01 $Ref)) (!
  (=>
    (Seq_contains xs@174@01 x@209@01)
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@175@01)) x@209@01)
      0))
  :pattern ((Seq_contains xs@174@01 x@209@01))
  :pattern ((Seq_contains_trigger xs@174@01 x@209@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/forall.vpr@56@9@56@85|)))
(pop) ; 2
(pop) ; 1
