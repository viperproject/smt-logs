(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:24:29
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
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
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
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- m_Ackermann_function$$ack1$opensqu$0$closesqu$ ----------
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
; var __t1: Bool
(declare-const __t1@3@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@4@01 Bool)
; [exec]
; var __t3: Bool
(declare-const __t3@5@01 Bool)
; [exec]
; var __t4: Bool
(declare-const __t4@6@01 Bool)
; [exec]
; var __t5: Bool
(declare-const __t5@7@01 Bool)
; [exec]
; var __t6: Bool
(declare-const __t6@8@01 Bool)
; [exec]
; var __t7: Bool
(declare-const __t7@9@01 Bool)
; [exec]
; var __t8: Bool
(declare-const __t8@10@01 Bool)
; [exec]
; var __t9: Bool
(declare-const __t9@11@01 Bool)
; [exec]
; var __t10: Bool
(declare-const __t10@12@01 Bool)
; [exec]
; var __t11: Bool
(declare-const __t11@13@01 Bool)
; [exec]
; var __t12: Bool
(declare-const __t12@14@01 Bool)
; [exec]
; var __t13: Bool
(declare-const __t13@15@01 Bool)
; [exec]
; var __t14: Bool
(declare-const __t14@16@01 Bool)
; [exec]
; var __t15: Bool
(declare-const __t15@17@01 Bool)
; [exec]
; var __t16: Bool
(declare-const __t16@18@01 Bool)
; [exec]
; var __t17: Bool
(declare-const __t17@19@01 Bool)
; [exec]
; var __t18: Bool
(declare-const __t18@20@01 Bool)
; [exec]
; var __t19: Bool
(declare-const __t19@21@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@22@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@23@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@24@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@25@01 Int)
; [exec]
; var _5: Int
(declare-const _5@26@01 Int)
; [exec]
; var _6: Ref
(declare-const _6@27@01 $Ref)
; [exec]
; var _7: Ref
(declare-const _7@28@01 $Ref)
; [exec]
; var _8: Int
(declare-const _8@29@01 Int)
; [exec]
; var _9: Ref
(declare-const _9@30@01 $Ref)
; [exec]
; var _10: Int
(declare-const _10@31@01 Int)
; [exec]
; var _11: Ref
(declare-const _11@32@01 $Ref)
; [exec]
; var _12: Ref
(declare-const _12@33@01 $Ref)
; [exec]
; var _13: Int
(declare-const _13@34@01 Int)
; [exec]
; var _14: Ref
(declare-const _14@35@01 $Ref)
; [exec]
; var _15: Ref
(declare-const _15@36@01 $Ref)
; [exec]
; var _16: Ref
(declare-const _16@37@01 $Ref)
; [exec]
; var _17: Ref
(declare-const _17@38@01 $Ref)
; [exec]
; var _18: Int
(declare-const _18@39@01 Int)
; [exec]
; var _19: Ref
(declare-const _19@40@01 $Ref)
; [exec]
; var _t21: Ref
(declare-const _t21@41@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; __t3 := false
; [exec]
; __t4 := false
; [exec]
; __t5 := false
; [exec]
; __t6 := false
; [exec]
; __t7 := false
; [exec]
; __t8 := false
; [exec]
; __t9 := false
; [exec]
; __t10 := false
; [exec]
; __t11 := false
; [exec]
; __t12 := false
; [exec]
; __t13 := false
; [exec]
; inhale acc(isize(_1), write) && acc(isize(_2), write)
(declare-const $t@42@01 $Snap)
(assert (= $t@42@01 ($Snap.combine ($Snap.first $t@42@01) ($Snap.second $t@42@01))))
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@22@01 _2@23@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@43@01 $Snap)
(assert (= $t@43@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@44@01 $Snap)
(assert (= $t@44@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (unfolding acc(isize(_2), write) in
;     (unfolding acc(isize(_1), write) in 0 <= _1.val_int && 0 <= _2.val_int))
(declare-const $t@45@01 $Snap)
(assert (= $t@45@01 $Snap.unit))
; [eval] (unfolding acc(isize(_2), write) in (unfolding acc(isize(_1), write) in 0 <= _1.val_int && 0 <= _2.val_int))
(set-option :timeout 0)
(push) ; 3
(assert (isize%trigger ($Snap.second $t@42@01) _2@23@01))
(assert (not (= _2@23@01 $Ref.null)))
; [eval] (unfolding acc(isize(_1), write) in 0 <= _1.val_int && 0 <= _2.val_int)
(push) ; 4
(assert (isize%trigger ($Snap.first $t@42@01) _1@22@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@23@01 _1@22@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@22@01 $Ref.null)))
; [eval] 0 <= _1.val_int && 0 <= _2.val_int
; [eval] 0 <= _1.val_int
(set-option :timeout 0)
(push) ; 5
; [then-branch: 0 | !(0 <= First:($t@42@01)) | live]
; [else-branch: 0 | 0 <= First:($t@42@01) | live]
(push) ; 6
; [then-branch: 0 | !(0 <= First:($t@42@01))]
(assert (not (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@42@01)))))
(pop) ; 6
(push) ; 6
; [else-branch: 0 | 0 <= First:($t@42@01)]
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@42@01))))
; [eval] 0 <= _2.val_int
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@42@01)))
  (not (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@42@01))))))
(pop) ; 4
; Joined path conditions
(assert (and
  (isize%trigger ($Snap.first $t@42@01) _1@22@01)
  (not (= _1@22@01 $Ref.null))
  (or
    (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@42@01)))
    (not (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@42@01)))))))
(pop) ; 3
; Joined path conditions
(assert (and
  (isize%trigger ($Snap.second $t@42@01) _2@23@01)
  (not (= _2@23@01 $Ref.null))
  (isize%trigger ($Snap.first $t@42@01) _1@22@01)
  (not (= _1@22@01 $Ref.null))
  (or
    (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@42@01)))
    (not (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@42@01)))))))
(assert (and
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@42@01)))
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.second $t@42@01)))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label pre
; [exec]
; label bb0
; [exec]
; __t0 := true
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@46@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@47@01 $Snap)
(assert (= $t@47@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(isize(_1), write)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; _4 := _1.val_int
(declare-const _4@48@01 Int)
(assert (= _4@48@01 ($SortWrappers.$SnapToInt ($Snap.first $t@42@01))))
; [exec]
; label l0
; [exec]
; _3 := builtin$havoc_ref()
(declare-const ret@49@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_bool, write)
(declare-const $t@50@01 Bool)
(assert (not (= ret@49@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _3.val_bool := _4 == 0
; [eval] _4 == 0
(declare-const val_bool@51@01 Bool)
(assert (= val_bool@51@01 (= _4@48@01 0)))
; [exec]
; __t14 := _3.val_bool
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not val_bool@51@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not val_bool@51@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | val_bool@51@01 | live]
; [else-branch: 1 | !(val_bool@51@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | val_bool@51@01]
(assert val_bool@51@01)
; [exec]
; label l2
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; _5 := builtin$havoc_int()
(declare-const ret@52@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@53@01 $Snap)
(assert (= $t@53@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(isize(_2), write)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@22@01 _2@23@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; _5 := _2.val_int
(declare-const _5@54@01 Int)
(assert (= _5@54@01 ($SortWrappers.$SnapToInt ($Snap.second $t@42@01))))
; [exec]
; label l3
; [exec]
; _6 := builtin$havoc_ref()
(declare-const ret@55@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_6.tuple_0, write)
(declare-const $t@56@01 $Ref)
(assert (not (= ret@55@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_6.tuple_0.val_int, write)
(declare-const $t@57@01 Int)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@23@01 $t@56@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@22@01 $t@56@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= $t@56@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_6.tuple_1, write)
(declare-const $t@58@01 $Ref)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale acc(_6.tuple_1.val_bool, write)
(declare-const $t@59@01 Bool)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@49@01 $t@58@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= $t@58@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _6.tuple_0.val_int := _5 + 1
; [eval] _5 + 1
(declare-const val_int@60@01 Int)
(assert (= val_int@60@01 (+ _5@54@01 1)))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@23@01 $t@56@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@22@01 $t@56@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; _6.tuple_1.val_bool := false
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@49@01 $t@58@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; __t15 := _6.tuple_1.val_bool
; [exec]
; assert !__t15
; [eval] !__t15
; [exec]
; label bb4
; [exec]
; __t2 := true
; [exec]
; _0 := _6.tuple_0
; [exec]
; label l4
; [exec]
; label l23
; [exec]
; label bb14
; [exec]
; __t13 := true
; [exec]
; label return
; [exec]
; fold acc(isize(_0), write)
(assert (isize%trigger ($SortWrappers.IntTo$Snap val_int@60@01) $t@56@01))
; [exec]
; assert (unfolding acc(isize(_0), write) in _0.val_int) ==
;   m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[pre]((unfolding acc(isize(_1), write) in
;     _1.val_int)), old[pre]((unfolding acc(isize(_2), write) in _2.val_int))) &&
;   (unfolding acc(isize(_0), write) in _0.val_int) >= 0
; [eval] (unfolding acc(isize(_0), write) in _0.val_int) == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[pre]((unfolding acc(isize(_1), write) in _1.val_int)), old[pre]((unfolding acc(isize(_2), write) in _2.val_int)))
; [eval] (unfolding acc(isize(_0), write) in _0.val_int)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@23@01 $t@56@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@22@01 $t@56@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
; Joined path conditions
; [eval] m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[pre]((unfolding acc(isize(_1), write) in _1.val_int)), old[pre]((unfolding acc(isize(_2), write) in _2.val_int)))
; [eval] old[pre]((unfolding acc(isize(_1), write) in _1.val_int))
; [eval] (unfolding acc(isize(_1), write) in _1.val_int)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
; Joined path conditions
; [eval] old[pre]((unfolding acc(isize(_2), write) in _2.val_int))
; [eval] (unfolding acc(isize(_2), write) in _2.val_int)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
; [eval] 0 <= _pure_1
; [eval] 0 <= _pure_2
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@42@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@42@01))))
(pop) ; 4
; Joined path conditions
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@42@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@42@01))))
(push) ; 4
(assert (not (=
  val_int@60@01
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@42@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@42@01))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  val_int@60@01
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@42@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@42@01)))))
; [eval] (unfolding acc(isize(_0), write) in _0.val_int) >= 0
; [eval] (unfolding acc(isize(_0), write) in _0.val_int)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@23@01 $t@56@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@22@01 $t@56@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
; Joined path conditions
(set-option :timeout 0)
(push) ; 4
(assert (not (>= val_int@60@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (>= val_int@60@01 0))
; [exec]
; assert true
; [exec]
; exhale acc(isize(_0), write)
; [exec]
; label end_of_method
(pop) ; 3
(push) ; 3
; [else-branch: 1 | !(val_bool@51@01)]
(assert (not val_bool@51@01))
(pop) ; 3
; [eval] !__t14
(push) ; 3
(set-option :timeout 10)
(assert (not val_bool@51@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not val_bool@51@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | !(val_bool@51@01) | live]
; [else-branch: 2 | val_bool@51@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 2 | !(val_bool@51@01)]
(assert (not val_bool@51@01))
; [exec]
; label l1
; [exec]
; label bb3
; [exec]
; __t3 := true
; [exec]
; _8 := builtin$havoc_int()
(declare-const ret@61@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@62@01 $Snap)
(assert (= $t@62@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(isize(_2), write)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@22@01 _2@23@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; _8 := _2.val_int
(declare-const _8@63@01 Int)
(assert (= _8@63@01 ($SortWrappers.$SnapToInt ($Snap.second $t@42@01))))
; [exec]
; label l5
; [exec]
; _7 := builtin$havoc_ref()
(declare-const ret@64@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_7.val_bool, write)
(declare-const $t@65@01 Bool)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@49@01 ret@64@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@64@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _7.val_bool := _8 == 0
; [eval] _8 == 0
(declare-const val_bool@66@01 Bool)
(assert (= val_bool@66@01 (= _8@63@01 0)))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@49@01 ret@64@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; __t16 := _7.val_bool
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not val_bool@66@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not val_bool@66@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | val_bool@66@01 | live]
; [else-branch: 3 | !(val_bool@66@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 3 | val_bool@66@01]
(assert val_bool@66@01)
; [exec]
; label l7
; [exec]
; label bb5
; [exec]
; __t4 := true
; [exec]
; _10 := builtin$havoc_int()
(declare-const ret@67@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@68@01 $Snap)
(assert (= $t@68@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _10 := _1.val_int
(declare-const _10@69@01 Int)
(assert (= _10@69@01 ($SortWrappers.$SnapToInt ($Snap.first $t@42@01))))
; [exec]
; label l8
; [exec]
; _11 := builtin$havoc_ref()
(declare-const ret@70@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_11.tuple_0, write)
(declare-const $t@71@01 $Ref)
(assert (not (= ret@70@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_11.tuple_0.val_int, write)
(declare-const $t@72@01 Int)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@23@01 $t@71@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@22@01 $t@71@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= $t@71@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_11.tuple_1, write)
(declare-const $t@73@01 $Ref)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale acc(_11.tuple_1.val_bool, write)
(declare-const $t@74@01 Bool)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@64@01 $t@73@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@49@01 $t@73@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= $t@73@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _11.tuple_0.val_int := _10 - 1
; [eval] _10 - 1
(declare-const val_int@75@01 Int)
(assert (= val_int@75@01 (- _10@69@01 1)))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@23@01 $t@71@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@22@01 $t@71@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; _11.tuple_1.val_bool := false
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@64@01 $t@73@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@49@01 $t@73@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; __t17 := _11.tuple_1.val_bool
; [exec]
; assert !__t17
; [eval] !__t17
; [exec]
; label bb7
; [exec]
; __t5 := true
; [exec]
; _9 := _11.tuple_0
; [exec]
; label l9
; [exec]
; label l10
; [exec]
; _t21 := builtin$havoc_ref()
(declare-const ret@76@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(isize(_t21), write)
(declare-const $t@77@01 Int)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert 0 <= _9.val_int
; [eval] 0 <= _9.val_int
(set-option :timeout 0)
(push) ; 5
(assert (not (<= 0 val_int@75@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@75@01))
; [exec]
; fold acc(isize(_9), write)
(assert (isize%trigger ($SortWrappers.IntTo$Snap val_int@75@01) $t@71@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@76@01 $t@71@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert true
; [exec]
; exhale acc(isize(_9), write) && acc(isize(_t21), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@78@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@79@01 $Snap)
(assert (= $t@79@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(isize(_0), write)
(declare-const $t@80@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@81@01 $Snap)
(assert (= $t@81@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (unfolding acc(isize(_0), write) in
;     _0.val_int ==
;     m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l10](_9.val_int),
;     old[l10](1)) &&
;     _0.val_int >= 0)
(declare-const $t@82@01 $Snap)
(assert (= $t@82@01 $Snap.unit))
; [eval] (unfolding acc(isize(_0), write) in _0.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l10](_9.val_int), old[l10](1)) && _0.val_int >= 0)
(set-option :timeout 0)
(push) ; 5
(assert (isize%trigger ($SortWrappers.IntTo$Snap $t@80@01) ret@78@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@23@01 ret@78@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@22@01 ret@78@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@78@01 $Ref.null)))
; [eval] _0.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l10](_9.val_int), old[l10](1)) && _0.val_int >= 0
; [eval] _0.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l10](_9.val_int), old[l10](1))
; [eval] m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l10](_9.val_int), old[l10](1))
; [eval] old[l10](_9.val_int)
; [eval] old[l10](1)
(set-option :timeout 0)
(push) ; 6
; [eval] 0 <= _pure_1
; [eval] 0 <= _pure_2
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) val_int@75@01 1))
(pop) ; 6
; Joined path conditions
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) val_int@75@01 1))
(push) ; 6
; [then-branch: 4 | $t@80@01 != m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), val_int@75@01, 1) | live]
; [else-branch: 4 | $t@80@01 == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), val_int@75@01, 1) | live]
(push) ; 7
; [then-branch: 4 | $t@80@01 != m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), val_int@75@01, 1)]
(assert (not
  (=
    $t@80@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) val_int@75@01 1))))
