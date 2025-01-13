(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 12:24:02
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
(declare-sort Set<$Ref> 0)
(declare-sort Set<Int> 0)
(declare-sort Set<Bool> 0)
(declare-sort Set<$Snap> 0)
(declare-sort $FVF<val_ref> 0)
(declare-sort $MWSF 0)
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
(declare-fun $SortWrappers.Set<$Ref>To$Snap (Set<$Ref>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<$Ref> ($Snap) Set<$Ref>)
(assert (forall ((x Set<$Ref>)) (!
    (= x ($SortWrappers.$SnapToSet<$Ref>($SortWrappers.Set<$Ref>To$Snap x)))
    :pattern (($SortWrappers.Set<$Ref>To$Snap x))
    :qid |$Snap.$SnapToSet<$Ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<$Ref>To$Snap($SortWrappers.$SnapToSet<$Ref> x)))
    :pattern (($SortWrappers.$SnapToSet<$Ref> x))
    :qid |$Snap.Set<$Ref>To$SnapToSet<$Ref>|
    )))
(declare-fun $SortWrappers.Set<Int>To$Snap (Set<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Int> ($Snap) Set<Int>)
(assert (forall ((x Set<Int>)) (!
    (= x ($SortWrappers.$SnapToSet<Int>($SortWrappers.Set<Int>To$Snap x)))
    :pattern (($SortWrappers.Set<Int>To$Snap x))
    :qid |$Snap.$SnapToSet<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Int>To$Snap($SortWrappers.$SnapToSet<Int> x)))
    :pattern (($SortWrappers.$SnapToSet<Int> x))
    :qid |$Snap.Set<Int>To$SnapToSet<Int>|
    )))
(declare-fun $SortWrappers.Set<Bool>To$Snap (Set<Bool>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Bool> ($Snap) Set<Bool>)
(assert (forall ((x Set<Bool>)) (!
    (= x ($SortWrappers.$SnapToSet<Bool>($SortWrappers.Set<Bool>To$Snap x)))
    :pattern (($SortWrappers.Set<Bool>To$Snap x))
    :qid |$Snap.$SnapToSet<Bool>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Bool>To$Snap($SortWrappers.$SnapToSet<Bool> x)))
    :pattern (($SortWrappers.$SnapToSet<Bool> x))
    :qid |$Snap.Set<Bool>To$SnapToSet<Bool>|
    )))
(declare-fun $SortWrappers.Set<$Snap>To$Snap (Set<$Snap>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<$Snap> ($Snap) Set<$Snap>)
(assert (forall ((x Set<$Snap>)) (!
    (= x ($SortWrappers.$SnapToSet<$Snap>($SortWrappers.Set<$Snap>To$Snap x)))
    :pattern (($SortWrappers.Set<$Snap>To$Snap x))
    :qid |$Snap.$SnapToSet<$Snap>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<$Snap>To$Snap($SortWrappers.$SnapToSet<$Snap> x)))
    :pattern (($SortWrappers.$SnapToSet<$Snap> x))
    :qid |$Snap.Set<$Snap>To$SnapToSet<$Snap>|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$FVF<val_ref>To$Snap ($FVF<val_ref>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<val_ref> ($Snap) $FVF<val_ref>)
(assert (forall ((x $FVF<val_ref>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<val_ref>($SortWrappers.$FVF<val_ref>To$Snap x)))
    :pattern (($SortWrappers.$FVF<val_ref>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<val_ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<val_ref>To$Snap($SortWrappers.$SnapTo$FVF<val_ref> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<val_ref> x))
    :qid |$Snap.$FVF<val_ref>To$SnapTo$FVF<val_ref>|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$MWSFTo$Snap ($MWSF) $Snap)
(declare-fun $SortWrappers.$SnapTo$MWSF ($Snap) $MWSF)
(assert (forall ((x $MWSF)) (!
    (= x ($SortWrappers.$SnapTo$MWSF($SortWrappers.$MWSFTo$Snap x)))
    :pattern (($SortWrappers.$MWSFTo$Snap x))
    :qid |$Snap.$SnapTo$MWSFTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$MWSFTo$Snap($SortWrappers.$SnapTo$MWSF x)))
    :pattern (($SortWrappers.$SnapTo$MWSF x))
    :qid |$Snap.$MWSFTo$SnapTo$MWSF|
    )))
; ////////// Symbols
(declare-fun Set_card (Set<$Ref>) Int)
(declare-const Set_empty Set<$Ref>)
(declare-fun Set_in ($Ref Set<$Ref>) Bool)
(declare-fun Set_singleton ($Ref) Set<$Ref>)
(declare-fun Set_unionone (Set<$Ref> $Ref) Set<$Ref>)
(declare-fun Set_union (Set<$Ref> Set<$Ref>) Set<$Ref>)
(declare-fun Set_intersection (Set<$Ref> Set<$Ref>) Set<$Ref>)
(declare-fun Set_difference (Set<$Ref> Set<$Ref>) Set<$Ref>)
(declare-fun Set_subset (Set<$Ref> Set<$Ref>) Bool)
(declare-fun Set_equal (Set<$Ref> Set<$Ref>) Bool)
(declare-fun Set_skolem_diff (Set<$Ref> Set<$Ref>) $Ref)
(declare-fun Set_card (Set<Int>) Int)
(declare-const Set_empty Set<Int>)
(declare-fun Set_in (Int Set<Int>) Bool)
(declare-fun Set_singleton (Int) Set<Int>)
(declare-fun Set_unionone (Set<Int> Int) Set<Int>)
(declare-fun Set_union (Set<Int> Set<Int>) Set<Int>)
(declare-fun Set_intersection (Set<Int> Set<Int>) Set<Int>)
(declare-fun Set_difference (Set<Int> Set<Int>) Set<Int>)
(declare-fun Set_subset (Set<Int> Set<Int>) Bool)
(declare-fun Set_equal (Set<Int> Set<Int>) Bool)
(declare-fun Set_skolem_diff (Set<Int> Set<Int>) Int)
(declare-fun Set_card (Set<Bool>) Int)
(declare-const Set_empty Set<Bool>)
(declare-fun Set_in (Bool Set<Bool>) Bool)
(declare-fun Set_singleton (Bool) Set<Bool>)
(declare-fun Set_unionone (Set<Bool> Bool) Set<Bool>)
(declare-fun Set_union (Set<Bool> Set<Bool>) Set<Bool>)
(declare-fun Set_intersection (Set<Bool> Set<Bool>) Set<Bool>)
(declare-fun Set_difference (Set<Bool> Set<Bool>) Set<Bool>)
(declare-fun Set_subset (Set<Bool> Set<Bool>) Bool)
(declare-fun Set_equal (Set<Bool> Set<Bool>) Bool)
(declare-fun Set_skolem_diff (Set<Bool> Set<Bool>) Bool)
(declare-fun Set_card (Set<$Snap>) Int)
(declare-const Set_empty Set<$Snap>)
(declare-fun Set_in ($Snap Set<$Snap>) Bool)
(declare-fun Set_singleton ($Snap) Set<$Snap>)
(declare-fun Set_unionone (Set<$Snap> $Snap) Set<$Snap>)
(declare-fun Set_union (Set<$Snap> Set<$Snap>) Set<$Snap>)
(declare-fun Set_intersection (Set<$Snap> Set<$Snap>) Set<$Snap>)
(declare-fun Set_difference (Set<$Snap> Set<$Snap>) Set<$Snap>)
(declare-fun Set_subset (Set<$Snap> Set<$Snap>) Bool)
(declare-fun Set_equal (Set<$Snap> Set<$Snap>) Bool)
(declare-fun Set_skolem_diff (Set<$Snap> Set<$Snap>) $Snap)
; /field_value_functions_declarations.smt2 [val_ref: Ref]
(declare-fun $FVF.domain_val_ref ($FVF<val_ref>) Set<$Ref>)
(declare-fun $FVF.lookup_val_ref ($FVF<val_ref> $Ref) $Ref)
(declare-fun $FVF.after_val_ref ($FVF<val_ref> $FVF<val_ref>) Bool)
(declare-fun $FVF.loc_val_ref ($Ref $Ref) Bool)
(declare-fun $FVF.perm_val_ref ($FPM $Ref) $Perm)
(declare-const $fvfTOP_val_ref $FVF<val_ref>)
(declare-fun MWSF_apply ($MWSF $Snap) $Snap)
; Declaring symbols related to program functions (from program analysis)
(declare-fun read$ ($Snap) $Perm)
(declare-fun read$%limited ($Snap) $Perm)
(declare-const read$%stateless Bool)
(declare-fun read$%precondition ($Snap) Bool)
(declare-fun m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap $Ref) Bool)
(declare-fun m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited ($Snap $Ref) Bool)
(declare-fun m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless ($Ref) Bool)
(declare-fun m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap $Ref) Bool)
(declare-fun m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap $Ref) Bool)
(declare-fun builtin$unreach_int__$TY$__$int$ ($Snap) Int)
(declare-fun builtin$unreach_int__$TY$__$int$%limited ($Snap) Int)
(declare-const builtin$unreach_int__$TY$__$int$%stateless Bool)
(declare-fun builtin$unreach_int__$TY$__$int$%precondition ($Snap) Bool)
(declare-fun m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap $Ref) Bool)
(declare-fun builtin$undef_int__$TY$__$int$ ($Snap) Int)
(declare-fun builtin$undef_int__$TY$__$int$%limited ($Snap) Int)
(declare-const builtin$undef_int__$TY$__$int$%stateless Bool)
(declare-fun builtin$undef_int__$TY$__$int$%precondition ($Snap) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$ ($Snap) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%limited ($Snap) Bool)
(declare-const builtin$unreach_bool__$TY$__$bool$%stateless Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%precondition ($Snap) Bool)
(declare-fun builtin$undef_bool__$TY$__$bool$ ($Snap) Bool)
(declare-fun builtin$undef_bool__$TY$__$bool$%limited ($Snap) Bool)
(declare-const builtin$undef_bool__$TY$__$bool$%stateless Bool)
(declare-fun builtin$undef_bool__$TY$__$bool$%precondition ($Snap) Bool)
(declare-fun m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap $Ref) Bool)
(declare-fun m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited ($Snap $Ref) Bool)
(declare-fun m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless ($Ref) Bool)
(declare-fun m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap $Ref) Bool)
(declare-fun m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap $Ref Int) Int)
(declare-fun m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited ($Snap $Ref Int) Int)
(declare-fun m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%stateless ($Ref Int) Bool)
(declare-fun m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap $Ref Int) Bool)
(declare-fun m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap $Ref) Bool)
(declare-fun m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun DeadBorrowToken$%trigger ($Snap Int) Bool)
(declare-fun bool%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_11$3$14638646224268616196%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_12$4$17001480277194006617%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_13$3$14638646224268616196%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_14$4$15549095298966453791%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_15$5$5075898579489248679%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_16$2$5059396678693552475%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_17$3$13755076842142279428%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_18$5$17753855177215072009%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_19$4$11545708990456197808%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_20$5$1201558823312298186%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_21$4$9662796120604503583%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_30$3$1832632346543900956%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_34$3$9863146735187217849%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_35$3$6764460164408742563%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_36$5$15283588091169721285%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_37$2$17309005470967841763%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_38$5$18364178082525168913%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_39$3$8557536310959760232%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_40$3$439034602103774817%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_41$3$17248028283071546651%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_42$3$3125871853483277348%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_43$3$12509036097101680182%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_44$5$4519369578539410762%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_45$5$2832236683162059153%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_46$3$355636700252117518%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_47$4$9974624642593201658%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_48$4$14834637957093724395%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_49$5$9982319475891260062%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_50$4$18041856802123859140%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_51$5$15456494779183064913%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_52$3$1193994613319519282%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_53$6$30781156464482553%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_54$6$4276298801844591459%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_55$5$15494941592042450304%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_56$3$4759033578015280558%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_57$5$938118686986066325%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_58$3$10522504278762424813%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_59$5$14474626718756964039%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_60$5$13665772721162474095%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_61$3$18399563375980868224%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_62$3$7429684705094907427%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_63$4$4460809016675536475%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_64$4$4068400483846200362%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_65$3$4739617661615336241%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_66$3$7395530204526009362%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_67$4$1770348032394913676%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_68$4$4490636510610601042%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_69$5$13165072392702278976%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_70$3$14555767943206871429%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_71$5$14559982558685517666%trigger ($Snap $Ref) Bool)
(declare-fun i32%trigger ($Snap $Ref) Bool)
(declare-fun isize%trigger ($Snap $Ref) Bool)
(declare-fun m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_Some%trigger ($Snap $Ref) Bool)
(declare-fun m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$i32$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_11$3$14638646224268616196%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_12$4$17001480277194006617%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_13$3$14638646224268616196%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_14$4$15549095298966453791%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_15$5$5075898579489248679%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_16$2$5059396678693552475%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_17$3$13755076842142279428%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_18$5$17753855177215072009%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_19$4$11545708990456197808%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_20$5$1201558823312298186%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_21$4$9662796120604503583%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_30$3$1832632346543900956%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_34$3$9863146735187217849%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_35$3$6764460164408742563%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_36$5$15283588091169721285%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_38$5$18364178082525168913%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_39$3$8557536310959760232%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_40$3$439034602103774817%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_41$3$17248028283071546651%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_42$3$3125871853483277348%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_43$3$12509036097101680182%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_44$5$4519369578539410762%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_45$5$2832236683162059153%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_46$3$355636700252117518%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_47$4$9974624642593201658%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_48$4$14834637957093724395%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_49$5$9982319475891260062%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_50$4$18041856802123859140%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_51$5$15456494779183064913%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_52$3$1193994613319519282%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_53$6$30781156464482553%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_54$6$4276298801844591459%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_55$5$15494941592042450304%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_56$3$4759033578015280558%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_57$5$938118686986066325%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_58$3$10522504278762424813%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_59$5$14474626718756964039%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_60$5$13665772721162474095%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_61$3$18399563375980868224%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_62$3$7429684705094907427%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_63$4$4460809016675536475%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_64$4$4068400483846200362%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_65$3$4739617661615336241%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_66$3$7395530204526009362%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_67$4$1770348032394913676%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_68$4$4490636510610601042%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_69$5$13165072392702278976%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_70$3$14555767943206871429%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_71$5$14559982558685517666%trigger ($Snap $Ref) Bool)
(declare-fun ref$i32%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$i32%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$str%trigger ($Snap $Ref) Bool)
(declare-fun ref$tuple3$ref$str$u32$u32%trigger ($Snap $Ref) Bool)
(declare-fun ref$usize%trigger ($Snap $Ref) Bool)
(declare-fun str%trigger ($Snap $Ref) Bool)
(declare-fun tuple0$%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$usize$bool%trigger ($Snap $Ref) Bool)
(declare-fun tuple3$ref$str$u32$u32%trigger ($Snap $Ref) Bool)
(declare-fun u32%trigger ($Snap $Ref) Bool)
(declare-fun u8%trigger ($Snap $Ref) Bool)
(declare-fun usize%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((s Set<$Ref>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o $Ref)) (!
  (not (Set_in o (as Set_empty  Set<$Ref>)))
  :pattern ((Set_in o (as Set_empty  Set<$Ref>)))
  )))
