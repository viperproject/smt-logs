(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-26 22:54:28
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
(declare-sort Snap$__TYPARAM__$S$__ 0)
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
(declare-fun $SortWrappers.Snap$__TYPARAM__$S$__To$Snap (Snap$__TYPARAM__$S$__) $Snap)
(declare-fun $SortWrappers.$SnapToSnap$__TYPARAM__$S$__ ($Snap) Snap$__TYPARAM__$S$__)
(assert (forall ((x Snap$__TYPARAM__$S$__)) (!
    (= x ($SortWrappers.$SnapToSnap$__TYPARAM__$S$__($SortWrappers.Snap$__TYPARAM__$S$__To$Snap x)))
    :pattern (($SortWrappers.Snap$__TYPARAM__$S$__To$Snap x))
    :qid |$Snap.$SnapToSnap$__TYPARAM__$S$__To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Snap$__TYPARAM__$S$__To$Snap($SortWrappers.$SnapToSnap$__TYPARAM__$S$__ x)))
    :pattern (($SortWrappers.$SnapToSnap$__TYPARAM__$S$__ x))
    :qid |$Snap.Snap$__TYPARAM__$S$__To$SnapToSnap$__TYPARAM__$S$__|
    )))
; ////////// Symbols
(declare-fun cons$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__<Snap$__TYPARAM__$S$__> ($Ref) Snap$__TYPARAM__$S$__)
; Declaring symbols related to program functions (from program analysis)
(declare-fun read$ ($Snap) $Perm)
(declare-fun read$%limited ($Snap) $Perm)
(declare-const read$%stateless Bool)
(declare-fun read$%precondition ($Snap) Bool)
(declare-fun snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ ($Snap $Ref) Snap$__TYPARAM__$S$__)
(declare-fun snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%limited ($Snap $Ref) Snap$__TYPARAM__$S$__)
(declare-fun snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%stateless ($Ref) Bool)
(declare-fun snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition ($Snap $Ref) Bool)
(declare-fun isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun isize$$memory_eq$$__$TY$__isize$isize$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun isize$$memory_eq$$__$TY$__isize$isize$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun DeadBorrowToken$%trigger ($Snap Int) Bool)
(declare-fun __TYPARAM__$S$__%trigger ($Snap $Ref) Bool)
(declare-fun __TYPARAM__$__HS$__%trigger ($Snap $Ref) Bool)
(declare-fun bool%trigger ($Snap $Ref) Bool)
(declare-fun isize%trigger ($Snap $Ref) Bool)
(declare-fun m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_348_cgmath_point$$Vector1$opensqu$0$closesqu$$_beg_$u64$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$__TYPARAM__$S$__%trigger ($Snap $Ref) Bool)
(declare-fun ref$__TYPARAM__$__HS$__%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap $Ref) Bool)
(declare-fun tuple0$%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$isize$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$u64$m_348_cgmath_point$$Vector1$opensqu$0$closesqu$$_beg_$u64$_end_%trigger ($Snap $Ref) Bool)
(declare-fun u64%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((_arg_1 $Ref) (_arg_2 $Ref)) (!
  (=>
    (=
      (cons$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__<Snap$__TYPARAM__$S$__> _arg_1)
      (cons$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__<Snap$__TYPARAM__$S$__> _arg_2))
    (= _arg_1 _arg_2))
  :pattern ((cons$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__<Snap$__TYPARAM__$S$__> _arg_1) (cons$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__<Snap$__TYPARAM__$S$__> _arg_2))
  :qid |prog.Snap$__TYPARAM__$S$__$injectivity|)))
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
(declare-const $t@21@00 $Snap)
(assert (= $t@21@00 ($Snap.combine ($Snap.first $t@21@00) ($Snap.second $t@21@00))))
(assert (= ($Snap.first $t@21@00) $Snap.unit))
; [eval] none < result
(assert (< $Perm.No result@0@00))
(assert (= ($Snap.second $t@21@00) $Snap.unit))
; [eval] result < write
(assert (< result@0@00 $Perm.Write))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (read$%limited s@$) (read$ s@$))
  :pattern ((read$ s@$))
  :qid |quant-u-452|)))
