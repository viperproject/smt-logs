(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-29 14:42:55
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
(declare-const mirror$m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$__$TY$__$int$<Int> Int)
(declare-fun mirror$m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$__$TY$__$int$$$int$<Int> (Int) Int)
(declare-const mirror$m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$__$TY$__$int$<Int> Int)
; Declaring symbols related to program functions (from program analysis)
(declare-fun builtin$unreach_int__$TY$__$int$ ($Snap) Int)
(declare-fun builtin$unreach_int__$TY$__$int$%limited ($Snap) Int)
(declare-const builtin$unreach_int__$TY$__$int$%stateless Bool)
(declare-fun builtin$unreach_int__$TY$__$int$%precondition ($Snap) Bool)
(declare-fun m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$ ($Snap Int) Int)
(declare-fun m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%limited ($Snap Int) Int)
(declare-fun m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%stateless (Int) Bool)
(declare-fun m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%precondition ($Snap Int) Bool)
(declare-fun read$ ($Snap) $Perm)
(declare-fun read$%limited ($Snap) $Perm)
(declare-const read$%stateless Bool)
(declare-fun read$%precondition ($Snap) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$ ($Snap) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%limited ($Snap) Bool)
(declare-const builtin$unreach_bool__$TY$__$bool$%stateless Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%precondition ($Snap) Bool)
(declare-fun m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$ ($Snap) Int)
(declare-fun m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%limited ($Snap) Int)
(declare-const m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%stateless Bool)
(declare-fun m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%precondition ($Snap) Bool)
(declare-fun m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$ ($Snap) Int)
(declare-fun m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%limited ($Snap) Int)
(declare-const m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%stateless Bool)
(declare-fun m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%precondition ($Snap) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun DeadBorrowToken$%trigger ($Snap Int) Bool)
(declare-fun bool%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_14$3$3014725614321868276%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_15$3$1203968611043826091%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_16$2$1603612527555206389%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_17$3$9286995642513804898%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_18$3$1355352744258041118%trigger ($Snap $Ref) Bool)
(declare-fun i32%trigger ($Snap $Ref) Bool)
(declare-fun m_complex_fn$$A$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_complex_fn$$T$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_14$3$3014725614321868276%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_15$3$1203968611043826091%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_16$2$1603612527555206389%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_17$3$9286995642513804898%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_18$3$1355352744258041118%trigger ($Snap $Ref) Bool)
(declare-fun ref$i32%trigger ($Snap $Ref) Bool)
(declare-fun tuple0$%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$i32$i32%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$m_complex_fn$$A$opensqu$0$closesqu$$_beg_$_end_$i32%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$m_complex_fn$$A$opensqu$0$closesqu$$_beg_$_end_$u32%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$u32$u32%trigger ($Snap $Ref) Bool)
(declare-fun u32%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION builtin$unreach_int__$TY$__$int$----------
(declare-fun result@0@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert false)
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=
    (builtin$unreach_int__$TY$__$int$%limited s@$)
    (builtin$unreach_int__$TY$__$int$ s@$))
  :pattern ((builtin$unreach_int__$TY$__$int$ s@$))
  :qid |quant-u-498|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$unreach_int__$TY$__$int$%stateless  Bool)
  :pattern ((builtin$unreach_int__$TY$__$int$%limited s@$))
  :qid |quant-u-499|)))
