(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-04 00:17:34
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
(declare-sort Set<Bool> 0)
(declare-sort Set<Int> 0)
(declare-sort Set<$Snap> 0)
(declare-sort $SnapshotMirrors$ 0)
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
(declare-fun mirror$m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$__$TY$__$int$$$int$$$int$<Int> (Int Int) Int)
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
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap $Ref) Bool)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap $Ref Int) Int)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited ($Snap $Ref Int) Int)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%stateless ($Ref Int) Bool)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap $Ref Int) Bool)
(declare-fun m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap Int Int) Int)
(declare-fun m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited ($Snap Int Int) Int)
(declare-fun m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%stateless (Int Int) Bool)
(declare-fun m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap Int Int) Bool)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap $Ref Int) Int)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited ($Snap $Ref Int) Int)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%stateless ($Ref Int) Bool)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap $Ref Int) Bool)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap $Ref) Bool)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap $Ref) Bool)
(declare-fun builtin$undef_int__$TY$__$int$ ($Snap) Int)
(declare-fun builtin$undef_int__$TY$__$int$%limited ($Snap) Int)
(declare-const builtin$undef_int__$TY$__$int$%stateless Bool)
(declare-fun builtin$undef_int__$TY$__$int$%precondition ($Snap) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$ ($Snap) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%limited ($Snap) Bool)
(declare-const builtin$unreach_bool__$TY$__$bool$%stateless Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%precondition ($Snap) Bool)
(declare-fun m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ ($Snap $Ref Int Int Int) Int)
(declare-fun m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%limited ($Snap $Ref Int Int Int) Int)
(declare-fun m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%stateless ($Ref Int Int Int) Bool)
(declare-fun m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%precondition ($Snap $Ref Int Int Int) Bool)
(declare-fun builtin$unreach_int__$TY$__$int$ ($Snap) Int)
(declare-fun builtin$unreach_int__$TY$__$int$%limited ($Snap) Int)
(declare-const builtin$unreach_int__$TY$__$int$%stateless Bool)
(declare-fun builtin$unreach_int__$TY$__$int$%precondition ($Snap) Bool)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$ ($Snap $Ref Int Int) Int)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%limited ($Snap $Ref Int Int) Int)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%stateless ($Ref Int Int) Bool)
(declare-fun m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%precondition ($Snap $Ref Int Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun DeadBorrowToken$%trigger ($Snap Int) Bool)
(declare-fun bool%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_100$4$2195313935860504854%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_101$4$5862168304557534146%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_102$4$7055538125904070218%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_103$3$5908759128992239862%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_104$4$655325752977662787%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_105$5$10720279634398355214%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_106$5$5785012495171046632%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_107$7$3462205868504671540%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_108$3$3804200177793084958%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_109$3$14226160748629873244%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_110$3$16447901152793631719%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_13$3$7176179547503835236%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_14$3$7176179547503835236%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_15$4$3019757418362490378%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_16$3$16447901152793631719%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_17$3$7176179547503835236%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_18$4$3019757418362490378%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_19$3$16447901152793631719%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_20$3$7176179547503835236%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_21$4$3019757418362490378%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_22$5$6510375280720503266%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_23$5$17696661897062230695%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_28$4$1379368399982250115%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_29$4$11125728586529045342%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_30$4$11519300149002759943%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_31$5$16247953084744144268%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_32$6$4200987767610412049%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_33$3$7176179547503835236%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_34$4$12241145444245808880%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_35$3$16447901152793631719%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_36$4$9545962858690430688%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_37$3$7176179547503835236%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_38$4$12241145444245808880%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_39$3$16447901152793631719%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_40$4$9545962858690430688%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_41$6$1713151830142718656%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_42$3$7176179547503835236%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_43$4$442424761796586614%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_44$3$16447901152793631719%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_45$4$10492355745979528584%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_46$2$2892970999346878380%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_47$3$11535950475478036422%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_48$3$6113093944180928149%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_49$6$2569152856942703315%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_50$5$6372327013426961719%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_51$7$14066288598670814946%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_52$5$3865647478775746238%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_53$3$7176179547503835236%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_54$4$3019757418362490378%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_55$3$16447901152793631719%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_56$4$11667997092962627586%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_57$2$9630802733628619285%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_58$4$14990714798109641575%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_59$4$14039387590360964198%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_60$4$13611395894795617782%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_61$3$17019613836727644117%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_62$4$2684447020299436106%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_63$3$4320649005197402516%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_64$3$4090206497854741622%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_65$3$4815615749651602420%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_66$5$17113822432526561541%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_67$5$11036083759241935507%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_68$3$4206495023824529454%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_69$4$15663320775239368138%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_70$4$15880083695680546704%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_71$6$16168149984730846501%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_72$6$11789420810021538926%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_73$7$11191460349121278873%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_74$2$9630802733628619285%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_75$4$5451673049719120757%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_76$4$1653348676580717959%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_77$4$6160479198151006000%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_78$3$16190996979099018254%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_79$4$10404347298705202397%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_80$3$17205348727208653730%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_81$4$12662612786647554877%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_82$3$17304772845091837241%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_83$3$4574539313362100690%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_84$5$6434387996512040629%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_85$5$9743516861100899679%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_86$3$10646314070471925050%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_87$5$774418865505664056%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_88$5$14157422564092725854%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_89$6$16642461879638198135%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_90$6$12796450423676955260%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_91$7$4558122606232013319%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_92$7$17160947742008149928%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_93$4$8785311375718005381%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_94$7$4559234867040711331%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_95$3$7300043387549119486%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_96$4$4813799757810956159%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_97$4$13420012870477854736%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_98$2$9630802733628619285%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_99$3$2733645309818104258%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$usize$_end_$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$m_knapsack$$Item$opensqu$0$closesqu$$_beg_$_end_$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$usize$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$usize$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$m_knapsack$$Item$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$usize$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$usize$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$m_knapsack$$Item$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$usize$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_knapsack$$Item$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_knapsack$$ItemIndices$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_100$4$2195313935860504854%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_101$4$5862168304557534146%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_102$4$7055538125904070218%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_103$3$5908759128992239862%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_104$4$655325752977662787%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_105$5$10720279634398355214%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_106$5$5785012495171046632%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_107$7$3462205868504671540%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_108$3$3804200177793084958%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_109$3$14226160748629873244%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_110$3$16447901152793631719%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_13$3$7176179547503835236%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_14$3$7176179547503835236%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_15$4$3019757418362490378%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_16$3$16447901152793631719%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_17$3$7176179547503835236%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_18$4$3019757418362490378%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_19$3$16447901152793631719%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_20$3$7176179547503835236%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_21$4$3019757418362490378%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_22$5$6510375280720503266%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_23$5$17696661897062230695%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_28$4$1379368399982250115%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_29$4$11125728586529045342%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_30$4$11519300149002759943%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_31$5$16247953084744144268%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_32$6$4200987767610412049%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_33$3$7176179547503835236%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_34$4$12241145444245808880%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_35$3$16447901152793631719%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_36$4$9545962858690430688%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_37$3$7176179547503835236%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_38$4$12241145444245808880%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_39$3$16447901152793631719%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_40$4$9545962858690430688%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_41$6$1713151830142718656%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_42$3$7176179547503835236%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_43$4$442424761796586614%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_44$3$16447901152793631719%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_45$4$10492355745979528584%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_46$2$2892970999346878380%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_47$3$11535950475478036422%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_48$3$6113093944180928149%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_49$6$2569152856942703315%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_50$5$6372327013426961719%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_51$7$14066288598670814946%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_52$5$3865647478775746238%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_53$3$7176179547503835236%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_54$4$3019757418362490378%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_55$3$16447901152793631719%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_56$4$11667997092962627586%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_58$4$14990714798109641575%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_59$4$14039387590360964198%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_60$4$13611395894795617782%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_61$3$17019613836727644117%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_62$4$2684447020299436106%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_63$3$4320649005197402516%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_64$3$4090206497854741622%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_65$3$4815615749651602420%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_66$5$17113822432526561541%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_67$5$11036083759241935507%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_68$3$4206495023824529454%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_69$4$15663320775239368138%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_70$4$15880083695680546704%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_71$6$16168149984730846501%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_72$6$11789420810021538926%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_73$7$11191460349121278873%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_75$4$5451673049719120757%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_76$4$1653348676580717959%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_77$4$6160479198151006000%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_78$3$16190996979099018254%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_79$4$10404347298705202397%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_80$3$17205348727208653730%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_81$4$12662612786647554877%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_82$3$17304772845091837241%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_83$3$4574539313362100690%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_84$5$6434387996512040629%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_85$5$9743516861100899679%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_86$3$10646314070471925050%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_87$5$774418865505664056%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_88$5$14157422564092725854%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_89$6$16642461879638198135%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_90$6$12796450423676955260%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_91$7$4558122606232013319%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_92$7$17160947742008149928%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_93$4$8785311375718005381%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_94$7$4559234867040711331%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_95$3$7300043387549119486%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_96$4$4813799757810956159%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_97$4$13420012870477854736%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_99$3$2733645309818104258%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_knapsack$$Item$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_knapsack$$ItemIndices$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$m_knapsack$$Item$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$usize%trigger ($Snap $Ref) Bool)
(declare-fun ref$tuple2$usize$usize%trigger ($Snap $Ref) Bool)
(declare-fun ref$usize%trigger ($Snap $Ref) Bool)
(declare-fun tuple0$%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$usize$bool%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$usize$usize%trigger ($Snap $Ref) Bool)
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
(declare-const $t@28@00 $Snap)
(assert (= $t@28@00 ($Snap.combine ($Snap.first $t@28@00) ($Snap.second $t@28@00))))
(assert (= ($Snap.first $t@28@00) $Snap.unit))
; [eval] none < result
(assert (< $Perm.No result@0@00))
(assert (= ($Snap.second $t@28@00) $Snap.unit))
; [eval] result < write
(assert (< result@0@00 $Perm.Write))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (read$%limited s@$) (read$ s@$))
  :pattern ((read$ s@$))
  :qid |quant-u-47|)))
(assert (forall ((s@$ $Snap)) (!
  (as read$%stateless  Bool)
  :pattern ((read$%limited s@$))
  :qid |quant-u-48|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) (=>
    (read$%precondition s@$)
    (and (< $Perm.No result@0@00) (< result@0@00 $Perm.Write))))
  :pattern ((read$%limited s@$))
  :qid |quant-u-71|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-72|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-73|)))
; ---------- FUNCTION m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$----------
(declare-fun _pure_1@1@00 () $Ref)
(declare-fun result@2@00 () Int)
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
(declare-const $t@29@00 $Snap)
(assert (= $t@29@00 ($Snap.combine ($Snap.first $t@29@00) ($Snap.second $t@29@00))))
(assert (= ($Snap.first $t@29@00) $Snap.unit))
; [eval] result >= 0
(assert (>= result@2@00 0))
(assert (= ($Snap.second $t@29@00) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@2@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (=
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00)
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@1@00))
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@1@00))
  :qid |quant-u-49|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless _pure_1@1@00)
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))
  :qid |quant-u-50|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (let ((result@2@00 (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))) (=>
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@1@00)
    (and (>= result@2@00 0) (<= 0 result@2@00))))
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))
  :qid |quant-u-74|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (let ((result@2@00 (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))) true)
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))
  :qid |quant-u-75|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (let ((result@2@00 (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))) true)
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))
  :qid |quant-u-76|)))
; ---------- FUNCTION m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$----------
(declare-fun _pure_1@3@00 () $Ref)
(declare-fun _pure_2@4@00 () Int)
(declare-fun result@5@00 () Int)
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
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
; [eval] 0 <= _pure_2
(assert (<= 0 _pure_2@4@00))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] _pure_2 < m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
; [eval] m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
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
(assert (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@3@00))
(pop) ; 2
; Joined path conditions
(assert (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@3@00))
(assert (<
  _pure_2@4@00
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@3@00)))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] 0 <= _pure_2
(declare-const $t@30@00 $Snap)
(assert (= $t@30@00 ($Snap.combine ($Snap.first $t@30@00) ($Snap.second $t@30@00))))
(assert (= ($Snap.first $t@30@00) $Snap.unit))
; [eval] result >= 0
(assert (>= result@5@00 0))
(assert (= ($Snap.second $t@30@00) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@5@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@3@00 $Ref) (_pure_2@4@00 Int)) (!
  (=
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00)
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ s@$ _pure_1@3@00 _pure_2@4@00))
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ s@$ _pure_1@3@00 _pure_2@4@00))
  :qid |quant-u-51|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 $Ref) (_pure_2@4@00 Int)) (!
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%stateless _pure_1@3@00 _pure_2@4@00)
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))
  :qid |quant-u-52|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 $Ref) (_pure_2@4@00 Int)) (!
  (let ((result@5@00 (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))) (=>
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition s@$ _pure_1@3@00 _pure_2@4@00)
    (and (>= result@5@00 0) (<= 0 result@5@00))))
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))
  :qid |quant-u-77|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 $Ref) (_pure_2@4@00 Int)) (!
  (let ((result@5@00 (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))) true)
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))
  :qid |quant-u-78|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 $Ref) (_pure_2@4@00 Int)) (!
  (let ((result@5@00 (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))) true)
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))
  :qid |quant-u-79|)))
