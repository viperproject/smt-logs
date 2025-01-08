(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:08:20
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
(declare-fun bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun bool$$memory_eq$$__$TY$__bool$bool$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun bool$$memory_eq$$__$TY$__bool$bool$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$memory_eq$$__$TY$__m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$memory_eq$$__$TY$__m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$memory_eq$$__$TY$__m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$memory_eq$$__$TY$__m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun DeadBorrowToken$%trigger ($Snap Int) Bool)
(declare-fun bool%trigger ($Snap $Ref) Bool)
(declare-fun isize%trigger ($Snap $Ref) Bool)
(declare-fun m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$bool%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun tuple0$%trigger ($Snap $Ref) Bool)
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
(declare-const $t@7@00 $Snap)
(assert (= $t@7@00 ($Snap.combine ($Snap.first $t@7@00) ($Snap.second $t@7@00))))
(assert (= ($Snap.first $t@7@00) $Snap.unit))
; [eval] none < result
(assert (< $Perm.No result@0@00))
(assert (= ($Snap.second $t@7@00) $Snap.unit))
; [eval] result < write
(assert (< result@0@00 $Perm.Write))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (read$%limited s@$) (read$ s@$))
  :pattern ((read$ s@$))
  :qid |quant-u-648|)))
(assert (forall ((s@$ $Snap)) (!
  (as read$%stateless  Bool)
  :pattern ((read$%limited s@$))
  :qid |quant-u-649|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) (=>
    (read$%precondition s@$)
    (and (< $Perm.No result@0@00) (< result@0@00 $Perm.Write))))
  :pattern ((read$%limited s@$))
  :qid |quant-u-654|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-655|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-656|)))
; ---------- FUNCTION bool$$memory_eq$$__$TY$__bool$bool$$bool$----------
(declare-fun self@1@00 () $Ref)
(declare-fun other@2@00 () $Ref)
(declare-fun result@3@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
; [eval] read$()
(push) ; 2
(assert (read$%precondition $Snap.unit))
(pop) ; 2
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 2
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (read$ $Snap.unit)))
; [eval] read$()
(push) ; 2
(pop) ; 2
; Joined path conditions
(push) ; 2
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(set-option :timeout 10)
(assert (not (= self@1@00 other@2@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@1@00 $Ref) (other@2@00 $Ref)) (!
  (=
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$%limited s@$ self@1@00 other@2@00)
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ s@$ self@1@00 other@2@00))
  :pattern ((bool$$memory_eq$$__$TY$__bool$bool$$bool$ s@$ self@1@00 other@2@00))
  :qid |quant-u-650|)))
(assert (forall ((s@$ $Snap) (self@1@00 $Ref) (other@2@00 $Ref)) (!
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$%stateless self@1@00 other@2@00)
  :pattern ((bool$$memory_eq$$__$TY$__bool$bool$$bool$%limited s@$ self@1@00 other@2@00))
  :qid |quant-u-651|)))
; ----- Verification of function body and postcondition -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(bool(self), read$()) in (unfolding acc(bool(other), read$()) in self.val_bool == other.val_bool))
; [eval] read$()
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
; Joined path conditions
(push) ; 2
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
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
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (bool%trigger ($Snap.first s@$) self@1@00))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@1@00 $Ref.null))))
; [eval] (unfolding acc(bool(other), read$()) in self.val_bool == other.val_bool)
; [eval] read$()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
; [eval] read$()
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (bool%trigger ($Snap.second s@$) other@2@00))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@1@00 other@2@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@2@00 $Ref.null))))
; [eval] self.val_bool == other.val_bool
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
; Joined path conditions
(assert (and
  (bool%trigger ($Snap.second s@$) other@2@00)
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@2@00 $Ref.null)))))
(pop) ; 2
; Joined path conditions
(assert (and
  (bool%trigger ($Snap.first s@$) self@1@00)
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@1@00 $Ref.null)))
  (bool%trigger ($Snap.second s@$) other@2@00)
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@2@00 $Ref.null)))))
(assert (=
  result@3@00
  (=
    ($SortWrappers.$SnapToBool ($Snap.first s@$))
    ($SortWrappers.$SnapToBool ($Snap.second s@$)))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@1@00 $Ref) (other@2@00 $Ref)) (!
  (=>
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition s@$ self@1@00 other@2@00)
    (=
      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ s@$ self@1@00 other@2@00)
      (=
        ($SortWrappers.$SnapToBool ($Snap.first s@$))
        ($SortWrappers.$SnapToBool ($Snap.second s@$)))))
  :pattern ((bool$$memory_eq$$__$TY$__bool$bool$$bool$ s@$ self@1@00 other@2@00))
  :qid |quant-u-657|)))
