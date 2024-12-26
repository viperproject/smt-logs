(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:23:11
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
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
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
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- m_balance$$main$opensqu$0$closesqu$ ----------
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
; assert true
; [exec]
; exhale acc(tuple0$(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$transfer$opensqu$0$closesqu$ ----------
(declare-const _0@9@01 $Ref)
(declare-const _0@10@01 $Ref)
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
(declare-const __t0@11@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@12@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@13@01 Bool)
; [exec]
; var _old$pre$0: Ref
(declare-const _old$pre$0@14@01 $Ref)
; [exec]
; var _old$pre$1: Ref
(declare-const _old$pre$1@15@01 $Ref)
; [exec]
; var _1: Ref
(declare-const _1@16@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@17@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@18@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@19@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@20@01 $Ref)
; [exec]
; var _6: Ref
(declare-const _6@21@01 $Ref)
; [exec]
; var _7: Ref
(declare-const _7@22@01 $Ref)
; [exec]
; var _8: Ref
(declare-const _8@23@01 $Ref)
; [exec]
; var _9: Ref
(declare-const _9@24@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(_1.val_ref, write) &&
;   (acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) &&
;   (acc(_2.val_ref, write) &&
;   (acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_2.val_ref), write) &&
;   acc(u32(_3), write))))
(declare-const $t@25@01 $Snap)
(assert (= $t@25@01 ($Snap.combine ($Snap.first $t@25@01) ($Snap.second $t@25@01))))
(assert (not (= _1@16@01 $Ref.null)))
(assert (=
  ($Snap.second $t@25@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@25@01))
    ($Snap.second ($Snap.second $t@25@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@25@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@25@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@16@01 _2@17@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@17@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@25@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@25@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@25@01)))))))
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
(declare-const $t@26@01 $Snap)
(assert (= $t@26@01 $Snap.unit))
; State saturation: after inhale
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
; label pre
; [exec]
; label bb0
; [exec]
; __t0 := true
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@29@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_ref, write)
(declare-const $t@30@01 $Ref)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@17@01 ret@29@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@16@01 ret@29@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@29@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _5.val_ref := _1.val_ref
(declare-const val_ref@31@01 $Ref)
(assert (= val_ref@31@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@25@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@17@01 ret@29@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@16@01 ret@29@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _6 := builtin$havoc_ref()
(declare-const ret@32@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_6.val_int, write)
(declare-const $t@33@01 Int)
(assert (not (= ret@32@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u32(_3), write)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@32@01 _3@18@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _3@18@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))
  $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u32%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@01)))) _3@18@01))
; [exec]
; _6.val_int := _3.val_int
(declare-const val_int@34@01 Int)
(assert (=
  val_int@34@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _3@18@01 ret@32@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l1
; [exec]
; label l2
; [exec]
; fold acc(u32(_6), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@34@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@34@01))
(assert (u32%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@34@01) $Snap.unit) ret@32@01))
; [exec]
; assert true
; [exec]
; exhale acc(_5.val_ref, write) &&
;   (acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_5.val_ref), write) &&
;   acc(u32(_6), write))
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@25@01))))
  val_ref@31@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@25@01)) val_ref@31@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@35@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(old[l2](_5.val_ref)), write)
; [eval] old[l2](_5.val_ref)
(declare-const $t@36@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@25@01))))
  val_ref@31@01)))
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
; inhale acc(tuple0$(_4), write)
(declare-const $t@37@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@38@01 $Snap)
(assert (= $t@38@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(old[l2](_5.val_ref)), write) in
;     (unfolding acc(u32(old[l2](_5.val_ref).f$bal), write) in
;       old[l2](_5.val_ref).f$bal.val_int ==
;       old[l2]((unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_5.val_ref), write) in
;         (unfolding acc(u32(_5.val_ref.f$bal), write) in
;           _5.val_ref.f$bal.val_int))) -
;       old[l2](_6.val_int)))
(declare-const $t@39@01 $Snap)
(assert (= $t@39@01 $Snap.unit))
; [eval] (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(old[l2](_5.val_ref)), write) in (unfolding acc(u32(old[l2](_5.val_ref).f$bal), write) in old[l2](_5.val_ref).f$bal.val_int == old[l2]((unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_5.val_ref), write) in (unfolding acc(u32(_5.val_ref.f$bal), write) in _5.val_ref.f$bal.val_int))) - old[l2](_6.val_int)))
; [eval] old[l2](_5.val_ref)
(set-option :timeout 0)
(push) ; 3
; [eval] old[l2](_5.val_ref)
(assert (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger $t@36@01 val_ref@31@01))
(assert (= $t@36@01 ($Snap.combine ($Snap.first $t@36@01) ($Snap.second $t@36@01))))
(assert (not (= val_ref@31@01 $Ref.null)))
; [eval] (unfolding acc(u32(old[l2](_5.val_ref).f$bal), write) in old[l2](_5.val_ref).f$bal.val_int == old[l2]((unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_5.val_ref), write) in (unfolding acc(u32(_5.val_ref.f$bal), write) in _5.val_ref.f$bal.val_int))) - old[l2](_6.val_int))
; [eval] old[l2](_5.val_ref)
(push) ; 4
; [eval] old[l2](_5.val_ref)
(assert (u32%trigger ($Snap.second $t@36@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@36@01))))
(assert (=
  ($Snap.second $t@36@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@36@01))
    ($Snap.second ($Snap.second $t@36@01)))))
