(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-29 14:54:22
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
(declare-sort IMatrix 0)
(declare-sort IArray<Ref> 0)
(declare-sort $FVF<val> 0)
(declare-sort $FVF<f> 0)
(declare-sort $PSF<P> 0)
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
(declare-fun $SortWrappers.IMatrixTo$Snap (IMatrix) $Snap)
(declare-fun $SortWrappers.$SnapToIMatrix ($Snap) IMatrix)
(assert (forall ((x IMatrix)) (!
    (= x ($SortWrappers.$SnapToIMatrix($SortWrappers.IMatrixTo$Snap x)))
    :pattern (($SortWrappers.IMatrixTo$Snap x))
    :qid |$Snap.$SnapToIMatrixTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.IMatrixTo$Snap($SortWrappers.$SnapToIMatrix x)))
    :pattern (($SortWrappers.$SnapToIMatrix x))
    :qid |$Snap.IMatrixTo$SnapToIMatrix|
    )))
(declare-fun $SortWrappers.IArray<Ref>To$Snap (IArray<Ref>) $Snap)
(declare-fun $SortWrappers.$SnapToIArray<Ref> ($Snap) IArray<Ref>)
(assert (forall ((x IArray<Ref>)) (!
    (= x ($SortWrappers.$SnapToIArray<Ref>($SortWrappers.IArray<Ref>To$Snap x)))
    :pattern (($SortWrappers.IArray<Ref>To$Snap x))
    :qid |$Snap.$SnapToIArray<Ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.IArray<Ref>To$Snap($SortWrappers.$SnapToIArray<Ref> x)))
    :pattern (($SortWrappers.$SnapToIArray<Ref> x))
    :qid |$Snap.IArray<Ref>To$SnapToIArray<Ref>|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$FVF<val>To$Snap ($FVF<val>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<val> ($Snap) $FVF<val>)
(assert (forall ((x $FVF<val>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<val>($SortWrappers.$FVF<val>To$Snap x)))
    :pattern (($SortWrappers.$FVF<val>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<val>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<val>To$Snap($SortWrappers.$SnapTo$FVF<val> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<val> x))
    :qid |$Snap.$FVF<val>To$SnapTo$FVF<val>|
    )))
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
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$PSF<P>To$Snap ($PSF<P>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<P> ($Snap) $PSF<P>)
(assert (forall ((x $PSF<P>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<P>($SortWrappers.$PSF<P>To$Snap x)))
    :pattern (($SortWrappers.$PSF<P>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<P>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<P>To$Snap($SortWrappers.$SnapTo$PSF<P> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<P> x))
    :qid |$Snap.$PSF<P>To$SnapTo$PSF<P>|
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
(declare-fun loc<Ref> (IMatrix Int Int) $Ref)
(declare-fun cols<Int> (IMatrix) Int)
(declare-fun rows<Int> (IMatrix) Int)
(declare-fun loc_mat<IMatrix> ($Ref) IMatrix)
(declare-fun loc_col<Int> ($Ref) Int)
(declare-fun loc_row<Int> ($Ref) Int)
(declare-fun aloc<Ref> (IArray<Ref> Int) $Ref)
(declare-fun len<Int> (IArray<Ref>) Int)
(declare-fun first<IArray<Ref>> ($Ref) IArray<Ref>)
(declare-fun second<Int> ($Ref) Int)
; /field_value_functions_declarations.smt2 [val: Int]
(declare-fun $FVF.domain_val ($FVF<val>) Set<$Ref>)
(declare-fun $FVF.lookup_val ($FVF<val> $Ref) Int)
(declare-fun $FVF.after_val ($FVF<val> $FVF<val>) Bool)
(declare-fun $FVF.loc_val (Int $Ref) Bool)
(declare-fun $FVF.perm_val ($FPM $Ref) $Perm)
(declare-const $fvfTOP_val $FVF<val>)
; /field_value_functions_declarations.smt2 [f: Int]
(declare-fun $FVF.domain_f ($FVF<f>) Set<$Ref>)
(declare-fun $FVF.lookup_f ($FVF<f> $Ref) Int)
(declare-fun $FVF.after_f ($FVF<f> $FVF<f>) Bool)
(declare-fun $FVF.loc_f (Int $Ref) Bool)
(declare-fun $FVF.perm_f ($FPM $Ref) $Perm)
(declare-const $fvfTOP_f $FVF<f>)
; /predicate_snap_functions_declarations.smt2 [P: Snap]
(declare-fun $PSF.domain_P ($PSF<P>) Set<$Snap>)
(declare-fun $PSF.lookup_P ($PSF<P> $Snap) $Snap)
(declare-fun $PSF.after_P ($PSF<P> $PSF<P>) Bool)
(declare-fun $PSF.loc_P ($Snap $Snap) Bool)
(declare-fun $PSF.perm_P ($PPM $Snap) $Perm)
(declare-const $psfTOP_P $PSF<P>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun det ($Snap IMatrix) Int)
(declare-fun det%limited ($Snap IMatrix) Int)
(declare-fun det%stateless (IMatrix) Bool)
(declare-fun det%precondition ($Snap IMatrix) Bool)
(declare-fun colsum ($Snap IMatrix Int) Int)
(declare-fun colsum%limited ($Snap IMatrix Int) Int)
(declare-fun colsum%stateless (IMatrix Int) Bool)
(declare-fun colsum%precondition ($Snap IMatrix Int) Bool)
(declare-fun prm ($Snap Int) $Perm)
(declare-fun prm%limited ($Snap Int) $Perm)
(declare-fun prm%stateless (Int) Bool)
(declare-fun prm%precondition ($Snap Int) Bool)
(declare-fun rowsum ($Snap IMatrix Int) Int)
(declare-fun rowsum%limited ($Snap IMatrix Int) Int)
(declare-fun rowsum%stateless (IMatrix Int) Bool)
(declare-fun rowsum%precondition ($Snap IMatrix Int) Bool)
(declare-fun getP ($Snap $Ref $Ref) Int)
(declare-fun getP%limited ($Snap $Ref $Ref) Int)
(declare-fun getP%stateless ($Ref $Ref) Bool)
(declare-fun getP%precondition ($Snap $Ref $Ref) Bool)
(declare-fun rcvr ($Snap Int Int) $Ref)
(declare-fun rcvr%limited ($Snap Int Int) $Ref)
(declare-fun rcvr%stateless (Int Int) Bool)
(declare-fun rcvr%precondition ($Snap Int Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun P%trigger ($Snap $Ref $Ref) Bool)
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
(assert (forall ((mat IMatrix) (col Int) (row Int)) (!
  (and
    (= (loc_mat<IMatrix> (loc<Ref> mat col row)) mat)
    (and
      (= (loc_col<Int> (loc<Ref> mat col row)) col)
      (= (loc_row<Int> (loc<Ref> mat col row)) row)))
  :pattern ((loc<Ref> mat col row))
  :qid |prog.all_diff|)))
(assert (forall ((mat IMatrix)) (!
  (>= (cols<Int> mat) 0)
  :pattern ((cols<Int> mat))
  :qid |prog.cols_nonneg|)))
(assert (forall ((mat IMatrix)) (!
  (>= (rows<Int> mat) 0)
  :pattern ((rows<Int> mat))
  :qid |prog.rows_nonneg|)))
(assert (forall ((a IArray<Ref>) (i Int)) (!
  (and
    (= (first<IArray<Ref>> (aloc<Ref> a i)) a)
    (= (second<Int> (aloc<Ref> a i)) i))
  :pattern ((aloc<Ref> a i))
  :qid |prog.array_all_diff|)))
(assert (forall ((a IArray<Ref>)) (!
  (>= (len<Int> a) 0)
  :pattern ((len<Int> a))
  :qid |prog.length_nonneg|)))
; /field_value_functions_axioms.smt2 [val: Int]
(assert (forall ((vs $FVF<val>) (ws $FVF<val>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_val vs) ($FVF.domain_val ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_val vs))
            (= ($FVF.lookup_val vs x) ($FVF.lookup_val ws x)))
          :pattern (($FVF.lookup_val vs x) ($FVF.lookup_val ws x))
          :qid |qp.$FVF<val>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<val>To$Snap vs)
              ($SortWrappers.$FVF<val>To$Snap ws)
              )
    :qid |qp.$FVF<val>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_val pm r))
    :pattern (($FVF.perm_val pm r)))))
(assert (forall ((r $Ref) (f Int)) (!
    (= ($FVF.loc_val f r) true)
    :pattern (($FVF.loc_val f r)))))
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
; /predicate_snap_functions_axioms.smt2 [P: Snap]
(assert (forall ((vs $PSF<P>) (ws $PSF<P>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_P vs) ($PSF.domain_P ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_P vs))
            (= ($PSF.lookup_P vs x) ($PSF.lookup_P ws x)))
          :pattern (($PSF.lookup_P vs x) ($PSF.lookup_P ws x))
          :qid |qp.$PSF<P>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<P>To$Snap vs)
              ($SortWrappers.$PSF<P>To$Snap ws)
              )
    :qid |qp.$PSF<P>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_P pm s))
    :pattern (($PSF.perm_P pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_P f s) true)
    :pattern (($PSF.loc_P f s)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun inv@18@00 ($Snap IMatrix $Ref) Int)
(declare-fun inv@20@00 ($Snap IMatrix $Ref) Int)
(declare-fun img@19@00 ($Snap IMatrix $Ref) Bool)
(declare-fun img@21@00 ($Snap IMatrix $Ref) Bool)
(declare-fun inv@23@00 ($Snap IMatrix Int $Ref) Int)
(declare-fun img@24@00 ($Snap IMatrix Int $Ref) Bool)
(declare-fun inv@27@00 ($Snap IMatrix Int $Ref) Int)
(declare-fun img@28@00 ($Snap IMatrix Int $Ref) Bool)
(assert (forall ((s@$ $Snap) (mat@0@00 IMatrix)) (!
  (= (det%limited s@$ mat@0@00) (det s@$ mat@0@00))
  :pattern ((det s@$ mat@0@00))
  :qid |quant-u-16560|)))
(assert (forall ((s@$ $Snap) (mat@0@00 IMatrix)) (!
  (det%stateless mat@0@00)
  :pattern ((det%limited s@$ mat@0@00))
  :qid |quant-u-16561|)))
(assert (forall ((s@$ $Snap) (mat@2@00 IMatrix) (col@3@00 Int)) (!
  (= (colsum%limited s@$ mat@2@00 col@3@00) (colsum s@$ mat@2@00 col@3@00))
  :pattern ((colsum s@$ mat@2@00 col@3@00))
  :qid |quant-u-16562|)))
(assert (forall ((s@$ $Snap) (mat@2@00 IMatrix) (col@3@00 Int)) (!
  (colsum%stateless mat@2@00 col@3@00)
  :pattern ((colsum%limited s@$ mat@2@00 col@3@00))
  :qid |quant-u-16563|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int)) (!
  (= (prm%limited s@$ i@5@00) (prm s@$ i@5@00))
  :pattern ((prm s@$ i@5@00))
  :qid |quant-u-16564|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int)) (!
  (prm%stateless i@5@00)
  :pattern ((prm%limited s@$ i@5@00))
  :qid |quant-u-16565|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int)) (!
  (let ((result@6@00 (prm%limited s@$ i@5@00))) (=>
    (prm%precondition s@$ i@5@00)
    (< $Perm.No result@6@00)))
  :pattern ((prm%limited s@$ i@5@00))
  :qid |quant-u-16576|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int)) (!
  (let ((result@6@00 (prm%limited s@$ i@5@00))) true)
  :pattern ((prm%limited s@$ i@5@00))
  :qid |quant-u-16577|)))
(assert (forall ((s@$ $Snap) (mat@7@00 IMatrix) (row@8@00 Int)) (!
  (= (rowsum%limited s@$ mat@7@00 row@8@00) (rowsum s@$ mat@7@00 row@8@00))
  :pattern ((rowsum s@$ mat@7@00 row@8@00))
  :qid |quant-u-16566|)))
(assert (forall ((s@$ $Snap) (mat@7@00 IMatrix) (row@8@00 Int)) (!
  (rowsum%stateless mat@7@00 row@8@00)
  :pattern ((rowsum%limited s@$ mat@7@00 row@8@00))
  :qid |quant-u-16567|)))
(assert (forall ((s@$ $Snap) (x@10@00 $Ref) (y@11@00 $Ref)) (!
  (= (getP%limited s@$ x@10@00 y@11@00) (getP s@$ x@10@00 y@11@00))
  :pattern ((getP s@$ x@10@00 y@11@00))
  :qid |quant-u-16568|)))
(assert (forall ((s@$ $Snap) (x@10@00 $Ref) (y@11@00 $Ref)) (!
  (getP%stateless x@10@00 y@11@00)
  :pattern ((getP%limited s@$ x@10@00 y@11@00))
  :qid |quant-u-16569|)))
