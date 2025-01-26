(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-26 21:21:52
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
(declare-fun read$ ($Snap) $Perm)
(declare-fun read$%limited ($Snap) $Perm)
(declare-const read$%stateless Bool)
(declare-fun read$%precondition ($Snap) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun DeadBorrowToken$%trigger ($Snap Int) Bool)
(declare-fun __TYPARAM__$Y$__%trigger ($Snap $Ref) Bool)
(declare-fun __TYPARAM__$Z$__%trigger ($Snap $Ref) Bool)
(declare-fun bool%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_16$4$15554363898500845002%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_18$4$15554363898500845002%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_22$4$17159879712923064445%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_24$4$17159879712923064445%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_25$3$9695044066608409049%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_26$3$9695044066608409049%trigger ($Snap $Ref) Bool)
(declare-fun i32%trigger ($Snap $Ref) Bool)
(declare-fun m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Y$__$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_16$4$15554363898500845002%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_18$4$15554363898500845002%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_22$4$17159879712923064445%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_24$4$17159879712923064445%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_25$3$9695044066608409049%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_26$3$9695044066608409049%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Y$__$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Y$__$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap $Ref) Bool)
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
  (= (read$%limited s@$) (read$ s@$))
  :pattern ((read$ s@$))
  :qid |quant-u-329|)))
(assert (forall ((s@$ $Snap)) (!
  (as read$%stateless  Bool)
  :pattern ((read$%limited s@$))
  :qid |quant-u-330|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) (=>
    (read$%precondition s@$)
    (and (< $Perm.No result@0@00) (< result@0@00 $Perm.Write))))
  :pattern ((read$%limited s@$))
  :qid |quant-u-331|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-332|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-333|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- m_generics_basic_3_6$$test3$opensqu$0$closesqu$ ----------
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
; var _old$pre$0: Ref
(declare-const _old$pre$0@4@01 $Ref)
; [exec]
; var _1: Ref
(declare-const _1@5@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@6@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@7@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; inhale acc(_1.val_ref, write) &&
;   acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_(_1.val_ref), write)
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 ($Snap.combine ($Snap.first $t@8@01) ($Snap.second $t@8@01))))
(assert (not (= _1@5@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@9@01 $Snap)
(assert (= $t@9@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_(_1.val_ref), write) in
;     (unfolding acc(i32(_1.val_ref.f$i), write) in
;       _1.val_ref.f$i.val_int >= 9000))
(declare-const $t@11@01 $Snap)
(assert (= $t@11@01 $Snap.unit))
; [eval] (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_(_1.val_ref), write) in (unfolding acc(i32(_1.val_ref.f$i), write) in _1.val_ref.f$i.val_int >= 9000))
(set-option :timeout 0)
(push) ; 3
(assert (m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap.second $t@8@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@8@01))))
(assert (=
  ($Snap.second $t@8@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@8@01))
    ($Snap.second ($Snap.second $t@8@01)))))
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@8@01)) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second $t@8@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@8@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@8@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@8@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))))
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@8@01)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(i32(_1.val_ref.f$i), write) in _1.val_ref.f$i.val_int >= 9000)
(set-option :timeout 0)
(push) ; 4
(assert (i32%trigger ($Snap.first ($Snap.second ($Snap.second $t@8@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@8@01)))))
(assert (not
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@8@01))) $Ref.null)))
; [eval] _1.val_ref.f$i.val_int >= 9000
(pop) ; 4
; Joined path conditions
(assert (and
  (i32%trigger ($Snap.first ($Snap.second ($Snap.second $t@8@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@8@01))))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@8@01)))
      $Ref.null))))
(pop) ; 3
; Joined path conditions
(assert (and
  (m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap.second $t@8@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@8@01)))
  (=
    ($Snap.second $t@8@01)
    ($Snap.combine
      ($Snap.first ($Snap.second $t@8@01))
      ($Snap.second ($Snap.second $t@8@01))))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@8@01)) $Ref.null))
  (=
    ($Snap.second ($Snap.second $t@8@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@8@01)))
      ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))
  (=
    ($Snap.second ($Snap.second ($Snap.second $t@8@01)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@8@01))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))
  (i32%trigger ($Snap.first ($Snap.second ($Snap.second $t@8@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@8@01))))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@8@01)))
      $Ref.null))))
