(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-29 19:48:59
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
(declare-sort Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_ 0)
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
(declare-fun $SortWrappers.Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_To$Snap (Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_) $Snap)
(declare-fun $SortWrappers.$SnapToSnap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap) Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_)
(assert (forall ((x Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_)) (!
    (= x ($SortWrappers.$SnapToSnap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_($SortWrappers.Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_To$Snap x)))
    :pattern (($SortWrappers.Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_To$Snap x))
    :qid |$Snap.$SnapToSnap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_To$Snap($SortWrappers.$SnapToSnap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_ x)))
    :pattern (($SortWrappers.$SnapToSnap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_ x))
    :qid |$Snap.Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_To$SnapToSnap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_|
    )))
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
(declare-fun cons$__$TY$__$int$$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_<Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_> (Int) Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_)
(declare-fun mirror$m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$__$TY$__Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$<Int> (Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_) Int)
; Declaring symbols related to program functions (from program analysis)
(declare-fun read$ ($Snap) $Perm)
(declare-fun read$%limited ($Snap) $Perm)
(declare-const read$%stateless Bool)
(declare-fun read$%precondition ($Snap) Bool)
(declare-fun snap$__$TY$__u32$$int$ ($Snap $Ref) Int)
(declare-fun snap$__$TY$__u32$$int$%limited ($Snap $Ref) Int)
(declare-fun snap$__$TY$__u32$$int$%stateless ($Ref) Bool)
(declare-fun snap$__$TY$__u32$$int$%precondition ($Snap $Ref) Bool)
(declare-fun snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap $Ref) Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_)
(declare-fun snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%limited ($Snap $Ref) Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_)
(declare-fun snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%stateless ($Ref) Bool)
(declare-fun snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap $Ref) Bool)
(declare-fun not_equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$ ($Snap) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%limited ($Snap) Bool)
(declare-const builtin$unreach_bool__$TY$__$bool$%stateless Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%precondition ($Snap) Bool)
(declare-fun equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap $Ref) Bool)
(declare-fun equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun DeadBorrowToken$%trigger ($Snap Int) Bool)
(declare-fun bool%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_10$4$5637663237294734955%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_11$4$15835548659433200428%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_12$4$14306357421188339039%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_13$4$15835548659433200428%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_14$4$14306357421188339039%trigger ($Snap $Ref) Bool)
(declare-fun m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_10$4$5637663237294734955%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_11$4$15835548659433200428%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_12$4$14306357421188339039%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_13$4$15835548659433200428%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_14$4$14306357421188339039%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$u32%trigger ($Snap $Ref) Bool)
(declare-fun tuple0$%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$u32$bool%trigger ($Snap $Ref) Bool)
(declare-fun u32%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((_arg_0_1 Int) (_arg_0_2 Int)) (!
  (=>
    (=
      (cons$__$TY$__$int$$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_<Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_> _arg_0_1)
      (cons$__$TY$__$int$$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_<Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_> _arg_0_2))
    (= _arg_0_1 _arg_0_2))
  :pattern ((cons$__$TY$__$int$$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_<Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_> _arg_0_1) (cons$__$TY$__$int$$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_<Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_> _arg_0_2))
  :qid |prog.Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$injectivity|)))
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
  :qid |quant-u-151|)))
(assert (forall ((s@$ $Snap)) (!
  (as read$%stateless  Bool)
  :pattern ((read$%limited s@$))
  :qid |quant-u-152|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) (=>
    (read$%precondition s@$)
    (and (< $Perm.No result@0@00) (< result@0@00 $Perm.Write))))
  :pattern ((read$%limited s@$))
  :qid |quant-u-169|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-170|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-171|)))
(assert (forall ((s@$ $Snap) (_arg@1@00 $Ref)) (!
  (=
    (snap$__$TY$__u32$$int$%limited s@$ _arg@1@00)
    (snap$__$TY$__u32$$int$ s@$ _arg@1@00))
  :pattern ((snap$__$TY$__u32$$int$ s@$ _arg@1@00))
  :qid |quant-u-153|)))
(assert (forall ((s@$ $Snap) (_arg@1@00 $Ref)) (!
  (snap$__$TY$__u32$$int$%stateless _arg@1@00)
  :pattern ((snap$__$TY$__u32$$int$%limited s@$ _arg@1@00))
  :qid |quant-u-154|)))
(assert (forall ((s@$ $Snap) (_arg@1@00 $Ref)) (!
  (=>
    (snap$__$TY$__u32$$int$%precondition s@$ _arg@1@00)
    (=
      (snap$__$TY$__u32$$int$ s@$ _arg@1@00)
      ($SortWrappers.$SnapToInt ($Snap.first s@$))))
  :pattern ((snap$__$TY$__u32$$int$ s@$ _arg@1@00))
  :qid |quant-u-172|)))
(assert (forall ((s@$ $Snap) (_arg@1@00 $Ref)) (!
  true
  :pattern ((snap$__$TY$__u32$$int$ s@$ _arg@1@00))
  :qid |quant-u-173|)))
(assert (forall ((s@$ $Snap) (_arg@3@00 $Ref)) (!
  (=
    (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%limited s@$ _arg@3@00)
    (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_ s@$ _arg@3@00))
  :pattern ((snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_ s@$ _arg@3@00))
  :qid |quant-u-155|)))