(assert (forall ((s@$ $Snap) (x@10@00 $Ref) (y@11@00 $Ref)) (!
  (=>
    (getP%precondition s@$ x@10@00 y@11@00)
    (=
      (getP s@$ x@10@00 y@11@00)
      (+
        ($SortWrappers.$SnapToInt ($Snap.first s@$))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
  :pattern ((getP s@$ x@10@00 y@11@00))
  :qid |quant-u-16580|)))
(assert (forall ((s@$ $Snap) (x@10@00 $Ref) (y@11@00 $Ref)) (!
  true
  :pattern ((getP s@$ x@10@00 y@11@00))
  :qid |quant-u-16581|)))
(assert (forall ((s@$ $Snap) (i@13@00 Int) (j@14@00 Int)) (!
  (= (rcvr%limited s@$ i@13@00 j@14@00) (rcvr s@$ i@13@00 j@14@00))
  :pattern ((rcvr s@$ i@13@00 j@14@00))
  :qid |quant-u-16570|)))
(assert (forall ((s@$ $Snap) (i@13@00 Int) (j@14@00 Int)) (!
  (rcvr%stateless i@13@00 j@14@00)
  :pattern ((rcvr%limited s@$ i@13@00 j@14@00))
  :qid |quant-u-16571|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test01 ----------
(declare-const xs@0@01 Seq<$Ref>)
(declare-const n@1@01 Int)
(declare-const xs@2@01 Seq<$Ref>)
(declare-const n@3@01 Int)
(set-option :timeout 0)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; inhale 0 <= n && n <= |xs|
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 ($Snap.combine ($Snap.first $t@4@01) ($Snap.second $t@4@01))))
(assert (= ($Snap.first $t@4@01) $Snap.unit))
; [eval] 0 <= n
(assert (<= 0 n@3@01))
(assert (= ($Snap.second $t@4@01) $Snap.unit))
; [eval] n <= |xs|
; [eval] |xs|
(assert (<= n@3@01 (Seq_length xs@2@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall ix: Int, jx: Int ::
;     { rcvr(ix, ix), rcvr(jx, jx) }
;     ix >= 0 && (ix < n && (jx >= 0 && (jx < n && ix != jx))) ==>
;     rcvr(ix, ix) != rcvr(jx, jx))
(declare-const $t@5@01 $Snap)
(assert (= $t@5@01 $Snap.unit))
; [eval] (forall ix: Int, jx: Int :: { rcvr(ix, ix), rcvr(jx, jx) } ix >= 0 && (ix < n && (jx >= 0 && (jx < n && ix != jx))) ==> rcvr(ix, ix) != rcvr(jx, jx))
(declare-const ix@6@01 Int)
(declare-const jx@7@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ix >= 0 && (ix < n && (jx >= 0 && (jx < n && ix != jx))) ==> rcvr(ix, ix) != rcvr(jx, jx)
; [eval] ix >= 0 && (ix < n && (jx >= 0 && (jx < n && ix != jx)))
; [eval] ix >= 0
(push) ; 4
; [then-branch: 0 | !(ix@6@01 >= 0) | live]
; [else-branch: 0 | ix@6@01 >= 0 | live]
(push) ; 5
; [then-branch: 0 | !(ix@6@01 >= 0)]
(assert (not (>= ix@6@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | ix@6@01 >= 0]
(assert (>= ix@6@01 0))
; [eval] ix < n
(push) ; 6
; [then-branch: 1 | !(ix@6@01 < n@3@01) | live]
; [else-branch: 1 | ix@6@01 < n@3@01 | live]
(push) ; 7
; [then-branch: 1 | !(ix@6@01 < n@3@01)]
(assert (not (< ix@6@01 n@3@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 1 | ix@6@01 < n@3@01]
(assert (< ix@6@01 n@3@01))
; [eval] jx >= 0
(push) ; 8
; [then-branch: 2 | !(jx@7@01 >= 0) | live]
; [else-branch: 2 | jx@7@01 >= 0 | live]
(push) ; 9
; [then-branch: 2 | !(jx@7@01 >= 0)]
(assert (not (>= jx@7@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 2 | jx@7@01 >= 0]
(assert (>= jx@7@01 0))
; [eval] jx < n
(push) ; 10
; [then-branch: 3 | !(jx@7@01 < n@3@01) | live]
; [else-branch: 3 | jx@7@01 < n@3@01 | live]
(push) ; 11
; [then-branch: 3 | !(jx@7@01 < n@3@01)]
(assert (not (< jx@7@01 n@3@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 3 | jx@7@01 < n@3@01]
(assert (< jx@7@01 n@3@01))
; [eval] ix != jx
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< jx@7@01 n@3@01) (not (< jx@7@01 n@3@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= jx@7@01 0)
  (and (>= jx@7@01 0) (or (< jx@7@01 n@3@01) (not (< jx@7@01 n@3@01))))))
(assert (or (>= jx@7@01 0) (not (>= jx@7@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< ix@6@01 n@3@01)
  (and
    (< ix@6@01 n@3@01)
    (=>
      (>= jx@7@01 0)
      (and (>= jx@7@01 0) (or (< jx@7@01 n@3@01) (not (< jx@7@01 n@3@01)))))
    (or (>= jx@7@01 0) (not (>= jx@7@01 0))))))
(assert (or (< ix@6@01 n@3@01) (not (< ix@6@01 n@3@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= ix@6@01 0)
  (and
    (>= ix@6@01 0)
    (=>
      (< ix@6@01 n@3@01)
      (and
        (< ix@6@01 n@3@01)
        (=>
          (>= jx@7@01 0)
          (and (>= jx@7@01 0) (or (< jx@7@01 n@3@01) (not (< jx@7@01 n@3@01)))))
        (or (>= jx@7@01 0) (not (>= jx@7@01 0)))))
    (or (< ix@6@01 n@3@01) (not (< ix@6@01 n@3@01))))))
(assert (or (>= ix@6@01 0) (not (>= ix@6@01 0))))
(push) ; 4
; [then-branch: 4 | ix@6@01 >= 0 && ix@6@01 < n@3@01 && jx@7@01 >= 0 && jx@7@01 < n@3@01 && ix@6@01 != jx@7@01 | live]
; [else-branch: 4 | !(ix@6@01 >= 0 && ix@6@01 < n@3@01 && jx@7@01 >= 0 && jx@7@01 < n@3@01 && ix@6@01 != jx@7@01) | live]
(push) ; 5
; [then-branch: 4 | ix@6@01 >= 0 && ix@6@01 < n@3@01 && jx@7@01 >= 0 && jx@7@01 < n@3@01 && ix@6@01 != jx@7@01]
(assert (and
  (>= ix@6@01 0)
  (and
    (< ix@6@01 n@3@01)
    (and (>= jx@7@01 0) (and (< jx@7@01 n@3@01) (not (= ix@6@01 jx@7@01)))))))
; [eval] rcvr(ix, ix) != rcvr(jx, jx)
; [eval] rcvr(ix, ix)
(push) ; 6
(assert (rcvr%precondition $Snap.unit ix@6@01 ix@6@01))
(pop) ; 6
; Joined path conditions
(assert (rcvr%precondition $Snap.unit ix@6@01 ix@6@01))
; [eval] rcvr(jx, jx)
(push) ; 6
(assert (rcvr%precondition $Snap.unit jx@7@01 jx@7@01))
(pop) ; 6
; Joined path conditions
(assert (rcvr%precondition $Snap.unit jx@7@01 jx@7@01))
(pop) ; 5
(push) ; 5
; [else-branch: 4 | !(ix@6@01 >= 0 && ix@6@01 < n@3@01 && jx@7@01 >= 0 && jx@7@01 < n@3@01 && ix@6@01 != jx@7@01)]
(assert (not
  (and
    (>= ix@6@01 0)
    (and
      (< ix@6@01 n@3@01)
      (and (>= jx@7@01 0) (and (< jx@7@01 n@3@01) (not (= ix@6@01 jx@7@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= ix@6@01 0)
    (and
      (< ix@6@01 n@3@01)
      (and (>= jx@7@01 0) (and (< jx@7@01 n@3@01) (not (= ix@6@01 jx@7@01))))))
  (and
    (>= ix@6@01 0)
    (< ix@6@01 n@3@01)
    (>= jx@7@01 0)
    (< jx@7@01 n@3@01)
    (not (= ix@6@01 jx@7@01))
    (rcvr%precondition $Snap.unit ix@6@01 ix@6@01)
    (rcvr%precondition $Snap.unit jx@7@01 jx@7@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= ix@6@01 0)
      (and
        (< ix@6@01 n@3@01)
        (and (>= jx@7@01 0) (and (< jx@7@01 n@3@01) (not (= ix@6@01 jx@7@01)))))))
  (and
    (>= ix@6@01 0)
    (and
      (< ix@6@01 n@3@01)
      (and (>= jx@7@01 0) (and (< jx@7@01 n@3@01) (not (= ix@6@01 jx@7@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((ix@6@01 Int) (jx@7@01 Int)) (!
  (and
    (=>
      (>= ix@6@01 0)
      (and
        (>= ix@6@01 0)
        (=>
          (< ix@6@01 n@3@01)
          (and
            (< ix@6@01 n@3@01)
            (=>
              (>= jx@7@01 0)
              (and
                (>= jx@7@01 0)
                (or (< jx@7@01 n@3@01) (not (< jx@7@01 n@3@01)))))
            (or (>= jx@7@01 0) (not (>= jx@7@01 0)))))
        (or (< ix@6@01 n@3@01) (not (< ix@6@01 n@3@01)))))
    (or (>= ix@6@01 0) (not (>= ix@6@01 0)))
    (=>
      (and
        (>= ix@6@01 0)
        (and
          (< ix@6@01 n@3@01)
          (and (>= jx@7@01 0) (and (< jx@7@01 n@3@01) (not (= ix@6@01 jx@7@01))))))
      (and
        (>= ix@6@01 0)
        (< ix@6@01 n@3@01)
        (>= jx@7@01 0)
        (< jx@7@01 n@3@01)
        (not (= ix@6@01 jx@7@01))
        (rcvr%precondition $Snap.unit ix@6@01 ix@6@01)
        (rcvr%precondition $Snap.unit jx@7@01 jx@7@01)))
    (or
      (not
        (and
          (>= ix@6@01 0)
          (and
            (< ix@6@01 n@3@01)
            (and
              (>= jx@7@01 0)
              (and (< jx@7@01 n@3@01) (not (= ix@6@01 jx@7@01)))))))
      (and
        (>= ix@6@01 0)
        (and
          (< ix@6@01 n@3@01)
          (and (>= jx@7@01 0) (and (< jx@7@01 n@3@01) (not (= ix@6@01 jx@7@01))))))))
  :pattern ((rcvr%limited $Snap.unit ix@6@01 ix@6@01) (rcvr%limited $Snap.unit jx@7@01 jx@7@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@16@10@16@118-aux|)))
(assert (forall ((ix@6@01 Int) (jx@7@01 Int)) (!
  (=>
    (and
      (>= ix@6@01 0)
      (and
        (< ix@6@01 n@3@01)
        (and (>= jx@7@01 0) (and (< jx@7@01 n@3@01) (not (= ix@6@01 jx@7@01))))))
    (not (= (rcvr $Snap.unit ix@6@01 ix@6@01) (rcvr $Snap.unit jx@7@01 jx@7@01))))
  :pattern ((rcvr%limited $Snap.unit ix@6@01 ix@6@01) (rcvr%limited $Snap.unit jx@7@01 jx@7@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@16@10@16@118|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int, j: Int ::0 <= i && (i < n && j == i) ==>
;     acc(rcvr(i, j).f, prm(i)))
(declare-const i@8@01 Int)
(declare-const j@9@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i && (i < n && j == i)
; [eval] 0 <= i
(push) ; 4
; [then-branch: 5 | !(0 <= i@8@01) | live]
; [else-branch: 5 | 0 <= i@8@01 | live]
(push) ; 5
; [then-branch: 5 | !(0 <= i@8@01)]
(assert (not (<= 0 i@8@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 5 | 0 <= i@8@01]
(assert (<= 0 i@8@01))
; [eval] i < n
(push) ; 6
; [then-branch: 6 | !(i@8@01 < n@3@01) | live]
; [else-branch: 6 | i@8@01 < n@3@01 | live]
(push) ; 7
; [then-branch: 6 | !(i@8@01 < n@3@01)]
(assert (not (< i@8@01 n@3@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 6 | i@8@01 < n@3@01]
(assert (< i@8@01 n@3@01))
; [eval] j == i
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (< i@8@01 n@3@01) (not (< i@8@01 n@3@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@8@01)
  (and (<= 0 i@8@01) (or (< i@8@01 n@3@01) (not (< i@8@01 n@3@01))))))
(assert (or (<= 0 i@8@01) (not (<= 0 i@8@01))))
(assert (and (<= 0 i@8@01) (and (< i@8@01 n@3@01) (= j@9@01 i@8@01))))
; [eval] rcvr(i, j)
(push) ; 4
(assert (rcvr%precondition $Snap.unit i@8@01 j@9@01))
(pop) ; 4
; Joined path conditions
(assert (rcvr%precondition $Snap.unit i@8@01 j@9@01))
; [eval] prm(i)
(push) ; 4
(assert (prm%precondition $Snap.unit i@8@01))
(pop) ; 4
; Joined path conditions
(assert (prm%precondition $Snap.unit i@8@01))
(pop) ; 3
(declare-const $t@10@01 $FVF<f>)
(declare-fun inv@11@01 ($Ref) Int)
(declare-fun img@12@01 ($Ref) Bool)
(declare-fun inv@13@01 ($Ref) Int)
(declare-fun img@14@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@8@01 Int) (j@9@01 Int)) (!
  (=>
    (and (<= 0 i@8@01) (and (< i@8@01 n@3@01) (= j@9@01 i@8@01)))
    (and
      (=>
        (<= 0 i@8@01)
        (and (<= 0 i@8@01) (or (< i@8@01 n@3@01) (not (< i@8@01 n@3@01)))))
      (or (<= 0 i@8@01) (not (<= 0 i@8@01)))
      (rcvr%precondition $Snap.unit i@8@01 j@9@01)
      (prm%precondition $Snap.unit i@8@01)))
  :pattern ((rcvr $Snap.unit i@8@01 j@9@01))
  :qid |f-aux|)))
(push) ; 3
(assert (not (forall ((i@8@01 Int) (j@9@01 Int)) (!
  (=>
    (and
      (=>
        (and (<= 0 i@8@01) (and (< i@8@01 n@3@01) (= j@9@01 i@8@01)))
        (and
          (prm%precondition $Snap.unit i@8@01)
          (=>
            (not (= (prm $Snap.unit i@8@01) $Perm.No))
            (prm%precondition $Snap.unit i@8@01))))
      (and (<= 0 i@8@01) (and (< i@8@01 n@3@01) (= j@9@01 i@8@01))))
    (or
      (= (prm $Snap.unit i@8@01) $Perm.No)
      (< $Perm.No (prm $Snap.unit i@8@01))))
  
  :qid |quant-u-16582|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((i1@8@01 Int) (j1@9@01 Int) (i2@8@01 Int) (j2@9@01 Int)) (!
  (and
    (=>
      (and (<= 0 i1@8@01) (and (< i1@8@01 n@3@01) (= j1@9@01 i1@8@01)))
      (prm%precondition $Snap.unit i1@8@01))
    (=>
      (and
        (and (<= 0 i1@8@01) (and (< i1@8@01 n@3@01) (= j1@9@01 i1@8@01)))
        (< $Perm.No (prm $Snap.unit i1@8@01)))
      (and
        (=>
          (and (<= 0 i2@8@01) (and (< i2@8@01 n@3@01) (= j2@9@01 i2@8@01)))
          (prm%precondition $Snap.unit i2@8@01))
        (=>
          (and
            (and (<= 0 i2@8@01) (and (< i2@8@01 n@3@01) (= j2@9@01 i2@8@01)))
            (< $Perm.No (prm $Snap.unit i2@8@01)))
          (and
            (rcvr%precondition $Snap.unit i1@8@01 j1@9@01)
            (rcvr%precondition $Snap.unit i2@8@01 j2@9@01))))))
  
  :qid |f-rcvrInj|)))
(push) ; 3
(assert (not (forall ((i1@8@01 Int) (j1@9@01 Int) (i2@8@01 Int) (j2@9@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 i1@8@01) (and (< i1@8@01 n@3@01) (= j1@9@01 i1@8@01)))
        (< $Perm.No (prm $Snap.unit i1@8@01)))
      (and
        (and (<= 0 i2@8@01) (and (< i2@8@01 n@3@01) (= j2@9@01 i2@8@01)))
        (< $Perm.No (prm $Snap.unit i2@8@01)))
      (= (rcvr $Snap.unit i1@8@01 j1@9@01) (rcvr $Snap.unit i2@8@01 j2@9@01)))
    (and (= i1@8@01 i2@8@01) (= j1@9@01 j2@9@01)))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@8@01 Int) (j@9@01 Int)) (!
  (and
    (=>
      (and (<= 0 i@8@01) (and (< i@8@01 n@3@01) (= j@9@01 i@8@01)))
      (prm%precondition $Snap.unit i@8@01))
    (=>
      (and
        (and (<= 0 i@8@01) (and (< i@8@01 n@3@01) (= j@9@01 i@8@01)))
        (< $Perm.No (prm $Snap.unit i@8@01)))
      (and
        (and
          (rcvr%precondition $Snap.unit i@8@01 j@9@01)
          (=>
            (= (inv@11@01 (rcvr $Snap.unit i@8@01 j@9@01)) i@8@01)
            (rcvr%precondition $Snap.unit i@8@01 j@9@01)))
        (=>
          (and
            (= (inv@11@01 (rcvr $Snap.unit i@8@01 j@9@01)) i@8@01)
            (= (inv@13@01 (rcvr $Snap.unit i@8@01 j@9@01)) j@9@01))
          (and
            (rcvr%precondition $Snap.unit i@8@01 j@9@01)
            (=>
              (img@12@01 (rcvr $Snap.unit i@8@01 j@9@01))
              (rcvr%precondition $Snap.unit i@8@01 j@9@01)))))))
  :pattern ((rcvr $Snap.unit i@8@01 j@9@01))
  :qid |quant-u-16583|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (and
        (and (img@12@01 r) (img@14@01 r))
        (and
          (<= 0 (inv@11@01 r))
          (and (< (inv@11@01 r) n@3@01) (= (inv@13@01 r) (inv@11@01 r)))))
      (prm%precondition $Snap.unit (inv@11@01 r)))
    (=>
      (and
        (and (img@12@01 r) (img@14@01 r))
        (and
          (and
            (<= 0 (inv@11@01 r))
            (and (< (inv@11@01 r) n@3@01) (= (inv@13@01 r) (inv@11@01 r))))
          (< $Perm.No (prm $Snap.unit (inv@11@01 r)))))
      (rcvr%precondition $Snap.unit (inv@11@01 r) (inv@13@01 r))))
  :pattern ((inv@11@01 r))
  :pattern ((inv@13@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((i@8@01 Int) (j@9@01 Int)) (!
  (=>
    (and
      (and (<= 0 i@8@01) (and (< i@8@01 n@3@01) (= j@9@01 i@8@01)))
      (< $Perm.No (prm $Snap.unit i@8@01)))
    (and
      (and
        (= (inv@11@01 (rcvr $Snap.unit i@8@01 j@9@01)) i@8@01)
        (= (inv@13@01 (rcvr $Snap.unit i@8@01 j@9@01)) j@9@01))
      (and
        (img@12@01 (rcvr $Snap.unit i@8@01 j@9@01))
        (img@14@01 (rcvr $Snap.unit i@8@01 j@9@01)))))
  :pattern ((rcvr $Snap.unit i@8@01 j@9@01))
  :qid |quant-u-16583|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (img@12@01 r) (img@14@01 r))
      (and
        (and
          (<= 0 (inv@11@01 r))
          (and (< (inv@11@01 r) n@3@01) (= (inv@13@01 r) (inv@11@01 r))))
        (< $Perm.No (prm $Snap.unit (inv@11@01 r)))))
    (= (rcvr $Snap.unit (inv@11@01 r) (inv@13@01 r)) r))
  :pattern ((inv@11@01 r))
  :pattern ((inv@13@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i@8@01 Int) (j@9@01 Int)) (!
  (<= $Perm.No (prm $Snap.unit i@8@01))
  :pattern ((rcvr $Snap.unit i@8@01 j@9@01))
  :qid |f-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i@8@01 Int) (j@9@01 Int)) (!
  (<= (prm $Snap.unit i@8@01) $Perm.Write)
  :pattern ((rcvr $Snap.unit i@8@01 j@9@01))
  :qid |f-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i@8@01 Int) (j@9@01 Int)) (!
  (=>
    (and
      (and (<= 0 i@8@01) (and (< i@8@01 n@3@01) (= j@9@01 i@8@01)))
      (< $Perm.No (prm $Snap.unit i@8@01)))
    (not (= (rcvr $Snap.unit i@8@01 j@9@01) $Ref.null)))
  :pattern ((rcvr $Snap.unit i@8@01 j@9@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert (forall i1: Int, i2: Int ::
;     { rcvr(i1, i1), rcvr(i2, i2) }
;     0 <= i1 && (i1 < n && (0 <= i2 && (i2 < n && i1 != i2))) ==>
;     rcvr(i1, i1) != rcvr(i2, i2))
; [eval] (forall i1: Int, i2: Int :: { rcvr(i1, i1), rcvr(i2, i2) } 0 <= i1 && (i1 < n && (0 <= i2 && (i2 < n && i1 != i2))) ==> rcvr(i1, i1) != rcvr(i2, i2))
(declare-const i1@15@01 Int)
(declare-const i2@16@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i1 && (i1 < n && (0 <= i2 && (i2 < n && i1 != i2))) ==> rcvr(i1, i1) != rcvr(i2, i2)
; [eval] 0 <= i1 && (i1 < n && (0 <= i2 && (i2 < n && i1 != i2)))
; [eval] 0 <= i1
(push) ; 4
; [then-branch: 7 | !(0 <= i1@15@01) | live]
; [else-branch: 7 | 0 <= i1@15@01 | live]
(push) ; 5
; [then-branch: 7 | !(0 <= i1@15@01)]
(assert (not (<= 0 i1@15@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 7 | 0 <= i1@15@01]
(assert (<= 0 i1@15@01))
; [eval] i1 < n
(push) ; 6
; [then-branch: 8 | !(i1@15@01 < n@3@01) | live]
; [else-branch: 8 | i1@15@01 < n@3@01 | live]
(push) ; 7
; [then-branch: 8 | !(i1@15@01 < n@3@01)]
(assert (not (< i1@15@01 n@3@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 8 | i1@15@01 < n@3@01]
(assert (< i1@15@01 n@3@01))
; [eval] 0 <= i2
(push) ; 8
; [then-branch: 9 | !(0 <= i2@16@01) | live]
; [else-branch: 9 | 0 <= i2@16@01 | live]
(push) ; 9
; [then-branch: 9 | !(0 <= i2@16@01)]
(assert (not (<= 0 i2@16@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 9 | 0 <= i2@16@01]
(assert (<= 0 i2@16@01))
; [eval] i2 < n
(push) ; 10
; [then-branch: 10 | !(i2@16@01 < n@3@01) | live]
; [else-branch: 10 | i2@16@01 < n@3@01 | live]
(push) ; 11
; [then-branch: 10 | !(i2@16@01 < n@3@01)]
(assert (not (< i2@16@01 n@3@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 10 | i2@16@01 < n@3@01]
(assert (< i2@16@01 n@3@01))
; [eval] i1 != i2
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< i2@16@01 n@3@01) (not (< i2@16@01 n@3@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i2@16@01)
  (and (<= 0 i2@16@01) (or (< i2@16@01 n@3@01) (not (< i2@16@01 n@3@01))))))
(assert (or (<= 0 i2@16@01) (not (<= 0 i2@16@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i1@15@01 n@3@01)
  (and
    (< i1@15@01 n@3@01)
    (=>
      (<= 0 i2@16@01)
      (and (<= 0 i2@16@01) (or (< i2@16@01 n@3@01) (not (< i2@16@01 n@3@01)))))
    (or (<= 0 i2@16@01) (not (<= 0 i2@16@01))))))
(assert (or (< i1@15@01 n@3@01) (not (< i1@15@01 n@3@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i1@15@01)
  (and
    (<= 0 i1@15@01)
    (=>
      (< i1@15@01 n@3@01)
      (and
        (< i1@15@01 n@3@01)
        (=>
          (<= 0 i2@16@01)
          (and
            (<= 0 i2@16@01)
            (or (< i2@16@01 n@3@01) (not (< i2@16@01 n@3@01)))))
        (or (<= 0 i2@16@01) (not (<= 0 i2@16@01)))))
    (or (< i1@15@01 n@3@01) (not (< i1@15@01 n@3@01))))))
(assert (or (<= 0 i1@15@01) (not (<= 0 i1@15@01))))
(push) ; 4
; [then-branch: 11 | 0 <= i1@15@01 && i1@15@01 < n@3@01 && 0 <= i2@16@01 && i2@16@01 < n@3@01 && i1@15@01 != i2@16@01 | live]
; [else-branch: 11 | !(0 <= i1@15@01 && i1@15@01 < n@3@01 && 0 <= i2@16@01 && i2@16@01 < n@3@01 && i1@15@01 != i2@16@01) | live]
(push) ; 5
; [then-branch: 11 | 0 <= i1@15@01 && i1@15@01 < n@3@01 && 0 <= i2@16@01 && i2@16@01 < n@3@01 && i1@15@01 != i2@16@01]
(assert (and
  (<= 0 i1@15@01)
  (and
    (< i1@15@01 n@3@01)
    (and (<= 0 i2@16@01) (and (< i2@16@01 n@3@01) (not (= i1@15@01 i2@16@01)))))))
; [eval] rcvr(i1, i1) != rcvr(i2, i2)
; [eval] rcvr(i1, i1)
(push) ; 6
(assert (rcvr%precondition $Snap.unit i1@15@01 i1@15@01))
(pop) ; 6
; Joined path conditions
(assert (rcvr%precondition $Snap.unit i1@15@01 i1@15@01))
; [eval] rcvr(i2, i2)
(push) ; 6
(assert (rcvr%precondition $Snap.unit i2@16@01 i2@16@01))
(pop) ; 6
; Joined path conditions
(assert (rcvr%precondition $Snap.unit i2@16@01 i2@16@01))
(pop) ; 5
(push) ; 5
; [else-branch: 11 | !(0 <= i1@15@01 && i1@15@01 < n@3@01 && 0 <= i2@16@01 && i2@16@01 < n@3@01 && i1@15@01 != i2@16@01)]
(assert (not
  (and
    (<= 0 i1@15@01)
    (and
      (< i1@15@01 n@3@01)
      (and (<= 0 i2@16@01) (and (< i2@16@01 n@3@01) (not (= i1@15@01 i2@16@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 i1@15@01)
    (and
      (< i1@15@01 n@3@01)
      (and (<= 0 i2@16@01) (and (< i2@16@01 n@3@01) (not (= i1@15@01 i2@16@01))))))
  (and
    (<= 0 i1@15@01)
    (< i1@15@01 n@3@01)
    (<= 0 i2@16@01)
    (< i2@16@01 n@3@01)
    (not (= i1@15@01 i2@16@01))
    (rcvr%precondition $Snap.unit i1@15@01 i1@15@01)
    (rcvr%precondition $Snap.unit i2@16@01 i2@16@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i1@15@01)
      (and
        (< i1@15@01 n@3@01)
        (and
          (<= 0 i2@16@01)
          (and (< i2@16@01 n@3@01) (not (= i1@15@01 i2@16@01)))))))
  (and
    (<= 0 i1@15@01)
    (and
      (< i1@15@01 n@3@01)
      (and (<= 0 i2@16@01) (and (< i2@16@01 n@3@01) (not (= i1@15@01 i2@16@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i1@15@01 Int) (i2@16@01 Int)) (!
  (and
    (=>
      (<= 0 i1@15@01)
      (and
        (<= 0 i1@15@01)
        (=>
          (< i1@15@01 n@3@01)
          (and
            (< i1@15@01 n@3@01)
            (=>
              (<= 0 i2@16@01)
              (and
                (<= 0 i2@16@01)
                (or (< i2@16@01 n@3@01) (not (< i2@16@01 n@3@01)))))
            (or (<= 0 i2@16@01) (not (<= 0 i2@16@01)))))
        (or (< i1@15@01 n@3@01) (not (< i1@15@01 n@3@01)))))
    (or (<= 0 i1@15@01) (not (<= 0 i1@15@01)))
    (=>
      (and
        (<= 0 i1@15@01)
        (and
          (< i1@15@01 n@3@01)
          (and
            (<= 0 i2@16@01)
            (and (< i2@16@01 n@3@01) (not (= i1@15@01 i2@16@01))))))
      (and
        (<= 0 i1@15@01)
        (< i1@15@01 n@3@01)
        (<= 0 i2@16@01)
        (< i2@16@01 n@3@01)
        (not (= i1@15@01 i2@16@01))
        (rcvr%precondition $Snap.unit i1@15@01 i1@15@01)
        (rcvr%precondition $Snap.unit i2@16@01 i2@16@01)))
    (or
      (not
        (and
          (<= 0 i1@15@01)
          (and
            (< i1@15@01 n@3@01)
            (and
              (<= 0 i2@16@01)
              (and (< i2@16@01 n@3@01) (not (= i1@15@01 i2@16@01)))))))
      (and
        (<= 0 i1@15@01)
        (and
          (< i1@15@01 n@3@01)
          (and
            (<= 0 i2@16@01)
            (and (< i2@16@01 n@3@01) (not (= i1@15@01 i2@16@01))))))))
  :pattern ((rcvr%limited $Snap.unit i1@15@01 i1@15@01) (rcvr%limited $Snap.unit i2@16@01 i2@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@20@10@22@35-aux|)))
(assert (forall ((i1@15@01 Int) (i2@16@01 Int)) (!
  (=>
    (and
      (<= 0 i1@15@01)
      (and
        (< i1@15@01 n@3@01)
        (and
          (<= 0 i2@16@01)
          (and (< i2@16@01 n@3@01) (not (= i1@15@01 i2@16@01))))))
    (and
      (rcvr%precondition $Snap.unit i1@15@01 i1@15@01)
      (rcvr%precondition $Snap.unit i2@16@01 i2@16@01)))
  :pattern ((rcvr%limited $Snap.unit i1@15@01 i1@15@01) (rcvr%limited $Snap.unit i2@16@01 i2@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@20@10@22@35_precondition|)))
(push) ; 3
(assert (not (forall ((i1@15@01 Int) (i2@16@01 Int)) (!
  (=>
    (and
      (=>
        (and
          (<= 0 i1@15@01)
          (and
            (< i1@15@01 n@3@01)
            (and
              (<= 0 i2@16@01)
              (and (< i2@16@01 n@3@01) (not (= i1@15@01 i2@16@01))))))
        (and
          (rcvr%precondition $Snap.unit i1@15@01 i1@15@01)
          (rcvr%precondition $Snap.unit i2@16@01 i2@16@01)))
      (and
        (<= 0 i1@15@01)
        (and
          (< i1@15@01 n@3@01)
          (and
            (<= 0 i2@16@01)
            (and (< i2@16@01 n@3@01) (not (= i1@15@01 i2@16@01)))))))
    (not
      (= (rcvr $Snap.unit i1@15@01 i1@15@01) (rcvr $Snap.unit i2@16@01 i2@16@01))))
  :pattern ((rcvr%limited $Snap.unit i1@15@01 i1@15@01) (rcvr%limited $Snap.unit i2@16@01 i2@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@20@10@22@35|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@15@01 Int) (i2@16@01 Int)) (!
  (=>
    (and
      (<= 0 i1@15@01)
      (and
        (< i1@15@01 n@3@01)
        (and
          (<= 0 i2@16@01)
          (and (< i2@16@01 n@3@01) (not (= i1@15@01 i2@16@01))))))
    (not
      (= (rcvr $Snap.unit i1@15@01 i1@15@01) (rcvr $Snap.unit i2@16@01 i2@16@01))))
  :pattern ((rcvr%limited $Snap.unit i1@15@01 i1@15@01) (rcvr%limited $Snap.unit i2@16@01 i2@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@20@10@22@35|)))
; [exec]
; exhale (forall i: Int, j: Int ::0 <= i && (i < n && i == j) ==>
;     acc(rcvr(i, j).f, prm(i)))
(declare-const i@17@01 Int)
(declare-const j@18@01 Int)
(push) ; 3
; [eval] 0 <= i && (i < n && i == j)
; [eval] 0 <= i
(push) ; 4
; [then-branch: 12 | !(0 <= i@17@01) | live]
; [else-branch: 12 | 0 <= i@17@01 | live]
(push) ; 5
; [then-branch: 12 | !(0 <= i@17@01)]
(assert (not (<= 0 i@17@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 12 | 0 <= i@17@01]
(assert (<= 0 i@17@01))
; [eval] i < n
(push) ; 6
; [then-branch: 13 | !(i@17@01 < n@3@01) | live]
; [else-branch: 13 | i@17@01 < n@3@01 | live]
(push) ; 7
; [then-branch: 13 | !(i@17@01 < n@3@01)]
(assert (not (< i@17@01 n@3@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 13 | i@17@01 < n@3@01]
(assert (< i@17@01 n@3@01))
; [eval] i == j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (< i@17@01 n@3@01) (not (< i@17@01 n@3@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@17@01)
  (and (<= 0 i@17@01) (or (< i@17@01 n@3@01) (not (< i@17@01 n@3@01))))))
(assert (or (<= 0 i@17@01) (not (<= 0 i@17@01))))
(assert (and (<= 0 i@17@01) (and (< i@17@01 n@3@01) (= i@17@01 j@18@01))))
; [eval] prm(i)
(push) ; 4
(assert (prm%precondition $Snap.unit i@17@01))
(pop) ; 4
; Joined path conditions
(assert (prm%precondition $Snap.unit i@17@01))
; [eval] rcvr(i, j)
(push) ; 4
(assert (rcvr%precondition $Snap.unit i@17@01 j@18@01))
(pop) ; 4
; Joined path conditions
(assert (rcvr%precondition $Snap.unit i@17@01 j@18@01))
(pop) ; 3
(declare-fun inv@19@01 ($Ref) Int)
(declare-fun img@20@01 ($Ref) Bool)
(declare-fun inv@21@01 ($Ref) Int)
(declare-fun img@22@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@17@01 Int) (j@18@01 Int)) (!
  (=>
    (and (<= 0 i@17@01) (and (< i@17@01 n@3@01) (= i@17@01 j@18@01)))
    (and
      (=>
        (<= 0 i@17@01)
        (and (<= 0 i@17@01) (or (< i@17@01 n@3@01) (not (< i@17@01 n@3@01)))))
      (or (<= 0 i@17@01) (not (<= 0 i@17@01)))
      (prm%precondition $Snap.unit i@17@01)
      (rcvr%precondition $Snap.unit i@17@01 j@18@01)))
  :pattern ((rcvr $Snap.unit i@17@01 j@18@01))
  :qid |f-aux|)))
(push) ; 3
(assert (not (forall ((i@17@01 Int) (j@18@01 Int)) (!
  (=>
    (and
      (=>
        (and (<= 0 i@17@01) (and (< i@17@01 n@3@01) (= i@17@01 j@18@01)))
        (and
          (prm%precondition $Snap.unit i@17@01)
          (=>
            (not (= (prm $Snap.unit i@17@01) $Perm.No))
            (prm%precondition $Snap.unit i@17@01))))
      (and (<= 0 i@17@01) (and (< i@17@01 n@3@01) (= i@17@01 j@18@01))))
    (or
      (= (prm $Snap.unit i@17@01) $Perm.No)
      (< $Perm.No (prm $Snap.unit i@17@01))))
  
  :qid |quant-u-16584|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((i1@17@01 Int) (j1@18@01 Int) (i2@17@01 Int) (j2@18@01 Int)) (!
  (and
    (=>
      (and (<= 0 i1@17@01) (and (< i1@17@01 n@3@01) (= i1@17@01 j1@18@01)))
      (prm%precondition $Snap.unit i1@17@01))
    (=>
      (and
        (and (<= 0 i1@17@01) (and (< i1@17@01 n@3@01) (= i1@17@01 j1@18@01)))
        (< $Perm.No (prm $Snap.unit i1@17@01)))
      (and
        (=>
          (and (<= 0 i2@17@01) (and (< i2@17@01 n@3@01) (= i2@17@01 j2@18@01)))
          (prm%precondition $Snap.unit i2@17@01))
        (=>
          (and
            (and (<= 0 i2@17@01) (and (< i2@17@01 n@3@01) (= i2@17@01 j2@18@01)))
            (< $Perm.No (prm $Snap.unit i2@17@01)))
          (and
            (rcvr%precondition $Snap.unit i1@17@01 j1@18@01)
            (rcvr%precondition $Snap.unit i2@17@01 j2@18@01))))))
  
  :qid |f-rcvrInj|)))
(push) ; 3
(assert (not (forall ((i1@17@01 Int) (j1@18@01 Int) (i2@17@01 Int) (j2@18@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 i1@17@01) (and (< i1@17@01 n@3@01) (= i1@17@01 j1@18@01)))
        (< $Perm.No (prm $Snap.unit i1@17@01)))
      (and
        (and (<= 0 i2@17@01) (and (< i2@17@01 n@3@01) (= i2@17@01 j2@18@01)))
        (< $Perm.No (prm $Snap.unit i2@17@01)))
      (= (rcvr $Snap.unit i1@17@01 j1@18@01) (rcvr $Snap.unit i2@17@01 j2@18@01)))
    (and (= i1@17@01 i2@17@01) (= j1@18@01 j2@18@01)))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@17@01 Int) (j@18@01 Int)) (!
  (and
    (=>
      (and (<= 0 i@17@01) (and (< i@17@01 n@3@01) (= i@17@01 j@18@01)))
      (prm%precondition $Snap.unit i@17@01))
    (=>
      (and
        (and (<= 0 i@17@01) (and (< i@17@01 n@3@01) (= i@17@01 j@18@01)))
        (< $Perm.No (prm $Snap.unit i@17@01)))
      (and
        (and
          (rcvr%precondition $Snap.unit i@17@01 j@18@01)
          (=>
            (= (inv@19@01 (rcvr $Snap.unit i@17@01 j@18@01)) i@17@01)
            (rcvr%precondition $Snap.unit i@17@01 j@18@01)))
        (=>
          (and
            (= (inv@19@01 (rcvr $Snap.unit i@17@01 j@18@01)) i@17@01)
            (= (inv@21@01 (rcvr $Snap.unit i@17@01 j@18@01)) j@18@01))
          (and
            (rcvr%precondition $Snap.unit i@17@01 j@18@01)
            (=>
              (img@20@01 (rcvr $Snap.unit i@17@01 j@18@01))
              (rcvr%precondition $Snap.unit i@17@01 j@18@01)))))))
  :pattern ((rcvr $Snap.unit i@17@01 j@18@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (and
        (and (img@20@01 r) (img@22@01 r))
        (and
          (<= 0 (inv@19@01 r))
          (and (< (inv@19@01 r) n@3@01) (= (inv@19@01 r) (inv@21@01 r)))))
      (prm%precondition $Snap.unit (inv@19@01 r)))
    (=>
      (and
        (and (img@20@01 r) (img@22@01 r))
        (and
          (and
            (<= 0 (inv@19@01 r))
            (and (< (inv@19@01 r) n@3@01) (= (inv@19@01 r) (inv@21@01 r))))
          (< $Perm.No (prm $Snap.unit (inv@19@01 r)))))
      (rcvr%precondition $Snap.unit (inv@19@01 r) (inv@21@01 r))))
  :pattern ((inv@19@01 r))
  :pattern ((inv@21@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((i@17@01 Int) (j@18@01 Int)) (!
  (=>
    (and
      (and (<= 0 i@17@01) (and (< i@17@01 n@3@01) (= i@17@01 j@18@01)))
      (< $Perm.No (prm $Snap.unit i@17@01)))
    (and
      (and
        (= (inv@19@01 (rcvr $Snap.unit i@17@01 j@18@01)) i@17@01)
        (= (inv@21@01 (rcvr $Snap.unit i@17@01 j@18@01)) j@18@01))
      (and
        (img@20@01 (rcvr $Snap.unit i@17@01 j@18@01))
        (img@22@01 (rcvr $Snap.unit i@17@01 j@18@01)))))
  :pattern ((rcvr $Snap.unit i@17@01 j@18@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (img@20@01 r) (img@22@01 r))
      (and
        (and
          (<= 0 (inv@19@01 r))
          (and (< (inv@19@01 r) n@3@01) (= (inv@19@01 r) (inv@21@01 r))))
        (< $Perm.No (prm $Snap.unit (inv@19@01 r)))))
    (= (rcvr $Snap.unit (inv@19@01 r) (inv@21@01 r)) r))
  :pattern ((inv@19@01 r))
  :pattern ((inv@21@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@23@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (<= 0 (inv@19@01 r))
        (and (< (inv@19@01 r) n@3@01) (= (inv@19@01 r) (inv@21@01 r))))
      (and (img@20@01 r) (img@22@01 r))
      (= r (rcvr $Snap.unit (inv@19@01 r) (inv@21@01 r))))
    ($Perm.min
      (ite
        (and
          (and (img@12@01 r) (img@14@01 r))
          (and
            (<= 0 (inv@11@01 r))
            (and (< (inv@11@01 r) n@3@01) (= (inv@13@01 r) (inv@11@01 r)))))
        (prm $Snap.unit (inv@11@01 r))
        $Perm.No)
      (prm $Snap.unit (inv@19@01 r)))
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
          (and (img@12@01 r) (img@14@01 r))
          (and
            (<= 0 (inv@11@01 r))
            (and (< (inv@11@01 r) n@3@01) (= (inv@13@01 r) (inv@11@01 r)))))
        (prm $Snap.unit (inv@11@01 r))
        $Perm.No)
      (pTaken@23@01 r))
    $Perm.No)
  
  :qid |quant-u-16586|))))
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
      (and
        (<= 0 (inv@19@01 r))
        (and (< (inv@19@01 r) n@3@01) (= (inv@19@01 r) (inv@21@01 r))))
      (and (img@20@01 r) (img@22@01 r))
      (= r (rcvr $Snap.unit (inv@19@01 r) (inv@21@01 r))))
    (= (- (prm $Snap.unit (inv@19@01 r)) (pTaken@23@01 r)) $Perm.No))
  
  :qid |quant-u-16587|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- test01_fail ----------
(declare-const xs@24@01 Seq<$Ref>)
(declare-const n@25@01 Int)
(declare-const xs@26@01 Seq<$Ref>)
(declare-const n@27@01 Int)
(set-option :timeout 0)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; inhale 0 <= n && n <= |xs|
(declare-const $t@28@01 $Snap)
(assert (= $t@28@01 ($Snap.combine ($Snap.first $t@28@01) ($Snap.second $t@28@01))))
(assert (= ($Snap.first $t@28@01) $Snap.unit))
; [eval] 0 <= n
(assert (<= 0 n@27@01))
(assert (= ($Snap.second $t@28@01) $Snap.unit))
; [eval] n <= |xs|
; [eval] |xs|
(assert (<= n@27@01 (Seq_length xs@26@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall ix: Int, jx: Int ::
;     { rcvr(ix, ix), rcvr(jx, jx) }
;     ix >= 0 && (ix < n && (jx >= 0 && (jx < n && ix != jx))) ==>
;     rcvr(ix, ix) != rcvr(jx, jx))
(declare-const $t@29@01 $Snap)
(assert (= $t@29@01 $Snap.unit))
; [eval] (forall ix: Int, jx: Int :: { rcvr(ix, ix), rcvr(jx, jx) } ix >= 0 && (ix < n && (jx >= 0 && (jx < n && ix != jx))) ==> rcvr(ix, ix) != rcvr(jx, jx))
(declare-const ix@30@01 Int)
(declare-const jx@31@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ix >= 0 && (ix < n && (jx >= 0 && (jx < n && ix != jx))) ==> rcvr(ix, ix) != rcvr(jx, jx)
; [eval] ix >= 0 && (ix < n && (jx >= 0 && (jx < n && ix != jx)))
; [eval] ix >= 0
(push) ; 4
; [then-branch: 14 | !(ix@30@01 >= 0) | live]
; [else-branch: 14 | ix@30@01 >= 0 | live]
(push) ; 5
; [then-branch: 14 | !(ix@30@01 >= 0)]
(assert (not (>= ix@30@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 14 | ix@30@01 >= 0]
(assert (>= ix@30@01 0))
; [eval] ix < n
(push) ; 6
; [then-branch: 15 | !(ix@30@01 < n@27@01) | live]
; [else-branch: 15 | ix@30@01 < n@27@01 | live]
(push) ; 7
; [then-branch: 15 | !(ix@30@01 < n@27@01)]
(assert (not (< ix@30@01 n@27@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 15 | ix@30@01 < n@27@01]
(assert (< ix@30@01 n@27@01))
; [eval] jx >= 0
(push) ; 8
; [then-branch: 16 | !(jx@31@01 >= 0) | live]
; [else-branch: 16 | jx@31@01 >= 0 | live]
(push) ; 9
; [then-branch: 16 | !(jx@31@01 >= 0)]
(assert (not (>= jx@31@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 16 | jx@31@01 >= 0]
(assert (>= jx@31@01 0))
; [eval] jx < n
(push) ; 10
; [then-branch: 17 | !(jx@31@01 < n@27@01) | live]
; [else-branch: 17 | jx@31@01 < n@27@01 | live]
(push) ; 11
; [then-branch: 17 | !(jx@31@01 < n@27@01)]
(assert (not (< jx@31@01 n@27@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 17 | jx@31@01 < n@27@01]
(assert (< jx@31@01 n@27@01))
; [eval] ix != jx
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< jx@31@01 n@27@01) (not (< jx@31@01 n@27@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= jx@31@01 0)
  (and (>= jx@31@01 0) (or (< jx@31@01 n@27@01) (not (< jx@31@01 n@27@01))))))
(assert (or (>= jx@31@01 0) (not (>= jx@31@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< ix@30@01 n@27@01)
  (and
    (< ix@30@01 n@27@01)
    (=>
      (>= jx@31@01 0)
      (and (>= jx@31@01 0) (or (< jx@31@01 n@27@01) (not (< jx@31@01 n@27@01)))))
    (or (>= jx@31@01 0) (not (>= jx@31@01 0))))))
(assert (or (< ix@30@01 n@27@01) (not (< ix@30@01 n@27@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= ix@30@01 0)
  (and
    (>= ix@30@01 0)
    (=>
      (< ix@30@01 n@27@01)
      (and
        (< ix@30@01 n@27@01)
        (=>
          (>= jx@31@01 0)
          (and
            (>= jx@31@01 0)
            (or (< jx@31@01 n@27@01) (not (< jx@31@01 n@27@01)))))
        (or (>= jx@31@01 0) (not (>= jx@31@01 0)))))
    (or (< ix@30@01 n@27@01) (not (< ix@30@01 n@27@01))))))
(assert (or (>= ix@30@01 0) (not (>= ix@30@01 0))))
(push) ; 4
; [then-branch: 18 | ix@30@01 >= 0 && ix@30@01 < n@27@01 && jx@31@01 >= 0 && jx@31@01 < n@27@01 && ix@30@01 != jx@31@01 | live]
; [else-branch: 18 | !(ix@30@01 >= 0 && ix@30@01 < n@27@01 && jx@31@01 >= 0 && jx@31@01 < n@27@01 && ix@30@01 != jx@31@01) | live]
(push) ; 5
; [then-branch: 18 | ix@30@01 >= 0 && ix@30@01 < n@27@01 && jx@31@01 >= 0 && jx@31@01 < n@27@01 && ix@30@01 != jx@31@01]
(assert (and
  (>= ix@30@01 0)
  (and
    (< ix@30@01 n@27@01)
    (and (>= jx@31@01 0) (and (< jx@31@01 n@27@01) (not (= ix@30@01 jx@31@01)))))))
; [eval] rcvr(ix, ix) != rcvr(jx, jx)
; [eval] rcvr(ix, ix)
(push) ; 6
(assert (rcvr%precondition $Snap.unit ix@30@01 ix@30@01))
(pop) ; 6
; Joined path conditions
(assert (rcvr%precondition $Snap.unit ix@30@01 ix@30@01))
; [eval] rcvr(jx, jx)
(push) ; 6
(assert (rcvr%precondition $Snap.unit jx@31@01 jx@31@01))
(pop) ; 6
; Joined path conditions
(assert (rcvr%precondition $Snap.unit jx@31@01 jx@31@01))
(pop) ; 5
(push) ; 5
; [else-branch: 18 | !(ix@30@01 >= 0 && ix@30@01 < n@27@01 && jx@31@01 >= 0 && jx@31@01 < n@27@01 && ix@30@01 != jx@31@01)]
(assert (not
  (and
    (>= ix@30@01 0)
    (and
      (< ix@30@01 n@27@01)
      (and
        (>= jx@31@01 0)
        (and (< jx@31@01 n@27@01) (not (= ix@30@01 jx@31@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= ix@30@01 0)
    (and
      (< ix@30@01 n@27@01)
      (and
        (>= jx@31@01 0)
        (and (< jx@31@01 n@27@01) (not (= ix@30@01 jx@31@01))))))
  (and
    (>= ix@30@01 0)
    (< ix@30@01 n@27@01)
    (>= jx@31@01 0)
    (< jx@31@01 n@27@01)
    (not (= ix@30@01 jx@31@01))
    (rcvr%precondition $Snap.unit ix@30@01 ix@30@01)
    (rcvr%precondition $Snap.unit jx@31@01 jx@31@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= ix@30@01 0)
      (and
        (< ix@30@01 n@27@01)
        (and
          (>= jx@31@01 0)
          (and (< jx@31@01 n@27@01) (not (= ix@30@01 jx@31@01)))))))
  (and
    (>= ix@30@01 0)
    (and
      (< ix@30@01 n@27@01)
      (and
        (>= jx@31@01 0)
        (and (< jx@31@01 n@27@01) (not (= ix@30@01 jx@31@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((ix@30@01 Int) (jx@31@01 Int)) (!
  (and
    (=>
      (>= ix@30@01 0)
      (and
        (>= ix@30@01 0)
        (=>
          (< ix@30@01 n@27@01)
          (and
            (< ix@30@01 n@27@01)
            (=>
              (>= jx@31@01 0)
              (and
                (>= jx@31@01 0)
                (or (< jx@31@01 n@27@01) (not (< jx@31@01 n@27@01)))))
            (or (>= jx@31@01 0) (not (>= jx@31@01 0)))))
        (or (< ix@30@01 n@27@01) (not (< ix@30@01 n@27@01)))))
    (or (>= ix@30@01 0) (not (>= ix@30@01 0)))
    (=>
      (and
        (>= ix@30@01 0)
        (and
          (< ix@30@01 n@27@01)
          (and
            (>= jx@31@01 0)
            (and (< jx@31@01 n@27@01) (not (= ix@30@01 jx@31@01))))))
      (and
        (>= ix@30@01 0)
        (< ix@30@01 n@27@01)
        (>= jx@31@01 0)
        (< jx@31@01 n@27@01)
        (not (= ix@30@01 jx@31@01))
        (rcvr%precondition $Snap.unit ix@30@01 ix@30@01)
        (rcvr%precondition $Snap.unit jx@31@01 jx@31@01)))
    (or
      (not
        (and
          (>= ix@30@01 0)
          (and
            (< ix@30@01 n@27@01)
            (and
              (>= jx@31@01 0)
              (and (< jx@31@01 n@27@01) (not (= ix@30@01 jx@31@01)))))))
      (and
        (>= ix@30@01 0)
        (and
          (< ix@30@01 n@27@01)
          (and
            (>= jx@31@01 0)
            (and (< jx@31@01 n@27@01) (not (= ix@30@01 jx@31@01))))))))
  :pattern ((rcvr%limited $Snap.unit ix@30@01 ix@30@01) (rcvr%limited $Snap.unit jx@31@01 jx@31@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@31@10@31@118-aux|)))
(assert (forall ((ix@30@01 Int) (jx@31@01 Int)) (!
  (=>
    (and
      (>= ix@30@01 0)
      (and
        (< ix@30@01 n@27@01)
        (and
          (>= jx@31@01 0)
          (and (< jx@31@01 n@27@01) (not (= ix@30@01 jx@31@01))))))
    (not
      (= (rcvr $Snap.unit ix@30@01 ix@30@01) (rcvr $Snap.unit jx@31@01 jx@31@01))))
  :pattern ((rcvr%limited $Snap.unit ix@30@01 ix@30@01) (rcvr%limited $Snap.unit jx@31@01 jx@31@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@31@10@31@118|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int, j: Int ::0 <= i && (i < n && j == i) ==>
;     acc(rcvr(i, j).f, prm(i)))
(declare-const i@32@01 Int)
(declare-const j@33@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i && (i < n && j == i)
; [eval] 0 <= i
(push) ; 4
; [then-branch: 19 | !(0 <= i@32@01) | live]
; [else-branch: 19 | 0 <= i@32@01 | live]
(push) ; 5
; [then-branch: 19 | !(0 <= i@32@01)]
(assert (not (<= 0 i@32@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 19 | 0 <= i@32@01]
(assert (<= 0 i@32@01))
; [eval] i < n
(push) ; 6
; [then-branch: 20 | !(i@32@01 < n@27@01) | live]
; [else-branch: 20 | i@32@01 < n@27@01 | live]
(push) ; 7
; [then-branch: 20 | !(i@32@01 < n@27@01)]
(assert (not (< i@32@01 n@27@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 20 | i@32@01 < n@27@01]
(assert (< i@32@01 n@27@01))
; [eval] j == i
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (< i@32@01 n@27@01) (not (< i@32@01 n@27@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@32@01)
  (and (<= 0 i@32@01) (or (< i@32@01 n@27@01) (not (< i@32@01 n@27@01))))))
(assert (or (<= 0 i@32@01) (not (<= 0 i@32@01))))
(assert (and (<= 0 i@32@01) (and (< i@32@01 n@27@01) (= j@33@01 i@32@01))))
; [eval] rcvr(i, j)
(push) ; 4
(assert (rcvr%precondition $Snap.unit i@32@01 j@33@01))
(pop) ; 4
; Joined path conditions
(assert (rcvr%precondition $Snap.unit i@32@01 j@33@01))
; [eval] prm(i)
(push) ; 4
(assert (prm%precondition $Snap.unit i@32@01))
(pop) ; 4
; Joined path conditions
(assert (prm%precondition $Snap.unit i@32@01))
(pop) ; 3
(declare-const $t@34@01 $FVF<f>)
(declare-fun inv@35@01 ($Ref) Int)
(declare-fun img@36@01 ($Ref) Bool)
(declare-fun inv@37@01 ($Ref) Int)
(declare-fun img@38@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@32@01 Int) (j@33@01 Int)) (!
  (=>
    (and (<= 0 i@32@01) (and (< i@32@01 n@27@01) (= j@33@01 i@32@01)))
    (and
      (=>
        (<= 0 i@32@01)
        (and (<= 0 i@32@01) (or (< i@32@01 n@27@01) (not (< i@32@01 n@27@01)))))
      (or (<= 0 i@32@01) (not (<= 0 i@32@01)))
      (rcvr%precondition $Snap.unit i@32@01 j@33@01)
      (prm%precondition $Snap.unit i@32@01)))
  :pattern ((rcvr $Snap.unit i@32@01 j@33@01))
  :qid |f-aux|)))
(push) ; 3
(assert (not (forall ((i@32@01 Int) (j@33@01 Int)) (!
  (=>
    (and
      (=>
        (and (<= 0 i@32@01) (and (< i@32@01 n@27@01) (= j@33@01 i@32@01)))
        (and
          (prm%precondition $Snap.unit i@32@01)
          (=>
            (not (= (prm $Snap.unit i@32@01) $Perm.No))
            (prm%precondition $Snap.unit i@32@01))))
      (and (<= 0 i@32@01) (and (< i@32@01 n@27@01) (= j@33@01 i@32@01))))
    (or
      (= (prm $Snap.unit i@32@01) $Perm.No)
      (< $Perm.No (prm $Snap.unit i@32@01))))
  
  :qid |quant-u-16588|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((i1@32@01 Int) (j1@33@01 Int) (i2@32@01 Int) (j2@33@01 Int)) (!
  (and
    (=>
      (and (<= 0 i1@32@01) (and (< i1@32@01 n@27@01) (= j1@33@01 i1@32@01)))
      (prm%precondition $Snap.unit i1@32@01))
    (=>
      (and
        (and (<= 0 i1@32@01) (and (< i1@32@01 n@27@01) (= j1@33@01 i1@32@01)))
        (< $Perm.No (prm $Snap.unit i1@32@01)))
      (and
        (=>
          (and (<= 0 i2@32@01) (and (< i2@32@01 n@27@01) (= j2@33@01 i2@32@01)))
          (prm%precondition $Snap.unit i2@32@01))
        (=>
          (and
            (and
              (<= 0 i2@32@01)
              (and (< i2@32@01 n@27@01) (= j2@33@01 i2@32@01)))
            (< $Perm.No (prm $Snap.unit i2@32@01)))
          (and
            (rcvr%precondition $Snap.unit i1@32@01 j1@33@01)
            (rcvr%precondition $Snap.unit i2@32@01 j2@33@01))))))
  
  :qid |f-rcvrInj|)))
(push) ; 3
(assert (not (forall ((i1@32@01 Int) (j1@33@01 Int) (i2@32@01 Int) (j2@33@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 i1@32@01) (and (< i1@32@01 n@27@01) (= j1@33@01 i1@32@01)))
        (< $Perm.No (prm $Snap.unit i1@32@01)))
      (and
        (and (<= 0 i2@32@01) (and (< i2@32@01 n@27@01) (= j2@33@01 i2@32@01)))
        (< $Perm.No (prm $Snap.unit i2@32@01)))
      (= (rcvr $Snap.unit i1@32@01 j1@33@01) (rcvr $Snap.unit i2@32@01 j2@33@01)))
    (and (= i1@32@01 i2@32@01) (= j1@33@01 j2@33@01)))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@32@01 Int) (j@33@01 Int)) (!
  (and
    (=>
      (and (<= 0 i@32@01) (and (< i@32@01 n@27@01) (= j@33@01 i@32@01)))
      (prm%precondition $Snap.unit i@32@01))
    (=>
      (and
        (and (<= 0 i@32@01) (and (< i@32@01 n@27@01) (= j@33@01 i@32@01)))
        (< $Perm.No (prm $Snap.unit i@32@01)))
      (and
        (and
          (rcvr%precondition $Snap.unit i@32@01 j@33@01)
          (=>
            (= (inv@35@01 (rcvr $Snap.unit i@32@01 j@33@01)) i@32@01)
            (rcvr%precondition $Snap.unit i@32@01 j@33@01)))
        (=>
          (and
            (= (inv@35@01 (rcvr $Snap.unit i@32@01 j@33@01)) i@32@01)
            (= (inv@37@01 (rcvr $Snap.unit i@32@01 j@33@01)) j@33@01))
          (and
            (rcvr%precondition $Snap.unit i@32@01 j@33@01)
            (=>
              (img@36@01 (rcvr $Snap.unit i@32@01 j@33@01))
              (rcvr%precondition $Snap.unit i@32@01 j@33@01)))))))
  :pattern ((rcvr $Snap.unit i@32@01 j@33@01))
  :qid |quant-u-16589|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (and
        (and (img@36@01 r) (img@38@01 r))
        (and
          (<= 0 (inv@35@01 r))
          (and (< (inv@35@01 r) n@27@01) (= (inv@37@01 r) (inv@35@01 r)))))
      (prm%precondition $Snap.unit (inv@35@01 r)))
    (=>
      (and
        (and (img@36@01 r) (img@38@01 r))
        (and
          (and
            (<= 0 (inv@35@01 r))
            (and (< (inv@35@01 r) n@27@01) (= (inv@37@01 r) (inv@35@01 r))))
          (< $Perm.No (prm $Snap.unit (inv@35@01 r)))))
      (rcvr%precondition $Snap.unit (inv@35@01 r) (inv@37@01 r))))
  :pattern ((inv@35@01 r))
  :pattern ((inv@37@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((i@32@01 Int) (j@33@01 Int)) (!
  (=>
    (and
      (and (<= 0 i@32@01) (and (< i@32@01 n@27@01) (= j@33@01 i@32@01)))
      (< $Perm.No (prm $Snap.unit i@32@01)))
    (and
      (and
        (= (inv@35@01 (rcvr $Snap.unit i@32@01 j@33@01)) i@32@01)
        (= (inv@37@01 (rcvr $Snap.unit i@32@01 j@33@01)) j@33@01))
      (and
        (img@36@01 (rcvr $Snap.unit i@32@01 j@33@01))
        (img@38@01 (rcvr $Snap.unit i@32@01 j@33@01)))))
  :pattern ((rcvr $Snap.unit i@32@01 j@33@01))
  :qid |quant-u-16589|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (img@36@01 r) (img@38@01 r))
      (and
        (and
          (<= 0 (inv@35@01 r))
          (and (< (inv@35@01 r) n@27@01) (= (inv@37@01 r) (inv@35@01 r))))
        (< $Perm.No (prm $Snap.unit (inv@35@01 r)))))
    (= (rcvr $Snap.unit (inv@35@01 r) (inv@37@01 r)) r))
  :pattern ((inv@35@01 r))
  :pattern ((inv@37@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i@32@01 Int) (j@33@01 Int)) (!
  (<= $Perm.No (prm $Snap.unit i@32@01))
  :pattern ((rcvr $Snap.unit i@32@01 j@33@01))
  :qid |f-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i@32@01 Int) (j@33@01 Int)) (!
  (<= (prm $Snap.unit i@32@01) $Perm.Write)
  :pattern ((rcvr $Snap.unit i@32@01 j@33@01))
  :qid |f-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i@32@01 Int) (j@33@01 Int)) (!
  (=>
    (and
      (and (<= 0 i@32@01) (and (< i@32@01 n@27@01) (= j@33@01 i@32@01)))
      (< $Perm.No (prm $Snap.unit i@32@01)))
    (not (= (rcvr $Snap.unit i@32@01 j@33@01) $Ref.null)))
  :pattern ((rcvr $Snap.unit i@32@01 j@33@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert (forall i1: Int, i2: Int ::
;     { rcvr(i1, i1), rcvr(i2, i2) }
;     0 <= i1 && (i1 < n && (0 <= i2 && (i2 < n && i1 != i2))) ==>
;     rcvr(i1, i1) != rcvr(i2, i2))
; [eval] (forall i1: Int, i2: Int :: { rcvr(i1, i1), rcvr(i2, i2) } 0 <= i1 && (i1 < n && (0 <= i2 && (i2 < n && i1 != i2))) ==> rcvr(i1, i1) != rcvr(i2, i2))
(declare-const i1@39@01 Int)
(declare-const i2@40@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i1 && (i1 < n && (0 <= i2 && (i2 < n && i1 != i2))) ==> rcvr(i1, i1) != rcvr(i2, i2)
; [eval] 0 <= i1 && (i1 < n && (0 <= i2 && (i2 < n && i1 != i2)))
; [eval] 0 <= i1
(push) ; 4
; [then-branch: 21 | !(0 <= i1@39@01) | live]
; [else-branch: 21 | 0 <= i1@39@01 | live]
(push) ; 5
; [then-branch: 21 | !(0 <= i1@39@01)]
(assert (not (<= 0 i1@39@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 21 | 0 <= i1@39@01]
(assert (<= 0 i1@39@01))
; [eval] i1 < n
(push) ; 6
; [then-branch: 22 | !(i1@39@01 < n@27@01) | live]
; [else-branch: 22 | i1@39@01 < n@27@01 | live]
(push) ; 7
; [then-branch: 22 | !(i1@39@01 < n@27@01)]
(assert (not (< i1@39@01 n@27@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 22 | i1@39@01 < n@27@01]
(assert (< i1@39@01 n@27@01))
; [eval] 0 <= i2
(push) ; 8
; [then-branch: 23 | !(0 <= i2@40@01) | live]
; [else-branch: 23 | 0 <= i2@40@01 | live]
(push) ; 9
; [then-branch: 23 | !(0 <= i2@40@01)]
(assert (not (<= 0 i2@40@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 23 | 0 <= i2@40@01]
(assert (<= 0 i2@40@01))
; [eval] i2 < n
(push) ; 10
; [then-branch: 24 | !(i2@40@01 < n@27@01) | live]
; [else-branch: 24 | i2@40@01 < n@27@01 | live]
(push) ; 11
; [then-branch: 24 | !(i2@40@01 < n@27@01)]
(assert (not (< i2@40@01 n@27@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 24 | i2@40@01 < n@27@01]
(assert (< i2@40@01 n@27@01))
; [eval] i1 != i2
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< i2@40@01 n@27@01) (not (< i2@40@01 n@27@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i2@40@01)
  (and (<= 0 i2@40@01) (or (< i2@40@01 n@27@01) (not (< i2@40@01 n@27@01))))))
(assert (or (<= 0 i2@40@01) (not (<= 0 i2@40@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i1@39@01 n@27@01)
  (and
    (< i1@39@01 n@27@01)
    (=>
      (<= 0 i2@40@01)
      (and (<= 0 i2@40@01) (or (< i2@40@01 n@27@01) (not (< i2@40@01 n@27@01)))))
    (or (<= 0 i2@40@01) (not (<= 0 i2@40@01))))))
(assert (or (< i1@39@01 n@27@01) (not (< i1@39@01 n@27@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i1@39@01)
  (and
    (<= 0 i1@39@01)
    (=>
      (< i1@39@01 n@27@01)
      (and
        (< i1@39@01 n@27@01)
        (=>
          (<= 0 i2@40@01)
          (and
            (<= 0 i2@40@01)
            (or (< i2@40@01 n@27@01) (not (< i2@40@01 n@27@01)))))
        (or (<= 0 i2@40@01) (not (<= 0 i2@40@01)))))
    (or (< i1@39@01 n@27@01) (not (< i1@39@01 n@27@01))))))
(assert (or (<= 0 i1@39@01) (not (<= 0 i1@39@01))))
(push) ; 4
; [then-branch: 25 | 0 <= i1@39@01 && i1@39@01 < n@27@01 && 0 <= i2@40@01 && i2@40@01 < n@27@01 && i1@39@01 != i2@40@01 | live]
; [else-branch: 25 | !(0 <= i1@39@01 && i1@39@01 < n@27@01 && 0 <= i2@40@01 && i2@40@01 < n@27@01 && i1@39@01 != i2@40@01) | live]
(push) ; 5
; [then-branch: 25 | 0 <= i1@39@01 && i1@39@01 < n@27@01 && 0 <= i2@40@01 && i2@40@01 < n@27@01 && i1@39@01 != i2@40@01]
(assert (and
  (<= 0 i1@39@01)
  (and
    (< i1@39@01 n@27@01)
    (and (<= 0 i2@40@01) (and (< i2@40@01 n@27@01) (not (= i1@39@01 i2@40@01)))))))
; [eval] rcvr(i1, i1) != rcvr(i2, i2)
; [eval] rcvr(i1, i1)
(push) ; 6
(assert (rcvr%precondition $Snap.unit i1@39@01 i1@39@01))
(pop) ; 6
; Joined path conditions
(assert (rcvr%precondition $Snap.unit i1@39@01 i1@39@01))
; [eval] rcvr(i2, i2)
(push) ; 6
(assert (rcvr%precondition $Snap.unit i2@40@01 i2@40@01))
(pop) ; 6
; Joined path conditions
(assert (rcvr%precondition $Snap.unit i2@40@01 i2@40@01))
(pop) ; 5
(push) ; 5
; [else-branch: 25 | !(0 <= i1@39@01 && i1@39@01 < n@27@01 && 0 <= i2@40@01 && i2@40@01 < n@27@01 && i1@39@01 != i2@40@01)]
(assert (not
  (and
    (<= 0 i1@39@01)
    (and
      (< i1@39@01 n@27@01)
      (and
        (<= 0 i2@40@01)
        (and (< i2@40@01 n@27@01) (not (= i1@39@01 i2@40@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 i1@39@01)
    (and
      (< i1@39@01 n@27@01)
      (and
        (<= 0 i2@40@01)
        (and (< i2@40@01 n@27@01) (not (= i1@39@01 i2@40@01))))))
  (and
    (<= 0 i1@39@01)
    (< i1@39@01 n@27@01)
    (<= 0 i2@40@01)
    (< i2@40@01 n@27@01)
    (not (= i1@39@01 i2@40@01))
    (rcvr%precondition $Snap.unit i1@39@01 i1@39@01)
    (rcvr%precondition $Snap.unit i2@40@01 i2@40@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i1@39@01)
      (and
        (< i1@39@01 n@27@01)
        (and
          (<= 0 i2@40@01)
          (and (< i2@40@01 n@27@01) (not (= i1@39@01 i2@40@01)))))))
  (and
    (<= 0 i1@39@01)
    (and
      (< i1@39@01 n@27@01)
      (and
        (<= 0 i2@40@01)
        (and (< i2@40@01 n@27@01) (not (= i1@39@01 i2@40@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i1@39@01 Int) (i2@40@01 Int)) (!
  (and
    (=>
      (<= 0 i1@39@01)
      (and
        (<= 0 i1@39@01)
        (=>
          (< i1@39@01 n@27@01)
          (and
            (< i1@39@01 n@27@01)
            (=>
              (<= 0 i2@40@01)
              (and
                (<= 0 i2@40@01)
                (or (< i2@40@01 n@27@01) (not (< i2@40@01 n@27@01)))))
            (or (<= 0 i2@40@01) (not (<= 0 i2@40@01)))))
        (or (< i1@39@01 n@27@01) (not (< i1@39@01 n@27@01)))))
    (or (<= 0 i1@39@01) (not (<= 0 i1@39@01)))
    (=>
      (and
        (<= 0 i1@39@01)
        (and
          (< i1@39@01 n@27@01)
          (and
            (<= 0 i2@40@01)
            (and (< i2@40@01 n@27@01) (not (= i1@39@01 i2@40@01))))))
      (and
        (<= 0 i1@39@01)
        (< i1@39@01 n@27@01)
        (<= 0 i2@40@01)
        (< i2@40@01 n@27@01)
        (not (= i1@39@01 i2@40@01))
        (rcvr%precondition $Snap.unit i1@39@01 i1@39@01)
        (rcvr%precondition $Snap.unit i2@40@01 i2@40@01)))
    (or
      (not
        (and
          (<= 0 i1@39@01)
          (and
            (< i1@39@01 n@27@01)
            (and
              (<= 0 i2@40@01)
              (and (< i2@40@01 n@27@01) (not (= i1@39@01 i2@40@01)))))))
      (and
        (<= 0 i1@39@01)
        (and
          (< i1@39@01 n@27@01)
          (and
            (<= 0 i2@40@01)
            (and (< i2@40@01 n@27@01) (not (= i1@39@01 i2@40@01))))))))
  :pattern ((rcvr%limited $Snap.unit i1@39@01 i1@39@01) (rcvr%limited $Snap.unit i2@40@01 i2@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@35@10@37@35-aux|)))
(assert (forall ((i1@39@01 Int) (i2@40@01 Int)) (!
  (=>
    (and
      (<= 0 i1@39@01)
      (and
        (< i1@39@01 n@27@01)
        (and
          (<= 0 i2@40@01)
          (and (< i2@40@01 n@27@01) (not (= i1@39@01 i2@40@01))))))
    (and
      (rcvr%precondition $Snap.unit i1@39@01 i1@39@01)
      (rcvr%precondition $Snap.unit i2@40@01 i2@40@01)))
  :pattern ((rcvr%limited $Snap.unit i1@39@01 i1@39@01) (rcvr%limited $Snap.unit i2@40@01 i2@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@35@10@37@35_precondition|)))
(push) ; 3
(assert (not (forall ((i1@39@01 Int) (i2@40@01 Int)) (!
  (=>
    (and
      (=>
        (and
          (<= 0 i1@39@01)
          (and
            (< i1@39@01 n@27@01)
            (and
              (<= 0 i2@40@01)
              (and (< i2@40@01 n@27@01) (not (= i1@39@01 i2@40@01))))))
        (and
          (rcvr%precondition $Snap.unit i1@39@01 i1@39@01)
          (rcvr%precondition $Snap.unit i2@40@01 i2@40@01)))
      (and
        (<= 0 i1@39@01)
        (and
          (< i1@39@01 n@27@01)
          (and
            (<= 0 i2@40@01)
            (and (< i2@40@01 n@27@01) (not (= i1@39@01 i2@40@01)))))))
    (not
      (= (rcvr $Snap.unit i1@39@01 i1@39@01) (rcvr $Snap.unit i2@40@01 i2@40@01))))
  :pattern ((rcvr%limited $Snap.unit i1@39@01 i1@39@01) (rcvr%limited $Snap.unit i2@40@01 i2@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@35@10@37@35|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@39@01 Int) (i2@40@01 Int)) (!
  (=>
    (and
      (<= 0 i1@39@01)
      (and
        (< i1@39@01 n@27@01)
        (and
          (<= 0 i2@40@01)
          (and (< i2@40@01 n@27@01) (not (= i1@39@01 i2@40@01))))))
    (not
      (= (rcvr $Snap.unit i1@39@01 i1@39@01) (rcvr $Snap.unit i2@40@01 i2@40@01))))
  :pattern ((rcvr%limited $Snap.unit i1@39@01 i1@39@01) (rcvr%limited $Snap.unit i2@40@01 i2@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@35@10@37@35|)))
; [exec]
; exhale (forall i: Int, j: Int ::0 <= i && (i < n && i == j) ==>
;     acc(rcvr(i, j).f, prm(i)))
(declare-const i@41@01 Int)
(declare-const j@42@01 Int)
(push) ; 3
; [eval] 0 <= i && (i < n && i == j)
; [eval] 0 <= i
(push) ; 4
; [then-branch: 26 | !(0 <= i@41@01) | live]
; [else-branch: 26 | 0 <= i@41@01 | live]
(push) ; 5
; [then-branch: 26 | !(0 <= i@41@01)]
(assert (not (<= 0 i@41@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 26 | 0 <= i@41@01]
(assert (<= 0 i@41@01))
; [eval] i < n
(push) ; 6
; [then-branch: 27 | !(i@41@01 < n@27@01) | live]
; [else-branch: 27 | i@41@01 < n@27@01 | live]
(push) ; 7
; [then-branch: 27 | !(i@41@01 < n@27@01)]
(assert (not (< i@41@01 n@27@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 27 | i@41@01 < n@27@01]
(assert (< i@41@01 n@27@01))
; [eval] i == j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (< i@41@01 n@27@01) (not (< i@41@01 n@27@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@41@01)
  (and (<= 0 i@41@01) (or (< i@41@01 n@27@01) (not (< i@41@01 n@27@01))))))
(assert (or (<= 0 i@41@01) (not (<= 0 i@41@01))))
(assert (and (<= 0 i@41@01) (and (< i@41@01 n@27@01) (= i@41@01 j@42@01))))
; [eval] prm(i)
(push) ; 4
(assert (prm%precondition $Snap.unit i@41@01))
(pop) ; 4
; Joined path conditions
(assert (prm%precondition $Snap.unit i@41@01))
; [eval] rcvr(i, j)
(push) ; 4
(assert (rcvr%precondition $Snap.unit i@41@01 j@42@01))
(pop) ; 4
; Joined path conditions
(assert (rcvr%precondition $Snap.unit i@41@01 j@42@01))
(pop) ; 3
(declare-fun inv@43@01 ($Ref) Int)
(declare-fun img@44@01 ($Ref) Bool)
(declare-fun inv@45@01 ($Ref) Int)
(declare-fun img@46@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@41@01 Int) (j@42@01 Int)) (!
  (=>
    (and (<= 0 i@41@01) (and (< i@41@01 n@27@01) (= i@41@01 j@42@01)))
    (and
      (=>
        (<= 0 i@41@01)
        (and (<= 0 i@41@01) (or (< i@41@01 n@27@01) (not (< i@41@01 n@27@01)))))
      (or (<= 0 i@41@01) (not (<= 0 i@41@01)))
      (prm%precondition $Snap.unit i@41@01)
      (rcvr%precondition $Snap.unit i@41@01 j@42@01)))
  :pattern ((rcvr $Snap.unit i@41@01 j@42@01))
  :qid |f-aux|)))
(push) ; 3
(assert (not (forall ((i@41@01 Int) (j@42@01 Int)) (!
  (=>
    (and
      (=>
        (and (<= 0 i@41@01) (and (< i@41@01 n@27@01) (= i@41@01 j@42@01)))
        (and
          (prm%precondition $Snap.unit i@41@01)
          (=>
            (not (= (prm $Snap.unit i@41@01) $Perm.No))
            (prm%precondition $Snap.unit i@41@01))))
      (and (<= 0 i@41@01) (and (< i@41@01 n@27@01) (= i@41@01 j@42@01))))
    (or
      (= (prm $Snap.unit i@41@01) $Perm.No)
      (< $Perm.No (prm $Snap.unit i@41@01))))
  
  :qid |quant-u-16590|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((i1@41@01 Int) (j1@42@01 Int) (i2@41@01 Int) (j2@42@01 Int)) (!
  (and
    (=>
      (and (<= 0 i1@41@01) (and (< i1@41@01 n@27@01) (= i1@41@01 j1@42@01)))
      (prm%precondition $Snap.unit i1@41@01))
    (=>
      (and
        (and (<= 0 i1@41@01) (and (< i1@41@01 n@27@01) (= i1@41@01 j1@42@01)))
        (< $Perm.No (prm $Snap.unit i1@41@01)))
      (and
        (=>
          (and (<= 0 i2@41@01) (and (< i2@41@01 n@27@01) (= i2@41@01 j2@42@01)))
          (prm%precondition $Snap.unit i2@41@01))
        (=>
          (and
            (and
              (<= 0 i2@41@01)
              (and (< i2@41@01 n@27@01) (= i2@41@01 j2@42@01)))
            (< $Perm.No (prm $Snap.unit i2@41@01)))
          (and
            (rcvr%precondition $Snap.unit i1@41@01 j1@42@01)
            (rcvr%precondition $Snap.unit i2@41@01 j2@42@01))))))
  
  :qid |f-rcvrInj|)))
(push) ; 3
(assert (not (forall ((i1@41@01 Int) (j1@42@01 Int) (i2@41@01 Int) (j2@42@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 i1@41@01) (and (< i1@41@01 n@27@01) (= i1@41@01 j1@42@01)))
        (< $Perm.No (prm $Snap.unit i1@41@01)))
      (and
        (and (<= 0 i2@41@01) (and (< i2@41@01 n@27@01) (= i2@41@01 j2@42@01)))
        (< $Perm.No (prm $Snap.unit i2@41@01)))
      (= (rcvr $Snap.unit i1@41@01 j1@42@01) (rcvr $Snap.unit i2@41@01 j2@42@01)))
    (and (= i1@41@01 i2@41@01) (= j1@42@01 j2@42@01)))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@41@01 Int) (j@42@01 Int)) (!
  (and
    (=>
      (and (<= 0 i@41@01) (and (< i@41@01 n@27@01) (= i@41@01 j@42@01)))
      (prm%precondition $Snap.unit i@41@01))
    (=>
      (and
        (and (<= 0 i@41@01) (and (< i@41@01 n@27@01) (= i@41@01 j@42@01)))
        (< $Perm.No (prm $Snap.unit i@41@01)))
      (and
        (and
          (rcvr%precondition $Snap.unit i@41@01 j@42@01)
          (=>
            (= (inv@43@01 (rcvr $Snap.unit i@41@01 j@42@01)) i@41@01)
            (rcvr%precondition $Snap.unit i@41@01 j@42@01)))
        (=>
          (and
            (= (inv@43@01 (rcvr $Snap.unit i@41@01 j@42@01)) i@41@01)
            (= (inv@45@01 (rcvr $Snap.unit i@41@01 j@42@01)) j@42@01))
          (and
            (rcvr%precondition $Snap.unit i@41@01 j@42@01)
            (=>
              (img@44@01 (rcvr $Snap.unit i@41@01 j@42@01))
              (rcvr%precondition $Snap.unit i@41@01 j@42@01)))))))
  :pattern ((rcvr $Snap.unit i@41@01 j@42@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (and
        (and (img@44@01 r) (img@46@01 r))
        (and
          (<= 0 (inv@43@01 r))
          (and (< (inv@43@01 r) n@27@01) (= (inv@43@01 r) (inv@45@01 r)))))
      (prm%precondition $Snap.unit (inv@43@01 r)))
    (=>
      (and
        (and (img@44@01 r) (img@46@01 r))
        (and
          (and
            (<= 0 (inv@43@01 r))
            (and (< (inv@43@01 r) n@27@01) (= (inv@43@01 r) (inv@45@01 r))))
          (< $Perm.No (prm $Snap.unit (inv@43@01 r)))))
      (rcvr%precondition $Snap.unit (inv@43@01 r) (inv@45@01 r))))
  :pattern ((inv@43@01 r))
  :pattern ((inv@45@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((i@41@01 Int) (j@42@01 Int)) (!
  (=>
    (and
      (and (<= 0 i@41@01) (and (< i@41@01 n@27@01) (= i@41@01 j@42@01)))
      (< $Perm.No (prm $Snap.unit i@41@01)))
    (and
      (and
        (= (inv@43@01 (rcvr $Snap.unit i@41@01 j@42@01)) i@41@01)
        (= (inv@45@01 (rcvr $Snap.unit i@41@01 j@42@01)) j@42@01))
      (and
        (img@44@01 (rcvr $Snap.unit i@41@01 j@42@01))
        (img@46@01 (rcvr $Snap.unit i@41@01 j@42@01)))))
  :pattern ((rcvr $Snap.unit i@41@01 j@42@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (img@44@01 r) (img@46@01 r))
      (and
        (and
          (<= 0 (inv@43@01 r))
          (and (< (inv@43@01 r) n@27@01) (= (inv@43@01 r) (inv@45@01 r))))
        (< $Perm.No (prm $Snap.unit (inv@43@01 r)))))
    (= (rcvr $Snap.unit (inv@43@01 r) (inv@45@01 r)) r))
  :pattern ((inv@43@01 r))
  :pattern ((inv@45@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@47@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (<= 0 (inv@43@01 r))
        (and (< (inv@43@01 r) n@27@01) (= (inv@43@01 r) (inv@45@01 r))))
      (and (img@44@01 r) (img@46@01 r))
      (= r (rcvr $Snap.unit (inv@43@01 r) (inv@45@01 r))))
    ($Perm.min
      (ite
        (and
          (and (img@36@01 r) (img@38@01 r))
          (and
            (<= 0 (inv@35@01 r))
            (and (< (inv@35@01 r) n@27@01) (= (inv@37@01 r) (inv@35@01 r)))))
        (prm $Snap.unit (inv@35@01 r))
        $Perm.No)
      (prm $Snap.unit (inv@43@01 r)))
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
          (and (img@36@01 r) (img@38@01 r))
          (and
            (<= 0 (inv@35@01 r))
            (and (< (inv@35@01 r) n@27@01) (= (inv@37@01 r) (inv@35@01 r)))))
        (prm $Snap.unit (inv@35@01 r))
        $Perm.No)
      (pTaken@47@01 r))
    $Perm.No)
  
  :qid |quant-u-16592|))))
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
      (and
        (<= 0 (inv@43@01 r))
        (and (< (inv@43@01 r) n@27@01) (= (inv@43@01 r) (inv@45@01 r))))
      (and (img@44@01 r) (img@46@01 r))
      (= r (rcvr $Snap.unit (inv@43@01 r) (inv@45@01 r))))
    (= (- (prm $Snap.unit (inv@43@01 r)) (pTaken@47@01 r)) $Perm.No))
  
  :qid |quant-u-16593|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale (forall i: Int, j: Int ::0 <= i && (i < n && i == j) ==>
;     acc(rcvr(i, j).f, prm(i)))
(declare-const i@48@01 Int)
(declare-const j@49@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i && (i < n && i == j)
; [eval] 0 <= i
(push) ; 4
; [then-branch: 28 | !(0 <= i@48@01) | live]
; [else-branch: 28 | 0 <= i@48@01 | live]
(push) ; 5
; [then-branch: 28 | !(0 <= i@48@01)]
(assert (not (<= 0 i@48@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 28 | 0 <= i@48@01]
(assert (<= 0 i@48@01))
; [eval] i < n
(push) ; 6
; [then-branch: 29 | !(i@48@01 < n@27@01) | live]
; [else-branch: 29 | i@48@01 < n@27@01 | live]
(push) ; 7
; [then-branch: 29 | !(i@48@01 < n@27@01)]
(assert (not (< i@48@01 n@27@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 29 | i@48@01 < n@27@01]
(assert (< i@48@01 n@27@01))
; [eval] i == j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (< i@48@01 n@27@01) (not (< i@48@01 n@27@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@48@01)
  (and (<= 0 i@48@01) (or (< i@48@01 n@27@01) (not (< i@48@01 n@27@01))))))
(assert (or (<= 0 i@48@01) (not (<= 0 i@48@01))))
(assert (and (<= 0 i@48@01) (and (< i@48@01 n@27@01) (= i@48@01 j@49@01))))
; [eval] prm(i)
(push) ; 4
(assert (prm%precondition $Snap.unit i@48@01))
(pop) ; 4
; Joined path conditions
(assert (prm%precondition $Snap.unit i@48@01))
; [eval] rcvr(i, j)
(push) ; 4
(assert (rcvr%precondition $Snap.unit i@48@01 j@49@01))
(pop) ; 4
; Joined path conditions
(assert (rcvr%precondition $Snap.unit i@48@01 j@49@01))
(pop) ; 3
(declare-fun inv@50@01 ($Ref) Int)
(declare-fun img@51@01 ($Ref) Bool)
(declare-fun inv@52@01 ($Ref) Int)
(declare-fun img@53@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@48@01 Int) (j@49@01 Int)) (!
  (=>
    (and (<= 0 i@48@01) (and (< i@48@01 n@27@01) (= i@48@01 j@49@01)))
    (and
      (=>
        (<= 0 i@48@01)
        (and (<= 0 i@48@01) (or (< i@48@01 n@27@01) (not (< i@48@01 n@27@01)))))
      (or (<= 0 i@48@01) (not (<= 0 i@48@01)))
      (prm%precondition $Snap.unit i@48@01)
      (rcvr%precondition $Snap.unit i@48@01 j@49@01)))
  :pattern ((rcvr $Snap.unit i@48@01 j@49@01))
  :qid |f-aux|)))
(push) ; 3
(assert (not (forall ((i@48@01 Int) (j@49@01 Int)) (!
  (=>
    (and
      (=>
        (and (<= 0 i@48@01) (and (< i@48@01 n@27@01) (= i@48@01 j@49@01)))
        (and
          (prm%precondition $Snap.unit i@48@01)
          (=>
            (not (= (prm $Snap.unit i@48@01) $Perm.No))
            (prm%precondition $Snap.unit i@48@01))))
      (and (<= 0 i@48@01) (and (< i@48@01 n@27@01) (= i@48@01 j@49@01))))
    (or
      (= (prm $Snap.unit i@48@01) $Perm.No)
      (< $Perm.No (prm $Snap.unit i@48@01))))
  
  :qid |quant-u-16594|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((i1@48@01 Int) (j1@49@01 Int) (i2@48@01 Int) (j2@49@01 Int)) (!
  (and
    (=>
      (and (<= 0 i1@48@01) (and (< i1@48@01 n@27@01) (= i1@48@01 j1@49@01)))
      (prm%precondition $Snap.unit i1@48@01))
    (=>
      (and
        (and (<= 0 i1@48@01) (and (< i1@48@01 n@27@01) (= i1@48@01 j1@49@01)))
        (< $Perm.No (prm $Snap.unit i1@48@01)))
      (and
        (=>
          (and (<= 0 i2@48@01) (and (< i2@48@01 n@27@01) (= i2@48@01 j2@49@01)))
          (prm%precondition $Snap.unit i2@48@01))
        (=>
          (and
            (and
              (<= 0 i2@48@01)
              (and (< i2@48@01 n@27@01) (= i2@48@01 j2@49@01)))
            (< $Perm.No (prm $Snap.unit i2@48@01)))
          (and
            (rcvr%precondition $Snap.unit i1@48@01 j1@49@01)
            (rcvr%precondition $Snap.unit i2@48@01 j2@49@01))))))
  
  :qid |f-rcvrInj|)))
(push) ; 3
(assert (not (forall ((i1@48@01 Int) (j1@49@01 Int) (i2@48@01 Int) (j2@49@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 i1@48@01) (and (< i1@48@01 n@27@01) (= i1@48@01 j1@49@01)))
        (< $Perm.No (prm $Snap.unit i1@48@01)))
      (and
        (and (<= 0 i2@48@01) (and (< i2@48@01 n@27@01) (= i2@48@01 j2@49@01)))
        (< $Perm.No (prm $Snap.unit i2@48@01)))
      (= (rcvr $Snap.unit i1@48@01 j1@49@01) (rcvr $Snap.unit i2@48@01 j2@49@01)))
    (and (= i1@48@01 i2@48@01) (= j1@49@01 j2@49@01)))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@48@01 Int) (j@49@01 Int)) (!
  (and
    (=>
      (and (<= 0 i@48@01) (and (< i@48@01 n@27@01) (= i@48@01 j@49@01)))
      (prm%precondition $Snap.unit i@48@01))
    (=>
      (and
        (and (<= 0 i@48@01) (and (< i@48@01 n@27@01) (= i@48@01 j@49@01)))
        (< $Perm.No (prm $Snap.unit i@48@01)))
      (and
        (and
          (rcvr%precondition $Snap.unit i@48@01 j@49@01)
          (=>
            (= (inv@50@01 (rcvr $Snap.unit i@48@01 j@49@01)) i@48@01)
            (rcvr%precondition $Snap.unit i@48@01 j@49@01)))
        (=>
          (and
            (= (inv@50@01 (rcvr $Snap.unit i@48@01 j@49@01)) i@48@01)
            (= (inv@52@01 (rcvr $Snap.unit i@48@01 j@49@01)) j@49@01))
          (and
            (rcvr%precondition $Snap.unit i@48@01 j@49@01)
            (=>
              (img@51@01 (rcvr $Snap.unit i@48@01 j@49@01))
              (rcvr%precondition $Snap.unit i@48@01 j@49@01)))))))
  :pattern ((rcvr $Snap.unit i@48@01 j@49@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (and
        (and (img@51@01 r) (img@53@01 r))
        (and
          (<= 0 (inv@50@01 r))
          (and (< (inv@50@01 r) n@27@01) (= (inv@50@01 r) (inv@52@01 r)))))
      (prm%precondition $Snap.unit (inv@50@01 r)))
    (=>
      (and
        (and (img@51@01 r) (img@53@01 r))
        (and
          (and
            (<= 0 (inv@50@01 r))
            (and (< (inv@50@01 r) n@27@01) (= (inv@50@01 r) (inv@52@01 r))))
          (< $Perm.No (prm $Snap.unit (inv@50@01 r)))))
      (rcvr%precondition $Snap.unit (inv@50@01 r) (inv@52@01 r))))
  :pattern ((inv@50@01 r))
  :pattern ((inv@52@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((i@48@01 Int) (j@49@01 Int)) (!
  (=>
    (and
      (and (<= 0 i@48@01) (and (< i@48@01 n@27@01) (= i@48@01 j@49@01)))
      (< $Perm.No (prm $Snap.unit i@48@01)))
    (and
      (and
        (= (inv@50@01 (rcvr $Snap.unit i@48@01 j@49@01)) i@48@01)
        (= (inv@52@01 (rcvr $Snap.unit i@48@01 j@49@01)) j@49@01))
      (and
        (img@51@01 (rcvr $Snap.unit i@48@01 j@49@01))
        (img@53@01 (rcvr $Snap.unit i@48@01 j@49@01)))))
  :pattern ((rcvr $Snap.unit i@48@01 j@49@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (img@51@01 r) (img@53@01 r))
      (and
        (and
          (<= 0 (inv@50@01 r))
          (and (< (inv@50@01 r) n@27@01) (= (inv@50@01 r) (inv@52@01 r))))
        (< $Perm.No (prm $Snap.unit (inv@50@01 r)))))
    (= (rcvr $Snap.unit (inv@50@01 r) (inv@52@01 r)) r))
  :pattern ((inv@50@01 r))
  :pattern ((inv@52@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (<= 0 (inv@50@01 r))
        (and (< (inv@50@01 r) n@27@01) (= (inv@50@01 r) (inv@52@01 r))))
      (and (img@51@01 r) (img@53@01 r))
      (= r (rcvr $Snap.unit (inv@50@01 r) (inv@52@01 r))))
    (= (prm $Snap.unit (inv@50@01 r)) $Perm.No))
  
  :qid |quant-u-16595|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const i@54@01 Int)
(declare-const j@55@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i && (i < n && i == j)
; [eval] 0 <= i
(push) ; 4
; [then-branch: 30 | !(0 <= i@54@01) | live]
; [else-branch: 30 | 0 <= i@54@01 | live]
(push) ; 5
; [then-branch: 30 | !(0 <= i@54@01)]
(assert (not (<= 0 i@54@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 30 | 0 <= i@54@01]
(assert (<= 0 i@54@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] i < n
(set-option :timeout 0)
(push) ; 6
; [then-branch: 31 | !(i@54@01 < n@27@01) | live]
; [else-branch: 31 | i@54@01 < n@27@01 | live]
(push) ; 7
; [then-branch: 31 | !(i@54@01 < n@27@01)]
(assert (not (< i@54@01 n@27@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 31 | i@54@01 < n@27@01]
(assert (< i@54@01 n@27@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] i == j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (< i@54@01 n@27@01) (not (< i@54@01 n@27@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@54@01)
  (and (<= 0 i@54@01) (or (< i@54@01 n@27@01) (not (< i@54@01 n@27@01))))))
(assert (or (<= 0 i@54@01) (not (<= 0 i@54@01))))
(assert (and (<= 0 i@54@01) (and (< i@54@01 n@27@01) (= i@54@01 j@55@01))))
; [eval] prm(i)
(set-option :timeout 0)
(push) ; 4
(assert (prm%precondition $Snap.unit i@54@01))
(pop) ; 4
; Joined path conditions
(assert (prm%precondition $Snap.unit i@54@01))
; [eval] rcvr(i, j)
(push) ; 4
(assert (rcvr%precondition $Snap.unit i@54@01 j@55@01))
(pop) ; 4
; Joined path conditions
(assert (rcvr%precondition $Snap.unit i@54@01 j@55@01))
(pop) ; 3
(declare-fun inv@56@01 ($Ref) Int)
(declare-fun img@57@01 ($Ref) Bool)
(declare-fun inv@58@01 ($Ref) Int)
(declare-fun img@59@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@54@01 Int) (j@55@01 Int)) (!
  (=>
    (and (<= 0 i@54@01) (and (< i@54@01 n@27@01) (= i@54@01 j@55@01)))
    (and
      (=>
        (<= 0 i@54@01)
        (and (<= 0 i@54@01) (or (< i@54@01 n@27@01) (not (< i@54@01 n@27@01)))))
      (or (<= 0 i@54@01) (not (<= 0 i@54@01)))
      (prm%precondition $Snap.unit i@54@01)
      (rcvr%precondition $Snap.unit i@54@01 j@55@01)))
  :pattern ((rcvr $Snap.unit i@54@01 j@55@01))
  :qid |f-aux|)))
(push) ; 3
(assert (not (forall ((i@54@01 Int) (j@55@01 Int)) (!
  (=>
    (and
      (=>
        (and (<= 0 i@54@01) (and (< i@54@01 n@27@01) (= i@54@01 j@55@01)))
        (and
          (prm%precondition $Snap.unit i@54@01)
          (=>
            (not (= (prm $Snap.unit i@54@01) $Perm.No))
            (prm%precondition $Snap.unit i@54@01))))
      (and (<= 0 i@54@01) (and (< i@54@01 n@27@01) (= i@54@01 j@55@01))))
    (or
      (= (prm $Snap.unit i@54@01) $Perm.No)
      (< $Perm.No (prm $Snap.unit i@54@01))))
  
  :qid |quant-u-16596|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((i1@54@01 Int) (j1@55@01 Int) (i2@54@01 Int) (j2@55@01 Int)) (!
  (and
    (=>
      (and (<= 0 i1@54@01) (and (< i1@54@01 n@27@01) (= i1@54@01 j1@55@01)))
      (prm%precondition $Snap.unit i1@54@01))
    (=>
      (and
        (and (<= 0 i1@54@01) (and (< i1@54@01 n@27@01) (= i1@54@01 j1@55@01)))
        (< $Perm.No (prm $Snap.unit i1@54@01)))
      (and
        (=>
          (and (<= 0 i2@54@01) (and (< i2@54@01 n@27@01) (= i2@54@01 j2@55@01)))
          (prm%precondition $Snap.unit i2@54@01))
        (=>
          (and
            (and
              (<= 0 i2@54@01)
              (and (< i2@54@01 n@27@01) (= i2@54@01 j2@55@01)))
            (< $Perm.No (prm $Snap.unit i2@54@01)))
          (and
            (rcvr%precondition $Snap.unit i1@54@01 j1@55@01)
            (rcvr%precondition $Snap.unit i2@54@01 j2@55@01))))))
  
  :qid |f-rcvrInj|)))
(push) ; 3
(assert (not (forall ((i1@54@01 Int) (j1@55@01 Int) (i2@54@01 Int) (j2@55@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 i1@54@01) (and (< i1@54@01 n@27@01) (= i1@54@01 j1@55@01)))
        (< $Perm.No (prm $Snap.unit i1@54@01)))
      (and
        (and (<= 0 i2@54@01) (and (< i2@54@01 n@27@01) (= i2@54@01 j2@55@01)))
        (< $Perm.No (prm $Snap.unit i2@54@01)))
      (= (rcvr $Snap.unit i1@54@01 j1@55@01) (rcvr $Snap.unit i2@54@01 j2@55@01)))
    (and (= i1@54@01 i2@54@01) (= j1@55@01 j2@55@01)))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@54@01 Int) (j@55@01 Int)) (!
  (and
    (=>
      (and (<= 0 i@54@01) (and (< i@54@01 n@27@01) (= i@54@01 j@55@01)))
      (prm%precondition $Snap.unit i@54@01))
    (=>
      (and
        (and (<= 0 i@54@01) (and (< i@54@01 n@27@01) (= i@54@01 j@55@01)))
        (< $Perm.No (prm $Snap.unit i@54@01)))
      (and
        (and
          (rcvr%precondition $Snap.unit i@54@01 j@55@01)
          (=>
            (= (inv@56@01 (rcvr $Snap.unit i@54@01 j@55@01)) i@54@01)
            (rcvr%precondition $Snap.unit i@54@01 j@55@01)))
        (=>
          (and
            (= (inv@56@01 (rcvr $Snap.unit i@54@01 j@55@01)) i@54@01)
            (= (inv@58@01 (rcvr $Snap.unit i@54@01 j@55@01)) j@55@01))
          (and
            (rcvr%precondition $Snap.unit i@54@01 j@55@01)
            (=>
              (img@57@01 (rcvr $Snap.unit i@54@01 j@55@01))
              (rcvr%precondition $Snap.unit i@54@01 j@55@01)))))))
  :pattern ((rcvr $Snap.unit i@54@01 j@55@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (and
        (and (img@57@01 r) (img@59@01 r))
        (and
          (<= 0 (inv@56@01 r))
          (and (< (inv@56@01 r) n@27@01) (= (inv@56@01 r) (inv@58@01 r)))))
      (prm%precondition $Snap.unit (inv@56@01 r)))
    (=>
      (and
        (and (img@57@01 r) (img@59@01 r))
        (and
          (and
            (<= 0 (inv@56@01 r))
            (and (< (inv@56@01 r) n@27@01) (= (inv@56@01 r) (inv@58@01 r))))
          (< $Perm.No (prm $Snap.unit (inv@56@01 r)))))
      (rcvr%precondition $Snap.unit (inv@56@01 r) (inv@58@01 r))))
  :pattern ((inv@56@01 r))
  :pattern ((inv@58@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((i@54@01 Int) (j@55@01 Int)) (!
  (=>
    (and
      (and (<= 0 i@54@01) (and (< i@54@01 n@27@01) (= i@54@01 j@55@01)))
      (< $Perm.No (prm $Snap.unit i@54@01)))
    (and
      (and
        (= (inv@56@01 (rcvr $Snap.unit i@54@01 j@55@01)) i@54@01)
        (= (inv@58@01 (rcvr $Snap.unit i@54@01 j@55@01)) j@55@01))
      (and
        (img@57@01 (rcvr $Snap.unit i@54@01 j@55@01))
        (img@59@01 (rcvr $Snap.unit i@54@01 j@55@01)))))
  :pattern ((rcvr $Snap.unit i@54@01 j@55@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (img@57@01 r) (img@59@01 r))
      (and
        (and
          (<= 0 (inv@56@01 r))
          (and (< (inv@56@01 r) n@27@01) (= (inv@56@01 r) (inv@58@01 r))))
        (< $Perm.No (prm $Snap.unit (inv@56@01 r)))))
    (= (rcvr $Snap.unit (inv@56@01 r) (inv@58@01 r)) r))
  :pattern ((inv@56@01 r))
  :pattern ((inv@58@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (<= 0 (inv@56@01 r))
        (and (< (inv@56@01 r) n@27@01) (= (inv@56@01 r) (inv@58@01 r))))
      (and (img@57@01 r) (img@59@01 r))
      (= r (rcvr $Snap.unit (inv@56@01 r) (inv@58@01 r))))
    (= (prm $Snap.unit (inv@56@01 r)) $Perm.No))
  
  :qid |quant-u-16597|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- test02 ----------
(declare-const xs@60@01 Seq<$Ref>)
(declare-const n@61@01 Int)
(declare-const xs@62@01 Seq<$Ref>)
(declare-const n@63@01 Int)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var a: Int
(declare-const a@64@01 Int)
; [exec]
; inhale 0 <= n && n <= |xs|
(declare-const $t@65@01 $Snap)
(assert (= $t@65@01 ($Snap.combine ($Snap.first $t@65@01) ($Snap.second $t@65@01))))
(assert (= ($Snap.first $t@65@01) $Snap.unit))
; [eval] 0 <= n
(assert (<= 0 n@63@01))
(assert (= ($Snap.second $t@65@01) $Snap.unit))
; [eval] n <= |xs|
; [eval] |xs|
(assert (<= n@63@01 (Seq_length xs@62@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall ix: Int, jx: Int, fresh__134: Int, fresh__135: Int ::
;     { rcvr(ix, fresh__134), rcvr(jx, fresh__135) }
;     ix >= 0 && (ix < n && (jx >= 0 && (jx < n && ix != jx))) ==>
;     rcvr(ix, ix + 1) != rcvr(jx, jx + 1))
(declare-const $t@66@01 $Snap)
(assert (= $t@66@01 $Snap.unit))
; [eval] (forall ix: Int, jx: Int, fresh__134: Int, fresh__135: Int :: { rcvr(ix, fresh__134), rcvr(jx, fresh__135) } ix >= 0 && (ix < n && (jx >= 0 && (jx < n && ix != jx))) ==> rcvr(ix, ix + 1) != rcvr(jx, jx + 1))
(declare-const ix@67@01 Int)
(declare-const jx@68@01 Int)
(declare-const fresh__134@69@01 Int)
(declare-const fresh__135@70@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ix >= 0 && (ix < n && (jx >= 0 && (jx < n && ix != jx))) ==> rcvr(ix, ix + 1) != rcvr(jx, jx + 1)
; [eval] ix >= 0 && (ix < n && (jx >= 0 && (jx < n && ix != jx)))
; [eval] ix >= 0
(push) ; 4
; [then-branch: 32 | !(ix@67@01 >= 0) | live]
; [else-branch: 32 | ix@67@01 >= 0 | live]
(push) ; 5
; [then-branch: 32 | !(ix@67@01 >= 0)]
(assert (not (>= ix@67@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 32 | ix@67@01 >= 0]
(assert (>= ix@67@01 0))
; [eval] ix < n
(push) ; 6
; [then-branch: 33 | !(ix@67@01 < n@63@01) | live]
; [else-branch: 33 | ix@67@01 < n@63@01 | live]
(push) ; 7
; [then-branch: 33 | !(ix@67@01 < n@63@01)]
(assert (not (< ix@67@01 n@63@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 33 | ix@67@01 < n@63@01]
(assert (< ix@67@01 n@63@01))
; [eval] jx >= 0
(push) ; 8
; [then-branch: 34 | !(jx@68@01 >= 0) | live]
; [else-branch: 34 | jx@68@01 >= 0 | live]
(push) ; 9
; [then-branch: 34 | !(jx@68@01 >= 0)]
(assert (not (>= jx@68@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 34 | jx@68@01 >= 0]
(assert (>= jx@68@01 0))
; [eval] jx < n
(push) ; 10
; [then-branch: 35 | !(jx@68@01 < n@63@01) | live]
; [else-branch: 35 | jx@68@01 < n@63@01 | live]
(push) ; 11
; [then-branch: 35 | !(jx@68@01 < n@63@01)]
(assert (not (< jx@68@01 n@63@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 35 | jx@68@01 < n@63@01]
(assert (< jx@68@01 n@63@01))
; [eval] ix != jx
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< jx@68@01 n@63@01) (not (< jx@68@01 n@63@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= jx@68@01 0)
  (and (>= jx@68@01 0) (or (< jx@68@01 n@63@01) (not (< jx@68@01 n@63@01))))))
(assert (or (>= jx@68@01 0) (not (>= jx@68@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< ix@67@01 n@63@01)
  (and
    (< ix@67@01 n@63@01)
    (=>
      (>= jx@68@01 0)
      (and (>= jx@68@01 0) (or (< jx@68@01 n@63@01) (not (< jx@68@01 n@63@01)))))
    (or (>= jx@68@01 0) (not (>= jx@68@01 0))))))
(assert (or (< ix@67@01 n@63@01) (not (< ix@67@01 n@63@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= ix@67@01 0)
  (and
    (>= ix@67@01 0)
    (=>
      (< ix@67@01 n@63@01)
      (and
        (< ix@67@01 n@63@01)
        (=>
          (>= jx@68@01 0)
          (and
            (>= jx@68@01 0)
            (or (< jx@68@01 n@63@01) (not (< jx@68@01 n@63@01)))))
        (or (>= jx@68@01 0) (not (>= jx@68@01 0)))))
    (or (< ix@67@01 n@63@01) (not (< ix@67@01 n@63@01))))))
(assert (or (>= ix@67@01 0) (not (>= ix@67@01 0))))
(push) ; 4
; [then-branch: 36 | ix@67@01 >= 0 && ix@67@01 < n@63@01 && jx@68@01 >= 0 && jx@68@01 < n@63@01 && ix@67@01 != jx@68@01 | live]
; [else-branch: 36 | !(ix@67@01 >= 0 && ix@67@01 < n@63@01 && jx@68@01 >= 0 && jx@68@01 < n@63@01 && ix@67@01 != jx@68@01) | live]
(push) ; 5
; [then-branch: 36 | ix@67@01 >= 0 && ix@67@01 < n@63@01 && jx@68@01 >= 0 && jx@68@01 < n@63@01 && ix@67@01 != jx@68@01]
(assert (and
  (>= ix@67@01 0)
  (and
    (< ix@67@01 n@63@01)
    (and (>= jx@68@01 0) (and (< jx@68@01 n@63@01) (not (= ix@67@01 jx@68@01)))))))
; [eval] rcvr(ix, ix + 1) != rcvr(jx, jx + 1)
; [eval] rcvr(ix, ix + 1)
; [eval] ix + 1
(push) ; 6
(assert (rcvr%precondition $Snap.unit ix@67@01 (+ ix@67@01 1)))
(pop) ; 6
; Joined path conditions
(assert (rcvr%precondition $Snap.unit ix@67@01 (+ ix@67@01 1)))
; [eval] rcvr(jx, jx + 1)
; [eval] jx + 1
(push) ; 6
(assert (rcvr%precondition $Snap.unit jx@68@01 (+ jx@68@01 1)))
(pop) ; 6
; Joined path conditions
(assert (rcvr%precondition $Snap.unit jx@68@01 (+ jx@68@01 1)))
(pop) ; 5
(push) ; 5
; [else-branch: 36 | !(ix@67@01 >= 0 && ix@67@01 < n@63@01 && jx@68@01 >= 0 && jx@68@01 < n@63@01 && ix@67@01 != jx@68@01)]
(assert (not
  (and
    (>= ix@67@01 0)
    (and
      (< ix@67@01 n@63@01)
      (and
        (>= jx@68@01 0)
        (and (< jx@68@01 n@63@01) (not (= ix@67@01 jx@68@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= ix@67@01 0)
    (and
      (< ix@67@01 n@63@01)
      (and
        (>= jx@68@01 0)
        (and (< jx@68@01 n@63@01) (not (= ix@67@01 jx@68@01))))))
  (and
    (>= ix@67@01 0)
    (< ix@67@01 n@63@01)
    (>= jx@68@01 0)
    (< jx@68@01 n@63@01)
    (not (= ix@67@01 jx@68@01))
    (rcvr%precondition $Snap.unit ix@67@01 (+ ix@67@01 1))
    (rcvr%precondition $Snap.unit jx@68@01 (+ jx@68@01 1)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= ix@67@01 0)
      (and
        (< ix@67@01 n@63@01)
        (and
          (>= jx@68@01 0)
          (and (< jx@68@01 n@63@01) (not (= ix@67@01 jx@68@01)))))))
  (and
    (>= ix@67@01 0)
    (and
      (< ix@67@01 n@63@01)
      (and
        (>= jx@68@01 0)
        (and (< jx@68@01 n@63@01) (not (= ix@67@01 jx@68@01))))))))
; [eval] rcvr(ix, fresh__134)
(push) ; 4
(assert (rcvr%precondition $Snap.unit ix@67@01 fresh__134@69@01))
(pop) ; 4
; Joined path conditions
(assert (rcvr%precondition $Snap.unit ix@67@01 fresh__134@69@01))
; [eval] rcvr(jx, fresh__135)
(push) ; 4
(assert (rcvr%precondition $Snap.unit jx@68@01 fresh__135@70@01))
(pop) ; 4
; Joined path conditions
(assert (rcvr%precondition $Snap.unit jx@68@01 fresh__135@70@01))
(assert (rcvr%precondition $Snap.unit ix@67@01 fresh__134@69@01))
(assert (rcvr%precondition $Snap.unit jx@68@01 fresh__135@70@01))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((ix@67@01 Int) (jx@68@01 Int) (fresh__134@69@01 Int) (fresh__135@70@01 Int)) (!
  (and
    (=>
      (>= ix@67@01 0)
      (and
        (>= ix@67@01 0)
        (=>
          (< ix@67@01 n@63@01)
          (and
            (< ix@67@01 n@63@01)
            (=>
              (>= jx@68@01 0)
              (and
                (>= jx@68@01 0)
                (or (< jx@68@01 n@63@01) (not (< jx@68@01 n@63@01)))))
            (or (>= jx@68@01 0) (not (>= jx@68@01 0)))))
        (or (< ix@67@01 n@63@01) (not (< ix@67@01 n@63@01)))))
    (or (>= ix@67@01 0) (not (>= ix@67@01 0)))
    (=>
      (and
        (>= ix@67@01 0)
        (and
          (< ix@67@01 n@63@01)
          (and
            (>= jx@68@01 0)
            (and (< jx@68@01 n@63@01) (not (= ix@67@01 jx@68@01))))))
      (and
        (>= ix@67@01 0)
        (< ix@67@01 n@63@01)
        (>= jx@68@01 0)
        (< jx@68@01 n@63@01)
        (not (= ix@67@01 jx@68@01))
        (rcvr%precondition $Snap.unit ix@67@01 (+ ix@67@01 1))
        (rcvr%precondition $Snap.unit jx@68@01 (+ jx@68@01 1))))
    (or
      (not
        (and
          (>= ix@67@01 0)
          (and
            (< ix@67@01 n@63@01)
            (and
              (>= jx@68@01 0)
              (and (< jx@68@01 n@63@01) (not (= ix@67@01 jx@68@01)))))))
      (and
        (>= ix@67@01 0)
        (and
          (< ix@67@01 n@63@01)
          (and
            (>= jx@68@01 0)
            (and (< jx@68@01 n@63@01) (not (= ix@67@01 jx@68@01)))))))
    (rcvr%precondition $Snap.unit ix@67@01 fresh__134@69@01)
    (rcvr%precondition $Snap.unit jx@68@01 fresh__135@70@01))
  :pattern ((rcvr $Snap.unit ix@67@01 fresh__134@69@01) (rcvr $Snap.unit jx@68@01 fresh__135@70@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@50@10@50@122-aux|)))
(assert (forall ((ix@67@01 Int) (jx@68@01 Int) (fresh__134@69@01 Int) (fresh__135@70@01 Int)) (!
  (=>
    (and
      (>= ix@67@01 0)
      (and
        (< ix@67@01 n@63@01)
        (and
          (>= jx@68@01 0)
          (and (< jx@68@01 n@63@01) (not (= ix@67@01 jx@68@01))))))
    (not
      (=
        (rcvr $Snap.unit ix@67@01 (+ ix@67@01 1))
        (rcvr $Snap.unit jx@68@01 (+ jx@68@01 1)))))
  :pattern ((rcvr $Snap.unit ix@67@01 fresh__134@69@01) (rcvr $Snap.unit jx@68@01 fresh__135@70@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@50@10@50@122|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int, j: Int ::0 <= i && (i < n && j == i + 1) ==>
;     acc(rcvr(i, j).f, prm(i)))
(declare-const i@71@01 Int)
(declare-const j@72@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i && (i < n && j == i + 1)
; [eval] 0 <= i
(push) ; 4
; [then-branch: 37 | !(0 <= i@71@01) | live]
; [else-branch: 37 | 0 <= i@71@01 | live]
(push) ; 5
; [then-branch: 37 | !(0 <= i@71@01)]
(assert (not (<= 0 i@71@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 37 | 0 <= i@71@01]
(assert (<= 0 i@71@01))
; [eval] i < n
(push) ; 6
; [then-branch: 38 | !(i@71@01 < n@63@01) | live]
; [else-branch: 38 | i@71@01 < n@63@01 | live]
(push) ; 7
; [then-branch: 38 | !(i@71@01 < n@63@01)]
(assert (not (< i@71@01 n@63@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 38 | i@71@01 < n@63@01]
(assert (< i@71@01 n@63@01))
; [eval] j == i + 1
; [eval] i + 1
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (< i@71@01 n@63@01) (not (< i@71@01 n@63@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@71@01)
  (and (<= 0 i@71@01) (or (< i@71@01 n@63@01) (not (< i@71@01 n@63@01))))))
(assert (or (<= 0 i@71@01) (not (<= 0 i@71@01))))
(assert (and (<= 0 i@71@01) (and (< i@71@01 n@63@01) (= j@72@01 (+ i@71@01 1)))))
; [eval] rcvr(i, j)
(push) ; 4
(assert (rcvr%precondition $Snap.unit i@71@01 j@72@01))
(pop) ; 4
; Joined path conditions
(assert (rcvr%precondition $Snap.unit i@71@01 j@72@01))
; [eval] prm(i)
(push) ; 4
(assert (prm%precondition $Snap.unit i@71@01))
(pop) ; 4
; Joined path conditions
(assert (prm%precondition $Snap.unit i@71@01))
(pop) ; 3
(declare-const $t@73@01 $FVF<f>)
(declare-fun inv@74@01 ($Ref) Int)
(declare-fun img@75@01 ($Ref) Bool)
(declare-fun inv@76@01 ($Ref) Int)
(declare-fun img@77@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@71@01 Int) (j@72@01 Int)) (!
  (=>
    (and (<= 0 i@71@01) (and (< i@71@01 n@63@01) (= j@72@01 (+ i@71@01 1))))
    (and
      (=>
        (<= 0 i@71@01)
        (and (<= 0 i@71@01) (or (< i@71@01 n@63@01) (not (< i@71@01 n@63@01)))))
      (or (<= 0 i@71@01) (not (<= 0 i@71@01)))
      (rcvr%precondition $Snap.unit i@71@01 j@72@01)
      (prm%precondition $Snap.unit i@71@01)))
  :pattern ((rcvr $Snap.unit i@71@01 j@72@01))
  :qid |f-aux|)))
(push) ; 3
(assert (not (forall ((i@71@01 Int) (j@72@01 Int)) (!
  (=>
    (and
      (=>
        (and (<= 0 i@71@01) (and (< i@71@01 n@63@01) (= j@72@01 (+ i@71@01 1))))
        (and
          (prm%precondition $Snap.unit i@71@01)
          (=>
            (not (= (prm $Snap.unit i@71@01) $Perm.No))
            (prm%precondition $Snap.unit i@71@01))))
      (and (<= 0 i@71@01) (and (< i@71@01 n@63@01) (= j@72@01 (+ i@71@01 1)))))
    (or
      (= (prm $Snap.unit i@71@01) $Perm.No)
      (< $Perm.No (prm $Snap.unit i@71@01))))
  
  :qid |quant-u-16598|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((i1@71@01 Int) (j1@72@01 Int) (i2@71@01 Int) (j2@72@01 Int)) (!
  (and
    (=>
      (and
        (<= 0 i1@71@01)
        (and (< i1@71@01 n@63@01) (= j1@72@01 (+ i1@71@01 1))))
      (prm%precondition $Snap.unit i1@71@01))
    (=>
      (and
        (and
          (<= 0 i1@71@01)
          (and (< i1@71@01 n@63@01) (= j1@72@01 (+ i1@71@01 1))))
        (< $Perm.No (prm $Snap.unit i1@71@01)))
      (and
        (=>
          (and
            (<= 0 i2@71@01)
            (and (< i2@71@01 n@63@01) (= j2@72@01 (+ i2@71@01 1))))
          (prm%precondition $Snap.unit i2@71@01))
        (=>
          (and
            (and
              (<= 0 i2@71@01)
              (and (< i2@71@01 n@63@01) (= j2@72@01 (+ i2@71@01 1))))
            (< $Perm.No (prm $Snap.unit i2@71@01)))
          (and
            (rcvr%precondition $Snap.unit i1@71@01 j1@72@01)
            (rcvr%precondition $Snap.unit i2@71@01 j2@72@01))))))
  
  :qid |f-rcvrInj|)))
(push) ; 3
(assert (not (forall ((i1@71@01 Int) (j1@72@01 Int) (i2@71@01 Int) (j2@72@01 Int)) (!
  (=>
    (and
      (and
        (and
          (<= 0 i1@71@01)
          (and (< i1@71@01 n@63@01) (= j1@72@01 (+ i1@71@01 1))))
        (< $Perm.No (prm $Snap.unit i1@71@01)))
      (and
        (and
          (<= 0 i2@71@01)
          (and (< i2@71@01 n@63@01) (= j2@72@01 (+ i2@71@01 1))))
        (< $Perm.No (prm $Snap.unit i2@71@01)))
      (= (rcvr $Snap.unit i1@71@01 j1@72@01) (rcvr $Snap.unit i2@71@01 j2@72@01)))
    (and (= i1@71@01 i2@71@01) (= j1@72@01 j2@72@01)))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@71@01 Int) (j@72@01 Int)) (!
  (and
    (=>
      (and (<= 0 i@71@01) (and (< i@71@01 n@63@01) (= j@72@01 (+ i@71@01 1))))
      (prm%precondition $Snap.unit i@71@01))
    (=>
      (and
        (and (<= 0 i@71@01) (and (< i@71@01 n@63@01) (= j@72@01 (+ i@71@01 1))))
        (< $Perm.No (prm $Snap.unit i@71@01)))
      (and
        (and
          (rcvr%precondition $Snap.unit i@71@01 j@72@01)
          (=>
            (= (inv@74@01 (rcvr $Snap.unit i@71@01 j@72@01)) i@71@01)
            (rcvr%precondition $Snap.unit i@71@01 j@72@01)))
        (=>
          (and
            (= (inv@74@01 (rcvr $Snap.unit i@71@01 j@72@01)) i@71@01)
            (= (inv@76@01 (rcvr $Snap.unit i@71@01 j@72@01)) j@72@01))
          (and
            (rcvr%precondition $Snap.unit i@71@01 j@72@01)
            (=>
              (img@75@01 (rcvr $Snap.unit i@71@01 j@72@01))
              (rcvr%precondition $Snap.unit i@71@01 j@72@01)))))))
  :pattern ((rcvr $Snap.unit i@71@01 j@72@01))
  :qid |quant-u-16599|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (and
        (and (img@75@01 r) (img@77@01 r))
        (and
          (<= 0 (inv@74@01 r))
          (and (< (inv@74@01 r) n@63@01) (= (inv@76@01 r) (+ (inv@74@01 r) 1)))))
      (prm%precondition $Snap.unit (inv@74@01 r)))
    (=>
      (and
        (and (img@75@01 r) (img@77@01 r))
        (and
          (and
            (<= 0 (inv@74@01 r))
            (and (< (inv@74@01 r) n@63@01) (= (inv@76@01 r) (+ (inv@74@01 r) 1))))
          (< $Perm.No (prm $Snap.unit (inv@74@01 r)))))
      (rcvr%precondition $Snap.unit (inv@74@01 r) (inv@76@01 r))))
  :pattern ((inv@74@01 r))
  :pattern ((inv@76@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((i@71@01 Int) (j@72@01 Int)) (!
  (=>
    (and
      (and (<= 0 i@71@01) (and (< i@71@01 n@63@01) (= j@72@01 (+ i@71@01 1))))
      (< $Perm.No (prm $Snap.unit i@71@01)))
    (and
      (and
        (= (inv@74@01 (rcvr $Snap.unit i@71@01 j@72@01)) i@71@01)
        (= (inv@76@01 (rcvr $Snap.unit i@71@01 j@72@01)) j@72@01))
      (and
        (img@75@01 (rcvr $Snap.unit i@71@01 j@72@01))
        (img@77@01 (rcvr $Snap.unit i@71@01 j@72@01)))))
  :pattern ((rcvr $Snap.unit i@71@01 j@72@01))
  :qid |quant-u-16599|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (img@75@01 r) (img@77@01 r))
      (and
        (and
          (<= 0 (inv@74@01 r))
          (and (< (inv@74@01 r) n@63@01) (= (inv@76@01 r) (+ (inv@74@01 r) 1))))
        (< $Perm.No (prm $Snap.unit (inv@74@01 r)))))
    (= (rcvr $Snap.unit (inv@74@01 r) (inv@76@01 r)) r))
  :pattern ((inv@74@01 r))
  :pattern ((inv@76@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i@71@01 Int) (j@72@01 Int)) (!
  (<= $Perm.No (prm $Snap.unit i@71@01))
  :pattern ((rcvr $Snap.unit i@71@01 j@72@01))
  :qid |f-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i@71@01 Int) (j@72@01 Int)) (!
  (<= (prm $Snap.unit i@71@01) $Perm.Write)
  :pattern ((rcvr $Snap.unit i@71@01 j@72@01))
  :qid |f-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i@71@01 Int) (j@72@01 Int)) (!
  (=>
    (and
      (and (<= 0 i@71@01) (and (< i@71@01 n@63@01) (= j@72@01 (+ i@71@01 1))))
      (< $Perm.No (prm $Snap.unit i@71@01)))
    (not (= (rcvr $Snap.unit i@71@01 j@72@01) $Ref.null)))
  :pattern ((rcvr $Snap.unit i@71@01 j@72@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= a && a < n
(declare-const $t@78@01 $Snap)
(assert (= $t@78@01 ($Snap.combine ($Snap.first $t@78@01) ($Snap.second $t@78@01))))
(assert (= ($Snap.first $t@78@01) $Snap.unit))
; [eval] 0 <= a
(assert (<= 0 a@64@01))
(assert (= ($Snap.second $t@78@01) $Snap.unit))
; [eval] a < n
(assert (< a@64@01 n@63@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale rcvr(a, a + 1).f > 1
(declare-const $t@79@01 $Snap)
(assert (= $t@79@01 $Snap.unit))
; [eval] rcvr(a, a + 1).f > 1
; [eval] rcvr(a, a + 1)
; [eval] a + 1
(set-option :timeout 0)
(push) ; 3
(assert (rcvr%precondition $Snap.unit a@64@01 (+ a@64@01 1)))
(pop) ; 3
; Joined path conditions
(assert (rcvr%precondition $Snap.unit a@64@01 (+ a@64@01 1)))
(push) ; 3
(assert (not (ite
  (and
    (and
      (img@75@01 (rcvr $Snap.unit a@64@01 (+ a@64@01 1)))
      (img@77@01 (rcvr $Snap.unit a@64@01 (+ a@64@01 1))))
    (and
      (<= 0 (inv@74@01 (rcvr $Snap.unit a@64@01 (+ a@64@01 1))))
      (and
        (< (inv@74@01 (rcvr $Snap.unit a@64@01 (+ a@64@01 1))) n@63@01)
        (=
          (inv@76@01 (rcvr $Snap.unit a@64@01 (+ a@64@01 1)))
          (+ (inv@74@01 (rcvr $Snap.unit a@64@01 (+ a@64@01 1))) 1)))))
  (<
    $Perm.No
    (prm $Snap.unit (inv@74@01 (rcvr $Snap.unit a@64@01 (+ a@64@01 1)))))
  false)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (> ($FVF.lookup_f $t@73@01 (rcvr $Snap.unit a@64@01 (+ a@64@01 1))) 1))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; exhale (forall i: Int ::0 <= i && i < n ==> acc(rcvr(i, i + 1).f, prm(i))) &&
;   (forall i: Int, fresh__136: Int ::
;     { rcvr(i, fresh__136) }
;     0 <= i && i < n ==> i != a || rcvr(i, i + 1).f > 1)
(declare-const i@80@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i && i < n
; [eval] 0 <= i
(push) ; 4
; [then-branch: 39 | !(0 <= i@80@01) | live]
; [else-branch: 39 | 0 <= i@80@01 | live]
(push) ; 5
; [then-branch: 39 | !(0 <= i@80@01)]
(assert (not (<= 0 i@80@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 39 | 0 <= i@80@01]
(assert (<= 0 i@80@01))
; [eval] i < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@80@01) (not (<= 0 i@80@01))))
(assert (and (<= 0 i@80@01) (< i@80@01 n@63@01)))
; [eval] prm(i)
(push) ; 4
(assert (prm%precondition $Snap.unit i@80@01))
(pop) ; 4
; Joined path conditions
(assert (prm%precondition $Snap.unit i@80@01))
; [eval] rcvr(i, i + 1)
; [eval] i + 1
(push) ; 4
(assert (rcvr%precondition $Snap.unit i@80@01 (+ i@80@01 1)))
(pop) ; 4
; Joined path conditions
(assert (rcvr%precondition $Snap.unit i@80@01 (+ i@80@01 1)))
(pop) ; 3
(declare-fun inv@81@01 ($Ref) Int)
(declare-fun img@82@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@80@01 Int) (i@80@01@rw0 Int)) (!
  (=>
    (and (<= 0 i@80@01) (< i@80@01 n@63@01))
    (and
      (or (<= 0 i@80@01) (not (<= 0 i@80@01)))
      (prm%precondition $Snap.unit i@80@01)
      (rcvr%precondition $Snap.unit i@80@01 (+ i@80@01 1))))
  :pattern ((rcvr $Snap.unit i@80@01 i@80@01@rw0))
  :qid |f-aux|)))
(push) ; 3
(assert (not (forall ((i@80@01 Int)) (!
  (=>
    (and
      (=>
        (and (<= 0 i@80@01) (< i@80@01 n@63@01))
        (and
          (prm%precondition $Snap.unit i@80@01)
          (=>
            (not (= (prm $Snap.unit i@80@01) $Perm.No))
            (prm%precondition $Snap.unit i@80@01))))
      (and (<= 0 i@80@01) (< i@80@01 n@63@01)))
    (or
      (= (prm $Snap.unit i@80@01) $Perm.No)
      (< $Perm.No (prm $Snap.unit i@80@01))))
  
  :qid |quant-u-16600|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((i1@80@01 Int) (i2@80@01 Int)) (!
  (and
    (=>
      (and (<= 0 i1@80@01) (< i1@80@01 n@63@01))
      (prm%precondition $Snap.unit i1@80@01))
    (=>
      (and
        (and (<= 0 i1@80@01) (< i1@80@01 n@63@01))
        (< $Perm.No (prm $Snap.unit i1@80@01)))
      (and
        (=>
          (and (<= 0 i2@80@01) (< i2@80@01 n@63@01))
          (prm%precondition $Snap.unit i2@80@01))
        (=>
          (and
            (and (<= 0 i2@80@01) (< i2@80@01 n@63@01))
            (< $Perm.No (prm $Snap.unit i2@80@01)))
          (and
            (rcvr%precondition $Snap.unit i1@80@01 (+ i1@80@01 1))
            (rcvr%precondition $Snap.unit i2@80@01 (+ i2@80@01 1)))))))
  
  :qid |f-rcvrInj|)))
(push) ; 3
(assert (not (forall ((i1@80@01 Int) (i2@80@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 i1@80@01) (< i1@80@01 n@63@01))
        (< $Perm.No (prm $Snap.unit i1@80@01)))
      (and
        (and (<= 0 i2@80@01) (< i2@80@01 n@63@01))
        (< $Perm.No (prm $Snap.unit i2@80@01)))
      (=
        (rcvr $Snap.unit i1@80@01 (+ i1@80@01 1))
        (rcvr $Snap.unit i2@80@01 (+ i2@80@01 1))))
    (= i1@80@01 i2@80@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@80@01 Int) (i@80@01@rw0 Int)) (!
  (and
    (=>
      (and
        (= i@80@01 (- i@80@01@rw0 1))
        (and (<= 0 i@80@01) (< i@80@01 n@63@01)))
      (prm%precondition $Snap.unit i@80@01))
    (=>
      (and
        (= i@80@01 (- i@80@01@rw0 1))
        (and
          (and (<= 0 i@80@01) (< i@80@01 n@63@01))
          (< $Perm.No (prm $Snap.unit i@80@01))))
      (and
        (rcvr%precondition $Snap.unit i@80@01 i@80@01@rw0)
        (=>
          (= (inv@81@01 (rcvr $Snap.unit i@80@01 i@80@01@rw0)) i@80@01)
          (rcvr%precondition $Snap.unit i@80@01 i@80@01@rw0)))))
  :pattern ((rcvr $Snap.unit i@80@01 i@80@01@rw0))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (and (img@82@01 r) (and (<= 0 (inv@81@01 r)) (< (inv@81@01 r) n@63@01)))
      (prm%precondition $Snap.unit (inv@81@01 r)))
    (=>
      (and
        (img@82@01 r)
        (and
          (and (<= 0 (inv@81@01 r)) (< (inv@81@01 r) n@63@01))
          (< $Perm.No (prm $Snap.unit (inv@81@01 r)))))
      (rcvr%precondition $Snap.unit (inv@81@01 r) (+ (inv@81@01 r) 1))))
  :pattern ((inv@81@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((i@80@01 Int) (i@80@01@rw0 Int)) (!
  (=>
    (and
      (= i@80@01 (- i@80@01@rw0 1))
      (and
        (and (<= 0 i@80@01) (< i@80@01 n@63@01))
        (< $Perm.No (prm $Snap.unit i@80@01))))
    (and
      (= (inv@81@01 (rcvr $Snap.unit i@80@01 i@80@01@rw0)) i@80@01)
      (img@82@01 (rcvr $Snap.unit i@80@01 i@80@01@rw0))))
  :pattern ((rcvr $Snap.unit i@80@01 i@80@01@rw0))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@82@01 r)
      (and
        (and (<= 0 (inv@81@01 r)) (< (inv@81@01 r) n@63@01))
        (< $Perm.No (prm $Snap.unit (inv@81@01 r)))))
    (= (rcvr $Snap.unit (inv@81@01 r) (+ (inv@81@01 r) 1)) r))
  :pattern ((inv@81@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@83@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@81@01 r)) (< (inv@81@01 r) n@63@01))
      (img@82@01 r)
      (= r (rcvr $Snap.unit (inv@81@01 r) (+ (inv@81@01 r) 1))))
    ($Perm.min
      (ite
        (and
          (and (img@75@01 r) (img@77@01 r))
          (and
            (<= 0 (inv@74@01 r))
            (and (< (inv@74@01 r) n@63@01) (= (inv@76@01 r) (+ (inv@74@01 r) 1)))))
        (prm $Snap.unit (inv@74@01 r))
        $Perm.No)
      (prm $Snap.unit (inv@81@01 r)))
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
          (and (img@75@01 r) (img@77@01 r))
          (and
            (<= 0 (inv@74@01 r))
            (and (< (inv@74@01 r) n@63@01) (= (inv@76@01 r) (+ (inv@74@01 r) 1)))))
        (prm $Snap.unit (inv@74@01 r))
        $Perm.No)
      (pTaken@83@01 r))
    $Perm.No)
  
  :qid |quant-u-16602|))))
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
      (and (<= 0 (inv@81@01 r)) (< (inv@81@01 r) n@63@01))
      (img@82@01 r)
      (= r (rcvr $Snap.unit (inv@81@01 r) (+ (inv@81@01 r) 1))))
    (= (- (prm $Snap.unit (inv@81@01 r)) (pTaken@83@01 r)) $Perm.No))
  
  :qid |quant-u-16603|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall i: Int, fresh__136: Int :: { rcvr(i, fresh__136) } 0 <= i && i < n ==> i != a || rcvr(i, i + 1).f > 1)
(declare-const i@84@01 Int)
(declare-const fresh__136@85@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i && i < n ==> i != a || rcvr(i, i + 1).f > 1
; [eval] 0 <= i && i < n
; [eval] 0 <= i
(push) ; 4
; [then-branch: 40 | !(0 <= i@84@01) | live]
; [else-branch: 40 | 0 <= i@84@01 | live]
(push) ; 5
; [then-branch: 40 | !(0 <= i@84@01)]
(assert (not (<= 0 i@84@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 40 | 0 <= i@84@01]
(assert (<= 0 i@84@01))
; [eval] i < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@84@01) (not (<= 0 i@84@01))))
(push) ; 4
; [then-branch: 41 | 0 <= i@84@01 && i@84@01 < n@63@01 | live]
; [else-branch: 41 | !(0 <= i@84@01 && i@84@01 < n@63@01) | live]
(push) ; 5
; [then-branch: 41 | 0 <= i@84@01 && i@84@01 < n@63@01]
(assert (and (<= 0 i@84@01) (< i@84@01 n@63@01)))
; [eval] i != a || rcvr(i, i + 1).f > 1
; [eval] i != a
(push) ; 6
; [then-branch: 42 | i@84@01 != a@64@01 | live]
; [else-branch: 42 | i@84@01 == a@64@01 | live]
(push) ; 7
; [then-branch: 42 | i@84@01 != a@64@01]
(assert (not (= i@84@01 a@64@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 42 | i@84@01 == a@64@01]
(assert (= i@84@01 a@64@01))
; [eval] rcvr(i, i + 1).f > 1
; [eval] rcvr(i, i + 1)
; [eval] i + 1
(push) ; 8
(assert (rcvr%precondition $Snap.unit i@84@01 (+ i@84@01 1)))
(pop) ; 8
; Joined path conditions
(assert (rcvr%precondition $Snap.unit i@84@01 (+ i@84@01 1)))
(push) ; 8
(assert (not (ite
  (and
    (and
      (img@75@01 (rcvr $Snap.unit i@84@01 (+ i@84@01 1)))
      (img@77@01 (rcvr $Snap.unit i@84@01 (+ i@84@01 1))))
    (and
      (<= 0 (inv@74@01 (rcvr $Snap.unit i@84@01 (+ i@84@01 1))))
      (and
        (< (inv@74@01 (rcvr $Snap.unit i@84@01 (+ i@84@01 1))) n@63@01)
        (=
          (inv@76@01 (rcvr $Snap.unit i@84@01 (+ i@84@01 1)))
          (+ (inv@74@01 (rcvr $Snap.unit i@84@01 (+ i@84@01 1))) 1)))))
  (<
    $Perm.No
    (prm $Snap.unit (inv@74@01 (rcvr $Snap.unit i@84@01 (+ i@84@01 1)))))
  false)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (= i@84@01 a@64@01)
  (and (= i@84@01 a@64@01) (rcvr%precondition $Snap.unit i@84@01 (+ i@84@01 1)))))
(assert (or (= i@84@01 a@64@01) (not (= i@84@01 a@64@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 41 | !(0 <= i@84@01 && i@84@01 < n@63@01)]
(assert (not (and (<= 0 i@84@01) (< i@84@01 n@63@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and (<= 0 i@84@01) (< i@84@01 n@63@01))
  (and
    (<= 0 i@84@01)
    (< i@84@01 n@63@01)
    (=>
      (= i@84@01 a@64@01)
      (and
        (= i@84@01 a@64@01)
        (rcvr%precondition $Snap.unit i@84@01 (+ i@84@01 1))))
    (or (= i@84@01 a@64@01) (not (= i@84@01 a@64@01))))))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@84@01) (< i@84@01 n@63@01)))
  (and (<= 0 i@84@01) (< i@84@01 n@63@01))))
; [eval] rcvr(i, fresh__136)
(push) ; 4
(assert (rcvr%precondition $Snap.unit i@84@01 fresh__136@85@01))
(pop) ; 4
; Joined path conditions
(assert (rcvr%precondition $Snap.unit i@84@01 fresh__136@85@01))
(assert (rcvr%precondition $Snap.unit i@84@01 fresh__136@85@01))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@84@01 Int) (fresh__136@85@01 Int)) (!
  (and
    (or (<= 0 i@84@01) (not (<= 0 i@84@01)))
    (=>
      (and (<= 0 i@84@01) (< i@84@01 n@63@01))
      (and
        (<= 0 i@84@01)
        (< i@84@01 n@63@01)
        (=>
          (= i@84@01 a@64@01)
          (and
            (= i@84@01 a@64@01)
            (rcvr%precondition $Snap.unit i@84@01 (+ i@84@01 1))))
        (or (= i@84@01 a@64@01) (not (= i@84@01 a@64@01)))))
    (or
      (not (and (<= 0 i@84@01) (< i@84@01 n@63@01)))
      (and (<= 0 i@84@01) (< i@84@01 n@63@01)))
    (rcvr%precondition $Snap.unit i@84@01 fresh__136@85@01))
  :pattern ((rcvr $Snap.unit i@84@01 fresh__136@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@58@10@61@42-aux|)))
(assert (forall ((i@84@01 Int) (fresh__136@85@01 Int)) (!
  (=>
    (and (and (<= 0 i@84@01) (< i@84@01 n@63@01)) (= i@84@01 a@64@01))
    (rcvr%precondition $Snap.unit i@84@01 (+ i@84@01 1)))
  :pattern ((rcvr $Snap.unit i@84@01 fresh__136@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@58@10@61@42_precondition|)))
(push) ; 3
(assert (not (forall ((i@84@01 Int) (fresh__136@85@01 Int)) (!
  (=>
    (and
      (=>
        (and (and (<= 0 i@84@01) (< i@84@01 n@63@01)) (= i@84@01 a@64@01))
        (rcvr%precondition $Snap.unit i@84@01 (+ i@84@01 1)))
      (and (<= 0 i@84@01) (< i@84@01 n@63@01)))
    (or
      (not (= i@84@01 a@64@01))
      (> ($FVF.lookup_f $t@73@01 (rcvr $Snap.unit i@84@01 (+ i@84@01 1))) 1)))
  :pattern ((rcvr $Snap.unit i@84@01 fresh__136@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@58@10@61@42|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@84@01 Int) (fresh__136@85@01 Int)) (!
  (=>
    (and (<= 0 i@84@01) (< i@84@01 n@63@01))
    (or
      (not (= i@84@01 a@64@01))
      (> ($FVF.lookup_f $t@73@01 (rcvr $Snap.unit i@84@01 (+ i@84@01 1))) 1)))
  :pattern ((rcvr $Snap.unit i@84@01 fresh__136@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@58@10@61@42|)))
(pop) ; 2
(pop) ; 1
; ---------- test03 ----------
(declare-const mat@86@01 IMatrix)
(declare-const mat@87@01 IMatrix)
(push) ; 1
(declare-const $t@88@01 $Snap)
(assert (= $t@88@01 ($Snap.combine ($Snap.first $t@88@01) ($Snap.second $t@88@01))))
(declare-const c@89@01 Int)
(declare-const r@90@01 Int)
(push) ; 2
; [eval] 0 <= c && (c < cols(mat) && (0 <= r && r < rows(mat)))
; [eval] 0 <= c
(push) ; 3
; [then-branch: 43 | !(0 <= c@89@01) | live]
; [else-branch: 43 | 0 <= c@89@01 | live]
(push) ; 4
; [then-branch: 43 | !(0 <= c@89@01)]
(assert (not (<= 0 c@89@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 43 | 0 <= c@89@01]
(assert (<= 0 c@89@01))
; [eval] c < cols(mat)
; [eval] cols(mat)
(push) ; 5
; [then-branch: 44 | !(c@89@01 < cols[Int](mat@87@01)) | live]
; [else-branch: 44 | c@89@01 < cols[Int](mat@87@01) | live]
(push) ; 6
; [then-branch: 44 | !(c@89@01 < cols[Int](mat@87@01))]
(assert (not (< c@89@01 (cols<Int> mat@87@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 44 | c@89@01 < cols[Int](mat@87@01)]
(assert (< c@89@01 (cols<Int> mat@87@01)))
; [eval] 0 <= r
(push) ; 7
; [then-branch: 45 | !(0 <= r@90@01) | live]
; [else-branch: 45 | 0 <= r@90@01 | live]
(push) ; 8
; [then-branch: 45 | !(0 <= r@90@01)]
(assert (not (<= 0 r@90@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 45 | 0 <= r@90@01]
(assert (<= 0 r@90@01))
; [eval] r < rows(mat)
; [eval] rows(mat)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 r@90@01) (not (<= 0 r@90@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< c@89@01 (cols<Int> mat@87@01))
  (and
    (< c@89@01 (cols<Int> mat@87@01))
    (or (<= 0 r@90@01) (not (<= 0 r@90@01))))))
(assert (or (< c@89@01 (cols<Int> mat@87@01)) (not (< c@89@01 (cols<Int> mat@87@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 c@89@01)
  (and
    (<= 0 c@89@01)
    (=>
      (< c@89@01 (cols<Int> mat@87@01))
      (and
        (< c@89@01 (cols<Int> mat@87@01))
        (or (<= 0 r@90@01) (not (<= 0 r@90@01)))))
    (or
      (< c@89@01 (cols<Int> mat@87@01))
      (not (< c@89@01 (cols<Int> mat@87@01)))))))
(assert (or (<= 0 c@89@01) (not (<= 0 c@89@01))))
(assert (and
  (<= 0 c@89@01)
  (and
    (< c@89@01 (cols<Int> mat@87@01))
    (and (<= 0 r@90@01) (< r@90@01 (rows<Int> mat@87@01))))))
; [eval] loc(mat, c, r)
(pop) ; 2
(declare-fun inv@91@01 ($Ref) Int)
(declare-fun img@92@01 ($Ref) Bool)
(declare-fun inv@93@01 ($Ref) Int)
(declare-fun img@94@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((c@89@01 Int) (r@90@01 Int)) (!
  (=>
    (and
      (<= 0 c@89@01)
      (and
        (< c@89@01 (cols<Int> mat@87@01))
        (and (<= 0 r@90@01) (< r@90@01 (rows<Int> mat@87@01)))))
    (and
      (=>
        (<= 0 c@89@01)
        (and
          (<= 0 c@89@01)
          (=>
            (< c@89@01 (cols<Int> mat@87@01))
            (and
              (< c@89@01 (cols<Int> mat@87@01))
              (or (<= 0 r@90@01) (not (<= 0 r@90@01)))))
          (or
            (< c@89@01 (cols<Int> mat@87@01))
            (not (< c@89@01 (cols<Int> mat@87@01))))))
      (or (<= 0 c@89@01) (not (<= 0 c@89@01)))))
  :pattern ((loc<Ref> mat@87@01 c@89@01 r@90@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((c1@89@01 Int) (r1@90@01 Int) (c2@89@01 Int) (r2@90@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 c1@89@01)
        (and
          (< c1@89@01 (cols<Int> mat@87@01))
          (and (<= 0 r1@90@01) (< r1@90@01 (rows<Int> mat@87@01)))))
      (and
        (<= 0 c2@89@01)
        (and
          (< c2@89@01 (cols<Int> mat@87@01))
          (and (<= 0 r2@90@01) (< r2@90@01 (rows<Int> mat@87@01)))))
      (=
        (loc<Ref> mat@87@01 c1@89@01 r1@90@01)
        (loc<Ref> mat@87@01 c2@89@01 r2@90@01)))
    (and (= c1@89@01 c2@89@01) (= r1@90@01 r2@90@01)))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((c@89@01 Int) (r@90@01 Int)) (!
  (=>
    (and
      (<= 0 c@89@01)
      (and
        (< c@89@01 (cols<Int> mat@87@01))
        (and (<= 0 r@90@01) (< r@90@01 (rows<Int> mat@87@01)))))
    (and
      (and
        (= (inv@91@01 (loc<Ref> mat@87@01 c@89@01 r@90@01)) c@89@01)
        (= (inv@93@01 (loc<Ref> mat@87@01 c@89@01 r@90@01)) r@90@01))
      (and
        (img@92@01 (loc<Ref> mat@87@01 c@89@01 r@90@01))
        (img@94@01 (loc<Ref> mat@87@01 c@89@01 r@90@01)))))
  :pattern ((loc<Ref> mat@87@01 c@89@01 r@90@01))
  :qid |quant-u-16605|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (img@92@01 r) (img@94@01 r))
      (and
        (<= 0 (inv@91@01 r))
        (and
          (< (inv@91@01 r) (cols<Int> mat@87@01))
          (and (<= 0 (inv@93@01 r)) (< (inv@93@01 r) (rows<Int> mat@87@01))))))
    (= (loc<Ref> mat@87@01 (inv@91@01 r) (inv@93@01 r)) r))
  :pattern ((inv@91@01 r))
  :pattern ((inv@93@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((c@89@01 Int) (r@90@01 Int)) (!
  (=>
    (and
      (<= 0 c@89@01)
      (and
        (< c@89@01 (cols<Int> mat@87@01))
        (and (<= 0 r@90@01) (< r@90@01 (rows<Int> mat@87@01)))))
    (not (= (loc<Ref> mat@87@01 c@89@01 r@90@01) $Ref.null)))
  :pattern ((loc<Ref> mat@87@01 c@89@01 r@90@01))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@88@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@88@01))
    ($Snap.second ($Snap.second $t@88@01)))))
(assert (= ($Snap.first ($Snap.second $t@88@01)) $Snap.unit))
; [eval] (forall c: Int, r: Int :: { loc(mat, c, r) } 0 <= c && (c < cols(mat) && (0 <= r && r < rows(mat))) ==> loc(mat, c, r).val > 0)
(declare-const c@95@01 Int)
(declare-const r@96@01 Int)
(push) ; 2
; [eval] 0 <= c && (c < cols(mat) && (0 <= r && r < rows(mat))) ==> loc(mat, c, r).val > 0
; [eval] 0 <= c && (c < cols(mat) && (0 <= r && r < rows(mat)))
; [eval] 0 <= c
(push) ; 3
; [then-branch: 46 | !(0 <= c@95@01) | live]
; [else-branch: 46 | 0 <= c@95@01 | live]
(push) ; 4
; [then-branch: 46 | !(0 <= c@95@01)]
(assert (not (<= 0 c@95@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 46 | 0 <= c@95@01]
(assert (<= 0 c@95@01))
; [eval] c < cols(mat)
; [eval] cols(mat)
(push) ; 5
; [then-branch: 47 | !(c@95@01 < cols[Int](mat@87@01)) | live]
; [else-branch: 47 | c@95@01 < cols[Int](mat@87@01) | live]
(push) ; 6
; [then-branch: 47 | !(c@95@01 < cols[Int](mat@87@01))]
(assert (not (< c@95@01 (cols<Int> mat@87@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 47 | c@95@01 < cols[Int](mat@87@01)]
(assert (< c@95@01 (cols<Int> mat@87@01)))
; [eval] 0 <= r
(push) ; 7
; [then-branch: 48 | !(0 <= r@96@01) | live]
; [else-branch: 48 | 0 <= r@96@01 | live]
(push) ; 8
; [then-branch: 48 | !(0 <= r@96@01)]
(assert (not (<= 0 r@96@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 48 | 0 <= r@96@01]
(assert (<= 0 r@96@01))
; [eval] r < rows(mat)
; [eval] rows(mat)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 r@96@01) (not (<= 0 r@96@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< c@95@01 (cols<Int> mat@87@01))
  (and
    (< c@95@01 (cols<Int> mat@87@01))
    (or (<= 0 r@96@01) (not (<= 0 r@96@01))))))
(assert (or (< c@95@01 (cols<Int> mat@87@01)) (not (< c@95@01 (cols<Int> mat@87@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 c@95@01)
  (and
    (<= 0 c@95@01)
    (=>
      (< c@95@01 (cols<Int> mat@87@01))
      (and
        (< c@95@01 (cols<Int> mat@87@01))
        (or (<= 0 r@96@01) (not (<= 0 r@96@01)))))
    (or
      (< c@95@01 (cols<Int> mat@87@01))
      (not (< c@95@01 (cols<Int> mat@87@01)))))))
(assert (or (<= 0 c@95@01) (not (<= 0 c@95@01))))
(push) ; 3
; [then-branch: 49 | 0 <= c@95@01 && c@95@01 < cols[Int](mat@87@01) && 0 <= r@96@01 && r@96@01 < rows[Int](mat@87@01) | live]
; [else-branch: 49 | !(0 <= c@95@01 && c@95@01 < cols[Int](mat@87@01) && 0 <= r@96@01 && r@96@01 < rows[Int](mat@87@01)) | live]
(push) ; 4
; [then-branch: 49 | 0 <= c@95@01 && c@95@01 < cols[Int](mat@87@01) && 0 <= r@96@01 && r@96@01 < rows[Int](mat@87@01)]
(assert (and
  (<= 0 c@95@01)
  (and
    (< c@95@01 (cols<Int> mat@87@01))
    (and (<= 0 r@96@01) (< r@96@01 (rows<Int> mat@87@01))))))
; [eval] loc(mat, c, r).val > 0
; [eval] loc(mat, c, r)
(push) ; 5
(assert (not (and
  (and
    (img@92@01 (loc<Ref> mat@87@01 c@95@01 r@96@01))
    (img@94@01 (loc<Ref> mat@87@01 c@95@01 r@96@01)))
  (and
    (<= 0 (inv@91@01 (loc<Ref> mat@87@01 c@95@01 r@96@01)))
    (and
      (< (inv@91@01 (loc<Ref> mat@87@01 c@95@01 r@96@01)) (cols<Int> mat@87@01))
      (and
        (<= 0 (inv@93@01 (loc<Ref> mat@87@01 c@95@01 r@96@01)))
        (<
          (inv@93@01 (loc<Ref> mat@87@01 c@95@01 r@96@01))
          (rows<Int> mat@87@01))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 49 | !(0 <= c@95@01 && c@95@01 < cols[Int](mat@87@01) && 0 <= r@96@01 && r@96@01 < rows[Int](mat@87@01))]
(assert (not
  (and
    (<= 0 c@95@01)
    (and
      (< c@95@01 (cols<Int> mat@87@01))
      (and (<= 0 r@96@01) (< r@96@01 (rows<Int> mat@87@01)))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 c@95@01)
    (and
      (< c@95@01 (cols<Int> mat@87@01))
      (and (<= 0 r@96@01) (< r@96@01 (rows<Int> mat@87@01)))))
  (and
    (<= 0 c@95@01)
    (< c@95@01 (cols<Int> mat@87@01))
    (<= 0 r@96@01)
    (< r@96@01 (rows<Int> mat@87@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 c@95@01)
      (and
        (< c@95@01 (cols<Int> mat@87@01))
        (and (<= 0 r@96@01) (< r@96@01 (rows<Int> mat@87@01))))))
  (and
    (<= 0 c@95@01)
    (and
      (< c@95@01 (cols<Int> mat@87@01))
      (and (<= 0 r@96@01) (< r@96@01 (rows<Int> mat@87@01)))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((c@95@01 Int) (r@96@01 Int)) (!
  (and
    (=>
      (<= 0 c@95@01)
      (and
        (<= 0 c@95@01)
        (=>
          (< c@95@01 (cols<Int> mat@87@01))
          (and
            (< c@95@01 (cols<Int> mat@87@01))
            (or (<= 0 r@96@01) (not (<= 0 r@96@01)))))
        (or
          (< c@95@01 (cols<Int> mat@87@01))
          (not (< c@95@01 (cols<Int> mat@87@01))))))
    (or (<= 0 c@95@01) (not (<= 0 c@95@01)))
    (=>
      (and
        (<= 0 c@95@01)
        (and
          (< c@95@01 (cols<Int> mat@87@01))
          (and (<= 0 r@96@01) (< r@96@01 (rows<Int> mat@87@01)))))
      (and
        (<= 0 c@95@01)
        (< c@95@01 (cols<Int> mat@87@01))
        (<= 0 r@96@01)
        (< r@96@01 (rows<Int> mat@87@01))))
    (or
      (not
        (and
          (<= 0 c@95@01)
          (and
            (< c@95@01 (cols<Int> mat@87@01))
            (and (<= 0 r@96@01) (< r@96@01 (rows<Int> mat@87@01))))))
      (and
        (<= 0 c@95@01)
        (and
          (< c@95@01 (cols<Int> mat@87@01))
          (and (<= 0 r@96@01) (< r@96@01 (rows<Int> mat@87@01)))))))
  :pattern ((loc<Ref> mat@87@01 c@95@01 r@96@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@79@12@81@66-aux|)))
(assert (forall ((c@95@01 Int) (r@96@01 Int)) (!
  (=>
    (and
      (<= 0 c@95@01)
      (and
        (< c@95@01 (cols<Int> mat@87@01))
        (and (<= 0 r@96@01) (< r@96@01 (rows<Int> mat@87@01)))))
    (>
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 c@95@01 r@96@01))
      0))
  :pattern ((loc<Ref> mat@87@01 c@95@01 r@96@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@79@12@81@66|)))
(assert (=
  ($Snap.second ($Snap.second $t@88@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@88@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@88@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@88@01))) $Snap.unit))
; [eval] (forall c: Int, r: Int :: { loc(mat, c, r) } 0 < c && (c < cols(mat) && (0 < r && r < rows(mat))) ==> loc(mat, c, r).val == loc(mat, c - 1, r).val + loc(mat, c, r - 1).val)
(declare-const c@97@01 Int)
(declare-const r@98@01 Int)
(push) ; 2
; [eval] 0 < c && (c < cols(mat) && (0 < r && r < rows(mat))) ==> loc(mat, c, r).val == loc(mat, c - 1, r).val + loc(mat, c, r - 1).val
; [eval] 0 < c && (c < cols(mat) && (0 < r && r < rows(mat)))
; [eval] 0 < c
(push) ; 3
; [then-branch: 50 | !(0 < c@97@01) | live]
; [else-branch: 50 | 0 < c@97@01 | live]
(push) ; 4
; [then-branch: 50 | !(0 < c@97@01)]
(assert (not (< 0 c@97@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 50 | 0 < c@97@01]
(assert (< 0 c@97@01))
; [eval] c < cols(mat)
; [eval] cols(mat)
(push) ; 5
; [then-branch: 51 | !(c@97@01 < cols[Int](mat@87@01)) | live]
; [else-branch: 51 | c@97@01 < cols[Int](mat@87@01) | live]
(push) ; 6
; [then-branch: 51 | !(c@97@01 < cols[Int](mat@87@01))]
(assert (not (< c@97@01 (cols<Int> mat@87@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 51 | c@97@01 < cols[Int](mat@87@01)]
(assert (< c@97@01 (cols<Int> mat@87@01)))
; [eval] 0 < r
(push) ; 7
; [then-branch: 52 | !(0 < r@98@01) | live]
; [else-branch: 52 | 0 < r@98@01 | live]
(push) ; 8
; [then-branch: 52 | !(0 < r@98@01)]
(assert (not (< 0 r@98@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 52 | 0 < r@98@01]
(assert (< 0 r@98@01))
; [eval] r < rows(mat)
; [eval] rows(mat)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (< 0 r@98@01) (not (< 0 r@98@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< c@97@01 (cols<Int> mat@87@01))
  (and (< c@97@01 (cols<Int> mat@87@01)) (or (< 0 r@98@01) (not (< 0 r@98@01))))))
(assert (or (< c@97@01 (cols<Int> mat@87@01)) (not (< c@97@01 (cols<Int> mat@87@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (< 0 c@97@01)
  (and
    (< 0 c@97@01)
    (=>
      (< c@97@01 (cols<Int> mat@87@01))
      (and
        (< c@97@01 (cols<Int> mat@87@01))
        (or (< 0 r@98@01) (not (< 0 r@98@01)))))
    (or
      (< c@97@01 (cols<Int> mat@87@01))
      (not (< c@97@01 (cols<Int> mat@87@01)))))))
(assert (or (< 0 c@97@01) (not (< 0 c@97@01))))
(push) ; 3
; [then-branch: 53 | 0 < c@97@01 && c@97@01 < cols[Int](mat@87@01) && 0 < r@98@01 && r@98@01 < rows[Int](mat@87@01) | live]
; [else-branch: 53 | !(0 < c@97@01 && c@97@01 < cols[Int](mat@87@01) && 0 < r@98@01 && r@98@01 < rows[Int](mat@87@01)) | live]
(push) ; 4
; [then-branch: 53 | 0 < c@97@01 && c@97@01 < cols[Int](mat@87@01) && 0 < r@98@01 && r@98@01 < rows[Int](mat@87@01)]
(assert (and
  (< 0 c@97@01)
  (and
    (< c@97@01 (cols<Int> mat@87@01))
    (and (< 0 r@98@01) (< r@98@01 (rows<Int> mat@87@01))))))
; [eval] loc(mat, c, r).val == loc(mat, c - 1, r).val + loc(mat, c, r - 1).val
; [eval] loc(mat, c, r)
(push) ; 5
(assert (not (and
  (and
    (img@92@01 (loc<Ref> mat@87@01 c@97@01 r@98@01))
    (img@94@01 (loc<Ref> mat@87@01 c@97@01 r@98@01)))
  (and
    (<= 0 (inv@91@01 (loc<Ref> mat@87@01 c@97@01 r@98@01)))
    (and
      (< (inv@91@01 (loc<Ref> mat@87@01 c@97@01 r@98@01)) (cols<Int> mat@87@01))
      (and
        (<= 0 (inv@93@01 (loc<Ref> mat@87@01 c@97@01 r@98@01)))
        (<
          (inv@93@01 (loc<Ref> mat@87@01 c@97@01 r@98@01))
          (rows<Int> mat@87@01))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] loc(mat, c - 1, r).val + loc(mat, c, r - 1).val
; [eval] loc(mat, c - 1, r)
; [eval] c - 1
(push) ; 5
(assert (not (and
  (and
    (img@92@01 (loc<Ref> mat@87@01 (- c@97@01 1) r@98@01))
    (img@94@01 (loc<Ref> mat@87@01 (- c@97@01 1) r@98@01)))
  (and
    (<= 0 (inv@91@01 (loc<Ref> mat@87@01 (- c@97@01 1) r@98@01)))
    (and
      (<
        (inv@91@01 (loc<Ref> mat@87@01 (- c@97@01 1) r@98@01))
        (cols<Int> mat@87@01))
      (and
        (<= 0 (inv@93@01 (loc<Ref> mat@87@01 (- c@97@01 1) r@98@01)))
        (<
          (inv@93@01 (loc<Ref> mat@87@01 (- c@97@01 1) r@98@01))
          (rows<Int> mat@87@01))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] loc(mat, c, r - 1)
; [eval] r - 1
(push) ; 5
(assert (not (and
  (and
    (img@92@01 (loc<Ref> mat@87@01 c@97@01 (- r@98@01 1)))
    (img@94@01 (loc<Ref> mat@87@01 c@97@01 (- r@98@01 1))))
  (and
    (<= 0 (inv@91@01 (loc<Ref> mat@87@01 c@97@01 (- r@98@01 1))))
    (and
      (<
        (inv@91@01 (loc<Ref> mat@87@01 c@97@01 (- r@98@01 1)))
        (cols<Int> mat@87@01))
      (and
        (<= 0 (inv@93@01 (loc<Ref> mat@87@01 c@97@01 (- r@98@01 1))))
        (<
          (inv@93@01 (loc<Ref> mat@87@01 c@97@01 (- r@98@01 1)))
          (rows<Int> mat@87@01))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 53 | !(0 < c@97@01 && c@97@01 < cols[Int](mat@87@01) && 0 < r@98@01 && r@98@01 < rows[Int](mat@87@01))]
(assert (not
  (and
    (< 0 c@97@01)
    (and
      (< c@97@01 (cols<Int> mat@87@01))
      (and (< 0 r@98@01) (< r@98@01 (rows<Int> mat@87@01)))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (< 0 c@97@01)
    (and
      (< c@97@01 (cols<Int> mat@87@01))
      (and (< 0 r@98@01) (< r@98@01 (rows<Int> mat@87@01)))))
  (and
    (< 0 c@97@01)
    (< c@97@01 (cols<Int> mat@87@01))
    (< 0 r@98@01)
    (< r@98@01 (rows<Int> mat@87@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (< 0 c@97@01)
      (and
        (< c@97@01 (cols<Int> mat@87@01))
        (and (< 0 r@98@01) (< r@98@01 (rows<Int> mat@87@01))))))
  (and
    (< 0 c@97@01)
    (and
      (< c@97@01 (cols<Int> mat@87@01))
      (and (< 0 r@98@01) (< r@98@01 (rows<Int> mat@87@01)))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((c@97@01 Int) (r@98@01 Int)) (!
  (and
    (=>
      (< 0 c@97@01)
      (and
        (< 0 c@97@01)
        (=>
          (< c@97@01 (cols<Int> mat@87@01))
          (and
            (< c@97@01 (cols<Int> mat@87@01))
            (or (< 0 r@98@01) (not (< 0 r@98@01)))))
        (or
          (< c@97@01 (cols<Int> mat@87@01))
          (not (< c@97@01 (cols<Int> mat@87@01))))))
    (or (< 0 c@97@01) (not (< 0 c@97@01)))
    (=>
      (and
        (< 0 c@97@01)
        (and
          (< c@97@01 (cols<Int> mat@87@01))
          (and (< 0 r@98@01) (< r@98@01 (rows<Int> mat@87@01)))))
      (and
        (< 0 c@97@01)
        (< c@97@01 (cols<Int> mat@87@01))
        (< 0 r@98@01)
        (< r@98@01 (rows<Int> mat@87@01))))
    (or
      (not
        (and
          (< 0 c@97@01)
          (and
            (< c@97@01 (cols<Int> mat@87@01))
            (and (< 0 r@98@01) (< r@98@01 (rows<Int> mat@87@01))))))
      (and
        (< 0 c@97@01)
        (and
          (< c@97@01 (cols<Int> mat@87@01))
          (and (< 0 r@98@01) (< r@98@01 (rows<Int> mat@87@01)))))))
  :pattern ((loc<Ref> mat@87@01 c@97@01 r@98@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@82@12@85@67-aux|)))
(assert (forall ((c@97@01 Int) (r@98@01 Int)) (!
  (=>
    (and
      (< 0 c@97@01)
      (and
        (< c@97@01 (cols<Int> mat@87@01))
        (and (< 0 r@98@01) (< r@98@01 (rows<Int> mat@87@01)))))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 c@97@01 r@98@01))
      (+
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 (-
          c@97@01
          1) r@98@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 c@97@01 (-
          r@98@01
          1))))))
  :pattern ((loc<Ref> mat@87@01 c@97@01 r@98@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@82@12@85@67|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@88@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@88@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@88@01))))
  $Snap.unit))
; [eval] 5 <= cols(mat)
; [eval] cols(mat)
(assert (<= 5 (cols<Int> mat@87@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01))))
  $Snap.unit))
; [eval] cols(mat) <= rows(mat)
; [eval] cols(mat)
; [eval] rows(mat)
(assert (<= (cols<Int> mat@87@01) (rows<Int> mat@87@01)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var olddet: Int
(declare-const olddet@99@01 Int)
; [exec]
; var oldcolsum3: Int
(declare-const oldcolsum3@100@01 Int)
; [exec]
; var oldrowsum2: Int
(declare-const oldrowsum2@101@01 Int)
; [exec]
; assert loc(mat, 1, 0).val == 1 && loc(mat, 0, 1).val == 3 ==>
;   loc(mat, 1, 1).val == 4
; [eval] loc(mat, 1, 0).val == 1 && loc(mat, 0, 1).val == 3 ==> loc(mat, 1, 1).val == 4
; [eval] loc(mat, 1, 0).val == 1 && loc(mat, 0, 1).val == 3
; [eval] loc(mat, 1, 0).val == 1
; [eval] loc(mat, 1, 0)
(push) ; 3
(assert (not (and
  (and (img@92@01 (loc<Ref> mat@87@01 1 0)) (img@94@01 (loc<Ref> mat@87@01 1 0)))
  (and
    (<= 0 (inv@91@01 (loc<Ref> mat@87@01 1 0)))
    (and
      (< (inv@91@01 (loc<Ref> mat@87@01 1 0)) (cols<Int> mat@87@01))
      (and
        (<= 0 (inv@93@01 (loc<Ref> mat@87@01 1 0)))
        (< (inv@93@01 (loc<Ref> mat@87@01 1 0)) (rows<Int> mat@87@01))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
; [then-branch: 54 | Lookup(val, First:($t@88@01), loc[Ref](mat@87@01, 1, 0)) != 1 | live]
; [else-branch: 54 | Lookup(val, First:($t@88@01), loc[Ref](mat@87@01, 1, 0)) == 1 | live]
(push) ; 4
; [then-branch: 54 | Lookup(val, First:($t@88@01), loc[Ref](mat@87@01, 1, 0)) != 1]
(assert (not
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 1 0))
    1)))
(pop) ; 4
(push) ; 4
; [else-branch: 54 | Lookup(val, First:($t@88@01), loc[Ref](mat@87@01, 1, 0)) == 1]
(assert (=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 1 0))
  1))
; [eval] loc(mat, 0, 1).val == 3
; [eval] loc(mat, 0, 1)
(push) ; 5
(assert (not (and
  (and (img@92@01 (loc<Ref> mat@87@01 0 1)) (img@94@01 (loc<Ref> mat@87@01 0 1)))
  (and
    (<= 0 (inv@91@01 (loc<Ref> mat@87@01 0 1)))
    (and
      (< (inv@91@01 (loc<Ref> mat@87@01 0 1)) (cols<Int> mat@87@01))
      (and
        (<= 0 (inv@93@01 (loc<Ref> mat@87@01 0 1)))
        (< (inv@93@01 (loc<Ref> mat@87@01 0 1)) (rows<Int> mat@87@01))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 1 0))
    1)
  (not
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 1 0))
      1))))
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (and
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 1 0))
      1)
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 0 1))
      3)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (and
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 1 0))
    1)
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 0 1))
    3))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 55 | Lookup(val, First:($t@88@01), loc[Ref](mat@87@01, 1, 0)) == 1 && Lookup(val, First:($t@88@01), loc[Ref](mat@87@01, 0, 1)) == 3 | live]
; [else-branch: 55 | !(Lookup(val, First:($t@88@01), loc[Ref](mat@87@01, 1, 0)) == 1 && Lookup(val, First:($t@88@01), loc[Ref](mat@87@01, 0, 1)) == 3) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 55 | Lookup(val, First:($t@88@01), loc[Ref](mat@87@01, 1, 0)) == 1 && Lookup(val, First:($t@88@01), loc[Ref](mat@87@01, 0, 1)) == 3]
(assert (and
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 1 0))
    1)
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 0 1))
    3)))
; [eval] loc(mat, 1, 1).val == 4
; [eval] loc(mat, 1, 1)
(push) ; 5
(assert (not (and
  (and (img@92@01 (loc<Ref> mat@87@01 1 1)) (img@94@01 (loc<Ref> mat@87@01 1 1)))
  (and
    (<= 0 (inv@91@01 (loc<Ref> mat@87@01 1 1)))
    (and
      (< (inv@91@01 (loc<Ref> mat@87@01 1 1)) (cols<Int> mat@87@01))
      (and
        (<= 0 (inv@93@01 (loc<Ref> mat@87@01 1 1)))
        (< (inv@93@01 (loc<Ref> mat@87@01 1 1)) (rows<Int> mat@87@01))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 55 | !(Lookup(val, First:($t@88@01), loc[Ref](mat@87@01, 1, 0)) == 1 && Lookup(val, First:($t@88@01), loc[Ref](mat@87@01, 0, 1)) == 3)]
(assert (not
  (and
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 1 0))
      1)
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 0 1))
      3))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 1 0))
        1)
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 0 1))
        3)))
  (and
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 1 0))
      1)
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 0 1))
      3))))
(push) ; 3
(assert (not (=>
  (and
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 1 0))
      1)
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 0 1))
      3))
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 1 1))
    4))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 1 0))
      1)
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 0 1))
      3))
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) (loc<Ref> mat@87@01 1 1))
    4)))
; [exec]
; olddet := det(mat)
; [eval] det(mat)
(push) ; 3
(declare-const c@102@01 Int)
(declare-const r@103@01 Int)
(push) ; 4
; [eval] 0 <= c && (c < cols(mat) && (0 <= r && r < rows(mat)))
; [eval] 0 <= c
(push) ; 5
; [then-branch: 56 | !(0 <= c@102@01) | live]
; [else-branch: 56 | 0 <= c@102@01 | live]
(push) ; 6
; [then-branch: 56 | !(0 <= c@102@01)]
(assert (not (<= 0 c@102@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 56 | 0 <= c@102@01]
(assert (<= 0 c@102@01))
; [eval] c < cols(mat)
; [eval] cols(mat)
(push) ; 7
; [then-branch: 57 | !(c@102@01 < cols[Int](mat@87@01)) | live]
; [else-branch: 57 | c@102@01 < cols[Int](mat@87@01) | live]
(push) ; 8
; [then-branch: 57 | !(c@102@01 < cols[Int](mat@87@01))]
(assert (not (< c@102@01 (cols<Int> mat@87@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 57 | c@102@01 < cols[Int](mat@87@01)]
(assert (< c@102@01 (cols<Int> mat@87@01)))
; [eval] 0 <= r
(push) ; 9
; [then-branch: 58 | !(0 <= r@103@01) | live]
; [else-branch: 58 | 0 <= r@103@01 | live]
(push) ; 10
; [then-branch: 58 | !(0 <= r@103@01)]
(assert (not (<= 0 r@103@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 58 | 0 <= r@103@01]
(assert (<= 0 r@103@01))
; [eval] r < rows(mat)
; [eval] rows(mat)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 r@103@01) (not (<= 0 r@103@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< c@102@01 (cols<Int> mat@87@01))
  (and
    (< c@102@01 (cols<Int> mat@87@01))
    (or (<= 0 r@103@01) (not (<= 0 r@103@01))))))
(assert (or (< c@102@01 (cols<Int> mat@87@01)) (not (< c@102@01 (cols<Int> mat@87@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 c@102@01)
  (and
    (<= 0 c@102@01)
    (=>
      (< c@102@01 (cols<Int> mat@87@01))
      (and
        (< c@102@01 (cols<Int> mat@87@01))
        (or (<= 0 r@103@01) (not (<= 0 r@103@01)))))
    (or
      (< c@102@01 (cols<Int> mat@87@01))
      (not (< c@102@01 (cols<Int> mat@87@01)))))))
(assert (or (<= 0 c@102@01) (not (<= 0 c@102@01))))
(assert (and
  (<= 0 c@102@01)
  (and
    (< c@102@01 (cols<Int> mat@87@01))
    (and (<= 0 r@103@01) (< r@103@01 (rows<Int> mat@87@01))))))
; [eval] loc(mat, c, r)
(pop) ; 4
(declare-fun inv@104@01 ($Ref) Int)
(declare-fun img@105@01 ($Ref) Bool)
(declare-fun inv@106@01 ($Ref) Int)
(declare-fun img@107@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((c@102@01 Int) (r@103@01 Int)) (!
  (=>
    (and
      (<= 0 c@102@01)
      (and
        (< c@102@01 (cols<Int> mat@87@01))
        (and (<= 0 r@103@01) (< r@103@01 (rows<Int> mat@87@01)))))
    (and
      (=>
        (<= 0 c@102@01)
        (and
          (<= 0 c@102@01)
          (=>
            (< c@102@01 (cols<Int> mat@87@01))
            (and
              (< c@102@01 (cols<Int> mat@87@01))
              (or (<= 0 r@103@01) (not (<= 0 r@103@01)))))
          (or
            (< c@102@01 (cols<Int> mat@87@01))
            (not (< c@102@01 (cols<Int> mat@87@01))))))
      (or (<= 0 c@102@01) (not (<= 0 c@102@01)))))
  :pattern ((loc<Ref> mat@87@01 c@102@01 r@103@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((c1@102@01 Int) (r1@103@01 Int) (c2@102@01 Int) (r2@103@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 c1@102@01)
        (and
          (< c1@102@01 (cols<Int> mat@87@01))
          (and (<= 0 r1@103@01) (< r1@103@01 (rows<Int> mat@87@01)))))
      (and
        (<= 0 c2@102@01)
        (and
          (< c2@102@01 (cols<Int> mat@87@01))
          (and (<= 0 r2@103@01) (< r2@103@01 (rows<Int> mat@87@01)))))
      (=
        (loc<Ref> mat@87@01 c1@102@01 r1@103@01)
        (loc<Ref> mat@87@01 c2@102@01 r2@103@01)))
    (and (= c1@102@01 c2@102@01) (= r1@103@01 r2@103@01)))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((c@102@01 Int) (r@103@01 Int)) (!
  (=>
    (and
      (<= 0 c@102@01)
      (and
        (< c@102@01 (cols<Int> mat@87@01))
        (and (<= 0 r@103@01) (< r@103@01 (rows<Int> mat@87@01)))))
    (and
      (and
        (= (inv@104@01 (loc<Ref> mat@87@01 c@102@01 r@103@01)) c@102@01)
        (= (inv@106@01 (loc<Ref> mat@87@01 c@102@01 r@103@01)) r@103@01))
      (and
        (img@105@01 (loc<Ref> mat@87@01 c@102@01 r@103@01))
        (img@107@01 (loc<Ref> mat@87@01 c@102@01 r@103@01)))))
  :pattern ((loc<Ref> mat@87@01 c@102@01 r@103@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (img@105@01 r) (img@107@01 r))
      (and
        (<= 0 (inv@104@01 r))
        (and
          (< (inv@104@01 r) (cols<Int> mat@87@01))
          (and (<= 0 (inv@106@01 r)) (< (inv@106@01 r) (rows<Int> mat@87@01))))))
    (= (loc<Ref> mat@87@01 (inv@104@01 r) (inv@106@01 r)) r))
  :pattern ((inv@104@01 r))
  :pattern ((inv@106@01 r))
  :qid |val-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (<= 0 (inv@104@01 r))
        (and
          (< (inv@104@01 r) (cols<Int> mat@87@01))
          (and (<= 0 (inv@106@01 r)) (< (inv@106@01 r) (rows<Int> mat@87@01)))))
      (and (img@105@01 r) (img@107@01 r))
      (= r (loc<Ref> mat@87@01 (inv@104@01 r) (inv@106@01 r))))
    (>
      (ite
        (and
          (and (img@92@01 r) (img@94@01 r))
          (and
            (<= 0 (inv@91@01 r))
            (and
              (< (inv@91@01 r) (cols<Int> mat@87@01))
              (and (<= 0 (inv@93@01 r)) (< (inv@93@01 r) (rows<Int> mat@87@01))))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-16607|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@108@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@108@01  $FVF<val>)))
      (and
        (and
          (<= 0 (inv@104@01 r))
          (and
            (< (inv@104@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@106@01 r)) (< (inv@106@01 r) (rows<Int> mat@87@01)))))
        (and (img@105@01 r) (img@107@01 r))))
    (=>
      (and
        (and
          (<= 0 (inv@104@01 r))
          (and
            (< (inv@104@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@106@01 r)) (< (inv@106@01 r) (rows<Int> mat@87@01)))))
        (and (img@105@01 r) (img@107@01 r)))
      (Set_in r ($FVF.domain_val (as sm@108@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@108@01  $FVF<val>))))
  :qid |qp.fvfDomDef1|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@104@01 r))
          (and
            (< (inv@104@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@106@01 r)) (< (inv@106@01 r) (rows<Int> mat@87@01)))))
        (and (img@105@01 r) (img@107@01 r)))
      (and
        (and (img@92@01 r) (img@94@01 r))
        (and
          (<= 0 (inv@91@01 r))
          (and
            (< (inv@91@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@93@01 r)) (< (inv@93@01 r) (rows<Int> mat@87@01)))))))
    (=
      ($FVF.lookup_val (as sm@108@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r)))
  :pattern (($FVF.lookup_val (as sm@108@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r))
  :qid |qp.fvfValDef0|)))
(assert (det%precondition ($SortWrappers.$FVF<val>To$Snap (as sm@108@01  $FVF<val>)) mat@87@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((c@102@01 Int) (r@103@01 Int)) (!
  (=>
    (and
      (<= 0 c@102@01)
      (and
        (< c@102@01 (cols<Int> mat@87@01))
        (and (<= 0 r@103@01) (< r@103@01 (rows<Int> mat@87@01)))))
    (and
      (and
        (= (inv@104@01 (loc<Ref> mat@87@01 c@102@01 r@103@01)) c@102@01)
        (= (inv@106@01 (loc<Ref> mat@87@01 c@102@01 r@103@01)) r@103@01))
      (and
        (img@105@01 (loc<Ref> mat@87@01 c@102@01 r@103@01))
        (img@107@01 (loc<Ref> mat@87@01 c@102@01 r@103@01)))))
  :pattern ((loc<Ref> mat@87@01 c@102@01 r@103@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (img@105@01 r) (img@107@01 r))
      (and
        (<= 0 (inv@104@01 r))
        (and
          (< (inv@104@01 r) (cols<Int> mat@87@01))
          (and (<= 0 (inv@106@01 r)) (< (inv@106@01 r) (rows<Int> mat@87@01))))))
    (= (loc<Ref> mat@87@01 (inv@104@01 r) (inv@106@01 r)) r))
  :pattern ((inv@104@01 r))
  :pattern ((inv@106@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@108@01  $FVF<val>)))
      (and
        (and
          (<= 0 (inv@104@01 r))
          (and
            (< (inv@104@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@106@01 r)) (< (inv@106@01 r) (rows<Int> mat@87@01)))))
        (and (img@105@01 r) (img@107@01 r))))
    (=>
      (and
        (and
          (<= 0 (inv@104@01 r))
          (and
            (< (inv@104@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@106@01 r)) (< (inv@106@01 r) (rows<Int> mat@87@01)))))
        (and (img@105@01 r) (img@107@01 r)))
      (Set_in r ($FVF.domain_val (as sm@108@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@108@01  $FVF<val>))))
  :qid |qp.fvfDomDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@104@01 r))
          (and
            (< (inv@104@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@106@01 r)) (< (inv@106@01 r) (rows<Int> mat@87@01)))))
        (and (img@105@01 r) (img@107@01 r)))
      (and
        (and (img@92@01 r) (img@94@01 r))
        (and
          (<= 0 (inv@91@01 r))
          (and
            (< (inv@91@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@93@01 r)) (< (inv@93@01 r) (rows<Int> mat@87@01)))))))
    (=
      ($FVF.lookup_val (as sm@108@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r)))
  :pattern (($FVF.lookup_val (as sm@108@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r))
  :qid |qp.fvfValDef0|)))
(assert (and
  (forall ((c@102@01 Int) (r@103@01 Int)) (!
    (=>
      (and
        (<= 0 c@102@01)
        (and
          (< c@102@01 (cols<Int> mat@87@01))
          (and (<= 0 r@103@01) (< r@103@01 (rows<Int> mat@87@01)))))
      (and
        (=>
          (<= 0 c@102@01)
          (and
            (<= 0 c@102@01)
            (=>
              (< c@102@01 (cols<Int> mat@87@01))
              (and
                (< c@102@01 (cols<Int> mat@87@01))
                (or (<= 0 r@103@01) (not (<= 0 r@103@01)))))
            (or
              (< c@102@01 (cols<Int> mat@87@01))
              (not (< c@102@01 (cols<Int> mat@87@01))))))
        (or (<= 0 c@102@01) (not (<= 0 c@102@01)))))
    :pattern ((loc<Ref> mat@87@01 c@102@01 r@103@01))
    :qid |val-aux|))
  (det%precondition ($SortWrappers.$FVF<val>To$Snap (as sm@108@01  $FVF<val>)) mat@87@01)))
(declare-const olddet@109@01 Int)
(assert (=
  olddet@109@01
  (det ($SortWrappers.$FVF<val>To$Snap (as sm@108@01  $FVF<val>)) mat@87@01)))
; [exec]
; oldcolsum3 := colsum(mat, 3)
; [eval] colsum(mat, 3)
(push) ; 3
; [eval] 0 <= col
; [eval] col < cols(mat)
; [eval] cols(mat)
(push) ; 4
(assert (not (< 3 (cols<Int> mat@87@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< 3 (cols<Int> mat@87@01)))
(declare-const r@110@01 Int)
(push) ; 4
; [eval] 0 <= r && r < rows(mat)
; [eval] 0 <= r
(push) ; 5
; [then-branch: 59 | !(0 <= r@110@01) | live]
; [else-branch: 59 | 0 <= r@110@01 | live]
(push) ; 6
; [then-branch: 59 | !(0 <= r@110@01)]
(assert (not (<= 0 r@110@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 59 | 0 <= r@110@01]
(assert (<= 0 r@110@01))
; [eval] r < rows(mat)
; [eval] rows(mat)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 r@110@01) (not (<= 0 r@110@01))))
(assert (and (<= 0 r@110@01) (< r@110@01 (rows<Int> mat@87@01))))
; [eval] loc(mat, col, r)
(pop) ; 4
(declare-fun inv@111@01 ($Ref) Int)
(declare-fun img@112@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((r@110@01 Int)) (!
  (=>
    (and (<= 0 r@110@01) (< r@110@01 (rows<Int> mat@87@01)))
    (or (<= 0 r@110@01) (not (<= 0 r@110@01))))
  :pattern ((loc<Ref> mat@87@01 3 r@110@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((r1@110@01 Int) (r2@110@01 Int)) (!
  (=>
    (and
      (and (<= 0 r1@110@01) (< r1@110@01 (rows<Int> mat@87@01)))
      (and (<= 0 r2@110@01) (< r2@110@01 (rows<Int> mat@87@01)))
      (= (loc<Ref> mat@87@01 3 r1@110@01) (loc<Ref> mat@87@01 3 r2@110@01)))
    (= r1@110@01 r2@110@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@110@01 Int)) (!
  (=>
    (and (<= 0 r@110@01) (< r@110@01 (rows<Int> mat@87@01)))
    (and
      (= (inv@111@01 (loc<Ref> mat@87@01 3 r@110@01)) r@110@01)
      (img@112@01 (loc<Ref> mat@87@01 3 r@110@01))))
  :pattern ((loc<Ref> mat@87@01 3 r@110@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@112@01 r)
      (and (<= 0 (inv@111@01 r)) (< (inv@111@01 r) (rows<Int> mat@87@01))))
    (= (loc<Ref> mat@87@01 3 (inv@111@01 r)) r))
  :pattern ((inv@111@01 r))
  :qid |val-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@111@01 r)) (< (inv@111@01 r) (rows<Int> mat@87@01)))
      (img@112@01 r)
      (= r (loc<Ref> mat@87@01 3 (inv@111@01 r))))
    (>
      (ite
        (and
          (and (img@92@01 r) (img@94@01 r))
          (and
            (<= 0 (inv@91@01 r))
            (and
              (< (inv@91@01 r) (cols<Int> mat@87@01))
              (and (<= 0 (inv@93@01 r)) (< (inv@93@01 r) (rows<Int> mat@87@01))))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-16609|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@113@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@113@01  $FVF<val>)))
      (and
        (and (<= 0 (inv@111@01 r)) (< (inv@111@01 r) (rows<Int> mat@87@01)))
        (img@112@01 r)))
    (=>
      (and
        (and (<= 0 (inv@111@01 r)) (< (inv@111@01 r) (rows<Int> mat@87@01)))
        (img@112@01 r))
      (Set_in r ($FVF.domain_val (as sm@113@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@113@01  $FVF<val>))))
  :qid |qp.fvfDomDef3|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@111@01 r)) (< (inv@111@01 r) (rows<Int> mat@87@01)))
        (img@112@01 r))
      (and
        (and (img@92@01 r) (img@94@01 r))
        (and
          (<= 0 (inv@91@01 r))
          (and
            (< (inv@91@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@93@01 r)) (< (inv@93@01 r) (rows<Int> mat@87@01)))))))
    (=
      ($FVF.lookup_val (as sm@113@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r)))
  :pattern (($FVF.lookup_val (as sm@113@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r))
  :qid |qp.fvfValDef2|)))
(assert (colsum%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<val>To$Snap (as sm@113@01  $FVF<val>)))) mat@87@01 3))
(pop) ; 3
; Joined path conditions
(assert (forall ((r@110@01 Int)) (!
  (=>
    (and (<= 0 r@110@01) (< r@110@01 (rows<Int> mat@87@01)))
    (and
      (= (inv@111@01 (loc<Ref> mat@87@01 3 r@110@01)) r@110@01)
      (img@112@01 (loc<Ref> mat@87@01 3 r@110@01))))
  :pattern ((loc<Ref> mat@87@01 3 r@110@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@112@01 r)
      (and (<= 0 (inv@111@01 r)) (< (inv@111@01 r) (rows<Int> mat@87@01))))
    (= (loc<Ref> mat@87@01 3 (inv@111@01 r)) r))
  :pattern ((inv@111@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@113@01  $FVF<val>)))
      (and
        (and (<= 0 (inv@111@01 r)) (< (inv@111@01 r) (rows<Int> mat@87@01)))
        (img@112@01 r)))
    (=>
      (and
        (and (<= 0 (inv@111@01 r)) (< (inv@111@01 r) (rows<Int> mat@87@01)))
        (img@112@01 r))
      (Set_in r ($FVF.domain_val (as sm@113@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@113@01  $FVF<val>))))
  :qid |qp.fvfDomDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@111@01 r)) (< (inv@111@01 r) (rows<Int> mat@87@01)))
        (img@112@01 r))
      (and
        (and (img@92@01 r) (img@94@01 r))
        (and
          (<= 0 (inv@91@01 r))
          (and
            (< (inv@91@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@93@01 r)) (< (inv@93@01 r) (rows<Int> mat@87@01)))))))
    (=
      ($FVF.lookup_val (as sm@113@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r)))
  :pattern (($FVF.lookup_val (as sm@113@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r))
  :qid |qp.fvfValDef2|)))
(assert (and
  (< 3 (cols<Int> mat@87@01))
  (forall ((r@110@01 Int)) (!
    (=>
      (and (<= 0 r@110@01) (< r@110@01 (rows<Int> mat@87@01)))
      (or (<= 0 r@110@01) (not (<= 0 r@110@01))))
    :pattern ((loc<Ref> mat@87@01 3 r@110@01))
    :qid |val-aux|))
  (colsum%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<val>To$Snap (as sm@113@01  $FVF<val>)))) mat@87@01 3)))
(declare-const oldcolsum3@114@01 Int)
(assert (=
  oldcolsum3@114@01
  (colsum ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<val>To$Snap (as sm@113@01  $FVF<val>)))) mat@87@01 3)))
; [exec]
; oldrowsum2 := rowsum(mat, 2)
; [eval] rowsum(mat, 2)
(push) ; 3
; [eval] 0 <= row
; [eval] row < rows(mat)
; [eval] rows(mat)
(push) ; 4
(assert (not (< 2 (rows<Int> mat@87@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< 2 (rows<Int> mat@87@01)))
(declare-const c@115@01 Int)
(push) ; 4
; [eval] 0 <= c && c < cols(mat)
; [eval] 0 <= c
(push) ; 5
; [then-branch: 60 | !(0 <= c@115@01) | live]
; [else-branch: 60 | 0 <= c@115@01 | live]
(push) ; 6
; [then-branch: 60 | !(0 <= c@115@01)]
(assert (not (<= 0 c@115@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 60 | 0 <= c@115@01]
(assert (<= 0 c@115@01))
; [eval] c < cols(mat)
; [eval] cols(mat)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 c@115@01) (not (<= 0 c@115@01))))
(assert (and (<= 0 c@115@01) (< c@115@01 (cols<Int> mat@87@01))))
; [eval] loc(mat, c, row)
(pop) ; 4
(declare-fun inv@116@01 ($Ref) Int)
(declare-fun img@117@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((c@115@01 Int)) (!
  (=>
    (and (<= 0 c@115@01) (< c@115@01 (cols<Int> mat@87@01)))
    (or (<= 0 c@115@01) (not (<= 0 c@115@01))))
  :pattern ((loc<Ref> mat@87@01 c@115@01 2))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((c1@115@01 Int) (c2@115@01 Int)) (!
  (=>
    (and
      (and (<= 0 c1@115@01) (< c1@115@01 (cols<Int> mat@87@01)))
      (and (<= 0 c2@115@01) (< c2@115@01 (cols<Int> mat@87@01)))
      (= (loc<Ref> mat@87@01 c1@115@01 2) (loc<Ref> mat@87@01 c2@115@01 2)))
    (= c1@115@01 c2@115@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((c@115@01 Int)) (!
  (=>
    (and (<= 0 c@115@01) (< c@115@01 (cols<Int> mat@87@01)))
    (and
      (= (inv@116@01 (loc<Ref> mat@87@01 c@115@01 2)) c@115@01)
      (img@117@01 (loc<Ref> mat@87@01 c@115@01 2))))
  :pattern ((loc<Ref> mat@87@01 c@115@01 2))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@117@01 r)
      (and (<= 0 (inv@116@01 r)) (< (inv@116@01 r) (cols<Int> mat@87@01))))
    (= (loc<Ref> mat@87@01 (inv@116@01 r) 2) r))
  :pattern ((inv@116@01 r))
  :qid |val-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@116@01 r)) (< (inv@116@01 r) (cols<Int> mat@87@01)))
      (img@117@01 r)
      (= r (loc<Ref> mat@87@01 (inv@116@01 r) 2)))
    (>
      (ite
        (and
          (and (img@92@01 r) (img@94@01 r))
          (and
            (<= 0 (inv@91@01 r))
            (and
              (< (inv@91@01 r) (cols<Int> mat@87@01))
              (and (<= 0 (inv@93@01 r)) (< (inv@93@01 r) (rows<Int> mat@87@01))))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-16611|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@118@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@118@01  $FVF<val>)))
      (and
        (and (<= 0 (inv@116@01 r)) (< (inv@116@01 r) (cols<Int> mat@87@01)))
        (img@117@01 r)))
    (=>
      (and
        (and (<= 0 (inv@116@01 r)) (< (inv@116@01 r) (cols<Int> mat@87@01)))
        (img@117@01 r))
      (Set_in r ($FVF.domain_val (as sm@118@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@118@01  $FVF<val>))))
  :qid |qp.fvfDomDef5|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@116@01 r)) (< (inv@116@01 r) (cols<Int> mat@87@01)))
        (img@117@01 r))
      (and
        (and (img@92@01 r) (img@94@01 r))
        (and
          (<= 0 (inv@91@01 r))
          (and
            (< (inv@91@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@93@01 r)) (< (inv@93@01 r) (rows<Int> mat@87@01)))))))
    (=
      ($FVF.lookup_val (as sm@118@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r)))
  :pattern (($FVF.lookup_val (as sm@118@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r))
  :qid |qp.fvfValDef4|)))
(assert (rowsum%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<val>To$Snap (as sm@118@01  $FVF<val>)))) mat@87@01 2))
(pop) ; 3
; Joined path conditions
(assert (forall ((c@115@01 Int)) (!
  (=>
    (and (<= 0 c@115@01) (< c@115@01 (cols<Int> mat@87@01)))
    (and
      (= (inv@116@01 (loc<Ref> mat@87@01 c@115@01 2)) c@115@01)
      (img@117@01 (loc<Ref> mat@87@01 c@115@01 2))))
  :pattern ((loc<Ref> mat@87@01 c@115@01 2))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@117@01 r)
      (and (<= 0 (inv@116@01 r)) (< (inv@116@01 r) (cols<Int> mat@87@01))))
    (= (loc<Ref> mat@87@01 (inv@116@01 r) 2) r))
  :pattern ((inv@116@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@118@01  $FVF<val>)))
      (and
        (and (<= 0 (inv@116@01 r)) (< (inv@116@01 r) (cols<Int> mat@87@01)))
        (img@117@01 r)))
    (=>
      (and
        (and (<= 0 (inv@116@01 r)) (< (inv@116@01 r) (cols<Int> mat@87@01)))
        (img@117@01 r))
      (Set_in r ($FVF.domain_val (as sm@118@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@118@01  $FVF<val>))))
  :qid |qp.fvfDomDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@116@01 r)) (< (inv@116@01 r) (cols<Int> mat@87@01)))
        (img@117@01 r))
      (and
        (and (img@92@01 r) (img@94@01 r))
        (and
          (<= 0 (inv@91@01 r))
          (and
            (< (inv@91@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@93@01 r)) (< (inv@93@01 r) (rows<Int> mat@87@01)))))))
    (=
      ($FVF.lookup_val (as sm@118@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r)))
  :pattern (($FVF.lookup_val (as sm@118@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r))
  :qid |qp.fvfValDef4|)))
(assert (and
  (< 2 (rows<Int> mat@87@01))
  (forall ((c@115@01 Int)) (!
    (=>
      (and (<= 0 c@115@01) (< c@115@01 (cols<Int> mat@87@01)))
      (or (<= 0 c@115@01) (not (<= 0 c@115@01))))
    :pattern ((loc<Ref> mat@87@01 c@115@01 2))
    :qid |val-aux|))
  (rowsum%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<val>To$Snap (as sm@118@01  $FVF<val>)))) mat@87@01 2)))
(declare-const oldrowsum2@119@01 Int)
(assert (=
  oldrowsum2@119@01
  (rowsum ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<val>To$Snap (as sm@118@01  $FVF<val>)))) mat@87@01 2)))
; [exec]
; assert det(mat) == olddet
; [eval] det(mat) == olddet
; [eval] det(mat)
(push) ; 3
(declare-const c@120@01 Int)
(declare-const r@121@01 Int)
(push) ; 4
; [eval] 0 <= c && (c < cols(mat) && (0 <= r && r < rows(mat)))
; [eval] 0 <= c
(push) ; 5
; [then-branch: 61 | !(0 <= c@120@01) | live]
; [else-branch: 61 | 0 <= c@120@01 | live]
(push) ; 6
; [then-branch: 61 | !(0 <= c@120@01)]
(assert (not (<= 0 c@120@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 61 | 0 <= c@120@01]
(assert (<= 0 c@120@01))
; [eval] c < cols(mat)
; [eval] cols(mat)
(push) ; 7
; [then-branch: 62 | !(c@120@01 < cols[Int](mat@87@01)) | live]
; [else-branch: 62 | c@120@01 < cols[Int](mat@87@01) | live]
(push) ; 8
; [then-branch: 62 | !(c@120@01 < cols[Int](mat@87@01))]
(assert (not (< c@120@01 (cols<Int> mat@87@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 62 | c@120@01 < cols[Int](mat@87@01)]
(assert (< c@120@01 (cols<Int> mat@87@01)))
; [eval] 0 <= r
(push) ; 9
; [then-branch: 63 | !(0 <= r@121@01) | live]
; [else-branch: 63 | 0 <= r@121@01 | live]
(push) ; 10
; [then-branch: 63 | !(0 <= r@121@01)]
(assert (not (<= 0 r@121@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 63 | 0 <= r@121@01]
(assert (<= 0 r@121@01))
; [eval] r < rows(mat)
; [eval] rows(mat)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 r@121@01) (not (<= 0 r@121@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< c@120@01 (cols<Int> mat@87@01))
  (and
    (< c@120@01 (cols<Int> mat@87@01))
    (or (<= 0 r@121@01) (not (<= 0 r@121@01))))))
(assert (or (< c@120@01 (cols<Int> mat@87@01)) (not (< c@120@01 (cols<Int> mat@87@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 c@120@01)
  (and
    (<= 0 c@120@01)
    (=>
      (< c@120@01 (cols<Int> mat@87@01))
      (and
        (< c@120@01 (cols<Int> mat@87@01))
        (or (<= 0 r@121@01) (not (<= 0 r@121@01)))))
    (or
      (< c@120@01 (cols<Int> mat@87@01))
      (not (< c@120@01 (cols<Int> mat@87@01)))))))
(assert (or (<= 0 c@120@01) (not (<= 0 c@120@01))))
(assert (and
  (<= 0 c@120@01)
  (and
    (< c@120@01 (cols<Int> mat@87@01))
    (and (<= 0 r@121@01) (< r@121@01 (rows<Int> mat@87@01))))))
; [eval] loc(mat, c, r)
(pop) ; 4
(declare-fun inv@122@01 ($Ref) Int)
(declare-fun img@123@01 ($Ref) Bool)
(declare-fun inv@124@01 ($Ref) Int)
(declare-fun img@125@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((c@120@01 Int) (r@121@01 Int)) (!
  (=>
    (and
      (<= 0 c@120@01)
      (and
        (< c@120@01 (cols<Int> mat@87@01))
        (and (<= 0 r@121@01) (< r@121@01 (rows<Int> mat@87@01)))))
    (and
      (=>
        (<= 0 c@120@01)
        (and
          (<= 0 c@120@01)
          (=>
            (< c@120@01 (cols<Int> mat@87@01))
            (and
              (< c@120@01 (cols<Int> mat@87@01))
              (or (<= 0 r@121@01) (not (<= 0 r@121@01)))))
          (or
            (< c@120@01 (cols<Int> mat@87@01))
            (not (< c@120@01 (cols<Int> mat@87@01))))))
      (or (<= 0 c@120@01) (not (<= 0 c@120@01)))))
  :pattern ((loc<Ref> mat@87@01 c@120@01 r@121@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((c1@120@01 Int) (r1@121@01 Int) (c2@120@01 Int) (r2@121@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 c1@120@01)
        (and
          (< c1@120@01 (cols<Int> mat@87@01))
          (and (<= 0 r1@121@01) (< r1@121@01 (rows<Int> mat@87@01)))))
      (and
        (<= 0 c2@120@01)
        (and
          (< c2@120@01 (cols<Int> mat@87@01))
          (and (<= 0 r2@121@01) (< r2@121@01 (rows<Int> mat@87@01)))))
      (=
        (loc<Ref> mat@87@01 c1@120@01 r1@121@01)
        (loc<Ref> mat@87@01 c2@120@01 r2@121@01)))
    (and (= c1@120@01 c2@120@01) (= r1@121@01 r2@121@01)))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((c@120@01 Int) (r@121@01 Int)) (!
  (=>
    (and
      (<= 0 c@120@01)
      (and
        (< c@120@01 (cols<Int> mat@87@01))
        (and (<= 0 r@121@01) (< r@121@01 (rows<Int> mat@87@01)))))
    (and
      (and
        (= (inv@122@01 (loc<Ref> mat@87@01 c@120@01 r@121@01)) c@120@01)
        (= (inv@124@01 (loc<Ref> mat@87@01 c@120@01 r@121@01)) r@121@01))
      (and
        (img@123@01 (loc<Ref> mat@87@01 c@120@01 r@121@01))
        (img@125@01 (loc<Ref> mat@87@01 c@120@01 r@121@01)))))
  :pattern ((loc<Ref> mat@87@01 c@120@01 r@121@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (img@123@01 r) (img@125@01 r))
      (and
        (<= 0 (inv@122@01 r))
        (and
          (< (inv@122@01 r) (cols<Int> mat@87@01))
          (and (<= 0 (inv@124@01 r)) (< (inv@124@01 r) (rows<Int> mat@87@01))))))
    (= (loc<Ref> mat@87@01 (inv@122@01 r) (inv@124@01 r)) r))
  :pattern ((inv@122@01 r))
  :pattern ((inv@124@01 r))
  :qid |val-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (<= 0 (inv@122@01 r))
        (and
          (< (inv@122@01 r) (cols<Int> mat@87@01))
          (and (<= 0 (inv@124@01 r)) (< (inv@124@01 r) (rows<Int> mat@87@01)))))
      (and (img@123@01 r) (img@125@01 r))
      (= r (loc<Ref> mat@87@01 (inv@122@01 r) (inv@124@01 r))))
    (>
      (ite
        (and
          (and (img@92@01 r) (img@94@01 r))
          (and
            (<= 0 (inv@91@01 r))
            (and
              (< (inv@91@01 r) (cols<Int> mat@87@01))
              (and (<= 0 (inv@93@01 r)) (< (inv@93@01 r) (rows<Int> mat@87@01))))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-16613|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@126@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@126@01  $FVF<val>)))
      (and
        (and
          (<= 0 (inv@122@01 r))
          (and
            (< (inv@122@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@124@01 r)) (< (inv@124@01 r) (rows<Int> mat@87@01)))))
        (and (img@123@01 r) (img@125@01 r))))
    (=>
      (and
        (and
          (<= 0 (inv@122@01 r))
          (and
            (< (inv@122@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@124@01 r)) (< (inv@124@01 r) (rows<Int> mat@87@01)))))
        (and (img@123@01 r) (img@125@01 r)))
      (Set_in r ($FVF.domain_val (as sm@126@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@126@01  $FVF<val>))))
  :qid |qp.fvfDomDef7|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@122@01 r))
          (and
            (< (inv@122@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@124@01 r)) (< (inv@124@01 r) (rows<Int> mat@87@01)))))
        (and (img@123@01 r) (img@125@01 r)))
      (and
        (and (img@92@01 r) (img@94@01 r))
        (and
          (<= 0 (inv@91@01 r))
          (and
            (< (inv@91@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@93@01 r)) (< (inv@93@01 r) (rows<Int> mat@87@01)))))))
    (=
      ($FVF.lookup_val (as sm@126@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r)))
  :pattern (($FVF.lookup_val (as sm@126@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r))
  :qid |qp.fvfValDef6|)))
(assert (det%precondition ($SortWrappers.$FVF<val>To$Snap (as sm@126@01  $FVF<val>)) mat@87@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((c@120@01 Int) (r@121@01 Int)) (!
  (=>
    (and
      (<= 0 c@120@01)
      (and
        (< c@120@01 (cols<Int> mat@87@01))
        (and (<= 0 r@121@01) (< r@121@01 (rows<Int> mat@87@01)))))
    (and
      (and
        (= (inv@122@01 (loc<Ref> mat@87@01 c@120@01 r@121@01)) c@120@01)
        (= (inv@124@01 (loc<Ref> mat@87@01 c@120@01 r@121@01)) r@121@01))
      (and
        (img@123@01 (loc<Ref> mat@87@01 c@120@01 r@121@01))
        (img@125@01 (loc<Ref> mat@87@01 c@120@01 r@121@01)))))
  :pattern ((loc<Ref> mat@87@01 c@120@01 r@121@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (img@123@01 r) (img@125@01 r))
      (and
        (<= 0 (inv@122@01 r))
        (and
          (< (inv@122@01 r) (cols<Int> mat@87@01))
          (and (<= 0 (inv@124@01 r)) (< (inv@124@01 r) (rows<Int> mat@87@01))))))
    (= (loc<Ref> mat@87@01 (inv@122@01 r) (inv@124@01 r)) r))
  :pattern ((inv@122@01 r))
  :pattern ((inv@124@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@126@01  $FVF<val>)))
      (and
        (and
          (<= 0 (inv@122@01 r))
          (and
            (< (inv@122@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@124@01 r)) (< (inv@124@01 r) (rows<Int> mat@87@01)))))
        (and (img@123@01 r) (img@125@01 r))))
    (=>
      (and
        (and
          (<= 0 (inv@122@01 r))
          (and
            (< (inv@122@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@124@01 r)) (< (inv@124@01 r) (rows<Int> mat@87@01)))))
        (and (img@123@01 r) (img@125@01 r)))
      (Set_in r ($FVF.domain_val (as sm@126@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@126@01  $FVF<val>))))
  :qid |qp.fvfDomDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@122@01 r))
          (and
            (< (inv@122@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@124@01 r)) (< (inv@124@01 r) (rows<Int> mat@87@01)))))
        (and (img@123@01 r) (img@125@01 r)))
      (and
        (and (img@92@01 r) (img@94@01 r))
        (and
          (<= 0 (inv@91@01 r))
          (and
            (< (inv@91@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@93@01 r)) (< (inv@93@01 r) (rows<Int> mat@87@01)))))))
    (=
      ($FVF.lookup_val (as sm@126@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r)))
  :pattern (($FVF.lookup_val (as sm@126@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r))
  :qid |qp.fvfValDef6|)))
(assert (and
  (forall ((c@120@01 Int) (r@121@01 Int)) (!
    (=>
      (and
        (<= 0 c@120@01)
        (and
          (< c@120@01 (cols<Int> mat@87@01))
          (and (<= 0 r@121@01) (< r@121@01 (rows<Int> mat@87@01)))))
      (and
        (=>
          (<= 0 c@120@01)
          (and
            (<= 0 c@120@01)
            (=>
              (< c@120@01 (cols<Int> mat@87@01))
              (and
                (< c@120@01 (cols<Int> mat@87@01))
                (or (<= 0 r@121@01) (not (<= 0 r@121@01)))))
            (or
              (< c@120@01 (cols<Int> mat@87@01))
              (not (< c@120@01 (cols<Int> mat@87@01))))))
        (or (<= 0 c@120@01) (not (<= 0 c@120@01)))))
    :pattern ((loc<Ref> mat@87@01 c@120@01 r@121@01))
    :qid |val-aux|))
  (det%precondition ($SortWrappers.$FVF<val>To$Snap (as sm@126@01  $FVF<val>)) mat@87@01)))
(push) ; 3
(assert (not (=
  (det ($SortWrappers.$FVF<val>To$Snap (as sm@126@01  $FVF<val>)) mat@87@01)
  olddet@109@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(assert (=
  (det ($SortWrappers.$FVF<val>To$Snap (as sm@126@01  $FVF<val>)) mat@87@01)
  olddet@109@01))
; [exec]
; assert colsum(mat, 3) == oldcolsum3
; [eval] colsum(mat, 3) == oldcolsum3
; [eval] colsum(mat, 3)
(push) ; 3
; [eval] 0 <= col
; [eval] col < cols(mat)
; [eval] cols(mat)
(declare-const r@127@01 Int)
(push) ; 4
; [eval] 0 <= r && r < rows(mat)
; [eval] 0 <= r
(push) ; 5
; [then-branch: 64 | !(0 <= r@127@01) | live]
; [else-branch: 64 | 0 <= r@127@01 | live]
(push) ; 6
; [then-branch: 64 | !(0 <= r@127@01)]
(assert (not (<= 0 r@127@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 64 | 0 <= r@127@01]
(assert (<= 0 r@127@01))
; [eval] r < rows(mat)
; [eval] rows(mat)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 r@127@01) (not (<= 0 r@127@01))))
(assert (and (<= 0 r@127@01) (< r@127@01 (rows<Int> mat@87@01))))
; [eval] loc(mat, col, r)
(pop) ; 4
(declare-fun inv@128@01 ($Ref) Int)
(declare-fun img@129@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((r@127@01 Int)) (!
  (=>
    (and (<= 0 r@127@01) (< r@127@01 (rows<Int> mat@87@01)))
    (or (<= 0 r@127@01) (not (<= 0 r@127@01))))
  :pattern ((loc<Ref> mat@87@01 3 r@127@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((r1@127@01 Int) (r2@127@01 Int)) (!
  (=>
    (and
      (and (<= 0 r1@127@01) (< r1@127@01 (rows<Int> mat@87@01)))
      (and (<= 0 r2@127@01) (< r2@127@01 (rows<Int> mat@87@01)))
      (= (loc<Ref> mat@87@01 3 r1@127@01) (loc<Ref> mat@87@01 3 r2@127@01)))
    (= r1@127@01 r2@127@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@127@01 Int)) (!
  (=>
    (and (<= 0 r@127@01) (< r@127@01 (rows<Int> mat@87@01)))
    (and
      (= (inv@128@01 (loc<Ref> mat@87@01 3 r@127@01)) r@127@01)
      (img@129@01 (loc<Ref> mat@87@01 3 r@127@01))))
  :pattern ((loc<Ref> mat@87@01 3 r@127@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@129@01 r)
      (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) (rows<Int> mat@87@01))))
    (= (loc<Ref> mat@87@01 3 (inv@128@01 r)) r))
  :pattern ((inv@128@01 r))
  :qid |val-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) (rows<Int> mat@87@01)))
      (img@129@01 r)
      (= r (loc<Ref> mat@87@01 3 (inv@128@01 r))))
    (>
      (ite
        (and
          (and (img@92@01 r) (img@94@01 r))
          (and
            (<= 0 (inv@91@01 r))
            (and
              (< (inv@91@01 r) (cols<Int> mat@87@01))
              (and (<= 0 (inv@93@01 r)) (< (inv@93@01 r) (rows<Int> mat@87@01))))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-16615|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@130@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@130@01  $FVF<val>)))
      (and
        (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) (rows<Int> mat@87@01)))
        (img@129@01 r)))
    (=>
      (and
        (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) (rows<Int> mat@87@01)))
        (img@129@01 r))
      (Set_in r ($FVF.domain_val (as sm@130@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@130@01  $FVF<val>))))
  :qid |qp.fvfDomDef9|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) (rows<Int> mat@87@01)))
        (img@129@01 r))
      (and
        (and (img@92@01 r) (img@94@01 r))
        (and
          (<= 0 (inv@91@01 r))
          (and
            (< (inv@91@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@93@01 r)) (< (inv@93@01 r) (rows<Int> mat@87@01)))))))
    (=
      ($FVF.lookup_val (as sm@130@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r)))
  :pattern (($FVF.lookup_val (as sm@130@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r))
  :qid |qp.fvfValDef8|)))
(assert (colsum%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<val>To$Snap (as sm@130@01  $FVF<val>)))) mat@87@01 3))
(pop) ; 3
; Joined path conditions
(assert (forall ((r@127@01 Int)) (!
  (=>
    (and (<= 0 r@127@01) (< r@127@01 (rows<Int> mat@87@01)))
    (and
      (= (inv@128@01 (loc<Ref> mat@87@01 3 r@127@01)) r@127@01)
      (img@129@01 (loc<Ref> mat@87@01 3 r@127@01))))
  :pattern ((loc<Ref> mat@87@01 3 r@127@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@129@01 r)
      (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) (rows<Int> mat@87@01))))
    (= (loc<Ref> mat@87@01 3 (inv@128@01 r)) r))
  :pattern ((inv@128@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@130@01  $FVF<val>)))
      (and
        (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) (rows<Int> mat@87@01)))
        (img@129@01 r)))
    (=>
      (and
        (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) (rows<Int> mat@87@01)))
        (img@129@01 r))
      (Set_in r ($FVF.domain_val (as sm@130@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@130@01  $FVF<val>))))
  :qid |qp.fvfDomDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) (rows<Int> mat@87@01)))
        (img@129@01 r))
      (and
        (and (img@92@01 r) (img@94@01 r))
        (and
          (<= 0 (inv@91@01 r))
          (and
            (< (inv@91@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@93@01 r)) (< (inv@93@01 r) (rows<Int> mat@87@01)))))))
    (=
      ($FVF.lookup_val (as sm@130@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r)))
  :pattern (($FVF.lookup_val (as sm@130@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r))
  :qid |qp.fvfValDef8|)))