(assert (>=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@8@01))))
  9000))
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
; _3 := builtin$havoc_ref()
(declare-const ret@12@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_ref, write)
(declare-const $t@13@01 $Ref)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@5@01 ret@12@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@12@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _3.val_ref := _1.val_ref
(declare-const val_ref@14@01 $Ref)
(assert (= val_ref@14@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@8@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@5@01 ret@12@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; label l1
; [exec]
; unfold acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_(_3.val_ref), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@8@01)) val_ref@14@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= val_ref@14@01 $Ref.null)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@8@01)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap.second $t@8@01) val_ref@14@01))
; [exec]
; unfold acc(i32(_3.val_ref.f$i), write)
; State saturation: after unfold
(check-sat)
; unknown
; [exec]
; assert _3.val_ref.f$i.val_int >= 9000
; [eval] _3.val_ref.f$i.val_int >= 9000
; [exec]
; fold acc(i32(_3.val_ref.f$i), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@8@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_(_3.val_ref), write)
(assert (m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap.combine
  ($Snap.first ($Snap.second $t@8@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@8@01)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@8@01))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))) val_ref@14@01))
; [exec]
; assert true
; [exec]
; exhale acc(_3.val_ref, write) &&
;   acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_(_3.val_ref), write)
; [exec]
; _2 := builtin$havoc_ref()
(declare-const ret@15@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_(old[l1](_3.val_ref)), write)
; [eval] old[l1](_3.val_ref)
(declare-const $t@16@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_2), write)
(declare-const $t@17@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@18@01 $Snap)
(assert (= $t@18@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_(old[l1](_3.val_ref)), write) in
;     (unfolding acc(i32(old[l1](_3.val_ref).f$i), write) in
;       old[l1](_3.val_ref).f$i.val_int >= 8000))
(declare-const $t@19@01 $Snap)
(assert (= $t@19@01 $Snap.unit))
; [eval] (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_(old[l1](_3.val_ref)), write) in (unfolding acc(i32(old[l1](_3.val_ref).f$i), write) in old[l1](_3.val_ref).f$i.val_int >= 8000))
; [eval] old[l1](_3.val_ref)
(set-option :timeout 0)
(push) ; 3
; [eval] old[l1](_3.val_ref)
(assert (m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_%trigger $t@16@01 val_ref@14@01))
(assert (= $t@16@01 ($Snap.combine ($Snap.first $t@16@01) ($Snap.second $t@16@01))))
(assert (=
  ($Snap.second $t@16@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@16@01))
    ($Snap.second ($Snap.second $t@16@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@16@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@16@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@16@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@16@01)))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(i32(old[l1](_3.val_ref).f$i), write) in old[l1](_3.val_ref).f$i.val_int >= 8000)
; [eval] old[l1](_3.val_ref)
(set-option :timeout 0)
(push) ; 4
; [eval] old[l1](_3.val_ref)
(assert (i32%trigger ($Snap.first ($Snap.second $t@16@01)) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@16@01))))
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@16@01)) $Ref.null)))
; [eval] old[l1](_3.val_ref).f$i.val_int >= 8000
; [eval] old[l1](_3.val_ref)
(pop) ; 4
; Joined path conditions
(assert (and
  (i32%trigger ($Snap.first ($Snap.second $t@16@01)) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@16@01)))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@16@01)) $Ref.null))))
(pop) ; 3
; Joined path conditions
(assert (and
  (m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_%trigger $t@16@01 val_ref@14@01)
  (= $t@16@01 ($Snap.combine ($Snap.first $t@16@01) ($Snap.second $t@16@01)))
  (=
    ($Snap.second $t@16@01)
    ($Snap.combine
      ($Snap.first ($Snap.second $t@16@01))
      ($Snap.second ($Snap.second $t@16@01))))
  (=
    ($Snap.second ($Snap.second $t@16@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@16@01)))
      ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))
  (i32%trigger ($Snap.first ($Snap.second $t@16@01)) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@16@01)))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@16@01)) $Ref.null))))