(assert (forall ((s@$ $Snap) (_arg@3@00 $Ref)) (!
  (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%stateless _arg@3@00)
  :pattern ((snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%limited s@$ _arg@3@00))
  :qid |quant-u-156|)))
(assert (forall ((s@$ $Snap) (_arg@3@00 $Ref)) (!
  (=>
    (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition s@$ _arg@3@00)
    (=
      (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_ s@$ _arg@3@00)
      (cons$__$TY$__$int$$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_<Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_> (snap$__$TY$__u32$$int$ ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))))
  :pattern ((snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_ s@$ _arg@3@00))
  :pattern ((snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%stateless _arg@3@00) (m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger s@$ _arg@3@00))
  :qid |quant-u-174|)))
(assert (forall ((s@$ $Snap) (_arg@3@00 $Ref)) (!
  (=>
    (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition s@$ _arg@3@00)
    (snap$__$TY$__u32$$int$%precondition ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
  :pattern ((snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_ s@$ _arg@3@00))
  :qid |quant-u-175|)))
(assert (forall ((s@$ $Snap) (_left@5@00 $Ref) (_right@6@00 $Ref)) (!
  (=
    (not_equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@5@00 _right@6@00)
    (not_equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@5@00 _right@6@00))
  :pattern ((not_equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@5@00 _right@6@00))
  :qid |quant-u-157|)))
(assert (forall ((s@$ $Snap) (_left@5@00 $Ref) (_right@6@00 $Ref)) (!
  (not_equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless _left@5@00 _right@6@00)
  :pattern ((not_equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@5@00 _right@6@00))
  :qid |quant-u-158|)))
(assert (forall ((s@$ $Snap) (_left@5@00 $Ref) (_right@6@00 $Ref)) (!
  (=>
    (not_equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@5@00 _right@6@00)
    (=
      (not_equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@5@00 _right@6@00)
      (not
        (=
          (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
          (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))))
  :pattern ((not_equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@5@00 _right@6@00))
  :qid |quant-u-176|)))
(assert (forall ((s@$ $Snap) (_left@5@00 $Ref) (_right@6@00 $Ref)) (!
  (=>
    (not_equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@5@00 _right@6@00)
    (and
      (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))
  :pattern ((not_equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@5@00 _right@6@00))
  :qid |quant-u-177|)))
(assert (forall ((s@$ $Snap)) (!
  (=
    (builtin$unreach_bool__$TY$__$bool$%limited s@$)
    (builtin$unreach_bool__$TY$__$bool$ s@$))
  :pattern ((builtin$unreach_bool__$TY$__$bool$ s@$))
  :qid |quant-u-159|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$unreach_bool__$TY$__$bool$%stateless  Bool)
  :pattern ((builtin$unreach_bool__$TY$__$bool$%limited s@$))
  :qid |quant-u-160|)))
(assert (forall ((s@$ $Snap) (_left@9@00 $Ref) (_right@10@00 $Ref)) (!
  (=
    (equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@9@00 _right@10@00)
    (equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@9@00 _right@10@00))
  :pattern ((equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@9@00 _right@10@00))
  :qid |quant-u-161|)))
(assert (forall ((s@$ $Snap) (_left@9@00 $Ref) (_right@10@00 $Ref)) (!
  (equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless _left@9@00 _right@10@00)
  :pattern ((equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@9@00 _right@10@00))
  :qid |quant-u-162|)))
(assert (forall ((s@$ $Snap) (_left@9@00 $Ref) (_right@10@00 $Ref)) (!
  (=>
    (equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@9@00 _right@10@00)
    (=
      (equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@9@00 _right@10@00)
      (=
        (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.first s@$) _left@9@00)
        (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.second s@$) _right@10@00))))
  :pattern ((equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@9@00 _right@10@00))
  :qid |quant-u-178|)))
(assert (forall ((s@$ $Snap) (_left@9@00 $Ref) (_right@10@00 $Ref)) (!
  (=>
    (equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@9@00 _right@10@00)
    (and
      (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first s@$) _left@9@00)
      (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.second s@$) _right@10@00)))
  :pattern ((equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@9@00 _right@10@00))
  :qid |quant-u-179|)))
(assert (forall ((s@$ $Snap) (_left@12@00 $Ref) (_right@13@00 $Ref)) (!
  (=
    (not_equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@12@00 _right@13@00)
    (not_equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@12@00 _right@13@00))
  :pattern ((not_equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@12@00 _right@13@00))
  :qid |quant-u-163|)))
(assert (forall ((s@$ $Snap) (_left@12@00 $Ref) (_right@13@00 $Ref)) (!
  (not_equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless _left@12@00 _right@13@00)
  :pattern ((not_equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@12@00 _right@13@00))
  :qid |quant-u-164|)))