(pop) ; 7
(push) ; 7
; [else-branch: 4 | $t@80@01 == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), val_int@75@01, 1)]
(assert (=
  $t@80@01
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) val_int@75@01 1)))
; [eval] _0.val_int >= 0
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    $t@80@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) val_int@75@01 1))
  (not
    (=
      $t@80@01
      (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) val_int@75@01 1)))))
(pop) ; 5
; Joined path conditions
(assert (and
  (isize%trigger ($SortWrappers.IntTo$Snap $t@80@01) ret@78@01)
  (not (= ret@78@01 $Ref.null))
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) val_int@75@01 1)
  (or
    (=
      $t@80@01
      (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) val_int@75@01 1))
    (not
      (=
        $t@80@01
        (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) val_int@75@01 1))))))
(assert (and
  (=
    $t@80@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) val_int@75@01 1))
  (>= $t@80@01 0)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l11
; [exec]
; label bb8
; [exec]
; __t6 := true
; [exec]
; label l21
; [exec]
; label bb13
; [exec]
; __t12 := true
; [exec]
; label l24
; [exec]
; unfold acc(isize(_0), write)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@23@01 ret@78@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@22@01 ret@78@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; label bb14
; [exec]
; __t13 := true
; [exec]
; label return
; [exec]
; fold acc(isize(_0), write)
; [exec]
; assert (unfolding acc(isize(_0), write) in _0.val_int) ==
;   m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[pre]((unfolding acc(isize(_1), write) in
;     _1.val_int)), old[pre]((unfolding acc(isize(_2), write) in _2.val_int))) &&
;   (unfolding acc(isize(_0), write) in _0.val_int) >= 0
; [eval] (unfolding acc(isize(_0), write) in _0.val_int) == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[pre]((unfolding acc(isize(_1), write) in _1.val_int)), old[pre]((unfolding acc(isize(_2), write) in _2.val_int)))
; [eval] (unfolding acc(isize(_0), write) in _0.val_int)
(set-option :timeout 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@23@01 ret@78@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@22@01 ret@78@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
; Joined path conditions
; [eval] m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[pre]((unfolding acc(isize(_1), write) in _1.val_int)), old[pre]((unfolding acc(isize(_2), write) in _2.val_int)))
; [eval] old[pre]((unfolding acc(isize(_1), write) in _1.val_int))
; [eval] (unfolding acc(isize(_1), write) in _1.val_int)
(set-option :timeout 0)
(push) ; 5
(pop) ; 5
; Joined path conditions
; [eval] old[pre]((unfolding acc(isize(_2), write) in _2.val_int))
; [eval] (unfolding acc(isize(_2), write) in _2.val_int)
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] 0 <= _pure_1
; [eval] 0 <= _pure_2
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@42@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@42@01))))
(pop) ; 5
; Joined path conditions
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@42@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@42@01))))
(push) ; 5
(assert (not (=
  $t@80@01
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@42@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@42@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  $t@80@01
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@42@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@42@01)))))
; [eval] (unfolding acc(isize(_0), write) in _0.val_int) >= 0
; [eval] (unfolding acc(isize(_0), write) in _0.val_int)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@23@01 ret@78@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@22@01 ret@78@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
; Joined path conditions
; [exec]
; assert true
; [exec]
; exhale acc(isize(_0), write)
; [exec]
; label end_of_method
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 3 | !(val_bool@66@01)]
(assert (not val_bool@66@01))
(pop) ; 4
; [eval] !__t16
(push) ; 4
(set-option :timeout 10)
(assert (not val_bool@66@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not val_bool@66@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | !(val_bool@66@01) | live]
; [else-branch: 5 | val_bool@66@01 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 5 | !(val_bool@66@01)]
(assert (not val_bool@66@01))
; [exec]
; label l6
; [exec]
; label bb6
; [exec]
; __t7 := true
; [exec]
; _13 := builtin$havoc_int()
(declare-const ret@83@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@84@01 $Snap)
(assert (= $t@84@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _13 := _1.val_int
(declare-const _13@85@01 Int)
(assert (= _13@85@01 ($SortWrappers.$SnapToInt ($Snap.first $t@42@01))))
; [exec]
; label l12
; [exec]
; _14 := builtin$havoc_ref()
(declare-const ret@86@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_14.tuple_0, write)
(declare-const $t@87@01 $Ref)
(assert (not (= ret@86@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_14.tuple_0.val_int, write)
(declare-const $t@88@01 Int)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@23@01 $t@87@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@22@01 $t@87@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= $t@87@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_14.tuple_1, write)
(declare-const $t@89@01 $Ref)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale acc(_14.tuple_1.val_bool, write)
(declare-const $t@90@01 Bool)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@64@01 $t@89@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@49@01 $t@89@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= $t@89@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _14.tuple_0.val_int := _13 - 1
; [eval] _13 - 1
(declare-const val_int@91@01 Int)
(assert (= val_int@91@01 (- _13@85@01 1)))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@23@01 $t@87@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@22@01 $t@87@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; _14.tuple_1.val_bool := false
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@64@01 $t@89@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@49@01 $t@89@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; __t18 := _14.tuple_1.val_bool
; [exec]
; assert !__t18
; [eval] !__t18
; [exec]
; label bb9
; [exec]
; __t8 := true
; [exec]
; _12 := _14.tuple_0
; [exec]
; label l13
; [exec]
; _16 := builtin$havoc_ref()
(declare-const ret@92@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_16.val_int, write)
(declare-const $t@93@01 Int)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= $t@87@01 ret@92@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@23@01 ret@92@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@22@01 ret@92@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@92@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _16.val_int := _1.val_int
(declare-const val_int@94@01 Int)
(assert (= val_int@94@01 ($SortWrappers.$SnapToInt ($Snap.first $t@42@01))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= $t@87@01 ret@92@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@23@01 ret@92@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@22@01 ret@92@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l14
; [exec]
; _18 := builtin$havoc_int()
(declare-const ret@95@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@96@01 $Snap)
(assert (= $t@96@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _18 := _2.val_int
(declare-const _18@97@01 Int)
(assert (= _18@97@01 ($SortWrappers.$SnapToInt ($Snap.second $t@42@01))))
; [exec]
; label l15
; [exec]
; _19 := builtin$havoc_ref()
(declare-const ret@98@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_19.tuple_0, write)
(declare-const $t@99@01 $Ref)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@86@01 ret@98@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@98@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_19.tuple_0.val_int, write)
(declare-const $t@100@01 Int)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@92@01 $t@99@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= $t@87@01 $t@99@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@23@01 $t@99@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@22@01 $t@99@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= $t@99@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_19.tuple_1, write)
(declare-const $t@101@01 $Ref)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@86@01 ret@98@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_19.tuple_1.val_bool, write)
(declare-const $t@102@01 Bool)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= $t@89@01 $t@101@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@64@01 $t@101@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@49@01 $t@101@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= $t@101@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _19.tuple_0.val_int := _18 - 1
; [eval] _18 - 1
(declare-const val_int@103@01 Int)
(assert (= val_int@103@01 (- _18@97@01 1)))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@92@01 $t@99@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= $t@87@01 $t@99@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@23@01 $t@99@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@22@01 $t@99@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; _19.tuple_1.val_bool := false
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= $t@89@01 $t@101@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@64@01 $t@101@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@49@01 $t@101@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; __t19 := _19.tuple_1.val_bool
; [exec]
; assert !__t19
; [eval] !__t19
; [exec]
; label bb10
; [exec]
; __t9 := true
; [exec]
; _17 := _19.tuple_0
; [exec]
; label l16
; [exec]
; label l17
; [exec]
; assert 0 <= _16.val_int && 0 <= _17.val_int
; [eval] 0 <= _16.val_int
(set-option :timeout 0)
(push) ; 5
(assert (not (<= 0 val_int@94@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@94@01))
; [eval] 0 <= _17.val_int
(push) ; 5
(assert (not (<= 0 val_int@103@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@103@01))
; [exec]
; fold acc(isize(_17), write)
(assert (isize%trigger ($SortWrappers.IntTo$Snap val_int@103@01) $t@99@01))
; [exec]
; fold acc(isize(_16), write)
(assert (isize%trigger ($SortWrappers.IntTo$Snap val_int@94@01) ret@92@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (= $t@99@01 ret@92@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert true
; [exec]
; exhale acc(isize(_16), write) && acc(isize(_17), write)
; [exec]
; _15 := builtin$havoc_ref()
(declare-const ret@104@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@105@01 $Snap)
(assert (= $t@105@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(isize(_15), write)
(declare-const $t@106@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@107@01 $Snap)
(assert (= $t@107@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (unfolding acc(isize(_15), write) in
;     _15.val_int ==
;     m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l17](_16.val_int),
;     old[l17](_17.val_int)) &&
;     _15.val_int >= 0)
(declare-const $t@108@01 $Snap)
(assert (= $t@108@01 $Snap.unit))
; [eval] (unfolding acc(isize(_15), write) in _15.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l17](_16.val_int), old[l17](_17.val_int)) && _15.val_int >= 0)
(set-option :timeout 0)
(push) ; 5
(assert (isize%trigger ($SortWrappers.IntTo$Snap $t@106@01) ret@104@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (= $t@87@01 ret@104@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@23@01 ret@104@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@22@01 ret@104@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@104@01 $Ref.null)))
; [eval] _15.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l17](_16.val_int), old[l17](_17.val_int)) && _15.val_int >= 0
; [eval] _15.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l17](_16.val_int), old[l17](_17.val_int))
; [eval] m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l17](_16.val_int), old[l17](_17.val_int))
; [eval] old[l17](_16.val_int)
; [eval] old[l17](_17.val_int)
(set-option :timeout 0)
(push) ; 6
; [eval] 0 <= _pure_1
; [eval] 0 <= _pure_2
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) val_int@94@01 val_int@103@01))
(pop) ; 6
; Joined path conditions
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) val_int@94@01 val_int@103@01))
(push) ; 6
; [then-branch: 6 | $t@106@01 != m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), val_int@94@01, val_int@103@01) | live]
; [else-branch: 6 | $t@106@01 == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), val_int@94@01, val_int@103@01) | live]
(push) ; 7
; [then-branch: 6 | $t@106@01 != m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), val_int@94@01, val_int@103@01)]
(assert (not
  (=
    $t@106@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) val_int@94@01 val_int@103@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 6 | $t@106@01 == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), val_int@94@01, val_int@103@01)]
