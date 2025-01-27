(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-26 22:54:30
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
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun $unresolved@8@00 () $Snap)
(assert (forall ((s@$ $Snap)) (!
  (=
    (builtin$unreach_int__$TY$__$int$%limited s@$)
    (builtin$unreach_int__$TY$__$int$ s@$))
  :pattern ((builtin$unreach_int__$TY$__$int$ s@$))
  :qid |quant-u-483|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$unreach_int__$TY$__$int$%stateless  Bool)
  :pattern ((builtin$unreach_int__$TY$__$int$%limited s@$))
  :qid |quant-u-484|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 Int)) (!
  (=
    (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@1@00)
    (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$ s@$ _pure_1@1@00))
  :pattern ((m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$ s@$ _pure_1@1@00))
  :qid |quant-u-485|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 Int)) (!
  (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%stateless _pure_1@1@00)
  :pattern ((m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@1@00))
  :qid |quant-u-486|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 Int)) (!
  (let ((result@2@00 (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@1@00))) (=>
    (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%precondition s@$ _pure_1@1@00)
    (=
      result@2@00
      (mirror$m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$__$TY$__$int$$$int$<Int> _pure_1@1@00))))
  :pattern ((m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@1@00))
  :qid |quant-u-495|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 Int)) (!
  (let ((result@2@00 (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@1@00))) true)
  :pattern ((m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@1@00))
  :qid |quant-u-496|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 Int)) (!
  (let ((result@2@00 (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@1@00))) true)
  :pattern ((m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%limited s@$ _pure_1@1@00))
  :qid |quant-u-497|)))
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
  :qid |quant-u-498|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 Int)) (!
  (=>
    (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%precondition s@$ _pure_1@1@00)
    (ite
      (not (= _pure_1@1@00 (- 0 2147483648)))
      true
      (builtin$unreach_int__$TY$__$int$%precondition $unresolved@8@00)))
  :pattern ((m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$ s@$ _pure_1@1@00))
  :qid |quant-u-499|)))
(assert (forall ((s@$ $Snap)) (!
  (= (read$%limited s@$) (read$ s@$))
  :pattern ((read$ s@$))
  :qid |quant-u-487|)))
(assert (forall ((s@$ $Snap)) (!
  (as read$%stateless  Bool)
  :pattern ((read$%limited s@$))
  :qid |quant-u-488|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@3@00 (read$%limited s@$))) (=>
    (read$%precondition s@$)
    (and (< $Perm.No result@3@00) (< result@3@00 $Perm.Write))))
  :pattern ((read$%limited s@$))
  :qid |quant-u-500|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@3@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-501|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@3@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-502|)))
(assert (forall ((s@$ $Snap)) (!
  (=
    (builtin$unreach_bool__$TY$__$bool$%limited s@$)
    (builtin$unreach_bool__$TY$__$bool$ s@$))
  :pattern ((builtin$unreach_bool__$TY$__$bool$ s@$))
  :qid |quant-u-489|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$unreach_bool__$TY$__$bool$%stateless  Bool)
  :pattern ((builtin$unreach_bool__$TY$__$bool$%limited s@$))
  :qid |quant-u-490|)))
(assert (forall ((s@$ $Snap)) (!
  (=
    (m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%limited s@$)
    (m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$ s@$))
  :pattern ((m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$ s@$))
  :qid |quant-u-491|)))
(assert (forall ((s@$ $Snap)) (!
  (as m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%stateless  Bool)
  :pattern ((m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%limited s@$))
  :qid |quant-u-492|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@5@00 (m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%limited s@$))) (=>
    (m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%precondition s@$)
    (=
      result@5@00
      (as mirror$m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$__$TY$__$int$<Int>  Int))))
  :pattern ((m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%limited s@$))
  :qid |quant-u-503|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@5@00 (m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%limited s@$))) true)
  :pattern ((m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%limited s@$))
  :qid |quant-u-504|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@5@00 (m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%limited s@$))) true)
  :pattern ((m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%limited s@$))
  :qid |quant-u-505|)))
