(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 01:57:53
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
(declare-fun fac ($Snap Int) Int)
(declare-fun fac%limited ($Snap Int) Int)
(declare-fun fac%stateless (Int) Bool)
(declare-fun fac%precondition ($Snap Int) Bool)
(declare-fun err1 ($Snap Int) Int)
(declare-fun err1%limited ($Snap Int) Int)
(declare-fun err1%stateless (Int) Bool)
(declare-fun err1%precondition ($Snap Int) Bool)
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
; ---------- FUNCTION fac----------
(declare-fun n@0@00 () Int)
(declare-fun result@1@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] n >= 0
(assert (>= n@0@00 0))
(declare-const $t@4@00 $Snap)
(assert (= $t@4@00 $Snap.unit))
; [eval] result >= 0
(assert (>= result@1@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (n@0@00 Int)) (!
  (= (fac%limited s@$ n@0@00) (fac s@$ n@0@00))
  :pattern ((fac s@$ n@0@00))
  :qid |quant-u-22375|)))
(assert (forall ((s@$ $Snap) (n@0@00 Int)) (!
  (fac%stateless n@0@00)
  :pattern ((fac%limited s@$ n@0@00))
  :qid |quant-u-22376|)))
(assert (forall ((s@$ $Snap) (n@0@00 Int)) (!
  (let ((result@1@00 (fac%limited s@$ n@0@00))) (=>
    (fac%precondition s@$ n@0@00)
    (>= result@1@00 0)))
  :pattern ((fac%limited s@$ n@0@00))
  :qid |quant-u-22379|)))
(assert (forall ((s@$ $Snap) (n@0@00 Int)) (!
  (let ((result@1@00 (fac%limited s@$ n@0@00))) true)
  :pattern ((fac%limited s@$ n@0@00))
  :qid |quant-u-22380|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert (>= n@0@00 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (n < 2 ? n : n * fac(n - 1))
; [eval] n < 2
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< n@0@00 2))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< n@0@00 2)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | n@0@00 < 2 | live]
; [else-branch: 0 | !(n@0@00 < 2) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | n@0@00 < 2]
(assert (< n@0@00 2))
(pop) ; 3
(push) ; 3
; [else-branch: 0 | !(n@0@00 < 2)]
(assert (not (< n@0@00 2)))
; [eval] n * fac(n - 1)
; [eval] fac(n - 1)
; [eval] n - 1
(push) ; 4
; [eval] n >= 0
(push) ; 5
(assert (not (>= (- n@0@00 1) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (>= (- n@0@00 1) 0))
(assert (fac%precondition $Snap.unit (- n@0@00 1)))
(pop) ; 4
; Joined path conditions
(assert (and (>= (- n@0@00 1) 0) (fac%precondition $Snap.unit (- n@0@00 1))))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (< n@0@00 2))
  (and
    (not (< n@0@00 2))
    (>= (- n@0@00 1) 0)
    (fac%precondition $Snap.unit (- n@0@00 1)))))
(assert (or (not (< n@0@00 2)) (< n@0@00 2)))
(assert (=
  result@1@00
  (ite (< n@0@00 2) n@0@00 (* n@0@00 (fac $Snap.unit (- n@0@00 1))))))
; [eval] result >= 0
(push) ; 2
(assert (not (>= result@1@00 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (>= result@1@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (n@0@00 Int)) (!
  (=>
    (fac%precondition s@$ n@0@00)
    (=
      (fac s@$ n@0@00)
      (ite (< n@0@00 2) n@0@00 (* n@0@00 (fac%limited $Snap.unit (- n@0@00 1))))))
  :pattern ((fac s@$ n@0@00))
  :qid |quant-u-22381|)))
(assert (forall ((s@$ $Snap) (n@0@00 Int)) (!
  (=>
    (fac%precondition s@$ n@0@00)
    (ite (< n@0@00 2) true (fac%precondition $Snap.unit (- n@0@00 1))))
  :pattern ((fac s@$ n@0@00))
  :qid |quant-u-22382|)))
; ---------- FUNCTION err1----------
(declare-fun n@2@00 () Int)
(declare-fun result@3@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] n >= 0
(assert (>= n@2@00 0))
(declare-const $t@5@00 $Snap)
(assert (= $t@5@00 $Snap.unit))
; [eval] result >= 0
(assert (>= result@3@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (n@2@00 Int)) (!
  (= (err1%limited s@$ n@2@00) (err1 s@$ n@2@00))
  :pattern ((err1 s@$ n@2@00))
  :qid |quant-u-22377|)))
(assert (forall ((s@$ $Snap) (n@2@00 Int)) (!
  (err1%stateless n@2@00)
  :pattern ((err1%limited s@$ n@2@00))
  :qid |quant-u-22378|)))
(assert (forall ((s@$ $Snap) (n@2@00 Int)) (!
  (let ((result@3@00 (err1%limited s@$ n@2@00))) (=>
    (err1%precondition s@$ n@2@00)
    (>= result@3@00 0)))
  :pattern ((err1%limited s@$ n@2@00))
  :qid |quant-u-22383|)))
(assert (forall ((s@$ $Snap) (n@2@00 Int)) (!
  (let ((result@3@00 (err1%limited s@$ n@2@00))) true)
  :pattern ((err1%limited s@$ n@2@00))
  :qid |quant-u-22384|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert (>= n@2@00 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (n <= 1 ? 1 : err1(n - 1) - n)
; [eval] n <= 1
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (<= n@2@00 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<= n@2@00 1)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | n@2@00 <= 1 | live]
; [else-branch: 1 | !(n@2@00 <= 1) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | n@2@00 <= 1]
(assert (<= n@2@00 1))
(pop) ; 3
(push) ; 3
; [else-branch: 1 | !(n@2@00 <= 1)]
(assert (not (<= n@2@00 1)))
; [eval] err1(n - 1) - n
; [eval] err1(n - 1)
; [eval] n - 1
(push) ; 4
; [eval] n >= 0
(push) ; 5
(assert (not (>= (- n@2@00 1) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (>= (- n@2@00 1) 0))
(assert (err1%precondition $Snap.unit (- n@2@00 1)))
(pop) ; 4
; Joined path conditions
(assert (and (>= (- n@2@00 1) 0) (err1%precondition $Snap.unit (- n@2@00 1))))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (<= n@2@00 1))
  (and
    (not (<= n@2@00 1))
    (>= (- n@2@00 1) 0)
    (err1%precondition $Snap.unit (- n@2@00 1)))))
(assert (or (not (<= n@2@00 1)) (<= n@2@00 1)))
(assert (= result@3@00 (ite (<= n@2@00 1) 1 (- (err1 $Snap.unit (- n@2@00 1)) n@2@00))))
; [eval] result >= 0
(push) ; 2
(assert (not (>= result@3@00 0)))
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
; [eval] result >= 0
(set-option :timeout 0)
(push) ; 2
(assert (not (>= result@3@00 0)))
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
; [eval] result >= 0
(set-option :timeout 0)
(push) ; 2
(assert (not (>= result@3@00 0)))
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
; [eval] result >= 0
(set-option :timeout 0)
(push) ; 2
(assert (not (>= result@3@00 0)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1