(assert (>= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@16@01))) 8000))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l2
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@20@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_0), write)
(declare-const $t@21@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@15@01 ret@20@01)))
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
; label return
; [exec]
; _old$pre$0 := _1.val_ref
(declare-const _old$pre$0@22@01 $Ref)
(assert (= _old$pre$0@22@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@8@01))))
; [exec]
; assert (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_(_old$pre$0), write) in
;     (unfolding acc(i32(_old$pre$0.f$i), write) in _old$pre$0.f$i.val_int)) >=
;   8001
; [eval] (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_(_old$pre$0), write) in (unfolding acc(i32(_old$pre$0.f$i), write) in _old$pre$0.f$i.val_int)) >= 8001
; [eval] (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_(_old$pre$0), write) in (unfolding acc(i32(_old$pre$0.f$i), write) in _old$pre$0.f$i.val_int))
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (= val_ref@14@01 _old$pre$0@22@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_%trigger $t@16@01 _old$pre$0@22@01))
(assert (not (= _old$pre$0@22@01 $Ref.null)))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@16@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@16@01)))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(i32(_old$pre$0.f$i), write) in _old$pre$0.f$i.val_int)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
(assert (and
  (m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_%trigger $t@16@01 _old$pre$0@22@01)
  (not (= _old$pre$0@22@01 $Ref.null))))
(push) ; 3
(assert (not (>= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@16@01))) 8001)))
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
(assert (not (= ret@20@01 ret@15@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $t@17@01 $t@21@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $t@21@01 $t@17@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_(_old$pre$0), write) in (unfolding acc(i32(_old$pre$0.f$i), write) in _old$pre$0.f$i.val_int)) >= 8001
; [eval] (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_(_old$pre$0), write) in (unfolding acc(i32(_old$pre$0.f$i), write) in _old$pre$0.f$i.val_int))
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (= val_ref@14@01 _old$pre$0@22@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@16@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@16@01)))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@16@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@16@01)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@15@01 ret@20@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.first ($Snap.second $t@16@01))
    ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.second ($Snap.second ($Snap.second $t@16@01)))
    ($Snap.first ($Snap.second $t@16@01))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= $t@21@01 $t@17@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= $t@17@01 $t@21@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(i32(_old$pre$0.f$i), write) in _old$pre$0.f$i.val_int)
(set-option :timeout 0)
(push) ; 4
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@20@01 ret@15@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= $t@17@01 $t@21@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= $t@21@01 $t@17@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
(set-option :timeout 0)
(push) ; 3
(assert (not (>= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@16@01))) 8001)))
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
(assert (not (= ret@20@01 ret@15@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $t@17@01 $t@21@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $t@21@01 $t@17@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_(_old$pre$0), write) in (unfolding acc(i32(_old$pre$0.f$i), write) in _old$pre$0.f$i.val_int)) >= 8001
; [eval] (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_(_old$pre$0), write) in (unfolding acc(i32(_old$pre$0.f$i), write) in _old$pre$0.f$i.val_int))
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (= val_ref@14@01 _old$pre$0@22@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@16@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@16@01)))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@16@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@16@01)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@20@01 ret@15@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.first ($Snap.second $t@16@01))
    ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.second ($Snap.second ($Snap.second $t@16@01)))
    ($Snap.first ($Snap.second $t@16@01))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= $t@17@01 $t@21@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= $t@21@01 $t@17@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(i32(_old$pre$0.f$i), write) in _old$pre$0.f$i.val_int)
(set-option :timeout 0)
(push) ; 4
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@15@01 ret@20@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= $t@21@01 $t@17@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= $t@17@01 $t@21@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
(set-option :timeout 0)
(push) ; 3
(assert (not (>= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@16@01))) 8001)))
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
(assert (not (= ret@20@01 ret@15@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $t@17@01 $t@21@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $t@21@01 $t@17@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_(_old$pre$0), write) in (unfolding acc(i32(_old$pre$0.f$i), write) in _old$pre$0.f$i.val_int)) >= 8001
; [eval] (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_(_old$pre$0), write) in (unfolding acc(i32(_old$pre$0.f$i), write) in _old$pre$0.f$i.val_int))
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (= val_ref@14@01 _old$pre$0@22@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@16@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@16@01)))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@16@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@16@01)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@15@01 ret@20@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.first ($Snap.second $t@16@01))
    ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.second ($Snap.second ($Snap.second $t@16@01)))
    ($Snap.first ($Snap.second $t@16@01))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= $t@21@01 $t@17@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= $t@17@01 $t@21@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(i32(_old$pre$0.f$i), write) in _old$pre$0.f$i.val_int)
