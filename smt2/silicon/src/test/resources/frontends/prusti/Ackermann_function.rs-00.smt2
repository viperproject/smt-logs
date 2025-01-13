(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 12:24:41
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
(declare-fun mirror$m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$__$TY$__$int$$$int$$$int$<Int> (Int Int) Int)
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
(declare-fun m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap Int Int) Int)
(declare-fun m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited ($Snap Int Int) Int)
(declare-fun m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%stateless (Int Int) Bool)
(declare-fun m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap Int Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun DeadBorrowToken$%trigger ($Snap Int) Bool)
(declare-fun bool%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_10$3$2268015934926044161%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_11$3$9568486731263008501%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_12$3$9568486731263008501%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_13$3$2268015934926044161%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_14$5$6439304244919222146%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_15$3$4923916023205180932%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_16$3$9568486731263008501%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_17$3$2268015934926044161%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_18$5$6439304244919222146%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_19$3$4923916023205180932%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_9$3$9568486731263008501%trigger ($Snap $Ref) Bool)
(declare-fun isize%trigger ($Snap $Ref) Bool)
(declare-fun never%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_10$3$2268015934926044161%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_11$3$9568486731263008501%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_12$3$9568486731263008501%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_13$3$2268015934926044161%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_14$5$6439304244919222146%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_15$3$4923916023205180932%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_16$3$9568486731263008501%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_17$3$2268015934926044161%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_18$5$6439304244919222146%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_19$3$4923916023205180932%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_9$3$9568486731263008501%trigger ($Snap $Ref) Bool)
(declare-fun ref$isize%trigger ($Snap $Ref) Bool)
(declare-fun ref$str%trigger ($Snap $Ref) Bool)
(declare-fun ref$tuple2$isize$isize%trigger ($Snap $Ref) Bool)
(declare-fun ref$tuple3$ref$str$u32$u32%trigger ($Snap $Ref) Bool)
(declare-fun str%trigger ($Snap $Ref) Bool)
(declare-fun tuple0$%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$isize$bool%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$isize$isize%trigger ($Snap $Ref) Bool)
(declare-fun tuple3$ref$str$u32$u32%trigger ($Snap $Ref) Bool)
(declare-fun u32%trigger ($Snap $Ref) Bool)
(declare-fun u8%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION builtin$unreach_bool__$TY$__$bool$----------
(declare-fun result@0@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert false)
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=
    (builtin$unreach_bool__$TY$__$bool$%limited s@$)
    (builtin$unreach_bool__$TY$__$bool$ s@$))
  :pattern ((builtin$unreach_bool__$TY$__$bool$ s@$))
  :qid |quant-u-661|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$unreach_bool__$TY$__$bool$%stateless  Bool)
  :pattern ((builtin$unreach_bool__$TY$__$bool$%limited s@$))
  :qid |quant-u-662|)))
; ---------- FUNCTION builtin$unreach_int__$TY$__$int$----------
(declare-fun result@1@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert false)
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=
    (builtin$unreach_int__$TY$__$int$%limited s@$)
    (builtin$unreach_int__$TY$__$int$ s@$))
  :pattern ((builtin$unreach_int__$TY$__$int$ s@$))
  :qid |quant-u-663|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$unreach_int__$TY$__$int$%stateless  Bool)
  :pattern ((builtin$unreach_int__$TY$__$int$%limited s@$))
  :qid |quant-u-664|)))
; ---------- FUNCTION read$----------
(declare-fun result@2@00 () $Perm)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@6@00 $Snap)
(assert (= $t@6@00 ($Snap.combine ($Snap.first $t@6@00) ($Snap.second $t@6@00))))
(assert (= ($Snap.first $t@6@00) $Snap.unit))
; [eval] none < result
(assert (< $Perm.No result@2@00))
(assert (= ($Snap.second $t@6@00) $Snap.unit))
; [eval] result < write
(assert (< result@2@00 $Perm.Write))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (read$%limited s@$) (read$ s@$))
  :pattern ((read$ s@$))
  :qid |quant-u-665|)))