(assert (and
  (forall ((r@127@01 Int)) (!
    (=>
      (and (<= 0 r@127@01) (< r@127@01 (rows<Int> mat@87@01)))
      (or (<= 0 r@127@01) (not (<= 0 r@127@01))))
    :pattern ((loc<Ref> mat@87@01 3 r@127@01))
    :qid |val-aux|))
  (colsum%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<val>To$Snap (as sm@130@01  $FVF<val>)))) mat@87@01 3)))
(push) ; 3
(assert (not (=
  (colsum ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<val>To$Snap (as sm@130@01  $FVF<val>)))) mat@87@01 3)
  oldcolsum3@114@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.02s
; (get-info :all-statistics)
(assert (=
  (colsum ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<val>To$Snap (as sm@130@01  $FVF<val>)))) mat@87@01 3)
  oldcolsum3@114@01))
; [exec]
; assert rowsum(mat, 2) == oldrowsum2
; [eval] rowsum(mat, 2) == oldrowsum2
; [eval] rowsum(mat, 2)
(push) ; 3
; [eval] 0 <= row
; [eval] row < rows(mat)
; [eval] rows(mat)
(declare-const c@131@01 Int)
(push) ; 4
; [eval] 0 <= c && c < cols(mat)
; [eval] 0 <= c
(push) ; 5
; [then-branch: 65 | !(0 <= c@131@01) | live]
; [else-branch: 65 | 0 <= c@131@01 | live]
(push) ; 6
; [then-branch: 65 | !(0 <= c@131@01)]
(assert (not (<= 0 c@131@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 65 | 0 <= c@131@01]
(assert (<= 0 c@131@01))
; [eval] c < cols(mat)
; [eval] cols(mat)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 c@131@01) (not (<= 0 c@131@01))))
(assert (and (<= 0 c@131@01) (< c@131@01 (cols<Int> mat@87@01))))
; [eval] loc(mat, c, row)
(pop) ; 4
(declare-fun inv@132@01 ($Ref) Int)
(declare-fun img@133@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((c@131@01 Int)) (!
  (=>
    (and (<= 0 c@131@01) (< c@131@01 (cols<Int> mat@87@01)))
    (or (<= 0 c@131@01) (not (<= 0 c@131@01))))
  :pattern ((loc<Ref> mat@87@01 c@131@01 2))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((c1@131@01 Int) (c2@131@01 Int)) (!
  (=>
    (and
      (and (<= 0 c1@131@01) (< c1@131@01 (cols<Int> mat@87@01)))
      (and (<= 0 c2@131@01) (< c2@131@01 (cols<Int> mat@87@01)))
      (= (loc<Ref> mat@87@01 c1@131@01 2) (loc<Ref> mat@87@01 c2@131@01 2)))
    (= c1@131@01 c2@131@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((c@131@01 Int)) (!
  (=>
    (and (<= 0 c@131@01) (< c@131@01 (cols<Int> mat@87@01)))
    (and
      (= (inv@132@01 (loc<Ref> mat@87@01 c@131@01 2)) c@131@01)
      (img@133@01 (loc<Ref> mat@87@01 c@131@01 2))))
  :pattern ((loc<Ref> mat@87@01 c@131@01 2))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@133@01 r)
      (and (<= 0 (inv@132@01 r)) (< (inv@132@01 r) (cols<Int> mat@87@01))))
    (= (loc<Ref> mat@87@01 (inv@132@01 r) 2) r))
  :pattern ((inv@132@01 r))
  :qid |val-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@132@01 r)) (< (inv@132@01 r) (cols<Int> mat@87@01)))
      (img@133@01 r)
      (= r (loc<Ref> mat@87@01 (inv@132@01 r) 2)))
    (>
      (ite
        (and
          (and (img@92@01 r) (img@94@01 r))
          (and
            (<= 0 (inv@91@01 r))
            (and
              (< (inv@91@01 r) (cols<Int> mat@87@01))
              (and (<= 0 (inv@93@01 r)) (< (inv@93@01 r) (rows<Int> mat@87@01))))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-16617|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@134@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@134@01  $FVF<val>)))
      (and
        (and (<= 0 (inv@132@01 r)) (< (inv@132@01 r) (cols<Int> mat@87@01)))
        (img@133@01 r)))
    (=>
      (and
        (and (<= 0 (inv@132@01 r)) (< (inv@132@01 r) (cols<Int> mat@87@01)))
        (img@133@01 r))
      (Set_in r ($FVF.domain_val (as sm@134@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@134@01  $FVF<val>))))
  :qid |qp.fvfDomDef11|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@132@01 r)) (< (inv@132@01 r) (cols<Int> mat@87@01)))
        (img@133@01 r))
      (and
        (and (img@92@01 r) (img@94@01 r))
        (and
          (<= 0 (inv@91@01 r))
          (and
            (< (inv@91@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@93@01 r)) (< (inv@93@01 r) (rows<Int> mat@87@01)))))))
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r))
  :qid |qp.fvfValDef10|)))
