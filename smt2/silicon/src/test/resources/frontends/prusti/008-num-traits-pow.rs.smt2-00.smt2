(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-04 00:18:51
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
(declare-fun i64$$memory_eq$$__$TY$__i64$i64$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun i64$$memory_eq$$__$TY$__i64$i64$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun i64$$memory_eq$$__$TY$__i64$i64$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun i64$$memory_eq$$__$TY$__i64$i64$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun i32$$memory_eq$$__$TY$__i32$i32$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun i32$$memory_eq$$__$TY$__i32$i32$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun i32$$memory_eq$$__$TY$__i32$i32$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun i32$$memory_eq$$__$TY$__i32$i32$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun u16$$memory_eq$$__$TY$__u16$u16$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun u16$$memory_eq$$__$TY$__u16$u16$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun u16$$memory_eq$$__$TY$__u16$u16$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun u16$$memory_eq$$__$TY$__u16$u16$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun u32$$memory_eq$$__$TY$__u32$u32$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun u32$$memory_eq$$__$TY$__u32$u32$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun u32$$memory_eq$$__$TY$__u32$u32$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun u32$$memory_eq$$__$TY$__u32$u32$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun u64$$memory_eq$$__$TY$__u64$u64$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun u64$$memory_eq$$__$TY$__u64$u64$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun u64$$memory_eq$$__$TY$__u64$u64$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun u64$$memory_eq$$__$TY$__u64$u64$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun isize$$memory_eq$$__$TY$__isize$isize$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun isize$$memory_eq$$__$TY$__isize$isize$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun i8$$memory_eq$$__$TY$__i8$i8$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun i8$$memory_eq$$__$TY$__i8$i8$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun i8$$memory_eq$$__$TY$__i8$i8$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun i8$$memory_eq$$__$TY$__i8$i8$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun i16$$memory_eq$$__$TY$__i16$i16$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun i16$$memory_eq$$__$TY$__i16$i16$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun i16$$memory_eq$$__$TY$__i16$i16$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun i16$$memory_eq$$__$TY$__i16$i16$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun usize$$memory_eq$$__$TY$__usize$usize$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun usize$$memory_eq$$__$TY$__usize$usize$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun usize$$memory_eq$$__$TY$__usize$usize$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun usize$$memory_eq$$__$TY$__usize$usize$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun u8$$memory_eq$$__$TY$__u8$u8$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun u8$$memory_eq$$__$TY$__u8$u8$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun u8$$memory_eq$$__$TY$__u8$u8$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun u8$$memory_eq$$__$TY$__u8$u8$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun DeadBorrowToken$%trigger ($Snap Int) Bool)
(declare-fun __TYPARAM__$T$__%trigger ($Snap $Ref) Bool)
(declare-fun i16%trigger ($Snap $Ref) Bool)
(declare-fun i32%trigger ($Snap $Ref) Bool)
(declare-fun i64%trigger ($Snap $Ref) Bool)
(declare-fun i8%trigger ($Snap $Ref) Bool)
(declare-fun isize%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_%trigger ($Snap $Ref) Bool)
(declare-fun tuple0$%trigger ($Snap $Ref) Bool)
(declare-fun u16%trigger ($Snap $Ref) Bool)
(declare-fun u32%trigger ($Snap $Ref) Bool)
(declare-fun u64%trigger ($Snap $Ref) Bool)
(declare-fun u8%trigger ($Snap $Ref) Bool)
(declare-fun usize%trigger ($Snap $Ref) Bool)
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
(declare-const $t@61@00 $Snap)
(assert (= $t@61@00 ($Snap.combine ($Snap.first $t@61@00) ($Snap.second $t@61@00))))
(assert (= ($Snap.first $t@61@00) $Snap.unit))
; [eval] none < result
(assert (< $Perm.No result@0@00))
(assert (= ($Snap.second $t@61@00) $Snap.unit))
; [eval] result < write
(assert (< result@0@00 $Perm.Write))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (read$%limited s@$) (read$ s@$))
  :pattern ((read$ s@$))
  :qid |quant-u-563|)))
(assert (forall ((s@$ $Snap)) (!
  (as read$%stateless  Bool)
  :pattern ((read$%limited s@$))
  :qid |quant-u-564|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) (=>
    (read$%precondition s@$)
    (and (< $Perm.No result@0@00) (< result@0@00 $Perm.Write))))
  :pattern ((read$%limited s@$))
  :qid |quant-u-605|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-606|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-607|)))
; ---------- FUNCTION i64$$memory_eq$$__$TY$__i64$i64$$bool$----------
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
    (i64$$memory_eq$$__$TY$__i64$i64$$bool$%limited s@$ self@1@00 other@2@00)
    (i64$$memory_eq$$__$TY$__i64$i64$$bool$ s@$ self@1@00 other@2@00))
  :pattern ((i64$$memory_eq$$__$TY$__i64$i64$$bool$ s@$ self@1@00 other@2@00))
  :qid |quant-u-565|)))
(assert (forall ((s@$ $Snap) (self@1@00 $Ref) (other@2@00 $Ref)) (!
  (i64$$memory_eq$$__$TY$__i64$i64$$bool$%stateless self@1@00 other@2@00)
  :pattern ((i64$$memory_eq$$__$TY$__i64$i64$$bool$%limited s@$ self@1@00 other@2@00))
  :qid |quant-u-566|)))
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
; [eval] (unfolding acc(i64(self), read$()) in (unfolding acc(i64(other), read$()) in self.val_int == other.val_int))
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
(assert (i64%trigger ($Snap.first s@$) self@1@00))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@1@00 $Ref.null))))
; [eval] (unfolding acc(i64(other), read$()) in self.val_int == other.val_int)
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
(assert (i64%trigger ($Snap.second s@$) other@2@00))
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
  (i64%trigger ($Snap.second s@$) other@2@00)
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@2@00 $Ref.null)))))
(pop) ; 2
; Joined path conditions
(assert (and
  (i64%trigger ($Snap.first s@$) self@1@00)
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@1@00 $Ref.null)))
  (i64%trigger ($Snap.second s@$) other@2@00)
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@2@00 $Ref.null)))))
(assert (=
  result@3@00
  (=
    ($SortWrappers.$SnapToInt ($Snap.first s@$))
    ($SortWrappers.$SnapToInt ($Snap.second s@$)))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@1@00 $Ref) (other@2@00 $Ref)) (!
  (=>
    (i64$$memory_eq$$__$TY$__i64$i64$$bool$%precondition s@$ self@1@00 other@2@00)
    (=
      (i64$$memory_eq$$__$TY$__i64$i64$$bool$ s@$ self@1@00 other@2@00)
      (=
        ($SortWrappers.$SnapToInt ($Snap.first s@$))
        ($SortWrappers.$SnapToInt ($Snap.second s@$)))))
  :pattern ((i64$$memory_eq$$__$TY$__i64$i64$$bool$ s@$ self@1@00 other@2@00))
  :qid |quant-u-608|)))
(assert (forall ((s@$ $Snap) (self@1@00 $Ref) (other@2@00 $Ref)) (!
  true
  :pattern ((i64$$memory_eq$$__$TY$__i64$i64$$bool$ s@$ self@1@00 other@2@00))
  :qid |quant-u-609|)))
; ---------- FUNCTION i32$$memory_eq$$__$TY$__i32$i32$$bool$----------
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
    (i32$$memory_eq$$__$TY$__i32$i32$$bool$%limited s@$ self@4@00 other@5@00)
    (i32$$memory_eq$$__$TY$__i32$i32$$bool$ s@$ self@4@00 other@5@00))
  :pattern ((i32$$memory_eq$$__$TY$__i32$i32$$bool$ s@$ self@4@00 other@5@00))
  :qid |quant-u-567|)))
(assert (forall ((s@$ $Snap) (self@4@00 $Ref) (other@5@00 $Ref)) (!
  (i32$$memory_eq$$__$TY$__i32$i32$$bool$%stateless self@4@00 other@5@00)
  :pattern ((i32$$memory_eq$$__$TY$__i32$i32$$bool$%limited s@$ self@4@00 other@5@00))
  :qid |quant-u-568|)))
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
; [eval] (unfolding acc(i32(self), read$()) in (unfolding acc(i32(other), read$()) in self.val_int == other.val_int))
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
(assert (i32%trigger ($Snap.first s@$) self@4@00))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@4@00 $Ref.null))))
; [eval] (unfolding acc(i32(other), read$()) in self.val_int == other.val_int)
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
(assert (i32%trigger ($Snap.second s@$) other@5@00))
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
  (i32%trigger ($Snap.second s@$) other@5@00)
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@5@00 $Ref.null)))))
(pop) ; 2
; Joined path conditions
(assert (and
  (i32%trigger ($Snap.first s@$) self@4@00)
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@4@00 $Ref.null)))
  (i32%trigger ($Snap.second s@$) other@5@00)
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@5@00 $Ref.null)))))
(assert (=
  result@6@00
  (=
    ($SortWrappers.$SnapToInt ($Snap.first s@$))
    ($SortWrappers.$SnapToInt ($Snap.second s@$)))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@4@00 $Ref) (other@5@00 $Ref)) (!
  (=>
    (i32$$memory_eq$$__$TY$__i32$i32$$bool$%precondition s@$ self@4@00 other@5@00)
    (=
      (i32$$memory_eq$$__$TY$__i32$i32$$bool$ s@$ self@4@00 other@5@00)
      (=
        ($SortWrappers.$SnapToInt ($Snap.first s@$))
        ($SortWrappers.$SnapToInt ($Snap.second s@$)))))
  :pattern ((i32$$memory_eq$$__$TY$__i32$i32$$bool$ s@$ self@4@00 other@5@00))
  :qid |quant-u-610|)))
