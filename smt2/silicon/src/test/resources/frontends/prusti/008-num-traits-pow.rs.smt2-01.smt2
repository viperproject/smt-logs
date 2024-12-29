(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-29 19:50:03
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
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
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
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$110$closesqu$$$pow$opensqu$0$closesqu$ ----------
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
; var _1: Ref
(declare-const _1@5@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@6@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@7@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@8@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@9@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(u8(_1), write) && acc(u32(_2), write)
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 ($Snap.combine ($Snap.first $t@10@01) ($Snap.second $t@10@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@11@01 $Snap)
(assert (= $t@11@01 $Snap.unit))
; State saturation: after inhale
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
; label pre
; [exec]
; label bb0
; [exec]
; __t0 := true
; [exec]
; _3 := builtin$havoc_ref()
(declare-const ret@14@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@15@01 Int)
(assert (not (= ret@14@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_1), write)
(assert (=
  ($Snap.first $t@10@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@10@01))
    ($Snap.second ($Snap.first $t@10@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@14@01 _1@5@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@5@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.first $t@10@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@10@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.first $t@10@01) _1@5@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@16@01 Int)
(assert (= val_int@16@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@10@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@5@01 ret@14@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@17@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@18@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@14@01 ret@17@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@5@01 ret@17@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@17@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u32(_2), write)
(assert (=
  ($Snap.second $t@10@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@10@01))
    ($Snap.second ($Snap.second $t@10@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@17@01 _2@6@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@14@01 _2@6@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@5@01 _2@6@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@6@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@10@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@10@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u32%trigger ($Snap.second $t@10@01) _2@6@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@19@01 Int)
(assert (=
  val_int@19@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@10@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@6@01 ret@17@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@14@01 ret@17@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@5@01 ret@17@01)))
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
; fold acc(u32(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@19@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@19@01))
(assert (u32%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@19@01) $Snap.unit) ret@17@01))
; [exec]
; assert true
; [exec]
; exhale acc(u32(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@20@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@21@01 $Snap)
(assert (= $t@21@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@22@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@23@01 $Snap)
(assert (= $t@23@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@24@01 $Snap)
(assert (= $t@24@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(u8(_3), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@16@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@16@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@16@01) $Snap.unit) ret@14@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@25@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@26@01 $Snap)
(assert (= $t@26@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u8(_0), write)
(declare-const $t@27@01 $Snap)
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
; inhale true
(declare-const $t@29@01 $Snap)
(assert (= $t@29@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(u8(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$17$closesqu$$$one$opensqu$0$closesqu$ ----------
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
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@33@01 $Snap)
(assert (= $t@33@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@34@01 $Snap)
(assert (= $t@34@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@35@01 $Snap)
(assert (= $t@35@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@36@01 $Snap)
(assert (= $t@36@01 $Snap.unit))
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
(declare-const ret@37@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_int, write)
(declare-const $t@38@01 Int)
(assert (not (= ret@37@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_int := 1
; [exec]
; label return
; [exec]
; fold acc(isize(_0), write)
(assert (isize%trigger ($SortWrappers.IntTo$Snap 1) ret@37@01))
; [exec]
; assert true
; [exec]
; exhale acc(isize(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$126$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@39@01 $Ref)
(declare-const _0@40@01 $Ref)
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
(declare-const __t0@41@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@42@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@43@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@44@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@45@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@46@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@47@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@48@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(i8(_1), write) && acc(u32(_2), write)
(declare-const $t@49@01 $Snap)
(assert (= $t@49@01 ($Snap.combine ($Snap.first $t@49@01) ($Snap.second $t@49@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@50@01 $Snap)
(assert (= $t@50@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@51@01 $Snap)
(assert (= $t@51@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@52@01 $Snap)
(assert (= $t@52@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@53@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@54@01 Int)
(assert (not (= ret@53@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(i8(_1), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@53@01 _1@44@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@44@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (i8%trigger ($Snap.first $t@49@01) _1@44@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@55@01 Int)
(assert (= val_int@55@01 ($SortWrappers.$SnapToInt ($Snap.first $t@49@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@44@01 ret@53@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@56@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@57@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@53@01 ret@56@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@44@01 ret@56@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@56@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u32(_2), write)
(assert (=
  ($Snap.second $t@49@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@49@01))
    ($Snap.second ($Snap.second $t@49@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@56@01 _2@45@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@53@01 _2@45@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@44@01 _2@45@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@45@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@49@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@49@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u32%trigger ($Snap.second $t@49@01) _2@45@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@58@01 Int)
(assert (=
  val_int@58@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@49@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@45@01 ret@56@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@53@01 ret@56@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@44@01 ret@56@01)))
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
; fold acc(u32(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@58@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@58@01))
(assert (u32%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@58@01) $Snap.unit) ret@56@01))
; [exec]
; assert true
; [exec]
; exhale acc(u32(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@59@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@60@01 $Snap)
(assert (= $t@60@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@61@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@62@01 $Snap)
(assert (= $t@62@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@63@01 $Snap)
(assert (= $t@63@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(i8(_3), write)
(assert (i8%trigger ($SortWrappers.IntTo$Snap val_int@55@01) ret@53@01))
; [exec]
; assert true
; [exec]
; exhale acc(i8(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@64@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@65@01 $Snap)
(assert (= $t@65@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(i8(_0), write)
(declare-const $t@66@01 Int)
; State saturation: after inhale
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
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(i8(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$9$closesqu$$$zero$opensqu$0$closesqu$ ----------
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
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@72@01 $Snap)
(assert (= $t@72@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@73@01 $Snap)
(assert (= $t@73@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@74@01 $Snap)
(assert (= $t@74@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@75@01 $Snap)
(assert (= $t@75@01 $Snap.unit))
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
(declare-const ret@76@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_int, write)
(declare-const $t@77@01 Int)
(assert (not (= ret@76@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_int := 0
; [exec]
; label return
; [exec]
; fold acc(i16(_0), write)
(assert (i16%trigger ($SortWrappers.IntTo$Snap 0) ret@76@01))
; [exec]
; assert true
; [exec]
; exhale acc(i16(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$330$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@78@01 $Ref)
(declare-const _0@79@01 $Ref)
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
(declare-const __t0@80@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@81@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@82@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@83@01 $Ref)
; [exec]
; var _2: Int
(declare-const _2@84@01 Int)
; [exec]
; var _3: Ref
(declare-const _3@85@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@86@01 Int)
; [exec]
; var _5: Int
(declare-const _5@87@01 Int)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_(_1), write) &&
;   _2 >= 0
(declare-const $t@88@01 $Snap)
(assert (= $t@88@01 ($Snap.combine ($Snap.first $t@88@01) ($Snap.second $t@88@01))))
(assert (= ($Snap.second $t@88@01) $Snap.unit))
; [eval] _2 >= 0
(assert (>= _2@84@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@89@01 $Snap)
(assert (= $t@89@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@90@01 $Snap)
(assert (= $t@90@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@91@01 $Snap)
(assert (= $t@91@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@92@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_(_3), write)
(declare-const $t@93@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@83@01 ret@92@01)))
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
; inhale m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$(_1,
;   _3)
(declare-const $t@94@01 $Snap)
(assert (= $t@94@01 $Snap.unit))
; [eval] m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$(_1, _3)
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
; [eval] read$()
(set-option :timeout 0)
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first $t@88@01)
  $t@93@01) _1@83@01 ret@92@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$%precondition ($Snap.combine
    ($Snap.first $t@88@01)
    $t@93@01) _1@83@01 ret@92@01)))
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$ ($Snap.combine
  ($Snap.first $t@88@01)
  $t@93@01) _1@83@01 ret@92@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_int()
(declare-const ret@95@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@96@01 $Snap)
(assert (= $t@96@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _2 >= 0
(declare-const $t@97@01 $Snap)
(assert (= $t@97@01 $Snap.unit))
; [eval] _2 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5 := _2
; [exec]
; label l1
; [exec]
; label l2
; [exec]
; assert _5 >= 0
; [eval] _5 >= 0
; [exec]
; assert true
; [exec]
; exhale _5 >= 0
; [eval] _5 >= 0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@98@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@99@01 $Snap)
(assert (= $t@99@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@100@01 $Snap)
(assert (= $t@100@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@98@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@101@01 $Snap)
(assert (= $t@101@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@102@01 $Snap)
(assert (= $t@102@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_(_3), write) &&
;   _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@103@01 $Ref)
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
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_(_0), write)
(declare-const $t@105@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@83@01 ret@103@01)))
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
(declare-const $t@106@01 $Snap)
(assert (= $t@106@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@107@01 $Snap)
(assert (= $t@107@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$326$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@108@01 $Ref)
(declare-const _0@109@01 $Ref)
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
(declare-const __t0@110@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@111@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@112@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@113@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@114@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@115@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@116@01 Int)
; [exec]
; var _5: Ref
(declare-const _5@117@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_(_1), write) &&
;   acc(u8(_2), write)
(declare-const $t@118@01 $Snap)
(assert (= $t@118@01 ($Snap.combine ($Snap.first $t@118@01) ($Snap.second $t@118@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@119@01 $Snap)
(assert (= $t@119@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@120@01 $Snap)
(assert (= $t@120@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@121@01 $Snap)
(assert (= $t@121@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@122@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_(_3), write)
(declare-const $t@123@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@113@01 ret@122@01)))
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
; inhale m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$(_1,
;   _3)
(declare-const $t@124@01 $Snap)
(assert (= $t@124@01 $Snap.unit))
; [eval] m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$(_1, _3)
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
; [eval] read$()
(set-option :timeout 0)
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first $t@118@01)
  $t@123@01) _1@113@01 ret@122@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$%precondition ($Snap.combine
    ($Snap.first $t@118@01)
    $t@123@01) _1@113@01 ret@122@01)))
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_$$bool$ ($Snap.combine
  ($Snap.first $t@118@01)
  $t@123@01) _1@113@01 ret@122@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@125@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@126@01 Int)
(assert (not (= ret@125@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_2), write)
(assert (=
  ($Snap.second $t@118@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@118@01))
    ($Snap.second ($Snap.second $t@118@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@125@01 _2@114@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@114@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@118@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@118@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.second $t@118@01) _2@114@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@127@01 Int)
(assert (=
  val_int@127@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@118@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@114@01 ret@125@01)))
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
; fold acc(u8(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@127@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@127@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@127@01) $Snap.unit) ret@125@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_5), write)
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@128@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@129@01 $Snap)
(assert (= $t@129@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@130@01 $Snap)
(assert (= $t@130@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@128@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@131@01 $Snap)
(assert (= $t@131@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@132@01 $Snap)
(assert (= $t@132@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_(_3), write) &&
;   _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@133@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@134@01 $Snap)
(assert (= $t@134@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_(_0), write)
(declare-const $t@135@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@113@01 ret@133@01)))
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
(declare-const $t@136@01 $Snap)
(assert (= $t@136@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@137@01 $Snap)
(assert (= $t@137@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$usize$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$234$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@138@01 $Ref)
(declare-const _0@139@01 $Ref)
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
(declare-const __t0@140@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@141@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@142@01 Bool)
; [exec]
; var _1: Int
(declare-const _1@143@01 Int)
; [exec]
; var _2: Ref
(declare-const _2@144@01 $Ref)
; [exec]
; var _3: Int
(declare-const _3@145@01 Int)
; [exec]
; var _4: Ref
(declare-const _4@146@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@147@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale _1 >= 0 && acc(u16(_2), write)
(declare-const $t@148@01 $Snap)
(assert (= $t@148@01 ($Snap.combine ($Snap.first $t@148@01) ($Snap.second $t@148@01))))
(assert (= ($Snap.first $t@148@01) $Snap.unit))
; [eval] _1 >= 0
(assert (>= _1@143@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@149@01 $Snap)
(assert (= $t@149@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@150@01 $Snap)
(assert (= $t@150@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@151@01 $Snap)
(assert (= $t@151@01 $Snap.unit))
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
(declare-const ret@152@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@153@01 $Snap)
(assert (= $t@153@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _1 >= 0
(declare-const $t@154@01 $Snap)
(assert (= $t@154@01 $Snap.unit))
; [eval] _1 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _3 := _1
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@155@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@156@01 Int)
(assert (not (= ret@155@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u16(_2), write)
(assert (=
  ($Snap.second $t@148@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@148@01))
    ($Snap.second ($Snap.second $t@148@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@155@01 _2@144@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@144@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@148@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@148@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u16%trigger ($Snap.second $t@148@01) _2@144@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@157@01 Int)
(assert (=
  val_int@157@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@148@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@144@01 ret@155@01)))
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
; fold acc(u16(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@157@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@157@01))
(assert (u16%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@157@01) $Snap.unit) ret@155@01))
; [exec]
; assert true
; [exec]
; exhale acc(u16(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@158@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@159@01 $Snap)
(assert (= $t@159@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@160@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@161@01 $Snap)
(assert (= $t@161@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@162@01 $Snap)
(assert (= $t@162@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert _3 >= 0
; [eval] _3 >= 0
; [exec]
; assert true
; [exec]
; exhale _3 >= 0 && acc(u32(_4), write)
; [eval] _3 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@163@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@164@01 $Snap)
(assert (= $t@164@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(usize(_0), write)
(declare-const $t@165@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@166@01 $Snap)
(assert (= $t@166@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@167@01 $Snap)
(assert (= $t@167@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(usize(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$322$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@168@01 $Ref)
(declare-const _0@169@01 $Ref)
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
(declare-const __t0@170@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@171@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@172@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@173@01 $Ref)
; [exec]
; var _2: Int
(declare-const _2@174@01 Int)
; [exec]
; var _3: Ref
(declare-const _3@175@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@176@01 Int)
; [exec]
; var _5: Int
(declare-const _5@177@01 Int)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_(_1), write) &&
;   _2 >= 0
(declare-const $t@178@01 $Snap)
(assert (= $t@178@01 ($Snap.combine ($Snap.first $t@178@01) ($Snap.second $t@178@01))))
(assert (= ($Snap.second $t@178@01) $Snap.unit))
; [eval] _2 >= 0
(assert (>= _2@174@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@179@01 $Snap)
(assert (= $t@179@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@180@01 $Snap)
(assert (= $t@180@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@181@01 $Snap)
(assert (= $t@181@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@182@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_(_3), write)
(declare-const $t@183@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@173@01 ret@182@01)))
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
; inhale m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$(_1,
;   _3)
(declare-const $t@184@01 $Snap)
(assert (= $t@184@01 $Snap.unit))
; [eval] m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$(_1, _3)
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
; [eval] read$()
(set-option :timeout 0)
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first $t@178@01)
  $t@183@01) _1@173@01 ret@182@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$%precondition ($Snap.combine
    ($Snap.first $t@178@01)
    $t@183@01) _1@173@01 ret@182@01)))
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$ ($Snap.combine
  ($Snap.first $t@178@01)
  $t@183@01) _1@173@01 ret@182@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_int()
(declare-const ret@185@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@186@01 $Snap)
(assert (= $t@186@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _2 >= 0
(declare-const $t@187@01 $Snap)
(assert (= $t@187@01 $Snap.unit))
; [eval] _2 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5 := _2
; [exec]
; label l1
; [exec]
; label l2
; [exec]
; assert _5 >= 0
; [eval] _5 >= 0
; [exec]
; assert true
; [exec]
; exhale _5 >= 0
; [eval] _5 >= 0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@188@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@189@01 $Snap)
(assert (= $t@189@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@190@01 $Snap)
(assert (= $t@190@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@188@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@191@01 $Snap)
(assert (= $t@191@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@192@01 $Snap)
(assert (= $t@192@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_(_3), write) &&
;   _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@193@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@194@01 $Snap)
(assert (= $t@194@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_(_0), write)
(declare-const $t@195@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@173@01 ret@193@01)))
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
(declare-const $t@196@01 $Snap)
(assert (= $t@196@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@197@01 $Snap)
(assert (= $t@197@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$118$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@198@01 $Ref)
(declare-const _0@199@01 $Ref)
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
(declare-const __t0@200@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@201@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@202@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@203@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@204@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@205@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@206@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@207@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(i8(_1), write) && acc(u8(_2), write)
(declare-const $t@208@01 $Snap)
(assert (= $t@208@01 ($Snap.combine ($Snap.first $t@208@01) ($Snap.second $t@208@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@209@01 $Snap)
(assert (= $t@209@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@210@01 $Snap)
(assert (= $t@210@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@211@01 $Snap)
(assert (= $t@211@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@212@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@213@01 Int)
(assert (not (= ret@212@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(i8(_1), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@212@01 _1@203@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@203@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (i8%trigger ($Snap.first $t@208@01) _1@203@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@214@01 Int)
(assert (= val_int@214@01 ($SortWrappers.$SnapToInt ($Snap.first $t@208@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@203@01 ret@212@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@215@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@216@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@212@01 ret@215@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@203@01 ret@215@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@215@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_2), write)
(assert (=
  ($Snap.second $t@208@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@208@01))
    ($Snap.second ($Snap.second $t@208@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@215@01 _2@204@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@212@01 _2@204@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@203@01 _2@204@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@204@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@208@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@208@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.second $t@208@01) _2@204@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@217@01 Int)
(assert (=
  val_int@217@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@208@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@204@01 ret@215@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@212@01 ret@215@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@203@01 ret@215@01)))
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
; fold acc(u8(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@217@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@217@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@217@01) $Snap.unit) ret@215@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@218@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@219@01 $Snap)
(assert (= $t@219@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@220@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@221@01 $Snap)
(assert (= $t@221@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@222@01 $Snap)
(assert (= $t@222@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(i8(_3), write)
(assert (i8%trigger ($SortWrappers.IntTo$Snap val_int@214@01) ret@212@01))
; [exec]
; assert true
; [exec]
; exhale acc(i8(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@223@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@224@01 $Snap)
(assert (= $t@224@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(i8(_0), write)
(declare-const $t@225@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@226@01 $Snap)
(assert (= $t@226@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@227@01 $Snap)
(assert (= $t@227@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(i8(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$20$closesqu$$$one$opensqu$0$closesqu$ ----------
(declare-const _0@228@01 $Ref)
(declare-const _0@229@01 $Ref)
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
(declare-const __t0@230@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@231@01 $Snap)
(assert (= $t@231@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@232@01 $Snap)
(assert (= $t@232@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@233@01 $Snap)
(assert (= $t@233@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@234@01 $Snap)
(assert (= $t@234@01 $Snap.unit))
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
(declare-const ret@235@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_int, write)
(declare-const $t@236@01 Int)
(assert (not (= ret@235@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_int := 1
; [exec]
; label return
; [exec]
; fold acc(i32(_0), write)
(assert (i32%trigger ($SortWrappers.IntTo$Snap 1) ret@235@01))
; [exec]
; assert true
; [exec]
; exhale acc(i32(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$226$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@237@01 $Ref)
(declare-const _0@238@01 $Ref)
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
(declare-const __t0@239@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@240@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@241@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@242@01 $Ref)
; [exec]
; var _2: Int
(declare-const _2@243@01 Int)
; [exec]
; var _3: Ref
(declare-const _3@244@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@245@01 Int)
; [exec]
; var _5: Int
(declare-const _5@246@01 Int)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(i64(_1), write) && _2 >= 0
(declare-const $t@247@01 $Snap)
(assert (= $t@247@01 ($Snap.combine ($Snap.first $t@247@01) ($Snap.second $t@247@01))))
(assert (= ($Snap.second $t@247@01) $Snap.unit))
; [eval] _2 >= 0
(assert (>= _2@243@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@248@01 $Snap)
(assert (= $t@248@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@249@01 $Snap)
(assert (= $t@249@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@250@01 $Snap)
(assert (= $t@250@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@251@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@252@01 Int)
(assert (not (= ret@251@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(i64(_1), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@251@01 _1@242@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@242@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (i64%trigger ($Snap.first $t@247@01) _1@242@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@253@01 Int)
(assert (= val_int@253@01 ($SortWrappers.$SnapToInt ($Snap.first $t@247@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@242@01 ret@251@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_int()
(declare-const ret@254@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@255@01 $Snap)
(assert (= $t@255@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _2 >= 0
(declare-const $t@256@01 $Snap)
(assert (= $t@256@01 $Snap.unit))
; [eval] _2 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5 := _2
; [exec]
; label l1
; [exec]
; label l2
; [exec]
; assert _5 >= 0
; [eval] _5 >= 0
; [exec]
; assert true
; [exec]
; exhale _5 >= 0
; [eval] _5 >= 0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@257@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@258@01 $Snap)
(assert (= $t@258@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@259@01 $Snap)
(assert (= $t@259@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@257@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@260@01 $Snap)
(assert (= $t@260@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@261@01 $Snap)
(assert (= $t@261@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(i64(_3), write)
(assert (i64%trigger ($SortWrappers.IntTo$Snap val_int@253@01) ret@251@01))
; [exec]
; assert true
; [exec]
; exhale acc(i64(_3), write) && _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@262@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@263@01 $Snap)
(assert (= $t@263@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(i64(_0), write)
(declare-const $t@264@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@265@01 $Snap)
(assert (= $t@265@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@266@01 $Snap)
(assert (= $t@266@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(i64(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$254$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@267@01 $Ref)
(declare-const _0@268@01 $Ref)
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
(declare-const __t0@269@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@270@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@271@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@272@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@273@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@274@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@275@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@276@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(isize(_1), write) && acc(u32(_2), write)
(declare-const $t@277@01 $Snap)
(assert (= $t@277@01 ($Snap.combine ($Snap.first $t@277@01) ($Snap.second $t@277@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@278@01 $Snap)
(assert (= $t@278@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@279@01 $Snap)
(assert (= $t@279@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@280@01 $Snap)
(assert (= $t@280@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@281@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@282@01 Int)
(assert (not (= ret@281@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(isize(_1), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@281@01 _1@272@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@272@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (isize%trigger ($Snap.first $t@277@01) _1@272@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@283@01 Int)
(assert (= val_int@283@01 ($SortWrappers.$SnapToInt ($Snap.first $t@277@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@272@01 ret@281@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@284@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@285@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@281@01 ret@284@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@272@01 ret@284@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@284@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u32(_2), write)
(assert (=
  ($Snap.second $t@277@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@277@01))
    ($Snap.second ($Snap.second $t@277@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@284@01 _2@273@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@281@01 _2@273@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@272@01 _2@273@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@273@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@277@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@277@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u32%trigger ($Snap.second $t@277@01) _2@273@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@286@01 Int)
(assert (=
  val_int@286@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@277@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@273@01 ret@284@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@281@01 ret@284@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@272@01 ret@284@01)))
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
; fold acc(u32(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@286@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@286@01))
(assert (u32%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@286@01) $Snap.unit) ret@284@01))
; [exec]
; assert true
; [exec]
; exhale acc(u32(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@287@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@288@01 $Snap)
(assert (= $t@288@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@289@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@290@01 $Snap)
(assert (= $t@290@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@291@01 $Snap)
(assert (= $t@291@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(isize(_3), write)
(assert (isize%trigger ($SortWrappers.IntTo$Snap val_int@283@01) ret@281@01))
; [exec]
; assert true
; [exec]
; exhale acc(isize(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@292@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@293@01 $Snap)
(assert (= $t@293@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(isize(_0), write)
(declare-const $t@294@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@295@01 $Snap)
(assert (= $t@295@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@296@01 $Snap)
(assert (= $t@296@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(isize(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$2$closesqu$$$zero$opensqu$0$closesqu$ ----------
(declare-const _0@297@01 $Ref)
(declare-const _0@298@01 $Ref)
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
(declare-const __t0@299@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@300@01 $Snap)
(assert (= $t@300@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@301@01 $Snap)
(assert (= $t@301@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@302@01 $Snap)
(assert (= $t@302@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@303@01 $Snap)
(assert (= $t@303@01 $Snap.unit))
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
(declare-const ret@304@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_int, write)
(declare-const $t@305@01 Int)
(assert (not (= ret@304@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_int := 0
; [exec]
; label return
; [exec]
; fold acc(usize(_0), write)
; [eval] 0 <= self.val_int
(assert (usize%trigger ($Snap.combine ($SortWrappers.IntTo$Snap 0) $Snap.unit) ret@304@01))
; [exec]
; assert true
; [exec]
; exhale acc(usize(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$282$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@306@01 $Ref)
(declare-const _0@307@01 $Ref)
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
(declare-const __t0@308@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@309@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@310@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@311@01 $Ref)
; [exec]
; var _2: Int
(declare-const _2@312@01 Int)
; [exec]
; var _3: Ref
(declare-const _3@313@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@314@01 Int)
; [exec]
; var _5: Int
(declare-const _5@315@01 Int)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_(_1), write) &&
;   _2 >= 0
(declare-const $t@316@01 $Snap)
(assert (= $t@316@01 ($Snap.combine ($Snap.first $t@316@01) ($Snap.second $t@316@01))))
(assert (= ($Snap.second $t@316@01) $Snap.unit))
; [eval] _2 >= 0
(assert (>= _2@312@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@317@01 $Snap)
(assert (= $t@317@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@318@01 $Snap)
(assert (= $t@318@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@319@01 $Snap)
(assert (= $t@319@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@320@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_(_3), write)
(declare-const $t@321@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@320@01)))
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
; inhale m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$(_1,
;   _3)
(declare-const $t@322@01 $Snap)
(assert (= $t@322@01 $Snap.unit))
; [eval] m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$(_1, _3)
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
; [eval] read$()
(set-option :timeout 0)
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first $t@316@01)
  $t@321@01) _1@311@01 ret@320@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$%precondition ($Snap.combine
    ($Snap.first $t@316@01)
    $t@321@01) _1@311@01 ret@320@01)))
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$ ($Snap.combine
  ($Snap.first $t@316@01)
  $t@321@01) _1@311@01 ret@320@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_int()
(declare-const ret@323@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@324@01 $Snap)
(assert (= $t@324@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _2 >= 0
(declare-const $t@325@01 $Snap)
(assert (= $t@325@01 $Snap.unit))
; [eval] _2 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5 := _2
; [exec]
; label l1
; [exec]
; label l2
; [exec]
; assert _5 >= 0
; [eval] _5 >= 0
; [exec]
; assert true
; [exec]
; exhale _5 >= 0
; [eval] _5 >= 0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@326@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@327@01 $Snap)
(assert (= $t@327@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@328@01 $Snap)
(assert (= $t@328@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@326@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@329@01 $Snap)
(assert (= $t@329@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@330@01 $Snap)
(assert (= $t@330@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_(_3), write) &&
;   _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@331@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@332@01 $Snap)
(assert (= $t@332@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_(_0), write)
(declare-const $t@333@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@331@01)))
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
(declare-const $t@334@01 $Snap)
(assert (= $t@334@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@335@01 $Snap)
(assert (= $t@335@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$218$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@336@01 $Ref)
(declare-const _0@337@01 $Ref)
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
(declare-const __t0@338@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@339@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@340@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@341@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@342@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@343@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@344@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@345@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(i64(_1), write) && acc(u16(_2), write)
(declare-const $t@346@01 $Snap)
(assert (= $t@346@01 ($Snap.combine ($Snap.first $t@346@01) ($Snap.second $t@346@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@347@01 $Snap)
(assert (= $t@347@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@348@01 $Snap)
(assert (= $t@348@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@349@01 $Snap)
(assert (= $t@349@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@350@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@351@01 Int)
(assert (not (= ret@350@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(i64(_1), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@350@01 _1@341@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@341@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (i64%trigger ($Snap.first $t@346@01) _1@341@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@352@01 Int)
(assert (= val_int@352@01 ($SortWrappers.$SnapToInt ($Snap.first $t@346@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@341@01 ret@350@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@353@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@354@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@350@01 ret@353@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@341@01 ret@353@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@353@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u16(_2), write)
(assert (=
  ($Snap.second $t@346@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@346@01))
    ($Snap.second ($Snap.second $t@346@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@353@01 _2@342@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@350@01 _2@342@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@341@01 _2@342@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@342@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@346@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@346@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u16%trigger ($Snap.second $t@346@01) _2@342@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@355@01 Int)
(assert (=
  val_int@355@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@346@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@342@01 ret@353@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@350@01 ret@353@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@341@01 ret@353@01)))
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
; fold acc(u16(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@355@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@355@01))
(assert (u16%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@355@01) $Snap.unit) ret@353@01))
; [exec]
; assert true
; [exec]
; exhale acc(u16(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@356@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@357@01 $Snap)
(assert (= $t@357@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@358@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@359@01 $Snap)
(assert (= $t@359@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@360@01 $Snap)
(assert (= $t@360@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(i64(_3), write)
(assert (i64%trigger ($SortWrappers.IntTo$Snap val_int@352@01) ret@350@01))
; [exec]
; assert true
; [exec]
; exhale acc(i64(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@361@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@362@01 $Snap)
(assert (= $t@362@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(i64(_0), write)
(declare-const $t@363@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@364@01 $Snap)
(assert (= $t@364@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@365@01 $Snap)
(assert (= $t@365@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(i64(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$114$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@366@01 $Ref)
(declare-const _0@367@01 $Ref)
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
(declare-const __t0@368@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@369@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@370@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@371@01 $Ref)
; [exec]
; var _2: Int
(declare-const _2@372@01 Int)
; [exec]
; var _3: Ref
(declare-const _3@373@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@374@01 Int)
; [exec]
; var _5: Int
(declare-const _5@375@01 Int)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(u8(_1), write) && _2 >= 0
(declare-const $t@376@01 $Snap)
(assert (= $t@376@01 ($Snap.combine ($Snap.first $t@376@01) ($Snap.second $t@376@01))))
(assert (= ($Snap.second $t@376@01) $Snap.unit))
; [eval] _2 >= 0
(assert (>= _2@372@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@377@01 $Snap)
(assert (= $t@377@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@378@01 $Snap)
(assert (= $t@378@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@379@01 $Snap)
(assert (= $t@379@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@380@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@381@01 Int)
(assert (not (= ret@380@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_1), write)
(assert (=
  ($Snap.first $t@376@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@376@01))
    ($Snap.second ($Snap.first $t@376@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@380@01 _1@371@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@371@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.first $t@376@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@376@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.first $t@376@01) _1@371@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@382@01 Int)
(assert (=
  val_int@382@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@376@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@371@01 ret@380@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_int()
(declare-const ret@383@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@384@01 $Snap)
(assert (= $t@384@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _2 >= 0
(declare-const $t@385@01 $Snap)
(assert (= $t@385@01 $Snap.unit))
; [eval] _2 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5 := _2
; [exec]
; label l1
; [exec]
; label l2
; [exec]
; assert _5 >= 0
; [eval] _5 >= 0
; [exec]
; assert true
; [exec]
; exhale _5 >= 0
; [eval] _5 >= 0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@386@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@387@01 $Snap)
(assert (= $t@387@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@388@01 $Snap)
(assert (= $t@388@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@386@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@389@01 $Snap)
(assert (= $t@389@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@390@01 $Snap)
(assert (= $t@390@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(u8(_3), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@382@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@382@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@382@01) $Snap.unit) ret@380@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_3), write) && _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@391@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@392@01 $Snap)
(assert (= $t@392@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u8(_0), write)
(declare-const $t@393@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@394@01 $Snap)
(assert (= $t@394@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@395@01 $Snap)
(assert (= $t@395@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(u8(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$166$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@396@01 $Ref)
(declare-const _0@397@01 $Ref)
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
(declare-const __t0@398@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@399@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@400@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@401@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@402@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@403@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@404@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@405@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(u32(_1), write) && acc(u8(_2), write)
(declare-const $t@406@01 $Snap)
(assert (= $t@406@01 ($Snap.combine ($Snap.first $t@406@01) ($Snap.second $t@406@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@407@01 $Snap)
(assert (= $t@407@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@408@01 $Snap)
(assert (= $t@408@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@409@01 $Snap)
(assert (= $t@409@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@410@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@411@01 Int)
(assert (not (= ret@410@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u32(_1), write)
(assert (=
  ($Snap.first $t@406@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@406@01))
    ($Snap.second ($Snap.first $t@406@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@410@01 _1@401@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@401@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.first $t@406@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@406@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u32%trigger ($Snap.first $t@406@01) _1@401@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@412@01 Int)
(assert (=
  val_int@412@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@406@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@401@01 ret@410@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@413@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@414@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@410@01 ret@413@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@401@01 ret@413@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@413@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_2), write)
(assert (=
  ($Snap.second $t@406@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@406@01))
    ($Snap.second ($Snap.second $t@406@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@413@01 _2@402@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@410@01 _2@402@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@401@01 _2@402@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@402@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@406@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@406@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.second $t@406@01) _2@402@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@415@01 Int)
(assert (=
  val_int@415@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@406@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@402@01 ret@413@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@410@01 ret@413@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@401@01 ret@413@01)))
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
; fold acc(u8(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@415@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@415@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@415@01) $Snap.unit) ret@413@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@416@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@417@01 $Snap)
(assert (= $t@417@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@418@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@419@01 $Snap)
(assert (= $t@419@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@420@01 $Snap)
(assert (= $t@420@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(u32(_3), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@412@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@412@01))
(assert (u32%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@412@01) $Snap.unit) ret@410@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@416@01 ret@410@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert true
; [exec]
; exhale acc(u32(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@421@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@422@01 $Snap)
(assert (= $t@422@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_0), write)
(declare-const $t@423@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@424@01 $Snap)
(assert (= $t@424@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@425@01 $Snap)
(assert (= $t@425@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(u32(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$7$closesqu$$$zero$opensqu$0$closesqu$ ----------
(declare-const _0@426@01 $Ref)
(declare-const _0@427@01 $Ref)
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
(declare-const __t0@428@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@429@01 $Snap)
(assert (= $t@429@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@430@01 $Snap)
(assert (= $t@430@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@431@01 $Snap)
(assert (= $t@431@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@432@01 $Snap)
(assert (= $t@432@01 $Snap.unit))
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
(declare-const ret@433@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_int, write)
(declare-const $t@434@01 Int)
(assert (not (= ret@433@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_int := 0
; [exec]
; label return
; [exec]
; fold acc(isize(_0), write)
(assert (isize%trigger ($SortWrappers.IntTo$Snap 0) ret@433@01))
; [exec]
; assert true
; [exec]
; exhale acc(isize(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$zero$opensqu$0$closesqu$ ----------
(declare-const _0@435@01 $Ref)
(declare-const _0@436@01 $Ref)
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
(declare-const __t0@437@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@438@01 $Snap)
(assert (= $t@438@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@439@01 $Snap)
(assert (= $t@439@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@440@01 $Snap)
(assert (= $t@440@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@441@01 $Snap)
(assert (= $t@441@01 $Snap.unit))
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
(declare-const ret@442@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_int, write)
(declare-const $t@443@01 Int)
(assert (not (= ret@442@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_int := 0
; [exec]
; label return
; [exec]
; fold acc(u16(_0), write)
; [eval] 0 <= self.val_int
(assert (u16%trigger ($Snap.combine ($SortWrappers.IntTo$Snap 0) $Snap.unit) ret@442@01))
; [exec]
; assert true
; [exec]
; exhale acc(u16(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$zero$opensqu$0$closesqu$ ----------
(declare-const _0@444@01 $Ref)
(declare-const _0@445@01 $Ref)
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
(declare-const __t0@446@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@447@01 $Snap)
(assert (= $t@447@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@448@01 $Snap)
(assert (= $t@448@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@449@01 $Snap)
(assert (= $t@449@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@450@01 $Snap)
(assert (= $t@450@01 $Snap.unit))
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
(declare-const ret@451@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_int, write)
(declare-const $t@452@01 Int)
(assert (not (= ret@451@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_int := 0
; [exec]
; label return
; [exec]
; fold acc(u8(_0), write)
; [eval] 0 <= self.val_int
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap 0) $Snap.unit) ret@451@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$178$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@453@01 $Ref)
(declare-const _0@454@01 $Ref)
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
(declare-const __t0@455@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@456@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@457@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@458@01 $Ref)
; [exec]
; var _2: Int
(declare-const _2@459@01 Int)
; [exec]
; var _3: Ref
(declare-const _3@460@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@461@01 Int)
; [exec]
; var _5: Int
(declare-const _5@462@01 Int)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(u32(_1), write) && _2 >= 0
(declare-const $t@463@01 $Snap)
(assert (= $t@463@01 ($Snap.combine ($Snap.first $t@463@01) ($Snap.second $t@463@01))))
(assert (= ($Snap.second $t@463@01) $Snap.unit))
; [eval] _2 >= 0
(assert (>= _2@459@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@464@01 $Snap)
(assert (= $t@464@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@465@01 $Snap)
(assert (= $t@465@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@466@01 $Snap)
(assert (= $t@466@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@467@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@468@01 Int)
(assert (not (= ret@467@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u32(_1), write)
(assert (=
  ($Snap.first $t@463@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@463@01))
    ($Snap.second ($Snap.first $t@463@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@467@01 _1@458@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@458@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.first $t@463@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@463@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u32%trigger ($Snap.first $t@463@01) _1@458@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@469@01 Int)
(assert (=
  val_int@469@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@463@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@458@01 ret@467@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_int()
(declare-const ret@470@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@471@01 $Snap)
(assert (= $t@471@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _2 >= 0
(declare-const $t@472@01 $Snap)
(assert (= $t@472@01 $Snap.unit))
; [eval] _2 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5 := _2
; [exec]
; label l1
; [exec]
; label l2
; [exec]
; assert _5 >= 0
; [eval] _5 >= 0
; [exec]
; assert true
; [exec]
; exhale _5 >= 0
; [eval] _5 >= 0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@473@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@474@01 $Snap)
(assert (= $t@474@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@475@01 $Snap)
(assert (= $t@475@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@473@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@476@01 $Snap)
(assert (= $t@476@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@477@01 $Snap)
(assert (= $t@477@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(u32(_3), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@469@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@469@01))
(assert (u32%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@469@01) $Snap.unit) ret@467@01))
; [exec]
; assert true
; [exec]
; exhale acc(u32(_3), write) && _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@478@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@479@01 $Snap)
(assert (= $t@479@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_0), write)
(declare-const $t@480@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@481@01 $Snap)
(assert (= $t@481@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@482@01 $Snap)
(assert (= $t@482@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(u32(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$302$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@483@01 $Ref)
(declare-const _0@484@01 $Ref)
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
(declare-const __t0@485@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@486@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@487@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@488@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@489@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@490@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@491@01 Int)
; [exec]
; var _5: Ref
(declare-const _5@492@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_(_1), write) &&
;   acc(u8(_2), write)
(declare-const $t@493@01 $Snap)
(assert (= $t@493@01 ($Snap.combine ($Snap.first $t@493@01) ($Snap.second $t@493@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@494@01 $Snap)
(assert (= $t@494@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@495@01 $Snap)
(assert (= $t@495@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@496@01 $Snap)
(assert (= $t@496@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@497@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_(_3), write)
(declare-const $t@498@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@488@01 ret@497@01)))
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
; inhale m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$(_1,
;   _3)
(declare-const $t@499@01 $Snap)
(assert (= $t@499@01 $Snap.unit))
; [eval] m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$(_1, _3)
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
; [eval] read$()
(set-option :timeout 0)
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first $t@493@01)
  $t@498@01) _1@488@01 ret@497@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$%precondition ($Snap.combine
    ($Snap.first $t@493@01)
    $t@498@01) _1@488@01 ret@497@01)))
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$ ($Snap.combine
  ($Snap.first $t@493@01)
  $t@498@01) _1@488@01 ret@497@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@500@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@501@01 Int)
(assert (not (= ret@500@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_2), write)
(assert (=
  ($Snap.second $t@493@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@493@01))
    ($Snap.second ($Snap.second $t@493@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@500@01 _2@489@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@489@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@493@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@493@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.second $t@493@01) _2@489@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@502@01 Int)
(assert (=
  val_int@502@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@493@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@489@01 ret@500@01)))
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
; fold acc(u8(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@502@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@502@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@502@01) $Snap.unit) ret@500@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_5), write)
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@503@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@504@01 $Snap)
(assert (= $t@504@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@505@01 $Snap)
(assert (= $t@505@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@503@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@506@01 $Snap)
(assert (= $t@506@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@507@01 $Snap)
(assert (= $t@507@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_(_3), write) &&
;   _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@508@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@509@01 $Snap)
(assert (= $t@509@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_(_0), write)
(declare-const $t@510@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@488@01 ret@508@01)))
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
(declare-const $t@511@01 $Snap)
(assert (= $t@511@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@512@01 $Snap)
(assert (= $t@512@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$13$closesqu$$$one$opensqu$0$closesqu$ ----------
(declare-const _0@513@01 $Ref)
(declare-const _0@514@01 $Ref)
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
(declare-const __t0@515@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@516@01 $Snap)
(assert (= $t@516@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@517@01 $Snap)
(assert (= $t@517@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@518@01 $Snap)
(assert (= $t@518@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@519@01 $Snap)
(assert (= $t@519@01 $Snap.unit))
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
(declare-const ret@520@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_int, write)
(declare-const $t@521@01 Int)
(assert (not (= ret@520@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_int := 1
; [exec]
; label return
; [exec]
; fold acc(u8(_0), write)
; [eval] 0 <= self.val_int
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap 1) $Snap.unit) ret@520@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$6$closesqu$$$zero$opensqu$0$closesqu$ ----------
(declare-const _0@522@01 $Ref)
(declare-const _0@523@01 $Ref)
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
(declare-const __t0@524@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@525@01 $Snap)
(assert (= $t@525@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@526@01 $Snap)
(assert (= $t@526@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@527@01 $Snap)
(assert (= $t@527@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@528@01 $Snap)
(assert (= $t@528@01 $Snap.unit))
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
(declare-const ret@529@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_int, write)
(declare-const $t@530@01 Int)
(assert (not (= ret@529@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_int := 0
; [exec]
; label return
; [exec]
; fold acc(u64(_0), write)
; [eval] 0 <= self.val_int
(assert (u64%trigger ($Snap.combine ($SortWrappers.IntTo$Snap 0) $Snap.unit) ret@529@01))
; [exec]
; assert true
; [exec]
; exhale acc(u64(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$222$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@531@01 $Ref)
(declare-const _0@532@01 $Ref)
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
(declare-const __t0@533@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@534@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@535@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@536@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@537@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@538@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@539@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@540@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(i64(_1), write) && acc(u32(_2), write)
(declare-const $t@541@01 $Snap)
(assert (= $t@541@01 ($Snap.combine ($Snap.first $t@541@01) ($Snap.second $t@541@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@542@01 $Snap)
(assert (= $t@542@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@543@01 $Snap)
(assert (= $t@543@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@544@01 $Snap)
(assert (= $t@544@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@545@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@546@01 Int)
(assert (not (= ret@545@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(i64(_1), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@545@01 _1@536@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@536@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (i64%trigger ($Snap.first $t@541@01) _1@536@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@547@01 Int)
(assert (= val_int@547@01 ($SortWrappers.$SnapToInt ($Snap.first $t@541@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@536@01 ret@545@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@548@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@549@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@545@01 ret@548@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@536@01 ret@548@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@548@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u32(_2), write)
(assert (=
  ($Snap.second $t@541@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@541@01))
    ($Snap.second ($Snap.second $t@541@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@548@01 _2@537@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@545@01 _2@537@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@536@01 _2@537@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@537@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@541@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@541@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u32%trigger ($Snap.second $t@541@01) _2@537@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@550@01 Int)
(assert (=
  val_int@550@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@541@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@537@01 ret@548@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@545@01 ret@548@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@536@01 ret@548@01)))
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
; fold acc(u32(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@550@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@550@01))
(assert (u32%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@550@01) $Snap.unit) ret@548@01))
; [exec]
; assert true
; [exec]
; exhale acc(u32(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@551@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@552@01 $Snap)
(assert (= $t@552@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@553@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@554@01 $Snap)
(assert (= $t@554@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@555@01 $Snap)
(assert (= $t@555@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(i64(_3), write)
(assert (i64%trigger ($SortWrappers.IntTo$Snap val_int@547@01) ret@545@01))
; [exec]
; assert true
; [exec]
; exhale acc(i64(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@556@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@557@01 $Snap)
(assert (= $t@557@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(i64(_0), write)
(declare-const $t@558@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@559@01 $Snap)
(assert (= $t@559@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@560@01 $Snap)
(assert (= $t@560@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(i64(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$182$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@561@01 $Ref)
(declare-const _0@562@01 $Ref)
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
(declare-const __t0@563@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@564@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@565@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@566@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@567@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@568@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@569@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@570@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(i32(_1), write) && acc(u8(_2), write)
(declare-const $t@571@01 $Snap)
(assert (= $t@571@01 ($Snap.combine ($Snap.first $t@571@01) ($Snap.second $t@571@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@572@01 $Snap)
(assert (= $t@572@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@573@01 $Snap)
(assert (= $t@573@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@574@01 $Snap)
(assert (= $t@574@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@575@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@576@01 Int)
(assert (not (= ret@575@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(i32(_1), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@575@01 _1@566@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@566@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (i32%trigger ($Snap.first $t@571@01) _1@566@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@577@01 Int)
(assert (= val_int@577@01 ($SortWrappers.$SnapToInt ($Snap.first $t@571@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@566@01 ret@575@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@578@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@579@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@575@01 ret@578@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@566@01 ret@578@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@578@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_2), write)
(assert (=
  ($Snap.second $t@571@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@571@01))
    ($Snap.second ($Snap.second $t@571@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@578@01 _2@567@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@575@01 _2@567@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@566@01 _2@567@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@567@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@571@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@571@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.second $t@571@01) _2@567@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@580@01 Int)
(assert (=
  val_int@580@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@571@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@567@01 ret@578@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@575@01 ret@578@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@566@01 ret@578@01)))
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
; fold acc(u8(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@580@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@580@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@580@01) $Snap.unit) ret@578@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@581@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@582@01 $Snap)
(assert (= $t@582@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@583@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@584@01 $Snap)
(assert (= $t@584@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@585@01 $Snap)
(assert (= $t@585@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(i32(_3), write)
(assert (i32%trigger ($SortWrappers.IntTo$Snap val_int@577@01) ret@575@01))
; [exec]
; assert true
; [exec]
; exhale acc(i32(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@586@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@587@01 $Snap)
(assert (= $t@587@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(i32(_0), write)
(declare-const $t@588@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@589@01 $Snap)
(assert (= $t@589@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@590@01 $Snap)
(assert (= $t@590@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(i32(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$306$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@591@01 $Ref)
(declare-const _0@592@01 $Ref)
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
(declare-const __t0@593@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@594@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@595@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@596@01 $Ref)
; [exec]
; var _2: Int
(declare-const _2@597@01 Int)
; [exec]
; var _3: Ref
(declare-const _3@598@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@599@01 Int)
; [exec]
; var _5: Int
(declare-const _5@600@01 Int)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_(_1), write) &&
;   _2 >= 0
(declare-const $t@601@01 $Snap)
(assert (= $t@601@01 ($Snap.combine ($Snap.first $t@601@01) ($Snap.second $t@601@01))))
(assert (= ($Snap.second $t@601@01) $Snap.unit))
; [eval] _2 >= 0
(assert (>= _2@597@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@602@01 $Snap)
(assert (= $t@602@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@603@01 $Snap)
(assert (= $t@603@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@604@01 $Snap)
(assert (= $t@604@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@605@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_(_3), write)
(declare-const $t@606@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@596@01 ret@605@01)))
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
; inhale m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$(_1,
;   _3)
(declare-const $t@607@01 $Snap)
(assert (= $t@607@01 $Snap.unit))
; [eval] m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$(_1, _3)
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
; [eval] read$()
(set-option :timeout 0)
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first $t@601@01)
  $t@606@01) _1@596@01 ret@605@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$%precondition ($Snap.combine
    ($Snap.first $t@601@01)
    $t@606@01) _1@596@01 ret@605@01)))
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_$$bool$ ($Snap.combine
  ($Snap.first $t@601@01)
  $t@606@01) _1@596@01 ret@605@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_int()
(declare-const ret@608@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@609@01 $Snap)
(assert (= $t@609@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _2 >= 0
(declare-const $t@610@01 $Snap)
(assert (= $t@610@01 $Snap.unit))
; [eval] _2 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5 := _2
; [exec]
; label l1
; [exec]
; label l2
; [exec]
; assert _5 >= 0
; [eval] _5 >= 0
; [exec]
; assert true
; [exec]
; exhale _5 >= 0
; [eval] _5 >= 0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@611@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@612@01 $Snap)
(assert (= $t@612@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@613@01 $Snap)
(assert (= $t@613@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@611@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@614@01 $Snap)
(assert (= $t@614@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@615@01 $Snap)
(assert (= $t@615@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_(_3), write) &&
;   _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@616@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@617@01 $Snap)
(assert (= $t@617@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_(_0), write)
(declare-const $t@618@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@596@01 ret@616@01)))
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
(declare-const $t@619@01 $Snap)
(assert (= $t@619@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@620@01 $Snap)
(assert (= $t@620@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i32$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$210$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@621@01 $Ref)
(declare-const _0@622@01 $Ref)
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
(declare-const __t0@623@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@624@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@625@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@626@01 $Ref)
; [exec]
; var _2: Int
(declare-const _2@627@01 Int)
; [exec]
; var _3: Ref
(declare-const _3@628@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@629@01 Int)
; [exec]
; var _5: Int
(declare-const _5@630@01 Int)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(u64(_1), write) && _2 >= 0
(declare-const $t@631@01 $Snap)
(assert (= $t@631@01 ($Snap.combine ($Snap.first $t@631@01) ($Snap.second $t@631@01))))
(assert (= ($Snap.second $t@631@01) $Snap.unit))
; [eval] _2 >= 0
(assert (>= _2@627@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@632@01 $Snap)
(assert (= $t@632@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@633@01 $Snap)
(assert (= $t@633@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@634@01 $Snap)
(assert (= $t@634@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@635@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@636@01 Int)
(assert (not (= ret@635@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u64(_1), write)
(assert (=
  ($Snap.first $t@631@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@631@01))
    ($Snap.second ($Snap.first $t@631@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@635@01 _1@626@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@626@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.first $t@631@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@631@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u64%trigger ($Snap.first $t@631@01) _1@626@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@637@01 Int)
(assert (=
  val_int@637@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@631@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@626@01 ret@635@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_int()
(declare-const ret@638@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@639@01 $Snap)
(assert (= $t@639@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _2 >= 0
(declare-const $t@640@01 $Snap)
(assert (= $t@640@01 $Snap.unit))
; [eval] _2 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5 := _2
; [exec]
; label l1
; [exec]
; label l2
; [exec]
; assert _5 >= 0
; [eval] _5 >= 0
; [exec]
; assert true
; [exec]
; exhale _5 >= 0
; [eval] _5 >= 0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@641@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@642@01 $Snap)
(assert (= $t@642@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@643@01 $Snap)
(assert (= $t@643@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@641@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@644@01 $Snap)
(assert (= $t@644@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@645@01 $Snap)
(assert (= $t@645@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(u64(_3), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@637@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@637@01))
(assert (u64%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@637@01) $Snap.unit) ret@635@01))
; [exec]
; assert true
; [exec]
; exhale acc(u64(_3), write) && _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@646@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@647@01 $Snap)
(assert (= $t@647@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u64(_0), write)
(declare-const $t@648@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@649@01 $Snap)
(assert (= $t@649@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@650@01 $Snap)
(assert (= $t@650@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(u64(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$138$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@651@01 $Ref)
(declare-const _0@652@01 $Ref)
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
(declare-const __t0@653@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@654@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@655@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@656@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@657@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@658@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@659@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@660@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(u16(_1), write) && acc(u16(_2), write)
(declare-const $t@661@01 $Snap)
(assert (= $t@661@01 ($Snap.combine ($Snap.first $t@661@01) ($Snap.second $t@661@01))))
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@656@01 _2@657@01)))
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
(declare-const $t@662@01 $Snap)
(assert (= $t@662@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@663@01 $Snap)
(assert (= $t@663@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@664@01 $Snap)
(assert (= $t@664@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@665@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@666@01 Int)
(assert (not (= ret@665@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u16(_1), write)
(assert (=
  ($Snap.first $t@661@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@661@01))
    ($Snap.second ($Snap.first $t@661@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@665@01 _1@656@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@656@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.first $t@661@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@661@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u16%trigger ($Snap.first $t@661@01) _1@656@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@667@01 Int)
(assert (=
  val_int@667@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@661@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@656@01 ret@665@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@668@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@669@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@665@01 ret@668@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@656@01 ret@668@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@668@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u16(_2), write)
(assert (=
  ($Snap.second $t@661@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@661@01))
    ($Snap.second ($Snap.second $t@661@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@668@01 _2@657@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@665@01 _2@657@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@656@01 _2@657@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@657@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@661@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@661@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u16%trigger ($Snap.second $t@661@01) _2@657@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@670@01 Int)
(assert (=
  val_int@670@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@661@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@657@01 ret@668@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@665@01 ret@668@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@656@01 ret@668@01)))
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
; fold acc(u16(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@670@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@670@01))
(assert (u16%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@670@01) $Snap.unit) ret@668@01))
; [exec]
; assert true
; [exec]
; exhale acc(u16(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@671@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@672@01 $Snap)
(assert (= $t@672@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@673@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@674@01 $Snap)
(assert (= $t@674@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@675@01 $Snap)
(assert (= $t@675@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(u16(_3), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@667@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@667@01))
(assert (u16%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@667@01) $Snap.unit) ret@665@01))
; [exec]
; assert true
; [exec]
; exhale acc(u16(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@676@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@677@01 $Snap)
(assert (= $t@677@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u16(_0), write)
(declare-const $t@678@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@679@01 $Snap)
(assert (= $t@679@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@680@01 $Snap)
(assert (= $t@680@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(u16(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$170$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@681@01 $Ref)
(declare-const _0@682@01 $Ref)
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
(declare-const __t0@683@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@684@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@685@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@686@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@687@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@688@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@689@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@690@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(u32(_1), write) && acc(u16(_2), write)
(declare-const $t@691@01 $Snap)
(assert (= $t@691@01 ($Snap.combine ($Snap.first $t@691@01) ($Snap.second $t@691@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@692@01 $Snap)
(assert (= $t@692@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@693@01 $Snap)
(assert (= $t@693@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@694@01 $Snap)
(assert (= $t@694@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@695@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@696@01 Int)
(assert (not (= ret@695@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u32(_1), write)
(assert (=
  ($Snap.first $t@691@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@691@01))
    ($Snap.second ($Snap.first $t@691@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@695@01 _1@686@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@686@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.first $t@691@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@691@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u32%trigger ($Snap.first $t@691@01) _1@686@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@697@01 Int)
(assert (=
  val_int@697@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@691@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@686@01 ret@695@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@698@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@699@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@695@01 ret@698@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@686@01 ret@698@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@698@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u16(_2), write)
(assert (=
  ($Snap.second $t@691@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@691@01))
    ($Snap.second ($Snap.second $t@691@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@698@01 _2@687@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@695@01 _2@687@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@686@01 _2@687@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@687@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@691@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@691@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u16%trigger ($Snap.second $t@691@01) _2@687@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@700@01 Int)
(assert (=
  val_int@700@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@691@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@687@01 ret@698@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@695@01 ret@698@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@686@01 ret@698@01)))
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
; fold acc(u16(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@700@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@700@01))
(assert (u16%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@700@01) $Snap.unit) ret@698@01))
; [exec]
; assert true
; [exec]
; exhale acc(u16(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@701@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@702@01 $Snap)
(assert (= $t@702@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@703@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@704@01 $Snap)
(assert (= $t@704@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@705@01 $Snap)
(assert (= $t@705@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(u32(_3), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@697@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@697@01))
(assert (u32%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@697@01) $Snap.unit) ret@695@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@701@01 ret@695@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert true
; [exec]
; exhale acc(u32(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@706@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@707@01 $Snap)
(assert (= $t@707@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_0), write)
(declare-const $t@708@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@709@01 $Snap)
(assert (= $t@709@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@710@01 $Snap)
(assert (= $t@710@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(u32(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$290$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@711@01 $Ref)
(declare-const _0@712@01 $Ref)
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
(declare-const __t0@713@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@714@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@715@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@716@01 $Ref)
; [exec]
; var _2: Int
(declare-const _2@717@01 Int)
; [exec]
; var _3: Ref
(declare-const _3@718@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@719@01 Int)
; [exec]
; var _5: Int
(declare-const _5@720@01 Int)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_(_1), write) &&
;   _2 >= 0
(declare-const $t@721@01 $Snap)
(assert (= $t@721@01 ($Snap.combine ($Snap.first $t@721@01) ($Snap.second $t@721@01))))
(assert (= ($Snap.second $t@721@01) $Snap.unit))
; [eval] _2 >= 0
(assert (>= _2@717@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@722@01 $Snap)
(assert (= $t@722@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@723@01 $Snap)
(assert (= $t@723@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@724@01 $Snap)
(assert (= $t@724@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@725@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_(_3), write)
(declare-const $t@726@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@716@01 ret@725@01)))
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
; inhale m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$(_1,
;   _3)
(declare-const $t@727@01 $Snap)
(assert (= $t@727@01 $Snap.unit))
; [eval] m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$(_1, _3)
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
; [eval] read$()
(set-option :timeout 0)
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first $t@721@01)
  $t@726@01) _1@716@01 ret@725@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$%precondition ($Snap.combine
    ($Snap.first $t@721@01)
    $t@726@01) _1@716@01 ret@725@01)))
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$ ($Snap.combine
  ($Snap.first $t@721@01)
  $t@726@01) _1@716@01 ret@725@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_int()
(declare-const ret@728@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@729@01 $Snap)
(assert (= $t@729@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _2 >= 0
(declare-const $t@730@01 $Snap)
(assert (= $t@730@01 $Snap.unit))
; [eval] _2 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5 := _2
; [exec]
; label l1
; [exec]
; label l2
; [exec]
; assert _5 >= 0
; [eval] _5 >= 0
; [exec]
; assert true
; [exec]
; exhale _5 >= 0
; [eval] _5 >= 0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@731@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@732@01 $Snap)
(assert (= $t@732@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@733@01 $Snap)
(assert (= $t@733@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@731@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@734@01 $Snap)
(assert (= $t@734@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@735@01 $Snap)
(assert (= $t@735@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_(_3), write) &&
;   _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@736@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@737@01 $Snap)
(assert (= $t@737@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_(_0), write)
(declare-const $t@738@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@716@01 ret@736@01)))
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
(declare-const $t@739@01 $Snap)
(assert (= $t@739@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@740@01 $Snap)
(assert (= $t@740@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$266$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@741@01 $Ref)
(declare-const _0@742@01 $Ref)
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
(declare-const __t0@743@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@744@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@745@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@746@01 $Ref)
; [exec]
; var _2: Int
(declare-const _2@747@01 Int)
; [exec]
; var _3: Ref
(declare-const _3@748@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@749@01 Int)
; [exec]
; var _5: Int
(declare-const _5@750@01 Int)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_(_1), write) &&
;   _2 >= 0
(declare-const $t@751@01 $Snap)
(assert (= $t@751@01 ($Snap.combine ($Snap.first $t@751@01) ($Snap.second $t@751@01))))
(assert (= ($Snap.second $t@751@01) $Snap.unit))
; [eval] _2 >= 0
(assert (>= _2@747@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@752@01 $Snap)
(assert (= $t@752@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@753@01 $Snap)
(assert (= $t@753@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@754@01 $Snap)
(assert (= $t@754@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@755@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_(_3), write)
(declare-const $t@756@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@746@01 ret@755@01)))
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
; inhale m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$(_1,
;   _3)
(declare-const $t@757@01 $Snap)
(assert (= $t@757@01 $Snap.unit))
; [eval] m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$(_1, _3)
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
; [eval] read$()
(set-option :timeout 0)
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first $t@751@01)
  $t@756@01) _1@746@01 ret@755@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$%precondition ($Snap.combine
    ($Snap.first $t@751@01)
    $t@756@01) _1@746@01 ret@755@01)))
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$ ($Snap.combine
  ($Snap.first $t@751@01)
  $t@756@01) _1@746@01 ret@755@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_int()
(declare-const ret@758@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@759@01 $Snap)
(assert (= $t@759@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _2 >= 0
(declare-const $t@760@01 $Snap)
(assert (= $t@760@01 $Snap.unit))
; [eval] _2 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5 := _2
; [exec]
; label l1
; [exec]
; label l2
; [exec]
; assert _5 >= 0
; [eval] _5 >= 0
; [exec]
; assert true
; [exec]
; exhale _5 >= 0
; [eval] _5 >= 0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@761@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@762@01 $Snap)
(assert (= $t@762@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@763@01 $Snap)
(assert (= $t@763@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@761@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@764@01 $Snap)
(assert (= $t@764@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@765@01 $Snap)
(assert (= $t@765@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_(_3), write) &&
;   _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@766@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@767@01 $Snap)
(assert (= $t@767@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_(_0), write)
(declare-const $t@768@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@746@01 ret@766@01)))
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
(declare-const $t@769@01 $Snap)
(assert (= $t@769@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@770@01 $Snap)
(assert (= $t@770@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$250$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@771@01 $Ref)
(declare-const _0@772@01 $Ref)
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
(declare-const __t0@773@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@774@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@775@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@776@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@777@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@778@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@779@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@780@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(isize(_1), write) && acc(u16(_2), write)
(declare-const $t@781@01 $Snap)
(assert (= $t@781@01 ($Snap.combine ($Snap.first $t@781@01) ($Snap.second $t@781@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@782@01 $Snap)
(assert (= $t@782@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@783@01 $Snap)
(assert (= $t@783@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@784@01 $Snap)
(assert (= $t@784@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@785@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@786@01 Int)
(assert (not (= ret@785@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(isize(_1), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@785@01 _1@776@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@776@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (isize%trigger ($Snap.first $t@781@01) _1@776@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@787@01 Int)
(assert (= val_int@787@01 ($SortWrappers.$SnapToInt ($Snap.first $t@781@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@776@01 ret@785@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@788@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@789@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@785@01 ret@788@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@776@01 ret@788@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@788@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u16(_2), write)
(assert (=
  ($Snap.second $t@781@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@781@01))
    ($Snap.second ($Snap.second $t@781@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@788@01 _2@777@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@785@01 _2@777@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@776@01 _2@777@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@777@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@781@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@781@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u16%trigger ($Snap.second $t@781@01) _2@777@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@790@01 Int)
(assert (=
  val_int@790@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@781@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@777@01 ret@788@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@785@01 ret@788@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@776@01 ret@788@01)))
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
; fold acc(u16(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@790@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@790@01))
(assert (u16%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@790@01) $Snap.unit) ret@788@01))
; [exec]
; assert true
; [exec]
; exhale acc(u16(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@791@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@792@01 $Snap)
(assert (= $t@792@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@793@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@794@01 $Snap)
(assert (= $t@794@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@795@01 $Snap)
(assert (= $t@795@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(isize(_3), write)
(assert (isize%trigger ($SortWrappers.IntTo$Snap val_int@787@01) ret@785@01))
; [exec]
; assert true
; [exec]
; exhale acc(isize(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@796@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@797@01 $Snap)
(assert (= $t@797@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(isize(_0), write)
(declare-const $t@798@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@799@01 $Snap)
(assert (= $t@799@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@800@01 $Snap)
(assert (= $t@800@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(isize(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$258$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@801@01 $Ref)
(declare-const _0@802@01 $Ref)
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
(declare-const __t0@803@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@804@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@805@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@806@01 $Ref)
; [exec]
; var _2: Int
(declare-const _2@807@01 Int)
; [exec]
; var _3: Ref
(declare-const _3@808@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@809@01 Int)
; [exec]
; var _5: Int
(declare-const _5@810@01 Int)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(isize(_1), write) && _2 >= 0
(declare-const $t@811@01 $Snap)
(assert (= $t@811@01 ($Snap.combine ($Snap.first $t@811@01) ($Snap.second $t@811@01))))
(assert (= ($Snap.second $t@811@01) $Snap.unit))
; [eval] _2 >= 0
(assert (>= _2@807@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@812@01 $Snap)
(assert (= $t@812@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@813@01 $Snap)
(assert (= $t@813@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@814@01 $Snap)
(assert (= $t@814@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@815@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@816@01 Int)
(assert (not (= ret@815@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(isize(_1), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@815@01 _1@806@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@806@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (isize%trigger ($Snap.first $t@811@01) _1@806@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@817@01 Int)
(assert (= val_int@817@01 ($SortWrappers.$SnapToInt ($Snap.first $t@811@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@806@01 ret@815@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_int()
(declare-const ret@818@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@819@01 $Snap)
(assert (= $t@819@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _2 >= 0
(declare-const $t@820@01 $Snap)
(assert (= $t@820@01 $Snap.unit))
; [eval] _2 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5 := _2
; [exec]
; label l1
; [exec]
; label l2
; [exec]
; assert _5 >= 0
; [eval] _5 >= 0
; [exec]
; assert true
; [exec]
; exhale _5 >= 0
; [eval] _5 >= 0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@821@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@822@01 $Snap)
(assert (= $t@822@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@823@01 $Snap)
(assert (= $t@823@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@821@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@824@01 $Snap)
(assert (= $t@824@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@825@01 $Snap)
(assert (= $t@825@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(isize(_3), write)
(assert (isize%trigger ($SortWrappers.IntTo$Snap val_int@817@01) ret@815@01))
; [exec]
; assert true
; [exec]
; exhale acc(isize(_3), write) && _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@826@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@827@01 $Snap)
(assert (= $t@827@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(isize(_0), write)
(declare-const $t@828@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@829@01 $Snap)
(assert (= $t@829@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@830@01 $Snap)
(assert (= $t@830@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(isize(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$338$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@831@01 $Ref)
(declare-const _0@832@01 $Ref)
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
(declare-const __t0@833@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@834@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@835@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@836@01 $Ref)
; [exec]
; var _2: Int
(declare-const _2@837@01 Int)
; [exec]
; var _3: Ref
(declare-const _3@838@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@839@01 Int)
; [exec]
; var _5: Int
(declare-const _5@840@01 Int)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_(_1), write) &&
;   _2 >= 0
(declare-const $t@841@01 $Snap)
(assert (= $t@841@01 ($Snap.combine ($Snap.first $t@841@01) ($Snap.second $t@841@01))))
(assert (= ($Snap.second $t@841@01) $Snap.unit))
; [eval] _2 >= 0
(assert (>= _2@837@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@842@01 $Snap)
(assert (= $t@842@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@843@01 $Snap)
(assert (= $t@843@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@844@01 $Snap)
(assert (= $t@844@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@845@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_(_3), write)
(declare-const $t@846@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@836@01 ret@845@01)))
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
; inhale m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$(_1,
;   _3)
(declare-const $t@847@01 $Snap)
(assert (= $t@847@01 $Snap.unit))
; [eval] m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$(_1, _3)
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
; [eval] read$()
(set-option :timeout 0)
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first $t@841@01)
  $t@846@01) _1@836@01 ret@845@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%precondition ($Snap.combine
    ($Snap.first $t@841@01)
    $t@846@01) _1@836@01 ret@845@01)))
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$ ($Snap.combine
  ($Snap.first $t@841@01)
  $t@846@01) _1@836@01 ret@845@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_int()
(declare-const ret@848@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@849@01 $Snap)
(assert (= $t@849@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _2 >= 0
(declare-const $t@850@01 $Snap)
(assert (= $t@850@01 $Snap.unit))
; [eval] _2 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5 := _2
; [exec]
; label l1
; [exec]
; label l2
; [exec]
; assert _5 >= 0
; [eval] _5 >= 0
; [exec]
; assert true
; [exec]
; exhale _5 >= 0
; [eval] _5 >= 0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@851@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@852@01 $Snap)
(assert (= $t@852@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@853@01 $Snap)
(assert (= $t@853@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@851@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@854@01 $Snap)
(assert (= $t@854@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@855@01 $Snap)
(assert (= $t@855@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_(_3), write) &&
;   _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@856@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@857@01 $Snap)
(assert (= $t@857@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_(_0), write)
(declare-const $t@858@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@836@01 ret@856@01)))
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
(declare-const $t@859@01 $Snap)
(assert (= $t@859@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@860@01 $Snap)
(assert (= $t@860@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$one$opensqu$0$closesqu$ ----------
(declare-const _0@861@01 $Ref)
(declare-const _0@862@01 $Ref)
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
(declare-const __t0@863@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@864@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; inhale true
(declare-const $t@865@01 $Snap)
(assert (= $t@865@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@866@01 $Snap)
(assert (= $t@866@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@867@01 $Snap)
(assert (= $t@867@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@868@01 $Snap)
(assert (= $t@868@01 $Snap.unit))
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
; label l0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@869@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@870@01 $Snap)
(assert (= $t@870@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(__TYPARAM__$T$__(_0), write)
(declare-const $t@871@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@872@01 $Snap)
(assert (= $t@872@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@873@01 $Snap)
(assert (= $t@873@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l1
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(__TYPARAM__$T$__(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$18$closesqu$$$one$opensqu$0$closesqu$ ----------
(declare-const _0@874@01 $Ref)
(declare-const _0@875@01 $Ref)
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
(declare-const __t0@876@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@877@01 $Snap)
(assert (= $t@877@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@878@01 $Snap)
(assert (= $t@878@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@879@01 $Snap)
(assert (= $t@879@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@880@01 $Snap)
(assert (= $t@880@01 $Snap.unit))
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
(declare-const ret@881@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_int, write)
(declare-const $t@882@01 Int)
(assert (not (= ret@881@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_int := 1
; [exec]
; label return
; [exec]
; fold acc(i8(_0), write)
(assert (i8%trigger ($SortWrappers.IntTo$Snap 1) ret@881@01))
; [exec]
; assert true
; [exec]
; exhale acc(i8(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$10$closesqu$$$zero$opensqu$0$closesqu$ ----------
(declare-const _0@883@01 $Ref)
(declare-const _0@884@01 $Ref)
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
(declare-const __t0@885@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@886@01 $Snap)
(assert (= $t@886@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@887@01 $Snap)
(assert (= $t@887@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@888@01 $Snap)
(assert (= $t@888@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@889@01 $Snap)
(assert (= $t@889@01 $Snap.unit))
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
(declare-const ret@890@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_int, write)
(declare-const $t@891@01 Int)
(assert (not (= ret@890@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_int := 0
; [exec]
; label return
; [exec]
; fold acc(i32(_0), write)
(assert (i32%trigger ($SortWrappers.IntTo$Snap 0) ret@890@01))
; [exec]
; assert true
; [exec]
; exhale acc(i32(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$314$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@892@01 $Ref)
(declare-const _0@893@01 $Ref)
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
(declare-const __t0@894@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@895@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@896@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@897@01 $Ref)
; [exec]
; var _2: Int
(declare-const _2@898@01 Int)
; [exec]
; var _3: Ref
(declare-const _3@899@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@900@01 Int)
; [exec]
; var _5: Int
(declare-const _5@901@01 Int)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_(_1), write) &&
;   _2 >= 0
(declare-const $t@902@01 $Snap)
(assert (= $t@902@01 ($Snap.combine ($Snap.first $t@902@01) ($Snap.second $t@902@01))))
(assert (= ($Snap.second $t@902@01) $Snap.unit))
; [eval] _2 >= 0
(assert (>= _2@898@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@903@01 $Snap)
(assert (= $t@903@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@904@01 $Snap)
(assert (= $t@904@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@905@01 $Snap)
(assert (= $t@905@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@906@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_(_3), write)
(declare-const $t@907@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@897@01 ret@906@01)))
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
; inhale m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$(_1,
;   _3)
(declare-const $t@908@01 $Snap)
(assert (= $t@908@01 $Snap.unit))
; [eval] m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$(_1, _3)
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
; [eval] read$()
(set-option :timeout 0)
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first $t@902@01)
  $t@907@01) _1@897@01 ret@906@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$%precondition ($Snap.combine
    ($Snap.first $t@902@01)
    $t@907@01) _1@897@01 ret@906@01)))
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$ ($Snap.combine
  ($Snap.first $t@902@01)
  $t@907@01) _1@897@01 ret@906@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_int()
(declare-const ret@909@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@910@01 $Snap)
(assert (= $t@910@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _2 >= 0
(declare-const $t@911@01 $Snap)
(assert (= $t@911@01 $Snap.unit))
; [eval] _2 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5 := _2
; [exec]
; label l1
; [exec]
; label l2
; [exec]
; assert _5 >= 0
; [eval] _5 >= 0
; [exec]
; assert true
; [exec]
; exhale _5 >= 0
; [eval] _5 >= 0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@912@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@913@01 $Snap)
(assert (= $t@913@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@914@01 $Snap)
(assert (= $t@914@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@912@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@915@01 $Snap)
(assert (= $t@915@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@916@01 $Snap)
(assert (= $t@916@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_(_3), write) &&
;   _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@917@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@918@01 $Snap)
(assert (= $t@918@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_(_0), write)
(declare-const $t@919@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@897@01 ret@917@01)))
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
(declare-const $t@920@01 $Snap)
(assert (= $t@920@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@921@01 $Snap)
(assert (= $t@921@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$19$closesqu$$$one$opensqu$0$closesqu$ ----------
(declare-const _0@922@01 $Ref)
(declare-const _0@923@01 $Ref)
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
(declare-const __t0@924@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@925@01 $Snap)
(assert (= $t@925@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@926@01 $Snap)
(assert (= $t@926@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@927@01 $Snap)
(assert (= $t@927@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@928@01 $Snap)
(assert (= $t@928@01 $Snap.unit))
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
(declare-const ret@929@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_int, write)
(declare-const $t@930@01 Int)
(assert (not (= ret@929@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_int := 1
; [exec]
; label return
; [exec]
; fold acc(i16(_0), write)
(assert (i16%trigger ($SortWrappers.IntTo$Snap 1) ret@929@01))
; [exec]
; assert true
; [exec]
; exhale acc(i16(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$318$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@931@01 $Ref)
(declare-const _0@932@01 $Ref)
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
(declare-const __t0@933@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@934@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@935@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@936@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@937@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@938@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@939@01 Int)
; [exec]
; var _5: Ref
(declare-const _5@940@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_(_1), write) &&
;   acc(u8(_2), write)
(declare-const $t@941@01 $Snap)
(assert (= $t@941@01 ($Snap.combine ($Snap.first $t@941@01) ($Snap.second $t@941@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@942@01 $Snap)
(assert (= $t@942@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@943@01 $Snap)
(assert (= $t@943@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@944@01 $Snap)
(assert (= $t@944@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@945@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_(_3), write)
(declare-const $t@946@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@936@01 ret@945@01)))
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
; inhale m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$(_1,
;   _3)
(declare-const $t@947@01 $Snap)
(assert (= $t@947@01 $Snap.unit))
; [eval] m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$(_1, _3)
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
; [eval] read$()
(set-option :timeout 0)
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first $t@941@01)
  $t@946@01) _1@936@01 ret@945@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$%precondition ($Snap.combine
    ($Snap.first $t@941@01)
    $t@946@01) _1@936@01 ret@945@01)))
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_$$bool$ ($Snap.combine
  ($Snap.first $t@941@01)
  $t@946@01) _1@936@01 ret@945@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@948@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@949@01 Int)
(assert (not (= ret@948@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_2), write)
(assert (=
  ($Snap.second $t@941@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@941@01))
    ($Snap.second ($Snap.second $t@941@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@948@01 _2@937@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@937@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@941@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@941@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.second $t@941@01) _2@937@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@950@01 Int)
(assert (=
  val_int@950@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@941@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@937@01 ret@948@01)))
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
; fold acc(u8(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@950@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@950@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@950@01) $Snap.unit) ret@948@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_5), write)
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@951@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@952@01 $Snap)
(assert (= $t@952@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@953@01 $Snap)
(assert (= $t@953@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@951@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@954@01 $Snap)
(assert (= $t@954@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@955@01 $Snap)
(assert (= $t@955@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_(_3), write) &&
;   _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@956@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@957@01 $Snap)
(assert (= $t@957@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_(_0), write)
(declare-const $t@958@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@936@01 ret@956@01)))
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
(declare-const $t@959@01 $Snap)
(assert (= $t@959@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@960@01 $Snap)
(assert (= $t@960@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i64$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$main$opensqu$0$closesqu$ ----------
(declare-const _0@961@01 $Ref)
(declare-const _0@962@01 $Ref)
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
(declare-const __t0@963@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@964@01 $Snap)
(assert (= $t@964@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@965@01 $Snap)
(assert (= $t@965@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@966@01 $Snap)
(assert (= $t@966@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@967@01 $Snap)
(assert (= $t@967@01 $Snap.unit))
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
(declare-const ret@968@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_0), write)
(declare-const $t@969@01 $Snap)
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
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$134$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@970@01 $Ref)
(declare-const _0@971@01 $Ref)
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
(declare-const __t0@972@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@973@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@974@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@975@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@976@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@977@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@978@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@979@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(u16(_1), write) && acc(u8(_2), write)
(declare-const $t@980@01 $Snap)
(assert (= $t@980@01 ($Snap.combine ($Snap.first $t@980@01) ($Snap.second $t@980@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@981@01 $Snap)
(assert (= $t@981@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@982@01 $Snap)
(assert (= $t@982@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@983@01 $Snap)
(assert (= $t@983@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@984@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@985@01 Int)
(assert (not (= ret@984@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u16(_1), write)
(assert (=
  ($Snap.first $t@980@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@980@01))
    ($Snap.second ($Snap.first $t@980@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@984@01 _1@975@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@975@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.first $t@980@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@980@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u16%trigger ($Snap.first $t@980@01) _1@975@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@986@01 Int)
(assert (=
  val_int@986@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@980@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@975@01 ret@984@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@987@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@988@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@984@01 ret@987@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@975@01 ret@987@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@987@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_2), write)
(assert (=
  ($Snap.second $t@980@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@980@01))
    ($Snap.second ($Snap.second $t@980@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@987@01 _2@976@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@984@01 _2@976@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@975@01 _2@976@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@976@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@980@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@980@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.second $t@980@01) _2@976@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@989@01 Int)
(assert (=
  val_int@989@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@980@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@976@01 ret@987@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@984@01 ret@987@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@975@01 ret@987@01)))
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
; fold acc(u8(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@989@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@989@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@989@01) $Snap.unit) ret@987@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@990@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@991@01 $Snap)
(assert (= $t@991@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@992@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@993@01 $Snap)
(assert (= $t@993@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@994@01 $Snap)
(assert (= $t@994@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(u16(_3), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@986@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@986@01))
(assert (u16%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@986@01) $Snap.unit) ret@984@01))
; [exec]
; assert true
; [exec]
; exhale acc(u16(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@995@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@996@01 $Snap)
(assert (= $t@996@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u16(_0), write)
(declare-const $t@997@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@998@01 $Snap)
(assert (= $t@998@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@999@01 $Snap)
(assert (= $t@999@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(u16(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$262$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1000@01 $Ref)
(declare-const _0@1001@01 $Ref)
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
(declare-const __t0@1002@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1003@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1004@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1005@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@1006@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@1007@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@1008@01 Int)
; [exec]
; var _5: Ref
(declare-const _5@1009@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_(_1), write) &&
;   acc(u8(_2), write)
(declare-const $t@1010@01 $Snap)
(assert (= $t@1010@01 ($Snap.combine ($Snap.first $t@1010@01) ($Snap.second $t@1010@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1011@01 $Snap)
(assert (= $t@1011@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1012@01 $Snap)
(assert (= $t@1012@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1013@01 $Snap)
(assert (= $t@1013@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1014@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_(_3), write)
(declare-const $t@1015@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1005@01 ret@1014@01)))
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
; inhale m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$(_1,
;   _3)
(declare-const $t@1016@01 $Snap)
(assert (= $t@1016@01 $Snap.unit))
; [eval] m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$(_1, _3)
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
; [eval] read$()
(set-option :timeout 0)
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first $t@1010@01)
  $t@1015@01) _1@1005@01 ret@1014@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$%precondition ($Snap.combine
    ($Snap.first $t@1010@01)
    $t@1015@01) _1@1005@01 ret@1014@01)))
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_$$bool$ ($Snap.combine
  ($Snap.first $t@1010@01)
  $t@1015@01) _1@1005@01 ret@1014@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1017@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1018@01 Int)
(assert (not (= ret@1017@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_2), write)
(assert (=
  ($Snap.second $t@1010@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1010@01))
    ($Snap.second ($Snap.second $t@1010@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1017@01 _2@1006@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1006@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1010@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1010@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.second $t@1010@01) _2@1006@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1019@01 Int)
(assert (=
  val_int@1019@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1010@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1006@01 ret@1017@01)))
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
; fold acc(u8(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1019@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1019@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@1019@01) $Snap.unit) ret@1017@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_5), write)
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@1020@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1021@01 $Snap)
(assert (= $t@1021@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@1022@01 $Snap)
(assert (= $t@1022@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@1020@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1023@01 $Snap)
(assert (= $t@1023@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1024@01 $Snap)
(assert (= $t@1024@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_(_3), write) &&
;   _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1025@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1026@01 $Snap)
(assert (= $t@1026@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_(_0), write)
(declare-const $t@1027@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1005@01 ret@1025@01)))
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
(declare-const $t@1028@01 $Snap)
(assert (= $t@1028@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1029@01 $Snap)
(assert (= $t@1029@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u8$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$16$closesqu$$$one$opensqu$0$closesqu$ ----------
(declare-const _0@1030@01 $Ref)
(declare-const _0@1031@01 $Ref)
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
(declare-const __t0@1032@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@1033@01 $Snap)
(assert (= $t@1033@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1034@01 $Snap)
(assert (= $t@1034@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1035@01 $Snap)
(assert (= $t@1035@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1036@01 $Snap)
(assert (= $t@1036@01 $Snap.unit))
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
(declare-const ret@1037@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_int, write)
(declare-const $t@1038@01 Int)
(assert (not (= ret@1037@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_int := 1
; [exec]
; label return
; [exec]
; fold acc(u64(_0), write)
; [eval] 0 <= self.val_int
(assert (u64%trigger ($Snap.combine ($SortWrappers.IntTo$Snap 1) $Snap.unit) ret@1037@01))
; [exec]
; assert true
; [exec]
; exhale acc(u64(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$298$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1039@01 $Ref)
(declare-const _0@1040@01 $Ref)
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
(declare-const __t0@1041@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1042@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1043@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1044@01 $Ref)
; [exec]
; var _2: Int
(declare-const _2@1045@01 Int)
; [exec]
; var _3: Ref
(declare-const _3@1046@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@1047@01 Int)
; [exec]
; var _5: Int
(declare-const _5@1048@01 Int)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_(_1), write) &&
;   _2 >= 0
(declare-const $t@1049@01 $Snap)
(assert (= $t@1049@01 ($Snap.combine ($Snap.first $t@1049@01) ($Snap.second $t@1049@01))))
(assert (= ($Snap.second $t@1049@01) $Snap.unit))
; [eval] _2 >= 0
(assert (>= _2@1045@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1050@01 $Snap)
(assert (= $t@1050@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1051@01 $Snap)
(assert (= $t@1051@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1052@01 $Snap)
(assert (= $t@1052@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1053@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_(_3), write)
(declare-const $t@1054@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1044@01 ret@1053@01)))
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
; inhale m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$(_1,
;   _3)
(declare-const $t@1055@01 $Snap)
(assert (= $t@1055@01 $Snap.unit))
; [eval] m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$(_1, _3)
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
; [eval] read$()
(set-option :timeout 0)
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first $t@1049@01)
  $t@1054@01) _1@1044@01 ret@1053@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$%precondition ($Snap.combine
    ($Snap.first $t@1049@01)
    $t@1054@01) _1@1044@01 ret@1053@01)))
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$ ($Snap.combine
  ($Snap.first $t@1049@01)
  $t@1054@01) _1@1044@01 ret@1053@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_int()
(declare-const ret@1056@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1057@01 $Snap)
(assert (= $t@1057@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _2 >= 0
(declare-const $t@1058@01 $Snap)
(assert (= $t@1058@01 $Snap.unit))
; [eval] _2 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5 := _2
; [exec]
; label l1
; [exec]
; label l2
; [exec]
; assert _5 >= 0
; [eval] _5 >= 0
; [exec]
; assert true
; [exec]
; exhale _5 >= 0
; [eval] _5 >= 0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@1059@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1060@01 $Snap)
(assert (= $t@1060@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@1061@01 $Snap)
(assert (= $t@1061@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@1059@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1062@01 $Snap)
(assert (= $t@1062@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1063@01 $Snap)
(assert (= $t@1063@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_(_3), write) &&
;   _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1064@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1065@01 $Snap)
(assert (= $t@1065@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_(_0), write)
(declare-const $t@1066@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1044@01 ret@1064@01)))
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
(declare-const $t@1067@01 $Snap)
(assert (= $t@1067@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1068@01 $Snap)
(assert (= $t@1068@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$zero$opensqu$0$closesqu$ ----------
(declare-const _0@1069@01 $Ref)
(declare-const _0@1070@01 $Ref)
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
(declare-const __t0@1071@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1072@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1073@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1074@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale true
(declare-const $t@1075@01 $Snap)
(assert (= $t@1075@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1076@01 $Snap)
(assert (= $t@1076@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1077@01 $Snap)
(assert (= $t@1077@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1078@01 $Snap)
(assert (= $t@1078@01 $Snap.unit))
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
; label l0
; [exec]
; _1 := builtin$havoc_ref()
(declare-const ret@1079@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1080@01 $Snap)
(assert (= $t@1080@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(__TYPARAM__$T$__(_1), write)
(declare-const $t@1081@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1082@01 $Snap)
(assert (= $t@1082@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1083@01 $Snap)
(assert (= $t@1083@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l1
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1084@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_(_0), write)
(declare-const $t@1085@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_(_0), write)
(assert (= $t@1085@01 ($Snap.combine ($Snap.first $t@1085@01) ($Snap.second $t@1085@01))))
(assert (not (= ret@1084@01 $Ref.null)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1079@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@1085@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_%trigger $t@1085@01 ret@1084@01))
; [exec]
; _0.f$0 := _1
; [exec]
; label l2
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; fold acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_(_0), write)
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap ret@1079@01)
  $t@1081@01) ret@1084@01))
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$214$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1086@01 $Ref)
(declare-const _0@1087@01 $Ref)
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
(declare-const __t0@1088@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1089@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1090@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1091@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@1092@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@1093@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@1094@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@1095@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(i64(_1), write) && acc(u8(_2), write)
(declare-const $t@1096@01 $Snap)
(assert (= $t@1096@01 ($Snap.combine ($Snap.first $t@1096@01) ($Snap.second $t@1096@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1097@01 $Snap)
(assert (= $t@1097@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1098@01 $Snap)
(assert (= $t@1098@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1099@01 $Snap)
(assert (= $t@1099@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1100@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@1101@01 Int)
(assert (not (= ret@1100@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(i64(_1), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1100@01 _1@1091@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@1091@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (i64%trigger ($Snap.first $t@1096@01) _1@1091@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@1102@01 Int)
(assert (= val_int@1102@01 ($SortWrappers.$SnapToInt ($Snap.first $t@1096@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1091@01 ret@1100@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1103@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1104@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1100@01 ret@1103@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1091@01 ret@1103@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@1103@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_2), write)
(assert (=
  ($Snap.second $t@1096@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1096@01))
    ($Snap.second ($Snap.second $t@1096@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1103@01 _2@1092@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1100@01 _2@1092@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1091@01 _2@1092@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1092@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1096@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1096@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.second $t@1096@01) _2@1092@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1105@01 Int)
(assert (=
  val_int@1105@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1096@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1092@01 ret@1103@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1100@01 ret@1103@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1091@01 ret@1103@01)))
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
; fold acc(u8(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1105@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1105@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@1105@01) $Snap.unit) ret@1103@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@1106@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1107@01 $Snap)
(assert (= $t@1107@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@1108@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1109@01 $Snap)
(assert (= $t@1109@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1110@01 $Snap)
(assert (= $t@1110@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(i64(_3), write)
(assert (i64%trigger ($SortWrappers.IntTo$Snap val_int@1102@01) ret@1100@01))
; [exec]
; assert true
; [exec]
; exhale acc(i64(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1111@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1112@01 $Snap)
(assert (= $t@1112@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(i64(_0), write)
(declare-const $t@1113@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1114@01 $Snap)
(assert (= $t@1114@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1115@01 $Snap)
(assert (= $t@1115@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(i64(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$one$opensqu$0$closesqu$ ----------
(declare-const _0@1116@01 $Ref)
(declare-const _0@1117@01 $Ref)
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
(declare-const __t0@1118@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1119@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1120@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1121@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale true
(declare-const $t@1122@01 $Snap)
(assert (= $t@1122@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1123@01 $Snap)
(assert (= $t@1123@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1124@01 $Snap)
(assert (= $t@1124@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1125@01 $Snap)
(assert (= $t@1125@01 $Snap.unit))
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
; label l0
; [exec]
; _1 := builtin$havoc_ref()
(declare-const ret@1126@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1127@01 $Snap)
(assert (= $t@1127@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(__TYPARAM__$T$__(_1), write)
(declare-const $t@1128@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1129@01 $Snap)
(assert (= $t@1129@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1130@01 $Snap)
(assert (= $t@1130@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l1
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1131@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_(_0), write)
(declare-const $t@1132@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_(_0), write)
(assert (= $t@1132@01 ($Snap.combine ($Snap.first $t@1132@01) ($Snap.second $t@1132@01))))
(assert (not (= ret@1131@01 $Ref.null)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1126@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@1132@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_%trigger $t@1132@01 ret@1131@01))
; [exec]
; _0.f$0 := _1
; [exec]
; label l2
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; fold acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_(_0), write)
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap ret@1126@01)
  $t@1128@01) ret@1131@01))
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$190$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1133@01 $Ref)
(declare-const _0@1134@01 $Ref)
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
(declare-const __t0@1135@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1136@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1137@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1138@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@1139@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@1140@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@1141@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@1142@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(i32(_1), write) && acc(u32(_2), write)
(declare-const $t@1143@01 $Snap)
(assert (= $t@1143@01 ($Snap.combine ($Snap.first $t@1143@01) ($Snap.second $t@1143@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1144@01 $Snap)
(assert (= $t@1144@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1145@01 $Snap)
(assert (= $t@1145@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1146@01 $Snap)
(assert (= $t@1146@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1147@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@1148@01 Int)
(assert (not (= ret@1147@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(i32(_1), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1147@01 _1@1138@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@1138@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (i32%trigger ($Snap.first $t@1143@01) _1@1138@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@1149@01 Int)
(assert (= val_int@1149@01 ($SortWrappers.$SnapToInt ($Snap.first $t@1143@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1138@01 ret@1147@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1150@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1151@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1147@01 ret@1150@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1138@01 ret@1150@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@1150@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u32(_2), write)
(assert (=
  ($Snap.second $t@1143@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1143@01))
    ($Snap.second ($Snap.second $t@1143@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1150@01 _2@1139@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1147@01 _2@1139@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1138@01 _2@1139@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1139@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1143@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1143@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u32%trigger ($Snap.second $t@1143@01) _2@1139@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1152@01 Int)
(assert (=
  val_int@1152@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1143@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1139@01 ret@1150@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1147@01 ret@1150@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1138@01 ret@1150@01)))
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
; fold acc(u32(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1152@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1152@01))
(assert (u32%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap val_int@1152@01)
  $Snap.unit) ret@1150@01))
; [exec]
; assert true
; [exec]
; exhale acc(u32(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@1153@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1154@01 $Snap)
(assert (= $t@1154@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@1155@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1156@01 $Snap)
(assert (= $t@1156@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1157@01 $Snap)
(assert (= $t@1157@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(i32(_3), write)
(assert (i32%trigger ($SortWrappers.IntTo$Snap val_int@1149@01) ret@1147@01))
; [exec]
; assert true
; [exec]
; exhale acc(i32(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1158@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1159@01 $Snap)
(assert (= $t@1159@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(i32(_0), write)
(declare-const $t@1160@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1161@01 $Snap)
(assert (= $t@1161@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1162@01 $Snap)
(assert (= $t@1162@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(i32(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$294$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1163@01 $Ref)
(declare-const _0@1164@01 $Ref)
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
(declare-const __t0@1165@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1166@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1167@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1168@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@1169@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@1170@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@1171@01 Int)
; [exec]
; var _5: Ref
(declare-const _5@1172@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_(_1), write) &&
;   acc(u8(_2), write)
(declare-const $t@1173@01 $Snap)
(assert (= $t@1173@01 ($Snap.combine ($Snap.first $t@1173@01) ($Snap.second $t@1173@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1174@01 $Snap)
(assert (= $t@1174@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1175@01 $Snap)
(assert (= $t@1175@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1176@01 $Snap)
(assert (= $t@1176@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1177@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_(_3), write)
(declare-const $t@1178@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1168@01 ret@1177@01)))
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
; inhale m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$(_1,
;   _3)
(declare-const $t@1179@01 $Snap)
(assert (= $t@1179@01 $Snap.unit))
; [eval] m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$(_1, _3)
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
; [eval] read$()
(set-option :timeout 0)
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first $t@1173@01)
  $t@1178@01) _1@1168@01 ret@1177@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$%precondition ($Snap.combine
    ($Snap.first $t@1173@01)
    $t@1178@01) _1@1168@01 ret@1177@01)))
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_$$bool$ ($Snap.combine
  ($Snap.first $t@1173@01)
  $t@1178@01) _1@1168@01 ret@1177@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1180@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1181@01 Int)
(assert (not (= ret@1180@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_2), write)
(assert (=
  ($Snap.second $t@1173@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1173@01))
    ($Snap.second ($Snap.second $t@1173@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1180@01 _2@1169@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1169@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1173@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1173@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.second $t@1173@01) _2@1169@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1182@01 Int)
(assert (=
  val_int@1182@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1173@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1169@01 ret@1180@01)))
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
; fold acc(u8(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1182@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1182@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@1182@01) $Snap.unit) ret@1180@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_5), write)
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@1183@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1184@01 $Snap)
(assert (= $t@1184@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@1185@01 $Snap)
(assert (= $t@1185@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@1183@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1186@01 $Snap)
(assert (= $t@1186@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1187@01 $Snap)
(assert (= $t@1187@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_(_3), write) &&
;   _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1188@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1189@01 $Snap)
(assert (= $t@1189@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_(_0), write)
(declare-const $t@1190@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1168@01 ret@1188@01)))
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
(declare-const $t@1191@01 $Snap)
(assert (= $t@1191@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1192@01 $Snap)
(assert (= $t@1192@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u32$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$206$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1193@01 $Ref)
(declare-const _0@1194@01 $Ref)
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
(declare-const __t0@1195@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1196@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1197@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1198@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@1199@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@1200@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@1201@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@1202@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(u64(_1), write) && acc(u32(_2), write)
(declare-const $t@1203@01 $Snap)
(assert (= $t@1203@01 ($Snap.combine ($Snap.first $t@1203@01) ($Snap.second $t@1203@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1204@01 $Snap)
(assert (= $t@1204@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1205@01 $Snap)
(assert (= $t@1205@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1206@01 $Snap)
(assert (= $t@1206@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1207@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@1208@01 Int)
(assert (not (= ret@1207@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u64(_1), write)
(assert (=
  ($Snap.first $t@1203@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@1203@01))
    ($Snap.second ($Snap.first $t@1203@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1207@01 _1@1198@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@1198@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.first $t@1203@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@1203@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u64%trigger ($Snap.first $t@1203@01) _1@1198@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@1209@01 Int)
(assert (=
  val_int@1209@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@1203@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1198@01 ret@1207@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1210@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1211@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1207@01 ret@1210@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1198@01 ret@1210@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@1210@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u32(_2), write)
(assert (=
  ($Snap.second $t@1203@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1203@01))
    ($Snap.second ($Snap.second $t@1203@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1210@01 _2@1199@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1207@01 _2@1199@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1198@01 _2@1199@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1199@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1203@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1203@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u32%trigger ($Snap.second $t@1203@01) _2@1199@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1212@01 Int)
(assert (=
  val_int@1212@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1203@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1199@01 ret@1210@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1207@01 ret@1210@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1198@01 ret@1210@01)))
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
; fold acc(u32(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1212@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1212@01))
(assert (u32%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap val_int@1212@01)
  $Snap.unit) ret@1210@01))
; [exec]
; assert true
; [exec]
; exhale acc(u32(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@1213@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1214@01 $Snap)
(assert (= $t@1214@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@1215@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1216@01 $Snap)
(assert (= $t@1216@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1217@01 $Snap)
(assert (= $t@1217@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(u64(_3), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1209@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1209@01))
(assert (u64%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap val_int@1209@01)
  $Snap.unit) ret@1207@01))
; [exec]
; assert true
; [exec]
; exhale acc(u64(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1218@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1219@01 $Snap)
(assert (= $t@1219@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u64(_0), write)
(declare-const $t@1220@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1221@01 $Snap)
(assert (= $t@1221@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1222@01 $Snap)
(assert (= $t@1222@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(u64(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$102$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1223@01 $Ref)
(declare-const _0@1224@01 $Ref)
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
(declare-const __t0@1225@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1226@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1227@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1228@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@1229@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@1230@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@1231@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@1232@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(u8(_1), write) && acc(u8(_2), write)
(declare-const $t@1233@01 $Snap)
(assert (= $t@1233@01 ($Snap.combine ($Snap.first $t@1233@01) ($Snap.second $t@1233@01))))
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1228@01 _2@1229@01)))
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
(declare-const $t@1234@01 $Snap)
(assert (= $t@1234@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1235@01 $Snap)
(assert (= $t@1235@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1236@01 $Snap)
(assert (= $t@1236@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1237@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@1238@01 Int)
(assert (not (= ret@1237@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_1), write)
(assert (=
  ($Snap.first $t@1233@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@1233@01))
    ($Snap.second ($Snap.first $t@1233@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1237@01 _1@1228@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@1228@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.first $t@1233@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@1233@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.first $t@1233@01) _1@1228@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@1239@01 Int)
(assert (=
  val_int@1239@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@1233@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1228@01 ret@1237@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1240@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1241@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1237@01 ret@1240@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1228@01 ret@1240@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@1240@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_2), write)
(assert (=
  ($Snap.second $t@1233@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1233@01))
    ($Snap.second ($Snap.second $t@1233@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1240@01 _2@1229@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1237@01 _2@1229@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1228@01 _2@1229@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1229@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1233@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1233@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.second $t@1233@01) _2@1229@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1242@01 Int)
(assert (=
  val_int@1242@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1233@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1229@01 ret@1240@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1237@01 ret@1240@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1228@01 ret@1240@01)))
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
; fold acc(u8(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1242@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1242@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@1242@01) $Snap.unit) ret@1240@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@1243@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1244@01 $Snap)
(assert (= $t@1244@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@1245@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1246@01 $Snap)
(assert (= $t@1246@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1247@01 $Snap)
(assert (= $t@1247@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(u8(_3), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1239@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1239@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@1239@01) $Snap.unit) ret@1237@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1248@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1249@01 $Snap)
(assert (= $t@1249@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u8(_0), write)
(declare-const $t@1250@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1251@01 $Snap)
(assert (= $t@1251@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1252@01 $Snap)
(assert (= $t@1252@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(u8(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$15$closesqu$$$one$opensqu$0$closesqu$ ----------
(declare-const _0@1253@01 $Ref)
(declare-const _0@1254@01 $Ref)
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
(declare-const __t0@1255@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@1256@01 $Snap)
(assert (= $t@1256@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1257@01 $Snap)
(assert (= $t@1257@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1258@01 $Snap)
(assert (= $t@1258@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1259@01 $Snap)
(assert (= $t@1259@01 $Snap.unit))
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
(declare-const ret@1260@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_int, write)
(declare-const $t@1261@01 Int)
(assert (not (= ret@1260@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_int := 1
; [exec]
; label return
; [exec]
; fold acc(u32(_0), write)
; [eval] 0 <= self.val_int
(assert (u32%trigger ($Snap.combine ($SortWrappers.IntTo$Snap 1) $Snap.unit) ret@1260@01))
; [exec]
; assert true
; [exec]
; exhale acc(u32(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$202$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1262@01 $Ref)
(declare-const _0@1263@01 $Ref)
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
(declare-const __t0@1264@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1265@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1266@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1267@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@1268@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@1269@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@1270@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@1271@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(u64(_1), write) && acc(u16(_2), write)
(declare-const $t@1272@01 $Snap)
(assert (= $t@1272@01 ($Snap.combine ($Snap.first $t@1272@01) ($Snap.second $t@1272@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1273@01 $Snap)
(assert (= $t@1273@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1274@01 $Snap)
(assert (= $t@1274@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1275@01 $Snap)
(assert (= $t@1275@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1276@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@1277@01 Int)
(assert (not (= ret@1276@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u64(_1), write)
(assert (=
  ($Snap.first $t@1272@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@1272@01))
    ($Snap.second ($Snap.first $t@1272@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1276@01 _1@1267@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@1267@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.first $t@1272@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@1272@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u64%trigger ($Snap.first $t@1272@01) _1@1267@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@1278@01 Int)
(assert (=
  val_int@1278@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@1272@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1267@01 ret@1276@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1279@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1280@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1276@01 ret@1279@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1267@01 ret@1279@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@1279@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u16(_2), write)
(assert (=
  ($Snap.second $t@1272@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1272@01))
    ($Snap.second ($Snap.second $t@1272@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1279@01 _2@1268@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1276@01 _2@1268@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1267@01 _2@1268@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1268@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1272@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1272@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u16%trigger ($Snap.second $t@1272@01) _2@1268@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1281@01 Int)
(assert (=
  val_int@1281@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1272@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1268@01 ret@1279@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1276@01 ret@1279@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1267@01 ret@1279@01)))
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
; fold acc(u16(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1281@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1281@01))
(assert (u16%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap val_int@1281@01)
  $Snap.unit) ret@1279@01))
; [exec]
; assert true
; [exec]
; exhale acc(u16(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@1282@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1283@01 $Snap)
(assert (= $t@1283@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@1284@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1285@01 $Snap)
(assert (= $t@1285@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1286@01 $Snap)
(assert (= $t@1286@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(u64(_3), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1278@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1278@01))
(assert (u64%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap val_int@1278@01)
  $Snap.unit) ret@1276@01))
; [exec]
; assert true
; [exec]
; exhale acc(u64(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1287@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1288@01 $Snap)
(assert (= $t@1288@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u64(_0), write)
(declare-const $t@1289@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1290@01 $Snap)
(assert (= $t@1290@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1291@01 $Snap)
(assert (= $t@1291@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(u64(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$14$closesqu$$$one$opensqu$0$closesqu$ ----------
(declare-const _0@1292@01 $Ref)
(declare-const _0@1293@01 $Ref)
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
(declare-const __t0@1294@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@1295@01 $Snap)
(assert (= $t@1295@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1296@01 $Snap)
(assert (= $t@1296@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1297@01 $Snap)
(assert (= $t@1297@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1298@01 $Snap)
(assert (= $t@1298@01 $Snap.unit))
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
(declare-const ret@1299@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_int, write)
(declare-const $t@1300@01 Int)
(assert (not (= ret@1299@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_int := 1
; [exec]
; label return
; [exec]
; fold acc(u16(_0), write)
; [eval] 0 <= self.val_int
(assert (u16%trigger ($Snap.combine ($SortWrappers.IntTo$Snap 1) $Snap.unit) ret@1299@01))
; [exec]
; assert true
; [exec]
; exhale acc(u16(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$186$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1301@01 $Ref)
(declare-const _0@1302@01 $Ref)
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
(declare-const __t0@1303@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1304@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1305@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1306@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@1307@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@1308@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@1309@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@1310@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(i32(_1), write) && acc(u16(_2), write)
(declare-const $t@1311@01 $Snap)
(assert (= $t@1311@01 ($Snap.combine ($Snap.first $t@1311@01) ($Snap.second $t@1311@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1312@01 $Snap)
(assert (= $t@1312@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1313@01 $Snap)
(assert (= $t@1313@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1314@01 $Snap)
(assert (= $t@1314@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1315@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@1316@01 Int)
(assert (not (= ret@1315@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(i32(_1), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1315@01 _1@1306@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@1306@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (i32%trigger ($Snap.first $t@1311@01) _1@1306@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@1317@01 Int)
(assert (= val_int@1317@01 ($SortWrappers.$SnapToInt ($Snap.first $t@1311@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1306@01 ret@1315@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1318@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1319@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1315@01 ret@1318@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1306@01 ret@1318@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@1318@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u16(_2), write)
(assert (=
  ($Snap.second $t@1311@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1311@01))
    ($Snap.second ($Snap.second $t@1311@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1318@01 _2@1307@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1315@01 _2@1307@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1306@01 _2@1307@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1307@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1311@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1311@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u16%trigger ($Snap.second $t@1311@01) _2@1307@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1320@01 Int)
(assert (=
  val_int@1320@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1311@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1307@01 ret@1318@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1315@01 ret@1318@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1306@01 ret@1318@01)))
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
; fold acc(u16(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1320@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1320@01))
(assert (u16%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap val_int@1320@01)
  $Snap.unit) ret@1318@01))
; [exec]
; assert true
; [exec]
; exhale acc(u16(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@1321@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1322@01 $Snap)
(assert (= $t@1322@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@1323@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1324@01 $Snap)
(assert (= $t@1324@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1325@01 $Snap)
(assert (= $t@1325@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(i32(_3), write)
(assert (i32%trigger ($SortWrappers.IntTo$Snap val_int@1317@01) ret@1315@01))
; [exec]
; assert true
; [exec]
; exhale acc(i32(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1326@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1327@01 $Snap)
(assert (= $t@1327@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(i32(_0), write)
(declare-const $t@1328@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1329@01 $Snap)
(assert (= $t@1329@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1330@01 $Snap)
(assert (= $t@1330@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(i32(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$130$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1331@01 $Ref)
(declare-const _0@1332@01 $Ref)
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
(declare-const __t0@1333@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1334@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1335@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1336@01 $Ref)
; [exec]
; var _2: Int
(declare-const _2@1337@01 Int)
; [exec]
; var _3: Ref
(declare-const _3@1338@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@1339@01 Int)
; [exec]
; var _5: Int
(declare-const _5@1340@01 Int)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(i8(_1), write) && _2 >= 0
(declare-const $t@1341@01 $Snap)
(assert (= $t@1341@01 ($Snap.combine ($Snap.first $t@1341@01) ($Snap.second $t@1341@01))))
(assert (= ($Snap.second $t@1341@01) $Snap.unit))
; [eval] _2 >= 0
(assert (>= _2@1337@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1342@01 $Snap)
(assert (= $t@1342@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1343@01 $Snap)
(assert (= $t@1343@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1344@01 $Snap)
(assert (= $t@1344@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1345@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@1346@01 Int)
(assert (not (= ret@1345@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(i8(_1), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1345@01 _1@1336@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@1336@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (i8%trigger ($Snap.first $t@1341@01) _1@1336@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@1347@01 Int)
(assert (= val_int@1347@01 ($SortWrappers.$SnapToInt ($Snap.first $t@1341@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1336@01 ret@1345@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_int()
(declare-const ret@1348@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1349@01 $Snap)
(assert (= $t@1349@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _2 >= 0
(declare-const $t@1350@01 $Snap)
(assert (= $t@1350@01 $Snap.unit))
; [eval] _2 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5 := _2
; [exec]
; label l1
; [exec]
; label l2
; [exec]
; assert _5 >= 0
; [eval] _5 >= 0
; [exec]
; assert true
; [exec]
; exhale _5 >= 0
; [eval] _5 >= 0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@1351@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1352@01 $Snap)
(assert (= $t@1352@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@1353@01 $Snap)
(assert (= $t@1353@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@1351@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1354@01 $Snap)
(assert (= $t@1354@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1355@01 $Snap)
(assert (= $t@1355@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(i8(_3), write)
(assert (i8%trigger ($SortWrappers.IntTo$Snap val_int@1347@01) ret@1345@01))
; [exec]
; assert true
; [exec]
; exhale acc(i8(_3), write) && _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1356@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1357@01 $Snap)
(assert (= $t@1357@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(i8(_0), write)
(declare-const $t@1358@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1359@01 $Snap)
(assert (= $t@1359@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1360@01 $Snap)
(assert (= $t@1360@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(i8(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$150$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1361@01 $Ref)
(declare-const _0@1362@01 $Ref)
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
(declare-const __t0@1363@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1364@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1365@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1366@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@1367@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@1368@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@1369@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@1370@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(i16(_1), write) && acc(u8(_2), write)
(declare-const $t@1371@01 $Snap)
(assert (= $t@1371@01 ($Snap.combine ($Snap.first $t@1371@01) ($Snap.second $t@1371@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1372@01 $Snap)
(assert (= $t@1372@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1373@01 $Snap)
(assert (= $t@1373@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1374@01 $Snap)
(assert (= $t@1374@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1375@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@1376@01 Int)
(assert (not (= ret@1375@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(i16(_1), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1375@01 _1@1366@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@1366@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (i16%trigger ($Snap.first $t@1371@01) _1@1366@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@1377@01 Int)
(assert (= val_int@1377@01 ($SortWrappers.$SnapToInt ($Snap.first $t@1371@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1366@01 ret@1375@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1378@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1379@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1375@01 ret@1378@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1366@01 ret@1378@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@1378@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_2), write)
(assert (=
  ($Snap.second $t@1371@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1371@01))
    ($Snap.second ($Snap.second $t@1371@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1378@01 _2@1367@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1375@01 _2@1367@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1366@01 _2@1367@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1367@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1371@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1371@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.second $t@1371@01) _2@1367@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1380@01 Int)
(assert (=
  val_int@1380@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1371@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1367@01 ret@1378@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1375@01 ret@1378@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1366@01 ret@1378@01)))
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
; fold acc(u8(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1380@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1380@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@1380@01) $Snap.unit) ret@1378@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@1381@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1382@01 $Snap)
(assert (= $t@1382@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@1383@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1384@01 $Snap)
(assert (= $t@1384@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1385@01 $Snap)
(assert (= $t@1385@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(i16(_3), write)
(assert (i16%trigger ($SortWrappers.IntTo$Snap val_int@1377@01) ret@1375@01))
; [exec]
; assert true
; [exec]
; exhale acc(i16(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1386@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1387@01 $Snap)
(assert (= $t@1387@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(i16(_0), write)
(declare-const $t@1388@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1389@01 $Snap)
(assert (= $t@1389@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1390@01 $Snap)
(assert (= $t@1390@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(i16(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$106$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1391@01 $Ref)
(declare-const _0@1392@01 $Ref)
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
(declare-const __t0@1393@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1394@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1395@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1396@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@1397@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@1398@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@1399@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@1400@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(u8(_1), write) && acc(u16(_2), write)
(declare-const $t@1401@01 $Snap)
(assert (= $t@1401@01 ($Snap.combine ($Snap.first $t@1401@01) ($Snap.second $t@1401@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1402@01 $Snap)
(assert (= $t@1402@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1403@01 $Snap)
(assert (= $t@1403@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1404@01 $Snap)
(assert (= $t@1404@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1405@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@1406@01 Int)
(assert (not (= ret@1405@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_1), write)
(assert (=
  ($Snap.first $t@1401@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@1401@01))
    ($Snap.second ($Snap.first $t@1401@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1405@01 _1@1396@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@1396@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.first $t@1401@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@1401@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.first $t@1401@01) _1@1396@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@1407@01 Int)
(assert (=
  val_int@1407@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@1401@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1396@01 ret@1405@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1408@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1409@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1405@01 ret@1408@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1396@01 ret@1408@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@1408@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u16(_2), write)
(assert (=
  ($Snap.second $t@1401@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1401@01))
    ($Snap.second ($Snap.second $t@1401@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1408@01 _2@1397@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1405@01 _2@1397@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1396@01 _2@1397@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1397@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1401@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1401@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u16%trigger ($Snap.second $t@1401@01) _2@1397@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1410@01 Int)
(assert (=
  val_int@1410@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1401@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1397@01 ret@1408@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1405@01 ret@1408@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1396@01 ret@1408@01)))
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
; fold acc(u16(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1410@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1410@01))
(assert (u16%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap val_int@1410@01)
  $Snap.unit) ret@1408@01))
; [exec]
; assert true
; [exec]
; exhale acc(u16(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@1411@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1412@01 $Snap)
(assert (= $t@1412@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@1413@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1414@01 $Snap)
(assert (= $t@1414@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1415@01 $Snap)
(assert (= $t@1415@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(u8(_3), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1407@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1407@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@1407@01) $Snap.unit) ret@1405@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1416@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1417@01 $Snap)
(assert (= $t@1417@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u8(_0), write)
(declare-const $t@1418@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1419@01 $Snap)
(assert (= $t@1419@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1420@01 $Snap)
(assert (= $t@1420@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(u8(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$278$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1421@01 $Ref)
(declare-const _0@1422@01 $Ref)
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
(declare-const __t0@1423@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1424@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1425@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1426@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@1427@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@1428@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@1429@01 Int)
; [exec]
; var _5: Ref
(declare-const _5@1430@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_(_1), write) &&
;   acc(u8(_2), write)
(declare-const $t@1431@01 $Snap)
(assert (= $t@1431@01 ($Snap.combine ($Snap.first $t@1431@01) ($Snap.second $t@1431@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1432@01 $Snap)
(assert (= $t@1432@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1433@01 $Snap)
(assert (= $t@1433@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1434@01 $Snap)
(assert (= $t@1434@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1435@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_(_3), write)
(declare-const $t@1436@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1426@01 ret@1435@01)))
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
; inhale m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$(_1,
;   _3)
(declare-const $t@1437@01 $Snap)
(assert (= $t@1437@01 $Snap.unit))
; [eval] m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$(_1, _3)
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
; [eval] read$()
(set-option :timeout 0)
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first $t@1431@01)
  $t@1436@01) _1@1426@01 ret@1435@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$%precondition ($Snap.combine
    ($Snap.first $t@1431@01)
    $t@1436@01) _1@1426@01 ret@1435@01)))
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_$$bool$ ($Snap.combine
  ($Snap.first $t@1431@01)
  $t@1436@01) _1@1426@01 ret@1435@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1438@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1439@01 Int)
(assert (not (= ret@1438@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_2), write)
(assert (=
  ($Snap.second $t@1431@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1431@01))
    ($Snap.second ($Snap.second $t@1431@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1438@01 _2@1427@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1427@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1431@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1431@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.second $t@1431@01) _2@1427@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1440@01 Int)
(assert (=
  val_int@1440@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1431@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1427@01 ret@1438@01)))
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
; fold acc(u8(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1440@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1440@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@1440@01) $Snap.unit) ret@1438@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_5), write)
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@1441@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1442@01 $Snap)
(assert (= $t@1442@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@1443@01 $Snap)
(assert (= $t@1443@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@1441@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1444@01 $Snap)
(assert (= $t@1444@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1445@01 $Snap)
(assert (= $t@1445@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_(_3), write) &&
;   _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1446@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1447@01 $Snap)
(assert (= $t@1447@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_(_0), write)
(declare-const $t@1448@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1426@01 ret@1446@01)))
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
(declare-const $t@1449@01 $Snap)
(assert (= $t@1449@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1450@01 $Snap)
(assert (= $t@1450@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u16$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$334$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1451@01 $Ref)
(declare-const _0@1452@01 $Ref)
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
(declare-const __t0@1453@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1454@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1455@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1456@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@1457@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@1458@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@1459@01 Int)
; [exec]
; var _5: Ref
(declare-const _5@1460@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_(_1), write) &&
;   acc(u8(_2), write)
(declare-const $t@1461@01 $Snap)
(assert (= $t@1461@01 ($Snap.combine ($Snap.first $t@1461@01) ($Snap.second $t@1461@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1462@01 $Snap)
(assert (= $t@1462@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1463@01 $Snap)
(assert (= $t@1463@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1464@01 $Snap)
(assert (= $t@1464@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1465@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_(_3), write)
(declare-const $t@1466@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1456@01 ret@1465@01)))
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
; inhale m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$(_1,
;   _3)
(declare-const $t@1467@01 $Snap)
(assert (= $t@1467@01 $Snap.unit))
; [eval] m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$(_1, _3)
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
; [eval] read$()
(set-option :timeout 0)
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first $t@1461@01)
  $t@1466@01) _1@1456@01 ret@1465@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%precondition ($Snap.combine
    ($Snap.first $t@1461@01)
    $t@1466@01) _1@1456@01 ret@1465@01)))
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$ ($Snap.combine
  ($Snap.first $t@1461@01)
  $t@1466@01) _1@1456@01 ret@1465@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1468@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1469@01 Int)
(assert (not (= ret@1468@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_2), write)
(assert (=
  ($Snap.second $t@1461@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1461@01))
    ($Snap.second ($Snap.second $t@1461@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1468@01 _2@1457@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1457@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1461@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1461@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.second $t@1461@01) _2@1457@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1470@01 Int)
(assert (=
  val_int@1470@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1461@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1457@01 ret@1468@01)))
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
; fold acc(u8(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1470@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1470@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@1470@01) $Snap.unit) ret@1468@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_5), write)
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@1471@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1472@01 $Snap)
(assert (= $t@1472@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@1473@01 $Snap)
(assert (= $t@1473@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@1471@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1474@01 $Snap)
(assert (= $t@1474@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1475@01 $Snap)
(assert (= $t@1475@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_(_3), write) &&
;   _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1476@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1477@01 $Snap)
(assert (= $t@1477@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_(_0), write)
(declare-const $t@1478@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1456@01 ret@1476@01)))
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
(declare-const $t@1479@01 $Snap)
(assert (= $t@1479@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1480@01 $Snap)
(assert (= $t@1480@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$isize$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$246$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1481@01 $Ref)
(declare-const _0@1482@01 $Ref)
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
(declare-const __t0@1483@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1484@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1485@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1486@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@1487@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@1488@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@1489@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@1490@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(isize(_1), write) && acc(u8(_2), write)
(declare-const $t@1491@01 $Snap)
(assert (= $t@1491@01 ($Snap.combine ($Snap.first $t@1491@01) ($Snap.second $t@1491@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1492@01 $Snap)
(assert (= $t@1492@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1493@01 $Snap)
(assert (= $t@1493@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1494@01 $Snap)
(assert (= $t@1494@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1495@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@1496@01 Int)
(assert (not (= ret@1495@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(isize(_1), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1495@01 _1@1486@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@1486@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (isize%trigger ($Snap.first $t@1491@01) _1@1486@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@1497@01 Int)
(assert (= val_int@1497@01 ($SortWrappers.$SnapToInt ($Snap.first $t@1491@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1486@01 ret@1495@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1498@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1499@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1495@01 ret@1498@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1486@01 ret@1498@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@1498@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_2), write)
(assert (=
  ($Snap.second $t@1491@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1491@01))
    ($Snap.second ($Snap.second $t@1491@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1498@01 _2@1487@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1495@01 _2@1487@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1486@01 _2@1487@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1487@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1491@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1491@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.second $t@1491@01) _2@1487@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1500@01 Int)
(assert (=
  val_int@1500@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1491@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1487@01 ret@1498@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1495@01 ret@1498@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1486@01 ret@1498@01)))
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
; fold acc(u8(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1500@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1500@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@1500@01) $Snap.unit) ret@1498@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@1501@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1502@01 $Snap)
(assert (= $t@1502@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@1503@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1504@01 $Snap)
(assert (= $t@1504@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1505@01 $Snap)
(assert (= $t@1505@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(isize(_3), write)
(assert (isize%trigger ($SortWrappers.IntTo$Snap val_int@1497@01) ret@1495@01))
; [exec]
; assert true
; [exec]
; exhale acc(isize(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1506@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1507@01 $Snap)
(assert (= $t@1507@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(isize(_0), write)
(declare-const $t@1508@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1509@01 $Snap)
(assert (= $t@1509@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1510@01 $Snap)
(assert (= $t@1510@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(isize(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$146$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1511@01 $Ref)
(declare-const _0@1512@01 $Ref)
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
(declare-const __t0@1513@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1514@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1515@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1516@01 $Ref)
; [exec]
; var _2: Int
(declare-const _2@1517@01 Int)
; [exec]
; var _3: Ref
(declare-const _3@1518@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@1519@01 Int)
; [exec]
; var _5: Int
(declare-const _5@1520@01 Int)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(u16(_1), write) && _2 >= 0
(declare-const $t@1521@01 $Snap)
(assert (= $t@1521@01 ($Snap.combine ($Snap.first $t@1521@01) ($Snap.second $t@1521@01))))
(assert (= ($Snap.second $t@1521@01) $Snap.unit))
; [eval] _2 >= 0
(assert (>= _2@1517@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1522@01 $Snap)
(assert (= $t@1522@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1523@01 $Snap)
(assert (= $t@1523@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1524@01 $Snap)
(assert (= $t@1524@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1525@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@1526@01 Int)
(assert (not (= ret@1525@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u16(_1), write)
(assert (=
  ($Snap.first $t@1521@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@1521@01))
    ($Snap.second ($Snap.first $t@1521@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1525@01 _1@1516@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@1516@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.first $t@1521@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@1521@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u16%trigger ($Snap.first $t@1521@01) _1@1516@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@1527@01 Int)
(assert (=
  val_int@1527@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@1521@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1516@01 ret@1525@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_int()
(declare-const ret@1528@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1529@01 $Snap)
(assert (= $t@1529@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _2 >= 0
(declare-const $t@1530@01 $Snap)
(assert (= $t@1530@01 $Snap.unit))
; [eval] _2 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5 := _2
; [exec]
; label l1
; [exec]
; label l2
; [exec]
; assert _5 >= 0
; [eval] _5 >= 0
; [exec]
; assert true
; [exec]
; exhale _5 >= 0
; [eval] _5 >= 0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@1531@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1532@01 $Snap)
(assert (= $t@1532@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@1533@01 $Snap)
(assert (= $t@1533@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@1531@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1534@01 $Snap)
(assert (= $t@1534@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1535@01 $Snap)
(assert (= $t@1535@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(u16(_3), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1527@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1527@01))
(assert (u16%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap val_int@1527@01)
  $Snap.unit) ret@1525@01))
; [exec]
; assert true
; [exec]
; exhale acc(u16(_3), write) && _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1536@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1537@01 $Snap)
(assert (= $t@1537@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u16(_0), write)
(declare-const $t@1538@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1539@01 $Snap)
(assert (= $t@1539@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1540@01 $Snap)
(assert (= $t@1540@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(u16(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$238$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1541@01 $Ref)
(declare-const _0@1542@01 $Ref)
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
(declare-const __t0@1543@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1544@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1545@01 Bool)
; [exec]
; var _1: Int
(declare-const _1@1546@01 Int)
; [exec]
; var _2: Ref
(declare-const _2@1547@01 $Ref)
; [exec]
; var _3: Int
(declare-const _3@1548@01 Int)
; [exec]
; var _4: Ref
(declare-const _4@1549@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@1550@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale _1 >= 0 && acc(u32(_2), write)
(declare-const $t@1551@01 $Snap)
(assert (= $t@1551@01 ($Snap.combine ($Snap.first $t@1551@01) ($Snap.second $t@1551@01))))
(assert (= ($Snap.first $t@1551@01) $Snap.unit))
; [eval] _1 >= 0
(assert (>= _1@1546@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1552@01 $Snap)
(assert (= $t@1552@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1553@01 $Snap)
(assert (= $t@1553@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1554@01 $Snap)
(assert (= $t@1554@01 $Snap.unit))
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
(declare-const ret@1555@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1556@01 $Snap)
(assert (= $t@1556@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _1 >= 0
(declare-const $t@1557@01 $Snap)
(assert (= $t@1557@01 $Snap.unit))
; [eval] _1 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _3 := _1
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1558@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1559@01 Int)
(assert (not (= ret@1558@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u32(_2), write)
(assert (=
  ($Snap.second $t@1551@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1551@01))
    ($Snap.second ($Snap.second $t@1551@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1558@01 _2@1547@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1547@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1551@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1551@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u32%trigger ($Snap.second $t@1551@01) _2@1547@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1560@01 Int)
(assert (=
  val_int@1560@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1551@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1547@01 ret@1558@01)))
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
; fold acc(u32(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1560@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1560@01))
(assert (u32%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap val_int@1560@01)
  $Snap.unit) ret@1558@01))
; [exec]
; assert true
; [exec]
; exhale acc(u32(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@1561@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1562@01 $Snap)
(assert (= $t@1562@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@1563@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1564@01 $Snap)
(assert (= $t@1564@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1565@01 $Snap)
(assert (= $t@1565@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert _3 >= 0
; [eval] _3 >= 0
; [exec]
; assert true
; [exec]
; exhale _3 >= 0 && acc(u32(_4), write)
; [eval] _3 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1566@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1567@01 $Snap)
(assert (= $t@1567@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(usize(_0), write)
(declare-const $t@1568@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1569@01 $Snap)
(assert (= $t@1569@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1570@01 $Snap)
(assert (= $t@1570@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(usize(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$174$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1571@01 $Ref)
(declare-const _0@1572@01 $Ref)
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
(declare-const __t0@1573@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1574@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1575@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1576@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@1577@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@1578@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@1579@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@1580@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(u32(_1), write) && acc(u32(_2), write)
(declare-const $t@1581@01 $Snap)
(assert (= $t@1581@01 ($Snap.combine ($Snap.first $t@1581@01) ($Snap.second $t@1581@01))))
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1576@01 _2@1577@01)))
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
(declare-const $t@1582@01 $Snap)
(assert (= $t@1582@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1583@01 $Snap)
(assert (= $t@1583@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1584@01 $Snap)
(assert (= $t@1584@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1585@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@1586@01 Int)
(assert (not (= ret@1585@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u32(_1), write)
(assert (=
  ($Snap.first $t@1581@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@1581@01))
    ($Snap.second ($Snap.first $t@1581@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1585@01 _1@1576@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@1576@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.first $t@1581@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@1581@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u32%trigger ($Snap.first $t@1581@01) _1@1576@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@1587@01 Int)
(assert (=
  val_int@1587@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@1581@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1576@01 ret@1585@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1588@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1589@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1585@01 ret@1588@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1576@01 ret@1588@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@1588@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u32(_2), write)
(assert (=
  ($Snap.second $t@1581@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1581@01))
    ($Snap.second ($Snap.second $t@1581@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1588@01 _2@1577@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1585@01 _2@1577@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1576@01 _2@1577@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1577@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1581@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1581@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u32%trigger ($Snap.second $t@1581@01) _2@1577@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1590@01 Int)
(assert (=
  val_int@1590@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1581@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1577@01 ret@1588@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1585@01 ret@1588@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1576@01 ret@1588@01)))
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
; fold acc(u32(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1590@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1590@01))
(assert (u32%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap val_int@1590@01)
  $Snap.unit) ret@1588@01))
; [exec]
; assert true
; [exec]
; exhale acc(u32(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@1591@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1592@01 $Snap)
(assert (= $t@1592@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@1593@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1594@01 $Snap)
(assert (= $t@1594@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1595@01 $Snap)
(assert (= $t@1595@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(u32(_3), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1587@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1587@01))
(assert (u32%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap val_int@1587@01)
  $Snap.unit) ret@1585@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1591@01 ret@1585@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert true
; [exec]
; exhale acc(u32(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1596@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1597@01 $Snap)
(assert (= $t@1597@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_0), write)
(declare-const $t@1598@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1599@01 $Snap)
(assert (= $t@1599@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1600@01 $Snap)
(assert (= $t@1600@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(u32(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$11$closesqu$$$zero$opensqu$0$closesqu$ ----------
(declare-const _0@1601@01 $Ref)
(declare-const _0@1602@01 $Ref)
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
(declare-const __t0@1603@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@1604@01 $Snap)
(assert (= $t@1604@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1605@01 $Snap)
(assert (= $t@1605@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1606@01 $Snap)
(assert (= $t@1606@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1607@01 $Snap)
(assert (= $t@1607@01 $Snap.unit))
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
(declare-const ret@1608@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_int, write)
(declare-const $t@1609@01 Int)
(assert (not (= ret@1608@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_int := 0
; [exec]
; label return
; [exec]
; fold acc(i64(_0), write)
(assert (i64%trigger ($SortWrappers.IntTo$Snap 0) ret@1608@01))
; [exec]
; assert true
; [exec]
; exhale acc(i64(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$274$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1610@01 $Ref)
(declare-const _0@1611@01 $Ref)
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
(declare-const __t0@1612@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1613@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1614@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1615@01 $Ref)
; [exec]
; var _2: Int
(declare-const _2@1616@01 Int)
; [exec]
; var _3: Ref
(declare-const _3@1617@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@1618@01 Int)
; [exec]
; var _5: Int
(declare-const _5@1619@01 Int)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_(_1), write) &&
;   _2 >= 0
(declare-const $t@1620@01 $Snap)
(assert (= $t@1620@01 ($Snap.combine ($Snap.first $t@1620@01) ($Snap.second $t@1620@01))))
(assert (= ($Snap.second $t@1620@01) $Snap.unit))
; [eval] _2 >= 0
(assert (>= _2@1616@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1621@01 $Snap)
(assert (= $t@1621@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1622@01 $Snap)
(assert (= $t@1622@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1623@01 $Snap)
(assert (= $t@1623@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1624@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_(_3), write)
(declare-const $t@1625@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1615@01 ret@1624@01)))
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
; inhale m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$(_1,
;   _3)
(declare-const $t@1626@01 $Snap)
(assert (= $t@1626@01 $Snap.unit))
; [eval] m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$(_1, _3)
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
; [eval] read$()
(set-option :timeout 0)
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first $t@1620@01)
  $t@1625@01) _1@1615@01 ret@1624@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$%precondition ($Snap.combine
    ($Snap.first $t@1620@01)
    $t@1625@01) _1@1615@01 ret@1624@01)))
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$ ($Snap.combine
  ($Snap.first $t@1620@01)
  $t@1625@01) _1@1615@01 ret@1624@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_int()
(declare-const ret@1627@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1628@01 $Snap)
(assert (= $t@1628@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _2 >= 0
(declare-const $t@1629@01 $Snap)
(assert (= $t@1629@01 $Snap.unit))
; [eval] _2 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5 := _2
; [exec]
; label l1
; [exec]
; label l2
; [exec]
; assert _5 >= 0
; [eval] _5 >= 0
; [exec]
; assert true
; [exec]
; exhale _5 >= 0
; [eval] _5 >= 0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@1630@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1631@01 $Snap)
(assert (= $t@1631@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@1632@01 $Snap)
(assert (= $t@1632@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@1630@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1633@01 $Snap)
(assert (= $t@1633@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1634@01 $Snap)
(assert (= $t@1634@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_(_3), write) &&
;   _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1635@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1636@01 $Snap)
(assert (= $t@1636@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_(_0), write)
(declare-const $t@1637@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1615@01 ret@1635@01)))
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
(declare-const $t@1638@01 $Snap)
(assert (= $t@1638@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1639@01 $Snap)
(assert (= $t@1639@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$zero$opensqu$0$closesqu$ ----------
(declare-const _0@1640@01 $Ref)
(declare-const _0@1641@01 $Ref)
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
(declare-const __t0@1642@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1643@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; inhale true
(declare-const $t@1644@01 $Snap)
(assert (= $t@1644@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1645@01 $Snap)
(assert (= $t@1645@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1646@01 $Snap)
(assert (= $t@1646@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1647@01 $Snap)
(assert (= $t@1647@01 $Snap.unit))
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
; label l0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1648@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1649@01 $Snap)
(assert (= $t@1649@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(__TYPARAM__$T$__(_0), write)
(declare-const $t@1650@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1651@01 $Snap)
(assert (= $t@1651@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1652@01 $Snap)
(assert (= $t@1652@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l1
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(__TYPARAM__$T$__(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$270$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1653@01 $Ref)
(declare-const _0@1654@01 $Ref)
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
(declare-const __t0@1655@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1656@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1657@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1658@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@1659@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@1660@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@1661@01 Int)
; [exec]
; var _5: Ref
(declare-const _5@1662@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_(_1), write) &&
;   acc(u8(_2), write)
(declare-const $t@1663@01 $Snap)
(assert (= $t@1663@01 ($Snap.combine ($Snap.first $t@1663@01) ($Snap.second $t@1663@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1664@01 $Snap)
(assert (= $t@1664@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1665@01 $Snap)
(assert (= $t@1665@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1666@01 $Snap)
(assert (= $t@1666@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1667@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_(_3), write)
(declare-const $t@1668@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1658@01 ret@1667@01)))
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
; inhale m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$(_1,
;   _3)
(declare-const $t@1669@01 $Snap)
(assert (= $t@1669@01 $Snap.unit))
; [eval] m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$(_1, _3)
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
; [eval] read$()
(set-option :timeout 0)
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first $t@1663@01)
  $t@1668@01) _1@1658@01 ret@1667@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$%precondition ($Snap.combine
    ($Snap.first $t@1663@01)
    $t@1668@01) _1@1658@01 ret@1667@01)))
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_$$bool$ ($Snap.combine
  ($Snap.first $t@1663@01)
  $t@1668@01) _1@1658@01 ret@1667@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1670@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1671@01 Int)
(assert (not (= ret@1670@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_2), write)
(assert (=
  ($Snap.second $t@1663@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1663@01))
    ($Snap.second ($Snap.second $t@1663@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1670@01 _2@1659@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1659@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1663@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1663@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.second $t@1663@01) _2@1659@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1672@01 Int)
(assert (=
  val_int@1672@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1663@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1659@01 ret@1670@01)))
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
; fold acc(u8(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1672@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1672@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@1672@01) $Snap.unit) ret@1670@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_5), write)
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@1673@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1674@01 $Snap)
(assert (= $t@1674@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@1675@01 $Snap)
(assert (= $t@1675@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@1673@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1676@01 $Snap)
(assert (= $t@1676@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1677@01 $Snap)
(assert (= $t@1677@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_(_3), write) &&
;   _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1678@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1679@01 $Snap)
(assert (= $t@1679@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_(_0), write)
(declare-const $t@1680@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1658@01 ret@1678@01)))
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
(declare-const $t@1681@01 $Snap)
(assert (= $t@1681@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1682@01 $Snap)
(assert (= $t@1682@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i8$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$198$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1683@01 $Ref)
(declare-const _0@1684@01 $Ref)
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
(declare-const __t0@1685@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1686@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1687@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1688@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@1689@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@1690@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@1691@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@1692@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(u64(_1), write) && acc(u8(_2), write)
(declare-const $t@1693@01 $Snap)
(assert (= $t@1693@01 ($Snap.combine ($Snap.first $t@1693@01) ($Snap.second $t@1693@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1694@01 $Snap)
(assert (= $t@1694@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1695@01 $Snap)
(assert (= $t@1695@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1696@01 $Snap)
(assert (= $t@1696@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1697@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@1698@01 Int)
(assert (not (= ret@1697@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u64(_1), write)
(assert (=
  ($Snap.first $t@1693@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@1693@01))
    ($Snap.second ($Snap.first $t@1693@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1697@01 _1@1688@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@1688@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.first $t@1693@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@1693@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u64%trigger ($Snap.first $t@1693@01) _1@1688@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@1699@01 Int)
(assert (=
  val_int@1699@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@1693@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1688@01 ret@1697@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1700@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1701@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1697@01 ret@1700@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1688@01 ret@1700@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@1700@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_2), write)
(assert (=
  ($Snap.second $t@1693@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1693@01))
    ($Snap.second ($Snap.second $t@1693@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1700@01 _2@1689@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1697@01 _2@1689@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1688@01 _2@1689@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1689@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1693@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1693@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.second $t@1693@01) _2@1689@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1702@01 Int)
(assert (=
  val_int@1702@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1693@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1689@01 ret@1700@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1697@01 ret@1700@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1688@01 ret@1700@01)))
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
; fold acc(u8(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1702@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1702@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@1702@01) $Snap.unit) ret@1700@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@1703@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1704@01 $Snap)
(assert (= $t@1704@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@1705@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1706@01 $Snap)
(assert (= $t@1706@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1707@01 $Snap)
(assert (= $t@1707@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(u64(_3), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1699@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1699@01))
(assert (u64%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap val_int@1699@01)
  $Snap.unit) ret@1697@01))
; [exec]
; assert true
; [exec]
; exhale acc(u64(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1708@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1709@01 $Snap)
(assert (= $t@1709@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u64(_0), write)
(declare-const $t@1710@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1711@01 $Snap)
(assert (= $t@1711@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1712@01 $Snap)
(assert (= $t@1712@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(u64(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$242$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1713@01 $Ref)
(declare-const _0@1714@01 $Ref)
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
(declare-const __t0@1715@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1716@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1717@01 Bool)
; [exec]
; var _1: Int
(declare-const _1@1718@01 Int)
; [exec]
; var _2: Int
(declare-const _2@1719@01 Int)
; [exec]
; var _3: Int
(declare-const _3@1720@01 Int)
; [exec]
; var _4: Int
(declare-const _4@1721@01 Int)
; [exec]
; var _5: Int
(declare-const _5@1722@01 Int)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale _1 >= 0 && _2 >= 0
(declare-const $t@1723@01 $Snap)
(assert (= $t@1723@01 ($Snap.combine ($Snap.first $t@1723@01) ($Snap.second $t@1723@01))))
(assert (= ($Snap.first $t@1723@01) $Snap.unit))
; [eval] _1 >= 0
(assert (>= _1@1718@01 0))
(assert (= ($Snap.second $t@1723@01) $Snap.unit))
; [eval] _2 >= 0
(assert (>= _2@1719@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1724@01 $Snap)
(assert (= $t@1724@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1725@01 $Snap)
(assert (= $t@1725@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1726@01 $Snap)
(assert (= $t@1726@01 $Snap.unit))
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
(declare-const ret@1727@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1728@01 $Snap)
(assert (= $t@1728@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _1 >= 0
(declare-const $t@1729@01 $Snap)
(assert (= $t@1729@01 $Snap.unit))
; [eval] _1 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _3 := _1
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_int()
(declare-const ret@1730@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1731@01 $Snap)
(assert (= $t@1731@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _2 >= 0
(declare-const $t@1732@01 $Snap)
(assert (= $t@1732@01 $Snap.unit))
; [eval] _2 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5 := _2
; [exec]
; label l1
; [exec]
; label l2
; [exec]
; assert _5 >= 0
; [eval] _5 >= 0
; [exec]
; assert true
; [exec]
; exhale _5 >= 0
; [eval] _5 >= 0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@1733@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1734@01 $Snap)
(assert (= $t@1734@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@1735@01 $Snap)
(assert (= $t@1735@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@1733@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1736@01 $Snap)
(assert (= $t@1736@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1737@01 $Snap)
(assert (= $t@1737@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert _3 >= 0
; [eval] _3 >= 0
; [exec]
; assert true
; [exec]
; exhale _3 >= 0 && _4 >= 0
; [eval] _3 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1738@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1739@01 $Snap)
(assert (= $t@1739@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(usize(_0), write)
(declare-const $t@1740@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1741@01 $Snap)
(assert (= $t@1741@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1742@01 $Snap)
(assert (= $t@1742@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(usize(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$zero$opensqu$0$closesqu$ ----------
(declare-const _0@1743@01 $Ref)
(declare-const _0@1744@01 $Ref)
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
(declare-const __t0@1745@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@1746@01 $Snap)
(assert (= $t@1746@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1747@01 $Snap)
(assert (= $t@1747@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1748@01 $Snap)
(assert (= $t@1748@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1749@01 $Snap)
(assert (= $t@1749@01 $Snap.unit))
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
(declare-const ret@1750@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_int, write)
(declare-const $t@1751@01 Int)
(assert (not (= ret@1750@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_int := 0
; [exec]
; label return
; [exec]
; fold acc(u32(_0), write)
; [eval] 0 <= self.val_int
(assert (u32%trigger ($Snap.combine ($SortWrappers.IntTo$Snap 0) $Snap.unit) ret@1750@01))
; [exec]
; assert true
; [exec]
; exhale acc(u32(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$194$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1752@01 $Ref)
(declare-const _0@1753@01 $Ref)
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
(declare-const __t0@1754@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1755@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1756@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1757@01 $Ref)
; [exec]
; var _2: Int
(declare-const _2@1758@01 Int)
; [exec]
; var _3: Ref
(declare-const _3@1759@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@1760@01 Int)
; [exec]
; var _5: Int
(declare-const _5@1761@01 Int)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(i32(_1), write) && _2 >= 0
(declare-const $t@1762@01 $Snap)
(assert (= $t@1762@01 ($Snap.combine ($Snap.first $t@1762@01) ($Snap.second $t@1762@01))))
(assert (= ($Snap.second $t@1762@01) $Snap.unit))
; [eval] _2 >= 0
(assert (>= _2@1758@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1763@01 $Snap)
(assert (= $t@1763@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1764@01 $Snap)
(assert (= $t@1764@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1765@01 $Snap)
(assert (= $t@1765@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1766@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@1767@01 Int)
(assert (not (= ret@1766@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(i32(_1), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1766@01 _1@1757@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@1757@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (i32%trigger ($Snap.first $t@1762@01) _1@1757@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@1768@01 Int)
(assert (= val_int@1768@01 ($SortWrappers.$SnapToInt ($Snap.first $t@1762@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1757@01 ret@1766@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_int()
(declare-const ret@1769@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1770@01 $Snap)
(assert (= $t@1770@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _2 >= 0
(declare-const $t@1771@01 $Snap)
(assert (= $t@1771@01 $Snap.unit))
; [eval] _2 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5 := _2
; [exec]
; label l1
; [exec]
; label l2
; [exec]
; assert _5 >= 0
; [eval] _5 >= 0
; [exec]
; assert true
; [exec]
; exhale _5 >= 0
; [eval] _5 >= 0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@1772@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1773@01 $Snap)
(assert (= $t@1773@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@1774@01 $Snap)
(assert (= $t@1774@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@1772@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1775@01 $Snap)
(assert (= $t@1775@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1776@01 $Snap)
(assert (= $t@1776@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(i32(_3), write)
(assert (i32%trigger ($SortWrappers.IntTo$Snap val_int@1768@01) ret@1766@01))
; [exec]
; assert true
; [exec]
; exhale acc(i32(_3), write) && _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1777@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1778@01 $Snap)
(assert (= $t@1778@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(i32(_0), write)
(declare-const $t@1779@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1780@01 $Snap)
(assert (= $t@1780@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1781@01 $Snap)
(assert (= $t@1781@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(i32(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$122$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1782@01 $Ref)
(declare-const _0@1783@01 $Ref)
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
(declare-const __t0@1784@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1785@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1786@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1787@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@1788@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@1789@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@1790@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@1791@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(i8(_1), write) && acc(u16(_2), write)
(declare-const $t@1792@01 $Snap)
(assert (= $t@1792@01 ($Snap.combine ($Snap.first $t@1792@01) ($Snap.second $t@1792@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1793@01 $Snap)
(assert (= $t@1793@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1794@01 $Snap)
(assert (= $t@1794@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1795@01 $Snap)
(assert (= $t@1795@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1796@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@1797@01 Int)
(assert (not (= ret@1796@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(i8(_1), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1796@01 _1@1787@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@1787@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (i8%trigger ($Snap.first $t@1792@01) _1@1787@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@1798@01 Int)
(assert (= val_int@1798@01 ($SortWrappers.$SnapToInt ($Snap.first $t@1792@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1787@01 ret@1796@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1799@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1800@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1796@01 ret@1799@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1787@01 ret@1799@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@1799@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u16(_2), write)
(assert (=
  ($Snap.second $t@1792@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1792@01))
    ($Snap.second ($Snap.second $t@1792@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1799@01 _2@1788@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1796@01 _2@1788@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1787@01 _2@1788@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1788@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1792@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1792@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u16%trigger ($Snap.second $t@1792@01) _2@1788@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1801@01 Int)
(assert (=
  val_int@1801@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1792@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1788@01 ret@1799@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1796@01 ret@1799@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1787@01 ret@1799@01)))
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
; fold acc(u16(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1801@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1801@01))
(assert (u16%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap val_int@1801@01)
  $Snap.unit) ret@1799@01))
; [exec]
; assert true
; [exec]
; exhale acc(u16(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@1802@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1803@01 $Snap)
(assert (= $t@1803@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@1804@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1805@01 $Snap)
(assert (= $t@1805@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1806@01 $Snap)
(assert (= $t@1806@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(i8(_3), write)
(assert (i8%trigger ($SortWrappers.IntTo$Snap val_int@1798@01) ret@1796@01))
; [exec]
; assert true
; [exec]
; exhale acc(i8(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1807@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1808@01 $Snap)
(assert (= $t@1808@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(i8(_0), write)
(declare-const $t@1809@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1810@01 $Snap)
(assert (= $t@1810@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1811@01 $Snap)
(assert (= $t@1811@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(i8(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$162$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1812@01 $Ref)
(declare-const _0@1813@01 $Ref)
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
(declare-const __t0@1814@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1815@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1816@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1817@01 $Ref)
; [exec]
; var _2: Int
(declare-const _2@1818@01 Int)
; [exec]
; var _3: Ref
(declare-const _3@1819@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@1820@01 Int)
; [exec]
; var _5: Int
(declare-const _5@1821@01 Int)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(i16(_1), write) && _2 >= 0
(declare-const $t@1822@01 $Snap)
(assert (= $t@1822@01 ($Snap.combine ($Snap.first $t@1822@01) ($Snap.second $t@1822@01))))
(assert (= ($Snap.second $t@1822@01) $Snap.unit))
; [eval] _2 >= 0
(assert (>= _2@1818@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1823@01 $Snap)
(assert (= $t@1823@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1824@01 $Snap)
(assert (= $t@1824@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1825@01 $Snap)
(assert (= $t@1825@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1826@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@1827@01 Int)
(assert (not (= ret@1826@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(i16(_1), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1826@01 _1@1817@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@1817@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (i16%trigger ($Snap.first $t@1822@01) _1@1817@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@1828@01 Int)
(assert (= val_int@1828@01 ($SortWrappers.$SnapToInt ($Snap.first $t@1822@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1817@01 ret@1826@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_int()
(declare-const ret@1829@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1830@01 $Snap)
(assert (= $t@1830@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _2 >= 0
(declare-const $t@1831@01 $Snap)
(assert (= $t@1831@01 $Snap.unit))
; [eval] _2 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _5 := _2
; [exec]
; label l1
; [exec]
; label l2
; [exec]
; assert _5 >= 0
; [eval] _5 >= 0
; [exec]
; assert true
; [exec]
; exhale _5 >= 0
; [eval] _5 >= 0
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@1832@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1833@01 $Snap)
(assert (= $t@1833@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@1834@01 $Snap)
(assert (= $t@1834@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@1832@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1835@01 $Snap)
(assert (= $t@1835@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1836@01 $Snap)
(assert (= $t@1836@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(i16(_3), write)
(assert (i16%trigger ($SortWrappers.IntTo$Snap val_int@1828@01) ret@1826@01))
; [exec]
; assert true
; [exec]
; exhale acc(i16(_3), write) && _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1837@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1838@01 $Snap)
(assert (= $t@1838@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(i16(_0), write)
(declare-const $t@1839@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1840@01 $Snap)
(assert (= $t@1840@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1841@01 $Snap)
(assert (= $t@1841@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(i16(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$12$closesqu$$$one$opensqu$0$closesqu$ ----------
(declare-const _0@1842@01 $Ref)
(declare-const _0@1843@01 $Ref)
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
(declare-const __t0@1844@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@1845@01 $Snap)
(assert (= $t@1845@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1846@01 $Snap)
(assert (= $t@1846@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1847@01 $Snap)
(assert (= $t@1847@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1848@01 $Snap)
(assert (= $t@1848@01 $Snap.unit))
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
(declare-const ret@1849@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_int, write)
(declare-const $t@1850@01 Int)
(assert (not (= ret@1849@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_int := 1
; [exec]
; label return
; [exec]
; fold acc(usize(_0), write)
; [eval] 0 <= self.val_int
(assert (usize%trigger ($Snap.combine ($SortWrappers.IntTo$Snap 1) $Snap.unit) ret@1849@01))
; [exec]
; assert true
; [exec]
; exhale acc(usize(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$158$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1851@01 $Ref)
(declare-const _0@1852@01 $Ref)
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
(declare-const __t0@1853@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1854@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1855@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1856@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@1857@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@1858@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@1859@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@1860@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(i16(_1), write) && acc(u32(_2), write)
(declare-const $t@1861@01 $Snap)
(assert (= $t@1861@01 ($Snap.combine ($Snap.first $t@1861@01) ($Snap.second $t@1861@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1862@01 $Snap)
(assert (= $t@1862@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1863@01 $Snap)
(assert (= $t@1863@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1864@01 $Snap)
(assert (= $t@1864@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1865@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@1866@01 Int)
(assert (not (= ret@1865@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(i16(_1), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1865@01 _1@1856@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@1856@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (i16%trigger ($Snap.first $t@1861@01) _1@1856@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@1867@01 Int)
(assert (= val_int@1867@01 ($SortWrappers.$SnapToInt ($Snap.first $t@1861@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1856@01 ret@1865@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1868@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1869@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1865@01 ret@1868@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1856@01 ret@1868@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@1868@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u32(_2), write)
(assert (=
  ($Snap.second $t@1861@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1861@01))
    ($Snap.second ($Snap.second $t@1861@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1868@01 _2@1857@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1865@01 _2@1857@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1856@01 _2@1857@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1857@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1861@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1861@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u32%trigger ($Snap.second $t@1861@01) _2@1857@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1870@01 Int)
(assert (=
  val_int@1870@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1861@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1857@01 ret@1868@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1865@01 ret@1868@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1856@01 ret@1868@01)))
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
; fold acc(u32(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1870@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1870@01))
(assert (u32%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap val_int@1870@01)
  $Snap.unit) ret@1868@01))
; [exec]
; assert true
; [exec]
; exhale acc(u32(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@1871@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1872@01 $Snap)
(assert (= $t@1872@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@1873@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1874@01 $Snap)
(assert (= $t@1874@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1875@01 $Snap)
(assert (= $t@1875@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(i16(_3), write)
(assert (i16%trigger ($SortWrappers.IntTo$Snap val_int@1867@01) ret@1865@01))
; [exec]
; assert true
; [exec]
; exhale acc(i16(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1876@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1877@01 $Snap)
(assert (= $t@1877@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(i16(_0), write)
(declare-const $t@1878@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1879@01 $Snap)
(assert (= $t@1879@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1880@01 $Snap)
(assert (= $t@1880@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(i16(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$310$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1881@01 $Ref)
(declare-const _0@1882@01 $Ref)
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
(declare-const __t0@1883@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1884@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1885@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1886@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@1887@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@1888@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@1889@01 Int)
; [exec]
; var _5: Ref
(declare-const _5@1890@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_(_1), write) &&
;   acc(u8(_2), write)
(declare-const $t@1891@01 $Snap)
(assert (= $t@1891@01 ($Snap.combine ($Snap.first $t@1891@01) ($Snap.second $t@1891@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1892@01 $Snap)
(assert (= $t@1892@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1893@01 $Snap)
(assert (= $t@1893@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1894@01 $Snap)
(assert (= $t@1894@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1895@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_(_3), write)
(declare-const $t@1896@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1886@01 ret@1895@01)))
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
; inhale m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$(_1,
;   _3)
(declare-const $t@1897@01 $Snap)
(assert (= $t@1897@01 $Snap.unit))
; [eval] m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$(_1, _3)
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
; [eval] read$()
(set-option :timeout 0)
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first $t@1891@01)
  $t@1896@01) _1@1886@01 ret@1895@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$%precondition ($Snap.combine
    ($Snap.first $t@1891@01)
    $t@1896@01) _1@1886@01 ret@1895@01)))
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_$$bool$ ($Snap.combine
  ($Snap.first $t@1891@01)
  $t@1896@01) _1@1886@01 ret@1895@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1898@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1899@01 Int)
(assert (not (= ret@1898@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_2), write)
(assert (=
  ($Snap.second $t@1891@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1891@01))
    ($Snap.second ($Snap.second $t@1891@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1898@01 _2@1887@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1887@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1891@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1891@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.second $t@1891@01) _2@1887@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1900@01 Int)
(assert (=
  val_int@1900@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1891@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1887@01 ret@1898@01)))
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
; fold acc(u8(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1900@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1900@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@1900@01) $Snap.unit) ret@1898@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_5), write)
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@1901@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1902@01 $Snap)
(assert (= $t@1902@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@1903@01 $Snap)
(assert (= $t@1903@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@1901@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1904@01 $Snap)
(assert (= $t@1904@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1905@01 $Snap)
(assert (= $t@1905@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_(_3), write) &&
;   _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1906@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1907@01 $Snap)
(assert (= $t@1907@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_(_0), write)
(declare-const $t@1908@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1886@01 ret@1906@01)))
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
(declare-const $t@1909@01 $Snap)
(assert (= $t@1909@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1910@01 $Snap)
(assert (= $t@1910@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$u64$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$154$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1911@01 $Ref)
(declare-const _0@1912@01 $Ref)
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
(declare-const __t0@1913@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1914@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1915@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1916@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@1917@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@1918@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@1919@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@1920@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(i16(_1), write) && acc(u16(_2), write)
(declare-const $t@1921@01 $Snap)
(assert (= $t@1921@01 ($Snap.combine ($Snap.first $t@1921@01) ($Snap.second $t@1921@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1922@01 $Snap)
(assert (= $t@1922@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1923@01 $Snap)
(assert (= $t@1923@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1924@01 $Snap)
(assert (= $t@1924@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1925@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@1926@01 Int)
(assert (not (= ret@1925@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(i16(_1), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1925@01 _1@1916@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@1916@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (i16%trigger ($Snap.first $t@1921@01) _1@1916@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@1927@01 Int)
(assert (= val_int@1927@01 ($SortWrappers.$SnapToInt ($Snap.first $t@1921@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1916@01 ret@1925@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1928@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1929@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1925@01 ret@1928@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1916@01 ret@1928@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@1928@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u16(_2), write)
(assert (=
  ($Snap.second $t@1921@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1921@01))
    ($Snap.second ($Snap.second $t@1921@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1928@01 _2@1917@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1925@01 _2@1917@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1916@01 _2@1917@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1917@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1921@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1921@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u16%trigger ($Snap.second $t@1921@01) _2@1917@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1930@01 Int)
(assert (=
  val_int@1930@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1921@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1917@01 ret@1928@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1925@01 ret@1928@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1916@01 ret@1928@01)))
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
; fold acc(u16(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1930@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1930@01))
(assert (u16%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap val_int@1930@01)
  $Snap.unit) ret@1928@01))
; [exec]
; assert true
; [exec]
; exhale acc(u16(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@1931@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1932@01 $Snap)
(assert (= $t@1932@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@1933@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1934@01 $Snap)
(assert (= $t@1934@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1935@01 $Snap)
(assert (= $t@1935@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(i16(_3), write)
(assert (i16%trigger ($SortWrappers.IntTo$Snap val_int@1927@01) ret@1925@01))
; [exec]
; assert true
; [exec]
; exhale acc(i16(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1936@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1937@01 $Snap)
(assert (= $t@1937@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(i16(_0), write)
(declare-const $t@1938@01 Int)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1939@01 $Snap)
(assert (= $t@1939@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1940@01 $Snap)
(assert (= $t@1940@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(i16(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$142$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1941@01 $Ref)
(declare-const _0@1942@01 $Ref)
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
(declare-const __t0@1943@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1944@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1945@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1946@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@1947@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@1948@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@1949@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@1950@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(u16(_1), write) && acc(u32(_2), write)
(declare-const $t@1951@01 $Snap)
(assert (= $t@1951@01 ($Snap.combine ($Snap.first $t@1951@01) ($Snap.second $t@1951@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1952@01 $Snap)
(assert (= $t@1952@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1953@01 $Snap)
(assert (= $t@1953@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1954@01 $Snap)
(assert (= $t@1954@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1955@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_int, write)
(declare-const $t@1956@01 Int)
(assert (not (= ret@1955@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u16(_1), write)
(assert (=
  ($Snap.first $t@1951@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@1951@01))
    ($Snap.second ($Snap.first $t@1951@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1955@01 _1@1946@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@1946@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.first $t@1951@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@1951@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u16%trigger ($Snap.first $t@1951@01) _1@1946@01))
; [exec]
; _3.val_int := _1.val_int
(declare-const val_int@1957@01 Int)
(assert (=
  val_int@1957@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@1951@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1946@01 ret@1955@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1958@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1959@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1955@01 ret@1958@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1946@01 ret@1958@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@1958@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u32(_2), write)
(assert (=
  ($Snap.second $t@1951@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1951@01))
    ($Snap.second ($Snap.second $t@1951@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1958@01 _2@1947@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1955@01 _2@1947@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1946@01 _2@1947@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1947@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1951@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1951@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u32%trigger ($Snap.second $t@1951@01) _2@1947@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1960@01 Int)
(assert (=
  val_int@1960@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1951@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1947@01 ret@1958@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1955@01 ret@1958@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1946@01 ret@1958@01)))
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
; fold acc(u32(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1960@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1960@01))
(assert (u32%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap val_int@1960@01)
  $Snap.unit) ret@1958@01))
; [exec]
; assert true
; [exec]
; exhale acc(u32(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@1961@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1962@01 $Snap)
(assert (= $t@1962@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@1963@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1964@01 $Snap)
(assert (= $t@1964@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1965@01 $Snap)
(assert (= $t@1965@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; fold acc(u16(_3), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1957@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1957@01))
(assert (u16%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap val_int@1957@01)
  $Snap.unit) ret@1955@01))
; [exec]
; assert true
; [exec]
; exhale acc(u16(_3), write) && acc(u32(_4), write)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@1966@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1967@01 $Snap)
(assert (= $t@1967@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u16(_0), write)
(declare-const $t@1968@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1969@01 $Snap)
(assert (= $t@1969@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1970@01 $Snap)
(assert (= $t@1970@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(u16(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$8$closesqu$$$zero$opensqu$0$closesqu$ ----------
(declare-const _0@1971@01 $Ref)
(declare-const _0@1972@01 $Ref)
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
(declare-const __t0@1973@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@1974@01 $Snap)
(assert (= $t@1974@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1975@01 $Snap)
(assert (= $t@1975@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1976@01 $Snap)
(assert (= $t@1976@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1977@01 $Snap)
(assert (= $t@1977@01 $Snap.unit))
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
(declare-const ret@1978@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_int, write)
(declare-const $t@1979@01 Int)
(assert (not (= ret@1978@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_int := 0
; [exec]
; label return
; [exec]
; fold acc(i8(_0), write)
(assert (i8%trigger ($SortWrappers.IntTo$Snap 0) ret@1978@01))
; [exec]
; assert true
; [exec]
; exhale acc(i8(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$286$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@1980@01 $Ref)
(declare-const _0@1981@01 $Ref)
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
(declare-const __t0@1982@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@1983@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@1984@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@1985@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@1986@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@1987@01 $Ref)
; [exec]
; var _4: Int
(declare-const _4@1988@01 Int)
; [exec]
; var _5: Ref
(declare-const _5@1989@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_(_1), write) &&
;   acc(u8(_2), write)
(declare-const $t@1990@01 $Snap)
(assert (= $t@1990@01 ($Snap.combine ($Snap.first $t@1990@01) ($Snap.second $t@1990@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1991@01 $Snap)
(assert (= $t@1991@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1992@01 $Snap)
(assert (= $t@1992@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@1993@01 $Snap)
(assert (= $t@1993@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@1994@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_(_3), write)
(declare-const $t@1995@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1985@01 ret@1994@01)))
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
; inhale m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$(_1,
;   _3)
(declare-const $t@1996@01 $Snap)
(assert (= $t@1996@01 $Snap.unit))
; [eval] m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$(_1, _3)
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
; [eval] read$()
(set-option :timeout 0)
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
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first $t@1990@01)
  $t@1995@01) _1@1985@01 ret@1994@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$%precondition ($Snap.combine
    ($Snap.first $t@1990@01)
    $t@1995@01) _1@1985@01 ret@1994@01)))
(assert (m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$memory_eq$$__$TY$__m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_$$bool$ ($Snap.combine
  ($Snap.first $t@1990@01)
  $t@1995@01) _1@1985@01 ret@1994@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@1997@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@1998@01 Int)
(assert (not (= ret@1997@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_2), write)
(assert (=
  ($Snap.second $t@1990@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1990@01))
    ($Snap.second ($Snap.second $t@1990@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@1997@01 _2@1986@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@1986@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@1990@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1990@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.second $t@1990@01) _2@1986@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@1999@01 Int)
(assert (=
  val_int@1999@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@1990@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@1986@01 ret@1997@01)))
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
; fold acc(u8(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@1999@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@1999@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@1999@01) $Snap.unit) ret@1997@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_5), write)
; [exec]
; _4 := builtin$havoc_int()
(declare-const ret@2000@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@2001@01 $Snap)
(assert (= $t@2001@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _4 >= 0
(declare-const $t@2002@01 $Snap)
(assert (= $t@2002@01 $Snap.unit))
; [eval] _4 >= 0
(assert (>= ret@2000@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@2003@01 $Snap)
(assert (= $t@2003@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@2004@01 $Snap)
(assert (= $t@2004@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_(_3), write) &&
;   _4 >= 0
; [eval] _4 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@2005@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@2006@01 $Snap)
(assert (= $t@2006@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_(_0), write)
(declare-const $t@2007@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@1985@01 ret@2005@01)))
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
(declare-const $t@2008@01 $Snap)
(assert (= $t@2008@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@2009@01 $Snap)
(assert (= $t@2009@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(m_core$$num$opensqu$0$closesqu$$$Wrapping$opensqu$0$closesqu$$_beg_$i16$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$230$closesqu$$$pow$opensqu$0$closesqu$ ----------
(declare-const _0@2010@01 $Ref)
(declare-const _0@2011@01 $Ref)
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
(declare-const __t0@2012@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@2013@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@2014@01 Bool)
; [exec]
; var _1: Int
(declare-const _1@2015@01 Int)
; [exec]
; var _2: Ref
(declare-const _2@2016@01 $Ref)
; [exec]
; var _3: Int
(declare-const _3@2017@01 Int)
; [exec]
; var _4: Ref
(declare-const _4@2018@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@2019@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale _1 >= 0 && acc(u8(_2), write)
(declare-const $t@2020@01 $Snap)
(assert (= $t@2020@01 ($Snap.combine ($Snap.first $t@2020@01) ($Snap.second $t@2020@01))))
(assert (= ($Snap.first $t@2020@01) $Snap.unit))
; [eval] _1 >= 0
(assert (>= _1@2015@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@2021@01 $Snap)
(assert (= $t@2021@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@2022@01 $Snap)
(assert (= $t@2022@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@2023@01 $Snap)
(assert (= $t@2023@01 $Snap.unit))
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
(declare-const ret@2024@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@2025@01 $Snap)
(assert (= $t@2025@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _1 >= 0
(declare-const $t@2026@01 $Snap)
(assert (= $t@2026@01 $Snap.unit))
; [eval] _1 >= 0
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _3 := _1
; [exec]
; label l0
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@2027@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_int, write)
(declare-const $t@2028@01 Int)
(assert (not (= ret@2027@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u8(_2), write)
(assert (=
  ($Snap.second $t@2020@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@2020@01))
    ($Snap.second ($Snap.second $t@2020@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@2027@01 _2@2016@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@2016@01 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@2020@01)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@2020@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u8%trigger ($Snap.second $t@2020@01) _2@2016@01))
; [exec]
; _5.val_int := _2.val_int
(declare-const val_int@2029@01 Int)
(assert (=
  val_int@2029@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@2020@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@2016@01 ret@2027@01)))
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
; fold acc(u8(_5), write)
; [eval] 0 <= self.val_int
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 val_int@2029@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 val_int@2029@01))
(assert (u8%trigger ($Snap.combine ($SortWrappers.IntTo$Snap val_int@2029@01) $Snap.unit) ret@2027@01))
; [exec]
; assert true
; [exec]
; exhale acc(u8(_5), write)
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@2030@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@2031@01 $Snap)
(assert (= $t@2031@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(u32(_4), write)
(declare-const $t@2032@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@2033@01 $Snap)
(assert (= $t@2033@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@2034@01 $Snap)
(assert (= $t@2034@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; label bb2
; [exec]
; __t1 := true
; [exec]
; label l4
; [exec]
; assert _3 >= 0
; [eval] _3 >= 0
; [exec]
; assert true
; [exec]
; exhale _3 >= 0 && acc(u32(_4), write)
; [eval] _3 >= 0
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@2035@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@2036@01 $Snap)
(assert (= $t@2036@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(usize(_0), write)
(declare-const $t@2037@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@2038@01 $Snap)
(assert (= $t@2038@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@2039@01 $Snap)
(assert (= $t@2039@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label bb3
; [exec]
; __t2 := true
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(usize(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_008_num_traits_pow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$21$closesqu$$$one$opensqu$0$closesqu$ ----------
(declare-const _0@2040@01 $Ref)
(declare-const _0@2041@01 $Ref)
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
(declare-const __t0@2042@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@2043@01 $Snap)
(assert (= $t@2043@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@2044@01 $Snap)
(assert (= $t@2044@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@2045@01 $Snap)
(assert (= $t@2045@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@2046@01 $Snap)
(assert (= $t@2046@01 $Snap.unit))
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
(declare-const ret@2047@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_int, write)
(declare-const $t@2048@01 Int)
(assert (not (= ret@2047@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_int := 1
; [exec]
; label return
; [exec]
; fold acc(i64(_0), write)
(assert (i64%trigger ($SortWrappers.IntTo$Snap 1) ret@2047@01))
; [exec]
; assert true
; [exec]
; exhale acc(i64(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- builtin$havoc_bool ----------
(declare-const ret@2049@01 Bool)
(declare-const ret@2050@01 Bool)
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
(declare-const ret@2051@01 Int)
(declare-const ret@2052@01 Int)
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
(declare-const ret@2053@01 $Ref)
(declare-const ret@2054@01 $Ref)
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