; ---------- FUNCTION m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$----------
(declare-fun _pure_1@6@00 () Int)
(declare-fun _pure_2@7@00 () Int)
(declare-fun result@8@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] 0 <= _pure_1
(assert (<= 0 _pure_1@6@00))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] 0 <= _pure_2
(assert (<= 0 _pure_2@7@00))
(declare-const $t@31@00 $Snap)
(assert (= $t@31@00 ($Snap.combine ($Snap.first $t@31@00) ($Snap.second $t@31@00))))
(assert (= ($Snap.first $t@31@00) $Snap.unit))
(assert (=
  ($Snap.second $t@31@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@31@00))
    ($Snap.second ($Snap.second $t@31@00)))))
(assert (= ($Snap.first ($Snap.second $t@31@00)) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@8@00))
(assert (= ($Snap.second ($Snap.second $t@31@00)) $Snap.unit))
; [eval] result == mirror$m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$__$TY$__$int$$$int$$$int$(_pure_1, _pure_2)
; [eval] mirror$m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$__$TY$__$int$$$int$$$int$(_pure_1, _pure_2)
(assert (=
  result@8@00
  (mirror$m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$__$TY$__$int$$$int$$$int$<Int> _pure_1@6@00 _pure_2@7@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@6@00 Int) (_pure_2@7@00 Int)) (!
  (=
    (m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited s@$ _pure_1@6@00 _pure_2@7@00)
    (m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ s@$ _pure_1@6@00 _pure_2@7@00))
  :pattern ((m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ s@$ _pure_1@6@00 _pure_2@7@00))
  :qid |quant-u-53|)))
(assert (forall ((s@$ $Snap) (_pure_1@6@00 Int) (_pure_2@7@00 Int)) (!
  (m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%stateless _pure_1@6@00 _pure_2@7@00)
  :pattern ((m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited s@$ _pure_1@6@00 _pure_2@7@00))
  :qid |quant-u-54|)))
(assert (forall ((s@$ $Snap) (_pure_1@6@00 Int) (_pure_2@7@00 Int)) (!
  (let ((result@8@00 (m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited s@$ _pure_1@6@00 _pure_2@7@00))) (=>
    (m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition s@$ _pure_1@6@00 _pure_2@7@00)
    (and
      (<= 0 result@8@00)
      (=
        result@8@00
        (mirror$m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$__$TY$__$int$$$int$$$int$<Int> _pure_1@6@00 _pure_2@7@00)))))
  :pattern ((m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited s@$ _pure_1@6@00 _pure_2@7@00))
  :qid |quant-u-80|)))
(assert (forall ((s@$ $Snap) (_pure_1@6@00 Int) (_pure_2@7@00 Int)) (!
  (let ((result@8@00 (m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited s@$ _pure_1@6@00 _pure_2@7@00))) true)
  :pattern ((m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited s@$ _pure_1@6@00 _pure_2@7@00))
  :qid |quant-u-81|)))
(assert (forall ((s@$ $Snap) (_pure_1@6@00 Int) (_pure_2@7@00 Int)) (!
  (let ((result@8@00 (m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited s@$ _pure_1@6@00 _pure_2@7@00))) true)
  :pattern ((m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited s@$ _pure_1@6@00 _pure_2@7@00))
  :qid |quant-u-82|)))
(assert (forall ((s@$ $Snap) (_pure_1@6@00 Int) (_pure_2@7@00 Int)) (!
  (let ((result@8@00 (m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited s@$ _pure_1@6@00 _pure_2@7@00))) true)
  :pattern ((m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%limited s@$ _pure_1@6@00 _pure_2@7@00))
  :qid |quant-u-83|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
(assert (<= 0 _pure_1@6@00))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
(assert (<= 0 _pure_2@7@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (!(_pure_1 < _pure_2) ? _pure_1 : _pure_2)
; [eval] !(_pure_1 < _pure_2)
; [eval] _pure_1 < _pure_2
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (< _pure_1@6@00 _pure_2@7@00)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< _pure_1@6@00 _pure_2@7@00))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | !(_pure_1@6@00 < _pure_2@7@00) | live]
; [else-branch: 0 | _pure_1@6@00 < _pure_2@7@00 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | !(_pure_1@6@00 < _pure_2@7@00)]
(assert (not (< _pure_1@6@00 _pure_2@7@00)))
(pop) ; 3
(push) ; 3
; [else-branch: 0 | _pure_1@6@00 < _pure_2@7@00]
(assert (< _pure_1@6@00 _pure_2@7@00))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (< _pure_1@6@00 _pure_2@7@00) (not (< _pure_1@6@00 _pure_2@7@00))))
(assert (=
  result@8@00
  (ite (not (< _pure_1@6@00 _pure_2@7@00)) _pure_1@6@00 _pure_2@7@00)))
; [eval] 0 <= result
(push) ; 2
(assert (not (<= 0 result@8@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 result@8@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@6@00 Int) (_pure_2@7@00 Int)) (!
  (=>
    (m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition s@$ _pure_1@6@00 _pure_2@7@00)
    (=
      (m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ s@$ _pure_1@6@00 _pure_2@7@00)
      (ite (not (< _pure_1@6@00 _pure_2@7@00)) _pure_1@6@00 _pure_2@7@00)))
  :pattern ((m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ s@$ _pure_1@6@00 _pure_2@7@00))
  :qid |quant-u-84|)))
(assert (forall ((s@$ $Snap) (_pure_1@6@00 Int) (_pure_2@7@00 Int)) (!
  true
  :pattern ((m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ s@$ _pure_1@6@00 _pure_2@7@00))
  :qid |quant-u-85|)))
; ---------- FUNCTION m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$----------
(declare-fun _pure_1@9@00 () $Ref)
(declare-fun _pure_2@10@00 () Int)
(declare-fun result@11@00 () Int)
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
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
; [eval] 0 <= _pure_2
(assert (<= 0 _pure_2@10@00))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] _pure_2 < m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
; [eval] m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
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
(assert (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@9@00))
(pop) ; 2
; Joined path conditions
(assert (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@9@00))
(assert (<
  _pure_2@10@00
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@9@00)))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] 0 <= _pure_2
(declare-const $t@32@00 $Snap)
(assert (= $t@32@00 ($Snap.combine ($Snap.first $t@32@00) ($Snap.second $t@32@00))))
(assert (= ($Snap.first $t@32@00) $Snap.unit))
; [eval] result > 0
(assert (> result@11@00 0))
(assert (= ($Snap.second $t@32@00) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@11@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@9@00 $Ref) (_pure_2@10@00 Int)) (!
  (=
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@9@00 _pure_2@10@00)
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ s@$ _pure_1@9@00 _pure_2@10@00))
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ s@$ _pure_1@9@00 _pure_2@10@00))
  :qid |quant-u-55|)))
(assert (forall ((s@$ $Snap) (_pure_1@9@00 $Ref) (_pure_2@10@00 Int)) (!
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%stateless _pure_1@9@00 _pure_2@10@00)
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@9@00 _pure_2@10@00))
  :qid |quant-u-56|)))
(assert (forall ((s@$ $Snap) (_pure_1@9@00 $Ref) (_pure_2@10@00 Int)) (!
  (let ((result@11@00 (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@9@00 _pure_2@10@00))) (=>
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition s@$ _pure_1@9@00 _pure_2@10@00)
    (and (> result@11@00 0) (<= 0 result@11@00))))
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@9@00 _pure_2@10@00))
  :qid |quant-u-86|)))
(assert (forall ((s@$ $Snap) (_pure_1@9@00 $Ref) (_pure_2@10@00 Int)) (!
  (let ((result@11@00 (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@9@00 _pure_2@10@00))) true)
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@9@00 _pure_2@10@00))
  :qid |quant-u-87|)))
(assert (forall ((s@$ $Snap) (_pure_1@9@00 $Ref) (_pure_2@10@00 Int)) (!
  (let ((result@11@00 (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@9@00 _pure_2@10@00))) true)
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@9@00 _pure_2@10@00))
  :qid |quant-u-88|)))
; ---------- FUNCTION m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$----------
(declare-fun _pure_1@12@00 () $Ref)
(declare-fun result@13@00 () Int)
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
(declare-const $t@33@00 $Snap)
(assert (= $t@33@00 ($Snap.combine ($Snap.first $t@33@00) ($Snap.second $t@33@00))))
(assert (= ($Snap.first $t@33@00) $Snap.unit))
(assert (= ($Snap.second $t@33@00) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@13@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@12@00 $Ref)) (!
  (=
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@12@00)
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@12@00))
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@12@00))
  :qid |quant-u-57|)))
(assert (forall ((s@$ $Snap) (_pure_1@12@00 $Ref)) (!
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless _pure_1@12@00)
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@12@00))
  :qid |quant-u-58|)))
(assert (forall ((s@$ $Snap) (_pure_1@12@00 $Ref)) (!
  (let ((result@13@00 (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@12@00))) (=>
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@12@00)
    (<= 0 result@13@00)))
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@12@00))
  :qid |quant-u-89|)))
(assert (forall ((s@$ $Snap) (_pure_1@12@00 $Ref)) (!
  (let ((result@13@00 (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@12@00))) true)
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@12@00))
  :qid |quant-u-90|)))
(assert (forall ((s@$ $Snap) (_pure_1@12@00 $Ref)) (!
  (let ((result@13@00 (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@12@00))) true)
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@12@00))
  :qid |quant-u-91|)))
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
; [eval] (unfolding acc(m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_(_pure_1), read$()) in (unfolding acc(usize(_pure_1.f$_ghost_weight_len), read$()) in _pure_1.f$_ghost_weight_len.val_int))
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
(assert (m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@12@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@12@00 $Ref.null))))
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
; [eval] (unfolding acc(usize(_pure_1.f$_ghost_weight_len), read$()) in _pure_1.f$_ghost_weight_len.val_int)
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
(assert (usize%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))))
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
  $Snap.unit))
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
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
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
  (usize%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))))
  (=
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
    ($Snap.combine
      ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))))
        $Ref.null)))
  (=
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
    $Snap.unit)
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
(pop) ; 2
; Joined path conditions
(assert (and
  (m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@12@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@12@00 $Ref.null)))
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
  (usize%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))))
  (=
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
    ($Snap.combine
      ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))))
        $Ref.null)))
  (=
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
    $Snap.unit)
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
(assert (=
  result@13@00
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
; [eval] 0 <= result
(set-option :timeout 0)
(push) ; 2
(assert (not (<= 0 result@13@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 result@13@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@12@00 $Ref)) (!
  (=>
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@12@00)
    (=
      (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@12@00)
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@12@00))
  :qid |quant-u-92|)))
(assert (forall ((s@$ $Snap) (_pure_1@12@00 $Ref)) (!
  true
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@12@00))
  :qid |quant-u-93|)))
; ---------- FUNCTION m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$----------
(declare-fun _pure_1@14@00 () $Ref)
(declare-fun result@15@00 () Int)
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
(declare-const $t@34@00 $Snap)
(assert (= $t@34@00 ($Snap.combine ($Snap.first $t@34@00) ($Snap.second $t@34@00))))
(assert (= ($Snap.first $t@34@00) $Snap.unit))
(assert (= ($Snap.second $t@34@00) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@15@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@14@00 $Ref)) (!
  (=
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@14@00)
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@14@00))
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@14@00))
  :qid |quant-u-59|)))
(assert (forall ((s@$ $Snap) (_pure_1@14@00 $Ref)) (!
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless _pure_1@14@00)
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@14@00))
  :qid |quant-u-60|)))
(assert (forall ((s@$ $Snap) (_pure_1@14@00 $Ref)) (!
  (let ((result@15@00 (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@14@00))) (=>
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@14@00)
    (<= 0 result@15@00)))
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@14@00))
  :qid |quant-u-94|)))
(assert (forall ((s@$ $Snap) (_pure_1@14@00 $Ref)) (!
  (let ((result@15@00 (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@14@00))) true)
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@14@00))
  :qid |quant-u-95|)))
(assert (forall ((s@$ $Snap) (_pure_1@14@00 $Ref)) (!
  (let ((result@15@00 (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@14@00))) true)
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@14@00))
  :qid |quant-u-96|)))
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
; [eval] (unfolding acc(m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_(_pure_1), read$()) in (unfolding acc(usize(_pure_1.f$_ghost_item_len), read$()) in _pure_1.f$_ghost_item_len.val_int))
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
(assert (m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@14@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@14@00 $Ref.null))))
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
; [eval] (unfolding acc(usize(_pure_1.f$_ghost_item_len), read$()) in _pure_1.f$_ghost_item_len.val_int)
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
(assert (usize%trigger ($Snap.first ($Snap.second ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.first s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.first s@$))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.first s@$)))))))
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) $Ref.null))))
(assert (= ($Snap.second ($Snap.first ($Snap.second ($Snap.first s@$)))) $Snap.unit))
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
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.first s@$)))))))
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
  (usize%trigger ($Snap.first ($Snap.second ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))))
  (=
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.first ($Snap.second ($Snap.first s@$))))
      ($Snap.second ($Snap.first ($Snap.second ($Snap.first s@$))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) $Ref.null)))
  (= ($Snap.second ($Snap.first ($Snap.second ($Snap.first s@$)))) $Snap.unit)
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.first s@$))))))))
(pop) ; 2
; Joined path conditions
(assert (and
  (m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@14@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@14@00 $Ref.null)))
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
  (usize%trigger ($Snap.first ($Snap.second ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))))
  (=
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.first ($Snap.second ($Snap.first s@$))))
      ($Snap.second ($Snap.first ($Snap.second ($Snap.first s@$))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) $Ref.null)))
  (= ($Snap.second ($Snap.first ($Snap.second ($Snap.first s@$)))) $Snap.unit)
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.first s@$))))))))
(assert (=
  result@15@00
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.first s@$)))))))
; [eval] 0 <= result
(set-option :timeout 0)
(push) ; 2
(assert (not (<= 0 result@15@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 result@15@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@14@00 $Ref)) (!
  (=>
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@14@00)
    (=
      (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@14@00)
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.first s@$)))))))
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@14@00))
  :qid |quant-u-97|)))
