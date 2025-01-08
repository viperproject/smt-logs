(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:14:50
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
(declare-fun contains ($Snap $Ref Int Int) Bool)
(declare-fun contains%limited ($Snap $Ref Int Int) Bool)
(declare-fun contains%stateless ($Ref Int Int) Bool)
(declare-fun contains%precondition ($Snap $Ref Int Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun i32%trigger ($Snap $Ref) Bool)
(declare-fun isize%trigger ($Snap $Ref) Bool)
(declare-fun BoxyList%trigger ($Snap $Ref) Bool)
(declare-fun BoxList%trigger ($Snap $Ref) Bool)
(declare-fun BoxListSome%trigger ($Snap $Ref) Bool)
(declare-fun List%trigger ($Snap $Ref) Bool)
(declare-fun ref$BoxList%trigger ($Snap $Ref) Bool)
(declare-fun ref$List%trigger ($Snap $Ref) Bool)
(declare-fun tuple0$%trigger ($Snap $Ref) Bool)
(declare-fun tuple3$i32$i32$i32%trigger ($Snap $Ref) Bool)
(declare-fun DeadBorrowToken$%trigger ($Snap Int) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION contains----------
(declare-fun _pure_1@0@00 () $Ref)
(declare-fun _pure_2@1@00 () Int)
(declare-fun _pure_3@2@00 () Int)
(declare-fun result@3@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@0@00 $Ref) (_pure_2@1@00 Int) (_pure_3@2@00 Int)) (!
  (=
    (contains%limited s@$ _pure_1@0@00 _pure_2@1@00 _pure_3@2@00)
    (contains s@$ _pure_1@0@00 _pure_2@1@00 _pure_3@2@00))
  :pattern ((contains s@$ _pure_1@0@00 _pure_2@1@00 _pure_3@2@00))
  :qid |quant-u-5086|)))
(assert (forall ((s@$ $Snap) (_pure_1@0@00 $Ref) (_pure_2@1@00 Int) (_pure_3@2@00 Int)) (!
  (contains%stateless _pure_1@0@00 _pure_2@1@00 _pure_3@2@00)
  :pattern ((contains%limited s@$ _pure_1@0@00 _pure_2@1@00 _pure_3@2@00))
  :qid |quant-u-5087|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(List(_pure_1), write) in (unfolding acc(BoxList(_pure_1.f$next), write) in _pure_1.f$next.discriminant == 0)) && (unfolding acc(List(_pure_1), write) in (unfolding acc(BoxList(_pure_1.f$next), write) in contains(_pure_1.f$next.enum_Some, _pure_2, _pure_3)))
; [eval] (unfolding acc(List(_pure_1), write) in (unfolding acc(BoxList(_pure_1.f$next), write) in _pure_1.f$next.discriminant == 0))
(set-option :timeout 0)
(push) ; 2
(assert (List%trigger s@$ _pure_1@0@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= _pure_1@0@00 $Ref.null)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
; [eval] (unfolding acc(BoxList(_pure_1.f$next), write) in _pure_1.f$next.discriminant == 0)
(push) ; 3
(assert (BoxList%trigger ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
(assert (=
  ($Snap.first ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second s@$)))
    ($Snap.second ($Snap.first ($Snap.second s@$))))))
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$)))) $Snap.unit))
; [eval] 0 <= self.discriminant
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second s@$))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))))
  $Snap.unit))