(assert (forall ((s Set<$Ref>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<$Ref>)))
    (=> (not (= (Set_card s) 0)) (exists ((x $Ref))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r $Ref)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r $Ref) (o $Ref)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r $Ref)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref) (o $Ref)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref) (y $Ref)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (o $Ref)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (y $Ref)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (y $Ref)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (o $Ref)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (o $Ref)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (y $Ref)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (=
    (Set_subset a b)
    (forall ((o $Ref)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((s Set<Int>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Int)) (!
  (not (Set_in o (as Set_empty  Set<Int>)))
  :pattern ((Set_in o (as Set_empty  Set<Int>)))
  )))
(assert (forall ((s Set<Int>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Int>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Int))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Int)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Int) (o Int)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Int)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Int>) (x Int) (o Int)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Int>) (x Int)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Int>) (x Int) (y Int)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Int>) (x Int)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Int>) (x Int)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (o Int)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (y Int)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (y Int)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (o Int)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (o Int)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (y Int)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (=
    (Set_subset a b)
    (forall ((o Int)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((s Set<Bool>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Bool)) (!
  (not (Set_in o (as Set_empty  Set<Bool>)))
  :pattern ((Set_in o (as Set_empty  Set<Bool>)))
  )))
(assert (forall ((s Set<Bool>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Bool>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Bool))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Bool)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Bool) (o Bool)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Bool)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Bool>) (x Bool) (o Bool)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Bool>) (x Bool)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Bool>) (x Bool) (y Bool)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Bool>) (x Bool)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Bool>) (x Bool)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (o Bool)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (y Bool)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (y Bool)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (o Bool)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (o Bool)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (y Bool)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (=
    (Set_subset a b)
    (forall ((o Bool)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((s Set<$Snap>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o $Snap)) (!
  (not (Set_in o (as Set_empty  Set<$Snap>)))
  :pattern ((Set_in o (as Set_empty  Set<$Snap>)))
  )))
(assert (forall ((s Set<$Snap>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<$Snap>)))
    (=> (not (= (Set_card s) 0)) (exists ((x $Snap))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r $Snap)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r $Snap) (o $Snap)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r $Snap)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap) (o $Snap)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap) (y $Snap)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (o $Snap)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (y $Snap)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (y $Snap)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (o $Snap)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (o $Snap)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (y $Snap)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (=
    (Set_subset a b)
    (forall ((o $Snap)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
; /field_value_functions_axioms.smt2 [val_ref: Ref]
(assert (forall ((vs $FVF<val_ref>) (ws $FVF<val_ref>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_val_ref vs) ($FVF.domain_val_ref ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_val_ref vs))
            (= ($FVF.lookup_val_ref vs x) ($FVF.lookup_val_ref ws x)))
          :pattern (($FVF.lookup_val_ref vs x) ($FVF.lookup_val_ref ws x))
          :qid |qp.$FVF<val_ref>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<val_ref>To$Snap vs)
              ($SortWrappers.$FVF<val_ref>To$Snap ws)
              )
    :qid |qp.$FVF<val_ref>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_val_ref pm r))
    :pattern (($FVF.perm_val_ref pm r)))))
(assert (forall ((r $Ref) (f $Ref)) (!
    (= ($FVF.loc_val_ref f r) true)
    :pattern (($FVF.loc_val_ref f r)))))
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
  :qid |quant-u-352|)))
(assert (forall ((s@$ $Snap)) (!
  (as read$%stateless  Bool)
  :pattern ((read$%limited s@$))
  :qid |quant-u-353|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) (=>
    (read$%precondition s@$)
    (and (< $Perm.No result@0@00) (< result@0@00 $Perm.Write))))
  :pattern ((read$%limited s@$))
  :qid |quant-u-376|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-377|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-378|)))