(assert (=
  $t@106@01
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) val_int@94@01 val_int@103@01)))
; [eval] _15.val_int >= 0
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    $t@106@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) val_int@94@01 val_int@103@01))
  (not
    (=
      $t@106@01
      (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) val_int@94@01 val_int@103@01)))))
(pop) ; 5
; Joined path conditions
(assert (and
  (isize%trigger ($SortWrappers.IntTo$Snap $t@106@01) ret@104@01)
  (not (= ret@104@01 $Ref.null))
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) val_int@94@01 val_int@103@01)
  (or
    (=
      $t@106@01
      (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) val_int@94@01 val_int@103@01))
    (not
      (=
        $t@106@01
        (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) val_int@94@01 val_int@103@01))))))
(assert (and
  (=
    $t@106@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) val_int@94@01 val_int@103@01))
  (>= $t@106@01 0)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l18
; [exec]
; label bb11
; [exec]
; __t10 := true
; [exec]
; label l19
; [exec]
; unfold acc(isize(_15), write)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= $t@87@01 ret@104@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@23@01 ret@104@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@22@01 ret@104@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; assert 0 <= _12.val_int && 0 <= _15.val_int
; [eval] 0 <= _12.val_int
(set-option :timeout 0)
(push) ; 5
(assert (not (<= 0 val_int@91@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@91@01))
; [eval] 0 <= _15.val_int
(push) ; 5
(assert (not (<= 0 $t@106@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 $t@106@01))
; [exec]
; fold acc(isize(_15), write)
; [exec]
; fold acc(isize(_12), write)
(assert (isize%trigger ($SortWrappers.IntTo$Snap val_int@91@01) $t@87@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@104@01 $t@87@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert true
; [exec]
; exhale acc(isize(_12), write) && acc(isize(_15), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@109@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@110@01 $Snap)
(assert (= $t@110@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(isize(_0), write)
(declare-const $t@111@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@112@01 $Snap)
(assert (= $t@112@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (unfolding acc(isize(_0), write) in
;     _0.val_int ==
;     m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l19](_12.val_int),
;     old[l19]((unfolding acc(isize(_15), write) in _15.val_int))) &&
;     _0.val_int >= 0)
(declare-const $t@113@01 $Snap)
(assert (= $t@113@01 $Snap.unit))
; [eval] (unfolding acc(isize(_0), write) in _0.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l19](_12.val_int), old[l19]((unfolding acc(isize(_15), write) in _15.val_int))) && _0.val_int >= 0)
(set-option :timeout 0)
(push) ; 5
(assert (isize%trigger ($SortWrappers.IntTo$Snap $t@111@01) ret@109@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@23@01 ret@109@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@22@01 ret@109@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@109@01 $Ref.null)))
; [eval] _0.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l19](_12.val_int), old[l19]((unfolding acc(isize(_15), write) in _15.val_int))) && _0.val_int >= 0
; [eval] _0.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l19](_12.val_int), old[l19]((unfolding acc(isize(_15), write) in _15.val_int)))
; [eval] m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l19](_12.val_int), old[l19]((unfolding acc(isize(_15), write) in _15.val_int)))
; [eval] old[l19](_12.val_int)
; [eval] old[l19]((unfolding acc(isize(_15), write) in _15.val_int))
; [eval] (unfolding acc(isize(_15), write) in _15.val_int)
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (= $t@87@01 ret@104@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _2@23@01 ret@104@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _1@22@01 ret@104@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
; Joined path conditions
(set-option :timeout 0)
(push) ; 6
; [eval] 0 <= _pure_1
; [eval] 0 <= _pure_2
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) val_int@91@01 $t@106@01))
(pop) ; 6
; Joined path conditions
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) val_int@91@01 $t@106@01))
(push) ; 6
; [then-branch: 7 | $t@111@01 != m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), val_int@91@01, $t@106@01) | live]
; [else-branch: 7 | $t@111@01 == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), val_int@91@01, $t@106@01) | live]
(push) ; 7
; [then-branch: 7 | $t@111@01 != m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), val_int@91@01, $t@106@01)]
(assert (not
  (=
    $t@111@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) val_int@91@01 $t@106@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 7 | $t@111@01 == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), val_int@91@01, $t@106@01)]
(assert (=
  $t@111@01
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) val_int@91@01 $t@106@01)))
; [eval] _0.val_int >= 0
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    $t@111@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) val_int@91@01 $t@106@01))
  (not
    (=
      $t@111@01
      (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) val_int@91@01 $t@106@01)))))
(pop) ; 5
; Joined path conditions
(assert (and
  (isize%trigger ($SortWrappers.IntTo$Snap $t@111@01) ret@109@01)
  (not (= ret@109@01 $Ref.null))
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) val_int@91@01 $t@106@01)
  (or
    (=
      $t@111@01
      (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) val_int@91@01 $t@106@01))
    (not
      (=
        $t@111@01
        (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) val_int@91@01 $t@106@01))))))
(assert (and
  (=
    $t@111@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) val_int@91@01 $t@106@01))
  (>= $t@111@01 0)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l20
; [exec]
; label bb12
; [exec]
; __t11 := true
; [exec]
; label l22
; [exec]
; label bb13
; [exec]
; __t12 := true
; [exec]
; label l24
; [exec]
; unfold acc(isize(_0), write)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@23@01 ret@109@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@22@01 ret@109@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; label bb14
; [exec]
; __t13 := true
; [exec]
; label return
; [exec]
; fold acc(isize(_0), write)
; [exec]
; assert (unfolding acc(isize(_0), write) in _0.val_int) ==
;   m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[pre]((unfolding acc(isize(_1), write) in
;     _1.val_int)), old[pre]((unfolding acc(isize(_2), write) in _2.val_int))) &&
;   (unfolding acc(isize(_0), write) in _0.val_int) >= 0
; [eval] (unfolding acc(isize(_0), write) in _0.val_int) == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[pre]((unfolding acc(isize(_1), write) in _1.val_int)), old[pre]((unfolding acc(isize(_2), write) in _2.val_int)))
; [eval] (unfolding acc(isize(_0), write) in _0.val_int)
(set-option :timeout 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@23@01 ret@109@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@22@01 ret@109@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
; Joined path conditions
; [eval] m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[pre]((unfolding acc(isize(_1), write) in _1.val_int)), old[pre]((unfolding acc(isize(_2), write) in _2.val_int)))
; [eval] old[pre]((unfolding acc(isize(_1), write) in _1.val_int))
; [eval] (unfolding acc(isize(_1), write) in _1.val_int)
(set-option :timeout 0)
(push) ; 5
(pop) ; 5
; Joined path conditions
; [eval] old[pre]((unfolding acc(isize(_2), write) in _2.val_int))
; [eval] (unfolding acc(isize(_2), write) in _2.val_int)
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] 0 <= _pure_1
; [eval] 0 <= _pure_2
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@42@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@42@01))))
(pop) ; 5
; Joined path conditions
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@42@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@42@01))))
(push) ; 5
(assert (not (=
  $t@111@01
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@42@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@42@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  $t@111@01
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@42@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@42@01)))))
; [eval] (unfolding acc(isize(_0), write) in _0.val_int) >= 0
; [eval] (unfolding acc(isize(_0), write) in _0.val_int)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@23@01 ret@109@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@22@01 ret@109@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
; Joined path conditions
; [exec]
; assert true
; [exec]
; exhale acc(isize(_0), write)
; [exec]
; label end_of_method
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 5 | val_bool@66@01]
(assert val_bool@66@01)
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 2 | val_bool@51@01]
(assert val_bool@51@01)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- m_Ackermann_function$$ack2$opensqu$0$closesqu$ ----------
(declare-const _0@114@01 $Ref)
(declare-const _0@115@01 $Ref)
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
(declare-const __t0@116@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@117@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@118@01 Bool)
; [exec]
; var __t3: Bool
(declare-const __t3@119@01 Bool)
; [exec]
; var __t4: Bool
(declare-const __t4@120@01 Bool)
; [exec]
; var __t5: Bool
(declare-const __t5@121@01 Bool)
; [exec]
; var __t6: Bool
(declare-const __t6@122@01 Bool)
; [exec]
; var __t7: Bool
(declare-const __t7@123@01 Bool)
; [exec]
; var __t8: Bool
(declare-const __t8@124@01 Bool)
; [exec]
; var __t9: Bool
(declare-const __t9@125@01 Bool)
; [exec]
; var __t10: Bool
(declare-const __t10@126@01 Bool)
; [exec]
; var __t11: Bool
(declare-const __t11@127@01 Bool)
; [exec]
; var __t12: Bool
(declare-const __t12@128@01 Bool)
; [exec]
; var __t13: Bool
(declare-const __t13@129@01 Bool)
; [exec]
; var __t14: Bool
(declare-const __t14@130@01 Bool)
; [exec]
; var __t15: Bool
(declare-const __t15@131@01 Bool)
; [exec]
; var __t16: Int
(declare-const __t16@132@01 Int)
; [exec]
; var __t17: Int
(declare-const __t17@133@01 Int)
; [exec]
; var __t18: Bool
(declare-const __t18@134@01 Bool)
; [exec]
; var __t19: Bool
(declare-const __t19@135@01 Bool)
; [exec]
; var __t20: Bool
(declare-const __t20@136@01 Bool)
; [exec]
; var __t21: Bool
(declare-const __t21@137@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@138@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@139@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@140@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@141@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@142@01 $Ref)
; [exec]
; var _7: Ref
(declare-const _7@143@01 $Ref)
; [exec]
; var _8: Int
(declare-const _8@144@01 Int)
; [exec]
; var _9: Int
(declare-const _9@145@01 Int)
; [exec]
; var _10: Int
(declare-const _10@146@01 Int)
; [exec]
; var _11: Int
(declare-const _11@147@01 Int)
; [exec]
; var _12: Int
(declare-const _12@148@01 Int)
; [exec]
; var _13: Ref
(declare-const _13@149@01 $Ref)
; [exec]
; var _14: Ref
(declare-const _14@150@01 $Ref)
; [exec]
; var _15: Int
(declare-const _15@151@01 Int)
; [exec]
; var _16: Ref
(declare-const _16@152@01 $Ref)
; [exec]
; var _17: Ref
(declare-const _17@153@01 $Ref)
; [exec]
; var _18: Int
(declare-const _18@154@01 Int)
; [exec]
; var _19: Ref
(declare-const _19@155@01 $Ref)
; [exec]
; var _20: Ref
(declare-const _20@156@01 $Ref)
; [exec]
; var _21: Ref
(declare-const _21@157@01 $Ref)
; [exec]
; var _22: Ref
(declare-const _22@158@01 $Ref)
; [exec]
; var _23: Int
(declare-const _23@159@01 Int)
; [exec]
; var _24: Ref
(declare-const _24@160@01 $Ref)
; [exec]
; var _t32: Ref
(declare-const _t32@161@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; __t3 := false
; [exec]
; __t4 := false
; [exec]
; __t5 := false
; [exec]
; __t6 := false
; [exec]
; __t7 := false
; [exec]
; __t8 := false
; [exec]
; __t9 := false
; [exec]
; __t10 := false
; [exec]
; __t11 := false
; [exec]
; __t12 := false
; [exec]
; __t13 := false
; [exec]
; __t14 := false
; [exec]
; __t15 := false
; [exec]
; inhale acc(isize(_1), write) && acc(isize(_2), write)
(declare-const $t@162@01 $Snap)
(assert (= $t@162@01 ($Snap.combine ($Snap.first $t@162@01) ($Snap.second $t@162@01))))
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@138@01 _2@139@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@163@01 $Snap)
(assert (= $t@163@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@164@01 $Snap)
(assert (= $t@164@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (unfolding acc(isize(_2), write) in
;     (unfolding acc(isize(_1), write) in 0 <= _1.val_int && 0 <= _2.val_int))
(declare-const $t@165@01 $Snap)
(assert (= $t@165@01 $Snap.unit))
; [eval] (unfolding acc(isize(_2), write) in (unfolding acc(isize(_1), write) in 0 <= _1.val_int && 0 <= _2.val_int))
(set-option :timeout 0)
(push) ; 3
(assert (isize%trigger ($Snap.second $t@162@01) _2@139@01))
(assert (not (= _2@139@01 $Ref.null)))
; [eval] (unfolding acc(isize(_1), write) in 0 <= _1.val_int && 0 <= _2.val_int)
(push) ; 4
(assert (isize%trigger ($Snap.first $t@162@01) _1@138@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@139@01 _1@138@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@138@01 $Ref.null)))
; [eval] 0 <= _1.val_int && 0 <= _2.val_int
; [eval] 0 <= _1.val_int
(set-option :timeout 0)
(push) ; 5
; [then-branch: 8 | !(0 <= First:($t@162@01)) | live]
; [else-branch: 8 | 0 <= First:($t@162@01) | live]
(push) ; 6
; [then-branch: 8 | !(0 <= First:($t@162@01))]
(assert (not (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@162@01)))))
(pop) ; 6
(push) ; 6
; [else-branch: 8 | 0 <= First:($t@162@01)]
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@162@01))))
; [eval] 0 <= _2.val_int
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@162@01)))
  (not (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@162@01))))))