(push) ; 5
(set-option :timeout 10)
(assert (not (= _3@18@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@36@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@36@01)) $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@36@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@36@01)))))
; [eval] old[l2](_5.val_ref).f$bal.val_int == old[l2]((unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_5.val_ref), write) in (unfolding acc(u32(_5.val_ref.f$bal), write) in _5.val_ref.f$bal.val_int))) - old[l2](_6.val_int)
; [eval] old[l2](_5.val_ref)
; [eval] old[l2]((unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_5.val_ref), write) in (unfolding acc(u32(_5.val_ref.f$bal), write) in _5.val_ref.f$bal.val_int))) - old[l2](_6.val_int)
; [eval] old[l2]((unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_5.val_ref), write) in (unfolding acc(u32(_5.val_ref.f$bal), write) in _5.val_ref.f$bal.val_int)))
; [eval] (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_5.val_ref), write) in (unfolding acc(u32(_5.val_ref.f$bal), write) in _5.val_ref.f$bal.val_int))
(set-option :timeout 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@25@01))))
  val_ref@31@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@25@01)) val_ref@31@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first ($Snap.second $t@25@01)) val_ref@31@01))
(assert (=
  ($Snap.first ($Snap.second $t@25@01))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second $t@25@01)))
    ($Snap.second ($Snap.first ($Snap.second $t@25@01))))))
; [eval] (unfolding acc(u32(_5.val_ref.f$bal), write) in _5.val_ref.f$bal.val_int)
(set-option :timeout 0)
(push) ; 6
(assert (u32%trigger ($Snap.second ($Snap.first ($Snap.second $t@25@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@25@01))))))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second $t@25@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@25@01))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second $t@25@01)))))))
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  ret@32@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@25@01)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  _3@18@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@25@01)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@25@01))))
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second $t@25@01))))
  $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@25@01)))))))