; ---------- FUNCTION m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$----------
(declare-fun _pure_1@1@00 () $Ref)
(declare-fun result@2@00 () Bool)
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
(assert (= ($Snap.second s@$) $Snap.unit))
(declare-const $t@21@00 $Snap)
(assert (= $t@21@00 $Snap.unit))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (=
    (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@1@00)
    (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@1@00))
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@1@00))
  :qid |quant-u-354|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless _pure_1@1@00)
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@1@00))
  :qid |quant-u-355|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (let ((result@2@00 (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@1@00))) true)
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@1@00))
  :qid |quant-u-379|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (let ((result@2@00 (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@1@00))) true)
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@1@00))
  :qid |quant-u-380|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (= ($Snap.second s@$) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_(_pure_1), read$()) in _pure_1.discriminant == 0)
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
(assert (m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@1@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@1@00 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.first s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.second ($Snap.second ($Snap.first s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit))
; [eval] 0 <= self.discriminant
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit))
; [eval] self.discriminant <= 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
; [eval] self.discriminant == 0
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
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | First:(First:(s@$)) == 0 | live]
; [else-branch: 0 | First:(First:(s@$)) != 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | First:(First:(s@$)) == 0]
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] _pure_1.discriminant == 0
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
(set-option :timeout 0)
(push) ; 3
; [else-branch: 0 | First:(First:(s@$)) != 0]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
  $Snap.unit))
; [eval] _pure_1.discriminant == 0
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(declare-fun joined_unfolding@22@00 ($Snap $Ref) Bool)
(assert (=>
  (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)
  (=
    (joined_unfolding@22@00 s@$ _pure_1@1@00)
    (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))))
(assert (=>
  (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
  (=
    (joined_unfolding@22@00 s@$ _pure_1@1@00)
    (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))))
; Joined path conditions
(assert (and
  (m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@1@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@1@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.second ($Snap.second ($Snap.first s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))))
  (=
    ($Snap.second ($Snap.second ($Snap.first s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
  (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit)
  (<= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
; Joined path conditions
(assert (and
  (m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@1@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@1@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.second ($Snap.second ($Snap.first s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))))
  (=
    ($Snap.second ($Snap.second ($Snap.first s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
  (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit)
  (<= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
(assert (=>
  (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
  (and
    (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      $Snap.unit))))
(assert (or
  (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
  (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
(assert (= result@2@00 (joined_unfolding@22@00 s@$ _pure_1@1@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (=>
    (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _pure_1@1@00)
    (=
      (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@1@00)
      (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@1@00))
  :qid |quant-u-381|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  true
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@1@00))
  :qid |quant-u-382|)))
; ---------- FUNCTION m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$----------
(declare-fun _pure_1@3@00 () $Ref)
(declare-fun result@4@00 () Int)
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
(declare-const $t@23@00 $Snap)
(assert (= $t@23@00 ($Snap.combine ($Snap.first $t@23@00) ($Snap.second $t@23@00))))
(assert (= ($Snap.first $t@23@00) $Snap.unit))
(assert (=
  ($Snap.second $t@23@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@23@00))
    ($Snap.second ($Snap.second $t@23@00)))))
(assert (= ($Snap.first ($Snap.second $t@23@00)) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@4@00))
(assert (= ($Snap.second ($Snap.second $t@23@00)) $Snap.unit))
; [eval] result <= 18446744073709551615
(assert (<= result@4@00 18446744073709551615))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@3@00 $Ref)) (!
  (=
    (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@3@00)
    (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@3@00))
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@3@00))
  :qid |quant-u-356|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 $Ref)) (!
  (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless _pure_1@3@00)
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@3@00))
  :qid |quant-u-357|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 $Ref)) (!
  (let ((result@4@00 (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@3@00))) (=>
    (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@3@00)
    (and (<= 0 result@4@00) (<= result@4@00 18446744073709551615))))
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@3@00))
  :qid |quant-u-383|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 $Ref)) (!
  (let ((result@4@00 (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@3@00))) true)
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@3@00))
  :qid |quant-u-384|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 $Ref)) (!
  (let ((result@4@00 (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@3@00))) true)
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@3@00))
  :qid |quant-u-385|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 $Ref)) (!
  (let ((result@4@00 (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@3@00))) true)
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@3@00))
  :qid |quant-u-386|)))
; ---------- FUNCTION builtin$unreach_int__$TY$__$int$----------
(declare-fun result@5@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert false)
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=
    (builtin$unreach_int__$TY$__$int$%limited s@$)
    (builtin$unreach_int__$TY$__$int$ s@$))
  :pattern ((builtin$unreach_int__$TY$__$int$ s@$))
  :qid |quant-u-358|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$unreach_int__$TY$__$int$%stateless  Bool)
  :pattern ((builtin$unreach_int__$TY$__$int$%limited s@$))
  :qid |quant-u-359|)))
; ---------- FUNCTION m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$int$----------
(declare-fun self@6@00 () $Ref)
(declare-fun result@7@00 () Int)
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
(declare-const $t@24@00 $Snap)
(assert (= $t@24@00 ($Snap.combine ($Snap.first $t@24@00) ($Snap.second $t@24@00))))
(assert (= ($Snap.first $t@24@00) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@7@00))
(assert (= ($Snap.second $t@24@00) $Snap.unit))
; [eval] result <= 2
(assert (<= result@7@00 2))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@6@00 $Ref)) (!
  (=
    (m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@6@00)
    (m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ self@6@00))
  :pattern ((m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ self@6@00))
  :qid |quant-u-360|)))
(assert (forall ((s@$ $Snap) (self@6@00 $Ref)) (!
  (m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless self@6@00)
  :pattern ((m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@6@00))
  :qid |quant-u-361|)))
(assert (forall ((s@$ $Snap) (self@6@00 $Ref)) (!
  (let ((result@7@00 (m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@6@00))) (=>
    (m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ self@6@00)
    (and (<= 0 result@7@00) (<= result@7@00 2))))
  :pattern ((m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@6@00))
  :qid |quant-u-387|)))
(assert (forall ((s@$ $Snap) (self@6@00 $Ref)) (!
  (let ((result@7@00 (m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@6@00))) true)
  :pattern ((m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@6@00))
  :qid |quant-u-388|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_(self), read$()) in self.discriminant)
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
(assert (m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_%trigger s@$ self@6@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@6@00 $Ref.null))))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
; [eval] 0 <= self.discriminant
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
(assert (= ($Snap.second ($Snap.second s@$)) $Snap.unit))
; [eval] self.discriminant <= 2
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 2))
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
  (m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_%trigger s@$ self@6@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@6@00 $Ref.null)))
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (= ($Snap.first ($Snap.second s@$)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first s@$)))
  (= ($Snap.second ($Snap.second s@$)) $Snap.unit)
  (<= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 2)))
(assert (= result@7@00 ($SortWrappers.$SnapToInt ($Snap.first s@$))))
; [eval] 0 <= result
(set-option :timeout 0)
(push) ; 2
(assert (not (<= 0 result@7@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 result@7@00))
; [eval] result <= 2
(push) ; 2
(assert (not (<= result@7@00 2)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= result@7@00 2))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@6@00 $Ref)) (!
  (=>
    (m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ self@6@00)
    (=
      (m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ self@6@00)
      ($SortWrappers.$SnapToInt ($Snap.first s@$))))
  :pattern ((m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ self@6@00))
  :qid |quant-u-389|)))
(assert (forall ((s@$ $Snap) (self@6@00 $Ref)) (!
  true
  :pattern ((m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ self@6@00))
  :qid |quant-u-390|)))
; ---------- FUNCTION builtin$undef_int__$TY$__$int$----------
(declare-fun result@8@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=
    (builtin$undef_int__$TY$__$int$%limited s@$)
    (builtin$undef_int__$TY$__$int$ s@$))
  :pattern ((builtin$undef_int__$TY$__$int$ s@$))
  :qid |quant-u-362|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$undef_int__$TY$__$int$%stateless  Bool)
  :pattern ((builtin$undef_int__$TY$__$int$%limited s@$))
  :qid |quant-u-363|)))
; ---------- FUNCTION builtin$unreach_bool__$TY$__$bool$----------
(declare-fun result@9@00 () Bool)
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
  :qid |quant-u-364|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$unreach_bool__$TY$__$bool$%stateless  Bool)
  :pattern ((builtin$unreach_bool__$TY$__$bool$%limited s@$))
  :qid |quant-u-365|)))
; ---------- FUNCTION builtin$undef_bool__$TY$__$bool$----------
(declare-fun result@10@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=
    (builtin$undef_bool__$TY$__$bool$%limited s@$)
    (builtin$undef_bool__$TY$__$bool$ s@$))
  :pattern ((builtin$undef_bool__$TY$__$bool$ s@$))
  :qid |quant-u-366|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$undef_bool__$TY$__$bool$%stateless  Bool)
  :pattern ((builtin$undef_bool__$TY$__$bool$%limited s@$))
  :qid |quant-u-367|)))
; ---------- FUNCTION m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$----------
(declare-fun _pure_1@11@00 () $Ref)
(declare-fun result@12@00 () Bool)
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
(assert (= ($Snap.second s@$) $Snap.unit))
(declare-const $t@25@00 $Snap)
(assert (= $t@25@00 $Snap.unit))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@11@00 $Ref)) (!
  (=
    (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@11@00)
    (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@11@00))
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@11@00))
  :qid |quant-u-368|)))
(assert (forall ((s@$ $Snap) (_pure_1@11@00 $Ref)) (!
  (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless _pure_1@11@00)
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@11@00))
  :qid |quant-u-369|)))
(assert (forall ((s@$ $Snap) (_pure_1@11@00 $Ref)) (!
  (let ((result@12@00 (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@11@00))) true)
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@11@00))
  :qid |quant-u-391|)))
