(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-26 22:53:22
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
(declare-fun foo ($Snap $Ref $Ref) Int)
(declare-fun foo%limited ($Snap $Ref $Ref) Int)
(declare-fun foo%stateless ($Ref $Ref) Bool)
(declare-fun foo%precondition ($Snap $Ref $Ref) Bool)
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
(assert (forall ((s@$ $Snap) (x@0@00 $Ref) (y@1@00 $Ref)) (!
  (= (foo%limited s@$ x@0@00 y@1@00) (foo s@$ x@0@00 y@1@00))
  :pattern ((foo s@$ x@0@00 y@1@00))
  :qid |quant-u-82|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref) (y@1@00 $Ref)) (!
  (foo%stateless x@0@00 y@1@00)
  :pattern ((foo%limited s@$ x@0@00 y@1@00))
  :qid |quant-u-83|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref) (y@1@00 $Ref)) (!
  (=>
    (foo%precondition s@$ x@0@00 y@1@00)
    (= (foo s@$ x@0@00 y@1@00) (ite (= x@0@00 y@1@00) 1 0)))
  :pattern ((foo s@$ x@0@00 y@1@00))
  :qid |quant-u-84|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref) (y@1@00 $Ref)) (!
  true
  :pattern ((foo s@$ x@0@00 y@1@00))
  :qid |quant-u-85|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test ----------
(declare-const x@0@01 $Ref)
(declare-const y@1@01 $Ref)
(declare-const x@2@01 $Ref)
(declare-const y@3@01 $Ref)
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
; var v: Int
(declare-const v@4@01 Int)
; [exec]
; inhale acc(x.f, write) && acc(y.f, write)
(declare-const $t@5@01 $Snap)
(assert (= $t@5@01 ($Snap.combine ($Snap.first $t@5@01) ($Snap.second $t@5@01))))
(assert (not (= x@2@01 $Ref.null)))
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@2@01 y@3@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@3@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; v := foo(x, y)
; [eval] foo(x, y)
(set-option :timeout 0)
(push) ; 3
(assert (foo%precondition ($Snap.combine ($Snap.first $t@5@01) ($Snap.second $t@5@01)) x@2@01 y@3@01))
(pop) ; 3
; Joined path conditions
(assert (foo%precondition ($Snap.combine ($Snap.first $t@5@01) ($Snap.second $t@5@01)) x@2@01 y@3@01))
(declare-const v@6@01 Int)
(assert (=
  v@6@01
  (foo ($Snap.combine ($Snap.first $t@5@01) ($Snap.second $t@5@01)) x@2@01 y@3@01)))
; [exec]
; assert v == 0
; [eval] v == 0
(push) ; 3
(assert (not (= v@6@01 0)))
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
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@3@01 x@2@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first $t@5@01))
    ($SortWrappers.$SnapToInt ($Snap.second $t@5@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.second $t@5@01))
    ($SortWrappers.$SnapToInt ($Snap.first $t@5@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x@2@01 y@3@01)) (not (= y@3@01 x@2@01))))
; [eval] v == 0
(set-option :timeout 0)
(push) ; 3
(assert (not (= v@6@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= v@6@01 0))
(pop) ; 2
(pop) ; 1