(assert (forall ((s@$ $Snap) (self@1@00 $Ref) (other@2@00 $Ref)) (!
  true
  :pattern ((bool$$memory_eq$$__$TY$__bool$bool$$bool$ s@$ self@1@00 other@2@00))
  :qid |quant-u-658|)))
; ---------- FUNCTION m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$memory_eq$$__$TY$__m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$bool$----------
(declare-fun self@4@00 () $Ref)
(declare-fun other@5@00 () $Ref)
(declare-fun result@6@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
; [eval] read$()
(push) ; 2
(assert (read$%precondition $Snap.unit))
(pop) ; 2
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 2
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (read$ $Snap.unit)))
; [eval] read$()
(push) ; 2
(pop) ; 2
; Joined path conditions
(push) ; 2
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(set-option :timeout 10)
(assert (not (= self@4@00 other@5@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@4@00 $Ref) (other@5@00 $Ref)) (!
  (=
    (m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$memory_eq$$__$TY$__m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ self@4@00 other@5@00)
    (m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$memory_eq$$__$TY$__m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ self@4@00 other@5@00))
  :pattern ((m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$memory_eq$$__$TY$__m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ self@4@00 other@5@00))
  :qid |quant-u-652|)))
(assert (forall ((s@$ $Snap) (self@4@00 $Ref) (other@5@00 $Ref)) (!
  (m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$memory_eq$$__$TY$__m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless self@4@00 other@5@00)
  :pattern ((m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$memory_eq$$__$TY$__m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ self@4@00 other@5@00))
  :qid |quant-u-653|)))
; ----- Verification of function body and postcondition -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_(self), read$()) in (unfolding acc(m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_(other), read$()) in bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_bold, other.f$is_bold) && (bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_dimmed, other.f$is_dimmed) && (bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_italic, other.f$is_italic) && (bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_underline, other.f$is_underline) && (bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_blink, other.f$is_blink) && (bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_reverse, other.f$is_reverse) && (bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_hidden, other.f$is_hidden) && bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_strikethrough, other.f$is_strikethrough)))))))))
; [eval] read$()
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
; Joined path conditions
(push) ; 2
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
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
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) self@4@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@4@00 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.first s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.second ($Snap.second ($Snap.first s@$))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_(other), read$()) in bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_bold, other.f$is_bold) && (bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_dimmed, other.f$is_dimmed) && (bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_italic, other.f$is_italic) && (bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_underline, other.f$is_underline) && (bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_blink, other.f$is_blink) && (bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_reverse, other.f$is_reverse) && (bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_hidden, other.f$is_hidden) && bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_strikethrough, other.f$is_strikethrough))))))))
; [eval] read$()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
; [eval] read$()
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second s@$) other@5@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@4@00 other@5@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@5@00 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@4@00 other@5@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@4@00 other@5@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@4@00 other@5@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@4@00 other@5@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@4@00 other@5@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@4@00 other@5@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@4@00 other@5@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_bold, other.f$is_bold) && (bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_dimmed, other.f$is_dimmed) && (bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_italic, other.f$is_italic) && (bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_underline, other.f$is_underline) && (bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_blink, other.f$is_blink) && (bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_reverse, other.f$is_reverse) && (bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_hidden, other.f$is_hidden) && bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_strikethrough, other.f$is_strikethrough)))))))
; [eval] bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_bold, other.f$is_bold)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.first s@$)))
  ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 4
; Joined path conditions
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.first s@$)))
  ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 4
; [then-branch: 0 | !(bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(First:(s@$))), First:(Second:(Second:(s@$)))), First:(First:(s@$)), First:(Second:(s@$)))) | live]
; [else-branch: 0 | bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(First:(s@$))), First:(Second:(Second:(s@$)))), First:(First:(s@$)), First:(Second:(s@$))) | live]
(push) ; 5
; [then-branch: 0 | !(bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(First:(s@$))), First:(Second:(Second:(s@$)))), First:(First:(s@$)), First:(Second:(s@$))))]
(assert (not
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(First:(s@$))), First:(Second:(Second:(s@$)))), First:(First:(s@$)), First:(Second:(s@$)))]
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.first s@$)))
  ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