(assert (forall ((s@$ $Snap) (_pure_1@11@00 $Ref)) (!
  (let ((result@12@00 (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@11@00))) true)
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@11@00))
  :qid |quant-u-392|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (= ($Snap.second s@$) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] !m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$(_pure_1)
; [eval] m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$(_pure_1)
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
(assert (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@11@00))
(pop) ; 2
; Joined path conditions
(assert (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@11@00))
(assert (=
  result@12@00
  (not
    (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap.combine
      ($Snap.first s@$)
      $Snap.unit) _pure_1@11@00))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@11@00 $Ref)) (!
  (=>
    (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _pure_1@11@00)
    (=
      (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@11@00)
      (not
        (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap.combine
          ($Snap.first s@$)
          $Snap.unit) _pure_1@11@00))))
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@11@00))
  :qid |quant-u-393|)))
(assert (forall ((s@$ $Snap) (_pure_1@11@00 $Ref)) (!
  (=>
    (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _pure_1@11@00)
    (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap.combine
      ($Snap.first s@$)
      $Snap.unit) _pure_1@11@00))
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@11@00))
  :qid |quant-u-394|)))
; ---------- FUNCTION m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$----------
(declare-fun _pure_1@13@00 () $Ref)
(declare-fun _pure_2@14@00 () Int)
(declare-fun result@15@00 () Int)
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
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
; [eval] 0 <= _pure_2
(assert (<= 0 _pure_2@14@00))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] _pure_2 < m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
; [eval] m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
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
(assert (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@13@00))
(pop) ; 2
; Joined path conditions
(assert (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@13@00))
(assert (<
  _pure_2@14@00
  (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@13@00)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))) $Snap.unit))
; [eval] 0 <= _pure_2
(assert (= ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))) $Snap.unit))
; [eval] _pure_2 <= 18446744073709551615
(assert (<= _pure_2@14@00 18446744073709551615))
(declare-const $t@26@00 $Snap)
(assert (= $t@26@00 ($Snap.combine ($Snap.first $t@26@00) ($Snap.second $t@26@00))))
(assert (= ($Snap.first $t@26@00) $Snap.unit))
(assert (=
  ($Snap.second $t@26@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@26@00))
    ($Snap.second ($Snap.second $t@26@00)))))
(assert (= ($Snap.first ($Snap.second $t@26@00)) $Snap.unit))
; [eval] -2147483648 <= result
; [eval] -2147483648
(assert (<= (- 0 2147483648) result@15@00))
(assert (= ($Snap.second ($Snap.second $t@26@00)) $Snap.unit))
; [eval] result <= 2147483647
(assert (<= result@15@00 2147483647))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@13@00 $Ref) (_pure_2@14@00 Int)) (!
  (=
    (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@13@00 _pure_2@14@00)
    (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ s@$ _pure_1@13@00 _pure_2@14@00))
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ s@$ _pure_1@13@00 _pure_2@14@00))
  :qid |quant-u-370|)))
(assert (forall ((s@$ $Snap) (_pure_1@13@00 $Ref) (_pure_2@14@00 Int)) (!
  (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%stateless _pure_1@13@00 _pure_2@14@00)
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@13@00 _pure_2@14@00))
  :qid |quant-u-371|)))
(assert (forall ((s@$ $Snap) (_pure_1@13@00 $Ref) (_pure_2@14@00 Int)) (!
  (let ((result@15@00 (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@13@00 _pure_2@14@00))) (=>
    (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition s@$ _pure_1@13@00 _pure_2@14@00)
    (and (<= (- 0 2147483648) result@15@00) (<= result@15@00 2147483647))))
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@13@00 _pure_2@14@00))
  :qid |quant-u-395|)))
(assert (forall ((s@$ $Snap) (_pure_1@13@00 $Ref) (_pure_2@14@00 Int)) (!
  (let ((result@15@00 (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@13@00 _pure_2@14@00))) true)
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@13@00 _pure_2@14@00))
  :qid |quant-u-396|)))
(assert (forall ((s@$ $Snap) (_pure_1@13@00 $Ref) (_pure_2@14@00 Int)) (!
  (let ((result@15@00 (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@13@00 _pure_2@14@00))) true)
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@13@00 _pure_2@14@00))
  :qid |quant-u-397|)))
(assert (forall ((s@$ $Snap) (_pure_1@13@00 $Ref) (_pure_2@14@00 Int)) (!
  (let ((result@15@00 (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@13@00 _pure_2@14@00))) true)
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@13@00 _pure_2@14@00))
  :qid |quant-u-398|)))
; ---------- FUNCTION m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$----------
(declare-fun self@16@00 () $Ref)
(declare-fun result@17@00 () Int)
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
(declare-const $t@27@00 $Snap)
(assert (= $t@27@00 ($Snap.combine ($Snap.first $t@27@00) ($Snap.second $t@27@00))))
(assert (= ($Snap.first $t@27@00) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@17@00))
(assert (= ($Snap.second $t@27@00) $Snap.unit))
; [eval] result <= 1
(assert (<= result@17@00 1))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@16@00 $Ref)) (!
  (=
    (m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@16@00)
    (m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ self@16@00))
  :pattern ((m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ self@16@00))
  :qid |quant-u-372|)))
(assert (forall ((s@$ $Snap) (self@16@00 $Ref)) (!
  (m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless self@16@00)
  :pattern ((m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@16@00))
  :qid |quant-u-373|)))
(assert (forall ((s@$ $Snap) (self@16@00 $Ref)) (!
  (let ((result@17@00 (m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@16@00))) (=>
    (m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ self@16@00)
    (and (<= 0 result@17@00) (<= result@17@00 1))))
  :pattern ((m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@16@00))
  :qid |quant-u-399|)))
(assert (forall ((s@$ $Snap) (self@16@00 $Ref)) (!
  (let ((result@17@00 (m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@16@00))) true)
  :pattern ((m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@16@00))
  :qid |quant-u-400|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_(self), read$()) in self.discriminant)
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
(assert (m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_%trigger s@$ self@16@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@16@00 $Ref.null))))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
; [eval] 0 <= self.discriminant
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
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] self.discriminant <= 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
; [eval] self.discriminant == 0
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
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | First:(s@$) == 0 | live]
; [else-branch: 1 | First:(s@$) != 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | First:(s@$) == 0]
(assert (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0))
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
(set-option :timeout 0)
(push) ; 3
; [else-branch: 1 | First:(s@$) != 0]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0)))
(assert (= ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))) $Snap.unit))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(declare-fun joined_unfolding@28@00 ($Snap $Ref) Int)
(assert (=>
  (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0)
  (=
    (joined_unfolding@28@00 s@$ self@16@00)
    ($SortWrappers.$SnapToInt ($Snap.first s@$)))))
(assert (=>
  (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0))
  (=
    (joined_unfolding@28@00 s@$ self@16@00)
    ($SortWrappers.$SnapToInt ($Snap.first s@$)))))
; Joined path conditions
(assert (and
  (m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_%trigger s@$ self@16@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@16@00 $Ref.null)))
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (= ($Snap.first ($Snap.second s@$)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first s@$)))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit)
  (<= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1)
  (=
    ($Snap.second ($Snap.second ($Snap.second s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
; Joined path conditions
(assert (and
  (m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_%trigger s@$ self@16@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@16@00 $Ref.null)))
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (= ($Snap.first ($Snap.second s@$)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first s@$)))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit)
  (<= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1)
  (=
    ($Snap.second ($Snap.second ($Snap.second s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
(assert (=>
  (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0))
  (and
    (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))
      $Snap.unit))))
(assert (or
  (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0))
  (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0)))
(assert (= result@17@00 (joined_unfolding@28@00 s@$ self@16@00)))
; [eval] 0 <= result
(set-option :timeout 0)
(push) ; 2
(assert (not (<= 0 result@17@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 result@17@00))
; [eval] result <= 1
(push) ; 2
(assert (not (<= result@17@00 1)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= result@17@00 1))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@16@00 $Ref)) (!
  (=>
    (m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ self@16@00)
    (=
      (m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ self@16@00)
      ($SortWrappers.$SnapToInt ($Snap.first s@$))))
  :pattern ((m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ self@16@00))
  :qid |quant-u-401|)))
(assert (forall ((s@$ $Snap) (self@16@00 $Ref)) (!
  true
  :pattern ((m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ self@16@00))
  :qid |quant-u-402|)))
; ---------- FUNCTION m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$----------
(declare-fun _pure_1@18@00 () $Ref)
(declare-fun result@19@00 () Int)
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
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$(_pure_1)
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
(assert (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@18@00))
(pop) ; 2
; Joined path conditions
(assert (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@18@00))
(assert (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@18@00))
(declare-const $t@29@00 $Snap)
(assert (= $t@29@00 ($Snap.combine ($Snap.first $t@29@00) ($Snap.second $t@29@00))))
(assert (= ($Snap.first $t@29@00) $Snap.unit))
(assert (=
  ($Snap.second $t@29@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@29@00))
    ($Snap.second ($Snap.second $t@29@00)))))
(assert (= ($Snap.first ($Snap.second $t@29@00)) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@19@00))
(assert (= ($Snap.second ($Snap.second $t@29@00)) $Snap.unit))
; [eval] result <= 18446744073709551615
(assert (<= result@19@00 18446744073709551615))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@18@00 $Ref)) (!
  (=
    (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@18@00)
    (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@18@00))
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@18@00))
  :qid |quant-u-374|)))
(assert (forall ((s@$ $Snap) (_pure_1@18@00 $Ref)) (!
  (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless _pure_1@18@00)
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@18@00))
  :qid |quant-u-375|)))