(pop) ; 4
; Joined path conditions
(assert (and
  (isize%trigger ($Snap.first $t@162@01) _1@138@01)
  (not (= _1@138@01 $Ref.null))
  (or
    (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@162@01)))
    (not (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@162@01)))))))
(pop) ; 3
; Joined path conditions
(assert (and
  (isize%trigger ($Snap.second $t@162@01) _2@139@01)
  (not (= _2@139@01 $Ref.null))
  (isize%trigger ($Snap.first $t@162@01) _1@138@01)
  (not (= _1@138@01 $Ref.null))
  (or
    (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@162@01)))
    (not (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@162@01)))))))
(assert (and
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@162@01)))
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.second $t@162@01)))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label pre
; [exec]
; label bb0
; [exec]
; __t0 := true
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@166@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_4.val_int, write)
(declare-const $t@167@01 Int)
(assert (not (= ret@166@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(isize(_1), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@166@01 _1@138@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; _4.val_int := _1.val_int
(declare-const val_int@168@01 Int)
(assert (= val_int@168@01 ($SortWrappers.$SnapToInt ($Snap.first $t@162@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@138@01 ret@166@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@169@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@170@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@166@01 ret@169@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@138@01 ret@169@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@169@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(isize(_2), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@169@01 _2@139@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@166@01 _2@139@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@138@01 _2@139@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@171@01 Int)
(assert (= val_int@171@01 ($SortWrappers.$SnapToInt ($Snap.second $t@162@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@139@01 ret@169@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@166@01 ret@169@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@138@01 ret@169@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l1
; [exec]
; _3 := builtin$havoc_ref()
(declare-const ret@172@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple2$isize$isize(_3), write)
(declare-const $t@173@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(tuple2$isize$isize(_3), write)
(assert (= $t@173@01 ($Snap.combine ($Snap.first $t@173@01) ($Snap.second $t@173@01))))
(assert (not (= ret@172@01 $Ref.null)))
(assert (=
  ($Snap.second $t@173@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@173@01))
    ($Snap.second ($Snap.second $t@173@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@173@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@173@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@173@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@173@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (tuple2$isize$isize%trigger $t@173@01 ret@172@01))
; [exec]
; _3.tuple_0 := _4
; [exec]
; label l2
; [exec]
; _3.tuple_1 := _5
; [exec]
; label l3
; [exec]
; _7 := builtin$havoc_ref()
(declare-const ret@174@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_7.val_ref, write)
(declare-const $t@175@01 $Ref)
(assert (not (= ret@174@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _7.val_ref := _3
; [exec]
; exhale acc(_3.tuple_1, write - read$())
; [eval] write - read$()
; [eval] read$()
(set-option :timeout 0)
(push) ; 3
(assert (read$%precondition $Snap.unit))
(pop) ; 3
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 3
(assert (not (or
  (= (- $Perm.Write (read$ $Snap.unit)) $Perm.No)
  (< $Perm.No (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))))
(assert (<=
  (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit)))))
  (not (= ret@172@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (=
    (-
      (- $Perm.Write (read$ $Snap.unit))
      ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    $Perm.No)
  (<
    (-
      (- $Perm.Write (read$ $Snap.unit))
      ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(_7.val_ref.tuple_1, read$())
; [eval] read$()
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@176@01 $Ref)
(declare-const $t@177@01 $Ref)
(assert (and
  (=>
    (<
      $Perm.No
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit)))))
    (= $t@177@01 ret@169@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@177@01 $t@176@01))))
(assert (<=
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    (read$ $Snap.unit))))
(assert (<=
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    (read$ $Snap.unit))
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
      (read$ $Snap.unit)))
  (not (= ret@172@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; exhale acc(_3.tuple_0, write - read$())
; [eval] write - read$()
; [eval] read$()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (or
  (= (- $Perm.Write (read$ $Snap.unit)) $Perm.No)
  (< $Perm.No (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (=
    (-
      (- $Perm.Write (read$ $Snap.unit))
      ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    $Perm.No)
  (<
    (-
      (- $Perm.Write (read$ $Snap.unit))
      ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(_7.val_ref.tuple_0, read$())
; [eval] read$()
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@178@01 $Ref)
(declare-const $t@179@01 $Ref)
(assert (and
  (=>
    (<
      $Perm.No
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit)))))
    (= $t@179@01 ret@166@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@179@01 $t@178@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; exhale acc(_3.tuple_1.val_int, write - read$())
; [eval] write - read$()
; [eval] read$()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (= (- $Perm.Write (read$ $Snap.unit)) $Perm.No)
  (< $Perm.No (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@177@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (<
    $Perm.No
    (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit)))))
  (not (= ret@169@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (=
    (-
      (- $Perm.Write (read$ $Snap.unit))
      ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    $Perm.No)
  (<
    (-
      (- $Perm.Write (read$ $Snap.unit))
      ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(_7.val_ref.tuple_1.val_int, read$())
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@180@01 Int)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@139@01 $t@177@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@177@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@138@01 $t@177@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@177@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@181@01 Int)
(assert (and
  (=>
    (<
      $Perm.No
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit)))))
    (= $t@181@01 val_int@171@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@181@01 $t@180@01))))
(assert (=>
  (<
    $Perm.No
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
      (read$ $Snap.unit)))
  (not (= ret@169@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; exhale acc(_3.tuple_0.val_int, write - read$())
; [eval] write - read$()
; [eval] read$()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (= (- $Perm.Write (read$ $Snap.unit)) $Perm.No)
  (< $Perm.No (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@179@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@139@01 $t@179@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@179@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (<
    $Perm.No
    (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit)))))
  (not (= ret@166@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (=
    (-
      (- $Perm.Write (read$ $Snap.unit))
      ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    $Perm.No)
  (<
    (-
      (- $Perm.Write (read$ $Snap.unit))
      ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(_7.val_ref.tuple_0.val_int, read$())
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@182@01 Int)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@179@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@139@01 $t@179@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@138@01 $t@179@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@179@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@183@01 Int)
(assert (and
  (=>
    (<
      $Perm.No
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit)))))
    (= $t@183@01 val_int@168@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@183@01 $t@182@01))))
(assert (=>
  (<
    $Perm.No
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
      (read$ $Snap.unit)))
  (not (= ret@166@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l4
; [exec]
; __t16 := _7.val_ref.tuple_0.val_int
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@179@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] __t16 == 0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $t@183@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= $t@183@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | $t@183@01 == 0 | live]
; [else-branch: 9 | $t@183@01 != 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 9 | $t@183@01 == 0]
(assert (= $t@183@01 0))
; [exec]
; label l6
; [exec]
; label bb2
; [exec]
; __t2 := true
; [exec]
; label l9
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | True | live]
; [else-branch: 10 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 10 | True]
; [exec]
; exhale acc(_7.val_ref.tuple_0.val_int, read$())
; [eval] read$()
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@179@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))))
(assert (<=
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit))))
  (not (= ret@166@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 5
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(_7.val_ref.tuple_1.val_int, read$())
; [eval] read$()
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@177@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (<
    $Perm.No
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit))))
  (not (= ret@169@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 5
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(_7.val_ref.tuple_0, read$())
; [eval] read$()
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (<
    $Perm.No
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit))))
  (not (= ret@172@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 5
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(_7.val_ref.tuple_1, read$())
; [eval] read$()
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(_3.tuple_1, write - read$())
; [eval] write - read$()
; [eval] read$()
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (not (or
  (= (- $Perm.Write (read$ $Snap.unit)) $Perm.No)
  (< $Perm.No (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $t@184@01 $Ref)
(declare-const $t@185@01 $Ref)
(assert (and
  (=>
    (<
      $Perm.No
      (-
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (-
              $Perm.Write
              ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
            (read$ $Snap.unit))
          (read$ $Snap.unit))))
    (= $t@185@01 $t@177@01))
  (=> (< $Perm.No (- $Perm.Write (read$ $Snap.unit))) (= $t@185@01 $t@184@01))))
(assert (<=
  $Perm.No
  (+
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    (- $Perm.Write (read$ $Snap.unit)))))
(assert (<=
  (+
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    (- $Perm.Write (read$ $Snap.unit)))
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (+
      (-
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (-
              $Perm.Write
              ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (- $Perm.Write (read$ $Snap.unit))))
  (not (= ret@172@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.tuple_0, write - read$())
; [eval] write - read$()
; [eval] read$()
(set-option :timeout 0)
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (not (or
  (= (- $Perm.Write (read$ $Snap.unit)) $Perm.No)
  (< $Perm.No (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $t@186@01 $Ref)
(declare-const $t@187@01 $Ref)
(assert (and
  (=>
    (<
      $Perm.No
      (-
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (-
              $Perm.Write
              ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
            (read$ $Snap.unit))
          (read$ $Snap.unit))))
    (= $t@187@01 $t@179@01))
  (=> (< $Perm.No (- $Perm.Write (read$ $Snap.unit))) (= $t@187@01 $t@186@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.tuple_1.val_int, write - read$())
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] write - read$()
; [eval] read$()
(set-option :timeout 0)
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (not (or
  (= (- $Perm.Write (read$ $Snap.unit)) $Perm.No)
  (< $Perm.No (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $t@188@01 Int)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@139@01 $t@185@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@138@01 $t@185@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@185@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@185@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $t@189@01 Int)
(assert (and
  (=>
    (<
      $Perm.No
      (-
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (-
              $Perm.Write
              ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
            (read$ $Snap.unit))
          (read$ $Snap.unit))))
    (= $t@189@01 $t@181@01))
  (=> (< $Perm.No (- $Perm.Write (read$ $Snap.unit))) (= $t@189@01 $t@188@01))))
(assert (=>
  (<
    $Perm.No
    (+
      (-
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (-
              $Perm.Write
              ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (- $Perm.Write (read$ $Snap.unit))))
  (not (= ret@169@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.tuple_0.val_int, write - read$())
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] write - read$()
; [eval] read$()
(set-option :timeout 0)
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (not (or
  (= (- $Perm.Write (read$ $Snap.unit)) $Perm.No)
  (< $Perm.No (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $t@190@01 Int)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@187@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@139@01 $t@187@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@138@01 $t@187@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@187@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $t@191@01 Int)
(assert (and
  (=>
    (<
      $Perm.No
      (-
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (-
              $Perm.Write
              ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
            (read$ $Snap.unit))
          (read$ $Snap.unit))))
    (= $t@191@01 $t@183@01))
  (=> (< $Perm.No (- $Perm.Write (read$ $Snap.unit))) (= $t@191@01 $t@190@01))))
(assert (=>
  (<
    $Perm.No
    (+
      (-
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (-
              $Perm.Write
              ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (- $Perm.Write (read$ $Snap.unit))))
  (not (= ret@166@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label bb7
; [exec]
; __t13 := true
; [exec]
; _8 := builtin$havoc_int()
(declare-const ret@192@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@193@01 $Snap)
(assert (= $t@193@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _8 := _3.tuple_1.val_int
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@185@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@185@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l27
; [exec]
; _12 := builtin$havoc_int()
(declare-const ret@194@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@195@01 $Snap)
(assert (= $t@195@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _12 := _8
; [exec]
; label l28
; [exec]
; _13 := builtin$havoc_ref()
(declare-const ret@196@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_13.tuple_0, write)
(declare-const $t@197@01 $Ref)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@172@01 ret@196@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@196@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_13.tuple_0.val_int, write)
(declare-const $t@198@01 Int)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@197@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@197@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@139@01 $t@197@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@138@01 $t@197@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= $t@197@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_13.tuple_1, write)
(declare-const $t@199@01 $Ref)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@172@01 ret@196@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_13.tuple_1.val_bool, write)
(declare-const $t@200@01 Bool)
(assert (not (= $t@199@01 $Ref.null)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _13.tuple_0.val_int := _12 + 1
; [eval] _12 + 1
(declare-const val_int@201@01 Int)
(assert (= val_int@201@01 (+ $t@189@01 1)))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@197@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@197@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@139@01 $t@197@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@138@01 $t@197@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; _13.tuple_1.val_bool := false
; [exec]
; __t21 := _13.tuple_1.val_bool
; [exec]
; assert !__t21
; [eval] !__t21
; [exec]
; label bb11
; [exec]
; __t14 := true
; [exec]
; _0 := _13.tuple_0
; [exec]
; label l29
; [exec]
; label l32
; [exec]
; label bb10
; [exec]
; __t15 := true
; [exec]
; label return
; [exec]
; fold acc(isize(_0), write)
(assert (isize%trigger ($SortWrappers.IntTo$Snap val_int@201@01) $t@197@01))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@173@01))))
  $t@197@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@173@01)) $t@197@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert (unfolding acc(isize(_0), write) in _0.val_int) ==
;   m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[pre]((unfolding acc(isize(_1), write) in
;     _1.val_int)), old[pre]((unfolding acc(isize(_2), write) in _2.val_int))) &&
;   (unfolding acc(isize(_0), write) in _0.val_int) >= 0
; [eval] (unfolding acc(isize(_0), write) in _0.val_int) == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[pre]((unfolding acc(isize(_1), write) in _1.val_int)), old[pre]((unfolding acc(isize(_2), write) in _2.val_int)))
; [eval] (unfolding acc(isize(_0), write) in _0.val_int)
(set-option :timeout 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@197@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@197@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@139@01 $t@197@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@138@01 $t@197@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
; Joined path conditions
; [eval] m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[pre]((unfolding acc(isize(_1), write) in _1.val_int)), old[pre]((unfolding acc(isize(_2), write) in _2.val_int)))
; [eval] old[pre]((unfolding acc(isize(_1), write) in _1.val_int))
; [eval] (unfolding acc(isize(_1), write) in _1.val_int)
(set-option :timeout 0)
(push) ; 5
(pop) ; 5
; Joined path conditions
; [eval] old[pre]((unfolding acc(isize(_2), write) in _2.val_int))
; [eval] (unfolding acc(isize(_2), write) in _2.val_int)
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] 0 <= _pure_1
; [eval] 0 <= _pure_2
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@162@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@162@01))))
(pop) ; 5
; Joined path conditions
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@162@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@162@01))))
(push) ; 5
(assert (not (=
  val_int@201@01
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@162@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@162@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  val_int@201@01
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@162@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@162@01)))))
; [eval] (unfolding acc(isize(_0), write) in _0.val_int) >= 0
; [eval] (unfolding acc(isize(_0), write) in _0.val_int)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@197@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@197@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@139@01 $t@197@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@138@01 $t@197@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
; Joined path conditions
(set-option :timeout 0)
(push) ; 5
(assert (not (>= val_int@201@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (>= val_int@201@01 0))
; [exec]
; assert true
; [exec]
; exhale acc(isize(_0), write)
; [exec]
; label end_of_method
(pop) ; 4
; [eval] !__t0
; [then-branch: 11 | False | dead]
; [else-branch: 11 | True | live]
(push) ; 4
; [else-branch: 11 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 9 | $t@183@01 != 0]
(assert (not (= $t@183@01 0)))
(pop) ; 3
; [eval] !(__t16 == 0)
; [eval] __t16 == 0
(push) ; 3
(set-option :timeout 10)
(assert (not (= $t@183@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $t@183@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | $t@183@01 != 0 | live]
; [else-branch: 12 | $t@183@01 == 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 12 | $t@183@01 != 0]
(assert (not (= $t@183@01 0)))
; [exec]
; label l5
; [exec]
; label bb6
; [exec]
; __t1 := true
; [exec]
; __t17 := _7.val_ref.tuple_1.val_int
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@177@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@177@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] __t17 == 0
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= $t@181@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= $t@181@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | $t@181@01 == 0 | live]
; [else-branch: 13 | $t@181@01 != 0 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 13 | $t@181@01 == 0]
(assert (= $t@181@01 0))
; [exec]
; label l8
; [exec]
; label bb3
; [exec]
; __t3 := true
; [exec]
; label l10
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | True | live]
; [else-branch: 14 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 14 | True]
; [exec]
; exhale acc(_7.val_ref.tuple_0.val_int, read$())
; [eval] read$()
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@179@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))))
(assert (<=
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit))))
  (not (= ret@166@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 6
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(_7.val_ref.tuple_1.val_int, read$())
; [eval] read$()
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@177@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (<
    $Perm.No
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit))))
  (not (= ret@169@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 6
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(_7.val_ref.tuple_0, read$())
; [eval] read$()
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (<
    $Perm.No
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit))))
  (not (= ret@172@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 6
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(_7.val_ref.tuple_1, read$())
; [eval] read$()
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(_3.tuple_1, write - read$())
; [eval] write - read$()
; [eval] read$()
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (or
  (= (- $Perm.Write (read$ $Snap.unit)) $Perm.No)
  (< $Perm.No (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $t@202@01 $Ref)
(declare-const $t@203@01 $Ref)
(assert (and
  (=>
    (<
      $Perm.No
      (-
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (-
              $Perm.Write
              ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
            (read$ $Snap.unit))
          (read$ $Snap.unit))))
    (= $t@203@01 $t@177@01))
  (=> (< $Perm.No (- $Perm.Write (read$ $Snap.unit))) (= $t@203@01 $t@202@01))))
(assert (<=
  $Perm.No
  (+
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    (- $Perm.Write (read$ $Snap.unit)))))
(assert (<=
  (+
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    (- $Perm.Write (read$ $Snap.unit)))
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (+
      (-
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (-
              $Perm.Write
              ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (- $Perm.Write (read$ $Snap.unit))))
  (not (= ret@172@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.tuple_0, write - read$())
; [eval] write - read$()
; [eval] read$()
(set-option :timeout 0)
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (or
  (= (- $Perm.Write (read$ $Snap.unit)) $Perm.No)
  (< $Perm.No (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $t@204@01 $Ref)
(declare-const $t@205@01 $Ref)
(assert (and
  (=>
    (<
      $Perm.No
      (-
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (-
              $Perm.Write
              ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
            (read$ $Snap.unit))
          (read$ $Snap.unit))))
    (= $t@205@01 $t@179@01))
  (=> (< $Perm.No (- $Perm.Write (read$ $Snap.unit))) (= $t@205@01 $t@204@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.tuple_1.val_int, write - read$())
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] write - read$()
; [eval] read$()
(set-option :timeout 0)
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (or
  (= (- $Perm.Write (read$ $Snap.unit)) $Perm.No)
  (< $Perm.No (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $t@206@01 Int)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@139@01 $t@203@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@138@01 $t@203@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@203@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@203@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $t@207@01 Int)
(assert (and
  (=>
    (<
      $Perm.No
      (-
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (-
              $Perm.Write
              ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
            (read$ $Snap.unit))
          (read$ $Snap.unit))))
    (= $t@207@01 $t@181@01))
  (=> (< $Perm.No (- $Perm.Write (read$ $Snap.unit))) (= $t@207@01 $t@206@01))))
(assert (=>
  (<
    $Perm.No
    (+
      (-
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (-
              $Perm.Write
              ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (- $Perm.Write (read$ $Snap.unit))))
  (not (= ret@169@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.tuple_0.val_int, write - read$())
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] write - read$()
; [eval] read$()
(set-option :timeout 0)
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (or
  (= (- $Perm.Write (read$ $Snap.unit)) $Perm.No)
  (< $Perm.No (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $t@208@01 Int)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@205@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@139@01 $t@205@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@138@01 $t@205@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@205@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $t@209@01 Int)
(assert (and
  (=>
    (<
      $Perm.No
      (-
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (-
              $Perm.Write
              ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
            (read$ $Snap.unit))
          (read$ $Snap.unit))))
    (= $t@209@01 $t@183@01))
  (=> (< $Perm.No (- $Perm.Write (read$ $Snap.unit))) (= $t@209@01 $t@208@01))))
(assert (=>
  (<
    $Perm.No
    (+
      (-
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (-
              $Perm.Write
              ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (- $Perm.Write (read$ $Snap.unit))))
  (not (= ret@166@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label bb8
; [exec]
; __t10 := true
; [exec]
; _9 := builtin$havoc_int()
(declare-const ret@210@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@211@01 $Snap)
(assert (= $t@211@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _9 := _3.tuple_0.val_int
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@205@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l22
; [exec]
; _15 := builtin$havoc_int()
(declare-const ret@212@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@213@01 $Snap)
(assert (= $t@213@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _15 := _9
; [exec]
; label l23
; [exec]
; _16 := builtin$havoc_ref()
(declare-const ret@214@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_16.tuple_0, write)
(declare-const $t@215@01 $Ref)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@172@01 ret@214@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@214@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_16.tuple_0.val_int, write)
(declare-const $t@216@01 Int)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@215@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@215@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@139@01 $t@215@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@138@01 $t@215@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= $t@215@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_16.tuple_1, write)
(declare-const $t@217@01 $Ref)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@172@01 ret@214@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_16.tuple_1.val_bool, write)
(declare-const $t@218@01 Bool)
(assert (not (= $t@217@01 $Ref.null)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _16.tuple_0.val_int := _15 - 1
; [eval] _15 - 1
(declare-const val_int@219@01 Int)
(assert (= val_int@219@01 (- $t@209@01 1)))
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@215@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@215@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@139@01 $t@215@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@138@01 $t@215@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; _16.tuple_1.val_bool := false
; [exec]
; __t20 := _16.tuple_1.val_bool
; [exec]
; assert !__t20
; [eval] !__t20
; [exec]
; label bb12
; [exec]
; __t11 := true
; [exec]
; _14 := _16.tuple_0
; [exec]
; label l24
; [exec]
; label l25
; [exec]
; _t32 := builtin$havoc_ref()
(declare-const ret@220@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(isize(_t32), write)
(declare-const $t@221@01 Int)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@173@01))))
  ret@220@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@173@01)) ret@220@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert 0 <= _14.val_int
; [eval] 0 <= _14.val_int
(set-option :timeout 0)
(push) ; 6
(assert (not (<= 0 val_int@219@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@219@01))
; [exec]
; fold acc(isize(_14), write)
(assert (isize%trigger ($SortWrappers.IntTo$Snap val_int@219@01) $t@215@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@220@01 $t@215@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@173@01))))
  $t@215@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@173@01)) $t@215@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert true
; [exec]
; exhale acc(isize(_14), write) && acc(isize(_t32), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@222@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@223@01 $Snap)
(assert (= $t@223@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(isize(_0), write)
(declare-const $t@224@01 Int)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@173@01))))
  ret@222@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@173@01)) ret@222@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@225@01 $Snap)
(assert (= $t@225@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (unfolding acc(isize(_0), write) in
;     _0.val_int ==
;     m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l25](_14.val_int),
;     old[l25](1)) &&
;     _0.val_int >= 0)
(declare-const $t@226@01 $Snap)
(assert (= $t@226@01 $Snap.unit))
; [eval] (unfolding acc(isize(_0), write) in _0.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l25](_14.val_int), old[l25](1)) && _0.val_int >= 0)
(set-option :timeout 0)
(push) ; 6
(assert (isize%trigger ($SortWrappers.IntTo$Snap $t@224@01) ret@222@01))
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@166@01 ret@222@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@169@01 ret@222@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _2@139@01 ret@222@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _1@138@01 ret@222@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@222@01 $Ref.null)))
; [eval] _0.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l25](_14.val_int), old[l25](1)) && _0.val_int >= 0
; [eval] _0.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l25](_14.val_int), old[l25](1))
; [eval] m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l25](_14.val_int), old[l25](1))
; [eval] old[l25](_14.val_int)
; [eval] old[l25](1)
(set-option :timeout 0)
(push) ; 7
; [eval] 0 <= _pure_1
; [eval] 0 <= _pure_2
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) val_int@219@01 1))
(pop) ; 7
; Joined path conditions
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) val_int@219@01 1))
(push) ; 7
; [then-branch: 15 | $t@224@01 != m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), val_int@219@01, 1) | live]
; [else-branch: 15 | $t@224@01 == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), val_int@219@01, 1) | live]
(push) ; 8
; [then-branch: 15 | $t@224@01 != m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), val_int@219@01, 1)]
(assert (not
  (=
    $t@224@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) val_int@219@01 1))))