(pop) ; 6
; Joined path conditions
(assert (and
  (u32%trigger ($Snap.second ($Snap.first ($Snap.second $t@25@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@25@01)))))
  (=
    ($Snap.second ($Snap.first ($Snap.second $t@25@01)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@25@01))))
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second $t@25@01))))))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@25@01))))
      $Ref.null))
  (=
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second $t@25@01))))
    $Snap.unit)
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@25@01))))))))
(pop) ; 5
; Joined path conditions
(assert (and
  (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first ($Snap.second $t@25@01)) val_ref@31@01)
  (=
    ($Snap.first ($Snap.second $t@25@01))
    ($Snap.combine
      ($Snap.first ($Snap.first ($Snap.second $t@25@01)))
      ($Snap.second ($Snap.first ($Snap.second $t@25@01)))))
  (u32%trigger ($Snap.second ($Snap.first ($Snap.second $t@25@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@25@01)))))
  (=
    ($Snap.second ($Snap.first ($Snap.second $t@25@01)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@25@01))))
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second $t@25@01))))))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@25@01))))
      $Ref.null))
  (=
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second $t@25@01))))
    $Snap.unit)
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@25@01))))))))
; [eval] old[l2](_6.val_int)
(pop) ; 4
; Joined path conditions
(assert (and
  (u32%trigger ($Snap.second $t@36@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@36@01)))
  (=
    ($Snap.second $t@36@01)
    ($Snap.combine
      ($Snap.first ($Snap.second $t@36@01))
      ($Snap.second ($Snap.second $t@36@01))))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@36@01)) $Ref.null))
  (= ($Snap.second ($Snap.second $t@36@01)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@36@01))))
  (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first ($Snap.second $t@25@01)) val_ref@31@01)
  (=
    ($Snap.first ($Snap.second $t@25@01))
    ($Snap.combine
      ($Snap.first ($Snap.first ($Snap.second $t@25@01)))
      ($Snap.second ($Snap.first ($Snap.second $t@25@01)))))
  (u32%trigger ($Snap.second ($Snap.first ($Snap.second $t@25@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@25@01)))))
  (=
    ($Snap.second ($Snap.first ($Snap.second $t@25@01)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@25@01))))
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second $t@25@01))))))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@25@01))))
      $Ref.null))
  (=
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second $t@25@01))))
    $Snap.unit)
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@25@01))))))))
(pop) ; 3
; Joined path conditions
(assert (and
  (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger $t@36@01 val_ref@31@01)
  (= $t@36@01 ($Snap.combine ($Snap.first $t@36@01) ($Snap.second $t@36@01)))
  (not (= val_ref@31@01 $Ref.null))
  (u32%trigger ($Snap.second $t@36@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@36@01)))
  (=
    ($Snap.second $t@36@01)
    ($Snap.combine
      ($Snap.first ($Snap.second $t@36@01))
      ($Snap.second ($Snap.second $t@36@01))))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@36@01)) $Ref.null))
  (= ($Snap.second ($Snap.second $t@36@01)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@36@01))))
  (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first ($Snap.second $t@25@01)) val_ref@31@01)
  (=
    ($Snap.first ($Snap.second $t@25@01))
    ($Snap.combine
      ($Snap.first ($Snap.first ($Snap.second $t@25@01)))
      ($Snap.second ($Snap.first ($Snap.second $t@25@01)))))
  (u32%trigger ($Snap.second ($Snap.first ($Snap.second $t@25@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@25@01)))))
  (=
    ($Snap.second ($Snap.first ($Snap.second $t@25@01)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@25@01))))
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second $t@25@01))))))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@25@01))))
      $Ref.null))
  (=
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second $t@25@01))))
    $Snap.unit)
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@25@01))))))))
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@36@01)))
  (-
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@25@01)))))
    val_int@34@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label l4
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; _8 := builtin$havoc_ref()
(declare-const ret@40@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_8.val_ref, write)
(declare-const $t@41@01 $Ref)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@17@01 ret@40@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@16@01 ret@40@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@40@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _8.val_ref := _2.val_ref
(declare-const val_ref@42@01 $Ref)
(assert (=
  val_ref@42@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@25@01))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@17@01 ret@40@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@16@01 ret@40@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l5
; [exec]
; _9 := builtin$havoc_ref()
(declare-const ret@43@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_9.val_int, write)
(declare-const $t@44@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _3@18@01 ret@43@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@43@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _9.val_int := _3.val_int
(declare-const val_int@45@01 Int)
(assert (=
  val_int@45@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _3@18@01 ret@43@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l6
; [exec]
; label l7
; [exec]
; fold acc(u32(_9), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@45@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@45@01))
(assert (u32%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@45@01) $Snap.unit) ret@43@01))
; [exec]
; assert true
; [exec]
; exhale acc(_8.val_ref, write) &&
;   (acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_8.val_ref), write) &&
;   acc(u32(_9), write))
(push) ; 3
(set-option :timeout 10)
(assert (not (= val_ref@31@01 val_ref@42@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@25@01))))
  val_ref@42@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; _7 := builtin$havoc_ref()
(declare-const ret@46@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(old[l7](_8.val_ref)), write)
; [eval] old[l7](_8.val_ref)
(declare-const $t@47@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= val_ref@31@01 val_ref@42@01)))
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
; inhale acc(tuple0$(_7), write)
(declare-const $t@48@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@35@01 ret@46@01)))
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
(declare-const $t@49@01 $Snap)
(assert (= $t@49@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(old[l7](_8.val_ref)) ==
;   old[l7]((unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_8.val_ref), write) in
;     (unfolding acc(u32(_8.val_ref.f$bal), write) in
;       _8.val_ref.f$bal.val_int))) +
;   old[l7](_9.val_int)
(declare-const $t@50@01 $Snap)
(assert (= $t@50@01 $Snap.unit))
; [eval] m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(old[l7](_8.val_ref)) == old[l7]((unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_8.val_ref), write) in (unfolding acc(u32(_8.val_ref.f$bal), write) in _8.val_ref.f$bal.val_int))) + old[l7](_9.val_int)
; [eval] m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(old[l7](_8.val_ref))
; [eval] old[l7](_8.val_ref)
(set-option :timeout 0)
(push) ; 3
; [eval] read$()
(push) ; 4
(assert (read$%precondition $Snap.unit))
(pop) ; 4
; Joined path conditions
(assert (read$%precondition $Snap.unit))
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
(assert (m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  $t@47@01
  $Snap.unit) val_ref@42@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
    $t@47@01
    $Snap.unit) val_ref@42@01)))
