(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 17:28:17
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
(declare-sort Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ 0)
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
(declare-fun $SortWrappers.Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_To$Snap (Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_) $Snap)
(declare-fun $SortWrappers.$SnapToSnap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap) Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_)
(assert (forall ((x Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_)) (!
    (= x ($SortWrappers.$SnapToSnap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_($SortWrappers.Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_To$Snap x)))
    :pattern (($SortWrappers.Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_To$Snap x))
    :qid |$Snap.$SnapToSnap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_To$Snap($SortWrappers.$SnapToSnap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ x)))
    :pattern (($SortWrappers.$SnapToSnap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ x))
    :qid |$Snap.Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_To$SnapToSnap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_|
    )))
; ////////// Symbols
(declare-fun cons$__$TY$__$int$$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_<Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_> (Int) Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_)
(declare-fun mirror$m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$__$TY$__Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$<Int> (Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_) Int)
; Declaring symbols related to program functions (from program analysis)
(declare-fun read$ ($Snap) $Perm)
(declare-fun read$%limited ($Snap) $Perm)
(declare-const read$%stateless Bool)
(declare-fun read$%precondition ($Snap) Bool)
(declare-fun snap$__$TY$__u32$$int$ ($Snap $Ref) Int)
(declare-fun snap$__$TY$__u32$$int$%limited ($Snap $Ref) Int)
(declare-fun snap$__$TY$__u32$$int$%stateless ($Ref) Bool)
(declare-fun snap$__$TY$__u32$$int$%precondition ($Snap $Ref) Bool)
(declare-fun snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap $Ref) Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_)
(declare-fun snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%limited ($Snap $Ref) Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_)
(declare-fun snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%stateless ($Ref) Bool)
(declare-fun snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap $Ref) Bool)
(declare-fun not_equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap $Ref) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$ ($Snap) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%limited ($Snap) Bool)
(declare-const builtin$unreach_bool__$TY$__$bool$%stateless Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%precondition ($Snap) Bool)
(declare-fun equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun DeadBorrowToken$%trigger ($Snap Int) Bool)
(declare-fun bool%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_10$4$13107371109836920090%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_11$4$13107371109836920090%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_12$4$13107371109836920090%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_13$4$876046000986327712%trigger ($Snap $Ref) Bool)
(declare-fun m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_10$4$13107371109836920090%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_11$4$13107371109836920090%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_12$4$13107371109836920090%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_13$4$876046000986327712%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$u32%trigger ($Snap $Ref) Bool)
(declare-fun tuple0$%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$u32$bool%trigger ($Snap $Ref) Bool)
(declare-fun u32%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((_arg_0_1 Int) (_arg_0_2 Int)) (!
  (=>
    (=
      (cons$__$TY$__$int$$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_<Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_> _arg_0_1)
      (cons$__$TY$__$int$$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_<Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_> _arg_0_2))
    (= _arg_0_1 _arg_0_2))
  :pattern ((cons$__$TY$__$int$$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_<Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_> _arg_0_1) (cons$__$TY$__$int$$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_<Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_> _arg_0_2))
  :qid |prog.Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$injectivity|)))
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
(declare-const $t@20@00 $Snap)
(assert (= $t@20@00 ($Snap.combine ($Snap.first $t@20@00) ($Snap.second $t@20@00))))
(assert (= ($Snap.first $t@20@00) $Snap.unit))
; [eval] none < result
(assert (< $Perm.No result@0@00))
(assert (= ($Snap.second $t@20@00) $Snap.unit))
; [eval] result < write
(assert (< result@0@00 $Perm.Write))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (read$%limited s@$) (read$ s@$))
  :pattern ((read$ s@$))
  :qid |quant-u-112|)))
(assert (forall ((s@$ $Snap)) (!
  (as read$%stateless  Bool)
  :pattern ((read$%limited s@$))
  :qid |quant-u-113|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) (=>
    (read$%precondition s@$)
    (and (< $Perm.No result@0@00) (< result@0@00 $Perm.Write))))
  :pattern ((read$%limited s@$))
  :qid |quant-u-130|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-131|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-132|)))
