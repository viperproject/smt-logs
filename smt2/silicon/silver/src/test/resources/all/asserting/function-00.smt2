(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-26 23:08:23
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
; ////////// Symbols
; Declaring symbols related to program functions (from program analysis)
(declare-fun fplusone ($Snap $Ref $Ref) Int)
(declare-fun fplusone%limited ($Snap $Ref $Ref) Int)
(declare-fun fplusone%stateless ($Ref $Ref) Bool)
(declare-fun fplusone%precondition ($Snap $Ref $Ref) Bool)
(declare-fun fplusone2 ($Snap $Ref $Ref) Int)
(declare-fun fplusone2%limited ($Snap $Ref $Ref) Int)
(declare-fun fplusone2%stateless ($Ref $Ref) Bool)
(declare-fun fplusone2%precondition ($Snap $Ref $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION fplusone----------
(declare-fun x@0@00 () $Ref)
(declare-fun y@1@00 () $Ref)
(declare-fun result@2@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (not (= x@0@00 $Ref.null)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@0@00 $Ref) (y@1@00 $Ref)) (!
  (= (fplusone%limited s@$ x@0@00 y@1@00) (fplusone s@$ x@0@00 y@1@00))
  :pattern ((fplusone s@$ x@0@00 y@1@00))
  :qid |quant-u-13125|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref) (y@1@00 $Ref)) (!
  (fplusone%stateless x@0@00 y@1@00)
  :pattern ((fplusone%limited s@$ x@0@00 y@1@00))
  :qid |quant-u-13126|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (not (= x@0@00 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (asserting (x != null) in x.f + 1)
; [eval] x != null
; [eval] x.f + 1
(assert (= result@2@00 (+ ($SortWrappers.$SnapToInt s@$) 1)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@0@00 $Ref) (y@1@00 $Ref)) (!
  (=>
    (fplusone%precondition s@$ x@0@00 y@1@00)
    (= (fplusone s@$ x@0@00 y@1@00) (+ ($SortWrappers.$SnapToInt s@$) 1)))
  :pattern ((fplusone s@$ x@0@00 y@1@00))
  :qid |quant-u-13129|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref) (y@1@00 $Ref)) (!
  true
  :pattern ((fplusone s@$ x@0@00 y@1@00))
  :qid |quant-u-13130|)))
; ---------- FUNCTION fplusone2----------
(declare-fun x@3@00 () $Ref)
(declare-fun y@4@00 () $Ref)
(declare-fun result@5@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (not (= x@3@00 $Ref.null)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@3@00 $Ref) (y@4@00 $Ref)) (!
  (= (fplusone2%limited s@$ x@3@00 y@4@00) (fplusone2 s@$ x@3@00 y@4@00))
  :pattern ((fplusone2 s@$ x@3@00 y@4@00))
  :qid |quant-u-13127|)))
(assert (forall ((s@$ $Snap) (x@3@00 $Ref) (y@4@00 $Ref)) (!
  (fplusone2%stateless x@3@00 y@4@00)
  :pattern ((fplusone2%limited s@$ x@3@00 y@4@00))
  :qid |quant-u-13128|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (not (= x@3@00 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (asserting (x != y) in x.f + 1)
; [eval] x != y
(set-option :timeout 0)
(push) ; 2
(assert (not (not (= x@3@00 y@4@00))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] x != y
(set-option :timeout 0)
(push) ; 2
(assert (not (not (= x@3@00 y@4@00))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] x != y
(set-option :timeout 0)
(push) ; 2
(assert (not (not (= x@3@00 y@4@00))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] x != y
(set-option :timeout 0)
(push) ; 2
(assert (not (not (= x@3@00 y@4@00))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
