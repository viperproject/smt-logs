(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-29 14:57:26
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
(declare-sort Process 0)
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
(declare-fun $SortWrappers.ProcessTo$Snap (Process) $Snap)
(declare-fun $SortWrappers.$SnapToProcess ($Snap) Process)
(assert (forall ((x Process)) (!
    (= x ($SortWrappers.$SnapToProcess($SortWrappers.ProcessTo$Snap x)))
    :pattern (($SortWrappers.ProcessTo$Snap x))
    :qid |$Snap.$SnapToProcessTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ProcessTo$Snap($SortWrappers.$SnapToProcess x)))
    :pattern (($SortWrappers.$SnapToProcess x))
    :qid |$Snap.ProcessTo$SnapToProcess|
    )))
; ////////// Symbols
(declare-const p_empty<Process> Process)
(declare-fun p_merge<Process> (Process Process) Process)
(declare-fun p_seq<Process> (Process Process) Process)
(declare-const p_incr<Process> Process)
(declare-fun p_single<Process> (Int) Process)
(declare-fun p_dual<Process> (Int Int) Process)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((p Process)) (!
  (= (p_merge<Process> (as p_empty<Process>  Process) p) p)
  :pattern ((p_merge<Process> (as p_empty<Process>  Process) p))
  :qid |prog.empty_1L|)))
(assert (forall ((p Process)) (!
  (= (p_seq<Process> (as p_empty<Process>  Process) p) p)
  :pattern ((p_seq<Process> (as p_empty<Process>  Process) p))
  :qid |prog.empty_2L|)))
(assert (forall ((p Process)) (!
  (= (p_seq<Process> p (as p_empty<Process>  Process)) p)
  :pattern ((p_seq<Process> p (as p_empty<Process>  Process)))
  :qid |prog.empty_2R|)))
(assert (forall ((p1 Process)) (!
  (forall ((p2 Process)) (!
    (forall ((p3 Process)) (!
      (=
        (p_seq<Process> (p_seq<Process> p1 p2) p3)
        (p_seq<Process> p1 (p_seq<Process> p2 p3)))
      :pattern ((p_seq<Process> (p_seq<Process> p1 p2) p3))
      :pattern ((p_seq<Process> p1 (p_seq<Process> p2 p3)))
      ))
    :pattern ((p_seq<Process> p1 p2))
    ))
  
  :qid |prog.seq_assoc|)))
(assert (forall ((n Int)) (!
  (=
    (ite
      (> n 0)
      (p_seq<Process> (as p_incr<Process>  Process) (p_single<Process> (- n 1)))
      (as p_empty<Process>  Process))
    (p_single<Process> n))
  :pattern ((p_single<Process> n))
  :qid |prog.single_def|)))
(assert (forall ((n Int) (m Int)) (!
  (=
    (p_merge<Process> (p_single<Process> n) (p_single<Process> m))
    (p_dual<Process> n m))
  :pattern ((p_dual<Process> n m))
  :qid |prog.dual_def|)))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