(assert (forall ((s@$ $Snap) (_pure_1@14@00 $Ref)) (!
  true
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@14@00))
  :qid |quant-u-98|)))
; ---------- FUNCTION builtin$undef_int__$TY$__$int$----------
(declare-fun result@16@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=
    (builtin$undef_int__$TY$__$int$%limited s@$)
    (builtin$undef_int__$TY$__$int$ s@$))
  :pattern ((builtin$undef_int__$TY$__$int$ s@$))
  :qid |quant-u-61|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$undef_int__$TY$__$int$%stateless  Bool)
  :pattern ((builtin$undef_int__$TY$__$int$%limited s@$))
  :qid |quant-u-62|)))
; ---------- FUNCTION builtin$unreach_bool__$TY$__$bool$----------
(declare-fun result@17@00 () Bool)
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
  :qid |quant-u-63|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$unreach_bool__$TY$__$bool$%stateless  Bool)
  :pattern ((builtin$unreach_bool__$TY$__$bool$%limited s@$))
  :qid |quant-u-64|)))
; ---------- FUNCTION m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$----------
(declare-fun _pure_1@18@00 () $Ref)
(declare-fun _pure_2@19@00 () Int)
(declare-fun _pure_3@20@00 () Int)
(declare-fun _pure_4@21@00 () Int)
(declare-fun result@22@00 () Int)
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
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
; [eval] 0 <= _pure_2
(assert (<= 0 _pure_2@19@00))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] _pure_2 <= m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
; [eval] m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
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
(assert (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@18@00))
(pop) ; 2
; Joined path conditions
(assert (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@18@00))
(assert (<=
  _pure_2@19@00
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@18@00)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))) $Snap.unit))
; [eval] 0 <= _pure_3
(assert (<= 0 _pure_3@20@00))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))
  $Snap.unit))
; [eval] _pure_3 <= _pure_4
(assert (<= _pure_3@20@00 _pure_4@21@00))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))
  $Snap.unit))
; [eval] 0 <= _pure_2
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
  $Snap.unit))
; [eval] 0 <= _pure_3
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
  $Snap.unit))
; [eval] 0 <= _pure_4
(assert (<= 0 _pure_4@21@00))
(declare-const $t@35@00 $Snap)
(assert (= $t@35@00 ($Snap.combine ($Snap.first $t@35@00) ($Snap.second $t@35@00))))
(assert (= ($Snap.first $t@35@00) $Snap.unit))
(assert (= ($Snap.second $t@35@00) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@22@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@18@00 $Ref) (_pure_2@19@00 Int) (_pure_3@20@00 Int) (_pure_4@21@00 Int)) (!
  (=
    (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%limited s@$ _pure_1@18@00 _pure_2@19@00 _pure_3@20@00 _pure_4@21@00)
    (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ s@$ _pure_1@18@00 _pure_2@19@00 _pure_3@20@00 _pure_4@21@00))
  :pattern ((m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ s@$ _pure_1@18@00 _pure_2@19@00 _pure_3@20@00 _pure_4@21@00))
  :qid |quant-u-65|)))
(assert (forall ((s@$ $Snap) (_pure_1@18@00 $Ref) (_pure_2@19@00 Int) (_pure_3@20@00 Int) (_pure_4@21@00 Int)) (!
  (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%stateless _pure_1@18@00 _pure_2@19@00 _pure_3@20@00 _pure_4@21@00)
  :pattern ((m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%limited s@$ _pure_1@18@00 _pure_2@19@00 _pure_3@20@00 _pure_4@21@00))
  :qid |quant-u-66|)))
(assert (forall ((s@$ $Snap) (_pure_1@18@00 $Ref) (_pure_2@19@00 Int) (_pure_3@20@00 Int) (_pure_4@21@00 Int)) (!
  (let ((result@22@00 (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%limited s@$ _pure_1@18@00 _pure_2@19@00 _pure_3@20@00 _pure_4@21@00))) (=>
    (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%precondition s@$ _pure_1@18@00 _pure_2@19@00 _pure_3@20@00 _pure_4@21@00)
    (<= 0 result@22@00)))
  :pattern ((m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%limited s@$ _pure_1@18@00 _pure_2@19@00 _pure_3@20@00 _pure_4@21@00))
  :qid |quant-u-99|)))
(assert (forall ((s@$ $Snap) (_pure_1@18@00 $Ref) (_pure_2@19@00 Int) (_pure_3@20@00 Int) (_pure_4@21@00 Int)) (!
  (let ((result@22@00 (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%limited s@$ _pure_1@18@00 _pure_2@19@00 _pure_3@20@00 _pure_4@21@00))) true)
  :pattern ((m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%limited s@$ _pure_1@18@00 _pure_2@19@00 _pure_3@20@00 _pure_4@21@00))
  :qid |quant-u-100|)))
(assert (forall ((s@$ $Snap) (_pure_1@18@00 $Ref) (_pure_2@19@00 Int) (_pure_3@20@00 Int) (_pure_4@21@00 Int)) (!
  (let ((result@22@00 (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%limited s@$ _pure_1@18@00 _pure_2@19@00 _pure_3@20@00 _pure_4@21@00))) true)
  :pattern ((m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%limited s@$ _pure_1@18@00 _pure_2@19@00 _pure_3@20@00 _pure_4@21@00))
  :qid |quant-u-101|)))
; ----- Verification of function body and postcondition -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
(assert (<= 0 _pure_2@19@00))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
(assert (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@18@00))
(assert (<=
  _pure_2@19@00
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@18@00)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))) $Snap.unit))
(assert (<= 0 _pure_3@20@00))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))
  $Snap.unit))
(assert (<= _pure_3@20@00 _pure_4@21@00))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
  $Snap.unit))
(assert (<= 0 _pure_4@21@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (_pure_2 == 0 ? 0 : (!(m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1, _pure_2 - 1) > _pure_3) ? m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$(_pure_1, _pure_2 - 1, _pure_3, _pure_4), m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$(_pure_1, _pure_2 - 1, _pure_3 - m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1, _pure_2 - 1), _pure_4) + m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1, _pure_2 - 1)) : m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$(_pure_1, _pure_2 - 1, _pure_3, _pure_4)))
; [eval] _pure_2 == 0
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= _pure_2@19@00 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _pure_2@19@00 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | _pure_2@19@00 == 0 | live]
; [else-branch: 1 | _pure_2@19@00 != 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | _pure_2@19@00 == 0]
(assert (= _pure_2@19@00 0))
(pop) ; 3
(push) ; 3
; [else-branch: 1 | _pure_2@19@00 != 0]
(assert (not (= _pure_2@19@00 0)))
; [eval] (!(m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1, _pure_2 - 1) > _pure_3) ? m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$(_pure_1, _pure_2 - 1, _pure_3, _pure_4), m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$(_pure_1, _pure_2 - 1, _pure_3 - m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1, _pure_2 - 1), _pure_4) + m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1, _pure_2 - 1)) : m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$(_pure_1, _pure_2 - 1, _pure_3, _pure_4))
; [eval] !(m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1, _pure_2 - 1) > _pure_3)
; [eval] m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1, _pure_2 - 1) > _pure_3
; [eval] m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1, _pure_2 - 1)
; [eval] _pure_2 - 1
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
; [eval] 0 <= _pure_2
(set-option :timeout 0)
(push) ; 5
(assert (not (<= 0 (- _pure_2@19@00 1))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- _pure_2@19@00 1)))
; [eval] _pure_2 < m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
; [eval] m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
(push) ; 5
; [eval] read$()
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
; Joined path conditions
(set-option :timeout 0)
(push) ; 5
(assert (not (<
  (- _pure_2@19@00 1)
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@18@00))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<
  (- _pure_2@19@00 1)
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@18@00)))
; [eval] 0 <= _pure_2
(assert (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
  _pure_2@19@00
  1)))
(pop) ; 4
; Joined path conditions
(assert (and
  (<= 0 (- _pure_2@19@00 1))
  (<
    (- _pure_2@19@00 1)
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
      ($Snap.first s@$)
      $Snap.unit) _pure_1@18@00))
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
    ($Snap.first s@$)
    ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
    _pure_2@19@00
    1))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (>
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
    ($Snap.first s@$)
    ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
    _pure_2@19@00
    1))
  _pure_3@20@00)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (>
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
      _pure_2@19@00
      1))
    _pure_3@20@00))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | !(m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$((First:(s@$), (_, (_, _))), _pure_1@18@00, _pure_2@19@00 - 1) > _pure_3@20@00) | live]
; [else-branch: 2 | m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$((First:(s@$), (_, (_, _))), _pure_1@18@00, _pure_2@19@00 - 1) > _pure_3@20@00 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 2 | !(m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$((First:(s@$), (_, (_, _))), _pure_1@18@00, _pure_2@19@00 - 1) > _pure_3@20@00)]
(assert (not
  (>
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
      _pure_2@19@00
      1))
    _pure_3@20@00)))
; [eval] m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$(m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$(_pure_1, _pure_2 - 1, _pure_3, _pure_4), m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$(_pure_1, _pure_2 - 1, _pure_3 - m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1, _pure_2 - 1), _pure_4) + m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1, _pure_2 - 1))
; [eval] m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$(_pure_1, _pure_2 - 1, _pure_3, _pure_4)
; [eval] _pure_2 - 1
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
; [eval] 0 <= _pure_2
; [eval] _pure_2 <= m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
; [eval] m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
(set-option :timeout 0)
(push) ; 7
; [eval] read$()
(push) ; 8
(pop) ; 8
; Joined path conditions
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
(pop) ; 7
; Joined path conditions
(set-option :timeout 0)
(push) ; 7
(assert (not (<=
  (- _pure_2@19@00 1)
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@18@00))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<=
  (- _pure_2@19@00 1)
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@18@00)))
; [eval] 0 <= _pure_3
; [eval] _pure_3 <= _pure_4
; [eval] 0 <= _pure_2
; [eval] 0 <= _pure_3
; [eval] 0 <= _pure_4
(assert (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
  _pure_2@19@00
  1) _pure_3@20@00 _pure_4@21@00))
(pop) ; 6
; Joined path conditions
(assert (and
  (<=
    (- _pure_2@19@00 1)
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
      ($Snap.first s@$)
      $Snap.unit) _pure_1@18@00))
  (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%precondition ($Snap.combine
    ($Snap.first s@$)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
    _pure_2@19@00
    1) _pure_3@20@00 _pure_4@21@00)))
; [eval] m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$(_pure_1, _pure_2 - 1, _pure_3 - m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1, _pure_2 - 1), _pure_4) + m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1, _pure_2 - 1)
; [eval] m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$(_pure_1, _pure_2 - 1, _pure_3 - m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1, _pure_2 - 1), _pure_4)
; [eval] _pure_2 - 1
; [eval] _pure_3 - m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1, _pure_2 - 1)
; [eval] m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1, _pure_2 - 1)
; [eval] _pure_2 - 1
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
; [eval] 0 <= _pure_2
; [eval] _pure_2 < m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
; [eval] m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
(set-option :timeout 0)
(push) ; 7
; [eval] read$()
(push) ; 8
(pop) ; 8
; Joined path conditions
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
(pop) ; 7
; Joined path conditions
; [eval] 0 <= _pure_2
(pop) ; 6
; Joined path conditions
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
; [eval] 0 <= _pure_2
; [eval] _pure_2 <= m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
; [eval] m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
(set-option :timeout 0)
(push) ; 7
; [eval] read$()
(push) ; 8
(pop) ; 8
; Joined path conditions
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
(pop) ; 7
; Joined path conditions
; [eval] 0 <= _pure_3
(set-option :timeout 0)
(push) ; 7
(assert (not (<=
  0
  (-
    _pure_3@20@00
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
      _pure_2@19@00
      1))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<=
  0
  (-
    _pure_3@20@00
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
      _pure_2@19@00
      1)))))
; [eval] _pure_3 <= _pure_4
(push) ; 7
(assert (not (<=
  (-
    _pure_3@20@00
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
      _pure_2@19@00
      1)))
  _pure_4@21@00)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<=
  (-
    _pure_3@20@00
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
      _pure_2@19@00
      1)))
  _pure_4@21@00))
; [eval] 0 <= _pure_2
; [eval] 0 <= _pure_3
; [eval] 0 <= _pure_4
(assert (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
  _pure_2@19@00
  1) (-
  _pure_3@20@00
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
    ($Snap.first s@$)
    ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
    _pure_2@19@00
    1))) _pure_4@21@00))
(pop) ; 6
; Joined path conditions
(assert (and
  (<=
    0
    (-
      _pure_3@20@00
      (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
        ($Snap.first s@$)
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
        _pure_2@19@00
        1))))
  (<=
    (-
      _pure_3@20@00
      (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
        ($Snap.first s@$)
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
        _pure_2@19@00
        1)))
    _pure_4@21@00)
  (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%precondition ($Snap.combine
    ($Snap.first s@$)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
    _pure_2@19@00
    1) (-
    _pure_3@20@00
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
      _pure_2@19@00
      1))) _pure_4@21@00)))
; [eval] m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1, _pure_2 - 1)
; [eval] _pure_2 - 1
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
; [eval] 0 <= _pure_2
; [eval] _pure_2 < m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
; [eval] m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
(set-option :timeout 0)
(push) ; 7
; [eval] read$()
(push) ; 8
(pop) ; 8
; Joined path conditions
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
(pop) ; 7
; Joined path conditions
; [eval] 0 <= _pure_2
(assert (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
  _pure_2@19@00
  1)))