; ---------- FUNCTION snap$__$TY$__u32$$int$----------
(declare-fun _arg@1@00 () $Ref)
(declare-fun result@2@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
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
(pop) ; 1
(assert (forall ((s@$ $Snap) (_arg@1@00 $Ref)) (!
  (=
    (snap$__$TY$__u32$$int$%limited s@$ _arg@1@00)
    (snap$__$TY$__u32$$int$ s@$ _arg@1@00))
  :pattern ((snap$__$TY$__u32$$int$ s@$ _arg@1@00))
  :qid |quant-u-114|)))
(assert (forall ((s@$ $Snap) (_arg@1@00 $Ref)) (!
  (snap$__$TY$__u32$$int$%stateless _arg@1@00)
  :pattern ((snap$__$TY$__u32$$int$%limited s@$ _arg@1@00))
  :qid |quant-u-115|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(u32(_arg), read$()) in _arg.val_int)
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
(assert (u32%trigger s@$ _arg@1@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _arg@1@00 $Ref.null))))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first s@$))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
; Joined path conditions
(assert (and
  (u32%trigger s@$ _arg@1@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= _arg@1@00 $Ref.null)))
  (= ($Snap.second s@$) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first s@$)))))
(assert (= result@2@00 ($SortWrappers.$SnapToInt ($Snap.first s@$))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_arg@1@00 $Ref)) (!
  (=>
    (snap$__$TY$__u32$$int$%precondition s@$ _arg@1@00)
    (=
      (snap$__$TY$__u32$$int$ s@$ _arg@1@00)
      ($SortWrappers.$SnapToInt ($Snap.first s@$))))
  :pattern ((snap$__$TY$__u32$$int$ s@$ _arg@1@00))
  :qid |quant-u-133|)))
(assert (forall ((s@$ $Snap) (_arg@1@00 $Ref)) (!
  true
  :pattern ((snap$__$TY$__u32$$int$ s@$ _arg@1@00))
  :qid |quant-u-134|)))
; ---------- FUNCTION snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_----------
(declare-fun _arg@3@00 () $Ref)
(declare-fun result@4@00 () Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
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
(pop) ; 1
(assert (forall ((s@$ $Snap) (_arg@3@00 $Ref)) (!
  (=
    (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%limited s@$ _arg@3@00)
    (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ s@$ _arg@3@00))
  :pattern ((snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ s@$ _arg@3@00))
  :qid |quant-u-116|)))
(assert (forall ((s@$ $Snap) (_arg@3@00 $Ref)) (!
  (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%stateless _arg@3@00)
  :pattern ((snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%limited s@$ _arg@3@00))
  :qid |quant-u-117|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_arg), read$()) in cons$__$TY$__$int$$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(snap$__$TY$__u32$$int$(_arg.f$bal)))
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
(assert (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger s@$ _arg@3@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _arg@3@00 $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] cons$__$TY$__$int$$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(snap$__$TY$__u32$$int$(_arg.f$bal))
; [eval] snap$__$TY$__u32$$int$(_arg.f$bal)
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
(assert (snap$__$TY$__u32$$int$%precondition ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
(pop) ; 3
; Joined path conditions
(assert (snap$__$TY$__u32$$int$%precondition ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
(pop) ; 2
; Joined path conditions
(assert (and
  (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger s@$ _arg@3@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= _arg@3@00 $Ref.null)))
  (snap$__$TY$__u32$$int$%precondition ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))))
(assert (=
  result@4@00
  (cons$__$TY$__$int$$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_<Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_> (snap$__$TY$__u32$$int$ ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_arg@3@00 $Ref)) (!
  (=>
    (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition s@$ _arg@3@00)
    (=
      (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ s@$ _arg@3@00)
      (cons$__$TY$__$int$$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_<Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_> (snap$__$TY$__u32$$int$ ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))))
  :pattern ((snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ s@$ _arg@3@00))
  :pattern ((snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%stateless _arg@3@00) (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger s@$ _arg@3@00))
  :qid |quant-u-135|)))
(assert (forall ((s@$ $Snap) (_arg@3@00 $Ref)) (!
  (=>
    (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition s@$ _arg@3@00)
    (snap$__$TY$__u32$$int$%precondition ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
  :pattern ((snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ s@$ _arg@3@00))
  :qid |quant-u-136|)))
; ---------- FUNCTION not_equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$----------
(declare-fun _left@5@00 () $Ref)
(declare-fun _right@6@00 () $Ref)
(declare-fun result@7@00 () Bool)
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
(assert (not (= _left@5@00 _right@6@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (_left@5@00 $Ref) (_right@6@00 $Ref)) (!
  (=
    (not_equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@5@00 _right@6@00)
    (not_equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@5@00 _right@6@00))
  :pattern ((not_equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@5@00 _right@6@00))
  :qid |quant-u-118|)))
(assert (forall ((s@$ $Snap) (_left@5@00 $Ref) (_right@6@00 $Ref)) (!
  (not_equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless _left@5@00 _right@6@00)
  :pattern ((not_equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@5@00 _right@6@00))
  :qid |quant-u-119|)))
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
; [eval] snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_left) != snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_right)
; [eval] snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_left)
(set-option :timeout 0)
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
(assert (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first s@$) _left@5@00))
(pop) ; 2
; Joined path conditions
(assert (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first s@$) _left@5@00))
; [eval] snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_right)
(set-option :timeout 0)
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
(assert (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.second s@$) _right@6@00))
(pop) ; 2
; Joined path conditions
(assert (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.second s@$) _right@6@00))
(assert (=
  result@7@00
  (not
    (=
      (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.first s@$) _left@5@00)
      (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.second s@$) _right@6@00)))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_left@5@00 $Ref) (_right@6@00 $Ref)) (!
  (=>
    (not_equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@5@00 _right@6@00)
    (=
      (not_equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@5@00 _right@6@00)
      (not
        (=
          (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.first s@$) _left@5@00)
          (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.second s@$) _right@6@00)))))
  :pattern ((not_equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@5@00 _right@6@00))
  :qid |quant-u-137|)))