; ---------- FUNCTION m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$----------
(declare-fun _pure_1@1@00 () Int)
(declare-fun result@2@00 () Int)
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
; [eval] -1000 < _pure_1
; [eval] -1000
(assert (< (- 0 1000) _pure_1@1@00))
(assert (= ($Snap.second ($Snap.second s@$)) $Snap.unit))
; [eval] _pure_1 < 1000
(assert (< _pure_1@1@00 1000))
(declare-const $t@7@00 $Snap)
(assert (= $t@7@00 ($Snap.combine ($Snap.first $t@7@00) ($Snap.second $t@7@00))))
(assert (= ($Snap.first $t@7@00) $Snap.unit))
(assert (= ($Snap.second $t@7@00) $Snap.unit))
; [eval] result == mirror$m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$__$TY$__$int$$$int$(_pure_1)
; [eval] mirror$m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$__$TY$__$int$$$int$(_pure_1)
(assert (=
  result@2@00
  (mirror$m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$__$TY$__$int$$$int$<Int> _pure_1@1@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@1@00 Int)) (!
  (=
    (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@1@00)
    (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$ s@$ _pure_1@1@00))
  :pattern ((m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$ s@$ _pure_1@1@00))
  :qid |quant-u-500|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 Int)) (!
  (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%stateless _pure_1@1@00)
  :pattern ((m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@1@00))
  :qid |quant-u-501|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 Int)) (!
  (let ((result@2@00 (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@1@00))) (=>
    (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%precondition s@$ _pure_1@1@00)
    (=
      result@2@00
      (mirror$m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$__$TY$__$int$$$int$<Int> _pure_1@1@00))))
  :pattern ((m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@1@00))
  :qid |quant-u-510|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 Int)) (!
  (let ((result@2@00 (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@1@00))) true)
  :pattern ((m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@1@00))
  :qid |quant-u-511|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 Int)) (!
  (let ((result@2@00 (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@1@00))) true)
  :pattern ((m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@1@00))
  :qid |quant-u-512|)))
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
(assert (< (- 0 1000) _pure_1@1@00))
(assert (= ($Snap.second ($Snap.second s@$)) $Snap.unit))
(assert (< _pure_1@1@00 1000))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (_pure_1 != -2147483648 ? -_pure_1 : builtin$unreach_int__$TY$__$int$())
; [eval] _pure_1 != -2147483648
; [eval] -2147483648
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (= _pure_1@1@00 (- 0 2147483648))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= _pure_1@1@00 (- 0 2147483648)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | _pure_1@1@00 != -2147483648 | live]
; [else-branch: 0 | _pure_1@1@00 == -2147483648 | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | _pure_1@1@00 != -2147483648]
(assert (not (= _pure_1@1@00 (- 0 2147483648))))
; [eval] -_pure_1
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (not (= _pure_1@1@00 (- 0 2147483648))))
(assert (= result@2@00 (- 0 _pure_1@1@00)))
(pop) ; 1
(declare-const $unresolved@8@00 $Snap)
(assert (forall ((s@$ $Snap) (_pure_1@1@00 Int)) (!
  (=>
    (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%precondition s@$ _pure_1@1@00)
    (=
      (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$ s@$ _pure_1@1@00)
      (ite
        (not (= _pure_1@1@00 (- 0 2147483648)))
        (- 0 _pure_1@1@00)
        (builtin$unreach_int__$TY$__$int$ $unresolved@8@00))))
  :pattern ((m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$ s@$ _pure_1@1@00))
  :qid |quant-u-513|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 Int)) (!
  (=>
    (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%precondition s@$ _pure_1@1@00)
    (ite
      (not (= _pure_1@1@00 (- 0 2147483648)))
      true
      (builtin$unreach_int__$TY$__$int$%precondition $unresolved@8@00)))
  :pattern ((m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$ s@$ _pure_1@1@00))
  :qid |quant-u-514|)))
; ---------- FUNCTION read$----------
(declare-fun result@3@00 () $Perm)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@9@00 $Snap)
(assert (= $t@9@00 ($Snap.combine ($Snap.first $t@9@00) ($Snap.second $t@9@00))))
(assert (= ($Snap.first $t@9@00) $Snap.unit))
; [eval] none < result
(assert (< $Perm.No result@3@00))
(assert (= ($Snap.second $t@9@00) $Snap.unit))
; [eval] result < write
(assert (< result@3@00 $Perm.Write))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (read$%limited s@$) (read$ s@$))
  :pattern ((read$ s@$))
  :qid |quant-u-502|)))
(assert (forall ((s@$ $Snap)) (!
  (as read$%stateless  Bool)
  :pattern ((read$%limited s@$))
  :qid |quant-u-503|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@3@00 (read$%limited s@$))) (=>
    (read$%precondition s@$)
    (and (< $Perm.No result@3@00) (< result@3@00 $Perm.Write))))
  :pattern ((read$%limited s@$))
  :qid |quant-u-515|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@3@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-516|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@3@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-517|)))
; ---------- FUNCTION builtin$unreach_bool__$TY$__$bool$----------
(declare-fun result@4@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert false)
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=
    (builtin$unreach_bool__$TY$__$bool$%limited s@$)
    (builtin$unreach_bool__$TY$__$bool$ s@$))
  :pattern ((builtin$unreach_bool__$TY$__$bool$ s@$))
  :qid |quant-u-504|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$unreach_bool__$TY$__$bool$%stateless  Bool)
  :pattern ((builtin$unreach_bool__$TY$__$bool$%limited s@$))
  :qid |quant-u-505|)))
; ---------- FUNCTION m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$----------
(declare-fun result@5@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (= ($Snap.second s@$) $Snap.unit))
(declare-const $t@10@00 $Snap)
(assert (= $t@10@00 ($Snap.combine ($Snap.first $t@10@00) ($Snap.second $t@10@00))))
(assert (= ($Snap.first $t@10@00) $Snap.unit))
(assert (= ($Snap.second $t@10@00) $Snap.unit))
; [eval] result == mirror$m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$__$TY$__$int$()
; [eval] mirror$m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$__$TY$__$int$()
(assert (=
  result@5@00
  (as mirror$m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$__$TY$__$int$<Int>  Int)))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=
    (m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%limited s@$)
    (m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$ s@$))
  :pattern ((m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$ s@$))
  :qid |quant-u-506|)))