; [eval] old[l7]((unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_8.val_ref), write) in (unfolding acc(u32(_8.val_ref.f$bal), write) in _8.val_ref.f$bal.val_int))) + old[l7](_9.val_int)
; [eval] old[l7]((unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_8.val_ref), write) in (unfolding acc(u32(_8.val_ref.f$bal), write) in _8.val_ref.f$bal.val_int)))
; [eval] (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_8.val_ref), write) in (unfolding acc(u32(_8.val_ref.f$bal), write) in _8.val_ref.f$bal.val_int))
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (= val_ref@31@01 val_ref@42@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@25@01))))
  val_ref@42@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01)))) val_ref@42@01))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))))
(assert (not (= val_ref@42@01 $Ref.null)))
; [eval] (unfolding acc(u32(_8.val_ref.f$bal), write) in _8.val_ref.f$bal.val_int)
(set-option :timeout 0)
(push) ; 4
(assert (u32%trigger ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))))))
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ret@43@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  _3@18@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))
  $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))))))
(pop) ; 4
; Joined path conditions
(assert (and
  (u32%trigger ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))))
  (=
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))
      $Ref.null))
  (=
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))
    $Snap.unit)
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))))))
(pop) ; 3
; Joined path conditions
(assert (and
  (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01)))) val_ref@42@01)
  (=
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))
    ($Snap.combine
      ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))))
  (not (= val_ref@42@01 $Ref.null))
  (u32%trigger ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))))
  (=
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))
      $Ref.null))
  (=
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))
    $Snap.unit)
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))))))
; [eval] old[l7](_9.val_int)
(assert (=
  (m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    $t@47@01
    $Snap.unit) val_ref@42@01)
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))))
    val_int@45@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l8
; [exec]
; label l9
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@51@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_0), write)
(declare-const $t@52@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@46@01 ret@51@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@35@01 ret@51@01)))
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
(declare-const _old$pre$0@53@01 $Ref)
(assert (= _old$pre$0@53@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@25@01))))
; [exec]
; _old$pre$1 := _2.val_ref
(declare-const _old$pre$1@54@01 $Ref)
(assert (=
  _old$pre$1@54@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@25@01))))))
; [exec]
; assert (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_old$pre$0), write) in
;     (unfolding acc(u32(_old$pre$0.f$bal), write) in
;       _old$pre$0.f$bal.val_int)) ==
;   old[pre]((unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in
;     (unfolding acc(u32(_1.val_ref.f$bal), write) in
;       _1.val_ref.f$bal.val_int))) -
;   old[pre]((unfolding acc(u32(_3), write) in _3.val_int)) &&
;   (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_old$pre$0), write) in
;     (unfolding acc(u32(_old$pre$0.f$bal), write) in
;       _old$pre$0.f$bal.val_int)) +
;   (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_old$pre$1), write) in
;     (unfolding acc(u32(_old$pre$1.f$bal), write) in
;       _old$pre$1.f$bal.val_int)) ==
;   old[pre]((unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in
;     (unfolding acc(u32(_1.val_ref.f$bal), write) in
;       _1.val_ref.f$bal.val_int)) +
;   (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_2.val_ref), write) in
;     (unfolding acc(u32(_2.val_ref.f$bal), write) in
;       _2.val_ref.f$bal.val_int)))
; [eval] (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_old$pre$0), write) in (unfolding acc(u32(_old$pre$0.f$bal), write) in _old$pre$0.f$bal.val_int)) == old[pre]((unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in (unfolding acc(u32(_1.val_ref.f$bal), write) in _1.val_ref.f$bal.val_int))) - old[pre]((unfolding acc(u32(_3), write) in _3.val_int))
; [eval] (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_old$pre$0), write) in (unfolding acc(u32(_old$pre$0.f$bal), write) in _old$pre$0.f$bal.val_int))
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (= val_ref@42@01 _old$pre$0@53@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= val_ref@31@01 _old$pre$0@53@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger $t@36@01 _old$pre$0@53@01))
(assert (not (= _old$pre$0@53@01 $Ref.null)))
; [eval] (unfolding acc(u32(_old$pre$0.f$bal), write) in _old$pre$0.f$bal.val_int)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (= _3@18@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@36@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] 0 <= self.val_int
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
(assert (and
  (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger $t@36@01 _old$pre$0@53@01)
  (not (= _old$pre$0@53@01 $Ref.null))))
; [eval] old[pre]((unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in (unfolding acc(u32(_1.val_ref.f$bal), write) in _1.val_ref.f$bal.val_int))) - old[pre]((unfolding acc(u32(_3), write) in _3.val_int))
; [eval] old[pre]((unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in (unfolding acc(u32(_1.val_ref.f$bal), write) in _1.val_ref.f$bal.val_int)))
; [eval] (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in (unfolding acc(u32(_1.val_ref.f$bal), write) in _1.val_ref.f$bal.val_int))
(set-option :timeout 0)
(push) ; 3
(assert (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first ($Snap.second $t@25@01)) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@25@01))))
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@25@01)) $Ref.null)))
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  _3@18@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@25@01)))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(u32(_1.val_ref.f$bal), write) in _1.val_ref.f$bal.val_int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= self.val_int
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
(assert (and
  (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first ($Snap.second $t@25@01)) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@25@01)))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@25@01)) $Ref.null))))