(assert (forall ((s@$ $Snap) (_left@12@00 $Ref) (_right@13@00 $Ref)) (!
  (=>
    (not_equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@12@00 _right@13@00)
    (=
      (not_equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@12@00 _right@13@00)
      (not
        (=
          (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.first s@$) _left@12@00)
          (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.second s@$) _right@13@00)))))
  :pattern ((not_equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@12@00 _right@13@00))
  :qid |quant-u-180|)))
(assert (forall ((s@$ $Snap) (_left@12@00 $Ref) (_right@13@00 $Ref)) (!
  (=>
    (not_equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@12@00 _right@13@00)
    (and
      (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first s@$) _left@12@00)
      (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.second s@$) _right@13@00)))
  :pattern ((not_equals$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@12@00 _right@13@00))
  :qid |quant-u-181|)))
(assert (forall ((s@$ $Snap) (_pure_1@15@00 $Ref)) (!
  (=
    (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@15@00)
    (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@15@00))
  :pattern ((m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@15@00))
  :qid |quant-u-165|)))
(assert (forall ((s@$ $Snap) (_pure_1@15@00 $Ref)) (!
  (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless _pure_1@15@00)
  :pattern ((m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@15@00))
  :qid |quant-u-166|)))
(assert (forall ((s@$ $Snap) (_pure_1@15@00 $Ref)) (!
  (let ((result@16@00 (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@15@00))) (=>
    (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@15@00)
    (and
      (<= 0 result@16@00)
      (=
        result@16@00
        (mirror$m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$__$TY$__Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$<Int> (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.first s@$) _pure_1@15@00))))))
  :pattern ((m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@15@00))
  :qid |quant-u-182|)))
(assert (forall ((s@$ $Snap) (_pure_1@15@00 $Ref)) (!
  (let ((result@16@00 (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@15@00))) true)
  :pattern ((m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@15@00))
  :qid |quant-u-183|)))
(assert (forall ((s@$ $Snap) (_pure_1@15@00 $Ref)) (!
  (let ((result@16@00 (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@15@00))) true)
  :pattern ((m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@15@00))
  :qid |quant-u-184|)))
(assert (forall ((s@$ $Snap) (_pure_1@15@00 $Ref)) (!
  (let ((result@16@00 (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@15@00))) (=>
    (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@15@00)
    (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first s@$) _pure_1@15@00)))
  :pattern ((m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@15@00))
  :qid |quant-u-185|)))
(assert (forall ((s@$ $Snap) (_pure_1@15@00 $Ref)) (!
  (=>
    (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@15@00)
    (=
      (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@15@00)
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first s@$))))))
  :pattern ((m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@15@00))
  :qid |quant-u-186|)))
(assert (forall ((s@$ $Snap) (_pure_1@15@00 $Ref)) (!
  true
  :pattern ((m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@15@00))
  :qid |quant-u-187|)))
(assert (forall ((s@$ $Snap) (_left@17@00 $Ref) (_right@18@00 $Ref)) (!
  (=
    (equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@17@00 _right@18@00)
    (equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@17@00 _right@18@00))
  :pattern ((equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@17@00 _right@18@00))
  :qid |quant-u-167|)))
(assert (forall ((s@$ $Snap) (_left@17@00 $Ref) (_right@18@00 $Ref)) (!
  (equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless _left@17@00 _right@18@00)
  :pattern ((equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@17@00 _right@18@00))
  :qid |quant-u-168|)))
(assert (forall ((s@$ $Snap) (_left@17@00 $Ref) (_right@18@00 $Ref)) (!
  (=>
    (equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@17@00 _right@18@00)
    (=
      (equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@17@00 _right@18@00)
      (=
        (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_ ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))))))
  :pattern ((equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@17@00 _right@18@00))
  :qid |quant-u-188|)))
(assert (forall ((s@$ $Snap) (_left@17@00 $Ref) (_right@18@00 $Ref)) (!
  (=>
    (equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@17@00 _right@18@00)
    (and
      (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      (snap$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$Snap$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))
  :pattern ((equals$__$TY$__ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$ref$m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@17@00 _right@18@00))
  :qid |quant-u-189|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$deposit$opensqu$0$closesqu$ ----------
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
; var _old$pre$0: Ref
(declare-const _old$pre$0@5@01 $Ref)
; [exec]
; var _1: Ref
(declare-const _1@6@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@7@01 $Ref)
; [exec]
; var _3: Int
(declare-const _3@8@01 Int)
; [exec]
; var _4: Int
(declare-const _4@9@01 Int)
; [exec]
; var _5: Ref
(declare-const _5@10@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; inhale acc(_1.val_ref, write) &&
;   (acc(m_account$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) &&
;   acc(u32(_2), write))
(declare-const $t@11@01 $Snap)
(assert (= $t@11@01 ($Snap.combine ($Snap.first $t@11@01) ($Snap.second $t@11@01))))
(assert (not (= _1@6@01 $Ref.null)))
(assert (=
  ($Snap.second $t@11@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@11@01))
    ($Snap.second ($Snap.second $t@11@01)))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@12@01 $Snap)
(assert (= $t@12@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@13@01 $Snap)
(assert (= $t@13@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@14@01 $Snap)
(assert (= $t@14@01 $Snap.unit))
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
(declare-const ret@15@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@16@01 $Snap)
(assert (= $t@16@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(m_account$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write)
(assert (=
  ($Snap.first ($Snap.second $t@11@01))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second $t@11@01)))
    ($Snap.second ($Snap.first ($Snap.second $t@11@01))))))
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@11@01)) $Ref.null)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  _2@7@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@11@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first ($Snap.second $t@11@01)) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@11@01))))
; [exec]
; unfold acc(u32(_1.val_ref.f$bal), write)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second $t@11@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@11@01))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second $t@11@01)))))))
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@11@01))))
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second $t@11@01))))
  $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@11@01)))))))