(assert (forall ((s@$ $Snap) (_left@5@00 $Ref) (_right@6@00 $Ref)) (!
  (=>
    (not_equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@5@00 _right@6@00)
    (and
      (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first s@$) _left@5@00)
      (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.second s@$) _right@6@00)))
  :pattern ((not_equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@5@00 _right@6@00))
  :qid |quant-u-138|)))
; ---------- FUNCTION m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$----------
(declare-fun _pure_1@8@00 () $Ref)
(declare-fun result@9@00 () Int)
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
(assert (= ($Snap.second s@$) $Snap.unit))
(declare-const $t@21@00 $Snap)
(assert (= $t@21@00 ($Snap.combine ($Snap.first $t@21@00) ($Snap.second $t@21@00))))
(assert (= ($Snap.first $t@21@00) $Snap.unit))
(assert (=
  ($Snap.second $t@21@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@21@00))
    ($Snap.second ($Snap.second $t@21@00)))))
(assert (= ($Snap.first ($Snap.second $t@21@00)) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@9@00))
(assert (= ($Snap.second ($Snap.second $t@21@00)) $Snap.unit))
; [eval] result == mirror$m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$__$TY$__Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_pure_1))
; [eval] mirror$m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$__$TY$__Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_pure_1))
; [eval] snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_pure_1)
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
(assert (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first s@$) _pure_1@8@00))
(pop) ; 2
; Joined path conditions
(assert (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first s@$) _pure_1@8@00))
(assert (=
  result@9@00
  (mirror$m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$__$TY$__Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$<Int> (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.first s@$) _pure_1@8@00))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@8@00 $Ref)) (!
  (=
    (m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@8@00)
    (m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@8@00))
  :pattern ((m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@8@00))
  :qid |quant-u-120|)))
(assert (forall ((s@$ $Snap) (_pure_1@8@00 $Ref)) (!
  (m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless _pure_1@8@00)
  :pattern ((m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@8@00))
  :qid |quant-u-121|)))
(assert (forall ((s@$ $Snap) (_pure_1@8@00 $Ref)) (!
  (let ((result@9@00 (m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@8@00))) (=>
    (m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@8@00)
    (and
      (<= 0 result@9@00)
      (=
        result@9@00
        (mirror$m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$__$TY$__Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$<Int> (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.first s@$) _pure_1@8@00))))))
  :pattern ((m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@8@00))
  :qid |quant-u-139|)))