(assert (forall ((s@$ $Snap) (self@4@00 $Ref) (other@5@00 $Ref)) (!
  true
  :pattern ((i32$$memory_eq$$__$TY$__i32$i32$$bool$ s@$ self@4@00 other@5@00))
  :qid |quant-u-611|)))
; ---------- FUNCTION u16$$memory_eq$$__$TY$__u16$u16$$bool$----------
(declare-fun self@7@00 () $Ref)
(declare-fun other@8@00 () $Ref)
(declare-fun result@9@00 () Bool)
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
(assert (not (= self@7@00 other@8@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@7@00 $Ref) (other@8@00 $Ref)) (!
  (=
    (u16$$memory_eq$$__$TY$__u16$u16$$bool$%limited s@$ self@7@00 other@8@00)
    (u16$$memory_eq$$__$TY$__u16$u16$$bool$ s@$ self@7@00 other@8@00))
  :pattern ((u16$$memory_eq$$__$TY$__u16$u16$$bool$ s@$ self@7@00 other@8@00))
  :qid |quant-u-569|)))
(assert (forall ((s@$ $Snap) (self@7@00 $Ref) (other@8@00 $Ref)) (!
  (u16$$memory_eq$$__$TY$__u16$u16$$bool$%stateless self@7@00 other@8@00)
  :pattern ((u16$$memory_eq$$__$TY$__u16$u16$$bool$%limited s@$ self@7@00 other@8@00))
  :qid |quant-u-570|)))
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
; [eval] (unfolding acc(u16(self), read$()) in (unfolding acc(u16(other), read$()) in self.val_int == other.val_int))
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
(assert (u16%trigger ($Snap.first s@$) self@7@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@7@00 $Ref.null))))
(assert (= ($Snap.second ($Snap.first s@$)) $Snap.unit))
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
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))))
; [eval] (unfolding acc(u16(other), read$()) in self.val_int == other.val_int)
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
(assert (u16%trigger ($Snap.second s@$) other@8@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@7@00 other@8@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@8@00 $Ref.null))))
(assert (= ($Snap.second ($Snap.second s@$)) $Snap.unit))
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
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$)))))
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
  (u16%trigger ($Snap.second s@$) other@8@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@8@00 $Ref.null)))
  (= ($Snap.second ($Snap.second s@$)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
(pop) ; 2
; Joined path conditions
(assert (and
  (u16%trigger ($Snap.first s@$) self@7@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@7@00 $Ref.null)))
  (= ($Snap.second ($Snap.first s@$)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))))
  (u16%trigger ($Snap.second s@$) other@8@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@8@00 $Ref.null)))
  (= ($Snap.second ($Snap.second s@$)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
(assert (=
  result@9@00
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@7@00 $Ref) (other@8@00 $Ref)) (!
  (=>
    (u16$$memory_eq$$__$TY$__u16$u16$$bool$%precondition s@$ self@7@00 other@8@00)
    (=
      (u16$$memory_eq$$__$TY$__u16$u16$$bool$ s@$ self@7@00 other@8@00)
      (=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
  :pattern ((u16$$memory_eq$$__$TY$__u16$u16$$bool$ s@$ self@7@00 other@8@00))
  :qid |quant-u-612|)))
(assert (forall ((s@$ $Snap) (self@7@00 $Ref) (other@8@00 $Ref)) (!
  true
  :pattern ((u16$$memory_eq$$__$TY$__u16$u16$$bool$ s@$ self@7@00 other@8@00))
  :qid |quant-u-613|)))
; ---------- FUNCTION u32$$memory_eq$$__$TY$__u32$u32$$bool$----------
(declare-fun self@10@00 () $Ref)
(declare-fun other@11@00 () $Ref)
(declare-fun result@12@00 () Bool)
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
(assert (not (= self@10@00 other@11@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@10@00 $Ref) (other@11@00 $Ref)) (!
  (=
    (u32$$memory_eq$$__$TY$__u32$u32$$bool$%limited s@$ self@10@00 other@11@00)
    (u32$$memory_eq$$__$TY$__u32$u32$$bool$ s@$ self@10@00 other@11@00))
  :pattern ((u32$$memory_eq$$__$TY$__u32$u32$$bool$ s@$ self@10@00 other@11@00))
  :qid |quant-u-571|)))
(assert (forall ((s@$ $Snap) (self@10@00 $Ref) (other@11@00 $Ref)) (!
  (u32$$memory_eq$$__$TY$__u32$u32$$bool$%stateless self@10@00 other@11@00)
  :pattern ((u32$$memory_eq$$__$TY$__u32$u32$$bool$%limited s@$ self@10@00 other@11@00))
  :qid |quant-u-572|)))
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
; [eval] (unfolding acc(u32(self), read$()) in (unfolding acc(u32(other), read$()) in self.val_int == other.val_int))
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
(assert (u32%trigger ($Snap.first s@$) self@10@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@10@00 $Ref.null))))
(assert (= ($Snap.second ($Snap.first s@$)) $Snap.unit))
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
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))))
; [eval] (unfolding acc(u32(other), read$()) in self.val_int == other.val_int)
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
(assert (u32%trigger ($Snap.second s@$) other@11@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@10@00 other@11@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@11@00 $Ref.null))))
(assert (= ($Snap.second ($Snap.second s@$)) $Snap.unit))
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
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$)))))
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
  (u32%trigger ($Snap.second s@$) other@11@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@11@00 $Ref.null)))
  (= ($Snap.second ($Snap.second s@$)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
(pop) ; 2
; Joined path conditions
(assert (and
  (u32%trigger ($Snap.first s@$) self@10@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@10@00 $Ref.null)))
  (= ($Snap.second ($Snap.first s@$)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))))
  (u32%trigger ($Snap.second s@$) other@11@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@11@00 $Ref.null)))
  (= ($Snap.second ($Snap.second s@$)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
(assert (=
  result@12@00
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@10@00 $Ref) (other@11@00 $Ref)) (!
  (=>
    (u32$$memory_eq$$__$TY$__u32$u32$$bool$%precondition s@$ self@10@00 other@11@00)
    (=
      (u32$$memory_eq$$__$TY$__u32$u32$$bool$ s@$ self@10@00 other@11@00)
      (=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
  :pattern ((u32$$memory_eq$$__$TY$__u32$u32$$bool$ s@$ self@10@00 other@11@00))
  :qid |quant-u-614|)))
(assert (forall ((s@$ $Snap) (self@10@00 $Ref) (other@11@00 $Ref)) (!
  true
  :pattern ((u32$$memory_eq$$__$TY$__u32$u32$$bool$ s@$ self@10@00 other@11@00))
  :qid |quant-u-615|)))
; ---------- FUNCTION u64$$memory_eq$$__$TY$__u64$u64$$bool$----------
(declare-fun self@13@00 () $Ref)
(declare-fun other@14@00 () $Ref)
(declare-fun result@15@00 () Bool)
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
(assert (not (= self@13@00 other@14@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@13@00 $Ref) (other@14@00 $Ref)) (!
  (=
    (u64$$memory_eq$$__$TY$__u64$u64$$bool$%limited s@$ self@13@00 other@14@00)
    (u64$$memory_eq$$__$TY$__u64$u64$$bool$ s@$ self@13@00 other@14@00))
  :pattern ((u64$$memory_eq$$__$TY$__u64$u64$$bool$ s@$ self@13@00 other@14@00))
  :qid |quant-u-573|)))
(assert (forall ((s@$ $Snap) (self@13@00 $Ref) (other@14@00 $Ref)) (!
  (u64$$memory_eq$$__$TY$__u64$u64$$bool$%stateless self@13@00 other@14@00)
  :pattern ((u64$$memory_eq$$__$TY$__u64$u64$$bool$%limited s@$ self@13@00 other@14@00))
  :qid |quant-u-574|)))
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
; [eval] (unfolding acc(u64(self), read$()) in (unfolding acc(u64(other), read$()) in self.val_int == other.val_int))
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
(assert (u64%trigger ($Snap.first s@$) self@13@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@13@00 $Ref.null))))
(assert (= ($Snap.second ($Snap.first s@$)) $Snap.unit))
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
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))))
; [eval] (unfolding acc(u64(other), read$()) in self.val_int == other.val_int)
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
(assert (u64%trigger ($Snap.second s@$) other@14@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@13@00 other@14@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@14@00 $Ref.null))))
(assert (= ($Snap.second ($Snap.second s@$)) $Snap.unit))
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
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$)))))
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
  (u64%trigger ($Snap.second s@$) other@14@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@14@00 $Ref.null)))
  (= ($Snap.second ($Snap.second s@$)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
(pop) ; 2
; Joined path conditions
(assert (and
  (u64%trigger ($Snap.first s@$) self@13@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@13@00 $Ref.null)))
  (= ($Snap.second ($Snap.first s@$)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))))
  (u64%trigger ($Snap.second s@$) other@14@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@14@00 $Ref.null)))
  (= ($Snap.second ($Snap.second s@$)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
(assert (=
  result@15@00
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@13@00 $Ref) (other@14@00 $Ref)) (!
  (=>
    (u64$$memory_eq$$__$TY$__u64$u64$$bool$%precondition s@$ self@13@00 other@14@00)
    (=
      (u64$$memory_eq$$__$TY$__u64$u64$$bool$ s@$ self@13@00 other@14@00)
      (=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
  :pattern ((u64$$memory_eq$$__$TY$__u64$u64$$bool$ s@$ self@13@00 other@14@00))
  :qid |quant-u-616|)))
(assert (forall ((s@$ $Snap) (self@13@00 $Ref) (other@14@00 $Ref)) (!
  true
  :pattern ((u64$$memory_eq$$__$TY$__u64$u64$$bool$ s@$ self@13@00 other@14@00))
  :qid |quant-u-617|)))
; ---------- FUNCTION isize$$memory_eq$$__$TY$__isize$isize$$bool$----------
(declare-fun self@16@00 () $Ref)
(declare-fun other@17@00 () $Ref)
(declare-fun result@18@00 () Bool)
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
(assert (not (= self@16@00 other@17@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@16@00 $Ref) (other@17@00 $Ref)) (!
  (=
    (isize$$memory_eq$$__$TY$__isize$isize$$bool$%limited s@$ self@16@00 other@17@00)
    (isize$$memory_eq$$__$TY$__isize$isize$$bool$ s@$ self@16@00 other@17@00))
  :pattern ((isize$$memory_eq$$__$TY$__isize$isize$$bool$ s@$ self@16@00 other@17@00))
  :qid |quant-u-575|)))
(assert (forall ((s@$ $Snap) (self@16@00 $Ref) (other@17@00 $Ref)) (!
  (isize$$memory_eq$$__$TY$__isize$isize$$bool$%stateless self@16@00 other@17@00)
  :pattern ((isize$$memory_eq$$__$TY$__isize$isize$$bool$%limited s@$ self@16@00 other@17@00))
  :qid |quant-u-576|)))
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
(assert (isize%trigger ($Snap.first s@$) self@16@00))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@16@00 $Ref.null))))
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
(assert (isize%trigger ($Snap.second s@$) other@17@00))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@16@00 other@17@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@17@00 $Ref.null))))
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
  (isize%trigger ($Snap.second s@$) other@17@00)
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@17@00 $Ref.null)))))
(pop) ; 2
; Joined path conditions
(assert (and
  (isize%trigger ($Snap.first s@$) self@16@00)
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@16@00 $Ref.null)))
  (isize%trigger ($Snap.second s@$) other@17@00)
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@17@00 $Ref.null)))))
(assert (=
  result@18@00
  (=
    ($SortWrappers.$SnapToInt ($Snap.first s@$))
    ($SortWrappers.$SnapToInt ($Snap.second s@$)))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@16@00 $Ref) (other@17@00 $Ref)) (!
  (=>
    (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition s@$ self@16@00 other@17@00)
    (=
      (isize$$memory_eq$$__$TY$__isize$isize$$bool$ s@$ self@16@00 other@17@00)
      (=
        ($SortWrappers.$SnapToInt ($Snap.first s@$))
        ($SortWrappers.$SnapToInt ($Snap.second s@$)))))
  :pattern ((isize$$memory_eq$$__$TY$__isize$isize$$bool$ s@$ self@16@00 other@17@00))
  :qid |quant-u-618|)))