(pop) ; 8
(push) ; 8
; [else-branch: 15 | $t@224@01 == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), val_int@219@01, 1)]
(assert (=
  $t@224@01
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) val_int@219@01 1)))
; [eval] _0.val_int >= 0
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    $t@224@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) val_int@219@01 1))
  (not
    (=
      $t@224@01
      (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) val_int@219@01 1)))))
(pop) ; 6
; Joined path conditions
(assert (and
  (isize%trigger ($SortWrappers.IntTo$Snap $t@224@01) ret@222@01)
  (not (= ret@222@01 $Ref.null))
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) val_int@219@01 1)
  (or
    (=
      $t@224@01
      (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) val_int@219@01 1))
    (not
      (=
        $t@224@01
        (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) val_int@219@01 1))))))
(assert (and
  (=
    $t@224@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) val_int@219@01 1))
  (>= $t@224@01 0)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l26
; [exec]
; label bb13
; [exec]
; __t12 := true
; [exec]
; label l31
; [exec]
; unfold acc(isize(_0), write)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@166@01 ret@222@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@169@01 ret@222@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@139@01 ret@222@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@138@01 ret@222@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; label bb10
; [exec]
; __t15 := true
; [exec]
; label return
; [exec]
; fold acc(isize(_0), write)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@173@01))))
  ret@222@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@173@01)) ret@222@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert (unfolding acc(isize(_0), write) in _0.val_int) ==
