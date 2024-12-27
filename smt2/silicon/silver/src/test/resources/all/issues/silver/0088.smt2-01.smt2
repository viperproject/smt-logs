(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 02:01:38
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
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test01 ----------
(declare-const x@0@01 $Ref)
(declare-const x@1@01 $Ref)
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
; var i: Int
(declare-const i@2@01 Int)
; [exec]
; i := 0
(declare-const i@3@01 Int)
(push) ; 3
; Loop head block: Check well-definedness of invariant
(pop) ; 3
(push) ; 3
; Loop head block: Establish invariant
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 4
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
; [eval] i < 1
(pop) ; 5
(push) ; 5
; [eval] !(i < 1)
; [eval] i < 1
(pop) ; 5
; Loop head block: Follow loop-internal edges
; [eval] i < 1
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< i@3@01 1))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< i@3@01 1)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | i@3@01 < 1 | live]
; [else-branch: 0 | !(i@3@01 < 1) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 0 | i@3@01 < 1]
(assert (< i@3@01 1))
(push) ; 6
; Loop head block: Check well-definedness of invariant
(pop) ; 6
(push) ; 6
; Loop head block: Establish invariant
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 7
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 8
(pop) ; 8
(push) ; 8
; [eval] !false
(pop) ; 8
; Loop head block: Follow loop-internal edges
; [then-branch: 1 | False | dead]
; [else-branch: 1 | True | live]
(push) ; 8
; [else-branch: 1 | True]
(pop) ; 8
; [eval] !false
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | True | live]
; [else-branch: 2 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 2 | True]
; [exec]
; i := i + 1
; [eval] i + 1
(declare-const i@4@01 Int)
(assert (= i@4@01 (+ i@3@01 1)))
; Loop head block: Re-establish invariant
(pop) ; 8
(pop) ; 7
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 0 | !(i@3@01 < 1)]
(assert (not (< i@3@01 1)))
(pop) ; 5
; [eval] !(i < 1)
; [eval] i < 1
(push) ; 5
(set-option :timeout 10)
(assert (not (< i@3@01 1)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< i@3@01 1))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | !(i@3@01 < 1) | live]
; [else-branch: 3 | i@3@01 < 1 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 3 | !(i@3@01 < 1)]
(assert (not (< i@3@01 1)))
; [exec]
; assert false
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test04 ----------
(declare-const x@5@01 $Ref)
(declare-const x@6@01 $Ref)
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
; var i: Int
(declare-const i@7@01 Int)
; [exec]
; var j: Int
(declare-const j@8@01 Int)
; [exec]
; i := 0
(declare-const j@9@01 Int)
(declare-const i@10@01 Int)
(push) ; 3
; Loop head block: Check well-definedness of invariant
(pop) ; 3
(push) ; 3
; Loop head block: Establish invariant
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 4
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
; [eval] i < 1
(pop) ; 5
(push) ; 5
; [eval] !(i < 1)
; [eval] i < 1
(pop) ; 5
; Loop head block: Follow loop-internal edges
; [eval] i < 1
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< i@10@01 1))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< i@10@01 1)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | i@10@01 < 1 | live]
; [else-branch: 4 | !(i@10@01 < 1) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 4 | i@10@01 < 1]
(assert (< i@10@01 1))
; [exec]
; j := 1
(push) ; 6
; Loop head block: Check well-definedness of invariant
(pop) ; 6
(push) ; 6
; Loop head block: Establish invariant
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 7
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 8
(pop) ; 8
(push) ; 8
; [eval] !false
(pop) ; 8
; Loop head block: Follow loop-internal edges
; [then-branch: 5 | False | dead]
; [else-branch: 5 | True | live]
(push) ; 8
; [else-branch: 5 | True]
(pop) ; 8
; [eval] !false
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | True | live]
; [else-branch: 6 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 6 | True]
; [exec]
; i := i + 1
; [eval] i + 1
(declare-const i@11@01 Int)
(assert (= i@11@01 (+ i@10@01 1)))
; Loop head block: Re-establish invariant
(pop) ; 8
(pop) ; 7
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 4 | !(i@10@01 < 1)]
(assert (not (< i@10@01 1)))
(pop) ; 5
; [eval] !(i < 1)
; [eval] i < 1
(push) ; 5
(set-option :timeout 10)
(assert (not (< i@10@01 1)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< i@10@01 1))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | !(i@10@01 < 1) | live]
; [else-branch: 7 | i@10@01 < 1 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 7 | !(i@10@01 < 1)]
(assert (not (< i@10@01 1)))
; [exec]
; assert false
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1