(set-option :timeout 0)
(push) ; 4
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@20@01 ret@15@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= $t@17@01 $t@21@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= $t@21@01 $t@17@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
(set-option :timeout 0)
(push) ; 3
(assert (not (>= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@16@01))) 8001)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- m_generics_basic_3_6$$main$opensqu$0$closesqu$ ----------
(declare-const _0@23@01 $Ref)
(declare-const _0@24@01 $Ref)
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
(declare-const __t0@25@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@26@01 $Snap)
(assert (= $t@26@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@28@01 $Snap)
(assert (= $t@28@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@29@01 $Snap)
(assert (= $t@29@01 $Snap.unit))
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
(declare-const ret@30@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_0), write)
(declare-const $t@31@01 $Snap)
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
(pop) ; 2
(pop) ; 1
; ---------- m_generics_basic_3_6$$test2$opensqu$0$closesqu$ ----------
(declare-const _0@32@01 $Ref)
(declare-const _0@33@01 $Ref)
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
(declare-const __t0@34@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@35@01 Bool)
; [exec]
; var _old$pre$0: Ref
(declare-const _old$pre$0@36@01 $Ref)
; [exec]
; var _1: Ref
(declare-const _1@37@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@38@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@39@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; inhale acc(_1.val_ref, write) &&
;   acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_(_1.val_ref), write)
(declare-const $t@40@01 $Snap)
(assert (= $t@40@01 ($Snap.combine ($Snap.first $t@40@01) ($Snap.second $t@40@01))))
(assert (not (= _1@37@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@41@01 $Snap)
(assert (= $t@41@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@42@01 $Snap)
(assert (= $t@42@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_(_1.val_ref), write) in
;     (unfolding acc(i32(_1.val_ref.f$i), write) in
;       _1.val_ref.f$i.val_int >= 9000))
(declare-const $t@43@01 $Snap)
(assert (= $t@43@01 $Snap.unit))
; [eval] (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_(_1.val_ref), write) in (unfolding acc(i32(_1.val_ref.f$i), write) in _1.val_ref.f$i.val_int >= 9000))
(set-option :timeout 0)
(push) ; 3
(assert (m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_%trigger ($Snap.second $t@40@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@40@01))))
(assert (=
  ($Snap.second $t@40@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@40@01))
    ($Snap.second ($Snap.second $t@40@01)))))
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@40@01)) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second $t@40@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@40@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@40@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@40@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
; [eval] (unfolding acc(i32(_1.val_ref.f$i), write) in _1.val_ref.f$i.val_int >= 9000)
(push) ; 4
(assert (i32%trigger ($Snap.first ($Snap.second ($Snap.second $t@40@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@40@01)))))
(assert (not
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@40@01))) $Ref.null)))
; [eval] _1.val_ref.f$i.val_int >= 9000
(pop) ; 4
; Joined path conditions
(assert (and
  (i32%trigger ($Snap.first ($Snap.second ($Snap.second $t@40@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@40@01))))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@40@01)))
      $Ref.null))))
(pop) ; 3
; Joined path conditions
(assert (and
  (m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_%trigger ($Snap.second $t@40@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@40@01)))
  (=
    ($Snap.second $t@40@01)
    ($Snap.combine
      ($Snap.first ($Snap.second $t@40@01))
      ($Snap.second ($Snap.second $t@40@01))))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@40@01)) $Ref.null))
  (=
    ($Snap.second ($Snap.second $t@40@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@40@01)))
      ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))
  (=
    ($Snap.second ($Snap.second ($Snap.second $t@40@01)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@40@01))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))
  (i32%trigger ($Snap.first ($Snap.second ($Snap.second $t@40@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@40@01))))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@40@01)))
      $Ref.null))))