(assert (forall ((s@$ $Snap) (_pure_1@8@00 $Ref)) (!
  (let ((result@9@00 (m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@8@00))) true)
  :pattern ((m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@8@00))
  :qid |quant-u-140|)))
(assert (forall ((s@$ $Snap) (_pure_1@8@00 $Ref)) (!
  (let ((result@9@00 (m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@8@00))) true)
  :pattern ((m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@8@00))
  :qid |quant-u-141|)))
(assert (forall ((s@$ $Snap) (_pure_1@8@00 $Ref)) (!
  (let ((result@9@00 (m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@8@00))) (=>
    (m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@8@00)
    (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first s@$) _pure_1@8@00)))
  :pattern ((m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@8@00))
  :qid |quant-u-142|)))
; ----- Verification of function body and postcondition -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (= ($Snap.second s@$) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_pure_1), read$()) in (unfolding acc(u32(_pure_1.f$bal), read$()) in _pure_1.f$bal.val_int))
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
(assert (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@8@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@8@00 $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(u32(_pure_1.f$bal), read$()) in _pure_1.f$bal.val_int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
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
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
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
(assert (u32%trigger ($Snap.second ($Snap.first s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))))
(assert (=
  ($Snap.second ($Snap.first s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.second ($Snap.second ($Snap.first s@$))))))
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) $Ref.null))))
(assert (= ($Snap.second ($Snap.second ($Snap.first s@$))) $Snap.unit))
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first s@$))))))
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
  (u32%trigger ($Snap.second ($Snap.first s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))))
  (=
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.second ($Snap.second ($Snap.first s@$)))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) $Ref.null)))
  (= ($Snap.second ($Snap.second ($Snap.first s@$))) $Snap.unit)
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first s@$)))))))
(pop) ; 2
; Joined path conditions
(assert (and
  (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@8@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@8@00 $Ref.null)))
  (u32%trigger ($Snap.second ($Snap.first s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))))
  (=
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.second ($Snap.second ($Snap.first s@$)))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) $Ref.null)))
  (= ($Snap.second ($Snap.second ($Snap.first s@$))) $Snap.unit)
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first s@$)))))))
(assert (=
  result@9@00
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first s@$))))))
; [eval] 0 <= result
(set-option :timeout 0)
(push) ; 2
(assert (not (<= 0 result@9@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 result@9@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@8@00 $Ref)) (!
  (=>
    (m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@8@00)
    (=
      (m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@8@00)
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first s@$))))))
  :pattern ((m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@8@00))
  :qid |quant-u-143|)))
(assert (forall ((s@$ $Snap) (_pure_1@8@00 $Ref)) (!
  true
  :pattern ((m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@8@00))
  :qid |quant-u-144|)))
; ---------- FUNCTION builtin$unreach_bool__$TY$__$bool$----------
(declare-fun result@10@00 () Bool)
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
  :qid |quant-u-122|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$unreach_bool__$TY$__$bool$%stateless  Bool)
  :pattern ((builtin$unreach_bool__$TY$__$bool$%limited s@$))
  :qid |quant-u-123|)))
; ---------- FUNCTION equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$----------
(declare-fun _left@11@00 () $Ref)
(declare-fun _right@12@00 () $Ref)
(declare-fun result@13@00 () Bool)
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
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _left@11@00 $Ref.null))))
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
(assert (not (= _left@11@00 _right@12@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _right@12@00 $Ref.null))))
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
(assert (forall ((s@$ $Snap) (_left@11@00 $Ref) (_right@12@00 $Ref)) (!
  (=
    (equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@11@00 _right@12@00)
    (equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@11@00 _right@12@00))
  :pattern ((equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@11@00 _right@12@00))
  :qid |quant-u-124|)))
(assert (forall ((s@$ $Snap) (_left@11@00 $Ref) (_right@12@00 $Ref)) (!
  (equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless _left@11@00 _right@12@00)
  :pattern ((equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@11@00 _right@12@00))
  :qid |quant-u-125|)))