(pop) ; 6
; Joined path conditions
(assert (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
  _pure_2@19@00
  1)))
(set-option :timeout 0)
(push) ; 6
; [eval] 0 <= _pure_1
(push) ; 7
(assert (not (<=
  0
  (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ ($Snap.combine
    ($Snap.first s@$)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
    _pure_2@19@00
    1) _pure_3@20@00 _pure_4@21@00))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<=
  0
  (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ ($Snap.combine
    ($Snap.first s@$)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
    _pure_2@19@00
    1) _pure_3@20@00 _pure_4@21@00)))
; [eval] 0 <= _pure_2
(push) ; 7
(assert (not (<=
  0
  (+
    (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
      _pure_2@19@00
      1) (-
      _pure_3@20@00
      (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
        ($Snap.first s@$)
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
        _pure_2@19@00
        1))) _pure_4@21@00)
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
      _pure_2@19@00
      1))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<=
  0
  (+
    (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
      _pure_2@19@00
      1) (-
      _pure_3@20@00
      (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
        ($Snap.first s@$)
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
        _pure_2@19@00
        1))) _pure_4@21@00)
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
      _pure_2@19@00
      1)))))
(assert (m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ ($Snap.combine
  ($Snap.first s@$)
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
  _pure_2@19@00
  1) _pure_3@20@00 _pure_4@21@00) (+
  (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ ($Snap.combine
    ($Snap.first s@$)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
    _pure_2@19@00
    1) (-
    _pure_3@20@00
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
      _pure_2@19@00
      1))) _pure_4@21@00)
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
    ($Snap.first s@$)
    ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
    _pure_2@19@00
    1)))))
(pop) ; 6
; Joined path conditions
(assert (and
  (<=
    0
    (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
      _pure_2@19@00
      1) _pure_3@20@00 _pure_4@21@00))
  (<=
    0
    (+
      (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ ($Snap.combine
        ($Snap.first s@$)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
        _pure_2@19@00
        1) (-
        _pure_3@20@00
        (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
          ($Snap.first s@$)
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
          _pure_2@19@00
          1))) _pure_4@21@00)
      (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
        ($Snap.first s@$)
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
        _pure_2@19@00
        1))))
  (m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ ($Snap.combine
    ($Snap.first s@$)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
    _pure_2@19@00
    1) _pure_3@20@00 _pure_4@21@00) (+
    (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
      _pure_2@19@00
      1) (-
      _pure_3@20@00
      (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
        ($Snap.first s@$)
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
        _pure_2@19@00
        1))) _pure_4@21@00)
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
      _pure_2@19@00
      1))))))
(pop) ; 5
(push) ; 5
; [else-branch: 2 | m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$((First:(s@$), (_, (_, _))), _pure_1@18@00, _pure_2@19@00 - 1) > _pure_3@20@00]
(assert (>
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
    ($Snap.first s@$)
    ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
    _pure_2@19@00
    1))
  _pure_3@20@00))
; [eval] m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$(_pure_1, _pure_2 - 1, _pure_3, _pure_4)
; [eval] _pure_2 - 1
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
; [eval] 0 <= _pure_2
; [eval] _pure_2 <= m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
; [eval] m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
(set-option :timeout 0)
(push) ; 7
; [eval] read$()
(push) ; 8
(pop) ; 8
; Joined path conditions
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
(pop) ; 7
; Joined path conditions
(set-option :timeout 0)
(push) ; 7
(assert (not (<=
  (- _pure_2@19@00 1)
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@18@00))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<=
  (- _pure_2@19@00 1)
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@18@00)))
; [eval] 0 <= _pure_3
; [eval] _pure_3 <= _pure_4
; [eval] 0 <= _pure_2
; [eval] 0 <= _pure_3
; [eval] 0 <= _pure_4
(assert (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
  _pure_2@19@00
  1) _pure_3@20@00 _pure_4@21@00))
(pop) ; 6
; Joined path conditions
(assert (and
  (<=
    (- _pure_2@19@00 1)
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
      ($Snap.first s@$)
      $Snap.unit) _pure_1@18@00))
  (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%precondition ($Snap.combine
    ($Snap.first s@$)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
    _pure_2@19@00
    1) _pure_3@20@00 _pure_4@21@00)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (not
    (>
      (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
        ($Snap.first s@$)
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
        _pure_2@19@00
        1))
      _pure_3@20@00))
  (and
    (not
      (>
        (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
          ($Snap.first s@$)
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
          _pure_2@19@00
          1))
        _pure_3@20@00))
    (<=
      (- _pure_2@19@00 1)
      (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
        ($Snap.first s@$)
        $Snap.unit) _pure_1@18@00))
    (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%precondition ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
      _pure_2@19@00
      1) _pure_3@20@00 _pure_4@21@00)
    (<=
      0
      (-
        _pure_3@20@00
        (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
          ($Snap.first s@$)
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
          _pure_2@19@00
          1))))
    (<=
      (-
        _pure_3@20@00
        (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
          ($Snap.first s@$)
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
          _pure_2@19@00
          1)))
      _pure_4@21@00)
    (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%precondition ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
      _pure_2@19@00
      1) (-
      _pure_3@20@00
      (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
        ($Snap.first s@$)
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
        _pure_2@19@00
        1))) _pure_4@21@00)
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
      _pure_2@19@00
      1))
    (<=
      0
      (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ ($Snap.combine
        ($Snap.first s@$)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
        _pure_2@19@00
        1) _pure_3@20@00 _pure_4@21@00))
    (<=
      0
      (+
        (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ ($Snap.combine
          ($Snap.first s@$)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
          _pure_2@19@00
          1) (-
          _pure_3@20@00
          (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
            ($Snap.first s@$)
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
            _pure_2@19@00
            1))) _pure_4@21@00)
        (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
          ($Snap.first s@$)
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
          _pure_2@19@00
          1))))
    (m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
      _pure_2@19@00
      1) _pure_3@20@00 _pure_4@21@00) (+
      (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ ($Snap.combine
        ($Snap.first s@$)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
        _pure_2@19@00
        1) (-
        _pure_3@20@00
        (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
          ($Snap.first s@$)
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
          _pure_2@19@00
          1))) _pure_4@21@00)
      (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
        ($Snap.first s@$)
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
        _pure_2@19@00
        1)))))))
; Joined path conditions
(assert (=>
  (>
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
      _pure_2@19@00
      1))
    _pure_3@20@00)
  (and
    (>
      (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
        ($Snap.first s@$)
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
        _pure_2@19@00
        1))
      _pure_3@20@00)
    (<=
      (- _pure_2@19@00 1)
      (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
        ($Snap.first s@$)
        $Snap.unit) _pure_1@18@00))
    (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%precondition ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
      _pure_2@19@00
      1) _pure_3@20@00 _pure_4@21@00))))
(assert (or
  (>
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
      _pure_2@19@00
      1))
    _pure_3@20@00)
  (not
    (>
      (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
        ($Snap.first s@$)
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
        _pure_2@19@00
        1))
      _pure_3@20@00))))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (= _pure_2@19@00 0))
  (and
    (not (= _pure_2@19@00 0))
    (<= 0 (- _pure_2@19@00 1))
    (<
      (- _pure_2@19@00 1)
      (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
        ($Snap.first s@$)
        $Snap.unit) _pure_1@18@00))
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
      _pure_2@19@00
      1))
    (=>
      (not
        (>
          (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
            ($Snap.first s@$)
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
            _pure_2@19@00
            1))
          _pure_3@20@00))
      (and
        (not
          (>
            (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
              ($Snap.first s@$)
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
              _pure_2@19@00
              1))
            _pure_3@20@00))
        (<=
          (- _pure_2@19@00 1)
          (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
            ($Snap.first s@$)
            $Snap.unit) _pure_1@18@00))
        (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%precondition ($Snap.combine
          ($Snap.first s@$)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
          _pure_2@19@00
          1) _pure_3@20@00 _pure_4@21@00)
        (<=
          0
          (-
            _pure_3@20@00
            (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
              ($Snap.first s@$)
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
              _pure_2@19@00
              1))))
        (<=
          (-
            _pure_3@20@00
            (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
              ($Snap.first s@$)
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
              _pure_2@19@00
              1)))
          _pure_4@21@00)
        (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%precondition ($Snap.combine
          ($Snap.first s@$)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
          _pure_2@19@00
          1) (-
          _pure_3@20@00
          (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
            ($Snap.first s@$)
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
            _pure_2@19@00
            1))) _pure_4@21@00)
        (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
          ($Snap.first s@$)
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
          _pure_2@19@00
          1))
        (<=
          0
          (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ ($Snap.combine
            ($Snap.first s@$)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
            _pure_2@19@00
            1) _pure_3@20@00 _pure_4@21@00))
        (<=
          0
          (+
            (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ ($Snap.combine
              ($Snap.first s@$)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
              _pure_2@19@00
              1) (-
              _pure_3@20@00
              (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
                ($Snap.first s@$)
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
                _pure_2@19@00
                1))) _pure_4@21@00)
            (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
              ($Snap.first s@$)
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
              _pure_2@19@00
              1))))
        (m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ ($Snap.combine
          ($Snap.first s@$)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
          _pure_2@19@00
          1) _pure_3@20@00 _pure_4@21@00) (+
          (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ ($Snap.combine
            ($Snap.first s@$)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
            _pure_2@19@00
            1) (-
            _pure_3@20@00
            (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
              ($Snap.first s@$)
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
              _pure_2@19@00
              1))) _pure_4@21@00)
          (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
            ($Snap.first s@$)
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
            _pure_2@19@00
            1))))))
    (=>
      (>
        (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
          ($Snap.first s@$)
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
          _pure_2@19@00
          1))
        _pure_3@20@00)
      (and
        (>
          (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
            ($Snap.first s@$)
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
            _pure_2@19@00
            1))
          _pure_3@20@00)
        (<=
          (- _pure_2@19@00 1)
          (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
            ($Snap.first s@$)
            $Snap.unit) _pure_1@18@00))
        (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%precondition ($Snap.combine
          ($Snap.first s@$)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
          _pure_2@19@00
          1) _pure_3@20@00 _pure_4@21@00)))
    (or
      (>
        (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
          ($Snap.first s@$)
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
          _pure_2@19@00
          1))
        _pure_3@20@00)
      (not
        (>
          (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
            ($Snap.first s@$)
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
            _pure_2@19@00
            1))
          _pure_3@20@00))))))
(assert (or (not (= _pure_2@19@00 0)) (= _pure_2@19@00 0)))
(assert (=
  result@22@00
  (ite
    (= _pure_2@19@00 0)
    0
    (ite
      (not
        (>
          (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
            ($Snap.first s@$)
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
            _pure_2@19@00
            1))
          _pure_3@20@00))
      (m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ ($Snap.combine
        ($Snap.first s@$)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
        _pure_2@19@00
        1) _pure_3@20@00 _pure_4@21@00) (+
        (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ ($Snap.combine
          ($Snap.first s@$)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
          _pure_2@19@00
          1) (-
          _pure_3@20@00
          (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
            ($Snap.first s@$)
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
            _pure_2@19@00
            1))) _pure_4@21@00)
        (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
          ($Snap.first s@$)
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
          _pure_2@19@00
          1))))
      (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ ($Snap.combine
        ($Snap.first s@$)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
        _pure_2@19@00
        1) _pure_3@20@00 _pure_4@21@00)))))
; [eval] 0 <= result
(push) ; 2
(assert (not (<= 0 result@22@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 result@22@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@18@00 $Ref) (_pure_2@19@00 Int) (_pure_3@20@00 Int) (_pure_4@21@00 Int)) (!
  (=>
    (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%precondition s@$ _pure_1@18@00 _pure_2@19@00 _pure_3@20@00 _pure_4@21@00)
    (=
      (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ s@$ _pure_1@18@00 _pure_2@19@00 _pure_3@20@00 _pure_4@21@00)
      (ite
        (= _pure_2@19@00 0)
        0
        (ite
          (not
            (>
              (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
                ($Snap.first s@$)
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
                _pure_2@19@00
                1))
              _pure_3@20@00))
          (m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$ ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%limited ($Snap.combine
            ($Snap.first s@$)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
            _pure_2@19@00
            1) _pure_3@20@00 _pure_4@21@00) (+
            (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%limited ($Snap.combine
              ($Snap.first s@$)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
              _pure_2@19@00
              1) (-
              _pure_3@20@00
              (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
                ($Snap.first s@$)
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
                _pure_2@19@00
                1))) _pure_4@21@00)
            (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
              ($Snap.first s@$)
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
              _pure_2@19@00
              1))))
          (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%limited ($Snap.combine
            ($Snap.first s@$)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
            _pure_2@19@00
            1) _pure_3@20@00 _pure_4@21@00)))))
  :pattern ((m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ s@$ _pure_1@18@00 _pure_2@19@00 _pure_3@20@00 _pure_4@21@00))
  :qid |quant-u-102|)))