(assert (forall ((s@$ $Snap) (_pure_1@18@00 $Ref)) (!
  (let ((result@19@00 (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@18@00))) (=>
    (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@18@00)
    (and (<= 0 result@19@00) (<= result@19@00 18446744073709551615))))
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@18@00))
  :qid |quant-u-403|)))
(assert (forall ((s@$ $Snap) (_pure_1@18@00 $Ref)) (!
  (let ((result@19@00 (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@18@00))) true)
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@18@00))
  :qid |quant-u-404|)))
(assert (forall ((s@$ $Snap) (_pure_1@18@00 $Ref)) (!
  (let ((result@19@00 (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@18@00))) true)
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@18@00))
  :qid |quant-u-405|)))
(assert (forall ((s@$ $Snap) (_pure_1@18@00 $Ref)) (!
  (let ((result@19@00 (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@18@00))) true)
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@18@00))
  :qid |quant-u-406|)))
; ----- Verification of function body and postcondition -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (= ($Snap.second s@$) $Snap.unit))
(assert (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@18@00))
(assert (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@18@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_(_pure_1), read$()) in (_pure_1.discriminant == 0 ? (unfolding acc(m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_Some(_pure_1.enum_Some), read$()) in (unfolding acc(usize(_pure_1.enum_Some.f$0), read$()) in _pure_1.enum_Some.f$0.val_int)) : builtin$unreach_int__$TY$__$int$()))
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
(assert (m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@18@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@18@00 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.first s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.second ($Snap.second ($Snap.first s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit))
; [eval] 0 <= self.discriminant
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit))
; [eval] self.discriminant <= 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
; [eval] self.discriminant == 0
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
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | First:(First:(s@$)) == 0 | live]
; [else-branch: 2 | First:(First:(s@$)) != 0 | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 2 | First:(First:(s@$)) == 0]
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (_pure_1.discriminant == 0 ? (unfolding acc(m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_Some(_pure_1.enum_Some), read$()) in (unfolding acc(usize(_pure_1.enum_Some.f$0), read$()) in _pure_1.enum_Some.f$0.val_int)) : builtin$unreach_int__$TY$__$int$())
; [eval] _pure_1.discriminant == 0
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
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | First:(First:(s@$)) == 0 | live]
; [else-branch: 3 | First:(First:(s@$)) != 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 3 | First:(First:(s@$)) == 0]
; [eval] (unfolding acc(m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_Some(_pure_1.enum_Some), read$()) in (unfolding acc(usize(_pure_1.enum_Some.f$0), read$()) in _pure_1.enum_Some.f$0.val_int))
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
; [eval] read$()
(push) ; 7
(pop) ; 7
; Joined path conditions
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
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
(assert (m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_Some%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
      $Ref.null))))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(usize(_pure_1.enum_Some.f$0), read$()) in _pure_1.enum_Some.f$0.val_int)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
; [eval] read$()
(push) ; 8
(pop) ; 8
; Joined path conditions
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
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (usize%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  $Snap.unit))
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  $Snap.unit))
; [eval] self.val_int <= 18446744073709551615
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (<=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  18446744073709551615))
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
(pop) ; 7
; Joined path conditions
(assert (and
  (usize%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
        $Ref.null)))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
  (=
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    $Snap.unit)
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    $Snap.unit)
  (<=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    18446744073709551615)))
(pop) ; 6
; Joined path conditions
(assert (and
  (m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_Some%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
        $Ref.null)))
  (usize%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
        $Ref.null)))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
  (=
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    $Snap.unit)
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    $Snap.unit)
  (<=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    18446744073709551615)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)
  (and
    (m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_Some%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    (=>
      (< $Perm.No (read$ $Snap.unit))
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
          $Ref.null)))
    (usize%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    (=>
      (< $Perm.No (read$ $Snap.unit))
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
          $Ref.null)))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
      $Snap.unit)
    (<=
      0
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
      $Snap.unit)
    (<=
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
      18446744073709551615))))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (and
  (m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@18@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@18@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.second ($Snap.second ($Snap.first s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))))
  (=
    ($Snap.second ($Snap.second ($Snap.first s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
  (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit)
  (<= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
(assert (=>
  (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)
  (and
    (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)
    (=>
      (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)
      (and
        (m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_Some%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
        (=>
          (< $Perm.No (read$ $Snap.unit))
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
              $Ref.null)))
        (usize%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
        (=>
          (< $Perm.No (read$ $Snap.unit))
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
              $Ref.null)))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
          $Snap.unit)
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
          $Snap.unit)
        (<=
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
          18446744073709551615))))))
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
(assert (=
  result@19@00
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
; [eval] 0 <= result
(set-option :timeout 0)
(push) ; 2
(assert (not (<= 0 result@19@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 result@19@00))
; [eval] result <= 18446744073709551615
(push) ; 2
(assert (not (<= result@19@00 18446744073709551615)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= result@19@00 18446744073709551615))
(pop) ; 1
(declare-const $unresolved@30@00 $Snap)
(assert (forall ((s@$ $Snap) (_pure_1@18@00 $Ref)) (!
  (=>
    (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@18@00)
    (=
      (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@18@00)
      (ite
        (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
        (builtin$unreach_int__$TY$__$int$ $unresolved@30@00))))
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@18@00))
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless _pure_1@18@00) (m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@18@00))
  :qid |quant-u-407|)))
(assert (forall ((s@$ $Snap) (_pure_1@18@00 $Ref)) (!
  (=>
    (m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@18@00)
    (ite
      (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)
      true
      (builtin$unreach_int__$TY$__$int$%precondition $unresolved@30@00)))
  :pattern ((m_Binary_search$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@18@00))
  :qid |quant-u-408|)))
; ---------- DeadBorrowToken$ ----------
(declare-const borrow@31@00 Int)
; ---------- bool ----------
(declare-const self@32@00 $Ref)
(push) ; 1
(declare-const $t@33@00 Bool)
(assert (not (= self@32@00 $Ref.null)))
(pop) ; 1
; ---------- closure$0_1_11$3$14638646224268616196 ----------
(declare-const self@34@00 $Ref)
; ---------- closure$0_1_12$4$17001480277194006617 ----------
(declare-const self@35@00 $Ref)
; ---------- closure$0_1_13$3$14638646224268616196 ----------
(declare-const self@36@00 $Ref)
; ---------- closure$0_1_14$4$15549095298966453791 ----------
(declare-const self@37@00 $Ref)
; ---------- closure$0_1_15$5$5075898579489248679 ----------
(declare-const self@38@00 $Ref)
; ---------- closure$0_1_16$2$5059396678693552475 ----------
(declare-const self@39@00 $Ref)
; ---------- closure$0_1_17$3$13755076842142279428 ----------
(declare-const self@40@00 $Ref)
; ---------- closure$0_1_18$5$17753855177215072009 ----------
(declare-const self@41@00 $Ref)
; ---------- closure$0_1_19$4$11545708990456197808 ----------
(declare-const self@42@00 $Ref)
; ---------- closure$0_1_20$5$1201558823312298186 ----------
(declare-const self@43@00 $Ref)
; ---------- closure$0_1_21$4$9662796120604503583 ----------
(declare-const self@44@00 $Ref)
; ---------- closure$0_1_30$3$1832632346543900956 ----------
(declare-const self@45@00 $Ref)
; ---------- closure$0_1_34$3$9863146735187217849 ----------
(declare-const self@46@00 $Ref)
; ---------- closure$0_1_35$3$6764460164408742563 ----------
(declare-const self@47@00 $Ref)
; ---------- closure$0_1_36$5$15283588091169721285 ----------
(declare-const self@48@00 $Ref)
; ---------- closure$0_1_37$2$17309005470967841763 ----------
(declare-const self@49@00 $Ref)
; ---------- closure$0_1_38$5$18364178082525168913 ----------
(declare-const self@50@00 $Ref)
; ---------- closure$0_1_39$3$8557536310959760232 ----------
(declare-const self@51@00 $Ref)
; ---------- closure$0_1_40$3$439034602103774817 ----------
(declare-const self@52@00 $Ref)
; ---------- closure$0_1_41$3$17248028283071546651 ----------
(declare-const self@53@00 $Ref)
; ---------- closure$0_1_42$3$3125871853483277348 ----------
(declare-const self@54@00 $Ref)
; ---------- closure$0_1_43$3$12509036097101680182 ----------
(declare-const self@55@00 $Ref)
; ---------- closure$0_1_44$5$4519369578539410762 ----------
(declare-const self@56@00 $Ref)
; ---------- closure$0_1_45$5$2832236683162059153 ----------
(declare-const self@57@00 $Ref)
; ---------- closure$0_1_46$3$355636700252117518 ----------
(declare-const self@58@00 $Ref)
; ---------- closure$0_1_47$4$9974624642593201658 ----------
(declare-const self@59@00 $Ref)
; ---------- closure$0_1_48$4$14834637957093724395 ----------
(declare-const self@60@00 $Ref)
; ---------- closure$0_1_49$5$9982319475891260062 ----------
(declare-const self@61@00 $Ref)
; ---------- closure$0_1_50$4$18041856802123859140 ----------
(declare-const self@62@00 $Ref)
; ---------- closure$0_1_51$5$15456494779183064913 ----------
(declare-const self@63@00 $Ref)
; ---------- closure$0_1_52$3$1193994613319519282 ----------
(declare-const self@64@00 $Ref)
; ---------- closure$0_1_53$6$30781156464482553 ----------
(declare-const self@65@00 $Ref)
; ---------- closure$0_1_54$6$4276298801844591459 ----------
(declare-const self@66@00 $Ref)
; ---------- closure$0_1_55$5$15494941592042450304 ----------
(declare-const self@67@00 $Ref)
; ---------- closure$0_1_56$3$4759033578015280558 ----------
(declare-const self@68@00 $Ref)
; ---------- closure$0_1_57$5$938118686986066325 ----------
(declare-const self@69@00 $Ref)
; ---------- closure$0_1_58$3$10522504278762424813 ----------
(declare-const self@70@00 $Ref)
; ---------- closure$0_1_59$5$14474626718756964039 ----------
(declare-const self@71@00 $Ref)
; ---------- closure$0_1_60$5$13665772721162474095 ----------
(declare-const self@72@00 $Ref)
; ---------- closure$0_1_61$3$18399563375980868224 ----------
(declare-const self@73@00 $Ref)
; ---------- closure$0_1_62$3$7429684705094907427 ----------
(declare-const self@74@00 $Ref)
; ---------- closure$0_1_63$4$4460809016675536475 ----------
(declare-const self@75@00 $Ref)
; ---------- closure$0_1_64$4$4068400483846200362 ----------
(declare-const self@76@00 $Ref)
; ---------- closure$0_1_65$3$4739617661615336241 ----------
(declare-const self@77@00 $Ref)
; ---------- closure$0_1_66$3$7395530204526009362 ----------
(declare-const self@78@00 $Ref)
; ---------- closure$0_1_67$4$1770348032394913676 ----------
(declare-const self@79@00 $Ref)
; ---------- closure$0_1_68$4$4490636510610601042 ----------
(declare-const self@80@00 $Ref)
; ---------- closure$0_1_69$5$13165072392702278976 ----------
(declare-const self@81@00 $Ref)
; ---------- closure$0_1_70$3$14555767943206871429 ----------
(declare-const self@82@00 $Ref)
; ---------- closure$0_1_71$5$14559982558685517666 ----------
(declare-const self@83@00 $Ref)
; ---------- i32 ----------
(declare-const self@84@00 $Ref)
(push) ; 1
(declare-const $t@85@00 $Snap)
(assert (= $t@85@00 ($Snap.combine ($Snap.first $t@85@00) ($Snap.second $t@85@00))))
(assert (not (= self@84@00 $Ref.null)))
(assert (=
  ($Snap.second $t@85@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@85@00))
    ($Snap.second ($Snap.second $t@85@00)))))