(assert (>=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@40@01))))
  9000))
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
; _3 := builtin$havoc_ref()
(declare-const ret@44@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_ref, write)
(declare-const $t@45@01 $Ref)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@37@01 ret@44@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@44@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _3.val_ref := _1.val_ref
(declare-const val_ref@46@01 $Ref)
(assert (= val_ref@46@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@40@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@37@01 ret@44@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; label l1
; [exec]
; unfold acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_(_3.val_ref), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@40@01)) val_ref@46@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= val_ref@46@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_%trigger ($Snap.second $t@40@01) val_ref@46@01))
; [exec]
; unfold acc(i32(_3.val_ref.f$i), write)
; State saturation: after unfold
(check-sat)
; unknown
; [exec]
; assert _3.val_ref.f$i.val_int >= 9000
; [eval] _3.val_ref.f$i.val_int >= 9000
; [exec]
; fold acc(i32(_3.val_ref.f$i), write)
; [exec]
; fold acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_(_3.val_ref), write)
(assert (m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_%trigger ($Snap.combine
  ($Snap.first ($Snap.second $t@40@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@40@01)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@40@01))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))) val_ref@46@01))
; [exec]
; assert true
; [exec]
; exhale acc(_3.val_ref, write) &&
;   acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_(_3.val_ref), write)
; [exec]
; _2 := builtin$havoc_ref()
(declare-const ret@47@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_(old[l1](_3.val_ref)), write)
; [eval] old[l1](_3.val_ref)
(declare-const $t@48@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_2), write)
(declare-const $t@49@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@50@01 $Snap)
(assert (= $t@50@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_(old[l1](_3.val_ref)), write) in
;     (unfolding acc(i32(old[l1](_3.val_ref).f$i), write) in
;       old[l1](_3.val_ref).f$i.val_int >= 8000))
(declare-const $t@51@01 $Snap)
(assert (= $t@51@01 $Snap.unit))
; [eval] (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_(old[l1](_3.val_ref)), write) in (unfolding acc(i32(old[l1](_3.val_ref).f$i), write) in old[l1](_3.val_ref).f$i.val_int >= 8000))
; [eval] old[l1](_3.val_ref)
(set-option :timeout 0)
(push) ; 3
; [eval] old[l1](_3.val_ref)
(assert (m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_%trigger $t@48@01 val_ref@46@01))
(assert (= $t@48@01 ($Snap.combine ($Snap.first $t@48@01) ($Snap.second $t@48@01))))
(assert (=
  ($Snap.second $t@48@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@48@01))
    ($Snap.second ($Snap.second $t@48@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@48@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@48@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))
; [eval] (unfolding acc(i32(old[l1](_3.val_ref).f$i), write) in old[l1](_3.val_ref).f$i.val_int >= 8000)
; [eval] old[l1](_3.val_ref)
(push) ; 4
; [eval] old[l1](_3.val_ref)
(assert (i32%trigger ($Snap.first ($Snap.second $t@48@01)) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@48@01))))
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@48@01)) $Ref.null)))
; [eval] old[l1](_3.val_ref).f$i.val_int >= 8000
; [eval] old[l1](_3.val_ref)
(pop) ; 4
; Joined path conditions
(assert (and
  (i32%trigger ($Snap.first ($Snap.second $t@48@01)) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@48@01)))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@48@01)) $Ref.null))))
(pop) ; 3
; Joined path conditions
(assert (and
  (m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_%trigger $t@48@01 val_ref@46@01)
  (= $t@48@01 ($Snap.combine ($Snap.first $t@48@01) ($Snap.second $t@48@01)))
  (=
    ($Snap.second $t@48@01)
    ($Snap.combine
      ($Snap.first ($Snap.second $t@48@01))
      ($Snap.second ($Snap.second $t@48@01))))
  (=
    ($Snap.second ($Snap.second $t@48@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@48@01)))
      ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))
  (i32%trigger ($Snap.first ($Snap.second $t@48@01)) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@48@01)))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@48@01)) $Ref.null))))
