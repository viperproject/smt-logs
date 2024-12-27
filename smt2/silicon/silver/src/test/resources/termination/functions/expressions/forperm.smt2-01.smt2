(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 02:02:51
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
(declare-fun nonTerminating ($Snap Int) Bool)
(declare-fun nonTerminating%limited ($Snap Int) Bool)
(declare-fun nonTerminating%stateless (Int) Bool)
(declare-fun nonTerminating%precondition ($Snap Int) Bool)
(declare-fun test ($Snap $Ref) Bool)
(declare-fun test%limited ($Snap $Ref) Bool)
(declare-fun test%stateless ($Ref) Bool)
(declare-fun test%precondition ($Snap $Ref) Bool)
(declare-fun test2 ($Snap $Ref) Bool)
(declare-fun test2%limited ($Snap $Ref) Bool)
(declare-fun test2%stateless ($Ref) Bool)
(declare-fun test2%precondition ($Snap $Ref) Bool)
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
(assert (forall ((s@$ $Snap) (v@0@00 Int)) (!
  (= (nonTerminating%limited s@$ v@0@00) (nonTerminating s@$ v@0@00))
  :pattern ((nonTerminating s@$ v@0@00))
  :qid |quant-u-26595|)))
(assert (forall ((s@$ $Snap) (v@0@00 Int)) (!
  (nonTerminating%stateless v@0@00)
  :pattern ((nonTerminating%limited s@$ v@0@00))
  :qid |quant-u-26596|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (= (test%limited s@$ x@2@00) (test s@$ x@2@00))
  :pattern ((test s@$ x@2@00))
  :qid |quant-u-26597|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (test%stateless x@2@00)
  :pattern ((test%limited s@$ x@2@00))
  :qid |quant-u-26598|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (=> (test%precondition s@$ x@2@00) (= (test s@$ x@2@00) true))
  :pattern ((test s@$ x@2@00))
  :qid |quant-u-26601|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  true
  :pattern ((test s@$ x@2@00))
  :qid |quant-u-26602|)))
(assert (forall ((s@$ $Snap) (x@4@00 $Ref)) (!
  (= (test2%limited s@$ x@4@00) (test2 s@$ x@4@00))
  :pattern ((test2 s@$ x@4@00))
  :qid |quant-u-26599|)))
(assert (forall ((s@$ $Snap) (x@4@00 $Ref)) (!
  (test2%stateless x@4@00)
  :pattern ((test2%limited s@$ x@4@00))
  :qid |quant-u-26600|)))
(assert (forall ((s@$ $Snap) (x@4@00 $Ref)) (!
  (=> (test2%precondition s@$ x@4@00) (= (test2 s@$ x@4@00) true))
  :pattern ((test2 s@$ x@4@00))
  :qid |quant-u-26603|)))
(assert (forall ((s@$ $Snap) (x@4@00 $Ref)) (!
  true
  :pattern ((test2 s@$ x@4@00))
  :qid |quant-u-26604|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test_pres_termination_proof ----------
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
; var $condInEx: Bool
(declare-const $condInEx@2@01 Bool)
; [exec]
; var b: Bool
(declare-const b@3@01 Bool)
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@3@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b@3@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | b@3@01 | live]
; [else-branch: 0 | !(b@3@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | b@3@01]
(assert b@3@01)
; [exec]
; inhale acc(x.f, write)
(declare-const $t@4@01 Int)
(assert (not (= x@1@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale false
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 0 | !(b@3@01)]
(assert (not b@3@01))
(pop) ; 3
; [eval] !b
(push) ; 3
(set-option :timeout 10)
(assert (not b@3@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@3@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | !(b@3@01) | live]
; [else-branch: 1 | b@3@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | !(b@3@01)]
(assert (not b@3@01))
; [exec]
; inhale acc(x.f, write)
(declare-const $t@5@01 Int)
(assert (not (= x@1@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not $condInEx@2@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not $condInEx@2@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | $condInEx@2@01 | live]
; [else-branch: 2 | !($condInEx@2@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 2 | $condInEx@2@01]
(assert $condInEx@2@01)
; [exec]
; var x21: Ref
(declare-const x21@6@01 $Ref)
; [eval] perm(x21.f) > none
; [eval] perm(x21.f)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> (ite (= x21@6@01 x@1@01) $Perm.Write $Perm.No) $Perm.No))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (> (ite (= x21@6@01 x@1@01) $Perm.Write $Perm.No) $Perm.No)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | (x21@6@01 == x@1@01 ? W : Z) > Z | live]
; [else-branch: 3 | !((x21@6@01 == x@1@01 ? W : Z) > Z) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 3 | (x21@6@01 == x@1@01 ? W : Z) > Z]
(assert (> (ite (= x21@6@01 x@1@01) $Perm.Write $Perm.No) $Perm.No))
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
; ---------- test2_pres_termination_proof ----------
(declare-const x@7@01 $Ref)
(declare-const x@8@01 $Ref)
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
; var $condInEx: Bool
(declare-const $condInEx@9@01 Bool)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $condInEx@9@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not $condInEx@9@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | $condInEx@9@01 | live]
; [else-branch: 4 | !($condInEx@9@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 4 | $condInEx@9@01]
(assert $condInEx@9@01)
; [exec]
; var x22: Ref
(declare-const x22@10@01 $Ref)
; [eval] perm(x22.f) > none
; [eval] perm(x22.f)
; [then-branch: 5 | False | dead]
; [else-branch: 5 | True | live]
(push) ; 4
; [else-branch: 5 | True]
(pop) ; 4
; [eval] !(perm(x22.f) > none)
; [eval] perm(x22.f) > none
; [eval] perm(x22.f)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | True | live]
; [else-branch: 6 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 6 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 4 | !($condInEx@9@01)]
(assert (not $condInEx@9@01))
(pop) ; 3
; [eval] !$condInEx
(push) ; 3
(set-option :timeout 10)
(assert (not $condInEx@9@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $condInEx@9@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | !($condInEx@9@01) | live]
; [else-branch: 7 | $condInEx@9@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 7 | !($condInEx@9@01)]
(assert (not $condInEx@9@01))
(pop) ; 3
(push) ; 3
; [else-branch: 7 | $condInEx@9@01]
(assert $condInEx@9@01)
(pop) ; 3
(pop) ; 2
(pop) ; 1