; [eval] old[pre]((unfolding acc(u32(_3), write) in _3.val_int))
; [eval] (unfolding acc(u32(_3), write) in _3.val_int)
(push) ; 3
; [eval] 0 <= self.val_int
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@36@01)))
  (-
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@25@01)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@36@01)))
  (-
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@25@01)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))))))
; [eval] (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_old$pre$0), write) in (unfolding acc(u32(_old$pre$0.f$bal), write) in _old$pre$0.f$bal.val_int)) + (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_old$pre$1), write) in (unfolding acc(u32(_old$pre$1.f$bal), write) in _old$pre$1.f$bal.val_int)) == old[pre]((unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in (unfolding acc(u32(_1.val_ref.f$bal), write) in _1.val_ref.f$bal.val_int)) + (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_2.val_ref), write) in (unfolding acc(u32(_2.val_ref.f$bal), write) in _2.val_ref.f$bal.val_int)))
; [eval] (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_old$pre$0), write) in (unfolding acc(u32(_old$pre$0.f$bal), write) in _old$pre$0.f$bal.val_int)) + (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_old$pre$1), write) in (unfolding acc(u32(_old$pre$1.f$bal), write) in _old$pre$1.f$bal.val_int))
; [eval] (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_old$pre$0), write) in (unfolding acc(u32(_old$pre$0.f$bal), write) in _old$pre$0.f$bal.val_int))
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (= val_ref@42@01 _old$pre$0@53@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= val_ref@31@01 _old$pre$0@53@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(u32(_old$pre$0.f$bal), write) in _old$pre$0.f$bal.val_int)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (= _3@18@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@36@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] 0 <= self.val_int
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
; [eval] (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_old$pre$1), write) in (unfolding acc(u32(_old$pre$1.f$bal), write) in _old$pre$1.f$bal.val_int))
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (= val_ref@42@01 _old$pre$1@54@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger $t@47@01 _old$pre$1@54@01))
(assert (= $t@47@01 ($Snap.combine ($Snap.first $t@47@01) ($Snap.second $t@47@01))))
(assert (not (= _old$pre$1@54@01 $Ref.null)))
; [eval] (unfolding acc(u32(_old$pre$1.f$bal), write) in _old$pre$1.f$bal.val_int)
(set-option :timeout 0)
(push) ; 4
(assert (u32%trigger ($Snap.second $t@47@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@47@01))))
(assert (=
  ($Snap.second $t@47@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@47@01))
    ($Snap.second ($Snap.second $t@47@01)))))
(push) ; 5
(set-option :timeout 10)
(assert (not (= _3@18@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@47@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@47@01)) $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@47@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@47@01)))))
(pop) ; 4
; Joined path conditions
(assert (and
  (u32%trigger ($Snap.second $t@47@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@47@01)))
  (=
    ($Snap.second $t@47@01)
    ($Snap.combine
      ($Snap.first ($Snap.second $t@47@01))
      ($Snap.second ($Snap.second $t@47@01))))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@47@01)) $Ref.null))
  (= ($Snap.second ($Snap.second $t@47@01)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@47@01))))))
(pop) ; 3
; Joined path conditions
(assert (and
  (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger $t@47@01 _old$pre$1@54@01)
  (= $t@47@01 ($Snap.combine ($Snap.first $t@47@01) ($Snap.second $t@47@01)))
  (not (= _old$pre$1@54@01 $Ref.null))
  (u32%trigger ($Snap.second $t@47@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@47@01)))
  (=
    ($Snap.second $t@47@01)
    ($Snap.combine
      ($Snap.first ($Snap.second $t@47@01))
      ($Snap.second ($Snap.second $t@47@01))))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@47@01)) $Ref.null))
  (= ($Snap.second ($Snap.second $t@47@01)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@47@01))))))