(assert (forall ((s@$ $Snap) (_pure_1@18@00 $Ref) (_pure_2@19@00 Int) (_pure_3@20@00 Int) (_pure_4@21@00 Int)) (!
  (=>
    (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%precondition s@$ _pure_1@18@00 _pure_2@19@00 _pure_3@20@00 _pure_4@21@00)
    (ite
      (= _pure_2@19@00 0)
      true
      (and
        (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
          ($Snap.first s@$)
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
          _pure_2@19@00
          1))
        (ite
          (not
            (>
              (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
                ($Snap.first s@$)
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
                _pure_2@19@00
                1))
              _pure_3@20@00))
          (and
            (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%precondition ($Snap.combine
              ($Snap.first s@$)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
              _pure_2@19@00
              1) _pure_3@20@00 _pure_4@21@00)
            (and
              (and
                (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
                  ($Snap.first s@$)
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
                  _pure_2@19@00
                  1))
                (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%precondition ($Snap.combine
                  ($Snap.first s@$)
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($Snap.combine
                          $Snap.unit
                          ($Snap.combine
                            $Snap.unit
                            ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
                  _pure_2@19@00
                  1) (-
                  _pure_3@20@00
                  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
                    ($Snap.first s@$)
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
                    _pure_2@19@00
                    1))) _pure_4@21@00))
              (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
                ($Snap.first s@$)
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
                _pure_2@19@00
                1)))
            (m_knapsack$$max$opensqu$0$closesqu$__$TY$__$int$$$int$$$int$%precondition ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%limited ($Snap.combine
              ($Snap.first s@$)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
              _pure_2@19@00
              1) _pure_3@20@00 _pure_4@21@00) (+
              (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%limited ($Snap.combine
                ($Snap.first s@$)
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($Snap.combine
                          $Snap.unit
                          ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
                _pure_2@19@00
                1) (-
                _pure_3@20@00
                (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_weight$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
                  ($Snap.first s@$)
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
                  _pure_2@19@00
                  1))) _pure_4@21@00)
              (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup_value$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
                ($Snap.first s@$)
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) _pure_1@18@00 (-
                _pure_2@19@00
                1)))))
          (m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$%precondition ($Snap.combine
            ($Snap.first s@$)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))))) _pure_1@18@00 (-
            _pure_2@19@00
            1) _pure_3@20@00 _pure_4@21@00)))))
  :pattern ((m_knapsack$$m$opensqu$0$closesqu$__$TY$__m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$$$int$ s@$ _pure_1@18@00 _pure_2@19@00 _pure_3@20@00 _pure_4@21@00))
  :qid |quant-u-103|)))
; ---------- FUNCTION builtin$unreach_int__$TY$__$int$----------
(declare-fun result@23@00 () Int)
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
  :qid |quant-u-67|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$unreach_int__$TY$__$int$%stateless  Bool)
  :pattern ((builtin$unreach_int__$TY$__$int$%limited s@$))
  :qid |quant-u-68|)))
; ---------- FUNCTION m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$----------
(declare-fun _pure_1@24@00 () $Ref)
(declare-fun _pure_2@25@00 () Int)
(declare-fun _pure_3@26@00 () Int)
(declare-fun result@27@00 () Int)
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
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
; [eval] 0 <= _pure_2
(assert (<= 0 _pure_2@25@00))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] _pure_2 < m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
; [eval] m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
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
(assert (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@24@00))
(pop) ; 2
; Joined path conditions
(assert (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@24@00))
(assert (<
  _pure_2@25@00
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$item_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@24@00)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))) $Snap.unit))
; [eval] 0 <= _pure_3
(assert (<= 0 _pure_3@26@00))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))
  $Snap.unit))
; [eval] _pure_3 < m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
; [eval] m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
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
(assert (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@24@00))
(pop) ; 2
; Joined path conditions
(assert (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@24@00))
(assert (<
  _pure_3@26@00
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$weight_len$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@24@00)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))
  $Snap.unit))
; [eval] 0 <= _pure_2
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))
  $Snap.unit))
; [eval] 0 <= _pure_3
(declare-const $t@36@00 $Snap)
(assert (= $t@36@00 ($Snap.combine ($Snap.first $t@36@00) ($Snap.second $t@36@00))))
(assert (= ($Snap.first $t@36@00) $Snap.unit))
(assert (= ($Snap.second $t@36@00) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@27@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@24@00 $Ref) (_pure_2@25@00 Int) (_pure_3@26@00 Int)) (!
  (=
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%limited s@$ _pure_1@24@00 _pure_2@25@00 _pure_3@26@00)
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$ s@$ _pure_1@24@00 _pure_2@25@00 _pure_3@26@00))
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$ s@$ _pure_1@24@00 _pure_2@25@00 _pure_3@26@00))
  :qid |quant-u-69|)))
(assert (forall ((s@$ $Snap) (_pure_1@24@00 $Ref) (_pure_2@25@00 Int) (_pure_3@26@00 Int)) (!
  (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%stateless _pure_1@24@00 _pure_2@25@00 _pure_3@26@00)
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%limited s@$ _pure_1@24@00 _pure_2@25@00 _pure_3@26@00))
  :qid |quant-u-70|)))
(assert (forall ((s@$ $Snap) (_pure_1@24@00 $Ref) (_pure_2@25@00 Int) (_pure_3@26@00 Int)) (!
  (let ((result@27@00 (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%limited s@$ _pure_1@24@00 _pure_2@25@00 _pure_3@26@00))) (=>
    (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%precondition s@$ _pure_1@24@00 _pure_2@25@00 _pure_3@26@00)
    (<= 0 result@27@00)))
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%limited s@$ _pure_1@24@00 _pure_2@25@00 _pure_3@26@00))
  :qid |quant-u-104|)))
(assert (forall ((s@$ $Snap) (_pure_1@24@00 $Ref) (_pure_2@25@00 Int) (_pure_3@26@00 Int)) (!
  (let ((result@27@00 (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%limited s@$ _pure_1@24@00 _pure_2@25@00 _pure_3@26@00))) true)
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%limited s@$ _pure_1@24@00 _pure_2@25@00 _pure_3@26@00))
  :qid |quant-u-105|)))
(assert (forall ((s@$ $Snap) (_pure_1@24@00 $Ref) (_pure_2@25@00 Int) (_pure_3@26@00 Int)) (!
  (let ((result@27@00 (m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%limited s@$ _pure_1@24@00 _pure_2@25@00 _pure_3@26@00))) true)
  :pattern ((m_knapsack$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%limited s@$ _pure_1@24@00 _pure_2@25@00 _pure_3@26@00))
  :qid |quant-u-106|)))
; ---------- DeadBorrowToken$ ----------
(declare-const borrow@37@00 Int)
; ---------- bool ----------
(declare-const self@38@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@39@00 Bool)
(assert (not (= self@38@00 $Ref.null)))
(pop) ; 1
; ---------- closure$0_1_100$4$2195313935860504854 ----------
(declare-const self@40@00 $Ref)
; ---------- closure$0_1_101$4$5862168304557534146 ----------
(declare-const self@41@00 $Ref)
; ---------- closure$0_1_102$4$7055538125904070218 ----------
(declare-const self@42@00 $Ref)
; ---------- closure$0_1_103$3$5908759128992239862 ----------
(declare-const self@43@00 $Ref)
; ---------- closure$0_1_104$4$655325752977662787 ----------
(declare-const self@44@00 $Ref)
; ---------- closure$0_1_105$5$10720279634398355214 ----------
(declare-const self@45@00 $Ref)
; ---------- closure$0_1_106$5$5785012495171046632 ----------
(declare-const self@46@00 $Ref)
; ---------- closure$0_1_107$7$3462205868504671540 ----------
(declare-const self@47@00 $Ref)
; ---------- closure$0_1_108$3$3804200177793084958 ----------
(declare-const self@48@00 $Ref)
; ---------- closure$0_1_109$3$14226160748629873244 ----------
(declare-const self@49@00 $Ref)
; ---------- closure$0_1_110$3$16447901152793631719 ----------
(declare-const self@50@00 $Ref)
; ---------- closure$0_1_13$3$7176179547503835236 ----------
(declare-const self@51@00 $Ref)
; ---------- closure$0_1_14$3$7176179547503835236 ----------
(declare-const self@52@00 $Ref)
; ---------- closure$0_1_15$4$3019757418362490378 ----------
(declare-const self@53@00 $Ref)
; ---------- closure$0_1_16$3$16447901152793631719 ----------
(declare-const self@54@00 $Ref)
; ---------- closure$0_1_17$3$7176179547503835236 ----------
(declare-const self@55@00 $Ref)
; ---------- closure$0_1_18$4$3019757418362490378 ----------
(declare-const self@56@00 $Ref)
; ---------- closure$0_1_19$3$16447901152793631719 ----------
(declare-const self@57@00 $Ref)
; ---------- closure$0_1_20$3$7176179547503835236 ----------
(declare-const self@58@00 $Ref)
; ---------- closure$0_1_21$4$3019757418362490378 ----------
(declare-const self@59@00 $Ref)
; ---------- closure$0_1_22$5$6510375280720503266 ----------
(declare-const self@60@00 $Ref)
; ---------- closure$0_1_23$5$17696661897062230695 ----------
(declare-const self@61@00 $Ref)
; ---------- closure$0_1_28$4$1379368399982250115 ----------
(declare-const self@62@00 $Ref)
; ---------- closure$0_1_29$4$11125728586529045342 ----------
(declare-const self@63@00 $Ref)
; ---------- closure$0_1_30$4$11519300149002759943 ----------
(declare-const self@64@00 $Ref)
; ---------- closure$0_1_31$5$16247953084744144268 ----------
(declare-const self@65@00 $Ref)
; ---------- closure$0_1_32$6$4200987767610412049 ----------
(declare-const self@66@00 $Ref)
; ---------- closure$0_1_33$3$7176179547503835236 ----------
(declare-const self@67@00 $Ref)
; ---------- closure$0_1_34$4$12241145444245808880 ----------
(declare-const self@68@00 $Ref)
; ---------- closure$0_1_35$3$16447901152793631719 ----------
(declare-const self@69@00 $Ref)
; ---------- closure$0_1_36$4$9545962858690430688 ----------
(declare-const self@70@00 $Ref)
; ---------- closure$0_1_37$3$7176179547503835236 ----------
(declare-const self@71@00 $Ref)
; ---------- closure$0_1_38$4$12241145444245808880 ----------
(declare-const self@72@00 $Ref)
; ---------- closure$0_1_39$3$16447901152793631719 ----------
(declare-const self@73@00 $Ref)
; ---------- closure$0_1_40$4$9545962858690430688 ----------
(declare-const self@74@00 $Ref)
; ---------- closure$0_1_41$6$1713151830142718656 ----------
(declare-const self@75@00 $Ref)
; ---------- closure$0_1_42$3$7176179547503835236 ----------
(declare-const self@76@00 $Ref)
; ---------- closure$0_1_43$4$442424761796586614 ----------
(declare-const self@77@00 $Ref)
; ---------- closure$0_1_44$3$16447901152793631719 ----------
(declare-const self@78@00 $Ref)
; ---------- closure$0_1_45$4$10492355745979528584 ----------
(declare-const self@79@00 $Ref)
; ---------- closure$0_1_46$2$2892970999346878380 ----------
(declare-const self@80@00 $Ref)
; ---------- closure$0_1_47$3$11535950475478036422 ----------
(declare-const self@81@00 $Ref)
; ---------- closure$0_1_48$3$6113093944180928149 ----------
(declare-const self@82@00 $Ref)
; ---------- closure$0_1_49$6$2569152856942703315 ----------
(declare-const self@83@00 $Ref)
; ---------- closure$0_1_50$5$6372327013426961719 ----------
(declare-const self@84@00 $Ref)
; ---------- closure$0_1_51$7$14066288598670814946 ----------
(declare-const self@85@00 $Ref)
; ---------- closure$0_1_52$5$3865647478775746238 ----------
(declare-const self@86@00 $Ref)
; ---------- closure$0_1_53$3$7176179547503835236 ----------
(declare-const self@87@00 $Ref)
; ---------- closure$0_1_54$4$3019757418362490378 ----------
(declare-const self@88@00 $Ref)
; ---------- closure$0_1_55$3$16447901152793631719 ----------
(declare-const self@89@00 $Ref)
; ---------- closure$0_1_56$4$11667997092962627586 ----------
(declare-const self@90@00 $Ref)
; ---------- closure$0_1_57$2$9630802733628619285 ----------
(declare-const self@91@00 $Ref)
; ---------- closure$0_1_58$4$14990714798109641575 ----------
(declare-const self@92@00 $Ref)
; ---------- closure$0_1_59$4$14039387590360964198 ----------
(declare-const self@93@00 $Ref)
; ---------- closure$0_1_60$4$13611395894795617782 ----------
(declare-const self@94@00 $Ref)
; ---------- closure$0_1_61$3$17019613836727644117 ----------
(declare-const self@95@00 $Ref)
; ---------- closure$0_1_62$4$2684447020299436106 ----------
(declare-const self@96@00 $Ref)
; ---------- closure$0_1_63$3$4320649005197402516 ----------
(declare-const self@97@00 $Ref)
; ---------- closure$0_1_64$3$4090206497854741622 ----------
(declare-const self@98@00 $Ref)
; ---------- closure$0_1_65$3$4815615749651602420 ----------
(declare-const self@99@00 $Ref)
; ---------- closure$0_1_66$5$17113822432526561541 ----------
(declare-const self@100@00 $Ref)
; ---------- closure$0_1_67$5$11036083759241935507 ----------
(declare-const self@101@00 $Ref)
; ---------- closure$0_1_68$3$4206495023824529454 ----------
(declare-const self@102@00 $Ref)
; ---------- closure$0_1_69$4$15663320775239368138 ----------
(declare-const self@103@00 $Ref)
; ---------- closure$0_1_70$4$15880083695680546704 ----------
(declare-const self@104@00 $Ref)
; ---------- closure$0_1_71$6$16168149984730846501 ----------
(declare-const self@105@00 $Ref)
; ---------- closure$0_1_72$6$11789420810021538926 ----------
(declare-const self@106@00 $Ref)
; ---------- closure$0_1_73$7$11191460349121278873 ----------
(declare-const self@107@00 $Ref)
; ---------- closure$0_1_74$2$9630802733628619285 ----------
(declare-const self@108@00 $Ref)
; ---------- closure$0_1_75$4$5451673049719120757 ----------
(declare-const self@109@00 $Ref)
; ---------- closure$0_1_76$4$1653348676580717959 ----------
(declare-const self@110@00 $Ref)
; ---------- closure$0_1_77$4$6160479198151006000 ----------
(declare-const self@111@00 $Ref)
; ---------- closure$0_1_78$3$16190996979099018254 ----------
(declare-const self@112@00 $Ref)
; ---------- closure$0_1_79$4$10404347298705202397 ----------
(declare-const self@113@00 $Ref)
; ---------- closure$0_1_80$3$17205348727208653730 ----------
(declare-const self@114@00 $Ref)
; ---------- closure$0_1_81$4$12662612786647554877 ----------
(declare-const self@115@00 $Ref)
; ---------- closure$0_1_82$3$17304772845091837241 ----------
(declare-const self@116@00 $Ref)
; ---------- closure$0_1_83$3$4574539313362100690 ----------
(declare-const self@117@00 $Ref)
; ---------- closure$0_1_84$5$6434387996512040629 ----------
(declare-const self@118@00 $Ref)
; ---------- closure$0_1_85$5$9743516861100899679 ----------
(declare-const self@119@00 $Ref)
; ---------- closure$0_1_86$3$10646314070471925050 ----------
(declare-const self@120@00 $Ref)
; ---------- closure$0_1_87$5$774418865505664056 ----------
(declare-const self@121@00 $Ref)
; ---------- closure$0_1_88$5$14157422564092725854 ----------
(declare-const self@122@00 $Ref)
; ---------- closure$0_1_89$6$16642461879638198135 ----------
(declare-const self@123@00 $Ref)
; ---------- closure$0_1_90$6$12796450423676955260 ----------
(declare-const self@124@00 $Ref)
; ---------- closure$0_1_91$7$4558122606232013319 ----------
(declare-const self@125@00 $Ref)
; ---------- closure$0_1_92$7$17160947742008149928 ----------
(declare-const self@126@00 $Ref)
; ---------- closure$0_1_93$4$8785311375718005381 ----------
(declare-const self@127@00 $Ref)
; ---------- closure$0_1_94$7$4559234867040711331 ----------
(declare-const self@128@00 $Ref)
; ---------- closure$0_1_95$3$7300043387549119486 ----------
(declare-const self@129@00 $Ref)
; ---------- closure$0_1_96$4$4813799757810956159 ----------
(declare-const self@130@00 $Ref)
; ---------- closure$0_1_97$4$13420012870477854736 ----------
(declare-const self@131@00 $Ref)
; ---------- closure$0_1_98$2$9630802733628619285 ----------
(declare-const self@132@00 $Ref)
; ---------- closure$0_1_99$3$2733645309818104258 ----------
(declare-const self@133@00 $Ref)
; ---------- m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@134@00 $Ref)
(push) ; 1
(declare-const $t@135@00 $Snap)
(assert (= $t@135@00 $Snap.unit))
(pop) ; 1
; ---------- m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$usize$_end_$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_ ----------
(declare-const self@136@00 $Ref)
(push) ; 1
(declare-const $t@137@00 $Snap)
(assert (= $t@137@00 ($Snap.combine ($Snap.first $t@137@00) ($Snap.second $t@137@00))))
(assert (not (= self@136@00 $Ref.null)))
(assert (=
  ($Snap.second $t@137@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@137@00))
    ($Snap.second ($Snap.second $t@137@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@137@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@137@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@137@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@137@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@137@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@00)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@00))))))))