; ----- Verification of function body and postcondition -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _left@11@00 $Ref.null))))
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
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _right@12@00 $Ref.null))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_left.val_ref) == snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_right.val_ref)
; [eval] snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_left.val_ref)
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
(assert (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
(pop) ; 2
; Joined path conditions
(assert (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
; [eval] snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_right.val_ref)
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
(assert (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))))
(pop) ; 2
; Joined path conditions
(assert (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))))
(assert (=
  result@13@00
  (=
    (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
    (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_left@11@00 $Ref) (_right@12@00 $Ref)) (!
  (=>
    (equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@11@00 _right@12@00)
    (=
      (equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@11@00 _right@12@00)
      (=
        (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))))))
  :pattern ((equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@11@00 _right@12@00))
  :qid |quant-u-145|)))
(assert (forall ((s@$ $Snap) (_left@11@00 $Ref) (_right@12@00 $Ref)) (!
  (=>
    (equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@11@00 _right@12@00)
    (and
      (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))
  :pattern ((equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@11@00 _right@12@00))
  :qid |quant-u-146|)))
; ---------- FUNCTION equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$----------
(declare-fun _left@14@00 () $Ref)
(declare-fun _right@15@00 () $Ref)
(declare-fun result@16@00 () Bool)
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
(assert (not (= _left@14@00 _right@15@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (_left@14@00 $Ref) (_right@15@00 $Ref)) (!
  (=
    (equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@14@00 _right@15@00)
    (equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@14@00 _right@15@00))
  :pattern ((equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@14@00 _right@15@00))
  :qid |quant-u-126|)))
(assert (forall ((s@$ $Snap) (_left@14@00 $Ref) (_right@15@00 $Ref)) (!
  (equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless _left@14@00 _right@15@00)
  :pattern ((equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@14@00 _right@15@00))
  :qid |quant-u-127|)))
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
; [eval] snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_left) == snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_right)
; [eval] snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_left)
(set-option :timeout 0)
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
(assert (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first s@$) _left@14@00))
(pop) ; 2
; Joined path conditions
(assert (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first s@$) _left@14@00))
; [eval] snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_right)
(set-option :timeout 0)
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
(assert (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.second s@$) _right@15@00))
(pop) ; 2
; Joined path conditions
(assert (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.second s@$) _right@15@00))
(assert (=
  result@16@00
  (=
    (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.first s@$) _left@14@00)
    (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.second s@$) _right@15@00))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_left@14@00 $Ref) (_right@15@00 $Ref)) (!
  (=>
    (equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@14@00 _right@15@00)
    (=
      (equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@14@00 _right@15@00)
      (=
        (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.first s@$) _left@14@00)
        (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.second s@$) _right@15@00))))
  :pattern ((equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@14@00 _right@15@00))
  :qid |quant-u-147|)))
(assert (forall ((s@$ $Snap) (_left@14@00 $Ref) (_right@15@00 $Ref)) (!
  (=>
    (equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@14@00 _right@15@00)
    (and
      (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first s@$) _left@14@00)
      (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.second s@$) _right@15@00)))
  :pattern ((equals$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@14@00 _right@15@00))
  :qid |quant-u-148|)))
; ---------- FUNCTION not_equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$----------
(declare-fun _left@17@00 () $Ref)
(declare-fun _right@18@00 () $Ref)
(declare-fun result@19@00 () Bool)
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
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _left@17@00 $Ref.null))))
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
(assert (not (= _left@17@00 _right@18@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _right@18@00 $Ref.null))))
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
(assert (forall ((s@$ $Snap) (_left@17@00 $Ref) (_right@18@00 $Ref)) (!
  (=
    (not_equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@17@00 _right@18@00)
    (not_equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@17@00 _right@18@00))
  :pattern ((not_equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@17@00 _right@18@00))
  :qid |quant-u-128|)))
(assert (forall ((s@$ $Snap) (_left@17@00 $Ref) (_right@18@00 $Ref)) (!
  (not_equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless _left@17@00 _right@18@00)
  :pattern ((not_equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@17@00 _right@18@00))
  :qid |quant-u-129|)))