(assert (forall ((s@$ $Snap) (self@16@00 $Ref) (other@17@00 $Ref)) (!
  true
  :pattern ((isize$$memory_eq$$__$TY$__isize$isize$$bool$ s@$ self@16@00 other@17@00))
  :qid |quant-u-619|)))
; ---------- FUNCTION i8$$memory_eq$$__$TY$__i8$i8$$bool$----------
(declare-fun self@19@00 () $Ref)
(declare-fun other@20@00 () $Ref)
(declare-fun result@21@00 () Bool)
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
(assert (not (= self@19@00 other@20@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@19@00 $Ref) (other@20@00 $Ref)) (!
  (=
    (i8$$memory_eq$$__$TY$__i8$i8$$bool$%limited s@$ self@19@00 other@20@00)
    (i8$$memory_eq$$__$TY$__i8$i8$$bool$ s@$ self@19@00 other@20@00))
  :pattern ((i8$$memory_eq$$__$TY$__i8$i8$$bool$ s@$ self@19@00 other@20@00))
  :qid |quant-u-577|)))
(assert (forall ((s@$ $Snap) (self@19@00 $Ref) (other@20@00 $Ref)) (!
  (i8$$memory_eq$$__$TY$__i8$i8$$bool$%stateless self@19@00 other@20@00)
  :pattern ((i8$$memory_eq$$__$TY$__i8$i8$$bool$%limited s@$ self@19@00 other@20@00))
  :qid |quant-u-578|)))
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
; [eval] (unfolding acc(i8(self), read$()) in (unfolding acc(i8(other), read$()) in self.val_int == other.val_int))
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
(assert (i8%trigger ($Snap.first s@$) self@19@00))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@19@00 $Ref.null))))
; [eval] (unfolding acc(i8(other), read$()) in self.val_int == other.val_int)
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
(assert (i8%trigger ($Snap.second s@$) other@20@00))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@19@00 other@20@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@20@00 $Ref.null))))
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
  (i8%trigger ($Snap.second s@$) other@20@00)
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@20@00 $Ref.null)))))
(pop) ; 2
; Joined path conditions
(assert (and
  (i8%trigger ($Snap.first s@$) self@19@00)
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@19@00 $Ref.null)))
  (i8%trigger ($Snap.second s@$) other@20@00)
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@20@00 $Ref.null)))))
(assert (=
  result@21@00
  (=
    ($SortWrappers.$SnapToInt ($Snap.first s@$))
    ($SortWrappers.$SnapToInt ($Snap.second s@$)))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@19@00 $Ref) (other@20@00 $Ref)) (!
  (=>
    (i8$$memory_eq$$__$TY$__i8$i8$$bool$%precondition s@$ self@19@00 other@20@00)
    (=
      (i8$$memory_eq$$__$TY$__i8$i8$$bool$ s@$ self@19@00 other@20@00)
      (=
        ($SortWrappers.$SnapToInt ($Snap.first s@$))
        ($SortWrappers.$SnapToInt ($Snap.second s@$)))))
  :pattern ((i8$$memory_eq$$__$TY$__i8$i8$$bool$ s@$ self@19@00 other@20@00))
  :qid |quant-u-620|)))
(assert (forall ((s@$ $Snap) (self@19@00 $Ref) (other@20@00 $Ref)) (!
  true
  :pattern ((i8$$memory_eq$$__$TY$__i8$i8$$bool$ s@$ self@19@00 other@20@00))
  :qid |quant-u-621|)))
; ---------- FUNCTION i16$$memory_eq$$__$TY$__i16$i16$$bool$----------
(declare-fun self@22@00 () $Ref)
(declare-fun other@23@00 () $Ref)
(declare-fun result@24@00 () Bool)
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
(assert (not (= self@22@00 other@23@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@22@00 $Ref) (other@23@00 $Ref)) (!
  (=
    (i16$$memory_eq$$__$TY$__i16$i16$$bool$%limited s@$ self@22@00 other@23@00)
    (i16$$memory_eq$$__$TY$__i16$i16$$bool$ s@$ self@22@00 other@23@00))
  :pattern ((i16$$memory_eq$$__$TY$__i16$i16$$bool$ s@$ self@22@00 other@23@00))
  :qid |quant-u-579|)))