(pop) ; 1
; ---------- m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$m_knapsack$$Item$opensqu$0$closesqu$$_beg_$_end_$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_ ----------
(declare-const self@138@00 $Ref)
(push) ; 1
(declare-const $t@139@00 $Snap)
(assert (= $t@139@00 ($Snap.combine ($Snap.first $t@139@00) ($Snap.second $t@139@00))))
(assert (not (= self@138@00 $Ref.null)))
(assert (=
  ($Snap.second $t@139@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@139@00))
    ($Snap.second ($Snap.second $t@139@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@139@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@139@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@139@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@139@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@139@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@00)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@00))))))))
(pop) ; 1
; ---------- m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$usize$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_ ----------
(declare-const self@140@00 $Ref)
(push) ; 1
(declare-const $t@141@00 $Snap)
(assert (= $t@141@00 ($Snap.combine ($Snap.first $t@141@00) ($Snap.second $t@141@00))))
(assert (not (= self@140@00 $Ref.null)))
(assert (=
  ($Snap.second $t@141@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@141@00))
    ($Snap.second ($Snap.second $t@141@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@141@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@141@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@141@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@141@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@141@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@00)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@00))))))))
(pop) ; 1
; ---------- m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$usize$_end_$_end_ ----------
(declare-const self@142@00 $Ref)
(push) ; 1
(declare-const $t@143@00 $Snap)
(assert (= $t@143@00 ($Snap.combine ($Snap.first $t@143@00) ($Snap.second $t@143@00))))
(assert (not (= self@142@00 $Ref.null)))
(assert (=
  ($Snap.second $t@143@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@143@00))
    ($Snap.second ($Snap.second $t@143@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@143@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@143@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@143@00))))))
(pop) ; 1
; ---------- m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$m_knapsack$$Item$opensqu$0$closesqu$$_beg_$_end_$_end_ ----------
(declare-const self@144@00 $Ref)
(push) ; 1
(declare-const $t@145@00 $Snap)
(assert (= $t@145@00 ($Snap.combine ($Snap.first $t@145@00) ($Snap.second $t@145@00))))
(assert (not (= self@144@00 $Ref.null)))
(assert (=
  ($Snap.second $t@145@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@145@00))
    ($Snap.second ($Snap.second $t@145@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@145@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@145@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@145@00))))))
(pop) ; 1
; ---------- m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$usize$_end_ ----------
(declare-const self@146@00 $Ref)
(push) ; 1
(declare-const $t@147@00 $Snap)
(assert (= $t@147@00 ($Snap.combine ($Snap.first $t@147@00) ($Snap.second $t@147@00))))
(assert (not (= self@146@00 $Ref.null)))
(assert (=
  ($Snap.second $t@147@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@147@00))
    ($Snap.second ($Snap.second $t@147@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@147@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@147@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@147@00))))))
(pop) ; 1
; ---------- m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$usize$_end_$_end_ ----------
(declare-const self@148@00 $Ref)
; ---------- m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$m_knapsack$$Item$opensqu$0$closesqu$$_beg_$_end_$_end_ ----------
(declare-const self@149@00 $Ref)
; ---------- m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$usize$_end_ ----------
(declare-const self@150@00 $Ref)
; ---------- m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@151@00 $Ref)
(push) ; 1
(declare-const $t@152@00 $Snap)
(assert (= $t@152@00 ($Snap.combine ($Snap.first $t@152@00) ($Snap.second $t@152@00))))
(assert (not (= self@151@00 $Ref.null)))
(assert (=
  ($Snap.second $t@152@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@152@00))
    ($Snap.second ($Snap.second $t@152@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@152@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@152@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@152@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@152@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@152@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@00)))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@152@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@152@00)))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@00))))))))
(pop) ; 1
; ---------- m_knapsack$$Item$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@153@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@154@00 $Snap)
(assert (= $t@154@00 ($Snap.combine ($Snap.first $t@154@00) ($Snap.second $t@154@00))))
(assert (not (= self@153@00 $Ref.null)))
(assert (=
  ($Snap.second $t@154@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@154@00))
    ($Snap.second ($Snap.second $t@154@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@154@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@154@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@154@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@154@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@154@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@154@00)))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@154@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@154@00)))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@154@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@154@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@154@00))))))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@154@00))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@154@00)))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@154@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@154@00)))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- m_knapsack$$ItemIndices$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@155@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@156@00 $Snap)