; [eval] bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_dimmed, other.f$is_dimmed)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
; [eval] read$()
(push) ; 7
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 7
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))))))
(pop) ; 6
; Joined path conditions
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))))))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 1 | !(bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(First:(s@$))))), First:(Second:(Second:(Second:(Second:(s@$)))))), First:(Second:(Second:(First:(s@$)))), First:(Second:(Second:(Second:(s@$)))))) | live]
; [else-branch: 1 | bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(First:(s@$))))), First:(Second:(Second:(Second:(Second:(s@$)))))), First:(Second:(Second:(First:(s@$)))), First:(Second:(Second:(Second:(s@$))))) | live]
(push) ; 7
; [then-branch: 1 | !(bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(First:(s@$))))), First:(Second:(Second:(Second:(Second:(s@$)))))), First:(Second:(Second:(First:(s@$)))), First:(Second:(Second:(Second:(s@$))))))]
(assert (not
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))))
(pop) ; 7
(push) ; 7
; [else-branch: 1 | bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(First:(s@$))))), First:(Second:(Second:(Second:(Second:(s@$)))))), First:(Second:(Second:(First:(s@$)))), First:(Second:(Second:(Second:(s@$)))))]
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))))))
; [eval] bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_italic, other.f$is_italic)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
; [eval] read$()
(push) ; 9
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 9
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
(pop) ; 8
; Joined path conditions
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
(set-option :timeout 0)
(push) ; 8
; [then-branch: 2 | !(bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))), First:(Second:(Second:(Second:(Second:(First:(s@$)))))), First:(Second:(Second:(Second:(Second:(Second:(s@$)))))))) | live]
; [else-branch: 2 | bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))), First:(Second:(Second:(Second:(Second:(First:(s@$)))))), First:(Second:(Second:(Second:(Second:(Second:(s@$))))))) | live]
(push) ; 9
; [then-branch: 2 | !(bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))), First:(Second:(Second:(Second:(Second:(First:(s@$)))))), First:(Second:(Second:(Second:(Second:(Second:(s@$))))))))]
(assert (not
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
(pop) ; 9
(push) ; 9
; [else-branch: 2 | bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))), First:(Second:(Second:(Second:(Second:(First:(s@$)))))), First:(Second:(Second:(Second:(Second:(Second:(s@$)))))))]
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
; [eval] bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_underline, other.f$is_underline)
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
; [eval] read$()
(push) ; 11
(pop) ; 11
; Joined path conditions
(push) ; 11
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 11
(pop) ; 11
; Joined path conditions
(push) ; 11
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))
(pop) ; 10
; Joined path conditions
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))
(set-option :timeout 0)
(push) ; 10
; [then-branch: 3 | !(bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))) | live]
; [else-branch: 3 | bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$))))))))) | live]
(push) ; 11
; [then-branch: 3 | !(bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$))))))))))]
(assert (not
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
(pop) ; 11
(push) ; 11
; [else-branch: 3 | bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))]
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))
; [eval] bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_blink, other.f$is_blink)
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
; [eval] read$()
(push) ; 13
(pop) ; 13
; Joined path conditions
(push) ; 13
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 13
(pop) ; 13
; Joined path conditions
(push) ; 13
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))
(pop) ; 12
; Joined path conditions
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))
(set-option :timeout 0)
(push) ; 12
; [then-branch: 4 | !(bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))))) | live]
; [else-branch: 4 | bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$))))))))))) | live]
(push) ; 13
; [then-branch: 4 | !(bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$))))))))))))]
(assert (not
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
(pop) ; 13
(push) ; 13
; [else-branch: 4 | bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))))]
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))
; [eval] bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_reverse, other.f$is_reverse)
(push) ; 14
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
; [eval] read$()
(push) ; 15
(pop) ; 15
; Joined path conditions
(push) ; 15
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 15
(pop) ; 15
; Joined path conditions
(push) ; 15
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))
(pop) ; 14
; Joined path conditions
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))
(set-option :timeout 0)
(push) ; 14
; [then-branch: 5 | !(bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))))))) | live]
; [else-branch: 5 | bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$))))))))))))) | live]
(push) ; 15
; [then-branch: 5 | !(bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$))))))))))))))]
(assert (not
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
(pop) ; 15
(push) ; 15
; [else-branch: 5 | bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))))))]
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))
; [eval] bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_hidden, other.f$is_hidden)
(push) ; 16
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
; [eval] read$()
(push) ; 17
(pop) ; 17
; Joined path conditions
(push) ; 17
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(push) ; 17
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 17
(pop) ; 17
; Joined path conditions
(push) ; 17
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(push) ; 17
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))))
(pop) ; 16
; Joined path conditions
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))))
(set-option :timeout 0)
(push) ; 16
; [then-branch: 6 | !(bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))))))))) | live]
; [else-branch: 6 | bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$))))))))))))))) | live]
(push) ; 17
; [then-branch: 6 | !(bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$))))))))))))))))]
(assert (not
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
(pop) ; 17
(push) ; 17
; [else-branch: 6 | bool$$memory_eq$$__$TY$__bool$bool$$bool$((First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))))))), First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(s@$)))))))))))))))]
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))))
; [eval] bool$$memory_eq$$__$TY$__bool$bool$$bool$(self.f$is_strikethrough, other.f$is_strikethrough)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
; [eval] read$()
(push) ; 19
(pop) ; 19
; Joined path conditions
(push) ; 19
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(push) ; 19
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 19
(pop) ; 19
; Joined path conditions
(push) ; 19
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(push) ; 19
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))))))
(pop) ; 18
; Joined path conditions
(assert (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))))))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (=>
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
  (and
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))))))))
(assert (or
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
  (not
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))))))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (=>
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
  (and
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
    (=>
      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
      (and
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
    (or
      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
      (not
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))))))))
(assert (or
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
  (not
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
  (and
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
    (=>
      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
      (and
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
        (=>
          (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
          (and
            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
            (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
              ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
              ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
        (or
          (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
          (not
            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
    (or
      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
      (not
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))))))
(assert (or
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
  (not
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
  (and
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
    (=>
      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
      (and
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
        (=>
          (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
          (and
            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
            (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
            (=>
              (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
              (and
                (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
            (or
              (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
              (not
                (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
        (or
          (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
          (not
            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
    (or
      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
      (not
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))))
(assert (or
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
  (not
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
  (and
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
    (=>
      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
      (and
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
        (=>
          (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
          (and
            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
            (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
            (=>
              (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
              (and
                (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
                (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                (=>
                  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                  (and
                    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                    (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
                (or
                  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                  (not
                    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
            (or
              (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
              (not
                (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
        (or
          (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
          (not
            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
    (or
      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
      (not
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))
(assert (or
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
  (not
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
  (and
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
    (=>
      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
      (and
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
        (=>
          (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
          (and
            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
            (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
            (=>
              (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
              (and
                (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
                (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
                (=>
                  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
                  (and
                    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
                    (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                    (=>
                      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                      (and
                        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                        (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
                    (or
                      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                      (not
                        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
                (or
                  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
                  (not
                    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
            (or
              (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
              (not
                (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
        (or
          (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
          (not
            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
    (or
      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
      (not
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))
(assert (or
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
  (not
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
  (and
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
    (=>
      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
      (and
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
        (=>
          (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
          (and
            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
            (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
            (=>
              (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
              (and
                (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
                (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
                (=>
                  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
                  (and
                    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
                    (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
                    (=>
                      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
                      (and
                        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
                        (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                        (=>
                          (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                          (and
                            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                            (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                              ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                              ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
                        (or
                          (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                          (not
                            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
                    (or
                      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
                      (not
                        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
                (or
                  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
                  (not
                    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
            (or
              (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
              (not
                (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
        (or
          (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
          (not
            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
    (or
      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
      (not
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))
(assert (or
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
  (not
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))))
(pop) ; 3
; Joined path conditions
(assert (and
  (m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second s@$) other@5@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@5@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))
  (=
    ($Snap.second ($Snap.second ($Snap.second s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
  (=>
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
    (and
      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first s@$)))
        ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
      (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
      (=>
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
        (and
          (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
          (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
          (=>
            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
            (and
              (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
              (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
              (=>
                (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
                (and
                  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
                  (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
                  (=>
                    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
                    (and
                      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
                      (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
                      (=>
                        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
                        (and
                          (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
                          (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                          (=>
                            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                            (and
                              (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                              (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                                ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                                ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
                          (or
                            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                            (not
                              (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
                      (or
                        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
                        (not
                          (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
                  (or
                    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
                    (not
                      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
              (or
                (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
                (not
                  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
          (or
            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
            (not
              (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
      (or
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
        (not
          (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
  (or
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
    (not
      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first s@$)))
        ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))))
(pop) ; 2
; Joined path conditions
(assert (and
  (m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) self@4@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@4@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.second ($Snap.second ($Snap.first s@$)))))
  (=
    ($Snap.second ($Snap.second ($Snap.first s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))))
  (m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second s@$) other@5@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@5@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))
  (=
    ($Snap.second ($Snap.second ($Snap.second s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
  (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
  (=>
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
    (and
      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first s@$)))
        ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
      (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
      (=>
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
        (and
          (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
          (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
          (=>
            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
            (and
              (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
              (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
              (=>
                (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
                (and
                  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
                  (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
                  (=>
                    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
                    (and
                      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
                      (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
                      (=>
                        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
                        (and
                          (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
                          (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                          (=>
                            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                            (and
                              (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                              (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                                ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                                ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
                          (or
                            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                            (not
                              (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))))
                      (or
                        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
                        (not
                          (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))))
                  (or
                    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
                    (not
                      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
              (or
                (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
                (not
                  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
          (or
            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
            (not
              (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
      (or
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
        (not
          (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
  (or
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
    (not
      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first s@$)))
        ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))))
(assert (=
  result@6@00
  (and
    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
    (and
      (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
      (and
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
        (and
          (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
          (and
            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
            (and
              (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
              (and
                (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))))))))))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@4@00 $Ref) (other@5@00 $Ref)) (!
  (=>
    (m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$memory_eq$$__$TY$__m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ self@4@00 other@5@00)
    (=
      (m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$memory_eq$$__$TY$__m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ self@4@00 other@5@00)
      (and
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.first s@$)))
          ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
        (and
          (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
          (and
            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
            (and
              (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
              (and
                (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
                (and
                  (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
                  (and
                    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))))))))))))))
  :pattern ((m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$memory_eq$$__$TY$__m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ self@4@00 other@5@00))
  :pattern ((m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$memory_eq$$__$TY$__m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless self@4@00 other@5@00) (m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) self@4@00))
  :qid |quant-u-659|)))
(assert (forall ((s@$ $Snap) (self@4@00 $Ref) (other@5@00 $Ref)) (!
  (=>
    (m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$memory_eq$$__$TY$__m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ self@4@00 other@5@00)
    (and
      (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first s@$)))
        ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
      (=>
        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.first s@$)))
          ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
        (and
          (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
          (=>
            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
            (and
              (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
              (=>
                (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
                (and
                  (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
                  (=>
                    (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
                    (and
                      (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
                      (=>
                        (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
                        (and
                          (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
                          (=>
                            (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))
                            (and
                              (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                              (=>
                                (bool$$memory_eq$$__$TY$__bool$bool$$bool$ ($Snap.combine
                                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))
                                (bool$$memory_eq$$__$TY$__bool$bool$$bool$%precondition ($Snap.combine
                                  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                                  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))))))))))))))))))))))
  :pattern ((m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$memory_eq$$__$TY$__m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ self@4@00 other@5@00))
  :qid |quant-u-660|)))
; ---------- DeadBorrowToken$ ----------
(declare-const borrow@8@00 Int)
; ---------- bool ----------
(declare-const self@9@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@10@00 Bool)
(assert (not (= self@9@00 $Ref.null)))
(pop) ; 1
; ---------- isize ----------
(declare-const self@11@00 $Ref)
(push) ; 1
(declare-const $t@12@00 Int)
(assert (not (= self@11@00 $Ref.null)))
(pop) ; 1
; ---------- m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@13@00 $Ref)
(push) ; 1
(declare-const $t@14@00 $Snap)
(assert (= $t@14@00 ($Snap.combine ($Snap.first $t@14@00) ($Snap.second $t@14@00))))
(assert (not (= self@13@00 $Ref.null)))
(assert (=
  ($Snap.second $t@14@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@14@00))
    ($Snap.second ($Snap.second $t@14@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@14@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@14@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@14@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@14@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@14@00)))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@14@00))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@14@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@14@00))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@14@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@14@00))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@14@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@14@00))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@14@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@14@00))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@14@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))))))))))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@14@00))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@14@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@00)))))))))))))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- ref$bool ----------
(declare-const self@15@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@16@00 $Snap)
(assert (= $t@16@00 ($Snap.combine ($Snap.first $t@16@00) ($Snap.second $t@16@00))))
(assert (not (= self@15@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_ansi_term_external_call$$Style$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@17@00 $Ref)
(push) ; 1
(declare-const $t@18@00 $Snap)
(assert (= $t@18@00 ($Snap.combine ($Snap.first $t@18@00) ($Snap.second $t@18@00))))
(assert (not (= self@17@00 $Ref.null)))
(pop) ; 1
; ---------- tuple0$ ----------
(declare-const self@19@00 $Ref)
(push) ; 1
(declare-const $t@20@00 $Snap)
(assert (= $t@20@00 $Snap.unit))
(pop) ; 1