; ----- Verification of function body and postcondition -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _left@17@00 $Ref.null))))
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
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _right@18@00 $Ref.null))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_left.val_ref) != snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_right.val_ref)
; [eval] snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_left.val_ref)
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
(assert (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
(pop) ; 2
; Joined path conditions
(assert (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
; [eval] snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_right.val_ref)
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
(assert (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))))
(pop) ; 2
; Joined path conditions
(assert (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))))
(assert (=
  result@19@00
  (not
    (=
      (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_left@17@00 $Ref) (_right@18@00 $Ref)) (!
  (=>
    (not_equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@17@00 _right@18@00)
    (=
      (not_equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@17@00 _right@18@00)
      (not
        (=
          (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
          (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))))
  :pattern ((not_equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@17@00 _right@18@00))
  :qid |quant-u-149|)))
(assert (forall ((s@$ $Snap) (_left@17@00 $Ref) (_right@18@00 $Ref)) (!
  (=>
    (not_equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@17@00 _right@18@00)
    (and
      (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      (snap$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))
  :pattern ((not_equals$__$TY$__ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@17@00 _right@18@00))
  :qid |quant-u-150|)))
; ---------- DeadBorrowToken$ ----------
(declare-const borrow@22@00 Int)
; ---------- bool ----------
(declare-const self@23@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@24@00 Bool)
(assert (not (= self@23@00 $Ref.null)))
(pop) ; 1
; ---------- closure$0_1_10$4$13107371109836920090 ----------
(declare-const self@25@00 $Ref)
; ---------- closure$0_1_11$4$13107371109836920090 ----------
(declare-const self@26@00 $Ref)
; ---------- closure$0_1_12$4$13107371109836920090 ----------
(declare-const self@27@00 $Ref)
; ---------- closure$0_1_13$4$876046000986327712 ----------
(declare-const self@28@00 $Ref)
; ---------- m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@29@00 $Ref)
(push) ; 1
(declare-const $t@30@00 $Snap)
(assert (= $t@30@00 ($Snap.combine ($Snap.first $t@30@00) ($Snap.second $t@30@00))))
(assert (not (= self@29@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_10$4$13107371109836920090 ----------
(declare-const self@31@00 $Ref)
(push) ; 1
(declare-const $t@32@00 $Snap)
(assert (= $t@32@00 ($Snap.combine ($Snap.first $t@32@00) ($Snap.second $t@32@00))))
(assert (not (= self@31@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_11$4$13107371109836920090 ----------
(declare-const self@33@00 $Ref)
(push) ; 1
(declare-const $t@34@00 $Snap)
(assert (= $t@34@00 ($Snap.combine ($Snap.first $t@34@00) ($Snap.second $t@34@00))))
(assert (not (= self@33@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_12$4$13107371109836920090 ----------
(declare-const self@35@00 $Ref)
(push) ; 1
(declare-const $t@36@00 $Snap)
(assert (= $t@36@00 ($Snap.combine ($Snap.first $t@36@00) ($Snap.second $t@36@00))))
(assert (not (= self@35@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_13$4$876046000986327712 ----------
(declare-const self@37@00 $Ref)
(push) ; 1
(declare-const $t@38@00 $Snap)
(assert (= $t@38@00 ($Snap.combine ($Snap.first $t@38@00) ($Snap.second $t@38@00))))
(assert (not (= self@37@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@39@00 $Ref)
(push) ; 1
(declare-const $t@40@00 $Snap)
(assert (= $t@40@00 ($Snap.combine ($Snap.first $t@40@00) ($Snap.second $t@40@00))))
(assert (not (= self@39@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@41@00 $Ref)
(push) ; 1
(declare-const $t@42@00 $Snap)
(assert (= $t@42@00 ($Snap.combine ($Snap.first $t@42@00) ($Snap.second $t@42@00))))
(assert (not (= self@41@00 $Ref.null)))
(pop) ; 1
; ---------- ref$u32 ----------
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
; ---------- tuple2$u32$bool ----------
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
; ---------- u32 ----------
(declare-const self@49@00 $Ref)
(push) ; 1
(declare-const $t@50@00 $Snap)
(assert (= $t@50@00 ($Snap.combine ($Snap.first $t@50@00) ($Snap.second $t@50@00))))
(assert (not (= self@49@00 $Ref.null)))
(assert (= ($Snap.second $t@50@00) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@50@00))))
(pop) ; 1
