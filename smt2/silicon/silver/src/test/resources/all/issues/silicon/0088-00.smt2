(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-27 02:59:43
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
(declare-fun fib ($Snap Int) Int)
(declare-fun fib%limited ($Snap Int) Int)
(declare-fun fib%stateless (Int) Bool)
(declare-fun fib%precondition ($Snap Int) Bool)
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
; ---------- FUNCTION fib----------
(declare-fun n@0@00 () Int)
(declare-fun result@1@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] n >= 0
(assert (>= n@0@00 0))
(declare-const $t@2@00 $Snap)
(assert (= $t@2@00 ($Snap.combine ($Snap.first $t@2@00) ($Snap.second $t@2@00))))
(assert (= ($Snap.first $t@2@00) $Snap.unit))
; [eval] (result == 0) == (n == 0)
; [eval] result == 0
; [eval] n == 0
(assert (= (= result@1@00 0) (= n@0@00 0)))
(assert (= ($Snap.second $t@2@00) $Snap.unit))
; [eval] result >= 0
(assert (>= result@1@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (n@0@00 Int)) (!
  (= (fib%limited s@$ n@0@00) (fib s@$ n@0@00))
  :pattern ((fib s@$ n@0@00))
  :qid |quant-u-11029|)))
(assert (forall ((s@$ $Snap) (n@0@00 Int)) (!
  (fib%stateless n@0@00)
  :pattern ((fib%limited s@$ n@0@00))
  :qid |quant-u-11030|)))
(assert (forall ((s@$ $Snap) (n@0@00 Int)) (!
  (let ((result@1@00 (fib%limited s@$ n@0@00))) (=>
    (fib%precondition s@$ n@0@00)
    (and (= (= result@1@00 0) (= n@0@00 0)) (>= result@1@00 0))))
  :pattern ((fib%limited s@$ n@0@00))
  :qid |quant-u-11031|)))
(assert (forall ((s@$ $Snap) (n@0@00 Int)) (!
  (let ((result@1@00 (fib%limited s@$ n@0@00))) true)
  :pattern ((fib%limited s@$ n@0@00))
  :qid |quant-u-11032|)))
(assert (forall ((s@$ $Snap) (n@0@00 Int)) (!
  (let ((result@1@00 (fib%limited s@$ n@0@00))) true)
  :pattern ((fib%limited s@$ n@0@00))
  :qid |quant-u-11033|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert (>= n@0@00 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (n <= 1 ? n : fib(n - 1) + fib(n - 2))
; [eval] n <= 1
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (<= n@0@00 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<= n@0@00 1)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | n@0@00 <= 1 | live]
; [else-branch: 0 | !(n@0@00 <= 1) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | n@0@00 <= 1]
(assert (<= n@0@00 1))
(pop) ; 3
(push) ; 3
; [else-branch: 0 | !(n@0@00 <= 1)]
(assert (not (<= n@0@00 1)))
; [eval] fib(n - 1) + fib(n - 2)
; [eval] fib(n - 1)
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
(assert (fib%precondition $Snap.unit (- n@0@00 1)))
(pop) ; 4
; Joined path conditions
(assert (and (>= (- n@0@00 1) 0) (fib%precondition $Snap.unit (- n@0@00 1))))
; [eval] fib(n - 2)
; [eval] n - 2
(push) ; 4
; [eval] n >= 0
(push) ; 5
(assert (not (>= (- n@0@00 2) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (>= (- n@0@00 2) 0))
(assert (fib%precondition $Snap.unit (- n@0@00 2)))
(pop) ; 4
; Joined path conditions
(assert (and (>= (- n@0@00 2) 0) (fib%precondition $Snap.unit (- n@0@00 2))))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (<= n@0@00 1))
  (and
    (not (<= n@0@00 1))
    (>= (- n@0@00 1) 0)
    (fib%precondition $Snap.unit (- n@0@00 1))
    (>= (- n@0@00 2) 0)
    (fib%precondition $Snap.unit (- n@0@00 2)))))
(assert (or (not (<= n@0@00 1)) (<= n@0@00 1)))
(assert (=
  result@1@00
  (ite
    (<= n@0@00 1)
    n@0@00
    (+ (fib $Snap.unit (- n@0@00 1)) (fib $Snap.unit (- n@0@00 2))))))
; [eval] (result == 0) == (n == 0)
; [eval] result == 0
; [eval] n == 0
(push) ; 2
(assert (not (= (= result@1@00 0) (= n@0@00 0))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (= (= result@1@00 0) (= n@0@00 0)))
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
    (fib%precondition s@$ n@0@00)
    (=
      (fib s@$ n@0@00)
      (ite
        (<= n@0@00 1)
        n@0@00
        (+
          (fib%limited $Snap.unit (- n@0@00 1))
          (fib%limited $Snap.unit (- n@0@00 2))))))
  :pattern ((fib s@$ n@0@00))
  :qid |quant-u-11034|)))
(assert (forall ((s@$ $Snap) (n@0@00 Int)) (!
  (=>
    (fib%precondition s@$ n@0@00)
    (ite
      (<= n@0@00 1)
      true
      (and
        (fib%precondition $Snap.unit (- n@0@00 1))
        (fib%precondition $Snap.unit (- n@0@00 2)))))
  :pattern ((fib s@$ n@0@00))
  :qid |quant-u-11035|)))
; ---------- P ----------
(declare-const x@3@00 $Ref)
(push) ; 1
(declare-const $t@4@00 $Snap)
(assert (= $t@4@00 $Snap.unit))
(pop) ; 1