(assert (forall ((s@$ $Snap) (self@22@00 $Ref) (other@23@00 $Ref)) (!
  (i16$$memory_eq$$__$TY$__i16$i16$$bool$%stateless self@22@00 other@23@00)
  :pattern ((i16$$memory_eq$$__$TY$__i16$i16$$bool$%limited s@$ self@22@00 other@23@00))
  :qid |quant-u-580|)))
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
; [eval] (unfolding acc(i16(self), read$()) in (unfolding acc(i16(other), read$()) in self.val_int == other.val_int))
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
(assert (i16%trigger ($Snap.first s@$) self@22@00))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@22@00 $Ref.null))))
; [eval] (unfolding acc(i16(other), read$()) in self.val_int == other.val_int)
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
(assert (i16%trigger ($Snap.second s@$) other@23@00))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@22@00 other@23@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@23@00 $Ref.null))))
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
  (i16%trigger ($Snap.second s@$) other@23@00)
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@23@00 $Ref.null)))))
(pop) ; 2
; Joined path conditions
(assert (and
  (i16%trigger ($Snap.first s@$) self@22@00)
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@22@00 $Ref.null)))
  (i16%trigger ($Snap.second s@$) other@23@00)
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@23@00 $Ref.null)))))
(assert (=
  result@24@00
  (=
    ($SortWrappers.$SnapToInt ($Snap.first s@$))
    ($SortWrappers.$SnapToInt ($Snap.second s@$)))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@22@00 $Ref) (other@23@00 $Ref)) (!
  (=>
    (i16$$memory_eq$$__$TY$__i16$i16$$bool$%precondition s@$ self@22@00 other@23@00)
    (=
      (i16$$memory_eq$$__$TY$__i16$i16$$bool$ s@$ self@22@00 other@23@00)
      (=
        ($SortWrappers.$SnapToInt ($Snap.first s@$))
        ($SortWrappers.$SnapToInt ($Snap.second s@$)))))
  :pattern ((i16$$memory_eq$$__$TY$__i16$i16$$bool$ s@$ self@22@00 other@23@00))
  :qid |quant-u-622|)))
(assert (forall ((s@$ $Snap) (self@22@00 $Ref) (other@23@00 $Ref)) (!
  true
  :pattern ((i16$$memory_eq$$__$TY$__i16$i16$$bool$ s@$ self@22@00 other@23@00))
  :qid |quant-u-623|)))
; ---------- FUNCTION usize$$memory_eq$$__$TY$__usize$usize$$bool$----------
(declare-fun self@25@00 () $Ref)
(declare-fun other@26@00 () $Ref)
(declare-fun result@27@00 () Bool)
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
(assert (not (= self@25@00 other@26@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@25@00 $Ref) (other@26@00 $Ref)) (!
  (=
    (usize$$memory_eq$$__$TY$__usize$usize$$bool$%limited s@$ self@25@00 other@26@00)
    (usize$$memory_eq$$__$TY$__usize$usize$$bool$ s@$ self@25@00 other@26@00))
  :pattern ((usize$$memory_eq$$__$TY$__usize$usize$$bool$ s@$ self@25@00 other@26@00))
  :qid |quant-u-581|)))
(assert (forall ((s@$ $Snap) (self@25@00 $Ref) (other@26@00 $Ref)) (!
  (usize$$memory_eq$$__$TY$__usize$usize$$bool$%stateless self@25@00 other@26@00)
  :pattern ((usize$$memory_eq$$__$TY$__usize$usize$$bool$%limited s@$ self@25@00 other@26@00))
  :qid |quant-u-582|)))
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
; [eval] (unfolding acc(usize(self), read$()) in (unfolding acc(usize(other), read$()) in self.val_int == other.val_int))
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
(assert (usize%trigger ($Snap.first s@$) self@25@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@25@00 $Ref.null))))
(assert (= ($Snap.second ($Snap.first s@$)) $Snap.unit))
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
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))))
; [eval] (unfolding acc(usize(other), read$()) in self.val_int == other.val_int)
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
(assert (usize%trigger ($Snap.second s@$) other@26@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@25@00 other@26@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@26@00 $Ref.null))))
(assert (= ($Snap.second ($Snap.second s@$)) $Snap.unit))
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
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$)))))
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
  (usize%trigger ($Snap.second s@$) other@26@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@26@00 $Ref.null)))
  (= ($Snap.second ($Snap.second s@$)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
(pop) ; 2
; Joined path conditions
(assert (and
  (usize%trigger ($Snap.first s@$) self@25@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@25@00 $Ref.null)))
  (= ($Snap.second ($Snap.first s@$)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))))
  (usize%trigger ($Snap.second s@$) other@26@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@26@00 $Ref.null)))
  (= ($Snap.second ($Snap.second s@$)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
(assert (=
  result@27@00
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@25@00 $Ref) (other@26@00 $Ref)) (!
  (=>
    (usize$$memory_eq$$__$TY$__usize$usize$$bool$%precondition s@$ self@25@00 other@26@00)
    (=
      (usize$$memory_eq$$__$TY$__usize$usize$$bool$ s@$ self@25@00 other@26@00)
      (=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
  :pattern ((usize$$memory_eq$$__$TY$__usize$usize$$bool$ s@$ self@25@00 other@26@00))
  :qid |quant-u-624|)))
(assert (forall ((s@$ $Snap) (self@25@00 $Ref) (other@26@00 $Ref)) (!
  true
  :pattern ((usize$$memory_eq$$__$TY$__usize$usize$$bool$ s@$ self@25@00 other@26@00))
  :qid |quant-u-625|)))
; ---------- FUNCTION u8$$memory_eq$$__$TY$__u8$u8$$bool$----------
(declare-fun self@28@00 () $Ref)
(declare-fun other@29@00 () $Ref)
(declare-fun result@30@00 () Bool)
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
(assert (not (= self@28@00 other@29@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@28@00 $Ref) (other@29@00 $Ref)) (!
  (=
    (u8$$memory_eq$$__$TY$__u8$u8$$bool$%limited s@$ self@28@00 other@29@00)
    (u8$$memory_eq$$__$TY$__u8$u8$$bool$ s@$ self@28@00 other@29@00))
  :pattern ((u8$$memory_eq$$__$TY$__u8$u8$$bool$ s@$ self@28@00 other@29@00))
  :qid |quant-u-583|)))
(assert (forall ((s@$ $Snap) (self@28@00 $Ref) (other@29@00 $Ref)) (!
  (u8$$memory_eq$$__$TY$__u8$u8$$bool$%stateless self@28@00 other@29@00)
  :pattern ((u8$$memory_eq$$__$TY$__u8$u8$$bool$%limited s@$ self@28@00 other@29@00))
  :qid |quant-u-584|)))
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
; [eval] (unfolding acc(u8(self), read$()) in (unfolding acc(u8(other), read$()) in self.val_int == other.val_int))
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
(assert (u8%trigger ($Snap.first s@$) self@28@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@28@00 $Ref.null))))
(assert (= ($Snap.second ($Snap.first s@$)) $Snap.unit))
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
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))))
; [eval] (unfolding acc(u8(other), read$()) in self.val_int == other.val_int)
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
(assert (u8%trigger ($Snap.second s@$) other@29@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@28@00 other@29@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@29@00 $Ref.null))))
(assert (= ($Snap.second ($Snap.second s@$)) $Snap.unit))
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
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$)))))
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
  (u8%trigger ($Snap.second s@$) other@29@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@29@00 $Ref.null)))
  (= ($Snap.second ($Snap.second s@$)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
(pop) ; 2
; Joined path conditions
(assert (and
  (u8%trigger ($Snap.first s@$) self@28@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@28@00 $Ref.null)))
  (= ($Snap.second ($Snap.first s@$)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))))
  (u8%trigger ($Snap.second s@$) other@29@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@29@00 $Ref.null)))
  (= ($Snap.second ($Snap.second s@$)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
(assert (=
  result@30@00
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@28@00 $Ref) (other@29@00 $Ref)) (!
  (=>
    (u8$$memory_eq$$__$TY$__u8$u8$$bool$%precondition s@$ self@28@00 other@29@00)
    (=
      (u8$$memory_eq$$__$TY$__u8$u8$$bool$ s@$ self@28@00 other@29@00)
      (=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
  :pattern ((u8$$memory_eq$$__$TY$__u8$u8$$bool$ s@$ self@28@00 other@29@00))
  :qid |quant-u-626|)))
(assert (forall ((s@$ $Snap) (self@28@00 $Ref) (other@29@00 $Ref)) (!
  true
  :pattern ((u8$$memory_eq$$__$TY$__u8$u8$$bool$ s@$ self@28@00 other@29@00))
  :qid |quant-u-627|)))
; ---------- FUNCTION m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$----------
(declare-fun self@31@00 () $Ref)
(declare-fun other@32@00 () $Ref)
(declare-fun result@33@00 () Bool)
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
(assert (not (= self@31@00 other@32@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@31@00 $Ref) (other@32@00 $Ref)) (!
  (=
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$%limited s@$ self@31@00 other@32@00)
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$ s@$ self@31@00 other@32@00))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$ s@$ self@31@00 other@32@00))
  :qid |quant-u-585|)))
