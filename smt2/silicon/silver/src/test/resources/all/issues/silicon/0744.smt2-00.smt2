(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 02:00:59
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
(declare-fun ge ($Snap Int Int) Bool)
(declare-fun ge%limited ($Snap Int Int) Bool)
(declare-fun ge%stateless (Int Int) Bool)
(declare-fun ge%precondition ($Snap Int Int) Bool)
(declare-fun fac ($Snap Int) Int)
(declare-fun fac%limited ($Snap Int) Int)
(declare-fun fac%stateless (Int) Bool)
(declare-fun fac%precondition ($Snap Int) Bool)
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
; ---------- FUNCTION ge----------
(declare-fun i1@0@00 () Int)
(declare-fun i2@1@00 () Int)
(declare-fun result@2@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (i1@0@00 Int) (i2@1@00 Int)) (!
  (= (ge%limited s@$ i1@0@00 i2@1@00) (ge s@$ i1@0@00 i2@1@00))
  :pattern ((ge s@$ i1@0@00 i2@1@00))
  :qid |quant-u-25339|)))
(assert (forall ((s@$ $Snap) (i1@0@00 Int) (i2@1@00 Int)) (!
  (ge%stateless i1@0@00 i2@1@00)
  :pattern ((ge%limited s@$ i1@0@00 i2@1@00))
  :qid |quant-u-25340|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] i1 >= i2
(assert (= result@2@00 (>= i1@0@00 i2@1@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (i1@0@00 Int) (i2@1@00 Int)) (!
  (=>
    (ge%precondition s@$ i1@0@00 i2@1@00)
    (= (ge s@$ i1@0@00 i2@1@00) (>= i1@0@00 i2@1@00)))
  :pattern ((ge s@$ i1@0@00 i2@1@00))
  :qid |quant-u-25343|)))
(assert (forall ((s@$ $Snap) (i1@0@00 Int) (i2@1@00 Int)) (!
  true
  :pattern ((ge s@$ i1@0@00 i2@1@00))
  :qid |quant-u-25344|)))
; ---------- FUNCTION fac----------
(declare-fun i@3@00 () Int)
(declare-fun result@4@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(declare-const $t@5@00 $Snap)
(assert (= $t@5@00 $Snap.unit))
; [eval] ge(result, 1)
(push) ; 2
(assert (ge%precondition $Snap.unit result@4@00 1))
(pop) ; 2
; Joined path conditions
(assert (ge%precondition $Snap.unit result@4@00 1))
(assert (ge $Snap.unit result@4@00 1))
(pop) ; 1
(assert (forall ((s@$ $Snap) (i@3@00 Int)) (!
  (= (fac%limited s@$ i@3@00) (fac s@$ i@3@00))
  :pattern ((fac s@$ i@3@00))
  :qid |quant-u-25341|)))
(assert (forall ((s@$ $Snap) (i@3@00 Int)) (!
  (fac%stateless i@3@00)
  :pattern ((fac%limited s@$ i@3@00))
  :qid |quant-u-25342|)))
(assert (forall ((s@$ $Snap) (i@3@00 Int)) (!
  (let ((result@4@00 (fac%limited s@$ i@3@00))) (=>
    (fac%precondition s@$ i@3@00)
    (ge $Snap.unit result@4@00 1)))
  :pattern ((fac%limited s@$ i@3@00))
  :qid |quant-u-25345|)))
(assert (forall ((s@$ $Snap) (i@3@00 Int)) (!
  (let ((result@4@00 (fac%limited s@$ i@3@00))) (=>
    (fac%precondition s@$ i@3@00)
    (ge%precondition $Snap.unit result@4@00 1)))
  :pattern ((fac%limited s@$ i@3@00))
  :qid |quant-u-25346|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (i <= 1 ? 1 : i * fac(i - 1))
; [eval] i <= 1
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (<= i@3@00 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<= i@3@00 1)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | i@3@00 <= 1 | live]
; [else-branch: 0 | !(i@3@00 <= 1) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | i@3@00 <= 1]
(assert (<= i@3@00 1))
(pop) ; 3
(push) ; 3
; [else-branch: 0 | !(i@3@00 <= 1)]
(assert (not (<= i@3@00 1)))
; [eval] i * fac(i - 1)
; [eval] fac(i - 1)
; [eval] i - 1
(push) ; 4
(assert (fac%precondition $Snap.unit (- i@3@00 1)))
(pop) ; 4
; Joined path conditions
(assert (fac%precondition $Snap.unit (- i@3@00 1)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (<= i@3@00 1))
  (and (not (<= i@3@00 1)) (fac%precondition $Snap.unit (- i@3@00 1)))))
(assert (or (not (<= i@3@00 1)) (<= i@3@00 1)))
(assert (= result@4@00 (ite (<= i@3@00 1) 1 (* i@3@00 (fac $Snap.unit (- i@3@00 1))))))
; [eval] ge(result, 1)
(push) ; 2
(assert (ge%precondition $Snap.unit result@4@00 1))
(pop) ; 2
; Joined path conditions
(assert (ge%precondition $Snap.unit result@4@00 1))
(push) ; 2
(assert (not (ge $Snap.unit result@4@00 1)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (ge $Snap.unit result@4@00 1))
(pop) ; 1
(assert (forall ((s@$ $Snap) (i@3@00 Int)) (!
  (=>
    (fac%precondition s@$ i@3@00)
    (=
      (fac s@$ i@3@00)
      (ite (<= i@3@00 1) 1 (* i@3@00 (fac%limited $Snap.unit (- i@3@00 1))))))
  :pattern ((fac s@$ i@3@00))
  :qid |quant-u-25347|)))
(assert (forall ((s@$ $Snap) (i@3@00 Int)) (!
  (=>
    (fac%precondition s@$ i@3@00)
    (ite (<= i@3@00 1) true (fac%precondition $Snap.unit (- i@3@00 1))))
  :pattern ((fac s@$ i@3@00))
  :qid |quant-u-25348|)))