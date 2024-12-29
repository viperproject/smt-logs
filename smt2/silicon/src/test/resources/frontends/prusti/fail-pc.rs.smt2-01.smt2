(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-29 14:41:38
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
(declare-sort $SnapshotMirrors$ 0)
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
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$SnapshotMirrors$To$Snap ($SnapshotMirrors$) $Snap)
(declare-fun $SortWrappers.$SnapTo$SnapshotMirrors$ ($Snap) $SnapshotMirrors$)
(assert (forall ((x $SnapshotMirrors$)) (!
    (= x ($SortWrappers.$SnapTo$SnapshotMirrors$($SortWrappers.$SnapshotMirrors$To$Snap x)))
    :pattern (($SortWrappers.$SnapshotMirrors$To$Snap x))
    :qid |$Snap.$SnapTo$SnapshotMirrors$To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$SnapshotMirrors$To$Snap($SortWrappers.$SnapTo$SnapshotMirrors$ x)))
    :pattern (($SortWrappers.$SnapTo$SnapshotMirrors$ x))
    :qid |$Snap.$SnapshotMirrors$To$SnapTo$SnapshotMirrors$|
    )))
; ////////// Symbols
(declare-fun mirror$m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$__$TY$__$int$$$int$<Int> (Int) Int)
(declare-fun mirror$m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$__$TY$__$int$$$int$<Int> (Int) Int)
; Declaring symbols related to program functions (from program analysis)
(declare-fun builtin$unreach_bool__$TY$__$bool$ ($Snap) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%limited ($Snap) Bool)
(declare-const builtin$unreach_bool__$TY$__$bool$%stateless Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%precondition ($Snap) Bool)
(declare-fun builtin$unreach_int__$TY$__$int$ ($Snap) Int)
(declare-fun builtin$unreach_int__$TY$__$int$%limited ($Snap) Int)
(declare-const builtin$unreach_int__$TY$__$int$%stateless Bool)
(declare-fun builtin$unreach_int__$TY$__$int$%precondition ($Snap) Bool)
(declare-fun read$ ($Snap) $Perm)
(declare-fun read$%limited ($Snap) $Perm)
(declare-const read$%stateless Bool)
(declare-fun read$%precondition ($Snap) Bool)
(declare-fun m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$ ($Snap Int) Int)
(declare-fun m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$%limited ($Snap Int) Int)
(declare-fun m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$%stateless (Int) Bool)
(declare-fun m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$%precondition ($Snap Int) Bool)
(declare-fun m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$ ($Snap Int) Int)
(declare-fun m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$%limited ($Snap Int) Int)
(declare-fun m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$%stateless (Int) Bool)
(declare-fun m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$%precondition ($Snap Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun DeadBorrowToken$%trigger ($Snap Int) Bool)
(declare-fun bool%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_10$3$1597337827284953432%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_11$4$16229172243933521810%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_12$2$3310155324070265804%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_13$2$3310155324070265804%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_9$4$16229172243933521810%trigger ($Snap $Ref) Bool)
(declare-fun i32%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_10$3$1597337827284953432%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_11$4$16229172243933521810%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_12$2$3310155324070265804%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_13$2$3310155324070265804%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_9$4$16229172243933521810%trigger ($Snap $Ref) Bool)
(declare-fun ref$i32%trigger ($Snap $Ref) Bool)
(declare-fun tuple0$%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$i32$bool%trigger ($Snap $Ref) Bool)
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
(assert (forall ((s@$ $Snap)) (!
  (=
    (builtin$unreach_bool__$TY$__$bool$%limited s@$)
    (builtin$unreach_bool__$TY$__$bool$ s@$))
  :pattern ((builtin$unreach_bool__$TY$__$bool$ s@$))
  :qid |quant-u-26|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$unreach_bool__$TY$__$bool$%stateless  Bool)
  :pattern ((builtin$unreach_bool__$TY$__$bool$%limited s@$))
  :qid |quant-u-27|)))
(assert (forall ((s@$ $Snap)) (!
  (=
    (builtin$unreach_int__$TY$__$int$%limited s@$)
    (builtin$unreach_int__$TY$__$int$ s@$))
  :pattern ((builtin$unreach_int__$TY$__$int$ s@$))
  :qid |quant-u-28|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$unreach_int__$TY$__$int$%stateless  Bool)
  :pattern ((builtin$unreach_int__$TY$__$int$%limited s@$))
  :qid |quant-u-29|)))
(assert (forall ((s@$ $Snap)) (!
  (= (read$%limited s@$) (read$ s@$))
  :pattern ((read$ s@$))
  :qid |quant-u-30|)))