(assert (forall ((s@$ $Snap) (self@31@00 $Ref) (other@32@00 $Ref)) (!
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$%stateless self@31@00 other@32@00)
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$%limited s@$ self@31@00 other@32@00))
  :qid |quant-u-586|)))
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
; [eval] (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_(self), read$()) in (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_(other), read$()) in i64$$memory_eq$$__$TY$__i64$i64$$bool$(self.f$0, other.f$0)))
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_%trigger ($Snap.first s@$) self@31@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@31@00 $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_(other), read$()) in i64$$memory_eq$$__$TY$__i64$i64$$bool$(self.f$0, other.f$0))
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_%trigger ($Snap.second s@$) other@32@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@31@00 other@32@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@32@00 $Ref.null))))
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
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] i64$$memory_eq$$__$TY$__i64$i64$$bool$(self.f$0, other.f$0)
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
(assert (i64$$memory_eq$$__$TY$__i64$i64$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 4
; Joined path conditions
(assert (i64$$memory_eq$$__$TY$__i64$i64$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 3
; Joined path conditions
(assert (and
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_%trigger ($Snap.second s@$) other@32@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@32@00 $Ref.null)))
  (i64$$memory_eq$$__$TY$__i64$i64$$bool$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 2
; Joined path conditions
(assert (and
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_%trigger ($Snap.first s@$) self@31@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@31@00 $Ref.null)))
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_%trigger ($Snap.second s@$) other@32@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@32@00 $Ref.null)))
  (i64$$memory_eq$$__$TY$__i64$i64$$bool$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(assert (=
  result@33@00
  (i64$$memory_eq$$__$TY$__i64$i64$$bool$ ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@31@00 $Ref) (other@32@00 $Ref)) (!
  (=>
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$%precondition s@$ self@31@00 other@32@00)
    (=
      (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$ s@$ self@31@00 other@32@00)
      (i64$$memory_eq$$__$TY$__i64$i64$$bool$ ($Snap.combine
        ($Snap.second ($Snap.first s@$))
        ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$ s@$ self@31@00 other@32@00))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$%stateless self@31@00 other@32@00) (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_%trigger ($Snap.first s@$) self@31@00))
  :qid |quant-u-628|)))
(assert (forall ((s@$ $Snap) (self@31@00 $Ref) (other@32@00 $Ref)) (!
  (=>
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$%precondition s@$ self@31@00 other@32@00)
    (i64$$memory_eq$$__$TY$__i64$i64$$bool$%precondition ($Snap.combine
      ($Snap.second ($Snap.first s@$))
      ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$ s@$ self@31@00 other@32@00))
  :qid |quant-u-629|)))
; ---------- FUNCTION m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$----------
(declare-fun self@34@00 () $Ref)
(declare-fun other@35@00 () $Ref)
(declare-fun result@36@00 () Bool)
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
(assert (not (= self@34@00 other@35@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@34@00 $Ref) (other@35@00 $Ref)) (!
  (=
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$%limited s@$ self@34@00 other@35@00)
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$ s@$ self@34@00 other@35@00))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$ s@$ self@34@00 other@35@00))
  :qid |quant-u-587|)))
(assert (forall ((s@$ $Snap) (self@34@00 $Ref) (other@35@00 $Ref)) (!
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$%stateless self@34@00 other@35@00)
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$%limited s@$ self@34@00 other@35@00))
  :qid |quant-u-588|)))
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
; [eval] (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_(self), read$()) in (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_(other), read$()) in i32$$memory_eq$$__$TY$__i32$i32$$bool$(self.f$0, other.f$0)))
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap.first s@$) self@34@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@34@00 $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_(other), read$()) in i32$$memory_eq$$__$TY$__i32$i32$$bool$(self.f$0, other.f$0))
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap.second s@$) other@35@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@34@00 other@35@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@35@00 $Ref.null))))
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
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] i32$$memory_eq$$__$TY$__i32$i32$$bool$(self.f$0, other.f$0)
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
(assert (i32$$memory_eq$$__$TY$__i32$i32$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 4
; Joined path conditions
(assert (i32$$memory_eq$$__$TY$__i32$i32$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 3
; Joined path conditions
(assert (and
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap.second s@$) other@35@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@35@00 $Ref.null)))
  (i32$$memory_eq$$__$TY$__i32$i32$$bool$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 2
; Joined path conditions
(assert (and
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap.first s@$) self@34@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@34@00 $Ref.null)))
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap.second s@$) other@35@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@35@00 $Ref.null)))
  (i32$$memory_eq$$__$TY$__i32$i32$$bool$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(assert (=
  result@36@00
  (i32$$memory_eq$$__$TY$__i32$i32$$bool$ ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@34@00 $Ref) (other@35@00 $Ref)) (!
  (=>
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$%precondition s@$ self@34@00 other@35@00)
    (=
      (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$ s@$ self@34@00 other@35@00)
      (i32$$memory_eq$$__$TY$__i32$i32$$bool$ ($Snap.combine
        ($Snap.second ($Snap.first s@$))
        ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$ s@$ self@34@00 other@35@00))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$%stateless self@34@00 other@35@00) (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap.first s@$) self@34@00))
  :qid |quant-u-630|)))
(assert (forall ((s@$ $Snap) (self@34@00 $Ref) (other@35@00 $Ref)) (!
  (=>
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$%precondition s@$ self@34@00 other@35@00)
    (i32$$memory_eq$$__$TY$__i32$i32$$bool$%precondition ($Snap.combine
      ($Snap.second ($Snap.first s@$))
      ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$ s@$ self@34@00 other@35@00))
  :qid |quant-u-631|)))
; ---------- FUNCTION m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$----------
(declare-fun self@37@00 () $Ref)
(declare-fun other@38@00 () $Ref)
(declare-fun result@39@00 () Bool)
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
(assert (not (= self@37@00 other@38@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@37@00 $Ref) (other@38@00 $Ref)) (!
  (=
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$%limited s@$ self@37@00 other@38@00)
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$ s@$ self@37@00 other@38@00))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$ s@$ self@37@00 other@38@00))
  :qid |quant-u-589|)))
(assert (forall ((s@$ $Snap) (self@37@00 $Ref) (other@38@00 $Ref)) (!
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$%stateless self@37@00 other@38@00)
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$%limited s@$ self@37@00 other@38@00))
  :qid |quant-u-590|)))
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
; [eval] (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_(self), read$()) in (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_(other), read$()) in u16$$memory_eq$$__$TY$__u16$u16$$bool$(self.f$0, other.f$0)))
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_%trigger ($Snap.first s@$) self@37@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@37@00 $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_(other), read$()) in u16$$memory_eq$$__$TY$__u16$u16$$bool$(self.f$0, other.f$0))
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_%trigger ($Snap.second s@$) other@38@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@37@00 other@38@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@38@00 $Ref.null))))
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
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] u16$$memory_eq$$__$TY$__u16$u16$$bool$(self.f$0, other.f$0)
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
(assert (u16$$memory_eq$$__$TY$__u16$u16$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 4
; Joined path conditions
(assert (u16$$memory_eq$$__$TY$__u16$u16$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 3
; Joined path conditions
(assert (and
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_%trigger ($Snap.second s@$) other@38@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@38@00 $Ref.null)))
  (u16$$memory_eq$$__$TY$__u16$u16$$bool$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 2
; Joined path conditions
(assert (and
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_%trigger ($Snap.first s@$) self@37@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@37@00 $Ref.null)))
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_%trigger ($Snap.second s@$) other@38@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@38@00 $Ref.null)))
  (u16$$memory_eq$$__$TY$__u16$u16$$bool$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(assert (=
  result@39@00
  (u16$$memory_eq$$__$TY$__u16$u16$$bool$ ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@37@00 $Ref) (other@38@00 $Ref)) (!
  (=>
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$%precondition s@$ self@37@00 other@38@00)
    (=
      (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$ s@$ self@37@00 other@38@00)
      (u16$$memory_eq$$__$TY$__u16$u16$$bool$ ($Snap.combine
        ($Snap.second ($Snap.first s@$))
        ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$ s@$ self@37@00 other@38@00))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$%stateless self@37@00 other@38@00) (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_%trigger ($Snap.first s@$) self@37@00))
  :qid |quant-u-632|)))
(assert (forall ((s@$ $Snap) (self@37@00 $Ref) (other@38@00 $Ref)) (!
  (=>
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$%precondition s@$ self@37@00 other@38@00)
    (u16$$memory_eq$$__$TY$__u16$u16$$bool$%precondition ($Snap.combine
      ($Snap.second ($Snap.first s@$))
      ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$ s@$ self@37@00 other@38@00))
  :qid |quant-u-633|)))
; ---------- FUNCTION m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$----------
(declare-fun self@40@00 () $Ref)
(declare-fun other@41@00 () $Ref)
(declare-fun result@42@00 () Bool)
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
(assert (not (= self@40@00 other@41@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@40@00 $Ref) (other@41@00 $Ref)) (!
  (=
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$%limited s@$ self@40@00 other@41@00)
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$ s@$ self@40@00 other@41@00))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$ s@$ self@40@00 other@41@00))
  :qid |quant-u-591|)))
