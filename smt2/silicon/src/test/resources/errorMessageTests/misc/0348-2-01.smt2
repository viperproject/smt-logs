(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 12:31:03
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
(declare-fun inner ($Snap $Ref) Int)
(declare-fun inner%limited ($Snap $Ref) Int)
(declare-fun inner%stateless ($Ref) Bool)
(declare-fun inner%precondition ($Snap $Ref) Bool)
(declare-fun outer ($Snap $Ref Int) Bool)
(declare-fun outer%limited ($Snap $Ref Int) Bool)
(declare-fun outer%stateless ($Ref Int) Bool)
(declare-fun outer%precondition ($Snap $Ref Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun P%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (= (inner%limited s@$ x@0@00) (inner s@$ x@0@00))
  :pattern ((inner s@$ x@0@00))
  :qid |quant-u-4757|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (inner%stateless x@0@00)
  :pattern ((inner%limited s@$ x@0@00))
  :qid |quant-u-4758|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref) (v@3@00 Int)) (!
  (= (outer%limited s@$ x@2@00 v@3@00) (outer s@$ x@2@00 v@3@00))
  :pattern ((outer s@$ x@2@00 v@3@00))
  :qid |quant-u-4759|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref) (v@3@00 Int)) (!
  (outer%stateless x@2@00 v@3@00)
  :pattern ((outer%limited s@$ x@2@00 v@3@00))
  :qid |quant-u-4760|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test ----------
(declare-const y@0@01 $Ref)
(declare-const y@1@01 $Ref)
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
; var x: Ref
(declare-const x@2@01 $Ref)
; [exec]
; var v: Int
(declare-const v@3@01 Int)
; [exec]
; inhale acc(P(y), write)
(declare-const $t@4@01 Int)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; x := y
; [exec]
; v := inner(y)
; [eval] inner(y)
(set-option :timeout 0)
(push) ; 3
(assert (inner%precondition ($SortWrappers.IntTo$Snap $t@4@01) y@1@01))
(pop) ; 3
; Joined path conditions
(assert (inner%precondition ($SortWrappers.IntTo$Snap $t@4@01) y@1@01))
(declare-const v@5@01 Int)
(assert (= v@5@01 (inner ($SortWrappers.IntTo$Snap $t@4@01) y@1@01)))
; [exec]
; exhale (unfolding acc(P(x), write) in v == 0)
; [eval] (unfolding acc(P(x), write) in v == 0)
(push) ; 3
(assert (P%trigger ($SortWrappers.IntTo$Snap $t@4@01) y@1@01))
(assert (not (= y@1@01 $Ref.null)))
; [eval] v == 0
(pop) ; 3
; Joined path conditions
(assert (and
  (P%trigger ($SortWrappers.IntTo$Snap $t@4@01) y@1@01)
  (not (= y@1@01 $Ref.null))))
(push) ; 3
(assert (not (= v@5@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (unfolding acc(P(x), write) in v == 0)
(set-option :timeout 0)
(push) ; 3
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] v == 0
(pop) ; 3
; Joined path conditions
(set-option :timeout 0)
(push) ; 3
(assert (not (= v@5@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (unfolding acc(P(x), write) in v == 0)
(set-option :timeout 0)
(push) ; 3
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] v == 0
(pop) ; 3
; Joined path conditions
(set-option :timeout 0)
(push) ; 3
(assert (not (= v@5@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (unfolding acc(P(x), write) in v == 0)
(set-option :timeout 0)
(push) ; 3
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] v == 0
(pop) ; 3
; Joined path conditions
(set-option :timeout 0)
(push) ; 3
(assert (not (= v@5@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