; [eval] old[pre]((unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in (unfolding acc(u32(_1.val_ref.f$bal), write) in _1.val_ref.f$bal.val_int)) + (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_2.val_ref), write) in (unfolding acc(u32(_2.val_ref.f$bal), write) in _2.val_ref.f$bal.val_int)))
; [eval] (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in (unfolding acc(u32(_1.val_ref.f$bal), write) in _1.val_ref.f$bal.val_int)) + (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_2.val_ref), write) in (unfolding acc(u32(_2.val_ref.f$bal), write) in _2.val_ref.f$bal.val_int))
; [eval] (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in (unfolding acc(u32(_1.val_ref.f$bal), write) in _1.val_ref.f$bal.val_int))
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  _3@18@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@25@01)))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(u32(_1.val_ref.f$bal), write) in _1.val_ref.f$bal.val_int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= self.val_int
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
; [eval] (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_2.val_ref), write) in (unfolding acc(u32(_2.val_ref.f$bal), write) in _2.val_ref.f$bal.val_int))
(push) ; 3
(assert (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@25@01))))))
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@25@01))))
    $Ref.null)))
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  _3@18@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(u32(_2.val_ref.f$bal), write) in _2.val_ref.f$bal.val_int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= self.val_int
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
(assert (and
  (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@25@01)))))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@25@01))))
      $Ref.null))))
(push) ; 3
(assert (not (=
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@36@01)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@47@01))))
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@25@01)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@36@01)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@47@01))))
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@25@01)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))))))
; [exec]
; assert true
; [exec]
; exhale acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_old$pre$0), write) &&
;   acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_old$pre$1), write)
(push) ; 3
(set-option :timeout 10)
(assert (not (= val_ref@42@01 _old$pre$0@53@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= val_ref@31@01 _old$pre$0@53@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= val_ref@42@01 _old$pre$1@54@01)))
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
; ---------- m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$deposit$opensqu$0$closesqu$ ----------
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
; var _3: Int
(declare-const _3@63@01 Int)
; [exec]
; var _4: Int
(declare-const _4@64@01 Int)
; [exec]
; var _5: Ref
(declare-const _5@65@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; inhale acc(_1.val_ref, write) &&
;   (acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) &&
;   acc(u32(_2), write))
(declare-const $t@66@01 $Snap)
(assert (= $t@66@01 ($Snap.combine ($Snap.first $t@66@01) ($Snap.second $t@66@01))))
(assert (not (= _1@61@01 $Ref.null)))
(assert (=
  ($Snap.second $t@66@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@66@01))
    ($Snap.second ($Snap.second $t@66@01)))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@67@01 $Snap)
(assert (= $t@67@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@68@01 $Snap)
(assert (= $t@68@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@69@01 $Snap)
(assert (= $t@69@01 $Snap.unit))
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
; _3 := builtin$havoc_int()
(declare-const ret@70@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@71@01 $Snap)
(assert (= $t@71@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write)
(assert (=
  ($Snap.first ($Snap.second $t@66@01))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second $t@66@01)))
    ($Snap.second ($Snap.first ($Snap.second $t@66@01))))))
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@66@01)) $Ref.null)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  _2@62@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@66@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first ($Snap.second $t@66@01)) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@66@01))))
; [exec]
; unfold acc(u32(_1.val_ref.f$bal), write)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second $t@66@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@66@01))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second $t@66@01)))))))
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@66@01))))
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second $t@66@01))))
  $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@66@01)))))))
; State saturation: after unfold
(check-sat)
; unknown
(assert (u32%trigger ($Snap.second ($Snap.first ($Snap.second $t@66@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@66@01))))))
; [exec]
; _3 := _1.val_ref.f$bal.val_int
(declare-const _3@72@01 Int)
(assert (=
  _3@72@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@66@01)))))))
; [exec]
; label l0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@73@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@74@01 $Snap)
(assert (= $t@74@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u32(_2), write)
(assert (=
  ($Snap.second ($Snap.second $t@66@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@66@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@66@01))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@66@01))))
  _2@62@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@62@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@66@01))) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@66@01))))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u32%trigger ($Snap.second ($Snap.second $t@66@01)) _2@62@01))
; [exec]
; _4 := _2.val_int
(declare-const _4@75@01 Int)
(assert (=
  _4@75@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@66@01))))))
; [exec]
; label l1
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@76@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.tuple_0, write)
(declare-const $t@77@01 $Ref)
(assert (not (= ret@76@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.tuple_0.val_int, write)
(declare-const $t@78@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@62@01 $t@77@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@66@01))))
  $t@77@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= $t@77@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.tuple_1, write)
(declare-const $t@79@01 $Ref)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale acc(_5.tuple_1.val_bool, write)
(declare-const $t@80@01 Bool)
(assert (not (= $t@79@01 $Ref.null)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5.tuple_0.val_int := _3 + _4
; [eval] _3 + _4
(declare-const val_int@81@01 Int)
(assert (= val_int@81@01 (+ _3@72@01 _4@75@01)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@62@01 $t@77@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@66@01))))
  $t@77@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; _5.tuple_1.val_bool := false