(assert (rowsum%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<val>To$Snap (as sm@134@01  $FVF<val>)))) mat@87@01 2))
(pop) ; 3
; Joined path conditions
(assert (forall ((c@131@01 Int)) (!
  (=>
    (and (<= 0 c@131@01) (< c@131@01 (cols<Int> mat@87@01)))
    (and
      (= (inv@132@01 (loc<Ref> mat@87@01 c@131@01 2)) c@131@01)
      (img@133@01 (loc<Ref> mat@87@01 c@131@01 2))))
  :pattern ((loc<Ref> mat@87@01 c@131@01 2))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@133@01 r)
      (and (<= 0 (inv@132@01 r)) (< (inv@132@01 r) (cols<Int> mat@87@01))))
    (= (loc<Ref> mat@87@01 (inv@132@01 r) 2) r))
  :pattern ((inv@132@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@134@01  $FVF<val>)))
      (and
        (and (<= 0 (inv@132@01 r)) (< (inv@132@01 r) (cols<Int> mat@87@01)))
        (img@133@01 r)))
    (=>
      (and
        (and (<= 0 (inv@132@01 r)) (< (inv@132@01 r) (cols<Int> mat@87@01)))
        (img@133@01 r))
      (Set_in r ($FVF.domain_val (as sm@134@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@134@01  $FVF<val>))))
  :qid |qp.fvfDomDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@132@01 r)) (< (inv@132@01 r) (cols<Int> mat@87@01)))
        (img@133@01 r))
      (and
        (and (img@92@01 r) (img@94@01 r))
        (and
          (<= 0 (inv@91@01 r))
          (and
            (< (inv@91@01 r) (cols<Int> mat@87@01))
            (and (<= 0 (inv@93@01 r)) (< (inv@93@01 r) (rows<Int> mat@87@01)))))))
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@88@01)) r))
  :qid |qp.fvfValDef10|)))