(assert (forall ((s@$ $Snap) (self@40@00 $Ref) (other@41@00 $Ref)) (!
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$%stateless self@40@00 other@41@00)
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$%limited s@$ self@40@00 other@41@00))
  :qid |quant-u-592|)))
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
; [eval] (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_(self), read$()) in (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_(other), read$()) in u32$$memory_eq$$__$TY$__u32$u32$$bool$(self.f$0, other.f$0)))
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_%trigger ($Snap.first s@$) self@40@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@40@00 $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_(other), read$()) in u32$$memory_eq$$__$TY$__u32$u32$$bool$(self.f$0, other.f$0))
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_%trigger ($Snap.second s@$) other@41@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@40@00 other@41@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@41@00 $Ref.null))))
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
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] u32$$memory_eq$$__$TY$__u32$u32$$bool$(self.f$0, other.f$0)
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
(assert (u32$$memory_eq$$__$TY$__u32$u32$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 4
; Joined path conditions
(assert (u32$$memory_eq$$__$TY$__u32$u32$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 3
; Joined path conditions
(assert (and
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_%trigger ($Snap.second s@$) other@41@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@41@00 $Ref.null)))
  (u32$$memory_eq$$__$TY$__u32$u32$$bool$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 2
; Joined path conditions
(assert (and
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_%trigger ($Snap.first s@$) self@40@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@40@00 $Ref.null)))
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_%trigger ($Snap.second s@$) other@41@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@41@00 $Ref.null)))
  (u32$$memory_eq$$__$TY$__u32$u32$$bool$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(assert (=
  result@42@00
  (u32$$memory_eq$$__$TY$__u32$u32$$bool$ ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@40@00 $Ref) (other@41@00 $Ref)) (!
  (=>
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$%precondition s@$ self@40@00 other@41@00)
    (=
      (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$ s@$ self@40@00 other@41@00)
      (u32$$memory_eq$$__$TY$__u32$u32$$bool$ ($Snap.combine
        ($Snap.second ($Snap.first s@$))
        ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$ s@$ self@40@00 other@41@00))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$%stateless self@40@00 other@41@00) (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_%trigger ($Snap.first s@$) self@40@00))
  :qid |quant-u-634|)))
(assert (forall ((s@$ $Snap) (self@40@00 $Ref) (other@41@00 $Ref)) (!
  (=>
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$%precondition s@$ self@40@00 other@41@00)
    (u32$$memory_eq$$__$TY$__u32$u32$$bool$%precondition ($Snap.combine
      ($Snap.second ($Snap.first s@$))
      ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$ s@$ self@40@00 other@41@00))
  :qid |quant-u-635|)))
; ---------- FUNCTION m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$----------
(declare-fun self@43@00 () $Ref)
(declare-fun other@44@00 () $Ref)
(declare-fun result@45@00 () Bool)
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
(assert (not (= self@43@00 other@44@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@43@00 $Ref) (other@44@00 $Ref)) (!
  (=
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$%limited s@$ self@43@00 other@44@00)
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$ s@$ self@43@00 other@44@00))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$ s@$ self@43@00 other@44@00))
  :qid |quant-u-593|)))
(assert (forall ((s@$ $Snap) (self@43@00 $Ref) (other@44@00 $Ref)) (!
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$%stateless self@43@00 other@44@00)
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$%limited s@$ self@43@00 other@44@00))
  :qid |quant-u-594|)))
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
; [eval] (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_(self), read$()) in (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_(other), read$()) in u64$$memory_eq$$__$TY$__u64$u64$$bool$(self.f$0, other.f$0)))
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_%trigger ($Snap.first s@$) self@43@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@43@00 $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_(other), read$()) in u64$$memory_eq$$__$TY$__u64$u64$$bool$(self.f$0, other.f$0))
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_%trigger ($Snap.second s@$) other@44@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@43@00 other@44@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@44@00 $Ref.null))))
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
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] u64$$memory_eq$$__$TY$__u64$u64$$bool$(self.f$0, other.f$0)
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
(assert (u64$$memory_eq$$__$TY$__u64$u64$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 4
; Joined path conditions
(assert (u64$$memory_eq$$__$TY$__u64$u64$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 3
; Joined path conditions
(assert (and
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_%trigger ($Snap.second s@$) other@44@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@44@00 $Ref.null)))
  (u64$$memory_eq$$__$TY$__u64$u64$$bool$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 2
; Joined path conditions
(assert (and
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_%trigger ($Snap.first s@$) self@43@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@43@00 $Ref.null)))
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_%trigger ($Snap.second s@$) other@44@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@44@00 $Ref.null)))
  (u64$$memory_eq$$__$TY$__u64$u64$$bool$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(assert (=
  result@45@00
  (u64$$memory_eq$$__$TY$__u64$u64$$bool$ ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@43@00 $Ref) (other@44@00 $Ref)) (!
  (=>
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$%precondition s@$ self@43@00 other@44@00)
    (=
      (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$ s@$ self@43@00 other@44@00)
      (u64$$memory_eq$$__$TY$__u64$u64$$bool$ ($Snap.combine
        ($Snap.second ($Snap.first s@$))
        ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$ s@$ self@43@00 other@44@00))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$%stateless self@43@00 other@44@00) (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_%trigger ($Snap.first s@$) self@43@00))
  :qid |quant-u-636|)))
(assert (forall ((s@$ $Snap) (self@43@00 $Ref) (other@44@00 $Ref)) (!
  (=>
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$%precondition s@$ self@43@00 other@44@00)
    (u64$$memory_eq$$__$TY$__u64$u64$$bool$%precondition ($Snap.combine
      ($Snap.second ($Snap.first s@$))
      ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$ s@$ self@43@00 other@44@00))
  :qid |quant-u-637|)))
; ---------- FUNCTION m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$----------
(declare-fun self@46@00 () $Ref)
(declare-fun other@47@00 () $Ref)
(declare-fun result@48@00 () Bool)
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
(assert (not (= self@46@00 other@47@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@46@00 $Ref) (other@47@00 $Ref)) (!
  (=
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%limited s@$ self@46@00 other@47@00)
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$ s@$ self@46@00 other@47@00))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$ s@$ self@46@00 other@47@00))
  :qid |quant-u-595|)))
(assert (forall ((s@$ $Snap) (self@46@00 $Ref) (other@47@00 $Ref)) (!
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%stateless self@46@00 other@47@00)
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%limited s@$ self@46@00 other@47@00))
  :qid |quant-u-596|)))
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
; [eval] (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_(self), read$()) in (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_(other), read$()) in isize$$memory_eq$$__$TY$__isize$isize$$bool$(self.f$0, other.f$0)))
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_%trigger ($Snap.first s@$) self@46@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@46@00 $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_(other), read$()) in isize$$memory_eq$$__$TY$__isize$isize$$bool$(self.f$0, other.f$0))
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_%trigger ($Snap.second s@$) other@47@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@46@00 other@47@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@47@00 $Ref.null))))
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
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] isize$$memory_eq$$__$TY$__isize$isize$$bool$(self.f$0, other.f$0)
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
  ($Snap.second ($Snap.first s@$))
  ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 4
; Joined path conditions
(assert (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 3
; Joined path conditions
(assert (and
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_%trigger ($Snap.second s@$) other@47@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@47@00 $Ref.null)))
  (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 2
; Joined path conditions
(assert (and
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_%trigger ($Snap.first s@$) self@46@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@46@00 $Ref.null)))
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_%trigger ($Snap.second s@$) other@47@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@47@00 $Ref.null)))
  (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(assert (=
  result@48@00
  (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@46@00 $Ref) (other@47@00 $Ref)) (!
  (=>
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%precondition s@$ self@46@00 other@47@00)
    (=
      (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$ s@$ self@46@00 other@47@00)
      (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
        ($Snap.second ($Snap.first s@$))
        ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$ s@$ self@46@00 other@47@00))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%stateless self@46@00 other@47@00) (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_%trigger ($Snap.first s@$) self@46@00))
  :qid |quant-u-638|)))
(assert (forall ((s@$ $Snap) (self@46@00 $Ref) (other@47@00 $Ref)) (!
  (=>
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%precondition s@$ self@46@00 other@47@00)
    (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
      ($Snap.second ($Snap.first s@$))
      ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$ s@$ self@46@00 other@47@00))
  :qid |quant-u-639|)))
; ---------- FUNCTION m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$----------
(declare-fun self@49@00 () $Ref)
(declare-fun other@50@00 () $Ref)
(declare-fun result@51@00 () Bool)
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
(assert (not (= self@49@00 other@50@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@49@00 $Ref) (other@50@00 $Ref)) (!
  (=
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$%limited s@$ self@49@00 other@50@00)
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$ s@$ self@49@00 other@50@00))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$ s@$ self@49@00 other@50@00))
  :qid |quant-u-597|)))