(assert (>= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@48@01))) 8000))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l2
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@52@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_0), write)
(declare-const $t@53@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@47@01 ret@52@01)))
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
; label return
; [exec]
; _old$pre$0 := _1.val_ref
(declare-const _old$pre$0@54@01 $Ref)
(assert (= _old$pre$0@54@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@40@01))))
; [exec]
; assert (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_(_old$pre$0), write) in
;     (unfolding acc(i32(_old$pre$0.f$i), write) in _old$pre$0.f$i.val_int)) >=
;   8000
; [eval] (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_(_old$pre$0), write) in (unfolding acc(i32(_old$pre$0.f$i), write) in _old$pre$0.f$i.val_int)) >= 8000
; [eval] (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_(_old$pre$0), write) in (unfolding acc(i32(_old$pre$0.f$i), write) in _old$pre$0.f$i.val_int))
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (= val_ref@46@01 _old$pre$0@54@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_%trigger $t@48@01 _old$pre$0@54@01))
(assert (not (= _old$pre$0@54@01 $Ref.null)))
; [eval] (unfolding acc(i32(_old$pre$0.f$i), write) in _old$pre$0.f$i.val_int)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
(assert (and
  (m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_%trigger $t@48@01 _old$pre$0@54@01)
  (not (= _old$pre$0@54@01 $Ref.null))))
; [exec]
; assert true
; [exec]
; exhale acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_(_old$pre$0), write)
(push) ; 3
(set-option :timeout 10)
(assert (not (= val_ref@46@01 _old$pre$0@54@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(tuple0$(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_generics_basic_3_6$$test1$opensqu$0$closesqu$ ----------
(declare-const _0@55@01 $Ref)
(declare-const _0@56@01 $Ref)
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
(declare-const __t0@57@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@58@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@59@01 Bool)
; [exec]
; var _old$pre$0: Ref
(declare-const _old$pre$0@60@01 $Ref)
; [exec]
; var _1: Ref
(declare-const _1@61@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@62@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; inhale acc(_1.val_ref, write) &&
;   acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Y$__$_end_(_1.val_ref), write)
(declare-const $t@63@01 $Snap)
(assert (= $t@63@01 ($Snap.combine ($Snap.first $t@63@01) ($Snap.second $t@63@01))))
(assert (not (= _1@61@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@64@01 $Snap)
(assert (= $t@64@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@65@01 $Snap)
(assert (= $t@65@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Y$__$_end_(_1.val_ref), write) in
;     (unfolding acc(i32(_1.val_ref.f$i), write) in
;       _1.val_ref.f$i.val_int >= 9000))
(declare-const $t@66@01 $Snap)
(assert (= $t@66@01 $Snap.unit))
; [eval] (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Y$__$_end_(_1.val_ref), write) in (unfolding acc(i32(_1.val_ref.f$i), write) in _1.val_ref.f$i.val_int >= 9000))
(set-option :timeout 0)
(push) ; 3
(assert (m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Y$__$_end_%trigger ($Snap.second $t@63@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@63@01))))
(assert (=
  ($Snap.second $t@63@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@63@01))
    ($Snap.second ($Snap.second $t@63@01)))))
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@63@01)) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second $t@63@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@63@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@63@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@63@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))))
; [eval] (unfolding acc(i32(_1.val_ref.f$i), write) in _1.val_ref.f$i.val_int >= 9000)
(push) ; 4
(assert (i32%trigger ($Snap.first ($Snap.second ($Snap.second $t@63@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@63@01)))))
(assert (not
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@63@01))) $Ref.null)))
; [eval] _1.val_ref.f$i.val_int >= 9000
(pop) ; 4
; Joined path conditions
(assert (and
  (i32%trigger ($Snap.first ($Snap.second ($Snap.second $t@63@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@63@01))))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@63@01)))
      $Ref.null))))
(pop) ; 3
; Joined path conditions
(assert (and
  (m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Y$__$_end_%trigger ($Snap.second $t@63@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@63@01)))
  (=
    ($Snap.second $t@63@01)
    ($Snap.combine
      ($Snap.first ($Snap.second $t@63@01))
      ($Snap.second ($Snap.second $t@63@01))))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@63@01)) $Ref.null))
  (=
    ($Snap.second ($Snap.second $t@63@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@63@01)))
      ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))
  (=
    ($Snap.second ($Snap.second ($Snap.second $t@63@01)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@63@01))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))
  (i32%trigger ($Snap.first ($Snap.second ($Snap.second $t@63@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@63@01))))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@63@01)))
      $Ref.null))))