(assert (forall ((s@$ $Snap)) (!
  (as read$%stateless  Bool)
  :pattern ((read$%limited s@$))
  :qid |quant-u-453|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) (=>
    (read$%precondition s@$)
    (and (< $Perm.No result@0@00) (< result@0@00 $Perm.Write))))
  :pattern ((read$%limited s@$))
  :qid |quant-u-468|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-469|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-470|)))
; ---------- FUNCTION snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__----------
(declare-fun _arg@1@00 () $Ref)
(declare-fun result@2@00 () Snap$__TYPARAM__$S$__)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (_arg@1@00 $Ref)) (!
  (=
    (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%limited s@$ _arg@1@00)
    (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ s@$ _arg@1@00))
  :pattern ((snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ s@$ _arg@1@00))
  :qid |quant-u-454|)))
(assert (forall ((s@$ $Snap) (_arg@1@00 $Ref)) (!
  (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%stateless _arg@1@00)
  :pattern ((snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%limited s@$ _arg@1@00))
  :qid |quant-u-455|)))
; ---------- FUNCTION isize$$memory_eq$$__$TY$__isize$isize$$bool$----------
(declare-fun self@3@00 () $Ref)
(declare-fun other@4@00 () $Ref)
(declare-fun result@5@00 () Bool)
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
(assert (not (= self@3@00 other@4@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@3@00 $Ref) (other@4@00 $Ref)) (!
  (=
    (isize$$memory_eq$$__$TY$__isize$isize$$bool$%limited s@$ self@3@00 other@4@00)
    (isize$$memory_eq$$__$TY$__isize$isize$$bool$ s@$ self@3@00 other@4@00))
  :pattern ((isize$$memory_eq$$__$TY$__isize$isize$$bool$ s@$ self@3@00 other@4@00))
  :qid |quant-u-456|)))
(assert (forall ((s@$ $Snap) (self@3@00 $Ref) (other@4@00 $Ref)) (!
  (isize$$memory_eq$$__$TY$__isize$isize$$bool$%stateless self@3@00 other@4@00)
  :pattern ((isize$$memory_eq$$__$TY$__isize$isize$$bool$%limited s@$ self@3@00 other@4@00))
  :qid |quant-u-457|)))
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
; [eval] (unfolding acc(isize(self), read$()) in (unfolding acc(isize(other), read$()) in self.val_int == other.val_int))
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
(assert (isize%trigger ($Snap.first s@$) self@3@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@3@00 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.first s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.second ($Snap.second ($Snap.first s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit))
; [eval] -9223372036854775808 <= self.val_int
; [eval] -9223372036854775808
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<=
  (- 0 9223372036854775808)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))))
(assert (= ($Snap.second ($Snap.second ($Snap.first s@$))) $Snap.unit))
; [eval] self.val_int <= 9223372036854775807
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))
  9223372036854775807))
; [eval] (unfolding acc(isize(other), read$()) in self.val_int == other.val_int)
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
(assert (isize%trigger ($Snap.second s@$) other@4@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@3@00 other@4@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@4@00 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] -9223372036854775808 <= self.val_int
; [eval] -9223372036854775808
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<=
  (- 0 9223372036854775808)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$)))))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] self.val_int <= 9223372036854775807
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$)))
  9223372036854775807))
; [eval] self.val_int == other.val_int
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
  (isize%trigger ($Snap.second s@$) other@4@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@4@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit)
  (<=
    (- 0 9223372036854775808)
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))
  (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit)
  (<=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$)))
    9223372036854775807)))