(assert (forall ((s@$ $Snap)) (!
  (as m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%stateless  Bool)
  :pattern ((m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%limited s@$))
  :qid |quant-u-507|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@5@00 (m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%limited s@$))) (=>
    (m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%precondition s@$)
    (=
      result@5@00
      (as mirror$m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$__$TY$__$int$<Int>  Int))))
  :pattern ((m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%limited s@$))
  :qid |quant-u-518|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@5@00 (m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%limited s@$))) true)
  :pattern ((m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%limited s@$))
  :qid |quant-u-519|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@5@00 (m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%limited s@$))) true)
  :pattern ((m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%limited s@$))
  :qid |quant-u-520|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (= ($Snap.second s@$) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(assert (= result@5@00 1))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=>
    (m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%precondition s@$)
    (= (m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$ s@$) 1))
  :pattern ((m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$ s@$))
  :qid |quant-u-521|)))
(assert (forall ((s@$ $Snap)) (!
  true
  :pattern ((m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$ s@$))
  :qid |quant-u-522|)))
; ---------- FUNCTION m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$----------
(declare-fun result@6@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (= ($Snap.second s@$) $Snap.unit))
(declare-const $t@11@00 $Snap)
(assert (= $t@11@00 ($Snap.combine ($Snap.first $t@11@00) ($Snap.second $t@11@00))))
(assert (= ($Snap.first $t@11@00) $Snap.unit))
(assert (= ($Snap.second $t@11@00) $Snap.unit))
; [eval] result == mirror$m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$__$TY$__$int$()
; [eval] mirror$m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$__$TY$__$int$()
(assert (=
  result@6@00
  (as mirror$m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$__$TY$__$int$<Int>  Int)))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=
    (m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%limited s@$)
    (m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$ s@$))
  :pattern ((m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$ s@$))
  :qid |quant-u-508|)))
(assert (forall ((s@$ $Snap)) (!
  (as m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%stateless  Bool)
  :pattern ((m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%limited s@$))
  :qid |quant-u-509|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@6@00 (m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%limited s@$))) (=>
    (m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%precondition s@$)
    (=
      result@6@00
      (as mirror$m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$__$TY$__$int$<Int>  Int))))
  :pattern ((m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%limited s@$))
  :qid |quant-u-523|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@6@00 (m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%limited s@$))) true)
  :pattern ((m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%limited s@$))
  :qid |quant-u-524|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@6@00 (m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%limited s@$))) true)
  :pattern ((m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%limited s@$))
  :qid |quant-u-525|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (= ($Snap.second s@$) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(assert (= result@6@00 1))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=>
    (m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%precondition s@$)
    (= (m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$ s@$) 1))
  :pattern ((m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$ s@$))
  :qid |quant-u-526|)))
(assert (forall ((s@$ $Snap)) (!
  true
  :pattern ((m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$ s@$))
  :qid |quant-u-527|)))
; ---------- DeadBorrowToken$ ----------
(declare-const borrow@12@00 Int)
; ---------- bool ----------
(declare-const self@13@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@14@00 Bool)
(assert (not (= self@13@00 $Ref.null)))
(pop) ; 1
; ---------- closure$0_1_14$3$3014725614321868276 ----------
(declare-const self@15@00 $Ref)
; ---------- closure$0_1_15$3$1203968611043826091 ----------
(declare-const self@16@00 $Ref)
; ---------- closure$0_1_16$2$1603612527555206389 ----------
(declare-const self@17@00 $Ref)
; ---------- closure$0_1_17$3$9286995642513804898 ----------
(declare-const self@18@00 $Ref)
; ---------- closure$0_1_18$3$1355352744258041118 ----------
(declare-const self@19@00 $Ref)
; ---------- i32 ----------
(declare-const self@20@00 $Ref)
(push) ; 1
(declare-const $t@21@00 Int)
(assert (not (= self@20@00 $Ref.null)))
(pop) ; 1
; ---------- m_complex_fn$$A$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@22@00 $Ref)
(push) ; 1
(declare-const $t@23@00 $Snap)
(assert (= $t@23@00 ($Snap.combine ($Snap.first $t@23@00) ($Snap.second $t@23@00))))
(assert (not (= self@22@00 $Ref.null)))
(pop) ; 1
; ---------- m_complex_fn$$T$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@24@00 $Ref)
(push) ; 1
(declare-const $t@25@00 $Snap)
(assert (= $t@25@00 ($Snap.combine ($Snap.first $t@25@00) ($Snap.second $t@25@00))))
(assert (not (= self@24@00 $Ref.null)))
(assert (=
  ($Snap.second $t@25@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@25@00))
    ($Snap.second ($Snap.second $t@25@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@25@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@25@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@25@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@25@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@00)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@00))))))))