(assert (and
  (forall ((c@131@01 Int)) (!
    (=>
      (and (<= 0 c@131@01) (< c@131@01 (cols<Int> mat@87@01)))
      (or (<= 0 c@131@01) (not (<= 0 c@131@01))))
    :pattern ((loc<Ref> mat@87@01 c@131@01 2))
    :qid |val-aux|))
  (rowsum%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<val>To$Snap (as sm@134@01  $FVF<val>)))) mat@87@01 2)))
(push) ; 3
(assert (not (=
  (rowsum ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<val>To$Snap (as sm@134@01  $FVF<val>)))) mat@87@01 2)
  oldrowsum2@119@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.03s
; (get-info :all-statistics)
(assert (=
  (rowsum ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<val>To$Snap (as sm@134@01  $FVF<val>)))) mat@87@01 2)
  oldrowsum2@119@01))
(pop) ; 2
(pop) ; 1
; ---------- test04 ----------
(declare-const rs1@135@01 IArray<Ref>)
(declare-const rs2@136@01 IArray<Ref>)
(declare-const rs1@137@01 IArray<Ref>)
(declare-const rs2@138@01 IArray<Ref>)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var k1: Int
(declare-const k1@139@01 Int)
; [exec]
; var k2: Int
(declare-const k2@140@01 Int)
; [exec]
; inhale (forall i1: Int, i2: Int ::0 <= i1 &&
;     (i1 < (len(rs1): Int) && (0 <= i2 && i2 < (len(rs2): Int))) ==>
;     acc(P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)), write))
(declare-const i1@141@01 Int)
(declare-const i2@142@01 Int)
(push) ; 3
; [eval] 0 <= i1 && (i1 < (len(rs1): Int) && (0 <= i2 && i2 < (len(rs2): Int)))
; [eval] 0 <= i1
(push) ; 4
; [then-branch: 66 | !(0 <= i1@141@01) | live]
; [else-branch: 66 | 0 <= i1@141@01 | live]
(push) ; 5
; [then-branch: 66 | !(0 <= i1@141@01)]
(assert (not (<= 0 i1@141@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 66 | 0 <= i1@141@01]
(assert (<= 0 i1@141@01))
; [eval] i1 < (len(rs1): Int)
; [eval] (len(rs1): Int)
(push) ; 6
; [then-branch: 67 | !(i1@141@01 < len[Int](rs1@137@01)) | live]
; [else-branch: 67 | i1@141@01 < len[Int](rs1@137@01) | live]
(push) ; 7
; [then-branch: 67 | !(i1@141@01 < len[Int](rs1@137@01))]
(assert (not (< i1@141@01 (len<Int> rs1@137@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 67 | i1@141@01 < len[Int](rs1@137@01)]
(assert (< i1@141@01 (len<Int> rs1@137@01)))
; [eval] 0 <= i2
(push) ; 8
; [then-branch: 68 | !(0 <= i2@142@01) | live]
; [else-branch: 68 | 0 <= i2@142@01 | live]
(push) ; 9
; [then-branch: 68 | !(0 <= i2@142@01)]
(assert (not (<= 0 i2@142@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 68 | 0 <= i2@142@01]
(assert (<= 0 i2@142@01))
; [eval] i2 < (len(rs2): Int)
; [eval] (len(rs2): Int)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i2@142@01) (not (<= 0 i2@142@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i1@141@01 (len<Int> rs1@137@01))
  (and
    (< i1@141@01 (len<Int> rs1@137@01))
    (or (<= 0 i2@142@01) (not (<= 0 i2@142@01))))))
(assert (or
  (< i1@141@01 (len<Int> rs1@137@01))
  (not (< i1@141@01 (len<Int> rs1@137@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i1@141@01)
  (and
    (<= 0 i1@141@01)
    (=>
      (< i1@141@01 (len<Int> rs1@137@01))
      (and
        (< i1@141@01 (len<Int> rs1@137@01))
        (or (<= 0 i2@142@01) (not (<= 0 i2@142@01)))))
    (or
      (< i1@141@01 (len<Int> rs1@137@01))
      (not (< i1@141@01 (len<Int> rs1@137@01)))))))
(assert (or (<= 0 i1@141@01) (not (<= 0 i1@141@01))))
(assert (and
  (<= 0 i1@141@01)
  (and
    (< i1@141@01 (len<Int> rs1@137@01))
    (and (<= 0 i2@142@01) (< i2@142@01 (len<Int> rs2@138@01))))))
; [eval] (aloc(rs1, i1): Ref)
; [eval] (aloc(rs2, i2): Ref)
(pop) ; 3
(declare-const $t@143@01 $PSF<P>)
(declare-fun inv@144@01 ($Ref $Ref) Int)
(declare-fun img@145@01 ($Ref $Ref) Bool)
(declare-fun inv@146@01 ($Ref $Ref) Int)
(declare-fun img@147@01 ($Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i1@141@01 Int) (i2@142@01 Int)) (!
  (=>
    (and
      (<= 0 i1@141@01)
      (and
        (< i1@141@01 (len<Int> rs1@137@01))
        (and (<= 0 i2@142@01) (< i2@142@01 (len<Int> rs2@138@01)))))
    (and
      (=>
        (<= 0 i1@141@01)
        (and
          (<= 0 i1@141@01)
          (=>
            (< i1@141@01 (len<Int> rs1@137@01))
            (and
              (< i1@141@01 (len<Int> rs1@137@01))
              (or (<= 0 i2@142@01) (not (<= 0 i2@142@01)))))
          (or
            (< i1@141@01 (len<Int> rs1@137@01))
            (not (< i1@141@01 (len<Int> rs1@137@01))))))
      (or (<= 0 i1@141@01) (not (<= 0 i1@141@01)))))
  :pattern ((aloc<Ref> rs1@137@01 i1@141@01) (aloc<Ref> rs2@138@01 i2@142@01))
  :qid |P-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i11@141@01 Int) (i21@142@01 Int) (i12@141@01 Int) (i22@142@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 i11@141@01)
        (and
          (< i11@141@01 (len<Int> rs1@137@01))
          (and (<= 0 i21@142@01) (< i21@142@01 (len<Int> rs2@138@01)))))
      (and
        (<= 0 i12@141@01)
        (and
          (< i12@141@01 (len<Int> rs1@137@01))
          (and (<= 0 i22@142@01) (< i22@142@01 (len<Int> rs2@138@01)))))
      (and
        (= (aloc<Ref> rs1@137@01 i11@141@01) (aloc<Ref> rs1@137@01 i12@141@01))
        (= (aloc<Ref> rs2@138@01 i21@142@01) (aloc<Ref> rs2@138@01 i22@142@01))))
    (and (= i11@141@01 i12@141@01) (= i21@142@01 i22@142@01)))
  
  :qid |P-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i1@141@01 Int) (i2@142@01 Int)) (!
  (=>
    (and
      (<= 0 i1@141@01)
      (and
        (< i1@141@01 (len<Int> rs1@137@01))
        (and (<= 0 i2@142@01) (< i2@142@01 (len<Int> rs2@138@01)))))
    (and
      (and
        (=
          (inv@144@01 (aloc<Ref> rs1@137@01 i1@141@01) (aloc<Ref> rs2@138@01 i2@142@01))
          i1@141@01)
        (=
          (inv@146@01 (aloc<Ref> rs1@137@01 i1@141@01) (aloc<Ref> rs2@138@01 i2@142@01))
          i2@142@01))
      (and
        (img@145@01 (aloc<Ref> rs1@137@01 i1@141@01) (aloc<Ref> rs2@138@01 i2@142@01))
        (img@147@01 (aloc<Ref> rs1@137@01 i1@141@01) (aloc<Ref> rs2@138@01 i2@142@01)))))
  :pattern ((aloc<Ref> rs1@137@01 i1@141@01) (aloc<Ref> rs2@138@01 i2@142@01))
  :qid |quant-u-16619|)))