(assert (forall ((s@$ $Snap)) (!
  (=>
    (m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$%precondition s@$)
    (= (m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$ s@$) 1))
  :pattern ((m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$ s@$))
  :qid |quant-u-506|)))
(assert (forall ((s@$ $Snap)) (!
  true
  :pattern ((m_complex_fn$$test2$opensqu$0$closesqu$__$TY$__$int$ s@$))
  :qid |quant-u-507|)))
(assert (forall ((s@$ $Snap)) (!
  (=
    (m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%limited s@$)
    (m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$ s@$))
  :pattern ((m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$ s@$))
  :qid |quant-u-493|)))
(assert (forall ((s@$ $Snap)) (!
  (as m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%stateless  Bool)
  :pattern ((m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%limited s@$))
  :qid |quant-u-494|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@6@00 (m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%limited s@$))) (=>
    (m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%precondition s@$)
    (=
      result@6@00
      (as mirror$m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$__$TY$__$int$<Int>  Int))))
  :pattern ((m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%limited s@$))
  :qid |quant-u-508|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@6@00 (m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%limited s@$))) true)
  :pattern ((m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%limited s@$))
  :qid |quant-u-509|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@6@00 (m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%limited s@$))) true)
  :pattern ((m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%limited s@$))
  :qid |quant-u-510|)))
(assert (forall ((s@$ $Snap)) (!
  (=>
    (m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$%precondition s@$)
    (= (m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$ s@$) 1))
  :pattern ((m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$ s@$))
  :qid |quant-u-511|)))
(assert (forall ((s@$ $Snap)) (!
  true
  :pattern ((m_complex_fn$$test1$opensqu$0$closesqu$__$TY$__$int$ s@$))
  :qid |quant-u-512|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- m_complex_fn$$main$opensqu$0$closesqu$ ----------
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
; inhale true
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 $Snap.unit))
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
; _0 := builtin$havoc_ref()
(declare-const ret@7@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_0), write)
(declare-const $t@8@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label return
; [exec]
; assert (forall i: Int ::
;     { m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$(i) }
;     -1000 < i && i < 1000 ==>
;     !(i == -2147483648) &&
;     m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$(i) == -i)
; [eval] (forall i: Int :: { m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$(i) } -1000 < i && i < 1000 ==> !(i == -2147483648) && m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$(i) == -i)
(declare-const i@9@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] -1000 < i && i < 1000 ==> !(i == -2147483648) && m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$(i) == -i
; [eval] -1000 < i && i < 1000
; [eval] -1000 < i
; [eval] -1000
(push) ; 4
; [then-branch: 0 | !(-1000 < i@9@01) | live]
; [else-branch: 0 | -1000 < i@9@01 | live]
(push) ; 5
; [then-branch: 0 | !(-1000 < i@9@01)]
(assert (not (< (- 0 1000) i@9@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | -1000 < i@9@01]
(assert (< (- 0 1000) i@9@01))
; [eval] i < 1000
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (< (- 0 1000) i@9@01) (not (< (- 0 1000) i@9@01))))
(push) ; 4
; [then-branch: 1 | -1000 < i@9@01 && i@9@01 < 1000 | live]
; [else-branch: 1 | !(-1000 < i@9@01 && i@9@01 < 1000) | live]
(push) ; 5
; [then-branch: 1 | -1000 < i@9@01 && i@9@01 < 1000]
(assert (and (< (- 0 1000) i@9@01) (< i@9@01 1000)))
; [eval] !(i == -2147483648) && m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$(i) == -i
; [eval] !(i == -2147483648)
; [eval] i == -2147483648
; [eval] -2147483648
(push) ; 6
; [then-branch: 2 | i@9@01 == -2147483648 | live]
; [else-branch: 2 | i@9@01 != -2147483648 | live]
(push) ; 7
; [then-branch: 2 | i@9@01 == -2147483648]
(assert (= i@9@01 (- 0 2147483648)))
(pop) ; 7
(push) ; 7
; [else-branch: 2 | i@9@01 != -2147483648]
(assert (not (= i@9@01 (- 0 2147483648))))
; [eval] m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$(i) == -i
; [eval] m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$(i)
(push) ; 8
; [eval] -1000 < _pure_1
; [eval] -1000
; [eval] _pure_1 < 1000
(assert (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) i@9@01))
(pop) ; 8
; Joined path conditions
(assert (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) i@9@01))
; [eval] -i
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (= i@9@01 (- 0 2147483648)))
  (and
    (not (= i@9@01 (- 0 2147483648)))
    (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) i@9@01))))