(assert (= $t@156@00 ($Snap.combine ($Snap.first $t@156@00) ($Snap.second $t@156@00))))
(assert (not (= self@155@00 $Ref.null)))
(pop) ; 1
; ---------- m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@157@00 $Ref)
(push) ; 1
(declare-const $t@158@00 $Snap)
(assert (= $t@158@00 ($Snap.combine ($Snap.first $t@158@00) ($Snap.second $t@158@00))))
(assert (not (= self@157@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_100$4$2195313935860504854 ----------
(declare-const self@159@00 $Ref)
(push) ; 1
(declare-const $t@160@00 $Snap)
(assert (= $t@160@00 ($Snap.combine ($Snap.first $t@160@00) ($Snap.second $t@160@00))))
(assert (not (= self@159@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_101$4$5862168304557534146 ----------
(declare-const self@161@00 $Ref)
(push) ; 1
(declare-const $t@162@00 $Snap)
(assert (= $t@162@00 ($Snap.combine ($Snap.first $t@162@00) ($Snap.second $t@162@00))))
(assert (not (= self@161@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_102$4$7055538125904070218 ----------
(declare-const self@163@00 $Ref)
(push) ; 1
(declare-const $t@164@00 $Snap)
(assert (= $t@164@00 ($Snap.combine ($Snap.first $t@164@00) ($Snap.second $t@164@00))))
(assert (not (= self@163@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_103$3$5908759128992239862 ----------
(declare-const self@165@00 $Ref)
(push) ; 1
(declare-const $t@166@00 $Snap)
(assert (= $t@166@00 ($Snap.combine ($Snap.first $t@166@00) ($Snap.second $t@166@00))))
(assert (not (= self@165@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_104$4$655325752977662787 ----------
(declare-const self@167@00 $Ref)
(push) ; 1
(declare-const $t@168@00 $Snap)
(assert (= $t@168@00 ($Snap.combine ($Snap.first $t@168@00) ($Snap.second $t@168@00))))
(assert (not (= self@167@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_105$5$10720279634398355214 ----------
(declare-const self@169@00 $Ref)
(push) ; 1
(declare-const $t@170@00 $Snap)
(assert (= $t@170@00 ($Snap.combine ($Snap.first $t@170@00) ($Snap.second $t@170@00))))
(assert (not (= self@169@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_106$5$5785012495171046632 ----------
(declare-const self@171@00 $Ref)
(push) ; 1
(declare-const $t@172@00 $Snap)
(assert (= $t@172@00 ($Snap.combine ($Snap.first $t@172@00) ($Snap.second $t@172@00))))
(assert (not (= self@171@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_107$7$3462205868504671540 ----------
(declare-const self@173@00 $Ref)
(push) ; 1
(declare-const $t@174@00 $Snap)
(assert (= $t@174@00 ($Snap.combine ($Snap.first $t@174@00) ($Snap.second $t@174@00))))
(assert (not (= self@173@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_108$3$3804200177793084958 ----------
(declare-const self@175@00 $Ref)
(push) ; 1
(declare-const $t@176@00 $Snap)
(assert (= $t@176@00 ($Snap.combine ($Snap.first $t@176@00) ($Snap.second $t@176@00))))
(assert (not (= self@175@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_109$3$14226160748629873244 ----------
(declare-const self@177@00 $Ref)
(push) ; 1
(declare-const $t@178@00 $Snap)
(assert (= $t@178@00 ($Snap.combine ($Snap.first $t@178@00) ($Snap.second $t@178@00))))
(assert (not (= self@177@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_110$3$16447901152793631719 ----------
(declare-const self@179@00 $Ref)
(push) ; 1
(declare-const $t@180@00 $Snap)
(assert (= $t@180@00 ($Snap.combine ($Snap.first $t@180@00) ($Snap.second $t@180@00))))
(assert (not (= self@179@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_13$3$7176179547503835236 ----------
(declare-const self@181@00 $Ref)
(push) ; 1
(declare-const $t@182@00 $Snap)
(assert (= $t@182@00 ($Snap.combine ($Snap.first $t@182@00) ($Snap.second $t@182@00))))
(assert (not (= self@181@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_14$3$7176179547503835236 ----------
(declare-const self@183@00 $Ref)
(push) ; 1
(declare-const $t@184@00 $Snap)
(assert (= $t@184@00 ($Snap.combine ($Snap.first $t@184@00) ($Snap.second $t@184@00))))
(assert (not (= self@183@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_15$4$3019757418362490378 ----------
(declare-const self@185@00 $Ref)
(push) ; 1
(declare-const $t@186@00 $Snap)
(assert (= $t@186@00 ($Snap.combine ($Snap.first $t@186@00) ($Snap.second $t@186@00))))
(assert (not (= self@185@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_16$3$16447901152793631719 ----------
(declare-const self@187@00 $Ref)
(push) ; 1
(declare-const $t@188@00 $Snap)
(assert (= $t@188@00 ($Snap.combine ($Snap.first $t@188@00) ($Snap.second $t@188@00))))
(assert (not (= self@187@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_17$3$7176179547503835236 ----------
(declare-const self@189@00 $Ref)
(push) ; 1
(declare-const $t@190@00 $Snap)
(assert (= $t@190@00 ($Snap.combine ($Snap.first $t@190@00) ($Snap.second $t@190@00))))
(assert (not (= self@189@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_18$4$3019757418362490378 ----------
(declare-const self@191@00 $Ref)
(push) ; 1
(declare-const $t@192@00 $Snap)
(assert (= $t@192@00 ($Snap.combine ($Snap.first $t@192@00) ($Snap.second $t@192@00))))
(assert (not (= self@191@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_19$3$16447901152793631719 ----------
(declare-const self@193@00 $Ref)
(push) ; 1
(declare-const $t@194@00 $Snap)
(assert (= $t@194@00 ($Snap.combine ($Snap.first $t@194@00) ($Snap.second $t@194@00))))
(assert (not (= self@193@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_20$3$7176179547503835236 ----------
(declare-const self@195@00 $Ref)
(push) ; 1
(declare-const $t@196@00 $Snap)
(assert (= $t@196@00 ($Snap.combine ($Snap.first $t@196@00) ($Snap.second $t@196@00))))
(assert (not (= self@195@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_21$4$3019757418362490378 ----------
(declare-const self@197@00 $Ref)
(push) ; 1
(declare-const $t@198@00 $Snap)
(assert (= $t@198@00 ($Snap.combine ($Snap.first $t@198@00) ($Snap.second $t@198@00))))
(assert (not (= self@197@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_22$5$6510375280720503266 ----------
(declare-const self@199@00 $Ref)
(push) ; 1
(declare-const $t@200@00 $Snap)
(assert (= $t@200@00 ($Snap.combine ($Snap.first $t@200@00) ($Snap.second $t@200@00))))
(assert (not (= self@199@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_23$5$17696661897062230695 ----------
(declare-const self@201@00 $Ref)
(push) ; 1
(declare-const $t@202@00 $Snap)
(assert (= $t@202@00 ($Snap.combine ($Snap.first $t@202@00) ($Snap.second $t@202@00))))
(assert (not (= self@201@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_28$4$1379368399982250115 ----------
(declare-const self@203@00 $Ref)
(push) ; 1
(declare-const $t@204@00 $Snap)
(assert (= $t@204@00 ($Snap.combine ($Snap.first $t@204@00) ($Snap.second $t@204@00))))
(assert (not (= self@203@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_29$4$11125728586529045342 ----------
(declare-const self@205@00 $Ref)
(push) ; 1
(declare-const $t@206@00 $Snap)
(assert (= $t@206@00 ($Snap.combine ($Snap.first $t@206@00) ($Snap.second $t@206@00))))
(assert (not (= self@205@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_30$4$11519300149002759943 ----------
(declare-const self@207@00 $Ref)
(push) ; 1
(declare-const $t@208@00 $Snap)
(assert (= $t@208@00 ($Snap.combine ($Snap.first $t@208@00) ($Snap.second $t@208@00))))
(assert (not (= self@207@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_31$5$16247953084744144268 ----------
(declare-const self@209@00 $Ref)
(push) ; 1
(declare-const $t@210@00 $Snap)
(assert (= $t@210@00 ($Snap.combine ($Snap.first $t@210@00) ($Snap.second $t@210@00))))
(assert (not (= self@209@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_32$6$4200987767610412049 ----------
(declare-const self@211@00 $Ref)
(push) ; 1
(declare-const $t@212@00 $Snap)
(assert (= $t@212@00 ($Snap.combine ($Snap.first $t@212@00) ($Snap.second $t@212@00))))
(assert (not (= self@211@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_33$3$7176179547503835236 ----------
(declare-const self@213@00 $Ref)
(push) ; 1
(declare-const $t@214@00 $Snap)
(assert (= $t@214@00 ($Snap.combine ($Snap.first $t@214@00) ($Snap.second $t@214@00))))
(assert (not (= self@213@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_34$4$12241145444245808880 ----------
(declare-const self@215@00 $Ref)
(push) ; 1
(declare-const $t@216@00 $Snap)
(assert (= $t@216@00 ($Snap.combine ($Snap.first $t@216@00) ($Snap.second $t@216@00))))
(assert (not (= self@215@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_35$3$16447901152793631719 ----------
(declare-const self@217@00 $Ref)
(push) ; 1
(declare-const $t@218@00 $Snap)
(assert (= $t@218@00 ($Snap.combine ($Snap.first $t@218@00) ($Snap.second $t@218@00))))
(assert (not (= self@217@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_36$4$9545962858690430688 ----------
(declare-const self@219@00 $Ref)
(push) ; 1
(declare-const $t@220@00 $Snap)
(assert (= $t@220@00 ($Snap.combine ($Snap.first $t@220@00) ($Snap.second $t@220@00))))
(assert (not (= self@219@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_37$3$7176179547503835236 ----------
(declare-const self@221@00 $Ref)
(push) ; 1
(declare-const $t@222@00 $Snap)
(assert (= $t@222@00 ($Snap.combine ($Snap.first $t@222@00) ($Snap.second $t@222@00))))
(assert (not (= self@221@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_38$4$12241145444245808880 ----------
(declare-const self@223@00 $Ref)
(push) ; 1
(declare-const $t@224@00 $Snap)
(assert (= $t@224@00 ($Snap.combine ($Snap.first $t@224@00) ($Snap.second $t@224@00))))
(assert (not (= self@223@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_39$3$16447901152793631719 ----------
(declare-const self@225@00 $Ref)
(push) ; 1
(declare-const $t@226@00 $Snap)
(assert (= $t@226@00 ($Snap.combine ($Snap.first $t@226@00) ($Snap.second $t@226@00))))
(assert (not (= self@225@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_40$4$9545962858690430688 ----------
(declare-const self@227@00 $Ref)
(push) ; 1
(declare-const $t@228@00 $Snap)
(assert (= $t@228@00 ($Snap.combine ($Snap.first $t@228@00) ($Snap.second $t@228@00))))
(assert (not (= self@227@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_41$6$1713151830142718656 ----------
(declare-const self@229@00 $Ref)
(push) ; 1
(declare-const $t@230@00 $Snap)
(assert (= $t@230@00 ($Snap.combine ($Snap.first $t@230@00) ($Snap.second $t@230@00))))
(assert (not (= self@229@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_42$3$7176179547503835236 ----------
(declare-const self@231@00 $Ref)
(push) ; 1
(declare-const $t@232@00 $Snap)
(assert (= $t@232@00 ($Snap.combine ($Snap.first $t@232@00) ($Snap.second $t@232@00))))
(assert (not (= self@231@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_43$4$442424761796586614 ----------
(declare-const self@233@00 $Ref)
(push) ; 1
(declare-const $t@234@00 $Snap)
(assert (= $t@234@00 ($Snap.combine ($Snap.first $t@234@00) ($Snap.second $t@234@00))))
(assert (not (= self@233@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_44$3$16447901152793631719 ----------
(declare-const self@235@00 $Ref)
(push) ; 1
(declare-const $t@236@00 $Snap)
(assert (= $t@236@00 ($Snap.combine ($Snap.first $t@236@00) ($Snap.second $t@236@00))))
(assert (not (= self@235@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_45$4$10492355745979528584 ----------
(declare-const self@237@00 $Ref)
(push) ; 1
(declare-const $t@238@00 $Snap)
(assert (= $t@238@00 ($Snap.combine ($Snap.first $t@238@00) ($Snap.second $t@238@00))))
(assert (not (= self@237@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_46$2$2892970999346878380 ----------
(declare-const self@239@00 $Ref)
(push) ; 1
(declare-const $t@240@00 $Snap)
(assert (= $t@240@00 ($Snap.combine ($Snap.first $t@240@00) ($Snap.second $t@240@00))))
(assert (not (= self@239@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_47$3$11535950475478036422 ----------
(declare-const self@241@00 $Ref)
(push) ; 1
(declare-const $t@242@00 $Snap)
(assert (= $t@242@00 ($Snap.combine ($Snap.first $t@242@00) ($Snap.second $t@242@00))))
(assert (not (= self@241@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_48$3$6113093944180928149 ----------
(declare-const self@243@00 $Ref)
(push) ; 1
(declare-const $t@244@00 $Snap)
(assert (= $t@244@00 ($Snap.combine ($Snap.first $t@244@00) ($Snap.second $t@244@00))))
(assert (not (= self@243@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_49$6$2569152856942703315 ----------
(declare-const self@245@00 $Ref)
(push) ; 1
(declare-const $t@246@00 $Snap)
(assert (= $t@246@00 ($Snap.combine ($Snap.first $t@246@00) ($Snap.second $t@246@00))))
(assert (not (= self@245@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_50$5$6372327013426961719 ----------
(declare-const self@247@00 $Ref)
(push) ; 1
(declare-const $t@248@00 $Snap)
(assert (= $t@248@00 ($Snap.combine ($Snap.first $t@248@00) ($Snap.second $t@248@00))))
(assert (not (= self@247@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_51$7$14066288598670814946 ----------
(declare-const self@249@00 $Ref)
(push) ; 1
(declare-const $t@250@00 $Snap)
(assert (= $t@250@00 ($Snap.combine ($Snap.first $t@250@00) ($Snap.second $t@250@00))))
(assert (not (= self@249@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_52$5$3865647478775746238 ----------
(declare-const self@251@00 $Ref)
(push) ; 1
(declare-const $t@252@00 $Snap)
(assert (= $t@252@00 ($Snap.combine ($Snap.first $t@252@00) ($Snap.second $t@252@00))))
(assert (not (= self@251@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_53$3$7176179547503835236 ----------
(declare-const self@253@00 $Ref)
(push) ; 1
(declare-const $t@254@00 $Snap)
(assert (= $t@254@00 ($Snap.combine ($Snap.first $t@254@00) ($Snap.second $t@254@00))))
(assert (not (= self@253@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_54$4$3019757418362490378 ----------
(declare-const self@255@00 $Ref)
(push) ; 1
(declare-const $t@256@00 $Snap)
(assert (= $t@256@00 ($Snap.combine ($Snap.first $t@256@00) ($Snap.second $t@256@00))))
(assert (not (= self@255@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_55$3$16447901152793631719 ----------
(declare-const self@257@00 $Ref)
(push) ; 1
(declare-const $t@258@00 $Snap)
(assert (= $t@258@00 ($Snap.combine ($Snap.first $t@258@00) ($Snap.second $t@258@00))))
(assert (not (= self@257@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_56$4$11667997092962627586 ----------
(declare-const self@259@00 $Ref)
(push) ; 1
(declare-const $t@260@00 $Snap)
(assert (= $t@260@00 ($Snap.combine ($Snap.first $t@260@00) ($Snap.second $t@260@00))))
(assert (not (= self@259@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_58$4$14990714798109641575 ----------
(declare-const self@261@00 $Ref)
(push) ; 1
(declare-const $t@262@00 $Snap)
(assert (= $t@262@00 ($Snap.combine ($Snap.first $t@262@00) ($Snap.second $t@262@00))))
(assert (not (= self@261@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_59$4$14039387590360964198 ----------
(declare-const self@263@00 $Ref)
(push) ; 1
(declare-const $t@264@00 $Snap)
(assert (= $t@264@00 ($Snap.combine ($Snap.first $t@264@00) ($Snap.second $t@264@00))))
(assert (not (= self@263@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_60$4$13611395894795617782 ----------
(declare-const self@265@00 $Ref)
(push) ; 1
(declare-const $t@266@00 $Snap)
(assert (= $t@266@00 ($Snap.combine ($Snap.first $t@266@00) ($Snap.second $t@266@00))))
(assert (not (= self@265@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_61$3$17019613836727644117 ----------
(declare-const self@267@00 $Ref)
(push) ; 1
(declare-const $t@268@00 $Snap)
(assert (= $t@268@00 ($Snap.combine ($Snap.first $t@268@00) ($Snap.second $t@268@00))))
(assert (not (= self@267@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_62$4$2684447020299436106 ----------
(declare-const self@269@00 $Ref)
(push) ; 1
(declare-const $t@270@00 $Snap)
(assert (= $t@270@00 ($Snap.combine ($Snap.first $t@270@00) ($Snap.second $t@270@00))))
(assert (not (= self@269@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_63$3$4320649005197402516 ----------
(declare-const self@271@00 $Ref)
(push) ; 1
(declare-const $t@272@00 $Snap)
(assert (= $t@272@00 ($Snap.combine ($Snap.first $t@272@00) ($Snap.second $t@272@00))))
(assert (not (= self@271@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_64$3$4090206497854741622 ----------
(declare-const self@273@00 $Ref)
(push) ; 1
(declare-const $t@274@00 $Snap)
(assert (= $t@274@00 ($Snap.combine ($Snap.first $t@274@00) ($Snap.second $t@274@00))))
(assert (not (= self@273@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_65$3$4815615749651602420 ----------
(declare-const self@275@00 $Ref)
(push) ; 1
(declare-const $t@276@00 $Snap)
(assert (= $t@276@00 ($Snap.combine ($Snap.first $t@276@00) ($Snap.second $t@276@00))))
(assert (not (= self@275@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_66$5$17113822432526561541 ----------
(declare-const self@277@00 $Ref)
(push) ; 1
(declare-const $t@278@00 $Snap)
(assert (= $t@278@00 ($Snap.combine ($Snap.first $t@278@00) ($Snap.second $t@278@00))))
(assert (not (= self@277@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_67$5$11036083759241935507 ----------
(declare-const self@279@00 $Ref)
(push) ; 1
(declare-const $t@280@00 $Snap)
(assert (= $t@280@00 ($Snap.combine ($Snap.first $t@280@00) ($Snap.second $t@280@00))))
(assert (not (= self@279@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_68$3$4206495023824529454 ----------
(declare-const self@281@00 $Ref)
(push) ; 1
(declare-const $t@282@00 $Snap)
(assert (= $t@282@00 ($Snap.combine ($Snap.first $t@282@00) ($Snap.second $t@282@00))))
(assert (not (= self@281@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_69$4$15663320775239368138 ----------
(declare-const self@283@00 $Ref)
(push) ; 1
(declare-const $t@284@00 $Snap)
(assert (= $t@284@00 ($Snap.combine ($Snap.first $t@284@00) ($Snap.second $t@284@00))))
(assert (not (= self@283@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_70$4$15880083695680546704 ----------
(declare-const self@285@00 $Ref)
(push) ; 1
(declare-const $t@286@00 $Snap)
(assert (= $t@286@00 ($Snap.combine ($Snap.first $t@286@00) ($Snap.second $t@286@00))))
(assert (not (= self@285@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_71$6$16168149984730846501 ----------
(declare-const self@287@00 $Ref)
(push) ; 1
(declare-const $t@288@00 $Snap)
(assert (= $t@288@00 ($Snap.combine ($Snap.first $t@288@00) ($Snap.second $t@288@00))))
(assert (not (= self@287@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_72$6$11789420810021538926 ----------
(declare-const self@289@00 $Ref)
(push) ; 1
(declare-const $t@290@00 $Snap)
(assert (= $t@290@00 ($Snap.combine ($Snap.first $t@290@00) ($Snap.second $t@290@00))))
(assert (not (= self@289@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_73$7$11191460349121278873 ----------
(declare-const self@291@00 $Ref)
(push) ; 1
(declare-const $t@292@00 $Snap)
(assert (= $t@292@00 ($Snap.combine ($Snap.first $t@292@00) ($Snap.second $t@292@00))))
(assert (not (= self@291@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_75$4$5451673049719120757 ----------
(declare-const self@293@00 $Ref)
(push) ; 1
(declare-const $t@294@00 $Snap)
(assert (= $t@294@00 ($Snap.combine ($Snap.first $t@294@00) ($Snap.second $t@294@00))))
(assert (not (= self@293@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_76$4$1653348676580717959 ----------
(declare-const self@295@00 $Ref)
(push) ; 1
(declare-const $t@296@00 $Snap)
(assert (= $t@296@00 ($Snap.combine ($Snap.first $t@296@00) ($Snap.second $t@296@00))))
(assert (not (= self@295@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_77$4$6160479198151006000 ----------
(declare-const self@297@00 $Ref)
(push) ; 1
(declare-const $t@298@00 $Snap)
(assert (= $t@298@00 ($Snap.combine ($Snap.first $t@298@00) ($Snap.second $t@298@00))))
(assert (not (= self@297@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_78$3$16190996979099018254 ----------
(declare-const self@299@00 $Ref)
(push) ; 1
(declare-const $t@300@00 $Snap)
(assert (= $t@300@00 ($Snap.combine ($Snap.first $t@300@00) ($Snap.second $t@300@00))))
(assert (not (= self@299@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_79$4$10404347298705202397 ----------
(declare-const self@301@00 $Ref)
(push) ; 1
(declare-const $t@302@00 $Snap)
(assert (= $t@302@00 ($Snap.combine ($Snap.first $t@302@00) ($Snap.second $t@302@00))))
(assert (not (= self@301@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_80$3$17205348727208653730 ----------
(declare-const self@303@00 $Ref)
(push) ; 1
(declare-const $t@304@00 $Snap)
(assert (= $t@304@00 ($Snap.combine ($Snap.first $t@304@00) ($Snap.second $t@304@00))))
(assert (not (= self@303@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_81$4$12662612786647554877 ----------
(declare-const self@305@00 $Ref)
(push) ; 1
(declare-const $t@306@00 $Snap)
(assert (= $t@306@00 ($Snap.combine ($Snap.first $t@306@00) ($Snap.second $t@306@00))))
(assert (not (= self@305@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_82$3$17304772845091837241 ----------
(declare-const self@307@00 $Ref)
(push) ; 1
(declare-const $t@308@00 $Snap)
(assert (= $t@308@00 ($Snap.combine ($Snap.first $t@308@00) ($Snap.second $t@308@00))))
(assert (not (= self@307@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_83$3$4574539313362100690 ----------
(declare-const self@309@00 $Ref)
(push) ; 1
(declare-const $t@310@00 $Snap)
(assert (= $t@310@00 ($Snap.combine ($Snap.first $t@310@00) ($Snap.second $t@310@00))))
(assert (not (= self@309@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_84$5$6434387996512040629 ----------
(declare-const self@311@00 $Ref)
(push) ; 1
(declare-const $t@312@00 $Snap)
(assert (= $t@312@00 ($Snap.combine ($Snap.first $t@312@00) ($Snap.second $t@312@00))))
(assert (not (= self@311@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_85$5$9743516861100899679 ----------
(declare-const self@313@00 $Ref)
(push) ; 1
(declare-const $t@314@00 $Snap)
(assert (= $t@314@00 ($Snap.combine ($Snap.first $t@314@00) ($Snap.second $t@314@00))))
(assert (not (= self@313@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_86$3$10646314070471925050 ----------
(declare-const self@315@00 $Ref)
(push) ; 1
(declare-const $t@316@00 $Snap)
(assert (= $t@316@00 ($Snap.combine ($Snap.first $t@316@00) ($Snap.second $t@316@00))))
(assert (not (= self@315@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_87$5$774418865505664056 ----------
(declare-const self@317@00 $Ref)
(push) ; 1
(declare-const $t@318@00 $Snap)
(assert (= $t@318@00 ($Snap.combine ($Snap.first $t@318@00) ($Snap.second $t@318@00))))
(assert (not (= self@317@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_88$5$14157422564092725854 ----------
(declare-const self@319@00 $Ref)
(push) ; 1
(declare-const $t@320@00 $Snap)
(assert (= $t@320@00 ($Snap.combine ($Snap.first $t@320@00) ($Snap.second $t@320@00))))
(assert (not (= self@319@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_89$6$16642461879638198135 ----------
(declare-const self@321@00 $Ref)
(push) ; 1
(declare-const $t@322@00 $Snap)
(assert (= $t@322@00 ($Snap.combine ($Snap.first $t@322@00) ($Snap.second $t@322@00))))
(assert (not (= self@321@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_90$6$12796450423676955260 ----------
(declare-const self@323@00 $Ref)
(push) ; 1
(declare-const $t@324@00 $Snap)
(assert (= $t@324@00 ($Snap.combine ($Snap.first $t@324@00) ($Snap.second $t@324@00))))
(assert (not (= self@323@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_91$7$4558122606232013319 ----------
(declare-const self@325@00 $Ref)
(push) ; 1
(declare-const $t@326@00 $Snap)
(assert (= $t@326@00 ($Snap.combine ($Snap.first $t@326@00) ($Snap.second $t@326@00))))
(assert (not (= self@325@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_92$7$17160947742008149928 ----------
(declare-const self@327@00 $Ref)
(push) ; 1
(declare-const $t@328@00 $Snap)
(assert (= $t@328@00 ($Snap.combine ($Snap.first $t@328@00) ($Snap.second $t@328@00))))
(assert (not (= self@327@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_93$4$8785311375718005381 ----------
(declare-const self@329@00 $Ref)
(push) ; 1
(declare-const $t@330@00 $Snap)
(assert (= $t@330@00 ($Snap.combine ($Snap.first $t@330@00) ($Snap.second $t@330@00))))
(assert (not (= self@329@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_94$7$4559234867040711331 ----------
(declare-const self@331@00 $Ref)
(push) ; 1
(declare-const $t@332@00 $Snap)
(assert (= $t@332@00 ($Snap.combine ($Snap.first $t@332@00) ($Snap.second $t@332@00))))
(assert (not (= self@331@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_95$3$7300043387549119486 ----------
(declare-const self@333@00 $Ref)
(push) ; 1
(declare-const $t@334@00 $Snap)
(assert (= $t@334@00 ($Snap.combine ($Snap.first $t@334@00) ($Snap.second $t@334@00))))
(assert (not (= self@333@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_96$4$4813799757810956159 ----------
(declare-const self@335@00 $Ref)
(push) ; 1
(declare-const $t@336@00 $Snap)
(assert (= $t@336@00 ($Snap.combine ($Snap.first $t@336@00) ($Snap.second $t@336@00))))
(assert (not (= self@335@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_97$4$13420012870477854736 ----------
(declare-const self@337@00 $Ref)
(push) ; 1
(declare-const $t@338@00 $Snap)
(assert (= $t@338@00 ($Snap.combine ($Snap.first $t@338@00) ($Snap.second $t@338@00))))
(assert (not (= self@337@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_99$3$2733645309818104258 ----------
(declare-const self@339@00 $Ref)
(push) ; 1
(declare-const $t@340@00 $Snap)
(assert (= $t@340@00 ($Snap.combine ($Snap.first $t@340@00) ($Snap.second $t@340@00))))
(assert (not (= self@339@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@341@00 $Ref)
(push) ; 1
(declare-const $t@342@00 $Snap)
(assert (= $t@342@00 ($Snap.combine ($Snap.first $t@342@00) ($Snap.second $t@342@00))))
(assert (not (= self@341@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_knapsack$$Item$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@343@00 $Ref)
(push) ; 1
(declare-const $t@344@00 $Snap)
(assert (= $t@344@00 ($Snap.combine ($Snap.first $t@344@00) ($Snap.second $t@344@00))))
(assert (not (= self@343@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_knapsack$$ItemIndices$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@345@00 $Ref)
(push) ; 1
(declare-const $t@346@00 $Snap)
(assert (= $t@346@00 ($Snap.combine ($Snap.first $t@346@00) ($Snap.second $t@346@00))))
(assert (not (= self@345@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@347@00 $Ref)
(push) ; 1
(declare-const $t@348@00 $Snap)
(assert (= $t@348@00 ($Snap.combine ($Snap.first $t@348@00) ($Snap.second $t@348@00))))
(assert (not (= self@347@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$m_knapsack$$BestValues$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@349@00 $Ref)
(push) ; 1
(declare-const $t@350@00 $Snap)
(assert (= $t@350@00 ($Snap.combine ($Snap.first $t@350@00) ($Snap.second $t@350@00))))
(assert (not (= self@349@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$m_knapsack$$Item$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@351@00 $Ref)
(push) ; 1
(declare-const $t@352@00 $Snap)
(assert (= $t@352@00 ($Snap.combine ($Snap.first $t@352@00) ($Snap.second $t@352@00))))
(assert (not (= self@351@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$m_knapsack$$Items$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@353@00 $Ref)
(push) ; 1
(declare-const $t@354@00 $Snap)
(assert (= $t@354@00 ($Snap.combine ($Snap.first $t@354@00) ($Snap.second $t@354@00))))
(assert (not (= self@353@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$usize ----------
(declare-const self@355@00 $Ref)
(push) ; 1
(declare-const $t@356@00 $Snap)
(assert (= $t@356@00 ($Snap.combine ($Snap.first $t@356@00) ($Snap.second $t@356@00))))
(assert (not (= self@355@00 $Ref.null)))
(pop) ; 1
; ---------- ref$tuple2$usize$usize ----------
(declare-const self@357@00 $Ref)
(push) ; 1
(declare-const $t@358@00 $Snap)
(assert (= $t@358@00 ($Snap.combine ($Snap.first $t@358@00) ($Snap.second $t@358@00))))
(assert (not (= self@357@00 $Ref.null)))
(pop) ; 1
; ---------- ref$usize ----------
(declare-const self@359@00 $Ref)
(push) ; 1
(declare-const $t@360@00 $Snap)
(assert (= $t@360@00 ($Snap.combine ($Snap.first $t@360@00) ($Snap.second $t@360@00))))
(assert (not (= self@359@00 $Ref.null)))
(pop) ; 1
; ---------- tuple0$ ----------
(declare-const self@361@00 $Ref)
(push) ; 1
(declare-const $t@362@00 $Snap)
(assert (= $t@362@00 $Snap.unit))
(pop) ; 1
; ---------- tuple2$usize$bool ----------
(declare-const self@363@00 $Ref)
(push) ; 1
(declare-const $t@364@00 $Snap)
(assert (= $t@364@00 ($Snap.combine ($Snap.first $t@364@00) ($Snap.second $t@364@00))))
(assert (not (= self@363@00 $Ref.null)))
(assert (=
  ($Snap.second $t@364@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@364@00))
    ($Snap.second ($Snap.second $t@364@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@364@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@364@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@364@00))))))
(pop) ; 1
; ---------- tuple2$usize$usize ----------
(declare-const self@365@00 $Ref)
(push) ; 1
(declare-const $t@366@00 $Snap)
(assert (= $t@366@00 ($Snap.combine ($Snap.first $t@366@00) ($Snap.second $t@366@00))))
(assert (not (= self@365@00 $Ref.null)))
(assert (=
  ($Snap.second $t@366@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@366@00))
    ($Snap.second ($Snap.second $t@366@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@366@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@366@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@366@00))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@366@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@366@00)))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- u8 ----------
(declare-const self@367@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@368@00 $Snap)
(assert (= $t@368@00 ($Snap.combine ($Snap.first $t@368@00) ($Snap.second $t@368@00))))
(assert (not (= self@367@00 $Ref.null)))
(assert (= ($Snap.second $t@368@00) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@368@00))))
(pop) ; 1
; ---------- usize ----------
(declare-const self@369@00 $Ref)
(push) ; 1
(declare-const $t@370@00 $Snap)
(assert (= $t@370@00 ($Snap.combine ($Snap.first $t@370@00) ($Snap.second $t@370@00))))
(assert (not (= self@369@00 $Ref.null)))
(assert (= ($Snap.second $t@370@00) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@370@00))))
(pop) ; 1