(pop) ; 2
; Joined path conditions
(assert (and
  (isize%trigger ($Snap.first s@$) self@3@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@3@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.second ($Snap.second ($Snap.first s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit)
  (<=
    (- 0 9223372036854775808)
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))))
  (= ($Snap.second ($Snap.second ($Snap.first s@$))) $Snap.unit)
  (<=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))
    9223372036854775807)
  (isize%trigger ($Snap.second s@$) other@4@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@4@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit)
  (<=
    (- 0 9223372036854775808)
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))
  (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit)
  (<=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$)))
    9223372036854775807)))
(assert (=
  result@5@00
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@3@00 $Ref) (other@4@00 $Ref)) (!
  (=>
    (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition s@$ self@3@00 other@4@00)
    (=
      (isize$$memory_eq$$__$TY$__isize$isize$$bool$ s@$ self@3@00 other@4@00)
      (=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
  :pattern ((isize$$memory_eq$$__$TY$__isize$isize$$bool$ s@$ self@3@00 other@4@00))
  :qid |quant-u-471|)))
(assert (forall ((s@$ $Snap) (self@3@00 $Ref) (other@4@00 $Ref)) (!
  true
  :pattern ((isize$$memory_eq$$__$TY$__isize$isize$$bool$ s@$ self@3@00 other@4@00))
  :qid |quant-u-472|)))
; ---------- FUNCTION equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$----------
(declare-fun _left@6@00 () $Ref)
(declare-fun _right@7@00 () $Ref)
(declare-fun result@8@00 () Bool)
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
(assert (not (= _left@6@00 _right@7@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (_left@6@00 $Ref) (_right@7@00 $Ref)) (!
  (=
    (equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%limited s@$ _left@6@00 _right@7@00)
    (equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ s@$ _left@6@00 _right@7@00))
  :pattern ((equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ s@$ _left@6@00 _right@7@00))
  :qid |quant-u-458|)))
(assert (forall ((s@$ $Snap) (_left@6@00 $Ref) (_right@7@00 $Ref)) (!
  (equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%stateless _left@6@00 _right@7@00)
  :pattern ((equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%limited s@$ _left@6@00 _right@7@00))
  :qid |quant-u-459|)))
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
; [eval] snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__(_left) == snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__(_right)
; [eval] snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__(_left)
(set-option :timeout 0)
(push) ; 2
(assert (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit _left@6@00))
(pop) ; 2
; Joined path conditions
(assert (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit _left@6@00))
; [eval] snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__(_right)
(push) ; 2
(assert (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit _right@7@00))
(pop) ; 2
; Joined path conditions
(assert (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit _right@7@00))
(assert (=
  result@8@00
  (=
    (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit _left@6@00)
    (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit _right@7@00))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_left@6@00 $Ref) (_right@7@00 $Ref)) (!
  (=>
    (equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition s@$ _left@6@00 _right@7@00)
    (=
      (equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ s@$ _left@6@00 _right@7@00)
      (=
        (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit _left@6@00)
        (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit _right@7@00))))
  :pattern ((equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ s@$ _left@6@00 _right@7@00))
  :qid |quant-u-473|)))
(assert (forall ((s@$ $Snap) (_left@6@00 $Ref) (_right@7@00 $Ref)) (!
  (=>
    (equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition s@$ _left@6@00 _right@7@00)
    (and
      (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit _left@6@00)
      (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit _right@7@00)))
  :pattern ((equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ s@$ _left@6@00 _right@7@00))
  :qid |quant-u-474|)))
; ---------- FUNCTION equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$----------
(declare-fun _left@9@00 () $Ref)
(declare-fun _right@10@00 () $Ref)
(declare-fun result@11@00 () Bool)
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
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _left@9@00 $Ref.null))))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
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
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
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
(assert (not (= _left@9@00 _right@10@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _right@10@00 $Ref.null))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
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
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (_left@9@00 $Ref) (_right@10@00 $Ref)) (!
  (=
    (equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%limited s@$ _left@9@00 _right@10@00)
    (equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ s@$ _left@9@00 _right@10@00))
  :pattern ((equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ s@$ _left@9@00 _right@10@00))
  :qid |quant-u-460|)))