(assert (= ($Snap.first ($Snap.second $t@85@00)) $Snap.unit))
; [eval] -2147483648 <= self.val_int
; [eval] -2147483648
(assert (<= (- 0 2147483648) ($SortWrappers.$SnapToInt ($Snap.first $t@85@00))))
(assert (= ($Snap.second ($Snap.second $t@85@00)) $Snap.unit))
; [eval] self.val_int <= 2147483647
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first $t@85@00)) 2147483647))
(pop) ; 1
; ---------- isize ----------
(declare-const self@86@00 $Ref)
(push) ; 1
(declare-const $t@87@00 $Snap)
(assert (= $t@87@00 ($Snap.combine ($Snap.first $t@87@00) ($Snap.second $t@87@00))))
(assert (not (= self@86@00 $Ref.null)))
(assert (=
  ($Snap.second $t@87@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@87@00))
    ($Snap.second ($Snap.second $t@87@00)))))
(assert (= ($Snap.first ($Snap.second $t@87@00)) $Snap.unit))
; [eval] -9223372036854775808 <= self.val_int
; [eval] -9223372036854775808
(assert (<= (- 0 9223372036854775808) ($SortWrappers.$SnapToInt ($Snap.first $t@87@00))))
(assert (= ($Snap.second ($Snap.second $t@87@00)) $Snap.unit))
; [eval] self.val_int <= 9223372036854775807
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first $t@87@00)) 9223372036854775807))
(pop) ; 1
; ---------- m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@88@00 $Ref)
(push) ; 1
(declare-const $t@89@00 $Snap)
(assert (= $t@89@00 ($Snap.combine ($Snap.first $t@89@00) ($Snap.second $t@89@00))))
(assert (not (= self@88@00 $Ref.null)))
(assert (=
  ($Snap.second $t@89@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@89@00))
    ($Snap.second ($Snap.second $t@89@00)))))
(assert (= ($Snap.first ($Snap.second $t@89@00)) $Snap.unit))
; [eval] 0 <= self.discriminant
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@89@00))))
(assert (= ($Snap.second ($Snap.second $t@89@00)) $Snap.unit))
; [eval] self.discriminant <= 2
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first $t@89@00)) 2))
(pop) ; 1
; ---------- m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@90@00 $Ref)
(push) ; 1
(declare-const $t@91@00 $Snap)
(assert (= $t@91@00 ($Snap.combine ($Snap.first $t@91@00) ($Snap.second $t@91@00))))
(assert (not (= self@90@00 $Ref.null)))
(assert (=
  ($Snap.second $t@91@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@91@00))
    ($Snap.second ($Snap.second $t@91@00)))))
(assert (= ($Snap.first ($Snap.second $t@91@00)) $Snap.unit))
; [eval] 0 <= self.discriminant
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@91@00))))
(assert (=
  ($Snap.second ($Snap.second $t@91@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@91@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@91@00))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@91@00))) $Snap.unit))
; [eval] self.discriminant <= 1
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first $t@91@00)) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@91@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@91@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@00)))))))
; [eval] self.discriminant == 0
(push) ; 2
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@91@00)) 0))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@91@00)) 0)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | First:($t@91@00) == 0 | live]
; [else-branch: 4 | First:($t@91@00) != 0 | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 4 | First:($t@91@00) == 0]
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@91@00)) 0))
(pop) ; 2
(push) ; 2
; [else-branch: 4 | First:($t@91@00) != 0]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@91@00)) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@00))))
  $Snap.unit))
(pop) ; 2
(pop) ; 1
; ---------- m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_Some ----------
(declare-const self@92@00 $Ref)
(push) ; 1
(declare-const $t@93@00 $Snap)
(assert (= $t@93@00 ($Snap.combine ($Snap.first $t@93@00) ($Snap.second $t@93@00))))
(assert (not (= self@92@00 $Ref.null)))
(pop) ; 1
; ---------- m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@94@00 $Ref)
(push) ; 1
(declare-const $t@95@00 $Snap)
(assert (= $t@95@00 ($Snap.combine ($Snap.first $t@95@00) ($Snap.second $t@95@00))))
(assert (not (= self@94@00 $Ref.null)))
(pop) ; 1
; ---------- m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@96@00 $Ref)
(push) ; 1
(declare-const $t@97@00 $Snap)
(assert (= $t@97@00 $Snap.unit))
(pop) ; 1
; ---------- m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$i32$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_ ----------
(declare-const self@98@00 $Ref)
(push) ; 1
(declare-const $t@99@00 $Snap)
(assert (= $t@99@00 ($Snap.combine ($Snap.first $t@99@00) ($Snap.second $t@99@00))))
(assert (not (= self@98@00 $Ref.null)))
(assert (=
  ($Snap.second $t@99@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@99@00))
    ($Snap.second ($Snap.second $t@99@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@99@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@99@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@99@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@99@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@00)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@00))))))))
(pop) ; 1
; ---------- m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$i32$_end_ ----------
(declare-const self@100@00 $Ref)
(push) ; 1
(declare-const $t@101@00 $Snap)
(assert (= $t@101@00 ($Snap.combine ($Snap.first $t@101@00) ($Snap.second $t@101@00))))
(assert (not (= self@100@00 $Ref.null)))
(assert (=
  ($Snap.second $t@101@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@101@00))
    ($Snap.second ($Snap.second $t@101@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@101@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@101@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@101@00))))))