(assert (>=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@63@01))))
  9000))
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
; _2 := builtin$havoc_ref()
(declare-const ret@67@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_2.tuple_0, write)
(declare-const $t@68@01 $Ref)
(assert (not (= ret@67@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_2.tuple_0.val_int, write)
(declare-const $t@69@01 Int)
(assert (not (= $t@68@01 $Ref.null)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale acc(_2.tuple_1, write)
(declare-const $t@70@01 $Ref)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale acc(_2.tuple_1.val_bool, write)
(declare-const $t@71@01 Bool)
(assert (not (= $t@70@01 $Ref.null)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; unfold acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Y$__$_end_(_1.val_ref), write)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; unfold acc(i32(_1.val_ref.f$i), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= $t@68@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@63@01))))))
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
; _2.tuple_0.val_int := _1.val_ref.f$i.val_int - 1000
; [eval] _1.val_ref.f$i.val_int - 1000
(declare-const val_int@72@01 Int)
(assert (=
  val_int@72@01
  (-
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@63@01))))
    1000)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@63@01))) $t@68@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; _2.tuple_1.val_bool := false
; [exec]
; __t2 := _2.tuple_1.val_bool
; [exec]
; assert !__t2
; [eval] !__t2
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; _1.val_ref.f$i := _2.tuple_0
; [exec]
; label l0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@73@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_0), write)
(declare-const $t@74@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label return
; [exec]
; fold acc(i32(_1.val_ref.f$i), write)
(assert (i32%trigger ($SortWrappers.IntTo$Snap val_int@72@01) $t@68@01))
; [exec]
; fold acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Y$__$_end_(_1.val_ref), write)
(assert (m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Y$__$_end_%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap $t@68@01)
  ($Snap.combine
    ($SortWrappers.IntTo$Snap val_int@72@01)
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@63@01))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@63@01))))
; [exec]
; _old$pre$0 := _1.val_ref
(declare-const _old$pre$0@75@01 $Ref)
(assert (= _old$pre$0@75@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@63@01))))
; [exec]
; assert (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Y$__$_end_(_old$pre$0), write) in
;     (unfolding acc(i32(_old$pre$0.f$i), write) in _old$pre$0.f$i.val_int)) >=
;   8000
; [eval] (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Y$__$_end_(_old$pre$0), write) in (unfolding acc(i32(_old$pre$0.f$i), write) in _old$pre$0.f$i.val_int)) >= 8000
; [eval] (unfolding acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Y$__$_end_(_old$pre$0), write) in (unfolding acc(i32(_old$pre$0.f$i), write) in _old$pre$0.f$i.val_int))
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@63@01)) _old$pre$0@75@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Y$__$_end_%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap $t@68@01)
  ($Snap.combine
    ($SortWrappers.IntTo$Snap val_int@72@01)
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@63@01))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))) _old$pre$0@75@01))
(assert (not (= _old$pre$0@75@01 $Ref.null)))
; [eval] (unfolding acc(i32(_old$pre$0.f$i), write) in _old$pre$0.f$i.val_int)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@63@01))) $t@68@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
(assert (and
  (m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Y$__$_end_%trigger ($Snap.combine
    ($SortWrappers.$RefTo$Snap $t@68@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap val_int@72@01)
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@63@01))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))) _old$pre$0@75@01)
  (not (= _old$pre$0@75@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(assert (not (>= val_int@72@01 8000)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (>= val_int@72@01 8000))
; [exec]
; assert true
; [exec]
; exhale acc(m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Y$__$_end_(_old$pre$0), write)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@63@01)) _old$pre$0@75@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(tuple0$(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- builtin$havoc_ref ----------
(declare-const ret@76@01 $Ref)
(declare-const ret@77@01 $Ref)
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
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- builtin$havoc_bool ----------
(declare-const ret@78@01 Bool)
(declare-const ret@79@01 Bool)
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
(declare-const ret@80@01 Int)
(declare-const ret@81@01 Int)
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