;   m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[pre]((unfolding acc(isize(_1), write) in
;     _1.val_int)), old[pre]((unfolding acc(isize(_2), write) in _2.val_int))) &&
;   (unfolding acc(isize(_0), write) in _0.val_int) >= 0
; [eval] (unfolding acc(isize(_0), write) in _0.val_int) == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[pre]((unfolding acc(isize(_1), write) in _1.val_int)), old[pre]((unfolding acc(isize(_2), write) in _2.val_int)))
; [eval] (unfolding acc(isize(_0), write) in _0.val_int)
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@166@01 ret@222@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@169@01 ret@222@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _2@139@01 ret@222@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _1@138@01 ret@222@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
; Joined path conditions
; [eval] m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[pre]((unfolding acc(isize(_1), write) in _1.val_int)), old[pre]((unfolding acc(isize(_2), write) in _2.val_int)))
; [eval] old[pre]((unfolding acc(isize(_1), write) in _1.val_int))
; [eval] (unfolding acc(isize(_1), write) in _1.val_int)
(set-option :timeout 0)
(push) ; 6
(pop) ; 6
; Joined path conditions
; [eval] old[pre]((unfolding acc(isize(_2), write) in _2.val_int))
; [eval] (unfolding acc(isize(_2), write) in _2.val_int)
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] 0 <= _pure_1
; [eval] 0 <= _pure_2
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@162@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@162@01))))
(pop) ; 6
; Joined path conditions
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@162@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@162@01))))
(push) ; 6
(assert (not (=
  $t@224@01
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@162@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@162@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  $t@224@01
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@162@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@162@01)))))
; [eval] (unfolding acc(isize(_0), write) in _0.val_int) >= 0
; [eval] (unfolding acc(isize(_0), write) in _0.val_int)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@166@01 ret@222@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@169@01 ret@222@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _2@139@01 ret@222@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _1@138@01 ret@222@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
; Joined path conditions
; [exec]
; assert true
; [exec]
; exhale acc(isize(_0), write)
; [exec]
; label end_of_method
(pop) ; 5
; [eval] !__t0
; [then-branch: 16 | False | dead]
; [else-branch: 16 | True | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 16 | True]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 13 | $t@181@01 != 0]
(assert (not (= $t@181@01 0)))
(pop) ; 4
; [eval] !(__t17 == 0)
; [eval] __t17 == 0
(push) ; 4
(set-option :timeout 10)
(assert (not (= $t@181@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= $t@181@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 17 | $t@181@01 != 0 | live]
; [else-branch: 17 | $t@181@01 == 0 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 17 | $t@181@01 != 0]
(assert (not (= $t@181@01 0)))
; [exec]
; label l7
; [exec]
; label bb4
; [exec]
; __t4 := true
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 18 | True | live]
; [else-branch: 18 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 18 | True]
; [exec]
; exhale acc(_7.val_ref.tuple_0.val_int, read$())
; [eval] read$()
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@179@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))))
(assert (<=
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit))))
  (not (= ret@166@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 6
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(_7.val_ref.tuple_1.val_int, read$())
; [eval] read$()
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@177@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (<
    $Perm.No
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit))))
  (not (= ret@169@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 6
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(_7.val_ref.tuple_0, read$())
; [eval] read$()
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (<
    $Perm.No
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit))))
  (not (= ret@172@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 6
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(_7.val_ref.tuple_1, read$())
; [eval] read$()
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(_3.tuple_1, write - read$())
; [eval] write - read$()
; [eval] read$()
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (or
  (= (- $Perm.Write (read$ $Snap.unit)) $Perm.No)
  (< $Perm.No (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $t@227@01 $Ref)
(declare-const $t@228@01 $Ref)
(assert (and
  (=>
    (<
      $Perm.No
      (-
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (-
              $Perm.Write
              ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
            (read$ $Snap.unit))
          (read$ $Snap.unit))))
    (= $t@228@01 $t@177@01))
  (=> (< $Perm.No (- $Perm.Write (read$ $Snap.unit))) (= $t@228@01 $t@227@01))))
(assert (<=
  $Perm.No
  (+
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    (- $Perm.Write (read$ $Snap.unit)))))
(assert (<=
  (+
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    (- $Perm.Write (read$ $Snap.unit)))
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (+
      (-
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (-
              $Perm.Write
              ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (- $Perm.Write (read$ $Snap.unit))))
  (not (= ret@172@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.tuple_0, write - read$())
; [eval] write - read$()
; [eval] read$()
(set-option :timeout 0)
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (or
  (= (- $Perm.Write (read$ $Snap.unit)) $Perm.No)
  (< $Perm.No (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $t@229@01 $Ref)
(declare-const $t@230@01 $Ref)
(assert (and
  (=>
    (<
      $Perm.No
      (-
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (-
              $Perm.Write
              ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
            (read$ $Snap.unit))
          (read$ $Snap.unit))))
    (= $t@230@01 $t@179@01))
  (=> (< $Perm.No (- $Perm.Write (read$ $Snap.unit))) (= $t@230@01 $t@229@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.tuple_1.val_int, write - read$())
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] write - read$()
; [eval] read$()
(set-option :timeout 0)
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (or
  (= (- $Perm.Write (read$ $Snap.unit)) $Perm.No)
  (< $Perm.No (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $t@231@01 Int)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@139@01 $t@228@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@138@01 $t@228@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@228@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@228@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $t@232@01 Int)
(assert (and
  (=>
    (<
      $Perm.No
      (-
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (-
              $Perm.Write
              ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
            (read$ $Snap.unit))
          (read$ $Snap.unit))))
    (= $t@232@01 $t@181@01))
  (=> (< $Perm.No (- $Perm.Write (read$ $Snap.unit))) (= $t@232@01 $t@231@01))))
(assert (=>
  (<
    $Perm.No
    (+
      (-
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (-
              $Perm.Write
              ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (- $Perm.Write (read$ $Snap.unit))))
  (not (= ret@169@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.tuple_0.val_int, write - read$())
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] write - read$()
; [eval] read$()
(set-option :timeout 0)
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (or
  (= (- $Perm.Write (read$ $Snap.unit)) $Perm.No)
  (< $Perm.No (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $t@233@01 Int)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@230@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@139@01 $t@230@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@138@01 $t@230@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@230@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $t@234@01 Int)
(assert (and
  (=>
    (<
      $Perm.No
      (-
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (-
              $Perm.Write
              ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
            (read$ $Snap.unit))
          (read$ $Snap.unit))))
    (= $t@234@01 $t@183@01))
  (=> (< $Perm.No (- $Perm.Write (read$ $Snap.unit))) (= $t@234@01 $t@233@01))))
(assert (=>
  (<
    $Perm.No
    (+
      (-
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (-
              $Perm.Write
              ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (- $Perm.Write (read$ $Snap.unit))))
  (not (= ret@166@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label bb9
; [exec]
; __t5 := true
; [exec]
; _10 := builtin$havoc_int()
(declare-const ret@235@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@236@01 $Snap)
(assert (= $t@236@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _10 := _3.tuple_0.val_int
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@230@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l11
; [exec]
; _11 := builtin$havoc_int()
(declare-const ret@237@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@238@01 $Snap)
(assert (= $t@238@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _11 := _3.tuple_1.val_int
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@228@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@228@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      (+
        (-
          $Perm.Write
          ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (-
            $Perm.Write
            ($Perm.min $Perm.Write (- $Perm.Write (read$ $Snap.unit))))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    (- $Perm.Write (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l12
; [exec]
; _18 := builtin$havoc_int()
(declare-const ret@239@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@240@01 $Snap)
(assert (= $t@240@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _18 := _10
; [exec]
; label l13
; [exec]
; _19 := builtin$havoc_ref()
(declare-const ret@241@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_19.tuple_0, write)
(declare-const $t@242@01 $Ref)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@172@01 ret@241@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@241@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_19.tuple_0.val_int, write)
(declare-const $t@243@01 Int)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@242@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@242@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@139@01 $t@242@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@138@01 $t@242@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= $t@242@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_19.tuple_1, write)
(declare-const $t@244@01 $Ref)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@172@01 ret@241@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_19.tuple_1.val_bool, write)
(declare-const $t@245@01 Bool)
(assert (not (= $t@244@01 $Ref.null)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _19.tuple_0.val_int := _18 - 1
; [eval] _18 - 1
(declare-const val_int@246@01 Int)
(assert (= val_int@246@01 (- $t@234@01 1)))
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@242@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@242@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@139@01 $t@242@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@138@01 $t@242@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; _19.tuple_1.val_bool := false
; [exec]
; __t18 := _19.tuple_1.val_bool
; [exec]
; assert !__t18
; [eval] !__t18
; [exec]
; label bb14
; [exec]
; __t6 := true
; [exec]
; _17 := _19.tuple_0
; [exec]
; label l14
; [exec]
; _21 := builtin$havoc_ref()
(declare-const ret@247@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_21.val_int, write)
(declare-const $t@248@01 Int)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= $t@242@01 ret@247@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@166@01 ret@247@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@169@01 ret@247@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@139@01 ret@247@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@138@01 ret@247@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@247@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _21.val_int := _10
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= $t@242@01 ret@247@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@166@01 ret@247@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@169@01 ret@247@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@139@01 ret@247@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@138@01 ret@247@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l15
; [exec]
; _23 := builtin$havoc_int()
(declare-const ret@249@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@250@01 $Snap)
(assert (= $t@250@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _23 := _11
; [exec]
; label l16
; [exec]
; _24 := builtin$havoc_ref()
(declare-const ret@251@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_24.tuple_0, write)
(declare-const $t@252@01 $Ref)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@241@01 ret@251@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@172@01 ret@251@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@251@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_24.tuple_0.val_int, write)
(declare-const $t@253@01 Int)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@247@01 $t@252@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= $t@242@01 $t@252@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@252@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@252@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@139@01 $t@252@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@138@01 $t@252@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= $t@252@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_24.tuple_1, write)
(declare-const $t@254@01 $Ref)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@241@01 ret@251@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@172@01 ret@251@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_24.tuple_1.val_bool, write)
(declare-const $t@255@01 Bool)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= $t@244@01 $t@254@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= $t@254@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _24.tuple_0.val_int := _23 - 1
; [eval] _23 - 1
(declare-const val_int@256@01 Int)
(assert (= val_int@256@01 (- $t@232@01 1)))
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@247@01 $t@252@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= $t@242@01 $t@252@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@166@01 $t@252@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@169@01 $t@252@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@139@01 $t@252@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@138@01 $t@252@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; _24.tuple_1.val_bool := false
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= $t@244@01 $t@254@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; __t19 := _24.tuple_1.val_bool
; [exec]
; assert !__t19
; [eval] !__t19
; [exec]
; label bb15
; [exec]
; __t7 := true
; [exec]
; _22 := _24.tuple_0
; [exec]
; label l17
; [exec]
; label l18
; [exec]
; assert 0 <= _21.val_int && 0 <= _22.val_int
; [eval] 0 <= _21.val_int
(set-option :timeout 0)
(push) ; 6
(assert (not (<= 0 $t@234@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 $t@234@01))
; [eval] 0 <= _22.val_int
(push) ; 6
(assert (not (<= 0 val_int@256@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@256@01))
; [exec]
; fold acc(isize(_22), write)
(assert (isize%trigger ($SortWrappers.IntTo$Snap val_int@256@01) $t@252@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@173@01))))
  $t@252@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@173@01)) $t@252@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(isize(_21), write)
(assert (isize%trigger ($SortWrappers.IntTo$Snap $t@234@01) ret@247@01))
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= $t@252@01 ret@247@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@173@01))))
  ret@247@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@173@01)) ret@247@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert true
; [exec]
; exhale acc(isize(_21), write) && acc(isize(_22), write)
; [exec]
; _20 := builtin$havoc_ref()
(declare-const ret@257@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@258@01 $Snap)
(assert (= $t@258@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(isize(_20), write)
(declare-const $t@259@01 Int)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@173@01))))
  ret@257@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@173@01)) ret@257@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@260@01 $Snap)
(assert (= $t@260@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (unfolding acc(isize(_20), write) in
;     _20.val_int ==
;     m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l18](_21.val_int),
;     old[l18](_22.val_int)) &&
;     _20.val_int >= 0)
(declare-const $t@261@01 $Snap)
(assert (= $t@261@01 $Snap.unit))
; [eval] (unfolding acc(isize(_20), write) in _20.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l18](_21.val_int), old[l18](_22.val_int)) && _20.val_int >= 0)
(set-option :timeout 0)
(push) ; 6
(assert (isize%trigger ($SortWrappers.IntTo$Snap $t@259@01) ret@257@01))
(push) ; 7
(set-option :timeout 10)
(assert (not (= $t@242@01 ret@257@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@166@01 ret@257@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@169@01 ret@257@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _2@139@01 ret@257@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _1@138@01 ret@257@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@257@01 $Ref.null)))
; [eval] _20.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l18](_21.val_int), old[l18](_22.val_int)) && _20.val_int >= 0
; [eval] _20.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l18](_21.val_int), old[l18](_22.val_int))
; [eval] m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l18](_21.val_int), old[l18](_22.val_int))
; [eval] old[l18](_21.val_int)
; [eval] old[l18](_22.val_int)
(set-option :timeout 0)
(push) ; 7
; [eval] 0 <= _pure_1
; [eval] 0 <= _pure_2
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) $t@234@01 val_int@256@01))
(pop) ; 7
; Joined path conditions
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) $t@234@01 val_int@256@01))
(push) ; 7
; [then-branch: 19 | $t@259@01 != m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), $t@234@01, val_int@256@01) | live]
; [else-branch: 19 | $t@259@01 == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), $t@234@01, val_int@256@01) | live]
(push) ; 8
; [then-branch: 19 | $t@259@01 != m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), $t@234@01, val_int@256@01)]
(assert (not
  (=
    $t@259@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) $t@234@01 val_int@256@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 19 | $t@259@01 == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), $t@234@01, val_int@256@01)]