; [exec]
; __t2 := _5.tuple_1.val_bool
; [exec]
; assert !__t2
; [eval] !__t2
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; _1.val_ref.f$bal := _5.tuple_0
; [exec]
; label l2
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@82@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_0), write)
(declare-const $t@83@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label return
; [exec]
; fold acc(u32(_1.val_ref.f$bal), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@81@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@81@01))
(assert (u32%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@81@01) $Snap.unit) $t@77@01))
; [exec]
; fold acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write)
(assert (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap $t@77@01)
  ($Snap.combine ($SortWrappers.IntTo$Snap val_int@81@01) $Snap.unit)) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@66@01))))
; [exec]
; _old$pre$0 := _1.val_ref
(declare-const _old$pre$0@84@01 $Ref)
(assert (= _old$pre$0@84@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@66@01))))
; [exec]
; assert m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_old$pre$0) ==
;   old[pre]((unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in
;     (unfolding acc(u32(_1.val_ref.f$bal), write) in
;       _1.val_ref.f$bal.val_int))) +
;   old[pre]((unfolding acc(u32(_2), write) in _2.val_int))
; [eval] m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_old$pre$0) == old[pre]((unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in (unfolding acc(u32(_1.val_ref.f$bal), write) in _1.val_ref.f$bal.val_int))) + old[pre]((unfolding acc(u32(_2), write) in _2.val_int))
; [eval] m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_old$pre$0)
(push) ; 3
; [eval] read$()
(push) ; 4
(assert (read$%precondition $Snap.unit))
(pop) ; 4
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 4
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@66@01)) _old$pre$0@84@01)))
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
(assert (m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap $t@77@01)
    ($Snap.combine ($SortWrappers.IntTo$Snap val_int@81@01) $Snap.unit))
  $Snap.unit) _old$pre$0@84@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap $t@77@01)
      ($Snap.combine ($SortWrappers.IntTo$Snap val_int@81@01) $Snap.unit))
    $Snap.unit) _old$pre$0@84@01)))
; [eval] old[pre]((unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in (unfolding acc(u32(_1.val_ref.f$bal), write) in _1.val_ref.f$bal.val_int))) + old[pre]((unfolding acc(u32(_2), write) in _2.val_int))
; [eval] old[pre]((unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in (unfolding acc(u32(_1.val_ref.f$bal), write) in _1.val_ref.f$bal.val_int)))
; [eval] (unfolding acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in (unfolding acc(u32(_1.val_ref.f$bal), write) in _1.val_ref.f$bal.val_int))
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  _2@62@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@66@01)))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(u32(_1.val_ref.f$bal), write) in _1.val_ref.f$bal.val_int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= self.val_int
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
; [eval] old[pre]((unfolding acc(u32(_2), write) in _2.val_int))
; [eval] (unfolding acc(u32(_2), write) in _2.val_int)
(push) ; 3
; [eval] 0 <= self.val_int
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (=
  (m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap $t@77@01)
      ($Snap.combine ($SortWrappers.IntTo$Snap val_int@81@01) $Snap.unit))
    $Snap.unit) _old$pre$0@84@01)
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@66@01)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@66@01))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap $t@77@01)
      ($Snap.combine ($SortWrappers.IntTo$Snap val_int@81@01) $Snap.unit))
    $Snap.unit) _old$pre$0@84@01)
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@66@01)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@66@01)))))))
; [exec]
; assert true
; [exec]
; exhale acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_old$pre$0), write)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@66@01)) _old$pre$0@84@01)))
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
; ---------- m_balance$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$withdraw$opensqu$0$closesqu$ ----------
(declare-const _0@85@01 $Ref)
(declare-const _0@86@01 $Ref)
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
(declare-const __t0@87@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@88@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@89@01 Bool)
; [exec]
; var _old$pre$0: Ref
(declare-const _old$pre$0@90@01 $Ref)
; [exec]
; var _1: Ref
(declare-const _1@91@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@92@01 $Ref)
; [exec]
; var _3: Int
(declare-const _3@93@01 Int)
; [exec]
; var _4: Int
(declare-const _4@94@01 Int)
; [exec]
; var _5: Ref
(declare-const _5@95@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; inhale acc(_1.val_ref, write) &&
;   (acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) &&
;   acc(u32(_2), write))
(declare-const $t@96@01 $Snap)
(assert (= $t@96@01 ($Snap.combine ($Snap.first $t@96@01) ($Snap.second $t@96@01))))
(assert (not (= _1@91@01 $Ref.null)))
(assert (=
  ($Snap.second $t@96@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@96@01))
    ($Snap.second ($Snap.second $t@96@01)))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@97@01 $Snap)