; State saturation: after unfold
(check-sat)
; unknown
(assert (u32%trigger ($Snap.second ($Snap.first ($Snap.second $t@11@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@11@01))))))
; [exec]
; _3 := _1.val_ref.f$bal.val_int
(declare-const _3@17@01 Int)
(assert (=
  _3@17@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@11@01)))))))
; [exec]
; label l0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@18@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@19@01 $Snap)
(assert (= $t@19@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u32(_2), write)
(assert (=
  ($Snap.second ($Snap.second $t@11@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@11@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@11@01))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@11@01))))
  _2@7@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@7@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@11@01))) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@11@01))))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u32%trigger ($Snap.second ($Snap.second $t@11@01)) _2@7@01))
; [exec]
; _4 := _2.val_int
(declare-const _4@20@01 Int)
(assert (=
  _4@20@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@11@01))))))
; [exec]
; label l1
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@21@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.tuple_0, write)
(declare-const $t@22@01 $Ref)
(assert (not (= ret@21@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.tuple_0.val_int, write)
(declare-const $t@23@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@7@01 $t@22@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@11@01))))
  $t@22@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= $t@22@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.tuple_1, write)
(declare-const $t@24@01 $Ref)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale acc(_5.tuple_1.val_bool, write)
(declare-const $t@25@01 Bool)
(assert (not (= $t@24@01 $Ref.null)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5.tuple_0.val_int := _3 + _4
; [eval] _3 + _4
(declare-const val_int@26@01 Int)
(assert (= val_int@26@01 (+ _3@17@01 _4@20@01)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@7@01 $t@22@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@11@01))))
  $t@22@01)))
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
(declare-const ret@27@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_0), write)
(declare-const $t@28@01 $Snap)
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
(assert (not (<= 0 val_int@26@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@26@01))
(assert (u32%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@26@01) $Snap.unit) $t@22@01))
; [exec]
; fold acc(m_account$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write)
(assert (m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap $t@22@01)
  ($Snap.combine ($SortWrappers.IntTo$Snap val_int@26@01) $Snap.unit)) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@11@01))))
; [exec]
; _old$pre$0 := _1.val_ref
(declare-const _old$pre$0@29@01 $Ref)
(assert (= _old$pre$0@29@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@11@01))))
; [exec]
; assert m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_old$pre$0) ==
;   old[pre](m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref)) +
;   old[pre]((unfolding acc(u32(_2), write) in _2.val_int))
; [eval] m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_old$pre$0) == old[pre](m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref)) + old[pre]((unfolding acc(u32(_2), write) in _2.val_int))
; [eval] m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_old$pre$0)
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
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@11@01)) _old$pre$0@29@01)))
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
(assert (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap $t@22@01)
    ($Snap.combine ($SortWrappers.IntTo$Snap val_int@26@01) $Snap.unit))
  $Snap.unit) _old$pre$0@29@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap $t@22@01)
      ($Snap.combine ($SortWrappers.IntTo$Snap val_int@26@01) $Snap.unit))
    $Snap.unit) _old$pre$0@29@01)))
; [eval] old[pre](m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref)) + old[pre]((unfolding acc(u32(_2), write) in _2.val_int))
; [eval] old[pre](m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref))
; [eval] m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref)
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
(assert (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first ($Snap.second $t@11@01))
  $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@11@01))))
(pop) ; 3
; Joined path conditions
(assert (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first ($Snap.second $t@11@01))
  $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@11@01))))
; [eval] old[pre]((unfolding acc(u32(_2), write) in _2.val_int))
; [eval] (unfolding acc(u32(_2), write) in _2.val_int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= self.val_int
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (=
  (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap $t@22@01)
      ($Snap.combine ($SortWrappers.IntTo$Snap val_int@26@01) $Snap.unit))
    $Snap.unit) _old$pre$0@29@01)
  (+
    (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
      ($Snap.first ($Snap.second $t@11@01))
      $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@11@01)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@11@01))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap $t@22@01)
      ($Snap.combine ($SortWrappers.IntTo$Snap val_int@26@01) $Snap.unit))
    $Snap.unit) _old$pre$0@29@01)
  (+
    (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
      ($Snap.first ($Snap.second $t@11@01))
      $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@11@01)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@11@01)))))))