(assert (forall ((s@$ $Snap)) (!
  (as read$%stateless  Bool)
  :pattern ((read$%limited s@$))
  :qid |quant-u-666|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@2@00 (read$%limited s@$))) (=>
    (read$%precondition s@$)
    (and (< $Perm.No result@2@00) (< result@2@00 $Perm.Write))))
  :pattern ((read$%limited s@$))
  :qid |quant-u-669|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@2@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-670|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@2@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-671|)))
; ---------- FUNCTION m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$----------
(declare-fun _pure_1@3@00 () Int)
(declare-fun _pure_2@4@00 () Int)
(declare-fun result@5@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
; [eval] 0 <= _pure_1
(assert (<= 0 _pure_1@3@00))
(assert (= ($Snap.second ($Snap.second s@$)) $Snap.unit))
; [eval] 0 <= _pure_2
(assert (<= 0 _pure_2@4@00))
(declare-const $t@7@00 $Snap)
(assert (= $t@7@00 ($Snap.combine ($Snap.first $t@7@00) ($Snap.second $t@7@00))))
(assert (= ($Snap.first $t@7@00) $Snap.unit))
; [eval] result >= 0
(assert (>= result@5@00 0))
(assert (= ($Snap.second $t@7@00) $Snap.unit))
; [eval] result == mirror$m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$__$TY$__$int$$$int$$$int$(_pure_1, _pure_2)
; [eval] mirror$m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$__$TY$__$int$$$int$$$int$(_pure_1, _pure_2)
(assert (=
  result@5@00
  (mirror$m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$__$TY$__$int$$$int$$$int$<Int> _pure_1@3@00 _pure_2@4@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@3@00 Int) (_pure_2@4@00 Int)) (!
  (=
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00)
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ s@$ _pure_1@3@00 _pure_2@4@00))
  :pattern ((m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ s@$ _pure_1@3@00 _pure_2@4@00))
  :qid |quant-u-667|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 Int) (_pure_2@4@00 Int)) (!
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%stateless _pure_1@3@00 _pure_2@4@00)
  :pattern ((m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))
  :qid |quant-u-668|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 Int) (_pure_2@4@00 Int)) (!
  (let ((result@5@00 (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))) (=>
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition s@$ _pure_1@3@00 _pure_2@4@00)
    (and
      (>= result@5@00 0)
      (=
        result@5@00
        (mirror$m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$__$TY$__$int$$$int$$$int$<Int> _pure_1@3@00 _pure_2@4@00)))))
  :pattern ((m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))
  :qid |quant-u-672|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 Int) (_pure_2@4@00 Int)) (!
  (let ((result@5@00 (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))) true)
  :pattern ((m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))
  :qid |quant-u-673|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 Int) (_pure_2@4@00 Int)) (!
  (let ((result@5@00 (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))) true)
  :pattern ((m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))
  :qid |quant-u-674|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
(assert (<= 0 _pure_1@3@00))
(assert (= ($Snap.second ($Snap.second s@$)) $Snap.unit))
(assert (<= 0 _pure_2@4@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (_pure_1 != 0 ? (_pure_2 != 0 ? m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(_pure_1 - 1, m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(_pure_1, _pure_2 - 1)) : m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(_pure_1 - 1, 1)) : _pure_2 + 1)
; [eval] _pure_1 != 0
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (= _pure_1@3@00 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= _pure_1@3@00 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | _pure_1@3@00 != 0 | live]
; [else-branch: 0 | _pure_1@3@00 == 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | _pure_1@3@00 != 0]
(assert (not (= _pure_1@3@00 0)))
; [eval] (_pure_2 != 0 ? m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(_pure_1 - 1, m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(_pure_1, _pure_2 - 1)) : m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(_pure_1 - 1, 1))
; [eval] _pure_2 != 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (= _pure_2@4@00 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= _pure_2@4@00 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | _pure_2@4@00 != 0 | live]
; [else-branch: 1 | _pure_2@4@00 == 0 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 1 | _pure_2@4@00 != 0]
(assert (not (= _pure_2@4@00 0)))
; [eval] m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(_pure_1 - 1, m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(_pure_1, _pure_2 - 1))
; [eval] _pure_1 - 1
; [eval] m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(_pure_1, _pure_2 - 1)
; [eval] _pure_2 - 1
(push) ; 6
; [eval] 0 <= _pure_1
; [eval] 0 <= _pure_2
(push) ; 7
(assert (not (<= 0 (- _pure_2@4@00 1))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- _pure_2@4@00 1)))
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) _pure_1@3@00 (- _pure_2@4@00 1)))
(pop) ; 6
; Joined path conditions
(assert (and
  (<= 0 (- _pure_2@4@00 1))
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) _pure_1@3@00 (- _pure_2@4@00 1))))
(push) ; 6
; [eval] 0 <= _pure_1
(push) ; 7
(assert (not (<= 0 (- _pure_1@3@00 1))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- _pure_1@3@00 1)))
; [eval] 0 <= _pure_2
(push) ; 7
(assert (not (<=
  0
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) _pure_1@3@00 (- _pure_2@4@00 1)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<=
  0
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) _pure_1@3@00 (- _pure_2@4@00 1))))
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) (- _pure_1@3@00 1) (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) _pure_1@3@00 (- _pure_2@4@00 1))))
(pop) ; 6
; Joined path conditions
(assert (and
  (<= 0 (- _pure_1@3@00 1))
  (<=
    0
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) _pure_1@3@00 (- _pure_2@4@00 1)))
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) (- _pure_1@3@00 1) (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) _pure_1@3@00 (- _pure_2@4@00 1)))))
(pop) ; 5
(push) ; 5
; [else-branch: 1 | _pure_2@4@00 == 0]
(assert (= _pure_2@4@00 0))
; [eval] m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(_pure_1 - 1, 1)
; [eval] _pure_1 - 1
(push) ; 6
; [eval] 0 <= _pure_1
(push) ; 7
(assert (not (<= 0 (- _pure_1@3@00 1))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- _pure_1@3@00 1)))
; [eval] 0 <= _pure_2
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) (- _pure_1@3@00 1) 1))
(pop) ; 6
; Joined path conditions
(assert (and
  (<= 0 (- _pure_1@3@00 1))
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) (- _pure_1@3@00 1) 1)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (not (= _pure_2@4@00 0))
  (and
    (not (= _pure_2@4@00 0))
    (<= 0 (- _pure_2@4@00 1))
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) _pure_1@3@00 (- _pure_2@4@00 1))
    (<= 0 (- _pure_1@3@00 1))
    (<=
      0
      (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) _pure_1@3@00 (- _pure_2@4@00 1)))
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) (- _pure_1@3@00 1) (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) _pure_1@3@00 (- _pure_2@4@00 1))))))
; Joined path conditions
(assert (=>
  (= _pure_2@4@00 0)
  (and
    (= _pure_2@4@00 0)
    (<= 0 (- _pure_1@3@00 1))
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) (- _pure_1@3@00 1) 1))))
(assert (or (= _pure_2@4@00 0) (not (= _pure_2@4@00 0))))
(pop) ; 3
(push) ; 3
; [else-branch: 0 | _pure_1@3@00 == 0]
(assert (= _pure_1@3@00 0))
; [eval] _pure_2 + 1
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (=>
  (not (= _pure_1@3@00 0))
  (and
    (not (= _pure_1@3@00 0))
    (=>
      (not (= _pure_2@4@00 0))
      (and
        (not (= _pure_2@4@00 0))
        (<= 0 (- _pure_2@4@00 1))
        (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) _pure_1@3@00 (- _pure_2@4@00 1))
        (<= 0 (- _pure_1@3@00 1))
        (<=
          0
          (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit $Snap.unit)) _pure_1@3@00 (-
            _pure_2@4@00
            1)))
        (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) (- _pure_1@3@00 1) (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) _pure_1@3@00 (- _pure_2@4@00 1)))))
    (=>
      (= _pure_2@4@00 0)
      (and
        (= _pure_2@4@00 0)
        (<= 0 (- _pure_1@3@00 1))
        (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) (- _pure_1@3@00 1) 1)))
    (or (= _pure_2@4@00 0) (not (= _pure_2@4@00 0))))))