(assert (forall ((s@$ $Snap) (_left@9@00 $Ref) (_right@10@00 $Ref)) (!
  (equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%stateless _left@9@00 _right@10@00)
  :pattern ((equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%limited s@$ _left@9@00 _right@10@00))
  :qid |quant-u-461|)))
; ----- Verification of function body and postcondition -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _left@9@00 $Ref.null))))
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
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _right@10@00 $Ref.null))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__(_left.val_ref) == snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__(_right.val_ref)
; [eval] snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__(_left.val_ref)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(assert (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
(pop) ; 2
; Joined path conditions
(assert (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
; [eval] snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__(_right.val_ref)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(assert (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))))
(pop) ; 2
; Joined path conditions
(assert (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))))
(assert (=
  result@11@00
  (=
    (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
    (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_left@9@00 $Ref) (_right@10@00 $Ref)) (!
  (=>
    (equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%precondition s@$ _left@9@00 _right@10@00)
    (=
      (equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ s@$ _left@9@00 _right@10@00)
      (=
        (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))))))
  :pattern ((equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ s@$ _left@9@00 _right@10@00))
  :qid |quant-u-475|)))
(assert (forall ((s@$ $Snap) (_left@9@00 $Ref) (_right@10@00 $Ref)) (!
  (=>
    (equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%precondition s@$ _left@9@00 _right@10@00)
    (and
      (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))
  :pattern ((equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ s@$ _left@9@00 _right@10@00))
  :qid |quant-u-476|)))
; ---------- FUNCTION not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$----------
(declare-fun _left@12@00 () $Ref)
(declare-fun _right@13@00 () $Ref)
(declare-fun result@14@00 () Bool)
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
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _left@12@00 $Ref.null))))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
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
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
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
(assert (not (= _left@12@00 _right@13@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _right@13@00 $Ref.null))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
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
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (_left@12@00 $Ref) (_right@13@00 $Ref)) (!
  (=
    (not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%limited s@$ _left@12@00 _right@13@00)
    (not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ s@$ _left@12@00 _right@13@00))
  :pattern ((not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ s@$ _left@12@00 _right@13@00))
  :qid |quant-u-462|)))
(assert (forall ((s@$ $Snap) (_left@12@00 $Ref) (_right@13@00 $Ref)) (!
  (not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%stateless _left@12@00 _right@13@00)
  :pattern ((not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%limited s@$ _left@12@00 _right@13@00))
  :qid |quant-u-463|)))