; [exec]
; assert true
; [exec]
; exhale acc(m_account$$Account$opensqu$0$closesqu$$_beg_$_end_(_old$pre$0), write)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@11@01)) _old$pre$0@29@01)))
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
; ---------- m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$withdraw$opensqu$0$closesqu$ ----------
(declare-const _0@30@01 $Ref)
(declare-const _0@31@01 $Ref)
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
(declare-const __t0@32@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@33@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@34@01 Bool)
; [exec]
; var _old$pre$0: Ref
(declare-const _old$pre$0@35@01 $Ref)
; [exec]
; var _1: Ref
(declare-const _1@36@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@37@01 $Ref)
; [exec]
; var _3: Int
(declare-const _3@38@01 Int)
; [exec]
; var _4: Int
(declare-const _4@39@01 Int)
; [exec]
; var _5: Ref
(declare-const _5@40@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; inhale acc(_1.val_ref, write) &&
;   (acc(m_account$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) &&
;   acc(u32(_2), write))
(declare-const $t@41@01 $Snap)
(assert (= $t@41@01 ($Snap.combine ($Snap.first $t@41@01) ($Snap.second $t@41@01))))
(assert (not (= _1@36@01 $Ref.null)))
(assert (=
  ($Snap.second $t@41@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@41@01))
    ($Snap.second ($Snap.second $t@41@01)))))
; State saturation: after inhale
(set-option :timeout 20)
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
; inhale true
(declare-const $t@43@01 $Snap)
(assert (= $t@43@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (unfolding acc(u32(_2), write) in
;     _2.val_int <=
;     m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref))
(declare-const $t@44@01 $Snap)
(assert (= $t@44@01 $Snap.unit))
; [eval] (unfolding acc(u32(_2), write) in _2.val_int <= m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref))
(set-option :timeout 0)
(push) ; 3
(assert (u32%trigger ($Snap.second ($Snap.second $t@41@01)) _2@37@01))
(assert (=
  ($Snap.second ($Snap.second $t@41@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))
(assert (not (= _2@37@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@41@01))) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
; [eval] _2.val_int <= m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref)
; [eval] m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref)
(push) ; 4
; [eval] read$()
(push) ; 5
(assert (read$%precondition $Snap.unit))
(pop) ; 5
; Joined path conditions
(assert (read$%precondition $Snap.unit))
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
(assert (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first ($Snap.second $t@41@01))
  $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))))
(pop) ; 4
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
    ($Snap.first ($Snap.second $t@41@01))
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)))))
(pop) ; 3
; Joined path conditions
(assert (and
  (u32%trigger ($Snap.second ($Snap.second $t@41@01)) _2@37@01)
  (=
    ($Snap.second ($Snap.second $t@41@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
      ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))
  (not (= _2@37@01 $Ref.null))
  (= ($Snap.second ($Snap.second ($Snap.second $t@41@01))) $Snap.unit)
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
  (read$%precondition $Snap.unit)
  (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
    ($Snap.first ($Snap.second $t@41@01))
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)))))
(assert (<=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
  (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first ($Snap.second $t@41@01))
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)))))
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
; _3 := builtin$havoc_int()
(declare-const ret@45@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@46@01 $Snap)
(assert (= $t@46@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(m_account$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write)
(assert (=
  ($Snap.first ($Snap.second $t@41@01))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second $t@41@01)))
    ($Snap.second ($Snap.first ($Snap.second $t@41@01))))))
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  _2@37@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@41@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first ($Snap.second $t@41@01)) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))))
; [exec]
; unfold acc(u32(_1.val_ref.f$bal), write)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second $t@41@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@41@01))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second $t@41@01)))))))
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@41@01))))
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second $t@41@01))))
  $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@41@01)))))))
; State saturation: after unfold
(check-sat)
; unknown
(assert (u32%trigger ($Snap.second ($Snap.first ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@41@01))))))
; [exec]
; _3 := _1.val_ref.f$bal.val_int
(declare-const _3@47@01 Int)
(assert (=
  _3@47@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@41@01)))))))
; [exec]
; label l0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@48@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@49@01 $Snap)
(assert (= $t@49@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u32(_2), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@41@01))))
  _2@37@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] 0 <= self.val_int
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; _4 := _2.val_int
(declare-const _4@50@01 Int)
(assert (=
  _4@50@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
; [exec]
; label l1
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@51@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.tuple_0, write)
(declare-const $t@52@01 $Ref)
(assert (not (= ret@51@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.tuple_0.val_int, write)
(declare-const $t@53@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@37@01 $t@52@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@41@01))))
  $t@52@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= $t@52@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.tuple_1, write)
(declare-const $t@54@01 $Ref)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale acc(_5.tuple_1.val_bool, write)
(declare-const $t@55@01 Bool)
(assert (not (= $t@54@01 $Ref.null)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5.tuple_0.val_int := _3 - _4
; [eval] _3 - _4
(declare-const val_int@56@01 Int)
(assert (= val_int@56@01 (- _3@47@01 _4@50@01)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@37@01 $t@52@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second $t@41@01))))
  $t@52@01)))
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
(declare-const ret@57@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_0), write)
(declare-const $t@58@01 $Snap)
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
(assert (not (<= 0 val_int@56@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@56@01))
(assert (u32%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@56@01) $Snap.unit) $t@52@01))
; [exec]
; fold acc(m_account$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write)
(assert (m_account$$Account$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap $t@52@01)
  ($Snap.combine ($SortWrappers.IntTo$Snap val_int@56@01) $Snap.unit)) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))))