(assert (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and
      (and (img@145@01 x y) (img@147@01 x y))
      (and
        (<= 0 (inv@144@01 x y))
        (and
          (< (inv@144@01 x y) (len<Int> rs1@137@01))
          (and
            (<= 0 (inv@146@01 x y))
            (< (inv@146@01 x y) (len<Int> rs2@138@01))))))
    (and
      (= (aloc<Ref> rs1@137@01 (inv@144@01 x y)) x)
      (= (aloc<Ref> rs2@138@01 (inv@146@01 x y)) y)))
  :pattern ((inv@144@01 x y))
  :pattern ((inv@146@01 x y))
  :qid |P-fctOfInv|)))
; Permissions are non-negative
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= k1 && k1 < (len(rs1): Int)
(declare-const $t@148@01 $Snap)
(assert (= $t@148@01 ($Snap.combine ($Snap.first $t@148@01) ($Snap.second $t@148@01))))
(assert (= ($Snap.first $t@148@01) $Snap.unit))
; [eval] 0 <= k1
(assert (<= 0 k1@139@01))
(assert (= ($Snap.second $t@148@01) $Snap.unit))
; [eval] k1 < (len(rs1): Int)
; [eval] (len(rs1): Int)
(assert (< k1@139@01 (len<Int> rs1@137@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= k2 && k2 < (len(rs2): Int)
(declare-const $t@149@01 $Snap)
(assert (= $t@149@01 ($Snap.combine ($Snap.first $t@149@01) ($Snap.second $t@149@01))))
(assert (= ($Snap.first $t@149@01) $Snap.unit))
; [eval] 0 <= k2
(assert (<= 0 k2@140@01))
(assert (= ($Snap.second $t@149@01) $Snap.unit))
; [eval] k2 < (len(rs2): Int)
; [eval] (len(rs2): Int)
(assert (< k2@140@01 (len<Int> rs2@138@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l1
; [exec]
; unfold acc(P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)), write)
; [eval] (aloc(rs1, k1): Ref)
; [eval] (aloc(rs2, k2): Ref)
; Precomputing data for removing quantified permissions
(define-fun pTaken@150@01 ((x $Ref) (y $Ref)) $Perm
  (ite
    (and
      (= x (aloc<Ref> rs1@137@01 k1@139@01))
      (= y (aloc<Ref> rs2@138@01 k2@140@01)))
    ($Perm.min
      (ite
        (and
          (and (img@145@01 x y) (img@147@01 x y))
          (and
            (<= 0 (inv@144@01 x y))
            (and
              (< (inv@144@01 x y) (len<Int> rs1@137@01))
              (and
                (<= 0 (inv@146@01 x y))
                (< (inv@146@01 x y) (len<Int> rs2@138@01))))))
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
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=
    (-
      (ite
        (and
          (and (img@145@01 x y) (img@147@01 x y))
          (and
            (<= 0 (inv@144@01 x y))
            (and
              (< (inv@144@01 x y) (len<Int> rs1@137@01))
              (and
                (<= 0 (inv@146@01 x y))
                (< (inv@146@01 x y) (len<Int> rs2@138@01))))))
        $Perm.Write
        $Perm.No)
      (pTaken@150@01 x y))
    $Perm.No)
  
  :qid |quant-u-16621|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (= (pTaken@150@01 x y) $Perm.No)
  
  :qid |quant-u-16622|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and
      (= x (aloc<Ref> rs1@137@01 k1@139@01))
      (= y (aloc<Ref> rs2@138@01 k2@140@01)))
    (= (- $Perm.Write (pTaken@150@01 x y)) $Perm.No))
  
  :qid |quant-u-16623|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@151@01 $PSF<P>)
(declare-const s@152@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (and
      (img@145@01 (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01))
      (img@147@01 (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01)))
    (and
      (<=
        0
        (inv@144@01 (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01)))
      (and
        (<
          (inv@144@01 (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01))
          (len<Int> rs1@137@01))
        (and
          (<=
            0
            (inv@146@01 (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01)))
          (<
            (inv@146@01 (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01))
            (len<Int> rs2@138@01))))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01)))
        $Snap.unit))
    (=
      ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01))))
      ($PSF.lookup_P $t@143@01 ($Snap.combine
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01))))))))
(assert (=
  ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01))))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
      ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01)))))
    ($Snap.second ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
      ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01))))))))