(assert (=
  $t@259@01
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) $t@234@01 val_int@256@01)))
; [eval] _20.val_int >= 0
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    $t@259@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) $t@234@01 val_int@256@01))
  (not
    (=
      $t@259@01
      (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) $t@234@01 val_int@256@01)))))
(pop) ; 6
; Joined path conditions
(assert (and
  (isize%trigger ($SortWrappers.IntTo$Snap $t@259@01) ret@257@01)
  (not (= ret@257@01 $Ref.null))
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) $t@234@01 val_int@256@01)
  (or
    (=
      $t@259@01
      (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) $t@234@01 val_int@256@01))
    (not
      (=
        $t@259@01
        (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) $t@234@01 val_int@256@01))))))
(assert (and
  (=
    $t@259@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) $t@234@01 val_int@256@01))
  (>= $t@259@01 0)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l19
; [exec]
; label bb16
; [exec]
; __t8 := true
; [exec]
; label l20
; [exec]
; unfold acc(isize(_20), write)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= $t@242@01 ret@257@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@166@01 ret@257@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@169@01 ret@257@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@139@01 ret@257@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@138@01 ret@257@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; assert 0 <= _17.val_int && 0 <= _20.val_int
; [eval] 0 <= _17.val_int
(set-option :timeout 0)
(push) ; 6
(assert (not (<= 0 val_int@246@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@246@01))
; [eval] 0 <= _20.val_int
(push) ; 6
(assert (not (<= 0 $t@259@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 $t@259@01))
; [exec]
; fold acc(isize(_17), write)
(assert (isize%trigger ($SortWrappers.IntTo$Snap val_int@246@01) $t@242@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@173@01))))
  $t@242@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@173@01)) $t@242@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(isize(_20), write)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= $t@242@01 ret@257@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@173@01))))
  ret@257@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@173@01)) ret@257@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert true
; [exec]
; exhale acc(isize(_17), write) && acc(isize(_20), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@262@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@263@01 $Snap)
(assert (= $t@263@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(isize(_0), write)
(declare-const $t@264@01 Int)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@173@01))))
  ret@262@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@173@01)) ret@262@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@265@01 $Snap)
(assert (= $t@265@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (unfolding acc(isize(_0), write) in
;     _0.val_int ==
;     m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l20](_17.val_int),
;     old[l20]((unfolding acc(isize(_20), write) in _20.val_int))) &&
;     _0.val_int >= 0)
(declare-const $t@266@01 $Snap)
(assert (= $t@266@01 $Snap.unit))
; [eval] (unfolding acc(isize(_0), write) in _0.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l20](_17.val_int), old[l20]((unfolding acc(isize(_20), write) in _20.val_int))) && _0.val_int >= 0)
(set-option :timeout 0)
(push) ; 6
(assert (isize%trigger ($SortWrappers.IntTo$Snap $t@264@01) ret@262@01))
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@166@01 ret@262@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@169@01 ret@262@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _2@139@01 ret@262@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _1@138@01 ret@262@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@262@01 $Ref.null)))
; [eval] _0.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l20](_17.val_int), old[l20]((unfolding acc(isize(_20), write) in _20.val_int))) && _0.val_int >= 0
; [eval] _0.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l20](_17.val_int), old[l20]((unfolding acc(isize(_20), write) in _20.val_int)))
; [eval] m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l20](_17.val_int), old[l20]((unfolding acc(isize(_20), write) in _20.val_int)))
; [eval] old[l20](_17.val_int)
; [eval] old[l20]((unfolding acc(isize(_20), write) in _20.val_int))
; [eval] (unfolding acc(isize(_20), write) in _20.val_int)
(set-option :timeout 0)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (= $t@242@01 ret@257@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (= ret@166@01 ret@257@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (= ret@169@01 ret@257@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (= _2@139@01 ret@257@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (= _1@138@01 ret@257@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
; Joined path conditions
(set-option :timeout 0)
(push) ; 7
; [eval] 0 <= _pure_1
; [eval] 0 <= _pure_2
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) val_int@246@01 $t@259@01))
(pop) ; 7
; Joined path conditions
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) val_int@246@01 $t@259@01))
(push) ; 7
; [then-branch: 20 | $t@264@01 != m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), val_int@246@01, $t@259@01) | live]
; [else-branch: 20 | $t@264@01 == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), val_int@246@01, $t@259@01) | live]
(push) ; 8
; [then-branch: 20 | $t@264@01 != m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), val_int@246@01, $t@259@01)]
(assert (not
  (=
    $t@264@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) val_int@246@01 $t@259@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 20 | $t@264@01 == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), val_int@246@01, $t@259@01)]
(assert (=
  $t@264@01
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) val_int@246@01 $t@259@01)))
; [eval] _0.val_int >= 0
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    $t@264@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) val_int@246@01 $t@259@01))
  (not
    (=
      $t@264@01
      (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) val_int@246@01 $t@259@01)))))
(pop) ; 6
; Joined path conditions
(assert (and
  (isize%trigger ($SortWrappers.IntTo$Snap $t@264@01) ret@262@01)
  (not (= ret@262@01 $Ref.null))
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) val_int@246@01 $t@259@01)
  (or
    (=
      $t@264@01
      (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) val_int@246@01 $t@259@01))
    (not
      (=
        $t@264@01
        (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) val_int@246@01 $t@259@01))))))
(assert (and
  (=
    $t@264@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) val_int@246@01 $t@259@01))
  (>= $t@264@01 0)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l21
; [exec]
; label bb17
; [exec]
; __t9 := true
; [exec]
; label l30
; [exec]
; unfold acc(isize(_0), write)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@166@01 ret@262@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ret@169@01 ret@262@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _2@139@01 ret@262@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= _1@138@01 ret@262@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; label bb10
; [exec]
; __t15 := true
; [exec]
; label return
; [exec]
; fold acc(isize(_0), write)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@173@01))))
  ret@262@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@173@01)) ret@262@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert (unfolding acc(isize(_0), write) in _0.val_int) ==