; ----- Verification of function body and postcondition -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _left@12@00 $Ref.null))))
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
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _right@13@00 $Ref.null))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__(_left.val_ref) != snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__(_right.val_ref)
; [eval] snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__(_left.val_ref)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(assert (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
(pop) ; 2
; Joined path conditions
(assert (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
; [eval] snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__(_right.val_ref)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(assert (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))))
(pop) ; 2
; Joined path conditions
(assert (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))))
(assert (=
  result@14@00
  (not
    (=
      (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_left@12@00 $Ref) (_right@13@00 $Ref)) (!
  (=>
    (not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%precondition s@$ _left@12@00 _right@13@00)
    (=
      (not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ s@$ _left@12@00 _right@13@00)
      (not
        (=
          (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
          (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))))
  :pattern ((not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ s@$ _left@12@00 _right@13@00))
  :qid |quant-u-477|)))
(assert (forall ((s@$ $Snap) (_left@12@00 $Ref) (_right@13@00 $Ref)) (!
  (=>
    (not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%precondition s@$ _left@12@00 _right@13@00)
    (and
      (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))
  :pattern ((not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ s@$ _left@12@00 _right@13@00))
  :qid |quant-u-478|)))
; ---------- FUNCTION not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$----------
(declare-fun _left@15@00 () $Ref)
(declare-fun _right@16@00 () $Ref)
(declare-fun result@17@00 () Bool)
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
(assert (not (= _left@15@00 _right@16@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (_left@15@00 $Ref) (_right@16@00 $Ref)) (!
  (=
    (not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%limited s@$ _left@15@00 _right@16@00)
    (not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ s@$ _left@15@00 _right@16@00))
  :pattern ((not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ s@$ _left@15@00 _right@16@00))
  :qid |quant-u-464|)))
(assert (forall ((s@$ $Snap) (_left@15@00 $Ref) (_right@16@00 $Ref)) (!
  (not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%stateless _left@15@00 _right@16@00)
  :pattern ((not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%limited s@$ _left@15@00 _right@16@00))
  :qid |quant-u-465|)))
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
; [eval] snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__(_left) != snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__(_right)
; [eval] snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__(_left)
(set-option :timeout 0)
(push) ; 2
(assert (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit _left@15@00))
(pop) ; 2
; Joined path conditions
(assert (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit _left@15@00))
; [eval] snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__(_right)
(push) ; 2
(assert (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit _right@16@00))
(pop) ; 2
; Joined path conditions
(assert (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit _right@16@00))
(assert (=
  result@17@00
  (not
    (=
      (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit _left@15@00)
      (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit _right@16@00)))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_left@15@00 $Ref) (_right@16@00 $Ref)) (!
  (=>
    (not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition s@$ _left@15@00 _right@16@00)
    (=
      (not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ s@$ _left@15@00 _right@16@00)
      (not
        (=
          (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit _left@15@00)
          (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit _right@16@00)))))
  :pattern ((not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ s@$ _left@15@00 _right@16@00))
  :qid |quant-u-479|)))
(assert (forall ((s@$ $Snap) (_left@15@00 $Ref) (_right@16@00 $Ref)) (!
  (=>
    (not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition s@$ _left@15@00 _right@16@00)
    (and
      (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit _left@15@00)
      (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit _right@16@00)))
  :pattern ((not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ s@$ _left@15@00 _right@16@00))
  :qid |quant-u-480|)))
; ---------- FUNCTION m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$----------
(declare-fun self@18@00 () $Ref)
(declare-fun other@19@00 () $Ref)
(declare-fun result@20@00 () Bool)
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
(assert (not (= self@18@00 other@19@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@18@00 $Ref) (other@19@00 $Ref)) (!
  (=
    (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%limited s@$ self@18@00 other@19@00)
    (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$ s@$ self@18@00 other@19@00))
  :pattern ((m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$ s@$ self@18@00 other@19@00))
  :qid |quant-u-466|)))
(assert (forall ((s@$ $Snap) (self@18@00 $Ref) (other@19@00 $Ref)) (!
  (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%stateless self@18@00 other@19@00)
  :pattern ((m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%limited s@$ self@18@00 other@19@00))
  :qid |quant-u-467|)))
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
; [eval] (unfolding acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_(self), read$()) in (unfolding acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_(other), read$()) in isize$$memory_eq$$__$TY$__isize$isize$$bool$(self.f$x, other.f$x) && (isize$$memory_eq$$__$TY$__isize$isize$$bool$(self.f$y, other.f$y) && isize$$memory_eq$$__$TY$__isize$isize$$bool$(self.f$z, other.f$z))))
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
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_%trigger ($Snap.first s@$) self@18@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@18@00 $Ref.null))))
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
; [eval] (unfolding acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_(other), read$()) in isize$$memory_eq$$__$TY$__isize$isize$$bool$(self.f$x, other.f$x) && (isize$$memory_eq$$__$TY$__isize$isize$$bool$(self.f$y, other.f$y) && isize$$memory_eq$$__$TY$__isize$isize$$bool$(self.f$z, other.f$z)))
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
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_%trigger ($Snap.second s@$) other@19@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@18@00 other@19@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@19@00 $Ref.null))))
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
(assert (not (= self@18@00 other@19@00)))
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
(assert (not (= self@18@00 other@19@00)))
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
; [eval] isize$$memory_eq$$__$TY$__isize$isize$$bool$(self.f$x, other.f$x) && (isize$$memory_eq$$__$TY$__isize$isize$$bool$(self.f$y, other.f$y) && isize$$memory_eq$$__$TY$__isize$isize$$bool$(self.f$z, other.f$z))
; [eval] isize$$memory_eq$$__$TY$__isize$isize$$bool$(self.f$x, other.f$x)
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
(assert (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.first s@$)))
  ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 4