(assert (forall ((s@$ $Snap) (self@49@00 $Ref) (other@50@00 $Ref)) (!
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$%stateless self@49@00 other@50@00)
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$%limited s@$ self@49@00 other@50@00))
  :qid |quant-u-598|)))
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
; [eval] (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_(self), read$()) in (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_(other), read$()) in i8$$memory_eq$$__$TY$__i8$i8$$bool$(self.f$0, other.f$0)))
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_%trigger ($Snap.first s@$) self@49@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@49@00 $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_(other), read$()) in i8$$memory_eq$$__$TY$__i8$i8$$bool$(self.f$0, other.f$0))
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_%trigger ($Snap.second s@$) other@50@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@49@00 other@50@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@50@00 $Ref.null))))
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
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] i8$$memory_eq$$__$TY$__i8$i8$$bool$(self.f$0, other.f$0)
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
(assert (i8$$memory_eq$$__$TY$__i8$i8$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 4
; Joined path conditions
(assert (i8$$memory_eq$$__$TY$__i8$i8$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 3
; Joined path conditions
(assert (and
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_%trigger ($Snap.second s@$) other@50@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@50@00 $Ref.null)))
  (i8$$memory_eq$$__$TY$__i8$i8$$bool$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 2
; Joined path conditions
(assert (and
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_%trigger ($Snap.first s@$) self@49@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@49@00 $Ref.null)))
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_%trigger ($Snap.second s@$) other@50@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@50@00 $Ref.null)))
  (i8$$memory_eq$$__$TY$__i8$i8$$bool$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(assert (=
  result@51@00
  (i8$$memory_eq$$__$TY$__i8$i8$$bool$ ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@49@00 $Ref) (other@50@00 $Ref)) (!
  (=>
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$%precondition s@$ self@49@00 other@50@00)
    (=
      (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$ s@$ self@49@00 other@50@00)
      (i8$$memory_eq$$__$TY$__i8$i8$$bool$ ($Snap.combine
        ($Snap.second ($Snap.first s@$))
        ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$ s@$ self@49@00 other@50@00))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$%stateless self@49@00 other@50@00) (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_%trigger ($Snap.first s@$) self@49@00))
  :qid |quant-u-640|)))
(assert (forall ((s@$ $Snap) (self@49@00 $Ref) (other@50@00 $Ref)) (!
  (=>
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$%precondition s@$ self@49@00 other@50@00)
    (i8$$memory_eq$$__$TY$__i8$i8$$bool$%precondition ($Snap.combine
      ($Snap.second ($Snap.first s@$))
      ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$ s@$ self@49@00 other@50@00))
  :qid |quant-u-641|)))
; ---------- FUNCTION m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$----------
(declare-fun self@52@00 () $Ref)
(declare-fun other@53@00 () $Ref)
(declare-fun result@54@00 () Bool)
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
(assert (not (= self@52@00 other@53@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@52@00 $Ref) (other@53@00 $Ref)) (!
  (=
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$%limited s@$ self@52@00 other@53@00)
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$ s@$ self@52@00 other@53@00))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$ s@$ self@52@00 other@53@00))
  :qid |quant-u-599|)))
(assert (forall ((s@$ $Snap) (self@52@00 $Ref) (other@53@00 $Ref)) (!
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$%stateless self@52@00 other@53@00)
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$%limited s@$ self@52@00 other@53@00))
  :qid |quant-u-600|)))
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
; [eval] (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_(self), read$()) in (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_(other), read$()) in i16$$memory_eq$$__$TY$__i16$i16$$bool$(self.f$0, other.f$0)))
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_%trigger ($Snap.first s@$) self@52@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@52@00 $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_(other), read$()) in i16$$memory_eq$$__$TY$__i16$i16$$bool$(self.f$0, other.f$0))
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_%trigger ($Snap.second s@$) other@53@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@52@00 other@53@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@53@00 $Ref.null))))
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
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] i16$$memory_eq$$__$TY$__i16$i16$$bool$(self.f$0, other.f$0)
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
(assert (i16$$memory_eq$$__$TY$__i16$i16$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 4
; Joined path conditions
(assert (i16$$memory_eq$$__$TY$__i16$i16$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 3
; Joined path conditions
(assert (and
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_%trigger ($Snap.second s@$) other@53@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@53@00 $Ref.null)))
  (i16$$memory_eq$$__$TY$__i16$i16$$bool$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 2
; Joined path conditions
(assert (and
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_%trigger ($Snap.first s@$) self@52@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@52@00 $Ref.null)))
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_%trigger ($Snap.second s@$) other@53@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@53@00 $Ref.null)))
  (i16$$memory_eq$$__$TY$__i16$i16$$bool$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(assert (=
  result@54@00
  (i16$$memory_eq$$__$TY$__i16$i16$$bool$ ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@52@00 $Ref) (other@53@00 $Ref)) (!
  (=>
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$%precondition s@$ self@52@00 other@53@00)
    (=
      (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$ s@$ self@52@00 other@53@00)
      (i16$$memory_eq$$__$TY$__i16$i16$$bool$ ($Snap.combine
        ($Snap.second ($Snap.first s@$))
        ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$ s@$ self@52@00 other@53@00))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$%stateless self@52@00 other@53@00) (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_%trigger ($Snap.first s@$) self@52@00))
  :qid |quant-u-642|)))
(assert (forall ((s@$ $Snap) (self@52@00 $Ref) (other@53@00 $Ref)) (!
  (=>
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$%precondition s@$ self@52@00 other@53@00)
    (i16$$memory_eq$$__$TY$__i16$i16$$bool$%precondition ($Snap.combine
      ($Snap.second ($Snap.first s@$))
      ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$ s@$ self@52@00 other@53@00))
  :qid |quant-u-643|)))
; ---------- FUNCTION m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$----------
(declare-fun self@55@00 () $Ref)
(declare-fun other@56@00 () $Ref)
(declare-fun result@57@00 () Bool)
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
(assert (not (= self@55@00 other@56@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@55@00 $Ref) (other@56@00 $Ref)) (!
  (=
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$%limited s@$ self@55@00 other@56@00)
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$ s@$ self@55@00 other@56@00))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$ s@$ self@55@00 other@56@00))
  :qid |quant-u-601|)))
(assert (forall ((s@$ $Snap) (self@55@00 $Ref) (other@56@00 $Ref)) (!
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$%stateless self@55@00 other@56@00)
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$%limited s@$ self@55@00 other@56@00))
  :qid |quant-u-602|)))
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
; [eval] (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_(self), read$()) in (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_(other), read$()) in usize$$memory_eq$$__$TY$__usize$usize$$bool$(self.f$0, other.f$0)))
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_%trigger ($Snap.first s@$) self@55@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@55@00 $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_(other), read$()) in usize$$memory_eq$$__$TY$__usize$usize$$bool$(self.f$0, other.f$0))
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_%trigger ($Snap.second s@$) other@56@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@55@00 other@56@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@56@00 $Ref.null))))
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
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] usize$$memory_eq$$__$TY$__usize$usize$$bool$(self.f$0, other.f$0)
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
(assert (usize$$memory_eq$$__$TY$__usize$usize$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 4
; Joined path conditions
(assert (usize$$memory_eq$$__$TY$__usize$usize$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 3
; Joined path conditions
(assert (and
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_%trigger ($Snap.second s@$) other@56@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@56@00 $Ref.null)))
  (usize$$memory_eq$$__$TY$__usize$usize$$bool$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 2
; Joined path conditions
(assert (and
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_%trigger ($Snap.first s@$) self@55@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@55@00 $Ref.null)))
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_%trigger ($Snap.second s@$) other@56@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@56@00 $Ref.null)))
  (usize$$memory_eq$$__$TY$__usize$usize$$bool$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(assert (=
  result@57@00
  (usize$$memory_eq$$__$TY$__usize$usize$$bool$ ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@55@00 $Ref) (other@56@00 $Ref)) (!
  (=>
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$%precondition s@$ self@55@00 other@56@00)
    (=
      (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$ s@$ self@55@00 other@56@00)
      (usize$$memory_eq$$__$TY$__usize$usize$$bool$ ($Snap.combine
        ($Snap.second ($Snap.first s@$))
        ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$ s@$ self@55@00 other@56@00))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$%stateless self@55@00 other@56@00) (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_%trigger ($Snap.first s@$) self@55@00))
  :qid |quant-u-644|)))
(assert (forall ((s@$ $Snap) (self@55@00 $Ref) (other@56@00 $Ref)) (!
  (=>
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$%precondition s@$ self@55@00 other@56@00)
    (usize$$memory_eq$$__$TY$__usize$usize$$bool$%precondition ($Snap.combine
      ($Snap.second ($Snap.first s@$))
      ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$ s@$ self@55@00 other@56@00))
  :qid |quant-u-645|)))
; ---------- FUNCTION m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$----------
(declare-fun self@58@00 () $Ref)
(declare-fun other@59@00 () $Ref)
(declare-fun result@60@00 () Bool)
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
(assert (not (= self@58@00 other@59@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@58@00 $Ref) (other@59@00 $Ref)) (!
  (=
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$%limited s@$ self@58@00 other@59@00)
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$ s@$ self@58@00 other@59@00))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$ s@$ self@58@00 other@59@00))
  :qid |quant-u-603|)))