; Joined path conditions
(assert (or (= _pure_1@3@00 0) (not (= _pure_1@3@00 0))))
(assert (=
  result@5@00
  (ite
    (not (= _pure_1@3@00 0))
    (ite
      (not (= _pure_2@4@00 0))
      (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) (- _pure_1@3@00 1) (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) _pure_1@3@00 (- _pure_2@4@00 1)))
      (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) (- _pure_1@3@00 1) 1))
    (+ _pure_2@4@00 1))))
; [eval] result >= 0
(push) ; 2
(assert (not (>= result@5@00 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (>= result@5@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@3@00 Int) (_pure_2@4@00 Int)) (!
  (=>
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition s@$ _pure_1@3@00 _pure_2@4@00)
    (=
      (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ s@$ _pure_1@3@00 _pure_2@4@00)
      (ite
        (not (= _pure_1@3@00 0))
        (ite
          (not (= _pure_2@4@00 0))
          (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit $Snap.unit)) (- _pure_1@3@00 1) (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit $Snap.unit)) _pure_1@3@00 (-
            _pure_2@4@00
            1)))
          (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit $Snap.unit)) (- _pure_1@3@00 1) 1))
        (+ _pure_2@4@00 1))))
  :pattern ((m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ s@$ _pure_1@3@00 _pure_2@4@00))
  :qid |quant-u-675|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 Int) (_pure_2@4@00 Int)) (!
  (=>
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition s@$ _pure_1@3@00 _pure_2@4@00)
    (ite
      (not (= _pure_1@3@00 0))
      (ite
        (not (= _pure_2@4@00 0))
        (and
          (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit $Snap.unit)) _pure_1@3@00 (-
            _pure_2@4@00
            1))
          (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit $Snap.unit)) (- _pure_1@3@00 1) (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit $Snap.unit)) _pure_1@3@00 (-
            _pure_2@4@00
            1))))
        (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) (- _pure_1@3@00 1) 1))
      true))
  :pattern ((m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ s@$ _pure_1@3@00 _pure_2@4@00))
  :qid |quant-u-676|)))
