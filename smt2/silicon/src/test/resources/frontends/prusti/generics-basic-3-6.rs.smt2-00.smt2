(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-04 00:17:44
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
; ---------- FUNCTION read$----------
(declare-fun result@0@00 () $Perm)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(declare-const $t@1@00 $Snap)
(assert (= $t@1@00 ($Snap.combine ($Snap.first $t@1@00) ($Snap.second $t@1@00))))
(assert (= ($Snap.first $t@1@00) $Snap.unit))
; [eval] none < result
(assert (< $Perm.No result@0@00))
(assert (= ($Snap.second $t@1@00) $Snap.unit))
; [eval] result < write
(assert (< result@0@00 $Perm.Write))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (read$%limited s@$) (read$ s@$))
  :pattern ((read$ s@$))
  :qid |quant-u-107|)))
(assert (forall ((s@$ $Snap)) (!
  (as read$%stateless  Bool)
  :pattern ((read$%limited s@$))
  :qid |quant-u-108|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) (=>
    (read$%precondition s@$)
    (and (< $Perm.No result@0@00) (< result@0@00 $Perm.Write))))
  :pattern ((read$%limited s@$))
  :qid |quant-u-109|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-110|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-111|)))
; ---------- DeadBorrowToken$ ----------
(declare-const borrow@2@00 Int)
; ---------- __TYPARAM__$Y$__ ----------
(declare-const self@3@00 $Ref)
; ---------- __TYPARAM__$Z$__ ----------
(declare-const self@4@00 $Ref)
; ---------- bool ----------
(declare-const self@5@00 $Ref)
(push) ; 1
(declare-const $t@6@00 Bool)
(assert (not (= self@5@00 $Ref.null)))
(pop) ; 1
; ---------- closure$0_1_16$4$15554363898500845002 ----------
(declare-const self@7@00 $Ref)
; ---------- closure$0_1_18$4$15554363898500845002 ----------
(declare-const self@8@00 $Ref)
; ---------- closure$0_1_22$4$17159879712923064445 ----------
(declare-const self@9@00 $Ref)
; ---------- closure$0_1_24$4$17159879712923064445 ----------
(declare-const self@10@00 $Ref)
; ---------- closure$0_1_25$3$9695044066608409049 ----------
(declare-const self@11@00 $Ref)
; ---------- closure$0_1_26$3$9695044066608409049 ----------
(declare-const self@12@00 $Ref)
; ---------- i32 ----------
(declare-const self@13@00 $Ref)
(push) ; 1
(declare-const $t@14@00 Int)
(assert (not (= self@13@00 $Ref.null)))
(pop) ; 1
; ---------- m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Y$__$_end_ ----------
(declare-const self@15@00 $Ref)
(push) ; 1
(declare-const $t@16@00 $Snap)
(assert (= $t@16@00 ($Snap.combine ($Snap.first $t@16@00) ($Snap.second $t@16@00))))
(assert (not (= self@15@00 $Ref.null)))
(assert (=
  ($Snap.second $t@16@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@16@00))
    ($Snap.second ($Snap.second $t@16@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@16@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@16@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@16@00))))))
(pop) ; 1
; ---------- m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_ ----------
(declare-const self@17@00 $Ref)
(push) ; 1
(declare-const $t@18@00 $Snap)
(assert (= $t@18@00 ($Snap.combine ($Snap.first $t@18@00) ($Snap.second $t@18@00))))
(assert (not (= self@17@00 $Ref.null)))
(assert (=
  ($Snap.second $t@18@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@18@00))
    ($Snap.second ($Snap.second $t@18@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@18@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@18@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@18@00))))))
(pop) ; 1
; ---------- m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_ ----------
(declare-const self@19@00 $Ref)
(push) ; 1
(declare-const $t@20@00 $Snap)
(assert (= $t@20@00 ($Snap.combine ($Snap.first $t@20@00) ($Snap.second $t@20@00))))
(assert (not (= self@19@00 $Ref.null)))
(assert (=
  ($Snap.second $t@20@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@20@00))
    ($Snap.second ($Snap.second $t@20@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@20@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@20@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@20@00))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@20@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@20@00)))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- ref$closure$0_1_16$4$15554363898500845002 ----------