(assert (= $t@97@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@98@01 $Snap)
(assert (= $t@98@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@99@01 $Snap)
(assert (= $t@99@01 $Snap.unit))
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
; _3 := builtin$havoc_int()
(declare-const ret@100@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@101@01 $Snap)
(assert (= $t@101@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write)
(assert (=
  ($Snap.first ($Snap.second $t@96@01))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second $t@96@01)))
    ($Snap.second ($Snap.first ($Snap.second $t@96@01))))))
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@96@01)) $Ref.null)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  _2@92@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@96@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (m_balance$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first ($Snap.second $t@96@01)) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@96@01))))
; [exec]
; unfold acc(u32(_1.val_ref.f$bal), write)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second $t@96@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@96@01))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second $t@96@01)))))))
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@96@01))))
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second $t@96@01))))
  $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@96@01)))))))
; State saturation: after unfold
(check-sat)
; unknown
(assert (u32%trigger ($Snap.second ($Snap.first ($Snap.second $t@96@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@96@01))))))
; [exec]
; _3 := _1.val_ref.f$bal.val_int
(declare-const _3@102@01 Int)
(assert (=
  _3@102@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@96@01)))))))
; [exec]
; label l0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@103@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@104@01 $Snap)
(assert (= $t@104@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u32(_2), write)
(assert (=
  ($Snap.second ($Snap.second $t@96@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@96@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@96@01))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@96@01))))
  _2@92@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@92@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@96@01))) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@96@01))))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u32%trigger ($Snap.second ($Snap.second $t@96@01)) _2@92@01))
; [exec]
; _4 := _2.val_int
(declare-const _4@105@01 Int)
(assert (=
  _4@105@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@96@01))))))
; [exec]
; label l1
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@106@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.tuple_0, write)
(declare-const $t@107@01 $Ref)
(assert (not (= ret@106@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.tuple_0.val_int, write)
(declare-const $t@108@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@92@01 $t@107@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@96@01))))
  $t@107@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= $t@107@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.tuple_1, write)
(declare-const $t@109@01 $Ref)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale acc(_5.tuple_1.val_bool, write)
(declare-const $t@110@01 Bool)
(assert (not (= $t@109@01 $Ref.null)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5.tuple_0.val_int := _3 - _4
; [eval] _3 - _4
(declare-const val_int@111@01 Int)
(assert (= val_int@111@01 (- _3@102@01 _4@105@01)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@92@01 $t@107@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@96@01))))
  $t@107@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; _5.tuple_1.val_bool := false
; [exec]
; __t2 := _5.tuple_1.val_bool
; [exec]
; assert !__t2
; [eval] !__t2
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; _1.val_ref.f$bal := _5.tuple_0
; [exec]
; label l2
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@112@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_0), write)
(declare-const $t@113@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label return
; [exec]
; fold acc(u32(_1.val_ref.f$bal), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@111@01)))
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
(assert (not (= $t@107@01 _2@92@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  _2@92@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@96@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  $t@107@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@96@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@96@01)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@96@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@96@01)))))
    val_int@111@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@96@01))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@96@01)))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@96@01))))
    val_int@111@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    val_int@111@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@96@01)))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    val_int@111@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@96@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@96@01))))
        _2@92@01))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@96@01))))
        $t@107@01)))
  (and
    (not
      (=
        _2@92@01
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@96@01))))))
    (not (= _2@92@01 $t@107@01)))
  (and
    (not
      (=
        $t@107@01
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@96@01))))))
    (not (= $t@107@01 _2@92@01)))))
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@111@01)))
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
(assert (not (=
  _2@92@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@96@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@96@01)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@96@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@96@01))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@96@01)))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@96@01))))
      _2@92@01))
  (not
    (=
      _2@92@01
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@96@01))))))))
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@111@01)))
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
(assert (not (= $t@107@01 _2@92@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  _2@92@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@96@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  $t@107@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@96@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@96@01)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@96@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@96@01)))))
    val_int@111@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@96@01))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@96@01)))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@96@01))))
    val_int@111@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    val_int@111@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@96@01)))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    val_int@111@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@96@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@96@01))))
        _2@92@01))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@96@01))))
        $t@107@01)))
  (and
    (not
      (=
        _2@92@01
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@96@01))))))
    (not (= _2@92@01 $t@107@01)))
  (and
    (not
      (=
        $t@107@01
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@96@01))))))
    (not (= $t@107@01 _2@92@01)))))
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@111@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- builtin$havoc_int ----------
(declare-const ret@114@01 Int)
(declare-const ret@115@01 Int)
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
(declare-const ret@116@01 Bool)
(declare-const ret@117@01 Bool)
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
(declare-const ret@118@01 $Ref)
(declare-const ret@119@01 $Ref)
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