(assert (forall ((s@$ $Snap) (self@58@00 $Ref) (other@59@00 $Ref)) (!
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$%stateless self@58@00 other@59@00)
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$%limited s@$ self@58@00 other@59@00))
  :qid |quant-u-604|)))
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
; [eval] (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_(self), read$()) in (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_(other), read$()) in u8$$memory_eq$$__$TY$__u8$u8$$bool$(self.f$0, other.f$0)))
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_%trigger ($Snap.first s@$) self@58@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@58@00 $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_(other), read$()) in u8$$memory_eq$$__$TY$__u8$u8$$bool$(self.f$0, other.f$0))
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_%trigger ($Snap.second s@$) other@59@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= self@58@00 other@59@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@59@00 $Ref.null))))
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
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] u8$$memory_eq$$__$TY$__u8$u8$$bool$(self.f$0, other.f$0)
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
(assert (u8$$memory_eq$$__$TY$__u8$u8$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 4
; Joined path conditions
(assert (u8$$memory_eq$$__$TY$__u8$u8$$bool$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 3
; Joined path conditions
(assert (and
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_%trigger ($Snap.second s@$) other@59@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@59@00 $Ref.null)))
  (u8$$memory_eq$$__$TY$__u8$u8$$bool$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 2
; Joined path conditions
(assert (and
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_%trigger ($Snap.first s@$) self@58@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@58@00 $Ref.null)))
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_%trigger ($Snap.second s@$) other@59@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= other@59@00 $Ref.null)))
  (u8$$memory_eq$$__$TY$__u8$u8$$bool$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(assert (=
  result@60@00
  (u8$$memory_eq$$__$TY$__u8$u8$$bool$ ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@58@00 $Ref) (other@59@00 $Ref)) (!
  (=>
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$%precondition s@$ self@58@00 other@59@00)
    (=
      (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$ s@$ self@58@00 other@59@00)
      (u8$$memory_eq$$__$TY$__u8$u8$$bool$ ($Snap.combine
        ($Snap.second ($Snap.first s@$))
        ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$ s@$ self@58@00 other@59@00))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$%stateless self@58@00 other@59@00) (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_%trigger ($Snap.first s@$) self@58@00))
  :qid |quant-u-646|)))
(assert (forall ((s@$ $Snap) (self@58@00 $Ref) (other@59@00 $Ref)) (!
  (=>
    (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$%precondition s@$ self@58@00 other@59@00)
    (u8$$memory_eq$$__$TY$__u8$u8$$bool$%precondition ($Snap.combine
      ($Snap.second ($Snap.first s@$))
      ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
  :pattern ((m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$ s@$ self@58@00 other@59@00))
  :qid |quant-u-647|)))
; ---------- DeadBorrowToken$ ----------
(declare-const borrow@62@00 Int)
; ---------- __TYPARAM__$T$__ ----------
(declare-const self@63@00 $Ref)
; ---------- i16 ----------
(declare-const self@64@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@65@00 Int)
(assert (not (= self@64@00 $Ref.null)))
(pop) ; 1
; ---------- i32 ----------
(declare-const self@66@00 $Ref)
(push) ; 1
(declare-const $t@67@00 Int)
(assert (not (= self@66@00 $Ref.null)))
(pop) ; 1
; ---------- i64 ----------
(declare-const self@68@00 $Ref)
(push) ; 1
(declare-const $t@69@00 Int)
(assert (not (= self@68@00 $Ref.null)))
(pop) ; 1
; ---------- i8 ----------
(declare-const self@70@00 $Ref)
(push) ; 1
(declare-const $t@71@00 Int)
(assert (not (= self@70@00 $Ref.null)))
(pop) ; 1
; ---------- isize ----------
(declare-const self@72@00 $Ref)
(push) ; 1
(declare-const $t@73@00 Int)
(assert (not (= self@72@00 $Ref.null)))
(pop) ; 1
; ---------- m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_ ----------
(declare-const self@74@00 $Ref)
(push) ; 1
(declare-const $t@75@00 $Snap)
(assert (= $t@75@00 ($Snap.combine ($Snap.first $t@75@00) ($Snap.second $t@75@00))))
(assert (not (= self@74@00 $Ref.null)))
(pop) ; 1
; ---------- m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_ ----------
(declare-const self@76@00 $Ref)
(push) ; 1
(declare-const $t@77@00 $Snap)
(assert (= $t@77@00 ($Snap.combine ($Snap.first $t@77@00) ($Snap.second $t@77@00))))
(assert (not (= self@76@00 $Ref.null)))
(pop) ; 1
; ---------- m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_ ----------
(declare-const self@78@00 $Ref)
(push) ; 1
(declare-const $t@79@00 $Snap)
(assert (= $t@79@00 ($Snap.combine ($Snap.first $t@79@00) ($Snap.second $t@79@00))))
(assert (not (= self@78@00 $Ref.null)))
(pop) ; 1
; ---------- m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_ ----------
(declare-const self@80@00 $Ref)
(push) ; 1
(declare-const $t@81@00 $Snap)
(assert (= $t@81@00 ($Snap.combine ($Snap.first $t@81@00) ($Snap.second $t@81@00))))
(assert (not (= self@80@00 $Ref.null)))
(pop) ; 1
; ---------- m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_ ----------
(declare-const self@82@00 $Ref)
(push) ; 1
(declare-const $t@83@00 $Snap)
(assert (= $t@83@00 ($Snap.combine ($Snap.first $t@83@00) ($Snap.second $t@83@00))))
(assert (not (= self@82@00 $Ref.null)))
(pop) ; 1
; ---------- m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_ ----------
(declare-const self@84@00 $Ref)
(push) ; 1
(declare-const $t@85@00 $Snap)
(assert (= $t@85@00 ($Snap.combine ($Snap.first $t@85@00) ($Snap.second $t@85@00))))
(assert (not (= self@84@00 $Ref.null)))
(pop) ; 1
; ---------- m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_ ----------
(declare-const self@86@00 $Ref)
(push) ; 1
(declare-const $t@87@00 $Snap)
(assert (= $t@87@00 ($Snap.combine ($Snap.first $t@87@00) ($Snap.second $t@87@00))))
(assert (not (= self@86@00 $Ref.null)))
(pop) ; 1
; ---------- m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_ ----------
(declare-const self@88@00 $Ref)
(push) ; 1
(declare-const $t@89@00 $Snap)
(assert (= $t@89@00 ($Snap.combine ($Snap.first $t@89@00) ($Snap.second $t@89@00))))
(assert (not (= self@88@00 $Ref.null)))
(pop) ; 1
; ---------- m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_ ----------
(declare-const self@90@00 $Ref)
(push) ; 1
(declare-const $t@91@00 $Snap)
(assert (= $t@91@00 ($Snap.combine ($Snap.first $t@91@00) ($Snap.second $t@91@00))))
(assert (not (= self@90@00 $Ref.null)))
(pop) ; 1
; ---------- m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_ ----------
(declare-const self@92@00 $Ref)
(push) ; 1
(declare-const $t@93@00 $Snap)
(assert (= $t@93@00 ($Snap.combine ($Snap.first $t@93@00) ($Snap.second $t@93@00))))
(assert (not (= self@92@00 $Ref.null)))
(pop) ; 1
; ---------- m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_ ----------
(declare-const self@94@00 $Ref)
(push) ; 1
(declare-const $t@95@00 $Snap)
(assert (= $t@95@00 ($Snap.combine ($Snap.first $t@95@00) ($Snap.second $t@95@00))))
(assert (not (= self@94@00 $Ref.null)))
(pop) ; 1
; ---------- tuple0$ ----------
(declare-const self@96@00 $Ref)
(push) ; 1
(declare-const $t@97@00 $Snap)
(assert (= $t@97@00 $Snap.unit))
(pop) ; 1
; ---------- u16 ----------
(declare-const self@98@00 $Ref)
(push) ; 1
(declare-const $t@99@00 $Snap)
(assert (= $t@99@00 ($Snap.combine ($Snap.first $t@99@00) ($Snap.second $t@99@00))))
(assert (not (= self@98@00 $Ref.null)))
(assert (= ($Snap.second $t@99@00) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@99@00))))
(pop) ; 1
; ---------- u32 ----------
(declare-const self@100@00 $Ref)
(push) ; 1
(declare-const $t@101@00 $Snap)
(assert (= $t@101@00 ($Snap.combine ($Snap.first $t@101@00) ($Snap.second $t@101@00))))
(assert (not (= self@100@00 $Ref.null)))
(assert (= ($Snap.second $t@101@00) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@101@00))))
(pop) ; 1
; ---------- u64 ----------
(declare-const self@102@00 $Ref)
(push) ; 1
(declare-const $t@103@00 $Snap)
(assert (= $t@103@00 ($Snap.combine ($Snap.first $t@103@00) ($Snap.second $t@103@00))))
(assert (not (= self@102@00 $Ref.null)))
(assert (= ($Snap.second $t@103@00) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@103@00))))
(pop) ; 1
; ---------- u8 ----------
(declare-const self@104@00 $Ref)
(push) ; 1
(declare-const $t@105@00 $Snap)
(assert (= $t@105@00 ($Snap.combine ($Snap.first $t@105@00) ($Snap.second $t@105@00))))
(assert (not (= self@104@00 $Ref.null)))
(assert (= ($Snap.second $t@105@00) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@105@00))))
(pop) ; 1
; ---------- usize ----------
(declare-const self@106@00 $Ref)
(push) ; 1
(declare-const $t@107@00 $Snap)
(assert (= $t@107@00 ($Snap.combine ($Snap.first $t@107@00) ($Snap.second $t@107@00))))
(assert (not (= self@106@00 $Ref.null)))
(assert (= ($Snap.second $t@107@00) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@107@00))))
(pop) ; 1