; Joined path conditions
(assert (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.first s@$)))
  ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 4
; [then-branch: 0 | !(isize$$memory_eq$$__$TY$__isize$isize$$bool$((First:(Second:(First:(s@$))), First:(Second:(Second:(s@$)))), First:(First:(s@$)), First:(Second:(s@$)))) | live]
; [else-branch: 0 | isize$$memory_eq$$__$TY$__isize$isize$$bool$((First:(Second:(First:(s@$))), First:(Second:(Second:(s@$)))), First:(First:(s@$)), First:(Second:(s@$))) | live]
(push) ; 5
; [then-branch: 0 | !(isize$$memory_eq$$__$TY$__isize$isize$$bool$((First:(Second:(First:(s@$))), First:(Second:(Second:(s@$)))), First:(First:(s@$)), First:(Second:(s@$))))]
(assert (not
  (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | isize$$memory_eq$$__$TY$__isize$isize$$bool$((First:(Second:(First:(s@$))), First:(Second:(Second:(s@$)))), First:(First:(s@$)), First:(Second:(s@$)))]
(assert (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.first s@$)))
  ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
; [eval] isize$$memory_eq$$__$TY$__isize$isize$$bool$(self.f$y, other.f$y)
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
(assert (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))))))
(pop) ; 6
; Joined path conditions
(assert (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))))))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 1 | !(isize$$memory_eq$$__$TY$__isize$isize$$bool$((First:(Second:(Second:(Second:(First:(s@$))))), First:(Second:(Second:(Second:(Second:(s@$)))))), First:(Second:(Second:(First:(s@$)))), First:(Second:(Second:(Second:(s@$)))))) | live]
; [else-branch: 1 | isize$$memory_eq$$__$TY$__isize$isize$$bool$((First:(Second:(Second:(Second:(First:(s@$))))), First:(Second:(Second:(Second:(Second:(s@$)))))), First:(Second:(Second:(First:(s@$)))), First:(Second:(Second:(Second:(s@$))))) | live]
(push) ; 7
; [then-branch: 1 | !(isize$$memory_eq$$__$TY$__isize$isize$$bool$((First:(Second:(Second:(Second:(First:(s@$))))), First:(Second:(Second:(Second:(Second:(s@$)))))), First:(Second:(Second:(First:(s@$)))), First:(Second:(Second:(Second:(s@$))))))]
(assert (not
  (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))))