; ---------- DeadBorrowToken$ ----------
(declare-const borrow@8@00 Int)
; ---------- bool ----------
(declare-const self@9@00 $Ref)
(push) ; 1
(declare-const $t@10@00 Bool)
(assert (not (= self@9@00 $Ref.null)))
(pop) ; 1
; ---------- closure$0_1_10$3$2268015934926044161 ----------
(declare-const self@11@00 $Ref)
; ---------- closure$0_1_11$3$9568486731263008501 ----------
(declare-const self@12@00 $Ref)
; ---------- closure$0_1_12$3$9568486731263008501 ----------
(declare-const self@13@00 $Ref)
; ---------- closure$0_1_13$3$2268015934926044161 ----------
(declare-const self@14@00 $Ref)
; ---------- closure$0_1_14$5$6439304244919222146 ----------
(declare-const self@15@00 $Ref)
; ---------- closure$0_1_15$3$4923916023205180932 ----------
(declare-const self@16@00 $Ref)
; ---------- closure$0_1_16$3$9568486731263008501 ----------
(declare-const self@17@00 $Ref)
; ---------- closure$0_1_17$3$2268015934926044161 ----------
(declare-const self@18@00 $Ref)
; ---------- closure$0_1_18$5$6439304244919222146 ----------
(declare-const self@19@00 $Ref)
; ---------- closure$0_1_19$3$4923916023205180932 ----------
(declare-const self@20@00 $Ref)
; ---------- closure$0_1_9$3$9568486731263008501 ----------
(declare-const self@21@00 $Ref)
; ---------- isize ----------
(declare-const self@22@00 $Ref)
(push) ; 1
(declare-const $t@23@00 Int)
(assert (not (= self@22@00 $Ref.null)))
(pop) ; 1
; ---------- never ----------
(declare-const self@24@00 $Ref)
; ---------- ref$closure$0_1_10$3$2268015934926044161 ----------
(declare-const self@25@00 $Ref)
(push) ; 1
(declare-const $t@26@00 $Snap)
(assert (= $t@26@00 ($Snap.combine ($Snap.first $t@26@00) ($Snap.second $t@26@00))))
(assert (not (= self@25@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_11$3$9568486731263008501 ----------
(declare-const self@27@00 $Ref)
(push) ; 1
(declare-const $t@28@00 $Snap)
(assert (= $t@28@00 ($Snap.combine ($Snap.first $t@28@00) ($Snap.second $t@28@00))))
(assert (not (= self@27@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_12$3$9568486731263008501 ----------
(declare-const self@29@00 $Ref)
(push) ; 1
(declare-const $t@30@00 $Snap)
(assert (= $t@30@00 ($Snap.combine ($Snap.first $t@30@00) ($Snap.second $t@30@00))))
(assert (not (= self@29@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_13$3$2268015934926044161 ----------
(declare-const self@31@00 $Ref)
(push) ; 1
(declare-const $t@32@00 $Snap)
(assert (= $t@32@00 ($Snap.combine ($Snap.first $t@32@00) ($Snap.second $t@32@00))))
(assert (not (= self@31@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_14$5$6439304244919222146 ----------
(declare-const self@33@00 $Ref)
(push) ; 1
(declare-const $t@34@00 $Snap)
(assert (= $t@34@00 ($Snap.combine ($Snap.first $t@34@00) ($Snap.second $t@34@00))))
(assert (not (= self@33@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_15$3$4923916023205180932 ----------
(declare-const self@35@00 $Ref)
(push) ; 1
(declare-const $t@36@00 $Snap)
(assert (= $t@36@00 ($Snap.combine ($Snap.first $t@36@00) ($Snap.second $t@36@00))))
(assert (not (= self@35@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_16$3$9568486731263008501 ----------
(declare-const self@37@00 $Ref)
(push) ; 1
(declare-const $t@38@00 $Snap)
(assert (= $t@38@00 ($Snap.combine ($Snap.first $t@38@00) ($Snap.second $t@38@00))))
(assert (not (= self@37@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_17$3$2268015934926044161 ----------
(declare-const self@39@00 $Ref)
(push) ; 1
(declare-const $t@40@00 $Snap)
(assert (= $t@40@00 ($Snap.combine ($Snap.first $t@40@00) ($Snap.second $t@40@00))))
(assert (not (= self@39@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_18$5$6439304244919222146 ----------
(declare-const self@41@00 $Ref)
(push) ; 1
(declare-const $t@42@00 $Snap)
(assert (= $t@42@00 ($Snap.combine ($Snap.first $t@42@00) ($Snap.second $t@42@00))))
(assert (not (= self@41@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_19$3$4923916023205180932 ----------
(declare-const self@43@00 $Ref)
(push) ; 1
(declare-const $t@44@00 $Snap)
(assert (= $t@44@00 ($Snap.combine ($Snap.first $t@44@00) ($Snap.second $t@44@00))))
(assert (not (= self@43@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_9$3$9568486731263008501 ----------
(declare-const self@45@00 $Ref)
(push) ; 1
(declare-const $t@46@00 $Snap)
(assert (= $t@46@00 ($Snap.combine ($Snap.first $t@46@00) ($Snap.second $t@46@00))))
(assert (not (= self@45@00 $Ref.null)))
(pop) ; 1
; ---------- ref$isize ----------
(declare-const self@47@00 $Ref)
(push) ; 1
(declare-const $t@48@00 $Snap)
(assert (= $t@48@00 ($Snap.combine ($Snap.first $t@48@00) ($Snap.second $t@48@00))))
(assert (not (= self@47@00 $Ref.null)))
(pop) ; 1
; ---------- ref$str ----------
(declare-const self@49@00 $Ref)
(push) ; 1
(declare-const $t@50@00 $Snap)
(assert (= $t@50@00 ($Snap.combine ($Snap.first $t@50@00) ($Snap.second $t@50@00))))
(assert (not (= self@49@00 $Ref.null)))
(pop) ; 1
; ---------- ref$tuple2$isize$isize ----------
(declare-const self@51@00 $Ref)
(push) ; 1
(declare-const $t@52@00 $Snap)
(assert (= $t@52@00 ($Snap.combine ($Snap.first $t@52@00) ($Snap.second $t@52@00))))
(assert (not (= self@51@00 $Ref.null)))
(pop) ; 1
; ---------- ref$tuple3$ref$str$u32$u32 ----------
(declare-const self@53@00 $Ref)
(push) ; 1
(declare-const $t@54@00 $Snap)
(assert (= $t@54@00 ($Snap.combine ($Snap.first $t@54@00) ($Snap.second $t@54@00))))
(assert (not (= self@53@00 $Ref.null)))
(pop) ; 1
; ---------- str ----------
(declare-const self@55@00 $Ref)
; ---------- tuple0$ ----------
(declare-const self@56@00 $Ref)
(push) ; 1
(declare-const $t@57@00 $Snap)
(assert (= $t@57@00 $Snap.unit))
(pop) ; 1
; ---------- tuple2$isize$bool ----------
(declare-const self@58@00 $Ref)
(push) ; 1
(declare-const $t@59@00 $Snap)
(assert (= $t@59@00 ($Snap.combine ($Snap.first $t@59@00) ($Snap.second $t@59@00))))
(assert (not (= self@58@00 $Ref.null)))
(assert (=
  ($Snap.second $t@59@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@59@00))
    ($Snap.second ($Snap.second $t@59@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@59@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@59@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@59@00))))))
(pop) ; 1
; ---------- tuple2$isize$isize ----------
(declare-const self@60@00 $Ref)
(push) ; 1
(declare-const $t@61@00 $Snap)
(assert (= $t@61@00 ($Snap.combine ($Snap.first $t@61@00) ($Snap.second $t@61@00))))
(assert (not (= self@60@00 $Ref.null)))
(assert (=
  ($Snap.second $t@61@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@61@00))
    ($Snap.second ($Snap.second $t@61@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@61@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@61@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@61@00))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@61@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@61@00)))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- tuple3$ref$str$u32$u32 ----------
(declare-const self@62@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@63@00 $Snap)
(assert (= $t@63@00 ($Snap.combine ($Snap.first $t@63@00) ($Snap.second $t@63@00))))
(assert (not (= self@62@00 $Ref.null)))
(assert (=
  ($Snap.second $t@63@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@63@00))
    ($Snap.second ($Snap.second $t@63@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@63@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@63@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@63@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@63@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@63@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@00)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@00))))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@63@00))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@00)))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- u32 ----------
(declare-const self@64@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@65@00 $Snap)
(assert (= $t@65@00 ($Snap.combine ($Snap.first $t@65@00) ($Snap.second $t@65@00))))
(assert (not (= self@64@00 $Ref.null)))
(assert (= ($Snap.second $t@65@00) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@65@00))))
(pop) ; 1
; ---------- u8 ----------
(declare-const self@66@00 $Ref)
(push) ; 1
(declare-const $t@67@00 $Snap)
(assert (= $t@67@00 ($Snap.combine ($Snap.first $t@67@00) ($Snap.second $t@67@00))))
(assert (not (= self@66@00 $Ref.null)))
(assert (= ($Snap.second $t@67@00) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@67@00))))
(pop) ; 1