; [exec]
; _old$pre$0 := _1.val_ref
(declare-const _old$pre$0@59@01 $Ref)
(assert (= _old$pre$0@59@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))))
; [exec]
; assert m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_old$pre$0) ==
;   old[pre](m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref)) -
;   old[pre]((unfolding acc(u32(_2), write) in _2.val_int))
; [eval] m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_old$pre$0) == old[pre](m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref)) - old[pre]((unfolding acc(u32(_2), write) in _2.val_int))
; [eval] m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_old$pre$0)
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
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) _old$pre$0@59@01)))
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
(assert (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap $t@52@01)
    ($Snap.combine ($SortWrappers.IntTo$Snap val_int@56@01) $Snap.unit))
  $Snap.unit) _old$pre$0@59@01))
(pop) ; 3
; Joined path conditions
(assert (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap $t@52@01)
    ($Snap.combine ($SortWrappers.IntTo$Snap val_int@56@01) $Snap.unit))
  $Snap.unit) _old$pre$0@59@01))
; [eval] old[pre](m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref)) - old[pre]((unfolding acc(u32(_2), write) in _2.val_int))
; [eval] old[pre](m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref))
; [eval] m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref)
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
(pop) ; 3
; Joined path conditions
; [eval] old[pre]((unfolding acc(u32(_2), write) in _2.val_int))
; [eval] (unfolding acc(u32(_2), write) in _2.val_int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= self.val_int
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (=
  (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap $t@52@01)
      ($Snap.combine ($SortWrappers.IntTo$Snap val_int@56@01) $Snap.unit))
    $Snap.unit) _old$pre$0@59@01)
  (-
    (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
      ($Snap.first ($Snap.second $t@41@01))
      $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap $t@52@01)
      ($Snap.combine ($SortWrappers.IntTo$Snap val_int@56@01) $Snap.unit))
    $Snap.unit) _old$pre$0@59@01)
  (-
    (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
      ($Snap.first ($Snap.second $t@41@01))
      $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
; [exec]
; assert true
; [exec]
; exhale acc(m_account$$Account$opensqu$0$closesqu$$_beg_$_end_(_old$pre$0), write)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) _old$pre$0@59@01)))
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
; ---------- m_account$$main$opensqu$0$closesqu$ ----------
(declare-const _0@60@01 $Ref)
(declare-const _0@61@01 $Ref)
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
(declare-const __t0@62@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@63@01 $Snap)
(assert (= $t@63@01 $Snap.unit))
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
; inhale true
(declare-const $t@66@01 $Snap)
(assert (= $t@66@01 $Snap.unit))
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
(declare-const ret@67@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_0), write)
(declare-const $t@68@01 $Snap)
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
; ---------- m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$transfer$opensqu$0$closesqu$ ----------
(declare-const _0@69@01 $Ref)
(declare-const _0@70@01 $Ref)
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
(declare-const __t0@71@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@72@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@73@01 Bool)
; [exec]
; var _old$pre$0: Ref
(declare-const _old$pre$0@74@01 $Ref)
; [exec]
; var _old$pre$1: Ref
(declare-const _old$pre$1@75@01 $Ref)
; [exec]
; var _1: Ref
(declare-const _1@76@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@77@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@78@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@79@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@80@01 $Ref)
; [exec]
; var _6: Ref
(declare-const _6@81@01 $Ref)
; [exec]
; var _7: Ref
(declare-const _7@82@01 $Ref)
; [exec]
; var _8: Ref
(declare-const _8@83@01 $Ref)
; [exec]
; var _9: Ref
(declare-const _9@84@01 $Ref)
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
;   (acc(m_account$$Account$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) &&
;   (acc(_2.val_ref, write) &&
;   (acc(m_account$$Account$opensqu$0$closesqu$$_beg_$_end_(_2.val_ref), write) &&
;   acc(u32(_3), write))))
(declare-const $t@85@01 $Snap)
(assert (= $t@85@01 ($Snap.combine ($Snap.first $t@85@01) ($Snap.second $t@85@01))))
(assert (not (= _1@76@01 $Ref.null)))
(assert (=
  ($Snap.second $t@85@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@85@01))
    ($Snap.second ($Snap.second $t@85@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@85@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@85@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@76@01 _2@77@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@77@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@85@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@85@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@85@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@85@01)))))))
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
(declare-const $t@86@01 $Snap)
(assert (= $t@86@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@87@01 $Snap)
(assert (= $t@87@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (unfolding acc(u32(_3), write) in
;     _3.val_int <=
;     m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref))
(declare-const $t@88@01 $Snap)
(assert (= $t@88@01 $Snap.unit))
; [eval] (unfolding acc(u32(_3), write) in _3.val_int <= m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref))
(set-option :timeout 0)
(push) ; 3
(assert (u32%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))) _3@78@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))
(assert (not (= _3@78@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))
  $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))
; [eval] _3.val_int <= m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref)
; [eval] m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref)
(push) ; 4
; [eval] read$()
(push) ; 5
(assert (read$%precondition $Snap.unit))
(pop) ; 5
; Joined path conditions
(assert (read$%precondition $Snap.unit))
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
(assert (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first ($Snap.second $t@85@01))
  $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@85@01))))