(assert (not (= (aloc<Ref> rs1@137@01 k1@139@01) $Ref.null)))
(assert (=
  ($Snap.second ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
      ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01))))))
    ($Snap.second ($Snap.second ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
      ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01)))))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= (aloc<Ref> rs2@138@01 k2@140@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01))))))
  $Snap.unit))
; [eval] x.f < y.f
(assert (<
  ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01))))))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01)))))))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P%trigger ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
  ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01)))) (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01)))
; [exec]
; (aloc(rs1, k1): Ref).f := (aloc(rs2, k2): Ref).f
; [eval] (aloc(rs1, k1): Ref)
; [eval] (aloc(rs2, k2): Ref)
(declare-const f@153@01 Int)
(assert (=
  f@153@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01)))))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (aloc<Ref> rs2@138@01 k2@140@01) (aloc<Ref> rs1@137@01 k1@139@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; (aloc(rs2, k2): Ref).f := (aloc(rs2, k2): Ref).f + 1
; [eval] (aloc(rs2, k2): Ref)
; [eval] (aloc(rs2, k2): Ref).f + 1
; [eval] (aloc(rs2, k2): Ref)
(declare-const f@154@01 Int)
(assert (=
  f@154@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
      ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01)))))))
    1)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)), write)
; [eval] (aloc(rs1, k1): Ref)
; [eval] (aloc(rs2, k2): Ref)
; [eval] x.f < y.f
(set-option :timeout 0)
(push) ; 3
(assert (not (< f@153@01 f@154@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< f@153@01 f@154@01))
(assert (P%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap f@153@01)
  ($Snap.combine ($SortWrappers.IntTo$Snap f@154@01) $Snap.unit)) (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01)))
(declare-const sm@155@01 $PSF<P>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_P (as sm@155@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01))))
  ($Snap.combine
    ($SortWrappers.IntTo$Snap f@153@01)
    ($Snap.combine ($SortWrappers.IntTo$Snap f@154@01) $Snap.unit))))
; [exec]
; assert getP((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)) >
;   old[l1](getP((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)))
; [eval] getP((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)) > old[l1](getP((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)))
; [eval] getP((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref))
; [eval] (aloc(rs1, k1): Ref)
; [eval] (aloc(rs2, k2): Ref)
(push) ; 3
(push) ; 4
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and
      (= x (aloc<Ref> rs1@137@01 k1@139@01))
      (= y (aloc<Ref> rs2@138@01 k2@140@01)))
    (>
      (+
        (ite
          (and
            (= x (aloc<Ref> rs1@137@01 k1@139@01))
            (= y (aloc<Ref> rs2@138@01 k2@140@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (and (img@145@01 x y) (img@147@01 x y))
            (and
              (<= 0 (inv@144@01 x y))
              (and
                (< (inv@144@01 x y) (len<Int> rs1@137@01))
                (and
                  (<= 0 (inv@146@01 x y))
                  (< (inv@146@01 x y) (len<Int> rs2@138@01))))))
          (- $Perm.Write (pTaken@150@01 x y))
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-16624|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@156@01 $PSF<P>)
(declare-const s@157@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (= (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs1@137@01 k1@139@01))
    (= (aloc<Ref> rs2@138@01 k2@140@01) (aloc<Ref> rs2@138@01 k2@140@01)))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01)))
        $Snap.unit))
    (=
      ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01))))
      ($PSF.lookup_P (as sm@155@01  $PSF<P>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01))))))))
(assert (=>
  (ite
    (and
      (and
        (img@145@01 (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01))
        (img@147@01 (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01)))
      (and
        (<=
          0
          (inv@144@01 (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01)))
        (and
          (<
            (inv@144@01 (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01))
            (len<Int> rs1@137@01))
          (and
            (<=
              0
              (inv@146@01 (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01)))
            (<
              (inv@146@01 (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01))
              (len<Int> rs2@138@01))))))
    (<
      $Perm.No
      (-
        $Perm.Write
        (pTaken@150@01 (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01))))
    false)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01)))
        $Snap.unit))
    (=
      ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01))))
      ($PSF.lookup_P $t@143@01 ($Snap.combine
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01))))))))
(assert (getP%precondition ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
  ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01)))) (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01)))
(pop) ; 3
; Joined path conditions
(assert (and
  (=>
    (and
      (= (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs1@137@01 k1@139@01))
      (= (aloc<Ref> rs2@138@01 k2@140@01) (aloc<Ref> rs2@138@01 k2@140@01)))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01)))
          $Snap.unit))
      (=
        ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01))))
        ($PSF.lookup_P (as sm@155@01  $PSF<P>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01)))))))
  (=>
    (ite
      (and
        (and
          (img@145@01 (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01))
          (img@147@01 (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01)))
        (and
          (<=
            0
            (inv@144@01 (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01)))
          (and
            (<
              (inv@144@01 (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01))
              (len<Int> rs1@137@01))
            (and
              (<=
                0
                (inv@146@01 (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01)))
              (<
                (inv@146@01 (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01))
                (len<Int> rs2@138@01))))))
      (<
        $Perm.No
        (-
          $Perm.Write
          (pTaken@150@01 (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01))))
      false)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01)))
          $Snap.unit))
      (=
        ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01))))
        ($PSF.lookup_P $t@143@01 ($Snap.combine
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01)))))))
  (getP%precondition ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01)))) (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01))))
; [eval] old[l1](getP((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)))
; [eval] getP((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref))
; [eval] (aloc(rs1, k1): Ref)
; [eval] (aloc(rs2, k2): Ref)
(push) ; 3
(push) ; 4
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and
      (= x (aloc<Ref> rs1@137@01 k1@139@01))
      (= y (aloc<Ref> rs2@138@01 k2@140@01)))
    (>
      (ite
        (and
          (and (img@145@01 x y) (img@147@01 x y))
          (and
            (<= 0 (inv@144@01 x y))
            (and
              (< (inv@144@01 x y) (len<Int> rs1@137@01))
              (and
                (<= 0 (inv@146@01 x y))
                (< (inv@146@01 x y) (len<Int> rs2@138@01))))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-16625|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (getP%precondition ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
  ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01)))) (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01)))
(pop) ; 3
; Joined path conditions
(assert (getP%precondition ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
  ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01)))) (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01)))
(push) ; 3
(assert (not (>
  (getP ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01)))) (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01))
  (getP ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01)))) (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (>
  (getP ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01)))) (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01))
  (getP ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 k1@139@01))
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 k2@140@01)))) (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01))))
; [exec]
; exhale (forall i1: Int, i2: Int ::0 <= i1 &&
;     (i1 < (len(rs1): Int) && (0 <= i2 && i2 < (len(rs2): Int))) ==>
;     acc(P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)), write)) &&
;   (forall i1: Int, i2: Int ::
;     { old[l1](getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref))) }
;     0 <= i1 && (i1 < (len(rs1): Int) && (0 <= i2 && i2 < (len(rs2): Int))) ==>
;     i1 != k1 && i2 != k2 ==>
;     getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)) ==
;     old[l1](getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref))))
(declare-const i1@158@01 Int)
(declare-const i2@159@01 Int)
(push) ; 3
; [eval] 0 <= i1 && (i1 < (len(rs1): Int) && (0 <= i2 && i2 < (len(rs2): Int)))
; [eval] 0 <= i1
(push) ; 4
; [then-branch: 69 | !(0 <= i1@158@01) | live]
; [else-branch: 69 | 0 <= i1@158@01 | live]
(push) ; 5
; [then-branch: 69 | !(0 <= i1@158@01)]
(assert (not (<= 0 i1@158@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 69 | 0 <= i1@158@01]
(assert (<= 0 i1@158@01))
; [eval] i1 < (len(rs1): Int)
; [eval] (len(rs1): Int)
(push) ; 6
; [then-branch: 70 | !(i1@158@01 < len[Int](rs1@137@01)) | live]
; [else-branch: 70 | i1@158@01 < len[Int](rs1@137@01) | live]
(push) ; 7
; [then-branch: 70 | !(i1@158@01 < len[Int](rs1@137@01))]
(assert (not (< i1@158@01 (len<Int> rs1@137@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 70 | i1@158@01 < len[Int](rs1@137@01)]
(assert (< i1@158@01 (len<Int> rs1@137@01)))
; [eval] 0 <= i2
(push) ; 8
; [then-branch: 71 | !(0 <= i2@159@01) | live]
; [else-branch: 71 | 0 <= i2@159@01 | live]
(push) ; 9
; [then-branch: 71 | !(0 <= i2@159@01)]
(assert (not (<= 0 i2@159@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 71 | 0 <= i2@159@01]
(assert (<= 0 i2@159@01))
; [eval] i2 < (len(rs2): Int)
; [eval] (len(rs2): Int)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i2@159@01) (not (<= 0 i2@159@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i1@158@01 (len<Int> rs1@137@01))
  (and
    (< i1@158@01 (len<Int> rs1@137@01))
    (or (<= 0 i2@159@01) (not (<= 0 i2@159@01))))))
(assert (or
  (< i1@158@01 (len<Int> rs1@137@01))
  (not (< i1@158@01 (len<Int> rs1@137@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i1@158@01)
  (and
    (<= 0 i1@158@01)
    (=>
      (< i1@158@01 (len<Int> rs1@137@01))
      (and
        (< i1@158@01 (len<Int> rs1@137@01))
        (or (<= 0 i2@159@01) (not (<= 0 i2@159@01)))))
    (or
      (< i1@158@01 (len<Int> rs1@137@01))
      (not (< i1@158@01 (len<Int> rs1@137@01)))))))
(assert (or (<= 0 i1@158@01) (not (<= 0 i1@158@01))))
(assert (and
  (<= 0 i1@158@01)
  (and
    (< i1@158@01 (len<Int> rs1@137@01))
    (and (<= 0 i2@159@01) (< i2@159@01 (len<Int> rs2@138@01))))))
; [eval] (aloc(rs1, i1): Ref)
; [eval] (aloc(rs2, i2): Ref)
(pop) ; 3
(declare-fun inv@160@01 ($Ref $Ref) Int)
(declare-fun img@161@01 ($Ref $Ref) Bool)
(declare-fun inv@162@01 ($Ref $Ref) Int)
(declare-fun img@163@01 ($Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i1@158@01 Int) (i2@159@01 Int)) (!
  (=>
    (and
      (<= 0 i1@158@01)
      (and
        (< i1@158@01 (len<Int> rs1@137@01))
        (and (<= 0 i2@159@01) (< i2@159@01 (len<Int> rs2@138@01)))))
    (and
      (=>
        (<= 0 i1@158@01)
        (and
          (<= 0 i1@158@01)
          (=>
            (< i1@158@01 (len<Int> rs1@137@01))
            (and
              (< i1@158@01 (len<Int> rs1@137@01))
              (or (<= 0 i2@159@01) (not (<= 0 i2@159@01)))))
          (or
            (< i1@158@01 (len<Int> rs1@137@01))
            (not (< i1@158@01 (len<Int> rs1@137@01))))))
      (or (<= 0 i1@158@01) (not (<= 0 i1@158@01)))))
  :pattern ((aloc<Ref> rs1@137@01 i1@158@01) (aloc<Ref> rs2@138@01 i2@159@01))
  :qid |P-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i11@158@01 Int) (i21@159@01 Int) (i12@158@01 Int) (i22@159@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 i11@158@01)
        (and
          (< i11@158@01 (len<Int> rs1@137@01))
          (and (<= 0 i21@159@01) (< i21@159@01 (len<Int> rs2@138@01)))))
      (and
        (<= 0 i12@158@01)
        (and
          (< i12@158@01 (len<Int> rs1@137@01))
          (and (<= 0 i22@159@01) (< i22@159@01 (len<Int> rs2@138@01)))))
      (and
        (= (aloc<Ref> rs1@137@01 i11@158@01) (aloc<Ref> rs1@137@01 i12@158@01))
        (= (aloc<Ref> rs2@138@01 i21@159@01) (aloc<Ref> rs2@138@01 i22@159@01))))
    (and (= i11@158@01 i12@158@01) (= i21@159@01 i22@159@01)))
  
  :qid |P-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i1@158@01 Int) (i2@159@01 Int)) (!
  (=>
    (and
      (<= 0 i1@158@01)
      (and
        (< i1@158@01 (len<Int> rs1@137@01))
        (and (<= 0 i2@159@01) (< i2@159@01 (len<Int> rs2@138@01)))))
    (and
      (and
        (=
          (inv@160@01 (aloc<Ref> rs1@137@01 i1@158@01) (aloc<Ref> rs2@138@01 i2@159@01))
          i1@158@01)
        (=
          (inv@162@01 (aloc<Ref> rs1@137@01 i1@158@01) (aloc<Ref> rs2@138@01 i2@159@01))
          i2@159@01))
      (and
        (img@161@01 (aloc<Ref> rs1@137@01 i1@158@01) (aloc<Ref> rs2@138@01 i2@159@01))
        (img@163@01 (aloc<Ref> rs1@137@01 i1@158@01) (aloc<Ref> rs2@138@01 i2@159@01)))))
  :pattern ((aloc<Ref> rs1@137@01 i1@158@01) (aloc<Ref> rs2@138@01 i2@159@01))
  :qid |P-invOfFct|)))
(assert (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and
      (and (img@161@01 x y) (img@163@01 x y))
      (and
        (<= 0 (inv@160@01 x y))
        (and
          (< (inv@160@01 x y) (len<Int> rs1@137@01))
          (and
            (<= 0 (inv@162@01 x y))
            (< (inv@162@01 x y) (len<Int> rs2@138@01))))))
    (and
      (= (aloc<Ref> rs1@137@01 (inv@160@01 x y)) x)
      (= (aloc<Ref> rs2@138@01 (inv@162@01 x y)) y)))
  :pattern ((inv@160@01 x y))
  :pattern ((inv@162@01 x y))
  :qid |P-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@164@01 ((x $Ref) (y $Ref)) $Perm
  (ite
    (and
      (and
        (<= 0 (inv@160@01 x y))
        (and
          (< (inv@160@01 x y) (len<Int> rs1@137@01))
          (and
            (<= 0 (inv@162@01 x y))
            (< (inv@162@01 x y) (len<Int> rs2@138@01)))))
      (and (img@161@01 x y) (img@163@01 x y))
      (and
        (= x (aloc<Ref> rs1@137@01 (inv@160@01 x y)))
        (= y (aloc<Ref> rs2@138@01 (inv@162@01 x y)))))
    ($Perm.min
      (ite
        (and
          (and (img@145@01 x y) (img@147@01 x y))
          (and
            (<= 0 (inv@144@01 x y))
            (and
              (< (inv@144@01 x y) (len<Int> rs1@137@01))
              (and
                (<= 0 (inv@146@01 x y))
                (< (inv@146@01 x y) (len<Int> rs2@138@01))))))
        (- $Perm.Write (pTaken@150@01 x y))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@165@01 ((x $Ref) (y $Ref)) $Perm
  (ite
    (and
      (and
        (<= 0 (inv@160@01 x y))
        (and
          (< (inv@160@01 x y) (len<Int> rs1@137@01))
          (and
            (<= 0 (inv@162@01 x y))
            (< (inv@162@01 x y) (len<Int> rs2@138@01)))))
      (and (img@161@01 x y) (img@163@01 x y))
      (and
        (= x (aloc<Ref> rs1@137@01 (inv@160@01 x y)))
        (= y (aloc<Ref> rs2@138@01 (inv@162@01 x y)))))
    ($Perm.min
      (ite
        (and
          (= x (aloc<Ref> rs1@137@01 k1@139@01))
          (= y (aloc<Ref> rs2@138@01 k2@140@01)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@164@01 x y)))
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
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=
    (-
      (ite
        (and
          (and (img@145@01 x y) (img@147@01 x y))
          (and
            (<= 0 (inv@144@01 x y))
            (and
              (< (inv@144@01 x y) (len<Int> rs1@137@01))
              (and
                (<= 0 (inv@146@01 x y))
                (< (inv@146@01 x y) (len<Int> rs2@138@01))))))
        (- $Perm.Write (pTaken@150@01 x y))
        $Perm.No)
      (pTaken@164@01 x y))
    $Perm.No)
  
  :qid |quant-u-16628|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and
      (and
        (<= 0 (inv@160@01 x y))
        (and
          (< (inv@160@01 x y) (len<Int> rs1@137@01))
          (and
            (<= 0 (inv@162@01 x y))
            (< (inv@162@01 x y) (len<Int> rs2@138@01)))))
      (and (img@161@01 x y) (img@163@01 x y))
      (and
        (= x (aloc<Ref> rs1@137@01 (inv@160@01 x y)))
        (= y (aloc<Ref> rs2@138@01 (inv@162@01 x y)))))
    (= (- $Perm.Write (pTaken@164@01 x y)) $Perm.No))
  
  :qid |quant-u-16629|))))
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
      (and
        (= (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs1@137@01 k1@139@01))
        (= (aloc<Ref> rs2@138@01 k2@140@01) (aloc<Ref> rs2@138@01 k2@140@01)))
      $Perm.Write
      $Perm.No)
    (pTaken@165@01 (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs2@138@01 k2@140@01)))
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
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and
      (and
        (<= 0 (inv@160@01 x y))
        (and
          (< (inv@160@01 x y) (len<Int> rs1@137@01))
          (and
            (<= 0 (inv@162@01 x y))
            (< (inv@162@01 x y) (len<Int> rs2@138@01)))))
      (and (img@161@01 x y) (img@163@01 x y))
      (and
        (= x (aloc<Ref> rs1@137@01 (inv@160@01 x y)))
        (= y (aloc<Ref> rs2@138@01 (inv@162@01 x y)))))
    (= (- (- $Perm.Write (pTaken@164@01 x y)) (pTaken@165@01 x y)) $Perm.No))
  
  :qid |quant-u-16631|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall i1: Int, i2: Int :: { old[l1](getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref))) } 0 <= i1 && (i1 < (len(rs1): Int) && (0 <= i2 && i2 < (len(rs2): Int))) ==> i1 != k1 && i2 != k2 ==> getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)) == old[l1](getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref))))