(assert (or (not (= i@9@01 (- 0 2147483648))) (= i@9@01 (- 0 2147483648))))
(pop) ; 5
(push) ; 5
; [else-branch: 1 | !(-1000 < i@9@01 && i@9@01 < 1000)]
(assert (not (and (< (- 0 1000) i@9@01) (< i@9@01 1000))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and (< (- 0 1000) i@9@01) (< i@9@01 1000))
  (and
    (< (- 0 1000) i@9@01)
    (< i@9@01 1000)
    (=>
      (not (= i@9@01 (- 0 2147483648)))
      (and
        (not (= i@9@01 (- 0 2147483648)))
        (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) i@9@01)))
    (or (not (= i@9@01 (- 0 2147483648))) (= i@9@01 (- 0 2147483648))))))
; Joined path conditions
(assert (or
  (not (and (< (- 0 1000) i@9@01) (< i@9@01 1000)))
  (and (< (- 0 1000) i@9@01) (< i@9@01 1000))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@9@01 Int)) (!
  (and
    (or (< (- 0 1000) i@9@01) (not (< (- 0 1000) i@9@01)))
    (=>
      (and (< (- 0 1000) i@9@01) (< i@9@01 1000))
      (and
        (< (- 0 1000) i@9@01)
        (< i@9@01 1000)
        (=>
          (not (= i@9@01 (- 0 2147483648)))
          (and
            (not (= i@9@01 (- 0 2147483648)))
            (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%precondition ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit $Snap.unit)) i@9@01)))
        (or (not (= i@9@01 (- 0 2147483648))) (= i@9@01 (- 0 2147483648)))))
    (or
      (not (and (< (- 0 1000) i@9@01) (< i@9@01 1000)))
      (and (< (- 0 1000) i@9@01) (< i@9@01 1000))))
  :pattern ((m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) i@9@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/prusti/complex-fn.rs.vpr@191@11@191@147-aux|)))
(assert (forall ((i@9@01 Int)) (!
  (=>
    (and
      (and (< (- 0 1000) i@9@01) (< i@9@01 1000))
      (not (= i@9@01 (- 0 2147483648))))
    (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) i@9@01))
  :pattern ((m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) i@9@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/prusti/complex-fn.rs.vpr@191@11@191@147_precondition|)))
(push) ; 3
(assert (not (forall ((i@9@01 Int)) (!
  (=>
    (and
      (=>
        (and
          (and (< (- 0 1000) i@9@01) (< i@9@01 1000))
          (not (= i@9@01 (- 0 2147483648))))
        (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) i@9@01))
      (and (< (- 0 1000) i@9@01) (< i@9@01 1000)))
    (and
      (not (= i@9@01 (- 0 2147483648)))
      (=
        (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$ ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) i@9@01)
        (- 0 i@9@01))))
  :pattern ((m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) i@9@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/prusti/complex-fn.rs.vpr@191@11@191@147|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@9@01 Int)) (!
  (=>
    (and (< (- 0 1000) i@9@01) (< i@9@01 1000))
    (and
      (not (= i@9@01 (- 0 2147483648)))
      (=
        (m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$ ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) i@9@01)
        (- 0 i@9@01))))
  :pattern ((m_complex_fn$$negative$opensqu$0$closesqu$__$TY$__$int$$$int$%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) i@9@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/prusti/complex-fn.rs.vpr@191@11@191@147|)))
; [exec]
; assert true
; [exec]
; exhale acc(tuple0$(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- builtin$havoc_ref ----------
(declare-const ret@10@01 $Ref)
(declare-const ret@11@01 $Ref)
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
; ---------- builtin$havoc_int ----------
(declare-const ret@12@01 Int)
(declare-const ret@13@01 Int)
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
(declare-const ret@14@01 Bool)
(declare-const ret@15@01 Bool)
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