;   m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[pre]((unfolding acc(isize(_1), write) in
;     _1.val_int)), old[pre]((unfolding acc(isize(_2), write) in _2.val_int))) &&
;   (unfolding acc(isize(_0), write) in _0.val_int) >= 0
; [eval] (unfolding acc(isize(_0), write) in _0.val_int) == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[pre]((unfolding acc(isize(_1), write) in _1.val_int)), old[pre]((unfolding acc(isize(_2), write) in _2.val_int)))
; [eval] (unfolding acc(isize(_0), write) in _0.val_int)
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@166@01 ret@262@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@169@01 ret@262@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _2@139@01 ret@262@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _1@138@01 ret@262@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
; Joined path conditions
; [eval] m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[pre]((unfolding acc(isize(_1), write) in _1.val_int)), old[pre]((unfolding acc(isize(_2), write) in _2.val_int)))
; [eval] old[pre]((unfolding acc(isize(_1), write) in _1.val_int))
; [eval] (unfolding acc(isize(_1), write) in _1.val_int)
(set-option :timeout 0)
(push) ; 6
(pop) ; 6
; Joined path conditions
; [eval] old[pre]((unfolding acc(isize(_2), write) in _2.val_int))
; [eval] (unfolding acc(isize(_2), write) in _2.val_int)
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] 0 <= _pure_1
; [eval] 0 <= _pure_2
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@162@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@162@01))))
(pop) ; 6
; Joined path conditions
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@162@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@162@01))))
(push) ; 6
(assert (not (=
  $t@264@01
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@162@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@162@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  $t@264@01
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapToInt ($Snap.first $t@162@01)) ($SortWrappers.$SnapToInt ($Snap.second $t@162@01)))))
; [eval] (unfolding acc(isize(_0), write) in _0.val_int) >= 0
; [eval] (unfolding acc(isize(_0), write) in _0.val_int)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@166@01 ret@262@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@169@01 ret@262@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _2@139@01 ret@262@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _1@138@01 ret@262@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
; Joined path conditions
; [exec]
; assert true
; [exec]
; exhale acc(isize(_0), write)
; [exec]
; label end_of_method
(pop) ; 5
; [eval] !__t0
; [then-branch: 21 | False | dead]
; [else-branch: 21 | True | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 21 | True]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 17 | $t@181@01 == 0]
(assert (= $t@181@01 0))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 12 | $t@183@01 == 0]
(assert (= $t@183@01 0))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- m_Ackermann_function$$main$opensqu$0$closesqu$ ----------
(declare-const _0@267@01 $Ref)
(declare-const _0@268@01 $Ref)
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
(declare-const __t0@269@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@270@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@271@01 Bool)
; [exec]
; var __t3: Bool
(declare-const __t3@272@01 Bool)
; [exec]
; var __t4: Bool
(declare-const __t4@273@01 Bool)
; [exec]
; var __t5: Bool
(declare-const __t5@274@01 Bool)
; [exec]
; var __t6: Bool
(declare-const __t6@275@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@276@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@277@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@278@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@279@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@280@01 $Ref)
; [exec]
; var _6: Int
(declare-const _6@281@01 Int)
; [exec]
; var _7: Int
(declare-const _7@282@01 Int)
; [exec]
; var _12: Ref
(declare-const _12@283@01 $Ref)
; [exec]
; var _13: Ref
(declare-const _13@284@01 $Ref)
; [exec]
; var _t15: Ref
(declare-const _t15@285@01 $Ref)
; [exec]
; var _t16: Ref
(declare-const _t16@286@01 $Ref)
; [exec]
; var _t18: Ref
(declare-const _t18@287@01 $Ref)
; [exec]
; var _t19: Ref
(declare-const _t19@288@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; __t3 := false
; [exec]
; __t4 := false
; [exec]
; __t5 := false
; [exec]
; inhale true
(declare-const $t@289@01 $Snap)
(assert (= $t@289@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@290@01 $Snap)
(assert (= $t@290@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@291@01 $Snap)
(assert (= $t@291@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@292@01 $Snap)
(assert (= $t@292@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label pre
; [exec]
; label bb0
; [exec]
; __t0 := true
; [exec]
; label l0
; [exec]
; _t15 := builtin$havoc_ref()
(declare-const ret@293@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(isize(_t15), write)
(declare-const $t@294@01 Int)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _t16 := builtin$havoc_ref()
(declare-const ret@295@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(isize(_t16), write)
(declare-const $t@296@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@293@01 ret@295@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert true
; [exec]
; assert true
; [exec]
; exhale acc(isize(_t15), write) && acc(isize(_t16), write)
; [exec]
; _1 := builtin$havoc_ref()
(declare-const ret@297@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@298@01 $Snap)
(assert (= $t@298@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(isize(_1), write)
(declare-const $t@299@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@300@01 $Snap)
(assert (= $t@300@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (unfolding acc(isize(_1), write) in
;     _1.val_int ==
;     m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l0](3),
;     old[l0](4)) &&
;     _1.val_int >= 0)
(declare-const $t@301@01 $Snap)
(assert (= $t@301@01 $Snap.unit))
; [eval] (unfolding acc(isize(_1), write) in _1.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l0](3), old[l0](4)) && _1.val_int >= 0)
(set-option :timeout 0)
(push) ; 3
(assert (isize%trigger ($SortWrappers.IntTo$Snap $t@299@01) ret@297@01))
(assert (not (= ret@297@01 $Ref.null)))
; [eval] _1.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l0](3), old[l0](4)) && _1.val_int >= 0
; [eval] _1.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l0](3), old[l0](4))
; [eval] m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l0](3), old[l0](4))
; [eval] old[l0](3)
; [eval] old[l0](4)
(push) ; 4
; [eval] 0 <= _pure_1
; [eval] 0 <= _pure_2
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) 3 4))
(pop) ; 4
; Joined path conditions
(assert (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) 3 4))
(push) ; 4
; [then-branch: 22 | $t@299@01 != m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), 3, 4) | live]
; [else-branch: 22 | $t@299@01 == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), 3, 4) | live]
(push) ; 5
; [then-branch: 22 | $t@299@01 != m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), 3, 4)]
(assert (not
  (=
    $t@299@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) 3 4))))
(pop) ; 5
(push) ; 5
; [else-branch: 22 | $t@299@01 == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), 3, 4)]
(assert (=
  $t@299@01
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) 3 4)))
; [eval] _1.val_int >= 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    $t@299@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) 3 4))
  (not
    (=
      $t@299@01
      (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) 3 4)))))
(pop) ; 3
; Joined path conditions
(assert (and
  (isize%trigger ($SortWrappers.IntTo$Snap $t@299@01) ret@297@01)
  (not (= ret@297@01 $Ref.null))
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) 3 4)
  (or
    (=
      $t@299@01
      (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) 3 4))
    (not
      (=
        $t@299@01
        (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) 3 4))))))
(assert (and
  (=
    $t@299@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) 3 4))
  (>= $t@299@01 0)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l1
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l2
; [exec]
; _t18 := builtin$havoc_ref()
(declare-const ret@302@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(isize(_t18), write)
(declare-const $t@303@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@297@01 ret@302@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _t19 := builtin$havoc_ref()
(declare-const ret@304@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(isize(_t19), write)
(declare-const $t@305@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@302@01 ret@304@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@297@01 ret@304@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert true
; [exec]
; assert true
; [exec]
; exhale acc(isize(_t18), write) && acc(isize(_t19), write)
; [exec]
; _2 := builtin$havoc_ref()
(declare-const ret@306@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@307@01 $Snap)
(assert (= $t@307@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(isize(_2), write)
(declare-const $t@308@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@297@01 ret@306@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@309@01 $Snap)
(assert (= $t@309@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (unfolding acc(isize(_2), write) in
;     _2.val_int ==
;     m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l2](3),
;     old[l2](4)) &&
;     _2.val_int >= 0)
(declare-const $t@310@01 $Snap)
(assert (= $t@310@01 $Snap.unit))
; [eval] (unfolding acc(isize(_2), write) in _2.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l2](3), old[l2](4)) && _2.val_int >= 0)
(set-option :timeout 0)
(push) ; 3
(assert (isize%trigger ($SortWrappers.IntTo$Snap $t@308@01) ret@306@01))
(assert (not (= ret@306@01 $Ref.null)))
; [eval] _2.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l2](3), old[l2](4)) && _2.val_int >= 0
; [eval] _2.val_int == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l2](3), old[l2](4))
; [eval] m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(old[l2](3), old[l2](4))
; [eval] old[l2](3)
; [eval] old[l2](4)
(push) ; 4
; [eval] 0 <= _pure_1
; [eval] 0 <= _pure_2
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 23 | $t@308@01 != m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), 3, 4) | live]
; [else-branch: 23 | $t@308@01 == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), 3, 4) | live]
(push) ; 5
; [then-branch: 23 | $t@308@01 != m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), 3, 4)]
(assert (not
  (=
    $t@308@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) 3 4))))
(pop) ; 5
(push) ; 5
; [else-branch: 23 | $t@308@01 == m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$((_, (_, _)), 3, 4)]
(assert (=
  $t@308@01
  (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) 3 4)))
; [eval] _2.val_int >= 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    $t@308@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) 3 4))
  (not
    (=
      $t@308@01
      (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) 3 4)))))
(pop) ; 3
; Joined path conditions
(assert (and
  (isize%trigger ($SortWrappers.IntTo$Snap $t@308@01) ret@306@01)
  (not (= ret@306@01 $Ref.null))
  (or
    (=
      $t@308@01
      (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) 3 4))
    (not
      (=
        $t@308@01
        (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) 3 4))))))
(assert (and
  (=
    $t@308@01
    (m_Ackermann_function$$ack_pure$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) 3 4))
  (>= $t@308@01 0)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; _6 := builtin$havoc_int()
(declare-const ret@311@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@312@01 $Snap)
(assert (= $t@312@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(isize(_1), write)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; _6 := _1.val_int
; [exec]
; label l4
; [exec]
; _7 := builtin$havoc_int()
(declare-const ret@313@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@314@01 $Snap)
(assert (= $t@314@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(isize(_2), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@297@01 ret@306@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; _7 := _2.val_int
; [exec]
; label l5
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@315@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_bool, write)
(declare-const $t@316@01 Bool)
(assert (not (= ret@315@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _5.val_bool := _6 == _7
; [eval] _6 == _7
(declare-const val_bool@317@01 Bool)
(assert (= val_bool@317@01 (= $t@299@01 $t@308@01)))
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@318@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_4.val_bool, write)
(declare-const $t@319@01 Bool)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@315@01 ret@318@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@318@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _4.val_bool := !_5.val_bool
; [eval] !_5.val_bool
(declare-const val_bool@320@01 Bool)
(assert (= val_bool@320@01 (not val_bool@317@01)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@315@01 ret@318@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; __t6 := _4.val_bool
; [eval] !__t6
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not val_bool@320@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not val_bool@320@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 24 | !(val_bool@320@01) | live]
; [else-branch: 24 | val_bool@320@01 | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 24 | !(val_bool@320@01)]
(assert (not val_bool@320@01))
; [exec]
; label l7
; [exec]
; label bb5
; [exec]
; __t4 := true
; [exec]
; _3 := builtin$havoc_ref()
(declare-const ret@321@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_3), write)
(declare-const $t@322@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _13 := builtin$havoc_ref()
(declare-const ret@323@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_13.val_int, write)
(declare-const $t@324@01 Int)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@306@01 ret@323@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@297@01 ret@323@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@323@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _13.val_int := _1.val_int
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@306@01 ret@323@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@297@01 ret@323@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l8
; [exec]
; label l9
; [exec]
; fold acc(isize(_13), write)
(assert (isize%trigger ($SortWrappers.IntTo$Snap $t@299@01) ret@323@01))
; [exec]
; assert true
; [exec]
; exhale acc(isize(_13), write)
; [exec]
; _12 := builtin$havoc_ref()
(declare-const ret@325@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@326@01 $Snap)
(assert (= $t@326@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_12), write)
(declare-const $t@327@01 $Snap)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@321@01 ret@325@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@328@01 $Snap)
(assert (= $t@328@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@329@01 $Snap)
(assert (= $t@329@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l10
; [exec]
; label bb6
; [exec]
; __t5 := true
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@330@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_0), write)
(declare-const $t@331@01 $Snap)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@325@01 ret@330@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@321@01 ret@330@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(tuple0$(_0), write)
; [exec]
; label end_of_method
(pop) ; 3
; [eval] !!__t6
; [eval] !__t6
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not val_bool@320@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | val_bool@320@01 | dead]
; [else-branch: 25 | !(val_bool@320@01) | live]
(set-option :timeout 0)
(push) ; 3
; [else-branch: 25 | !(val_bool@320@01)]
(assert (not val_bool@320@01))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- builtin$havoc_int ----------
(declare-const ret@332@01 Int)
(declare-const ret@333@01 Int)
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
(declare-const ret@334@01 $Ref)
(declare-const ret@335@01 $Ref)
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
(declare-const ret@336@01 Bool)
(declare-const ret@337@01 Bool)
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