(assert (forall ((s@$ $Snap)) (!
  (as read$%stateless  Bool)
  :pattern ((read$%limited s@$))
  :qid |quant-u-31|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@2@00 (read$%limited s@$))) (=>
    (read$%precondition s@$)
    (and (< $Perm.No result@2@00) (< result@2@00 $Perm.Write))))
  :pattern ((read$%limited s@$))
  :qid |quant-u-36|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@2@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-37|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@2@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-38|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 Int)) (!
  (=
    (m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@3@00)
    (m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$ s@$ _pure_1@3@00))
  :pattern ((m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$ s@$ _pure_1@3@00))
  :qid |quant-u-32|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 Int)) (!
  (m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$%stateless _pure_1@3@00)
  :pattern ((m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@3@00))
  :qid |quant-u-33|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 Int)) (!
  (let ((result@4@00 (m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@3@00))) (=>
    (m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$%precondition s@$ _pure_1@3@00)
    (and
      (= result@4@00 (div (* _pure_1@3@00 (+ _pure_1@3@00 1)) 2))
      (=
        result@4@00
        (mirror$m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$__$TY$__$int$$$int$<Int> _pure_1@3@00)))))
  :pattern ((m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@3@00))
  :qid |quant-u-39|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 Int)) (!
  (let ((result@4@00 (m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@3@00))) true)
  :pattern ((m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@3@00))
  :qid |quant-u-40|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 Int)) (!
  (let ((result@4@00 (m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@3@00))) true)
  :pattern ((m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@3@00))
  :qid |quant-u-41|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 Int)) (!
  (=>
    (m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$%precondition s@$ _pure_1@3@00)
    (=
      (m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$ s@$ _pure_1@3@00)
      (ite
        (not (<= _pure_1@3@00 0))
        (+
          (m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$%limited ($Snap.combine
            $Snap.unit
            $Snap.unit) (- _pure_1@3@00 1))
          _pure_1@3@00)
        0)))
  :pattern ((m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$ s@$ _pure_1@3@00))
  :qid |quant-u-42|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 Int)) (!
  (=>
    (m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$%precondition s@$ _pure_1@3@00)
    (ite
      (not (<= _pure_1@3@00 0))
      (m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$%precondition ($Snap.combine
        $Snap.unit
        $Snap.unit) (- _pure_1@3@00 1))
      true))
  :pattern ((m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$ s@$ _pure_1@3@00))
  :qid |quant-u-43|)))
(assert (forall ((s@$ $Snap) (_pure_1@5@00 Int)) (!
  (=
    (m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@5@00)
    (m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$ s@$ _pure_1@5@00))
  :pattern ((m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$ s@$ _pure_1@5@00))
  :qid |quant-u-34|)))
(assert (forall ((s@$ $Snap) (_pure_1@5@00 Int)) (!
  (m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$%stateless _pure_1@5@00)
  :pattern ((m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@5@00))
  :qid |quant-u-35|)))
(assert (forall ((s@$ $Snap) (_pure_1@5@00 Int)) (!
  (let ((result@6@00 (m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@5@00))) (=>
    (m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$%precondition s@$ _pure_1@5@00)
    (and
      (= result@6@00 (div (* _pure_1@5@00 (+ _pure_1@5@00 1)) 2))
      (=
        result@6@00
        (mirror$m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$__$TY$__$int$$$int$<Int> _pure_1@5@00)))))
  :pattern ((m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@5@00))
  :qid |quant-u-44|)))
(assert (forall ((s@$ $Snap) (_pure_1@5@00 Int)) (!
  (let ((result@6@00 (m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@5@00))) true)
  :pattern ((m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@5@00))
  :qid |quant-u-45|)))
(assert (forall ((s@$ $Snap) (_pure_1@5@00 Int)) (!
  (let ((result@6@00 (m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@5@00))) true)
  :pattern ((m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@5@00))
  :qid |quant-u-46|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- m_fail_pc$$main$opensqu$0$closesqu$ ----------
(declare-const _0@0@01 $Ref)
(declare-const _0@1@01 $Ref)
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
; var __t0: Bool
(declare-const __t0@2@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@3@01 $Snap)
(assert (= $t@3@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@5@01 $Snap)
(assert (= $t@5@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$(-1) == 0 &&
;   m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$(-1) == 0
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01))))
(assert (= ($Snap.first $t@6@01) $Snap.unit))
; [eval] m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$(-1) == 0
; [eval] m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$(-1)
; [eval] -1
(set-option :timeout 0)
(push) ; 3
(assert (m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  $Snap.unit) (- 0 1)))
(pop) ; 3
; Joined path conditions
(assert (m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  $Snap.unit) (- 0 1)))
(assert (=
  (m_fail_pc$$sum1$opensqu$0$closesqu$__$TY$__$int$$$int$ ($Snap.combine
    $Snap.unit
    $Snap.unit) (- 0 1))
  0))
(assert (= ($Snap.second $t@6@01) $Snap.unit))
; [eval] m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$(-1) == 0
; [eval] m_fail_pc$$sum2$opensqu$0$closesqu$__$TY$__$int$$$int$(-1)
; [eval] -1
(push) ; 3
; [eval] _pure_1 >= 0
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] _pure_1 >= 0
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] _pure_1 >= 0
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] _pure_1 >= 0
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- builtin$havoc_int ----------
(declare-const ret@7@01 Int)
(declare-const ret@8@01 Int)
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
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- builtin$havoc_ref ----------
(declare-const ret@9@01 $Ref)
(declare-const ret@10@01 $Ref)
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
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- builtin$havoc_bool ----------
(declare-const ret@11@01 Bool)
(declare-const ret@12@01 Bool)
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
; inhale false
(pop) ; 2
(pop) ; 1