(pop) ; 1
; ---------- m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$i32$_end_ ----------
(declare-const self@102@00 $Ref)
; ---------- ref$closure$0_1_11$3$14638646224268616196 ----------
(declare-const self@103@00 $Ref)
(push) ; 1
(declare-const $t@104@00 $Snap)
(assert (= $t@104@00 ($Snap.combine ($Snap.first $t@104@00) ($Snap.second $t@104@00))))
(assert (not (= self@103@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_12$4$17001480277194006617 ----------
(declare-const self@105@00 $Ref)
(push) ; 1
(declare-const $t@106@00 $Snap)
(assert (= $t@106@00 ($Snap.combine ($Snap.first $t@106@00) ($Snap.second $t@106@00))))
(assert (not (= self@105@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_13$3$14638646224268616196 ----------
(declare-const self@107@00 $Ref)
(push) ; 1
(declare-const $t@108@00 $Snap)
(assert (= $t@108@00 ($Snap.combine ($Snap.first $t@108@00) ($Snap.second $t@108@00))))
(assert (not (= self@107@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_14$4$15549095298966453791 ----------
(declare-const self@109@00 $Ref)
(push) ; 1
(declare-const $t@110@00 $Snap)
(assert (= $t@110@00 ($Snap.combine ($Snap.first $t@110@00) ($Snap.second $t@110@00))))
(assert (not (= self@109@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_15$5$5075898579489248679 ----------
(declare-const self@111@00 $Ref)
(push) ; 1
(declare-const $t@112@00 $Snap)
(assert (= $t@112@00 ($Snap.combine ($Snap.first $t@112@00) ($Snap.second $t@112@00))))
(assert (not (= self@111@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_16$2$5059396678693552475 ----------
(declare-const self@113@00 $Ref)
(push) ; 1
(declare-const $t@114@00 $Snap)
(assert (= $t@114@00 ($Snap.combine ($Snap.first $t@114@00) ($Snap.second $t@114@00))))
(assert (not (= self@113@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_17$3$13755076842142279428 ----------
(declare-const self@115@00 $Ref)
(push) ; 1
(declare-const $t@116@00 $Snap)
(assert (= $t@116@00 ($Snap.combine ($Snap.first $t@116@00) ($Snap.second $t@116@00))))
(assert (not (= self@115@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_18$5$17753855177215072009 ----------
(declare-const self@117@00 $Ref)
(push) ; 1
(declare-const $t@118@00 $Snap)
(assert (= $t@118@00 ($Snap.combine ($Snap.first $t@118@00) ($Snap.second $t@118@00))))
(assert (not (= self@117@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_19$4$11545708990456197808 ----------
(declare-const self@119@00 $Ref)
(push) ; 1
(declare-const $t@120@00 $Snap)
(assert (= $t@120@00 ($Snap.combine ($Snap.first $t@120@00) ($Snap.second $t@120@00))))
(assert (not (= self@119@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_20$5$1201558823312298186 ----------
(declare-const self@121@00 $Ref)
(push) ; 1
(declare-const $t@122@00 $Snap)
(assert (= $t@122@00 ($Snap.combine ($Snap.first $t@122@00) ($Snap.second $t@122@00))))
(assert (not (= self@121@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_21$4$9662796120604503583 ----------
(declare-const self@123@00 $Ref)
(push) ; 1
(declare-const $t@124@00 $Snap)
(assert (= $t@124@00 ($Snap.combine ($Snap.first $t@124@00) ($Snap.second $t@124@00))))
(assert (not (= self@123@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_30$3$1832632346543900956 ----------
(declare-const self@125@00 $Ref)
(push) ; 1
(declare-const $t@126@00 $Snap)
(assert (= $t@126@00 ($Snap.combine ($Snap.first $t@126@00) ($Snap.second $t@126@00))))
(assert (not (= self@125@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_34$3$9863146735187217849 ----------
(declare-const self@127@00 $Ref)
(push) ; 1
(declare-const $t@128@00 $Snap)
(assert (= $t@128@00 ($Snap.combine ($Snap.first $t@128@00) ($Snap.second $t@128@00))))
(assert (not (= self@127@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_35$3$6764460164408742563 ----------
(declare-const self@129@00 $Ref)
(push) ; 1
(declare-const $t@130@00 $Snap)
(assert (= $t@130@00 ($Snap.combine ($Snap.first $t@130@00) ($Snap.second $t@130@00))))
(assert (not (= self@129@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_36$5$15283588091169721285 ----------
(declare-const self@131@00 $Ref)
(push) ; 1
(declare-const $t@132@00 $Snap)
(assert (= $t@132@00 ($Snap.combine ($Snap.first $t@132@00) ($Snap.second $t@132@00))))
(assert (not (= self@131@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_38$5$18364178082525168913 ----------
(declare-const self@133@00 $Ref)
(push) ; 1
(declare-const $t@134@00 $Snap)
(assert (= $t@134@00 ($Snap.combine ($Snap.first $t@134@00) ($Snap.second $t@134@00))))
(assert (not (= self@133@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_39$3$8557536310959760232 ----------
(declare-const self@135@00 $Ref)
(push) ; 1
(declare-const $t@136@00 $Snap)
(assert (= $t@136@00 ($Snap.combine ($Snap.first $t@136@00) ($Snap.second $t@136@00))))
(assert (not (= self@135@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_40$3$439034602103774817 ----------
(declare-const self@137@00 $Ref)
(push) ; 1
(declare-const $t@138@00 $Snap)
(assert (= $t@138@00 ($Snap.combine ($Snap.first $t@138@00) ($Snap.second $t@138@00))))
(assert (not (= self@137@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_41$3$17248028283071546651 ----------
(declare-const self@139@00 $Ref)
(push) ; 1
(declare-const $t@140@00 $Snap)
(assert (= $t@140@00 ($Snap.combine ($Snap.first $t@140@00) ($Snap.second $t@140@00))))
(assert (not (= self@139@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_42$3$3125871853483277348 ----------
(declare-const self@141@00 $Ref)
(push) ; 1
(declare-const $t@142@00 $Snap)
(assert (= $t@142@00 ($Snap.combine ($Snap.first $t@142@00) ($Snap.second $t@142@00))))
(assert (not (= self@141@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_43$3$12509036097101680182 ----------
(declare-const self@143@00 $Ref)
(push) ; 1
(declare-const $t@144@00 $Snap)
(assert (= $t@144@00 ($Snap.combine ($Snap.first $t@144@00) ($Snap.second $t@144@00))))
(assert (not (= self@143@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_44$5$4519369578539410762 ----------
(declare-const self@145@00 $Ref)
(push) ; 1
(declare-const $t@146@00 $Snap)
(assert (= $t@146@00 ($Snap.combine ($Snap.first $t@146@00) ($Snap.second $t@146@00))))
(assert (not (= self@145@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_45$5$2832236683162059153 ----------
(declare-const self@147@00 $Ref)
(push) ; 1
(declare-const $t@148@00 $Snap)
(assert (= $t@148@00 ($Snap.combine ($Snap.first $t@148@00) ($Snap.second $t@148@00))))
(assert (not (= self@147@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_46$3$355636700252117518 ----------
(declare-const self@149@00 $Ref)
(push) ; 1
(declare-const $t@150@00 $Snap)
(assert (= $t@150@00 ($Snap.combine ($Snap.first $t@150@00) ($Snap.second $t@150@00))))
(assert (not (= self@149@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_47$4$9974624642593201658 ----------
(declare-const self@151@00 $Ref)
(push) ; 1
(declare-const $t@152@00 $Snap)
(assert (= $t@152@00 ($Snap.combine ($Snap.first $t@152@00) ($Snap.second $t@152@00))))
(assert (not (= self@151@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_48$4$14834637957093724395 ----------
(declare-const self@153@00 $Ref)
(push) ; 1
(declare-const $t@154@00 $Snap)
(assert (= $t@154@00 ($Snap.combine ($Snap.first $t@154@00) ($Snap.second $t@154@00))))
(assert (not (= self@153@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_49$5$9982319475891260062 ----------
(declare-const self@155@00 $Ref)
(push) ; 1
(declare-const $t@156@00 $Snap)
(assert (= $t@156@00 ($Snap.combine ($Snap.first $t@156@00) ($Snap.second $t@156@00))))
(assert (not (= self@155@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_50$4$18041856802123859140 ----------
(declare-const self@157@00 $Ref)
(push) ; 1
(declare-const $t@158@00 $Snap)
(assert (= $t@158@00 ($Snap.combine ($Snap.first $t@158@00) ($Snap.second $t@158@00))))
(assert (not (= self@157@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_51$5$15456494779183064913 ----------
(declare-const self@159@00 $Ref)
(push) ; 1
(declare-const $t@160@00 $Snap)
(assert (= $t@160@00 ($Snap.combine ($Snap.first $t@160@00) ($Snap.second $t@160@00))))
(assert (not (= self@159@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_52$3$1193994613319519282 ----------
(declare-const self@161@00 $Ref)
(push) ; 1
(declare-const $t@162@00 $Snap)
(assert (= $t@162@00 ($Snap.combine ($Snap.first $t@162@00) ($Snap.second $t@162@00))))
(assert (not (= self@161@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_53$6$30781156464482553 ----------
(declare-const self@163@00 $Ref)
(push) ; 1
(declare-const $t@164@00 $Snap)
(assert (= $t@164@00 ($Snap.combine ($Snap.first $t@164@00) ($Snap.second $t@164@00))))
(assert (not (= self@163@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_54$6$4276298801844591459 ----------
(declare-const self@165@00 $Ref)
(push) ; 1
(declare-const $t@166@00 $Snap)
(assert (= $t@166@00 ($Snap.combine ($Snap.first $t@166@00) ($Snap.second $t@166@00))))
(assert (not (= self@165@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_55$5$15494941592042450304 ----------
(declare-const self@167@00 $Ref)
(push) ; 1
(declare-const $t@168@00 $Snap)
(assert (= $t@168@00 ($Snap.combine ($Snap.first $t@168@00) ($Snap.second $t@168@00))))
(assert (not (= self@167@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_56$3$4759033578015280558 ----------
(declare-const self@169@00 $Ref)
(push) ; 1
(declare-const $t@170@00 $Snap)
(assert (= $t@170@00 ($Snap.combine ($Snap.first $t@170@00) ($Snap.second $t@170@00))))
(assert (not (= self@169@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_57$5$938118686986066325 ----------
(declare-const self@171@00 $Ref)
(push) ; 1
(declare-const $t@172@00 $Snap)
(assert (= $t@172@00 ($Snap.combine ($Snap.first $t@172@00) ($Snap.second $t@172@00))))
(assert (not (= self@171@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_58$3$10522504278762424813 ----------
(declare-const self@173@00 $Ref)
(push) ; 1
(declare-const $t@174@00 $Snap)
(assert (= $t@174@00 ($Snap.combine ($Snap.first $t@174@00) ($Snap.second $t@174@00))))
(assert (not (= self@173@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_59$5$14474626718756964039 ----------
(declare-const self@175@00 $Ref)
(push) ; 1
(declare-const $t@176@00 $Snap)
(assert (= $t@176@00 ($Snap.combine ($Snap.first $t@176@00) ($Snap.second $t@176@00))))
(assert (not (= self@175@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_60$5$13665772721162474095 ----------
(declare-const self@177@00 $Ref)
(push) ; 1
(declare-const $t@178@00 $Snap)
(assert (= $t@178@00 ($Snap.combine ($Snap.first $t@178@00) ($Snap.second $t@178@00))))
(assert (not (= self@177@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_61$3$18399563375980868224 ----------
(declare-const self@179@00 $Ref)
(push) ; 1
(declare-const $t@180@00 $Snap)
(assert (= $t@180@00 ($Snap.combine ($Snap.first $t@180@00) ($Snap.second $t@180@00))))
(assert (not (= self@179@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_62$3$7429684705094907427 ----------
(declare-const self@181@00 $Ref)
(push) ; 1
(declare-const $t@182@00 $Snap)
(assert (= $t@182@00 ($Snap.combine ($Snap.first $t@182@00) ($Snap.second $t@182@00))))
(assert (not (= self@181@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_63$4$4460809016675536475 ----------
(declare-const self@183@00 $Ref)
(push) ; 1
(declare-const $t@184@00 $Snap)
(assert (= $t@184@00 ($Snap.combine ($Snap.first $t@184@00) ($Snap.second $t@184@00))))
(assert (not (= self@183@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_64$4$4068400483846200362 ----------
(declare-const self@185@00 $Ref)
(push) ; 1
(declare-const $t@186@00 $Snap)
(assert (= $t@186@00 ($Snap.combine ($Snap.first $t@186@00) ($Snap.second $t@186@00))))
(assert (not (= self@185@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_65$3$4739617661615336241 ----------
(declare-const self@187@00 $Ref)
(push) ; 1
(declare-const $t@188@00 $Snap)
(assert (= $t@188@00 ($Snap.combine ($Snap.first $t@188@00) ($Snap.second $t@188@00))))
(assert (not (= self@187@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_66$3$7395530204526009362 ----------
(declare-const self@189@00 $Ref)
(push) ; 1
(declare-const $t@190@00 $Snap)
(assert (= $t@190@00 ($Snap.combine ($Snap.first $t@190@00) ($Snap.second $t@190@00))))
(assert (not (= self@189@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_67$4$1770348032394913676 ----------
(declare-const self@191@00 $Ref)
(push) ; 1
(declare-const $t@192@00 $Snap)
(assert (= $t@192@00 ($Snap.combine ($Snap.first $t@192@00) ($Snap.second $t@192@00))))
(assert (not (= self@191@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_68$4$4490636510610601042 ----------
(declare-const self@193@00 $Ref)
(push) ; 1
(declare-const $t@194@00 $Snap)
(assert (= $t@194@00 ($Snap.combine ($Snap.first $t@194@00) ($Snap.second $t@194@00))))
(assert (not (= self@193@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_69$5$13165072392702278976 ----------
(declare-const self@195@00 $Ref)
(push) ; 1
(declare-const $t@196@00 $Snap)
(assert (= $t@196@00 ($Snap.combine ($Snap.first $t@196@00) ($Snap.second $t@196@00))))
(assert (not (= self@195@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_70$3$14555767943206871429 ----------
(declare-const self@197@00 $Ref)
(push) ; 1
(declare-const $t@198@00 $Snap)
(assert (= $t@198@00 ($Snap.combine ($Snap.first $t@198@00) ($Snap.second $t@198@00))))
(assert (not (= self@197@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_71$5$14559982558685517666 ----------
(declare-const self@199@00 $Ref)
(push) ; 1
(declare-const $t@200@00 $Snap)
(assert (= $t@200@00 ($Snap.combine ($Snap.first $t@200@00) ($Snap.second $t@200@00))))
(assert (not (= self@199@00 $Ref.null)))
(pop) ; 1
; ---------- ref$i32 ----------
(declare-const self@201@00 $Ref)
(push) ; 1
(declare-const $t@202@00 $Snap)
(assert (= $t@202@00 ($Snap.combine ($Snap.first $t@202@00) ($Snap.second $t@202@00))))
(assert (not (= self@201@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_Binary_search$$Ordering$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@203@00 $Ref)
(push) ; 1
(declare-const $t@204@00 $Snap)
(assert (= $t@204@00 ($Snap.combine ($Snap.first $t@204@00) ($Snap.second $t@204@00))))
(assert (not (= self@203@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@205@00 $Ref)
(push) ; 1
(declare-const $t@206@00 $Snap)
(assert (= $t@206@00 ($Snap.combine ($Snap.first $t@206@00) ($Snap.second $t@206@00))))
(assert (not (= self@205@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@207@00 $Ref)
(push) ; 1
(declare-const $t@208@00 $Snap)
(assert (= $t@208@00 ($Snap.combine ($Snap.first $t@208@00) ($Snap.second $t@208@00))))
(assert (not (= self@207@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$i32 ----------
(declare-const self@209@00 $Ref)
(push) ; 1
(declare-const $t@210@00 $Snap)
(assert (= $t@210@00 ($Snap.combine ($Snap.first $t@210@00) ($Snap.second $t@210@00))))
(assert (not (= self@209@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$m_Binary_search$$UsizeOption$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@211@00 $Ref)
(push) ; 1
(declare-const $t@212@00 $Snap)
(assert (= $t@212@00 ($Snap.combine ($Snap.first $t@212@00) ($Snap.second $t@212@00))))
(assert (not (= self@211@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$m_Binary_search$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@213@00 $Ref)
(push) ; 1
(declare-const $t@214@00 $Snap)
(assert (= $t@214@00 ($Snap.combine ($Snap.first $t@214@00) ($Snap.second $t@214@00))))
(assert (not (= self@213@00 $Ref.null)))
(pop) ; 1
; ---------- ref$str ----------
(declare-const self@215@00 $Ref)
(push) ; 1
(declare-const $t@216@00 $Snap)
(assert (= $t@216@00 ($Snap.combine ($Snap.first $t@216@00) ($Snap.second $t@216@00))))
(assert (not (= self@215@00 $Ref.null)))
(pop) ; 1
; ---------- ref$tuple3$ref$str$u32$u32 ----------
(declare-const self@217@00 $Ref)
(push) ; 1
(declare-const $t@218@00 $Snap)
(assert (= $t@218@00 ($Snap.combine ($Snap.first $t@218@00) ($Snap.second $t@218@00))))
(assert (not (= self@217@00 $Ref.null)))
(pop) ; 1
; ---------- ref$usize ----------
(declare-const self@219@00 $Ref)
(push) ; 1
(declare-const $t@220@00 $Snap)
(assert (= $t@220@00 ($Snap.combine ($Snap.first $t@220@00) ($Snap.second $t@220@00))))
(assert (not (= self@219@00 $Ref.null)))
(pop) ; 1
; ---------- str ----------
(declare-const self@221@00 $Ref)
; ---------- tuple0$ ----------
(declare-const self@222@00 $Ref)
(push) ; 1
(declare-const $t@223@00 $Snap)
(assert (= $t@223@00 $Snap.unit))
(pop) ; 1
; ---------- tuple2$usize$bool ----------
(declare-const self@224@00 $Ref)
(push) ; 1
(declare-const $t@225@00 $Snap)
(assert (= $t@225@00 ($Snap.combine ($Snap.first $t@225@00) ($Snap.second $t@225@00))))
(assert (not (= self@224@00 $Ref.null)))
(assert (=
  ($Snap.second $t@225@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@225@00))
    ($Snap.second ($Snap.second $t@225@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@225@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@225@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@225@00))))))
(pop) ; 1
; ---------- tuple3$ref$str$u32$u32 ----------
(declare-const self@226@00 $Ref)
(push) ; 1
(declare-const $t@227@00 $Snap)
(assert (= $t@227@00 ($Snap.combine ($Snap.first $t@227@00) ($Snap.second $t@227@00))))
(assert (not (= self@226@00 $Ref.null)))
(assert (=
  ($Snap.second $t@227@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@227@00))
    ($Snap.second ($Snap.second $t@227@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@227@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@227@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@227@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@227@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@227@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@00)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@00))))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@227@00))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@00)))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- u32 ----------
(declare-const self@228@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@229@00 $Snap)
(assert (= $t@229@00 ($Snap.combine ($Snap.first $t@229@00) ($Snap.second $t@229@00))))
(assert (not (= self@228@00 $Ref.null)))
(assert (=
  ($Snap.second $t@229@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@229@00))
    ($Snap.second ($Snap.second $t@229@00)))))
(assert (= ($Snap.first ($Snap.second $t@229@00)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@229@00))))
(assert (= ($Snap.second ($Snap.second $t@229@00)) $Snap.unit))
; [eval] self.val_int <= 4294967295
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first $t@229@00)) 4294967295))
(pop) ; 1
; ---------- u8 ----------
(declare-const self@230@00 $Ref)
(push) ; 1
(declare-const $t@231@00 $Snap)
(assert (= $t@231@00 ($Snap.combine ($Snap.first $t@231@00) ($Snap.second $t@231@00))))
(assert (not (= self@230@00 $Ref.null)))
(assert (=
  ($Snap.second $t@231@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@231@00))
    ($Snap.second ($Snap.second $t@231@00)))))
(assert (= ($Snap.first ($Snap.second $t@231@00)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@231@00))))
(assert (= ($Snap.second ($Snap.second $t@231@00)) $Snap.unit))
; [eval] self.val_int <= 255
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first $t@231@00)) 255))
(pop) ; 1
; ---------- usize ----------
(declare-const self@232@00 $Ref)
(push) ; 1
(declare-const $t@233@00 $Snap)
(assert (= $t@233@00 ($Snap.combine ($Snap.first $t@233@00) ($Snap.second $t@233@00))))
(assert (not (= self@232@00 $Ref.null)))
(assert (=
  ($Snap.second $t@233@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@233@00))
    ($Snap.second ($Snap.second $t@233@00)))))
(assert (= ($Snap.first ($Snap.second $t@233@00)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@233@00))))
(assert (= ($Snap.second ($Snap.second $t@233@00)) $Snap.unit))
; [eval] self.val_int <= 18446744073709551615
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first $t@233@00)) 18446744073709551615))
(pop) ; 1
