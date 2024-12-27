(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 01:42:32
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
(declare-fun req ($Snap $Ref) Bool)
(declare-fun req%limited ($Snap $Ref) Bool)
(declare-fun req%stateless ($Ref) Bool)
(declare-fun req%precondition ($Snap $Ref) Bool)
(declare-fun getter_pkg_F ($Snap $Ref) Int)
(declare-fun getter_pkg_F%limited ($Snap $Ref) Int)
(declare-fun getter_pkg_F%stateless ($Ref) Bool)
(declare-fun getter_pkg_F%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun SomePredicate_pkg_F%trigger ($Snap $Ref) Bool)
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
  (= (req%limited s@$ x@0@00) (req s@$ x@0@00))
  :pattern ((req s@$ x@0@00))
  :qid |quant-u-16|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (req%stateless x@0@00)
  :pattern ((req%limited s@$ x@0@00))
  :qid |quant-u-17|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (=> (req%precondition s@$ x@0@00) (= (req s@$ x@0@00) true))
  :pattern ((req s@$ x@0@00))
  :qid |quant-u-20|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  true
  :pattern ((req s@$ x@0@00))
  :qid |quant-u-21|)))
(assert (forall ((s@$ $Snap) (param_pkg_V0@2@00 $Ref)) (!
  (=
    (getter_pkg_F%limited s@$ param_pkg_V0@2@00)
    (getter_pkg_F s@$ param_pkg_V0@2@00))
  :pattern ((getter_pkg_F s@$ param_pkg_V0@2@00))
  :qid |quant-u-18|)))
(assert (forall ((s@$ $Snap) (param_pkg_V0@2@00 $Ref)) (!
  (getter_pkg_F%stateless param_pkg_V0@2@00)
  :pattern ((getter_pkg_F%limited s@$ param_pkg_V0@2@00))
  :qid |quant-u-19|)))
(assert (forall ((s@$ $Snap) (param_pkg_V0@2@00 $Ref)) (!
  (=>
    (getter_pkg_F%precondition s@$ param_pkg_V0@2@00)
    (=
      (getter_pkg_F s@$ param_pkg_V0@2@00)
      ($SortWrappers.$SnapToInt ($Snap.second s@$))))
  :pattern ((getter_pkg_F s@$ param_pkg_V0@2@00))
  :qid |quant-u-22|)))
(assert (forall ((s@$ $Snap) (param_pkg_V0@2@00 $Ref)) (!
  true
  :pattern ((getter_pkg_F s@$ param_pkg_V0@2@00))
  :qid |quant-u-23|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test ----------
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
; inhale acc(x.f, write)
(declare-const $t@2@01 Int)
(assert (not (= x@1@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert req(x)
; [eval] req(x)
(set-option :timeout 0)
(push) ; 3
(assert (req%precondition ($SortWrappers.IntTo$Snap $t@2@01) x@1@01))
(pop) ; 3
; Joined path conditions
(assert (req%precondition ($SortWrappers.IntTo$Snap $t@2@01) x@1@01))
(push) ; 3
(assert (not (req ($SortWrappers.IntTo$Snap $t@2@01) x@1@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (req ($SortWrappers.IntTo$Snap $t@2@01) x@1@01))
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
(pop) ; 2
(pop) ; 1
; ---------- client2_pkg_F ----------
(declare-const param_pkg_V0@3@01 $Ref)
(declare-const res_pkg_V0@4@01 Int)
(declare-const param_pkg_V0@5@01 $Ref)
(declare-const res_pkg_V0@6@01 Int)
(push) ; 1
(declare-const $t@7@01 $Snap)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 ($Snap.combine ($Snap.first $t@8@01) ($Snap.second $t@8@01))))
(assert (= ($Snap.second $t@8@01) $Snap.unit))
; [eval] res_pkg_V0 == getter_pkg_F(param_pkg_V0)
; [eval] getter_pkg_F(param_pkg_V0)
(push) ; 3
(assert (getter_pkg_F%precondition ($Snap.first $t@8@01) param_pkg_V0@5@01))
(pop) ; 3
; Joined path conditions
(assert (getter_pkg_F%precondition ($Snap.first $t@8@01) param_pkg_V0@5@01))
(assert (= res_pkg_V0@6@01 (getter_pkg_F ($Snap.first $t@8@01) param_pkg_V0@5@01)))
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