(declare-const i1@166@01 Int)
(declare-const i2@167@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i1 && (i1 < (len(rs1): Int) && (0 <= i2 && i2 < (len(rs2): Int))) ==> i1 != k1 && i2 != k2 ==> getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)) == old[l1](getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)))
; [eval] 0 <= i1 && (i1 < (len(rs1): Int) && (0 <= i2 && i2 < (len(rs2): Int)))
; [eval] 0 <= i1
(push) ; 4
; [then-branch: 72 | !(0 <= i1@166@01) | live]
; [else-branch: 72 | 0 <= i1@166@01 | live]
(push) ; 5
; [then-branch: 72 | !(0 <= i1@166@01)]
(assert (not (<= 0 i1@166@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 72 | 0 <= i1@166@01]
(assert (<= 0 i1@166@01))
; [eval] i1 < (len(rs1): Int)
; [eval] (len(rs1): Int)
(push) ; 6
; [then-branch: 73 | !(i1@166@01 < len[Int](rs1@137@01)) | live]
; [else-branch: 73 | i1@166@01 < len[Int](rs1@137@01) | live]
(push) ; 7
; [then-branch: 73 | !(i1@166@01 < len[Int](rs1@137@01))]
(assert (not (< i1@166@01 (len<Int> rs1@137@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 73 | i1@166@01 < len[Int](rs1@137@01)]
(assert (< i1@166@01 (len<Int> rs1@137@01)))
; [eval] 0 <= i2
(push) ; 8
; [then-branch: 74 | !(0 <= i2@167@01) | live]
; [else-branch: 74 | 0 <= i2@167@01 | live]
(push) ; 9
; [then-branch: 74 | !(0 <= i2@167@01)]
(assert (not (<= 0 i2@167@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 74 | 0 <= i2@167@01]
(assert (<= 0 i2@167@01))
; [eval] i2 < (len(rs2): Int)
; [eval] (len(rs2): Int)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i2@167@01) (not (<= 0 i2@167@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i1@166@01 (len<Int> rs1@137@01))
  (and
    (< i1@166@01 (len<Int> rs1@137@01))
    (or (<= 0 i2@167@01) (not (<= 0 i2@167@01))))))
(assert (or
  (< i1@166@01 (len<Int> rs1@137@01))
  (not (< i1@166@01 (len<Int> rs1@137@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i1@166@01)
  (and
    (<= 0 i1@166@01)
    (=>
      (< i1@166@01 (len<Int> rs1@137@01))
      (and
        (< i1@166@01 (len<Int> rs1@137@01))
        (or (<= 0 i2@167@01) (not (<= 0 i2@167@01)))))
    (or
      (< i1@166@01 (len<Int> rs1@137@01))
      (not (< i1@166@01 (len<Int> rs1@137@01)))))))
(assert (or (<= 0 i1@166@01) (not (<= 0 i1@166@01))))
(push) ; 4
; [then-branch: 75 | 0 <= i1@166@01 && i1@166@01 < len[Int](rs1@137@01) && 0 <= i2@167@01 && i2@167@01 < len[Int](rs2@138@01) | live]
; [else-branch: 75 | !(0 <= i1@166@01 && i1@166@01 < len[Int](rs1@137@01) && 0 <= i2@167@01 && i2@167@01 < len[Int](rs2@138@01)) | live]
(push) ; 5
; [then-branch: 75 | 0 <= i1@166@01 && i1@166@01 < len[Int](rs1@137@01) && 0 <= i2@167@01 && i2@167@01 < len[Int](rs2@138@01)]
(assert (and
  (<= 0 i1@166@01)
  (and
    (< i1@166@01 (len<Int> rs1@137@01))
    (and (<= 0 i2@167@01) (< i2@167@01 (len<Int> rs2@138@01))))))
; [eval] i1 != k1 && i2 != k2 ==> getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)) == old[l1](getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)))
; [eval] i1 != k1 && i2 != k2
; [eval] i1 != k1
(push) ; 6
; [then-branch: 76 | i1@166@01 == k1@139@01 | live]
; [else-branch: 76 | i1@166@01 != k1@139@01 | live]
(push) ; 7
; [then-branch: 76 | i1@166@01 == k1@139@01]
(assert (= i1@166@01 k1@139@01))
(pop) ; 7
(push) ; 7
; [else-branch: 76 | i1@166@01 != k1@139@01]
(assert (not (= i1@166@01 k1@139@01)))
; [eval] i2 != k2
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (not (= i1@166@01 k1@139@01)) (= i1@166@01 k1@139@01)))
(push) ; 6
; [then-branch: 77 | i1@166@01 != k1@139@01 && i2@167@01 != k2@140@01 | live]
; [else-branch: 77 | !(i1@166@01 != k1@139@01 && i2@167@01 != k2@140@01) | live]
(push) ; 7
; [then-branch: 77 | i1@166@01 != k1@139@01 && i2@167@01 != k2@140@01]
(assert (and (not (= i1@166@01 k1@139@01)) (not (= i2@167@01 k2@140@01))))
; [eval] getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)) == old[l1](getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)))
; [eval] getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref))
; [eval] (aloc(rs1, i1): Ref)
; [eval] (aloc(rs2, i2): Ref)
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (= (aloc<Ref> rs1@137@01 k1@139@01) (aloc<Ref> rs1@137@01 i1@166@01))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and
      (= x (aloc<Ref> rs1@137@01 i1@166@01))
      (= y (aloc<Ref> rs2@138@01 i2@167@01)))
    (>
      (+
        (ite
          (and
            (and (img@145@01 x y) (img@147@01 x y))
            (and
              (<= 0 (inv@144@01 x y))
              (and
                (< (inv@144@01 x y) (len<Int> rs1@137@01))
                (and
                  (<= 0 (inv@146@01 x y))
                  (< (inv@146@01 x y) (len<Int> rs2@138@01))))))
          (- $Perm.Write (pTaken@150@01 x y))
          $Perm.No)
        (ite
          (and
            (= x (aloc<Ref> rs1@137@01 k1@139@01))
            (= y (aloc<Ref> rs2@138@01 k2@140@01)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-16632|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (= (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs1@137@01 k1@139@01))
    (= (aloc<Ref> rs2@138@01 i2@167@01) (aloc<Ref> rs2@138@01 k2@140@01)))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))
        $Snap.unit))
    (=
      ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01))))
      ($PSF.lookup_P (as sm@155@01  $PSF<P>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01))))))))
(assert (=>
  (ite
    (and
      (and
        (img@145@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
        (img@147@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
      (and
        (<=
          0
          (inv@144@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
        (and
          (<
            (inv@144@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
            (len<Int> rs1@137@01))
          (and
            (<=
              0
              (inv@146@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
            (<
              (inv@146@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
              (len<Int> rs2@138@01))))))
    (<
      $Perm.No
      (-
        $Perm.Write
        (pTaken@150@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))))
    false)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))
        $Snap.unit))
    (=
      ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01))))
      ($PSF.lookup_P $t@143@01 ($Snap.combine
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01))))))))
(assert (getP%precondition ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
  ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))) (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
(pop) ; 8
; Joined path conditions
(assert (and
  (=>
    (and
      (= (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs1@137@01 k1@139@01))
      (= (aloc<Ref> rs2@138@01 i2@167@01) (aloc<Ref> rs2@138@01 k2@140@01)))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))
          $Snap.unit))
      (=
        ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01))))
        ($PSF.lookup_P (as sm@155@01  $PSF<P>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))))))
  (=>
    (ite
      (and
        (and
          (img@145@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
          (img@147@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
        (and
          (<=
            0
            (inv@144@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
          (and
            (<
              (inv@144@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
              (len<Int> rs1@137@01))
            (and
              (<=
                0
                (inv@146@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
              (<
                (inv@146@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
                (len<Int> rs2@138@01))))))
      (<
        $Perm.No
        (-
          $Perm.Write
          (pTaken@150@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))))
      false)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))
          $Snap.unit))
      (=
        ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01))))
        ($PSF.lookup_P $t@143@01 ($Snap.combine
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))))))
  (getP%precondition ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))) (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))))
; [eval] old[l1](getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)))
; [eval] getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref))
; [eval] (aloc(rs1, i1): Ref)
; [eval] (aloc(rs2, i2): Ref)
(push) ; 8
(push) ; 9
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and
      (= x (aloc<Ref> rs1@137@01 i1@166@01))
      (= y (aloc<Ref> rs2@138@01 i2@167@01)))
    (>
      (ite
        (and
          (and (img@145@01 x y) (img@147@01 x y))
          (and
            (<= 0 (inv@144@01 x y))
            (and
              (< (inv@144@01 x y) (len<Int> rs1@137@01))
              (and
                (<= 0 (inv@146@01 x y))
                (< (inv@146@01 x y) (len<Int> rs2@138@01))))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-16633|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (and
      (img@145@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
      (img@147@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
    (and
      (<=
        0
        (inv@144@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
      (and
        (<
          (inv@144@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
          (len<Int> rs1@137@01))
        (and
          (<=
            0
            (inv@146@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
          (<
            (inv@146@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
            (len<Int> rs2@138@01))))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))
        $Snap.unit))
    (=
      ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01))))
      ($PSF.lookup_P $t@143@01 ($Snap.combine
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01))))))))
(assert (getP%precondition ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
  ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))) (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
(pop) ; 8
; Joined path conditions
(assert (and
  (=>
    (and
      (and
        (img@145@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
        (img@147@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
      (and
        (<=
          0
          (inv@144@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
        (and
          (<
            (inv@144@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
            (len<Int> rs1@137@01))
          (and
            (<=
              0
              (inv@146@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
            (<
              (inv@146@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
              (len<Int> rs2@138@01))))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))
          $Snap.unit))
      (=
        ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01))))
        ($PSF.lookup_P $t@143@01 ($Snap.combine
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))))))
  (getP%precondition ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))) (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 77 | !(i1@166@01 != k1@139@01 && i2@167@01 != k2@140@01)]
(assert (not (and (not (= i1@166@01 k1@139@01)) (not (= i2@167@01 k2@140@01)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (and (not (= i1@166@01 k1@139@01)) (not (= i2@167@01 k2@140@01)))
  (and
    (not (= i1@166@01 k1@139@01))
    (not (= i2@167@01 k2@140@01))
    (=>
      (and
        (= (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs1@137@01 k1@139@01))
        (= (aloc<Ref> rs2@138@01 i2@167@01) (aloc<Ref> rs2@138@01 k2@140@01)))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
              ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))
            $Snap.unit))
        (=
          ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01))))
          ($PSF.lookup_P (as sm@155@01  $PSF<P>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))))))
    (=>
      (ite
        (and
          (and
            (img@145@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
            (img@147@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
          (and
            (<=
              0
              (inv@144@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
            (and
              (<
                (inv@144@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
                (len<Int> rs1@137@01))
              (and
                (<=
                  0
                  (inv@146@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
                (<
                  (inv@146@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
                  (len<Int> rs2@138@01))))))
        (<
          $Perm.No
          (-
            $Perm.Write
            (pTaken@150@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))))
        false)
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
              ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))
            $Snap.unit))
        (=
          ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01))))
          ($PSF.lookup_P $t@143@01 ($Snap.combine
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))))))
    (getP%precondition ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
      ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))) (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
    (=>
      (and
        (and
          (img@145@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
          (img@147@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
        (and
          (<=
            0
            (inv@144@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
          (and
            (<
              (inv@144@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
              (len<Int> rs1@137@01))
            (and
              (<=
                0
                (inv@146@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
              (<
                (inv@146@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
                (len<Int> rs2@138@01))))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
              ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))
            $Snap.unit))
        (=
          ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01))))
          ($PSF.lookup_P $t@143@01 ($Snap.combine
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))))))
    (getP%precondition ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
      ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))) (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))))
; Joined path conditions
(assert (or
  (not (and (not (= i1@166@01 k1@139@01)) (not (= i2@167@01 k2@140@01))))
  (and (not (= i1@166@01 k1@139@01)) (not (= i2@167@01 k2@140@01)))))
(pop) ; 5
(push) ; 5
; [else-branch: 75 | !(0 <= i1@166@01 && i1@166@01 < len[Int](rs1@137@01) && 0 <= i2@167@01 && i2@167@01 < len[Int](rs2@138@01))]
(assert (not
  (and
    (<= 0 i1@166@01)
    (and
      (< i1@166@01 (len<Int> rs1@137@01))
      (and (<= 0 i2@167@01) (< i2@167@01 (len<Int> rs2@138@01)))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 i1@166@01)
    (and
      (< i1@166@01 (len<Int> rs1@137@01))
      (and (<= 0 i2@167@01) (< i2@167@01 (len<Int> rs2@138@01)))))
  (and
    (<= 0 i1@166@01)
    (< i1@166@01 (len<Int> rs1@137@01))
    (<= 0 i2@167@01)
    (< i2@167@01 (len<Int> rs2@138@01))
    (or (not (= i1@166@01 k1@139@01)) (= i1@166@01 k1@139@01))
    (=>
      (and (not (= i1@166@01 k1@139@01)) (not (= i2@167@01 k2@140@01)))
      (and
        (not (= i1@166@01 k1@139@01))
        (not (= i2@167@01 k2@140@01))
        (=>
          (and
            (= (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs1@137@01 k1@139@01))
            (= (aloc<Ref> rs2@138@01 i2@167@01) (aloc<Ref> rs2@138@01 k2@140@01)))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
                  ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))
                $Snap.unit))
            (=
              ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
                ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01))))
              ($PSF.lookup_P (as sm@155@01  $PSF<P>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
                ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))))))
        (=>
          (ite
            (and
              (and
                (img@145@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
                (img@147@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
              (and
                (<=
                  0
                  (inv@144@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
                (and
                  (<
                    (inv@144@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
                    (len<Int> rs1@137@01))
                  (and
                    (<=
                      0
                      (inv@146@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
                    (<
                      (inv@146@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
                      (len<Int> rs2@138@01))))))
            (<
              $Perm.No
              (-
                $Perm.Write
                (pTaken@150@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))))
            false)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
                  ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))
                $Snap.unit))
            (=
              ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
                ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01))))
              ($PSF.lookup_P $t@143@01 ($Snap.combine
                ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
                ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))))))
        (getP%precondition ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))) (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
        (=>
          (and
            (and
              (img@145@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
              (img@147@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
            (and
              (<=
                0
                (inv@144@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
              (and
                (<
                  (inv@144@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
                  (len<Int> rs1@137@01))
                (and
                  (<=
                    0
                    (inv@146@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
                  (<
                    (inv@146@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
                    (len<Int> rs2@138@01))))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
                  ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))
                $Snap.unit))
            (=
              ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
                ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01))))
              ($PSF.lookup_P $t@143@01 ($Snap.combine
                ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
                ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))))))
        (getP%precondition ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
          ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))) (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))))
    (or
      (not (and (not (= i1@166@01 k1@139@01)) (not (= i2@167@01 k2@140@01))))
      (and (not (= i1@166@01 k1@139@01)) (not (= i2@167@01 k2@140@01)))))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i1@166@01)
      (and
        (< i1@166@01 (len<Int> rs1@137@01))
        (and (<= 0 i2@167@01) (< i2@167@01 (len<Int> rs2@138@01))))))
  (and
    (<= 0 i1@166@01)
    (and
      (< i1@166@01 (len<Int> rs1@137@01))
      (and (<= 0 i2@167@01) (< i2@167@01 (len<Int> rs2@138@01)))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i1@166@01 Int) (i2@167@01 Int)) (!
  (and
    (=>
      (<= 0 i1@166@01)
      (and
        (<= 0 i1@166@01)
        (=>
          (< i1@166@01 (len<Int> rs1@137@01))
          (and
            (< i1@166@01 (len<Int> rs1@137@01))
            (or (<= 0 i2@167@01) (not (<= 0 i2@167@01)))))
        (or
          (< i1@166@01 (len<Int> rs1@137@01))
          (not (< i1@166@01 (len<Int> rs1@137@01))))))
    (or (<= 0 i1@166@01) (not (<= 0 i1@166@01)))
    (=>
      (and
        (<= 0 i1@166@01)
        (and
          (< i1@166@01 (len<Int> rs1@137@01))
          (and (<= 0 i2@167@01) (< i2@167@01 (len<Int> rs2@138@01)))))
      (and
        (<= 0 i1@166@01)
        (< i1@166@01 (len<Int> rs1@137@01))
        (<= 0 i2@167@01)
        (< i2@167@01 (len<Int> rs2@138@01))
        (or (not (= i1@166@01 k1@139@01)) (= i1@166@01 k1@139@01))
        (=>
          (and (not (= i1@166@01 k1@139@01)) (not (= i2@167@01 k2@140@01)))
          (and
            (not (= i1@166@01 k1@139@01))
            (not (= i2@167@01 k2@140@01))
            (=>
              (and
                (=
                  (aloc<Ref> rs1@137@01 i1@166@01)
                  (aloc<Ref> rs1@137@01 k1@139@01))
                (=
                  (aloc<Ref> rs2@138@01 i2@167@01)
                  (aloc<Ref> rs2@138@01 k2@140@01)))
              (and
                (not
                  (=
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
                      ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))
                    $Snap.unit))
                (=
                  ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
                    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
                    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01))))
                  ($PSF.lookup_P (as sm@155@01  $PSF<P>) ($Snap.combine
                    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
                    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))))))
            (=>
              (ite
                (and
                  (and
                    (img@145@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
                    (img@147@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
                  (and
                    (<=
                      0
                      (inv@144@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
                    (and
                      (<
                        (inv@144@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
                        (len<Int> rs1@137@01))
                      (and
                        (<=
                          0
                          (inv@146@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
                        (<
                          (inv@146@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
                          (len<Int> rs2@138@01))))))
                (<
                  $Perm.No
                  (-
                    $Perm.Write
                    (pTaken@150@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))))
                false)
              (and
                (not
                  (=
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
                      ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))
                    $Snap.unit))
                (=
                  ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
                    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
                    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01))))
                  ($PSF.lookup_P $t@143@01 ($Snap.combine
                    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
                    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))))))
            (getP%precondition ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
              ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
              ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))) (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
            (=>
              (and
                (and
                  (img@145@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
                  (img@147@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
                (and
                  (<=
                    0
                    (inv@144@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
                  (and
                    (<
                      (inv@144@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
                      (len<Int> rs1@137@01))
                    (and
                      (<=
                        0
                        (inv@146@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
                      (<
                        (inv@146@01 (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
                        (len<Int> rs2@138@01))))))
              (and
                (not
                  (=
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
                      ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))
                    $Snap.unit))
                (=
                  ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
                    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
                    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01))))
                  ($PSF.lookup_P $t@143@01 ($Snap.combine
                    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
                    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))))))
            (getP%precondition ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
              ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
              ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))) (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))))
        (or
          (not (and (not (= i1@166@01 k1@139@01)) (not (= i2@167@01 k2@140@01))))
          (and (not (= i1@166@01 k1@139@01)) (not (= i2@167@01 k2@140@01))))))
    (or
      (not
        (and
          (<= 0 i1@166@01)
          (and
            (< i1@166@01 (len<Int> rs1@137@01))
            (and (<= 0 i2@167@01) (< i2@167@01 (len<Int> rs2@138@01))))))
      (and
        (<= 0 i1@166@01)
        (and
          (< i1@166@01 (len<Int> rs1@137@01))
          (and (<= 0 i2@167@01) (< i2@167@01 (len<Int> rs2@138@01)))))))
  :pattern ((getP%limited ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))) (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@129@10@132@118-aux|)))
(assert (forall ((i1@166@01 Int) (i2@167@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 i1@166@01)
        (and
          (< i1@166@01 (len<Int> rs1@137@01))
          (and (<= 0 i2@167@01) (< i2@167@01 (len<Int> rs2@138@01)))))
      (and (not (= i1@166@01 k1@139@01)) (not (= i2@167@01 k2@140@01))))
    (and
      (getP%precondition ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))) (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
      (getP%precondition ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))) (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))))
  :pattern ((getP%limited ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))) (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@129@10@132@118_precondition|)))
(push) ; 3
(assert (not (forall ((i1@166@01 Int) (i2@167@01 Int)) (!
  (=>
    (and
      (=>
        (and
          (and
            (<= 0 i1@166@01)
            (and
              (< i1@166@01 (len<Int> rs1@137@01))
              (and (<= 0 i2@167@01) (< i2@167@01 (len<Int> rs2@138@01)))))
          (and (not (= i1@166@01 k1@139@01)) (not (= i2@167@01 k2@140@01))))
        (and
          (getP%precondition ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))) (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
          (getP%precondition ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
            ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))) (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))))
      (and
        (and
          (<= 0 i1@166@01)
          (and
            (< i1@166@01 (len<Int> rs1@137@01))
            (and (<= 0 i2@167@01) (< i2@167@01 (len<Int> rs2@138@01)))))
        (and (not (= i1@166@01 k1@139@01)) (not (= i2@167@01 k2@140@01)))))
    (=
      (getP ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))) (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
      (getP ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))) (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))))
  :pattern ((getP%limited ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))) (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@129@10@132@118|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@166@01 Int) (i2@167@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 i1@166@01)
        (and
          (< i1@166@01 (len<Int> rs1@137@01))
          (and (<= 0 i2@167@01) (< i2@167@01 (len<Int> rs2@138@01)))))
      (and (not (= i1@166@01 k1@139@01)) (not (= i2@167@01 k2@140@01))))
    (=
      (getP ($PSF.lookup_P (as sm@156@01  $PSF<P>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))) (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))
      (getP ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
        ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))) (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01))))
  :pattern ((getP%limited ($PSF.lookup_P (as sm@151@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs1@137@01 i1@166@01))
    ($SortWrappers.$RefTo$Snap (aloc<Ref> rs2@138@01 i2@167@01)))) (aloc<Ref> rs1@137@01 i1@166@01) (aloc<Ref> rs2@138@01 i2@167@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.vpr@129@10@132@118|)))
(pop) ; 2
(pop) ; 1
; ---------- test04_fail ----------
(declare-const rs1@168@01 IArray<Ref>)
(declare-const rs2@169@01 IArray<Ref>)
(declare-const rs1@170@01 IArray<Ref>)
(declare-const rs2@171@01 IArray<Ref>)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var k1: Int
(declare-const k1@172@01 Int)
; [exec]
; var k2: Int
(declare-const k2@173@01 Int)
; [exec]
; inhale (forall i1: Int, i2: Int ::0 <= i1 &&
;     (i1 < (len(rs1): Int) && (0 <= i2 && i2 < (len(rs2): Int))) ==>
;     acc(P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)), write))
(declare-const i1@174@01 Int)
(declare-const i2@175@01 Int)
(push) ; 3
; [eval] 0 <= i1 && (i1 < (len(rs1): Int) && (0 <= i2 && i2 < (len(rs2): Int)))
; [eval] 0 <= i1
(push) ; 4
; [then-branch: 78 | !(0 <= i1@174@01) | live]
; [else-branch: 78 | 0 <= i1@174@01 | live]
(push) ; 5
; [then-branch: 78 | !(0 <= i1@174@01)]
(assert (not (<= 0 i1@174@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 78 | 0 <= i1@174@01]
(assert (<= 0 i1@174@01))
; [eval] i1 < (len(rs1): Int)
; [eval] (len(rs1): Int)
(push) ; 6
; [then-branch: 79 | !(i1@174@01 < len[Int](rs1@170@01)) | live]
; [else-branch: 79 | i1@174@01 < len[Int](rs1@170@01) | live]
(push) ; 7
; [then-branch: 79 | !(i1@174@01 < len[Int](rs1@170@01))]
(assert (not (< i1@174@01 (len<Int> rs1@170@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 79 | i1@174@01 < len[Int](rs1@170@01)]
(assert (< i1@174@01 (len<Int> rs1@170@01)))
; [eval] 0 <= i2
(push) ; 8
; [then-branch: 80 | !(0 <= i2@175@01) | live]
; [else-branch: 80 | 0 <= i2@175@01 | live]
(push) ; 9
; [then-branch: 80 | !(0 <= i2@175@01)]
(assert (not (<= 0 i2@175@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 80 | 0 <= i2@175@01]
(assert (<= 0 i2@175@01))
; [eval] i2 < (len(rs2): Int)
; [eval] (len(rs2): Int)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i2@175@01) (not (<= 0 i2@175@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i1@174@01 (len<Int> rs1@170@01))
  (and
    (< i1@174@01 (len<Int> rs1@170@01))
    (or (<= 0 i2@175@01) (not (<= 0 i2@175@01))))))
(assert (or
  (< i1@174@01 (len<Int> rs1@170@01))
  (not (< i1@174@01 (len<Int> rs1@170@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i1@174@01)
  (and
    (<= 0 i1@174@01)
    (=>
      (< i1@174@01 (len<Int> rs1@170@01))
      (and
        (< i1@174@01 (len<Int> rs1@170@01))
        (or (<= 0 i2@175@01) (not (<= 0 i2@175@01)))))
    (or
      (< i1@174@01 (len<Int> rs1@170@01))
      (not (< i1@174@01 (len<Int> rs1@170@01)))))))
(assert (or (<= 0 i1@174@01) (not (<= 0 i1@174@01))))
(assert (and
  (<= 0 i1@174@01)
  (and
    (< i1@174@01 (len<Int> rs1@170@01))
    (and (<= 0 i2@175@01) (< i2@175@01 (len<Int> rs2@171@01))))))
; [eval] (aloc(rs1, i1): Ref)
; [eval] (aloc(rs2, i2): Ref)
(pop) ; 3
(declare-const $t@176@01 $PSF<P>)
(declare-fun inv@177@01 ($Ref $Ref) Int)
(declare-fun img@178@01 ($Ref $Ref) Bool)
(declare-fun inv@179@01 ($Ref $Ref) Int)
(declare-fun img@180@01 ($Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i1@174@01 Int) (i2@175@01 Int)) (!
  (=>
    (and
      (<= 0 i1@174@01)
      (and
        (< i1@174@01 (len<Int> rs1@170@01))
        (and (<= 0 i2@175@01) (< i2@175@01 (len<Int> rs2@171@01)))))
    (and
      (=>
        (<= 0 i1@174@01)
        (and
          (<= 0 i1@174@01)
          (=>
            (< i1@174@01 (len<Int> rs1@170@01))
            (and
              (< i1@174@01 (len<Int> rs1@170@01))
              (or (<= 0 i2@175@01) (not (<= 0 i2@175@01)))))
          (or
            (< i1@174@01 (len<Int> rs1@170@01))
            (not (< i1@174@01 (len<Int> rs1@170@01))))))
      (or (<= 0 i1@174@01) (not (<= 0 i1@174@01)))))
  :pattern ((aloc<Ref> rs1@170@01 i1@174@01) (aloc<Ref> rs2@171@01 i2@175@01))
  :qid |P-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i11@174@01 Int) (i21@175@01 Int) (i12@174@01 Int) (i22@175@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 i11@174@01)
        (and
          (< i11@174@01 (len<Int> rs1@170@01))
          (and (<= 0 i21@175@01) (< i21@175@01 (len<Int> rs2@171@01)))))
      (and
        (<= 0 i12@174@01)
        (and
          (< i12@174@01 (len<Int> rs1@170@01))
          (and (<= 0 i22@175@01) (< i22@175@01 (len<Int> rs2@171@01)))))
      (and
        (= (aloc<Ref> rs1@170@01 i11@174@01) (aloc<Ref> rs1@170@01 i12@174@01))
        (= (aloc<Ref> rs2@171@01 i21@175@01) (aloc<Ref> rs2@171@01 i22@175@01))))
    (and (= i11@174@01 i12@174@01) (= i21@175@01 i22@175@01)))
  
  :qid |P-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i1@174@01 Int) (i2@175@01 Int)) (!
  (=>
    (and
      (<= 0 i1@174@01)
      (and
        (< i1@174@01 (len<Int> rs1@170@01))
        (and (<= 0 i2@175@01) (< i2@175@01 (len<Int> rs2@171@01)))))
    (and
      (and
        (=
          (inv@177@01 (aloc<Ref> rs1@170@01 i1@174@01) (aloc<Ref> rs2@171@01 i2@175@01))
          i1@174@01)
        (=
          (inv@179@01 (aloc<Ref> rs1@170@01 i1@174@01) (aloc<Ref> rs2@171@01 i2@175@01))
          i2@175@01))
      (and
        (img@178@01 (aloc<Ref> rs1@170@01 i1@174@01) (aloc<Ref> rs2@171@01 i2@175@01))
        (img@180@01 (aloc<Ref> rs1@170@01 i1@174@01) (aloc<Ref> rs2@171@01 i2@175@01)))))
  :pattern ((aloc<Ref> rs1@170@01 i1@174@01) (aloc<Ref> rs2@171@01 i2@175@01))
  :qid |quant-u-16635|)))
(assert (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and
      (and (img@178@01 x y) (img@180@01 x y))
      (and
        (<= 0 (inv@177@01 x y))
        (and
          (< (inv@177@01 x y) (len<Int> rs1@170@01))
          (and
            (<= 0 (inv@179@01 x y))
            (< (inv@179@01 x y) (len<Int> rs2@171@01))))))
    (and
      (= (aloc<Ref> rs1@170@01 (inv@177@01 x y)) x)
      (= (aloc<Ref> rs2@171@01 (inv@179@01 x y)) y)))
  :pattern ((inv@177@01 x y))
  :pattern ((inv@179@01 x y))
  :qid |P-fctOfInv|)))
; Permissions are non-negative
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; exhale (forall i1: Int, i2: Int ::0 <= i1 &&
;     (i1 < (len(rs1): Int) && (0 <= i2 && i2 < (len(rs2): Int))) ==>
;     acc(P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)), write))
(declare-const i1@181@01 Int)
(declare-const i2@182@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i1 && (i1 < (len(rs1): Int) && (0 <= i2 && i2 < (len(rs2): Int)))
; [eval] 0 <= i1
(push) ; 4
; [then-branch: 81 | !(0 <= i1@181@01) | live]
; [else-branch: 81 | 0 <= i1@181@01 | live]
(push) ; 5
; [then-branch: 81 | !(0 <= i1@181@01)]
(assert (not (<= 0 i1@181@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 81 | 0 <= i1@181@01]
(assert (<= 0 i1@181@01))
; [eval] i1 < (len(rs1): Int)
; [eval] (len(rs1): Int)
(push) ; 6
; [then-branch: 82 | !(i1@181@01 < len[Int](rs1@170@01)) | live]
; [else-branch: 82 | i1@181@01 < len[Int](rs1@170@01) | live]
(push) ; 7
; [then-branch: 82 | !(i1@181@01 < len[Int](rs1@170@01))]
(assert (not (< i1@181@01 (len<Int> rs1@170@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 82 | i1@181@01 < len[Int](rs1@170@01)]
(assert (< i1@181@01 (len<Int> rs1@170@01)))
; [eval] 0 <= i2
(push) ; 8
; [then-branch: 83 | !(0 <= i2@182@01) | live]
; [else-branch: 83 | 0 <= i2@182@01 | live]
(push) ; 9
; [then-branch: 83 | !(0 <= i2@182@01)]
(assert (not (<= 0 i2@182@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 83 | 0 <= i2@182@01]
(assert (<= 0 i2@182@01))
; [eval] i2 < (len(rs2): Int)
; [eval] (len(rs2): Int)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i2@182@01) (not (<= 0 i2@182@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i1@181@01 (len<Int> rs1@170@01))
  (and
    (< i1@181@01 (len<Int> rs1@170@01))
    (or (<= 0 i2@182@01) (not (<= 0 i2@182@01))))))
(assert (or
  (< i1@181@01 (len<Int> rs1@170@01))
  (not (< i1@181@01 (len<Int> rs1@170@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i1@181@01)
  (and
    (<= 0 i1@181@01)
    (=>
      (< i1@181@01 (len<Int> rs1@170@01))
      (and
        (< i1@181@01 (len<Int> rs1@170@01))
        (or (<= 0 i2@182@01) (not (<= 0 i2@182@01)))))
    (or
      (< i1@181@01 (len<Int> rs1@170@01))
      (not (< i1@181@01 (len<Int> rs1@170@01)))))))
(assert (or (<= 0 i1@181@01) (not (<= 0 i1@181@01))))
(assert (and
  (<= 0 i1@181@01)
  (and
    (< i1@181@01 (len<Int> rs1@170@01))
    (and (<= 0 i2@182@01) (< i2@182@01 (len<Int> rs2@171@01))))))
; [eval] (aloc(rs1, i1): Ref)
; [eval] (aloc(rs2, i2): Ref)
(pop) ; 3
(declare-fun inv@183@01 ($Ref $Ref) Int)
(declare-fun img@184@01 ($Ref $Ref) Bool)
(declare-fun inv@185@01 ($Ref $Ref) Int)
(declare-fun img@186@01 ($Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i1@181@01 Int) (i2@182@01 Int)) (!
  (=>
    (and
      (<= 0 i1@181@01)
      (and
        (< i1@181@01 (len<Int> rs1@170@01))
        (and (<= 0 i2@182@01) (< i2@182@01 (len<Int> rs2@171@01)))))
    (and
      (=>
        (<= 0 i1@181@01)
        (and
          (<= 0 i1@181@01)
          (=>
            (< i1@181@01 (len<Int> rs1@170@01))
            (and
              (< i1@181@01 (len<Int> rs1@170@01))
              (or (<= 0 i2@182@01) (not (<= 0 i2@182@01)))))
          (or
            (< i1@181@01 (len<Int> rs1@170@01))
            (not (< i1@181@01 (len<Int> rs1@170@01))))))
      (or (<= 0 i1@181@01) (not (<= 0 i1@181@01)))))
  :pattern ((aloc<Ref> rs1@170@01 i1@181@01) (aloc<Ref> rs2@171@01 i2@182@01))
  :qid |P-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i11@181@01 Int) (i21@182@01 Int) (i12@181@01 Int) (i22@182@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 i11@181@01)
        (and
          (< i11@181@01 (len<Int> rs1@170@01))
          (and (<= 0 i21@182@01) (< i21@182@01 (len<Int> rs2@171@01)))))
      (and
        (<= 0 i12@181@01)
        (and
          (< i12@181@01 (len<Int> rs1@170@01))
          (and (<= 0 i22@182@01) (< i22@182@01 (len<Int> rs2@171@01)))))
      (and
        (= (aloc<Ref> rs1@170@01 i11@181@01) (aloc<Ref> rs1@170@01 i12@181@01))
        (= (aloc<Ref> rs2@171@01 i21@182@01) (aloc<Ref> rs2@171@01 i22@182@01))))
    (and (= i11@181@01 i12@181@01) (= i21@182@01 i22@182@01)))
  
  :qid |P-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i1@181@01 Int) (i2@182@01 Int)) (!
  (=>
    (and
      (<= 0 i1@181@01)
      (and
        (< i1@181@01 (len<Int> rs1@170@01))
        (and (<= 0 i2@182@01) (< i2@182@01 (len<Int> rs2@171@01)))))
    (and
      (and
        (=
          (inv@183@01 (aloc<Ref> rs1@170@01 i1@181@01) (aloc<Ref> rs2@171@01 i2@182@01))
          i1@181@01)
        (=
          (inv@185@01 (aloc<Ref> rs1@170@01 i1@181@01) (aloc<Ref> rs2@171@01 i2@182@01))
          i2@182@01))
      (and
        (img@184@01 (aloc<Ref> rs1@170@01 i1@181@01) (aloc<Ref> rs2@171@01 i2@182@01))
        (img@186@01 (aloc<Ref> rs1@170@01 i1@181@01) (aloc<Ref> rs2@171@01 i2@182@01)))))
  :pattern ((aloc<Ref> rs1@170@01 i1@181@01) (aloc<Ref> rs2@171@01 i2@182@01))
  :qid |P-invOfFct|)))
(assert (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and
      (and (img@184@01 x y) (img@186@01 x y))
      (and
        (<= 0 (inv@183@01 x y))
        (and
          (< (inv@183@01 x y) (len<Int> rs1@170@01))
          (and
            (<= 0 (inv@185@01 x y))
            (< (inv@185@01 x y) (len<Int> rs2@171@01))))))
    (and
      (= (aloc<Ref> rs1@170@01 (inv@183@01 x y)) x)
      (= (aloc<Ref> rs2@171@01 (inv@185@01 x y)) y)))
  :pattern ((inv@183@01 x y))
  :pattern ((inv@185@01 x y))
  :qid |P-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@187@01 ((x $Ref) (y $Ref)) $Perm
  (ite
    (and
      (and
        (<= 0 (inv@183@01 x y))
        (and
          (< (inv@183@01 x y) (len<Int> rs1@170@01))
          (and
            (<= 0 (inv@185@01 x y))
            (< (inv@185@01 x y) (len<Int> rs2@171@01)))))
      (and (img@184@01 x y) (img@186@01 x y))
      (and
        (= x (aloc<Ref> rs1@170@01 (inv@183@01 x y)))
        (= y (aloc<Ref> rs2@171@01 (inv@185@01 x y)))))
    ($Perm.min
      (ite
        (and
          (and (img@178@01 x y) (img@180@01 x y))
          (and
            (<= 0 (inv@177@01 x y))
            (and
              (< (inv@177@01 x y) (len<Int> rs1@170@01))
              (and
                (<= 0 (inv@179@01 x y))
                (< (inv@179@01 x y) (len<Int> rs2@171@01))))))
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
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=
    (-
      (ite
        (and
          (and (img@178@01 x y) (img@180@01 x y))
          (and
            (<= 0 (inv@177@01 x y))
            (and
              (< (inv@177@01 x y) (len<Int> rs1@170@01))
              (and
                (<= 0 (inv@179@01 x y))
                (< (inv@179@01 x y) (len<Int> rs2@171@01))))))
        $Perm.Write
        $Perm.No)
      (pTaken@187@01 x y))
    $Perm.No)
  
  :qid |quant-u-16638|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and
      (and
        (<= 0 (inv@183@01 x y))
        (and
          (< (inv@183@01 x y) (len<Int> rs1@170@01))
          (and
            (<= 0 (inv@185@01 x y))
            (< (inv@185@01 x y) (len<Int> rs2@171@01)))))
      (and (img@184@01 x y) (img@186@01 x y))
      (and
        (= x (aloc<Ref> rs1@170@01 (inv@183@01 x y)))
        (= y (aloc<Ref> rs2@171@01 (inv@185@01 x y)))))
    (= (- $Perm.Write (pTaken@187@01 x y)) $Perm.No))
  
  :qid |quant-u-16639|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; inhale 0 <= k1 && k1 < (len(rs1): Int)
(declare-const $t@188@01 $Snap)
(assert (= $t@188@01 ($Snap.combine ($Snap.first $t@188@01) ($Snap.second $t@188@01))))
(assert (= ($Snap.first $t@188@01) $Snap.unit))
; [eval] 0 <= k1
(assert (<= 0 k1@172@01))
(assert (= ($Snap.second $t@188@01) $Snap.unit))
; [eval] k1 < (len(rs1): Int)
; [eval] (len(rs1): Int)
(assert (< k1@172@01 (len<Int> rs1@170@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= k2 && k2 < (len(rs2): Int)
(declare-const $t@189@01 $Snap)
(assert (= $t@189@01 ($Snap.combine ($Snap.first $t@189@01) ($Snap.second $t@189@01))))
(assert (= ($Snap.first $t@189@01) $Snap.unit))
; [eval] 0 <= k2
(assert (<= 0 k2@173@01))
(assert (= ($Snap.second $t@189@01) $Snap.unit))
; [eval] k2 < (len(rs2): Int)
; [eval] (len(rs2): Int)
(assert (< k2@173@01 (len<Int> rs2@171@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l1
; [exec]
; unfold acc(P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)), write)
; [eval] (aloc(rs1, k1): Ref)
; [eval] (aloc(rs2, k2): Ref)
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and
      (= x (aloc<Ref> rs1@170@01 k1@172@01))
      (= y (aloc<Ref> rs2@171@01 k2@173@01)))
    false)
  
  :qid |quant-u-16640|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