(declare-const self@21@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@22@00 $Snap)
(assert (= $t@22@00 ($Snap.combine ($Snap.first $t@22@00) ($Snap.second $t@22@00))))
(assert (not (= self@21@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_18$4$15554363898500845002 ----------
(declare-const self@23@00 $Ref)
(push) ; 1
(declare-const $t@24@00 $Snap)
(assert (= $t@24@00 ($Snap.combine ($Snap.first $t@24@00) ($Snap.second $t@24@00))))
(assert (not (= self@23@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_22$4$17159879712923064445 ----------
(declare-const self@25@00 $Ref)
(push) ; 1
(declare-const $t@26@00 $Snap)
(assert (= $t@26@00 ($Snap.combine ($Snap.first $t@26@00) ($Snap.second $t@26@00))))
(assert (not (= self@25@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_24$4$17159879712923064445 ----------
(declare-const self@27@00 $Ref)
(push) ; 1
(declare-const $t@28@00 $Snap)
(assert (= $t@28@00 ($Snap.combine ($Snap.first $t@28@00) ($Snap.second $t@28@00))))
(assert (not (= self@27@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_25$3$9695044066608409049 ----------
(declare-const self@29@00 $Ref)
(push) ; 1
(declare-const $t@30@00 $Snap)
(assert (= $t@30@00 ($Snap.combine ($Snap.first $t@30@00) ($Snap.second $t@30@00))))
(assert (not (= self@29@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_26$3$9695044066608409049 ----------
(declare-const self@31@00 $Ref)
(push) ; 1
(declare-const $t@32@00 $Snap)
(assert (= $t@32@00 ($Snap.combine ($Snap.first $t@32@00) ($Snap.second $t@32@00))))
(assert (not (= self@31@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Y$__$_end_ ----------
(declare-const self@33@00 $Ref)
(push) ; 1
(declare-const $t@34@00 $Snap)
(assert (= $t@34@00 ($Snap.combine ($Snap.first $t@34@00) ($Snap.second $t@34@00))))
(assert (not (= self@33@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_ ----------
(declare-const self@35@00 $Ref)
(push) ; 1
(declare-const $t@36@00 $Snap)
(assert (= $t@36@00 ($Snap.combine ($Snap.first $t@36@00) ($Snap.second $t@36@00))))
(assert (not (= self@35@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_ ----------
(declare-const self@37@00 $Ref)
(push) ; 1
(declare-const $t@38@00 $Snap)
(assert (= $t@38@00 ($Snap.combine ($Snap.first $t@38@00) ($Snap.second $t@38@00))))
(assert (not (= self@37@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Y$__$_end_ ----------
(declare-const self@39@00 $Ref)
(push) ; 1
(declare-const $t@40@00 $Snap)
(assert (= $t@40@00 ($Snap.combine ($Snap.first $t@40@00) ($Snap.second $t@40@00))))
(assert (not (= self@39@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$__TYPARAM__$Z$__$_end_ ----------
(declare-const self@41@00 $Ref)
(push) ; 1
(declare-const $t@42@00 $Snap)
(assert (= $t@42@00 ($Snap.combine ($Snap.first $t@42@00) ($Snap.second $t@42@00))))
(assert (not (= self@41@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$m_generics_basic_3_6$$Number$opensqu$0$closesqu$$_beg_$i32$_end_ ----------
(declare-const self@43@00 $Ref)
(push) ; 1
(declare-const $t@44@00 $Snap)
(assert (= $t@44@00 ($Snap.combine ($Snap.first $t@44@00) ($Snap.second $t@44@00))))
(assert (not (= self@43@00 $Ref.null)))
(pop) ; 1
; ---------- tuple0$ ----------
(declare-const self@45@00 $Ref)
(push) ; 1
(declare-const $t@46@00 $Snap)
(assert (= $t@46@00 $Snap.unit))
(pop) ; 1
; ---------- tuple2$i32$bool ----------
(declare-const self@47@00 $Ref)
(push) ; 1
(declare-const $t@48@00 $Snap)
(assert (= $t@48@00 ($Snap.combine ($Snap.first $t@48@00) ($Snap.second $t@48@00))))
(assert (not (= self@47@00 $Ref.null)))
(assert (=
  ($Snap.second $t@48@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@48@00))
    ($Snap.second ($Snap.second $t@48@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@48@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@48@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@48@00))))))
(pop) ; 1