(pop) ; 4
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
    ($Snap.first ($Snap.second $t@85@01))
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@85@01)))))
(pop) ; 3
; Joined path conditions
(assert (and
  (u32%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))) _3@78@01)
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))
  (not (= _3@78@01 $Ref.null))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))
    $Snap.unit)
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))
  (read$%precondition $Snap.unit)
  (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
    ($Snap.first ($Snap.second $t@85@01))
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@85@01)))))
(assert (<=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))
  (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first ($Snap.second $t@85@01))
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@85@01)))))
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
; _5 := builtin$havoc_ref()
(declare-const ret@89@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_ref, write)
(declare-const $t@90@01 $Ref)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@77@01 ret@89@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@76@01 ret@89@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@89@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _5.val_ref := _1.val_ref
(declare-const val_ref@91@01 $Ref)
(assert (= val_ref@91@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@85@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@77@01 ret@89@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@76@01 ret@89@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _6 := builtin$havoc_ref()
(declare-const ret@92@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_6.val_int, write)
(declare-const $t@93@01 Int)
(assert (not (= ret@92@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u32(_3), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@92@01 _3@78@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] 0 <= self.val_int
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; _6.val_int := _3.val_int
(declare-const val_int@94@01 Int)
(assert (=
  val_int@94@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _3@78@01 ret@92@01)))
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
; assert _6.val_int <=
;   m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_5.val_ref)
; [eval] _6.val_int <= m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_5.val_ref)
; [eval] m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_5.val_ref)
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
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@85@01))))
  val_ref@91@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@85@01)) val_ref@91@01)))
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
(assert (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first ($Snap.second $t@85@01))
  $Snap.unit) val_ref@91@01))
(pop) ; 3
; Joined path conditions
(assert (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first ($Snap.second $t@85@01))
  $Snap.unit) val_ref@91@01))
(set-option :timeout 0)
(push) ; 3
(assert (not (<=
  val_int@94@01
  (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first ($Snap.second $t@85@01))
    $Snap.unit) val_ref@91@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<=
  val_int@94@01
  (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first ($Snap.second $t@85@01))
    $Snap.unit) val_ref@91@01)))
; [exec]
; fold acc(u32(_6), write)
; [eval] 0 <= self.val_int
(push) ; 3
(assert (not (<= 0 val_int@94@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@94@01))
(assert (u32%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@94@01) $Snap.unit) ret@92@01))
; [exec]
; assert true
; [exec]
; exhale acc(_5.val_ref, write) &&
;   (acc(m_account$$Account$opensqu$0$closesqu$$_beg_$_end_(_5.val_ref), write) &&
;   acc(u32(_6), write))
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@85@01))))
  val_ref@91@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@85@01)) val_ref@91@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@95@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_account$$Account$opensqu$0$closesqu$$_beg_$_end_(old[l2](_5.val_ref)), write)
; [eval] old[l2](_5.val_ref)
(declare-const $t@96@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@85@01))))
  val_ref@91@01)))
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
(declare-const $t@97@01 $Snap)
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
; inhale m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(old[l2](_5.val_ref)) ==
;   old[l2](m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_5.val_ref)) -
;   old[l2](_6.val_int)
(declare-const $t@99@01 $Snap)
(assert (= $t@99@01 $Snap.unit))
; [eval] m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(old[l2](_5.val_ref)) == old[l2](m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_5.val_ref)) - old[l2](_6.val_int)
; [eval] m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(old[l2](_5.val_ref))
; [eval] old[l2](_5.val_ref)
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
(assert (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  $t@96@01
  $Snap.unit) val_ref@91@01))
(pop) ; 3
; Joined path conditions
(assert (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  $t@96@01
  $Snap.unit) val_ref@91@01))
; [eval] old[l2](m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_5.val_ref)) - old[l2](_6.val_int)
; [eval] old[l2](m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_5.val_ref))
; [eval] m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_5.val_ref)
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
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@85@01))))
  val_ref@91@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@85@01)) val_ref@91@01)))
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
; [eval] old[l2](_6.val_int)
(assert (=
  (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    $t@96@01
    $Snap.unit) val_ref@91@01)
  (-
    (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
      ($Snap.first ($Snap.second $t@85@01))
      $Snap.unit) val_ref@91@01)
    val_int@94@01)))
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
(declare-const ret@100@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_8.val_ref, write)
(declare-const $t@101@01 $Ref)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@77@01 ret@100@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@76@01 ret@100@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@100@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _8.val_ref := _2.val_ref
(declare-const val_ref@102@01 $Ref)
(assert (=
  val_ref@102@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@85@01))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@77@01 ret@100@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@76@01 ret@100@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l5