; [eval] self.discriminant <= 1
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second s@$)))) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))))))))
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  _pure_1@0@00
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] _pure_1.f$next.discriminant == 0
(pop) ; 3
; Joined path conditions
(assert (and
  (BoxList%trigger ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
  (=
    ($Snap.first ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.first ($Snap.second s@$)))
      ($Snap.second ($Snap.first ($Snap.second s@$)))))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))
  (=
    ($Snap.second ($Snap.first ($Snap.second s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$))))
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))))
  (= ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$)))) $Snap.unit)
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second s@$)))))
  (=
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))))))
  (=
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))))
    $Snap.unit)
  (<=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second s@$))))
    1)
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))))))))
(pop) ; 2
; Joined path conditions
(assert (and
  (List%trigger s@$ _pure_1@0@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (not (= _pure_1@0@00 $Ref.null))
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))
  (BoxList%trigger ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
  (=
    ($Snap.first ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.first ($Snap.second s@$)))
      ($Snap.second ($Snap.first ($Snap.second s@$)))))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))
  (=
    ($Snap.second ($Snap.first ($Snap.second s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$))))
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))))
  (= ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$)))) $Snap.unit)
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second s@$)))))
  (=
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))))))
  (=
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))))
    $Snap.unit)
  (<=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second s@$))))
    1)
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))))))))
(set-option :timeout 0)
(push) ; 2
; [then-branch: 0 | First:(First:(Second:(s@$))) != 0 | live]
; [else-branch: 0 | First:(First:(Second:(s@$))) == 0 | live]
(push) ; 3
; [then-branch: 0 | First:(First:(Second:(s@$))) != 0]
(assert (not
  (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second s@$)))) 0)))
(pop) ; 3
(push) ; 3
; [else-branch: 0 | First:(First:(Second:(s@$))) == 0]
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second s@$)))) 0))
; [eval] (unfolding acc(List(_pure_1), write) in (unfolding acc(BoxList(_pure_1.f$next), write) in contains(_pure_1.f$next.enum_Some, _pure_2, _pure_3)))
(push) ; 4
; [eval] (unfolding acc(BoxList(_pure_1.f$next), write) in contains(_pure_1.f$next.enum_Some, _pure_2, _pure_3))
(push) ; 5
; [eval] 0 <= self.discriminant
; [eval] self.discriminant <= 1
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  _pure_1@0@00
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] contains(_pure_1.f$next.enum_Some, _pure_2, _pure_3)
(set-option :timeout 0)
(push) ; 6
(assert (contains%precondition ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))))) _pure_2@1@00 _pure_3@2@00))
(pop) ; 6
; Joined path conditions
(assert (contains%precondition ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))))) _pure_2@1@00 _pure_3@2@00))
(pop) ; 5
; Joined path conditions
(assert (contains%precondition ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))))) _pure_2@1@00 _pure_3@2@00))
(pop) ; 4
; Joined path conditions
(assert (contains%precondition ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))))) _pure_2@1@00 _pure_3@2@00))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second s@$)))) 0)
  (and
    (=
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second s@$))))
      0)
    (contains%precondition ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))))) _pure_2@1@00 _pure_3@2@00))))
(assert (or
  (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second s@$)))) 0)
  (not
    (=
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second s@$))))
      0))))
(assert (=
  result@3@00
  (and
    (=
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second s@$))))
      0)
    (contains ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))))) _pure_2@1@00 _pure_3@2@00))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@0@00 $Ref) (_pure_2@1@00 Int) (_pure_3@2@00 Int)) (!
  (=>
    (contains%precondition s@$ _pure_1@0@00 _pure_2@1@00 _pure_3@2@00)
    (=
      (contains s@$ _pure_1@0@00 _pure_2@1@00 _pure_3@2@00)
      (and
        (=
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second s@$))))
          0)
        (contains%limited ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))))) _pure_2@1@00 _pure_3@2@00))))
  :pattern ((contains s@$ _pure_1@0@00 _pure_2@1@00 _pure_3@2@00))
  :pattern ((contains%stateless _pure_1@0@00 _pure_2@1@00 _pure_3@2@00) (List%trigger s@$ _pure_1@0@00))
  :qid |quant-u-5088|)))
(assert (forall ((s@$ $Snap) (_pure_1@0@00 $Ref) (_pure_2@1@00 Int) (_pure_3@2@00 Int)) (!
  (=>
    (and
      (contains%precondition s@$ _pure_1@0@00 _pure_2@1@00 _pure_3@2@00)
      (=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second s@$))))
        0))
    (contains%precondition ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))))) _pure_2@1@00 _pure_3@2@00))
  :pattern ((contains s@$ _pure_1@0@00 _pure_2@1@00 _pure_3@2@00))
  :qid |quant-u-5089|)))
