(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-27 02:56:09
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
; ---------- FUNCTION nonTerminating----------
(declare-fun v@0@00 () Int)
(declare-fun result@1@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (v@0@00 Int)) (!
  (= (nonTerminating%limited s@$ v@0@00) (nonTerminating s@$ v@0@00))
  :pattern ((nonTerminating s@$ v@0@00))
  :qid |quant-u-8242|)))
(assert (forall ((s@$ $Snap) (v@0@00 Int)) (!
  (nonTerminating%stateless v@0@00)
  :pattern ((nonTerminating%limited s@$ v@0@00))
  :qid |quant-u-8243|)))
; ---------- FUNCTION test----------
(declare-fun x@2@00 () $Ref)
(declare-fun result@3@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= x@2@00 $Ref.null)))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] (forperm x2: Ref [x2.f] :: nonTerminating(x2.f))
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | True | live]
; [else-branch: 0 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | True]
; [eval] nonTerminating(x2.f)
(push) ; 4
(assert (nonTerminating%precondition $Snap.unit ($SortWrappers.$SnapToInt ($Snap.first s@$))))
(pop) ; 4
; Joined path conditions
(assert (nonTerminating%precondition $Snap.unit ($SortWrappers.$SnapToInt ($Snap.first s@$))))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (nonTerminating%precondition $Snap.unit ($SortWrappers.$SnapToInt ($Snap.first s@$))))
(assert (nonTerminating $Snap.unit ($SortWrappers.$SnapToInt ($Snap.first s@$))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (= (test%limited s@$ x@2@00) (test s@$ x@2@00))
  :pattern ((test s@$ x@2@00))
  :qid |quant-u-8244|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (test%stateless x@2@00)
  :pattern ((test%limited s@$ x@2@00))
  :qid |quant-u-8245|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= x@2@00 $Ref.null)))
(assert (= ($Snap.second s@$) $Snap.unit))
(assert (nonTerminating%precondition $Snap.unit ($SortWrappers.$SnapToInt ($Snap.first s@$))))
(assert (nonTerminating $Snap.unit ($SortWrappers.$SnapToInt ($Snap.first s@$))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(assert (= result@3@00 true))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (=> (test%precondition s@$ x@2@00) (= (test s@$ x@2@00) true))
  :pattern ((test s@$ x@2@00))
  :qid |quant-u-8248|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  true
  :pattern ((test s@$ x@2@00))
  :qid |quant-u-8249|)))
; ---------- FUNCTION test2----------
(declare-fun x@4@00 () $Ref)
(declare-fun result@5@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] (forperm x2: Ref [x2.f] :: nonTerminating(x2.f))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@4@00 $Ref)) (!
  (= (test2%limited s@$ x@4@00) (test2 s@$ x@4@00))
  :pattern ((test2 s@$ x@4@00))
  :qid |quant-u-8246|)))
(assert (forall ((s@$ $Snap) (x@4@00 $Ref)) (!
  (test2%stateless x@4@00)
  :pattern ((test2%limited s@$ x@4@00))
  :qid |quant-u-8247|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(assert (= result@5@00 true))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@4@00 $Ref)) (!
  (=> (test2%precondition s@$ x@4@00) (= (test2 s@$ x@4@00) true))
  :pattern ((test2 s@$ x@4@00))
  :qid |quant-u-8250|)))
(assert (forall ((s@$ $Snap) (x@4@00 $Ref)) (!
  true
  :pattern ((test2 s@$ x@4@00))
  :qid |quant-u-8251|)))