(pop) ; 1
; ---------- ref$closure$0_1_14$3$3014725614321868276 ----------
(declare-const self@26@00 $Ref)
(push) ; 1
(declare-const $t@27@00 $Snap)
(assert (= $t@27@00 ($Snap.combine ($Snap.first $t@27@00) ($Snap.second $t@27@00))))
(assert (not (= self@26@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_15$3$1203968611043826091 ----------
(declare-const self@28@00 $Ref)
(push) ; 1
(declare-const $t@29@00 $Snap)
(assert (= $t@29@00 ($Snap.combine ($Snap.first $t@29@00) ($Snap.second $t@29@00))))
(assert (not (= self@28@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_16$2$1603612527555206389 ----------
(declare-const self@30@00 $Ref)
(push) ; 1
(declare-const $t@31@00 $Snap)
(assert (= $t@31@00 ($Snap.combine ($Snap.first $t@31@00) ($Snap.second $t@31@00))))
(assert (not (= self@30@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_17$3$9286995642513804898 ----------
(declare-const self@32@00 $Ref)
(push) ; 1
(declare-const $t@33@00 $Snap)
(assert (= $t@33@00 ($Snap.combine ($Snap.first $t@33@00) ($Snap.second $t@33@00))))
(assert (not (= self@32@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_18$3$1355352744258041118 ----------
(declare-const self@34@00 $Ref)
(push) ; 1
(declare-const $t@35@00 $Snap)
(assert (= $t@35@00 ($Snap.combine ($Snap.first $t@35@00) ($Snap.second $t@35@00))))
(assert (not (= self@34@00 $Ref.null)))
(pop) ; 1
; ---------- ref$i32 ----------
(declare-const self@36@00 $Ref)
(push) ; 1
(declare-const $t@37@00 $Snap)
(assert (= $t@37@00 ($Snap.combine ($Snap.first $t@37@00) ($Snap.second $t@37@00))))
(assert (not (= self@36@00 $Ref.null)))
(pop) ; 1
; ---------- tuple0$ ----------
(declare-const self@38@00 $Ref)
(push) ; 1
(declare-const $t@39@00 $Snap)
(assert (= $t@39@00 $Snap.unit))
(pop) ; 1
; ---------- tuple2$i32$i32 ----------
(declare-const self@40@00 $Ref)
(push) ; 1
(declare-const $t@41@00 $Snap)
(assert (= $t@41@00 ($Snap.combine ($Snap.first $t@41@00) ($Snap.second $t@41@00))))
(assert (not (= self@40@00 $Ref.null)))
(assert (=
  ($Snap.second $t@41@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@41@00))
    ($Snap.second ($Snap.second $t@41@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@41@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@41@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@41@00))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@41@00)))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- tuple2$m_complex_fn$$A$opensqu$0$closesqu$$_beg_$_end_$i32 ----------
(declare-const self@42@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@43@00 $Snap)
(assert (= $t@43@00 ($Snap.combine ($Snap.first $t@43@00) ($Snap.second $t@43@00))))
(assert (not (= self@42@00 $Ref.null)))
(assert (=
  ($Snap.second $t@43@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@43@00))
    ($Snap.second ($Snap.second $t@43@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@43@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@43@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@43@00))))))
(pop) ; 1
; ---------- tuple2$m_complex_fn$$A$opensqu$0$closesqu$$_beg_$_end_$u32 ----------
(declare-const self@44@00 $Ref)
(push) ; 1
(declare-const $t@45@00 $Snap)
(assert (= $t@45@00 ($Snap.combine ($Snap.first $t@45@00) ($Snap.second $t@45@00))))
(assert (not (= self@44@00 $Ref.null)))
(assert (=
  ($Snap.second $t@45@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@45@00))
    ($Snap.second ($Snap.second $t@45@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@45@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@45@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@45@00))))))
(pop) ; 1
; ---------- tuple2$u32$u32 ----------
(declare-const self@46@00 $Ref)
(push) ; 1
(declare-const $t@47@00 $Snap)
(assert (= $t@47@00 ($Snap.combine ($Snap.first $t@47@00) ($Snap.second $t@47@00))))
(assert (not (= self@46@00 $Ref.null)))
(assert (=
  ($Snap.second $t@47@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@47@00))
    ($Snap.second ($Snap.second $t@47@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@47@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@47@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@47@00))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@47@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@47@00)))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- u32 ----------
(declare-const self@48@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@49@00 $Snap)
(assert (= $t@49@00 ($Snap.combine ($Snap.first $t@49@00) ($Snap.second $t@49@00))))
(assert (not (= self@48@00 $Ref.null)))
(assert (= ($Snap.second $t@49@00) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@49@00))))
(pop) ; 1