; ---------- i32 ----------
(declare-const self@4@00 $Ref)
(push) ; 1
(declare-const $t@5@00 Int)
(assert (not (= self@4@00 $Ref.null)))
(pop) ; 1
; ---------- isize ----------
(declare-const self@6@00 $Ref)
(push) ; 1
(declare-const $t@7@00 Int)
(assert (not (= self@6@00 $Ref.null)))
(pop) ; 1
; ---------- BoxyList ----------
(declare-const self@8@00 $Ref)
(push) ; 1
(declare-const $t@9@00 $Snap)
(assert (= $t@9@00 ($Snap.combine ($Snap.first $t@9@00) ($Snap.second $t@9@00))))
(assert (not (= self@8@00 $Ref.null)))
(pop) ; 1
; ---------- BoxList ----------
(declare-const self@10@00 $Ref)
(push) ; 1
(declare-const $t@11@00 $Snap)
(assert (= $t@11@00 ($Snap.combine ($Snap.first $t@11@00) ($Snap.second $t@11@00))))
(assert (not (= self@10@00 $Ref.null)))
(assert (=
  ($Snap.second $t@11@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@11@00))
    ($Snap.second ($Snap.second $t@11@00)))))
(assert (= ($Snap.first ($Snap.second $t@11@00)) $Snap.unit))
; [eval] 0 <= self.discriminant
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@11@00))))
(assert (=
  ($Snap.second ($Snap.second $t@11@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@11@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@11@00))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@11@00))) $Snap.unit))
; [eval] self.discriminant <= 1
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first $t@11@00)) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@11@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@11@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@11@00)))))))
(pop) ; 1
; ---------- BoxListSome ----------
(declare-const self@12@00 $Ref)
(push) ; 1
(declare-const $t@13@00 $Snap)
(assert (= $t@13@00 ($Snap.combine ($Snap.first $t@13@00) ($Snap.second $t@13@00))))
(assert (not (= self@12@00 $Ref.null)))
(pop) ; 1
; ---------- List ----------
(declare-const self@14@00 $Ref)
(push) ; 1
(declare-const $t@15@00 $Snap)
(assert (= $t@15@00 ($Snap.combine ($Snap.first $t@15@00) ($Snap.second $t@15@00))))
(assert (not (= self@14@00 $Ref.null)))
(assert (=
  ($Snap.second $t@15@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@15@00))
    ($Snap.second ($Snap.second $t@15@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@15@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@15@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@15@00))))))
(pop) ; 1
; ---------- ref$BoxList ----------
(declare-const self@16@00 $Ref)
(push) ; 1
(declare-const $t@17@00 $Snap)
(assert (= $t@17@00 ($Snap.combine ($Snap.first $t@17@00) ($Snap.second $t@17@00))))
(assert (not (= self@16@00 $Ref.null)))
(pop) ; 1
; ---------- ref$List ----------
(declare-const self@18@00 $Ref)
(push) ; 1
(declare-const $t@19@00 $Snap)
(assert (= $t@19@00 ($Snap.combine ($Snap.first $t@19@00) ($Snap.second $t@19@00))))
(assert (not (= self@18@00 $Ref.null)))
(pop) ; 1
; ---------- tuple0$ ----------
(declare-const self@20@00 $Ref)
(push) ; 1
(declare-const $t@21@00 $Snap)
(assert (= $t@21@00 $Snap.unit))
(pop) ; 1
; ---------- tuple3$i32$i32$i32 ----------
(declare-const self@22@00 $Ref)
(push) ; 1
(declare-const $t@23@00 $Snap)
(assert (= $t@23@00 ($Snap.combine ($Snap.first $t@23@00) ($Snap.second $t@23@00))))
(assert (not (= self@22@00 $Ref.null)))
(assert (=
  ($Snap.second $t@23@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@23@00))
    ($Snap.second ($Snap.second $t@23@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@23@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@23@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@23@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@23@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@00)))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@23@00)))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@00))))))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@23@00))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@00)))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@00)))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- DeadBorrowToken$ ----------
(declare-const borrow@24@00 Int)