; [exec]
; _9 := builtin$havoc_ref()
(declare-const ret@103@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_9.val_int, write)
(declare-const $t@104@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _3@78@01 ret@103@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@103@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _9.val_int := _3.val_int
(declare-const val_int@105@01 Int)
(assert (=
  val_int@105@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _3@78@01 ret@103@01)))
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
(assert (not (<= 0 val_int@105@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@105@01))
(assert (u32%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@105@01) $Snap.unit) ret@103@01))
; [exec]
; assert true
; [exec]
; exhale acc(_8.val_ref, write) &&
;   (acc(m_account$$Account$opensqu$0$closesqu$$_beg_$_end_(_8.val_ref), write) &&
;   acc(u32(_9), write))
(push) ; 3
(set-option :timeout 10)
(assert (not (= val_ref@91@01 val_ref@102@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@85@01))))
  val_ref@102@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; _7 := builtin$havoc_ref()
(declare-const ret@106@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_account$$Account$opensqu$0$closesqu$$_beg_$_end_(old[l7](_8.val_ref)), write)
; [eval] old[l7](_8.val_ref)
(declare-const $t@107@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= val_ref@91@01 val_ref@102@01)))
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
(declare-const $t@108@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@95@01 ret@106@01)))
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
(declare-const $t@109@01 $Snap)
(assert (= $t@109@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(old[l7](_8.val_ref)) ==
;   old[l7](m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_8.val_ref)) +
;   old[l7](_9.val_int)
(declare-const $t@110@01 $Snap)
(assert (= $t@110@01 $Snap.unit))
; [eval] m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(old[l7](_8.val_ref)) == old[l7](m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_8.val_ref)) + old[l7](_9.val_int)
; [eval] m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(old[l7](_8.val_ref))
; [eval] old[l7](_8.val_ref)
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
(assert (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  $t@107@01
  $Snap.unit) val_ref@102@01))
(pop) ; 3
; Joined path conditions
(assert (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  $t@107@01
  $Snap.unit) val_ref@102@01))
; [eval] old[l7](m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_8.val_ref)) + old[l7](_9.val_int)
; [eval] old[l7](m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_8.val_ref))
; [eval] m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_8.val_ref)
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
(assert (not (= val_ref@91@01 val_ref@102@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@85@01))))
  val_ref@102@01)))
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
(assert (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@85@01))))
  $Snap.unit) val_ref@102@01))
(pop) ; 3
; Joined path conditions
(assert (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@85@01))))
  $Snap.unit) val_ref@102@01))
; [eval] old[l7](_9.val_int)
(assert (=
  (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    $t@107@01
    $Snap.unit) val_ref@102@01)
  (+
    (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@85@01))))
      $Snap.unit) val_ref@102@01)
    val_int@105@01)))
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
(declare-const ret@111@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_0), write)
(declare-const $t@112@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@106@01 ret@111@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@95@01 ret@111@01)))
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
(declare-const _old$pre$0@113@01 $Ref)
(assert (= _old$pre$0@113@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@85@01))))
; [exec]
; _old$pre$1 := _2.val_ref
(declare-const _old$pre$1@114@01 $Ref)
(assert (=
  _old$pre$1@114@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@85@01))))))
; [exec]
; assert m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_old$pre$0) ==
;   old[pre](m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref)) -
;   old[pre]((unfolding acc(u32(_3), write) in _3.val_int))
; [eval] m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_old$pre$0) == old[pre](m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref)) - old[pre]((unfolding acc(u32(_3), write) in _3.val_int))
; [eval] m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_old$pre$0)
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
(assert (not (= val_ref@102@01 _old$pre$0@113@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= val_ref@91@01 _old$pre$0@113@01)))
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
(assert (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  $t@96@01
  $Snap.unit) _old$pre$0@113@01))
(pop) ; 3
; Joined path conditions
(assert (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  $t@96@01
  $Snap.unit) _old$pre$0@113@01))
; [eval] old[pre](m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref)) - old[pre]((unfolding acc(u32(_3), write) in _3.val_int))
; [eval] old[pre](m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref))
; [eval] m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref)
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
(pop) ; 3
; Joined path conditions
; [eval] old[pre]((unfolding acc(u32(_3), write) in _3.val_int))
; [eval] (unfolding acc(u32(_3), write) in _3.val_int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= self.val_int
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (=
  (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    $t@96@01
    $Snap.unit) _old$pre$0@113@01)
  (-
    (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
      ($Snap.first ($Snap.second $t@85@01))
      $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@85@01)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    $t@96@01
    $Snap.unit) _old$pre$0@113@01)
  (-
    (m_account$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$balance$opensqu$0$closesqu$__$TY$__m_account$$Account$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
      ($Snap.first ($Snap.second $t@85@01))
      $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@85@01)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))
; [exec]
; assert true
; [exec]
; exhale acc(m_account$$Account$opensqu$0$closesqu$$_beg_$_end_(_old$pre$0), write) &&
;   acc(m_account$$Account$opensqu$0$closesqu$$_beg_$_end_(_old$pre$1), write)
(push) ; 3
(set-option :timeout 10)
(assert (not (= val_ref@102@01 _old$pre$0@113@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= val_ref@91@01 _old$pre$0@113@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= val_ref@102@01 _old$pre$1@114@01)))
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
(declare-const ret@115@01 $Ref)
(declare-const ret@116@01 $Ref)
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
; ---------- builtin$havoc_int ----------
(declare-const ret@117@01 Int)
(declare-const ret@118@01 Int)
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
(declare-const ret@119@01 Bool)
(declare-const ret@120@01 Bool)
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