(pop) ; 7
(push) ; 7
; [else-branch: 1 | isize$$memory_eq$$__$TY$__isize$isize$$bool$((First:(Second:(Second:(Second:(First:(s@$))))), First:(Second:(Second:(Second:(Second:(s@$)))))), First:(Second:(Second:(First:(s@$)))), First:(Second:(Second:(Second:(s@$)))))]
(assert (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))))))
; [eval] isize$$memory_eq$$__$TY$__isize$isize$$bool$(self.f$z, other.f$z)
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
(assert (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
(pop) ; 8
; Joined path conditions
(assert (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
  (and
    (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
    (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))
(assert (or
  (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
  (not
    (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
  (and
    (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
    (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
    (=>
      (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
      (and
        (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
        (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
    (or
      (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
      (not
        (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))
(assert (or
  (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
  (not
    (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))))
(pop) ; 3
; Joined path conditions
(assert (and
  (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_%trigger ($Snap.second s@$) other@19@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@19@00 $Ref.null)))
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
  (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
  (=>
    (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
    (and
      (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first s@$)))
        ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
      (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
      (=>
        (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
        (and
          (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
          (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
      (or
        (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
        (not
          (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
  (or
    (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
    (not
      (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first s@$)))
        ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))))
(pop) ; 2
; Joined path conditions
(assert (and
  (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_%trigger ($Snap.first s@$) self@18@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@18@00 $Ref.null)))
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
  (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_%trigger ($Snap.second s@$) other@19@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@19@00 $Ref.null)))
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
  (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
  (=>
    (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
    (and
      (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first s@$)))
        ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
      (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
      (=>
        (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
        (and
          (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
          (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
      (or
        (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
        (not
          (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
  (or
    (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
    (not
      (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first s@$)))
        ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))))
(assert (=
  result@20@00
  (and
    (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
    (and
      (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
      (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@18@00 $Ref) (other@19@00 $Ref)) (!
  (=>
    (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%precondition s@$ self@18@00 other@19@00)
    (=
      (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$ s@$ self@18@00 other@19@00)
      (and
        (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.first s@$)))
          ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
        (and
          (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
          (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
  :pattern ((m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$ s@$ self@18@00 other@19@00))
  :pattern ((m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%stateless self@18@00 other@19@00) (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_%trigger ($Snap.first s@$) self@18@00))
  :qid |quant-u-481|)))
(assert (forall ((s@$ $Snap) (self@18@00 $Ref) (other@19@00 $Ref)) (!
  (=>
    (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%precondition s@$ self@18@00 other@19@00)
    (and
      (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first s@$)))
        ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
      (=>
        (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.first s@$)))
          ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
        (and
          (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
          (=>
            (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
            (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
              ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
              ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))
  :pattern ((m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$ s@$ self@18@00 other@19@00))
  :qid |quant-u-482|)))
; ---------- DeadBorrowToken$ ----------
(declare-const borrow@22@00 Int)
; ---------- __TYPARAM__$S$__ ----------
(declare-const self@23@00 $Ref)
; ---------- __TYPARAM__$__HS$__ ----------
(declare-const self@24@00 $Ref)
; ---------- bool ----------
(declare-const self@25@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@26@00 Bool)
(assert (not (= self@25@00 $Ref.null)))
(pop) ; 1
; ---------- isize ----------
(declare-const self@27@00 $Ref)
(push) ; 1
(declare-const $t@28@00 $Snap)
(assert (= $t@28@00 ($Snap.combine ($Snap.first $t@28@00) ($Snap.second $t@28@00))))
(assert (not (= self@27@00 $Ref.null)))
(assert (=
  ($Snap.second $t@28@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@28@00))
    ($Snap.second ($Snap.second $t@28@00)))))
(assert (= ($Snap.first ($Snap.second $t@28@00)) $Snap.unit))
; [eval] -9223372036854775808 <= self.val_int
; [eval] -9223372036854775808
(assert (<= (- 0 9223372036854775808) ($SortWrappers.$SnapToInt ($Snap.first $t@28@00))))
(assert (= ($Snap.second ($Snap.second $t@28@00)) $Snap.unit))
; [eval] self.val_int <= 9223372036854775807
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first $t@28@00)) 9223372036854775807))
(pop) ; 1
; ---------- m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_ ----------
(declare-const self@29@00 $Ref)
(push) ; 1
(declare-const $t@30@00 $Snap)
(assert (= $t@30@00 ($Snap.combine ($Snap.first $t@30@00) ($Snap.second $t@30@00))))
(assert (not (= self@29@00 $Ref.null)))
(assert (=
  ($Snap.second $t@30@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@30@00))
    ($Snap.second ($Snap.second $t@30@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@30@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@30@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@30@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@30@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@30@00)))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@30@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@30@00)))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@30@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@30@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@30@00))))))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@30@00))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@30@00)))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@30@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@30@00)))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_ ----------
(declare-const self@31@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@32@00 $Snap)
(assert (= $t@32@00 ($Snap.combine ($Snap.first $t@32@00) ($Snap.second $t@32@00))))
(assert (not (= self@31@00 $Ref.null)))
(assert (=
  ($Snap.second $t@32@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@32@00))
    ($Snap.second ($Snap.second $t@32@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@32@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@32@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@32@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@32@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@32@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@00)))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@32@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@32@00)))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@00))))))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@32@00))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@00)))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@32@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@00)))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- m_348_cgmath_point$$Vector1$opensqu$0$closesqu$$_beg_$u64$_end_ ----------
(declare-const self@33@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@34@00 $Snap)
(assert (= $t@34@00 ($Snap.combine ($Snap.first $t@34@00) ($Snap.second $t@34@00))))
(assert (not (= self@33@00 $Ref.null)))
(pop) ; 1
; ---------- ref$__TYPARAM__$S$__ ----------
(declare-const self@35@00 $Ref)
(push) ; 1
(declare-const $t@36@00 $Snap)
(assert (= $t@36@00 ($Snap.combine ($Snap.first $t@36@00) ($Snap.second $t@36@00))))
(assert (not (= self@35@00 $Ref.null)))
(pop) ; 1
; ---------- ref$__TYPARAM__$__HS$__ ----------
(declare-const self@37@00 $Ref)
(push) ; 1
(declare-const $t@38@00 $Snap)
(assert (= $t@38@00 ($Snap.combine ($Snap.first $t@38@00) ($Snap.second $t@38@00))))
(assert (not (= self@37@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_ ----------
(declare-const self@39@00 $Ref)
(push) ; 1
(declare-const $t@40@00 $Snap)
(assert (= $t@40@00 ($Snap.combine ($Snap.first $t@40@00) ($Snap.second $t@40@00))))
(assert (not (= self@39@00 $Ref.null)))
(pop) ; 1
; ---------- tuple0$ ----------
(declare-const self@41@00 $Ref)
(push) ; 1
(declare-const $t@42@00 $Snap)
(assert (= $t@42@00 $Snap.unit))
(pop) ; 1
; ---------- tuple2$isize$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_ ----------
(declare-const self@43@00 $Ref)
(push) ; 1
(declare-const $t@44@00 $Snap)
(assert (= $t@44@00 ($Snap.combine ($Snap.first $t@44@00) ($Snap.second $t@44@00))))
(assert (not (= self@43@00 $Ref.null)))
(assert (=
  ($Snap.second $t@44@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@44@00))
    ($Snap.second ($Snap.second $t@44@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@44@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@44@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@44@00))))))
(pop) ; 1
; ---------- tuple2$u64$m_348_cgmath_point$$Vector1$opensqu$0$closesqu$$_beg_$u64$_end_ ----------
(declare-const self@45@00 $Ref)
(push) ; 1
(declare-const $t@46@00 $Snap)
(assert (= $t@46@00 ($Snap.combine ($Snap.first $t@46@00) ($Snap.second $t@46@00))))
(assert (not (= self@45@00 $Ref.null)))
(assert (=
  ($Snap.second $t@46@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@46@00))
    ($Snap.second ($Snap.second $t@46@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@46@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@46@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@46@00))))))
(pop) ; 1
; ---------- u64 ----------
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
(assert (= ($Snap.first ($Snap.second $t@48@00)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@48@00))))
(assert (= ($Snap.second ($Snap.second $t@48@00)) $Snap.unit))
; [eval] self.val_int <= 18446744073709551615
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first $t@48@00)) 18446744073709551615))
(pop) ; 1
