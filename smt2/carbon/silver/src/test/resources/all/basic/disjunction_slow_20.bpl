// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:24:13
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/disjunction_slow_20.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/disjunction_slow_20-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
// Dependencies:
//   Boogie , located at /home/runner/.dotnet/tools/boogie.
//   Z3 4.12.1 - 64 bit, located at /opt/hostedtoolcache/z3/4.12.1/x64/z3-4.12.1-x64-glibc-2.35/bin/z3.
// 

// ==================================================
// Preamble of State module.
// ==================================================

function  state(Heap: HeapType, Mask: MaskType): bool;
axiom state(dummyHeap, ZeroMask);

// ==================================================
// Preamble of Heap module.
// ==================================================

type Ref;
var Heap: HeapType;
const null: Ref;
type Field A B;
type NormalField;
const dummyHeap: HeapType;
type HeapType = <A, B> [Ref, Field A B]B;
const unique $allocated: Field NormalField bool;
axiom (forall o: Ref, f: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o, f] }
  Heap[o, $allocated] ==> Heap[Heap[o, f], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref, f_2: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, f_2] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_1, f_2) ==> Heap[o_1, f_2] == ExhaleHeap[o_1, f_2]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f), ExhaleHeap[null, PredicateMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> Heap[null, PredicateMaskField(pm_f)] == ExhaleHeap[null, PredicateMaskField(pm_f)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, PredicateMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f), ExhaleHeap[null, WandMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> Heap[null, WandMaskField(pm_f)] == ExhaleHeap[null, WandMaskField(pm_f)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, WandMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_1, $allocated] ==> ExhaleHeap[o_1, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o: Ref, f_3: (Field A B), v: B ::
  { Heap[o, f_3:=v] }
  succHeap(Heap, Heap[o, f_3:=v])
);
// IdenticalOnKnownLocations Heaps are Successor Heaps
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> succHeap(Heap, ExhaleHeap)
);
// Successor Heaps are Transitive Successor Heaps
axiom (forall Heap0: HeapType, Heap1: HeapType ::
  { succHeap(Heap0, Heap1) }
  succHeap(Heap0, Heap1) ==> succHeapTrans(Heap0, Heap1)
);
// Transitivity of Transitive Successor Heaps
axiom (forall Heap0: HeapType, Heap1: HeapType, Heap2: HeapType ::
  { succHeapTrans(Heap0, Heap1), succHeap(Heap1, Heap2) }
  succHeapTrans(Heap0, Heap1) && succHeap(Heap1, Heap2) ==> succHeapTrans(Heap0, Heap2)
);

// ==================================================
// Preamble of Permission module.
// ==================================================

type Perm = real;
type MaskType = <A, B> [Ref, Field A B]Perm;
var Mask: MaskType;
const ZeroMask: MaskType;
axiom (forall <A, B> o_2: Ref, f_4: (Field A B) ::
  { ZeroMask[o_2, f_4] }
  ZeroMask[o_2, f_4] == NoPerm
);
type PMaskType = <A, B> [Ref, Field A B]bool;
const ZeroPMask: PMaskType;
axiom (forall <A, B> o_2: Ref, f_4: (Field A B) ::
  { ZeroPMask[o_2, f_4] }
  !ZeroPMask[o_2, f_4]
);
function  PredicateMaskField<A>(f_5: (Field A FrameType)): Field A PMaskType;
function  WandMaskField<A>(f_5: (Field A FrameType)): Field A PMaskType;
const NoPerm: Perm;
axiom NoPerm == 0.000000000;
const FullPerm: Perm;
axiom FullPerm == 1.000000000;
function  Perm(a: real, b: real): Perm;
const AssumePermUpperBound: bool;
function  GoodMask(Mask: MaskType): bool;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask) }
  state(Heap, Mask) ==> GoodMask(Mask)
);
axiom (forall <A, B> Mask: MaskType, o_2: Ref, f_4: (Field A B) ::
  { GoodMask(Mask), Mask[o_2, f_4] }
  GoodMask(Mask) ==> Mask[o_2, f_4] >= NoPerm && (((GoodMask(Mask) && AssumePermUpperBound) && !IsPredicateField(f_4)) && !IsWandField(f_4) ==> Mask[o_2, f_4] <= FullPerm)
);
function  HasDirectPerm<A, B>(Mask: MaskType, o_2: Ref, f_4: (Field A B)): bool;
axiom (forall <A, B> Mask: MaskType, o_2: Ref, f_4: (Field A B) ::
  { HasDirectPerm(Mask, o_2, f_4) }
  HasDirectPerm(Mask, o_2, f_4) <==> Mask[o_2, f_4] > NoPerm
);
function  sumMask(ResultMask: MaskType, SummandMask1: MaskType, SummandMask2: MaskType): bool;
axiom (forall <A, B> ResultMask: MaskType, SummandMask1: MaskType, SummandMask2: MaskType, o_2: Ref, f_4: (Field A B) ::
  { sumMask(ResultMask, SummandMask1, SummandMask2), ResultMask[o_2, f_4] } { sumMask(ResultMask, SummandMask1, SummandMask2), SummandMask1[o_2, f_4] } { sumMask(ResultMask, SummandMask1, SummandMask2), SummandMask2[o_2, f_4] }
  sumMask(ResultMask, SummandMask1, SummandMask2) ==> ResultMask[o_2, f_4] == SummandMask1[o_2, f_4] + SummandMask2[o_2, f_4]
);

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Declarations for function framing
type FrameType;
const EmptyFrame: FrameType;
function  FrameFragment<T>(t: T): FrameType;
function  ConditionalFrame(p: Perm, f_6: FrameType): FrameType;
function  dummyFunction<T>(t: T): bool;
function  CombineFrames(a_1: FrameType, b_1: FrameType): FrameType;
// ==================================================
// Definition of conditional frame fragments
// ==================================================

axiom (forall p: Perm, f_6: FrameType ::
  { ConditionalFrame(p, f_6) }
  ConditionalFrame(p, f_6) == (if p > 0.000000000 then f_6 else EmptyFrame)
);
// Function for recording enclosure of one predicate instance in another
function  InsidePredicate<A, B>(p: (Field A FrameType), v_1: FrameType, q: (Field B FrameType), w: FrameType): bool;
// Transitivity of InsidePredicate
axiom (forall <A, B, C> p: (Field A FrameType), v_1: FrameType, q: (Field B FrameType), w: FrameType, r: (Field C FrameType), u: FrameType ::
  { InsidePredicate(p, v_1, q, w), InsidePredicate(q, w, r, u) }
  InsidePredicate(p, v_1, q, w) && InsidePredicate(q, w, r, u) ==> InsidePredicate(p, v_1, r, u)
);
// Knowledge that two identical instances of the same predicate cannot be inside each other
axiom (forall <A> p: (Field A FrameType), v_1: FrameType, w: FrameType ::
  { InsidePredicate(p, v_1, p, w) }
  !InsidePredicate(p, v_1, p, w)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of predicate Slow
// ==================================================

type PredicateType_Slow;
function  Slow(this: Ref): Field PredicateType_Slow FrameType;
function  Slow#sm(this: Ref): Field PredicateType_Slow PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(Slow(this)) }
  PredicateMaskField(Slow(this)) == Slow#sm(this)
);
axiom (forall this: Ref ::
  { Slow(this) }
  IsPredicateField(Slow(this))
);
axiom (forall this: Ref ::
  { Slow(this) }
  getPredWandId(Slow(this)) == 0
);
function  Slow#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Slow#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { Slow(this), Slow(this2) }
  Slow(this) == Slow(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { Slow#sm(this), Slow#sm(this2) }
  Slow#sm(this) == Slow#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { Slow#trigger(Heap, Slow(this)) }
  Slow#everUsed(Slow(this))
);

procedure Slow#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Slow
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.val == 0 || this.val == 1 || this.val == 2 || this.val == 3 || this.val == 4 || this.val == 5 || this.val == 6 || this.val == 7 || this.val == 8 || this.val == 9 || this.val == 10 || this.val == 11 || this.val == 12 || this.val == 13 || this.val == 14 || this.val == 15 || this.val == 16 || this.val == 17 || this.val == 18 || this.val == 19 || true
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@11.1--14.2) [184885]"}
        HasDirectPerm(Mask, this, val);
      if (!(Heap[this, val] == 0)) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@11.1--14.2) [184886]"}
          HasDirectPerm(Mask, this, val);
      }
      if (!(Heap[this, val] == 0 || Heap[this, val] == 1)) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@11.1--14.2) [184887]"}
          HasDirectPerm(Mask, this, val);
      }
      if (!((Heap[this, val] == 0 || Heap[this, val] == 1) || Heap[this, val] == 2)) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@11.1--14.2) [184888]"}
          HasDirectPerm(Mask, this, val);
      }
      if (!(((Heap[this, val] == 0 || Heap[this, val] == 1) || Heap[this, val] == 2) || Heap[this, val] == 3)) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@11.1--14.2) [184889]"}
          HasDirectPerm(Mask, this, val);
      }
      if (!((((Heap[this, val] == 0 || Heap[this, val] == 1) || Heap[this, val] == 2) || Heap[this, val] == 3) || Heap[this, val] == 4)) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@11.1--14.2) [184890]"}
          HasDirectPerm(Mask, this, val);
      }
      if (!(((((Heap[this, val] == 0 || Heap[this, val] == 1) || Heap[this, val] == 2) || Heap[this, val] == 3) || Heap[this, val] == 4) || Heap[this, val] == 5)) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@11.1--14.2) [184891]"}
          HasDirectPerm(Mask, this, val);
      }
      if (!((((((Heap[this, val] == 0 || Heap[this, val] == 1) || Heap[this, val] == 2) || Heap[this, val] == 3) || Heap[this, val] == 4) || Heap[this, val] == 5) || Heap[this, val] == 6)) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@11.1--14.2) [184892]"}
          HasDirectPerm(Mask, this, val);
      }
      if (!(((((((Heap[this, val] == 0 || Heap[this, val] == 1) || Heap[this, val] == 2) || Heap[this, val] == 3) || Heap[this, val] == 4) || Heap[this, val] == 5) || Heap[this, val] == 6) || Heap[this, val] == 7)) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@11.1--14.2) [184893]"}
          HasDirectPerm(Mask, this, val);
      }
      if (!((((((((Heap[this, val] == 0 || Heap[this, val] == 1) || Heap[this, val] == 2) || Heap[this, val] == 3) || Heap[this, val] == 4) || Heap[this, val] == 5) || Heap[this, val] == 6) || Heap[this, val] == 7) || Heap[this, val] == 8)) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@11.1--14.2) [184894]"}
          HasDirectPerm(Mask, this, val);
      }
      if (!(((((((((Heap[this, val] == 0 || Heap[this, val] == 1) || Heap[this, val] == 2) || Heap[this, val] == 3) || Heap[this, val] == 4) || Heap[this, val] == 5) || Heap[this, val] == 6) || Heap[this, val] == 7) || Heap[this, val] == 8) || Heap[this, val] == 9)) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@11.1--14.2) [184895]"}
          HasDirectPerm(Mask, this, val);
      }
      if (!((((((((((Heap[this, val] == 0 || Heap[this, val] == 1) || Heap[this, val] == 2) || Heap[this, val] == 3) || Heap[this, val] == 4) || Heap[this, val] == 5) || Heap[this, val] == 6) || Heap[this, val] == 7) || Heap[this, val] == 8) || Heap[this, val] == 9) || Heap[this, val] == 10)) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@11.1--14.2) [184896]"}
          HasDirectPerm(Mask, this, val);
      }
      if (!(((((((((((Heap[this, val] == 0 || Heap[this, val] == 1) || Heap[this, val] == 2) || Heap[this, val] == 3) || Heap[this, val] == 4) || Heap[this, val] == 5) || Heap[this, val] == 6) || Heap[this, val] == 7) || Heap[this, val] == 8) || Heap[this, val] == 9) || Heap[this, val] == 10) || Heap[this, val] == 11)) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@11.1--14.2) [184897]"}
          HasDirectPerm(Mask, this, val);
      }
      if (!((((((((((((Heap[this, val] == 0 || Heap[this, val] == 1) || Heap[this, val] == 2) || Heap[this, val] == 3) || Heap[this, val] == 4) || Heap[this, val] == 5) || Heap[this, val] == 6) || Heap[this, val] == 7) || Heap[this, val] == 8) || Heap[this, val] == 9) || Heap[this, val] == 10) || Heap[this, val] == 11) || Heap[this, val] == 12)) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@11.1--14.2) [184898]"}
          HasDirectPerm(Mask, this, val);
      }
      if (!(((((((((((((Heap[this, val] == 0 || Heap[this, val] == 1) || Heap[this, val] == 2) || Heap[this, val] == 3) || Heap[this, val] == 4) || Heap[this, val] == 5) || Heap[this, val] == 6) || Heap[this, val] == 7) || Heap[this, val] == 8) || Heap[this, val] == 9) || Heap[this, val] == 10) || Heap[this, val] == 11) || Heap[this, val] == 12) || Heap[this, val] == 13)) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@11.1--14.2) [184899]"}
          HasDirectPerm(Mask, this, val);
      }
      if (!((((((((((((((Heap[this, val] == 0 || Heap[this, val] == 1) || Heap[this, val] == 2) || Heap[this, val] == 3) || Heap[this, val] == 4) || Heap[this, val] == 5) || Heap[this, val] == 6) || Heap[this, val] == 7) || Heap[this, val] == 8) || Heap[this, val] == 9) || Heap[this, val] == 10) || Heap[this, val] == 11) || Heap[this, val] == 12) || Heap[this, val] == 13) || Heap[this, val] == 14)) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@11.1--14.2) [184900]"}
          HasDirectPerm(Mask, this, val);
      }
      if (!(((((((((((((((Heap[this, val] == 0 || Heap[this, val] == 1) || Heap[this, val] == 2) || Heap[this, val] == 3) || Heap[this, val] == 4) || Heap[this, val] == 5) || Heap[this, val] == 6) || Heap[this, val] == 7) || Heap[this, val] == 8) || Heap[this, val] == 9) || Heap[this, val] == 10) || Heap[this, val] == 11) || Heap[this, val] == 12) || Heap[this, val] == 13) || Heap[this, val] == 14) || Heap[this, val] == 15)) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@11.1--14.2) [184901]"}
          HasDirectPerm(Mask, this, val);
      }
      if (!((((((((((((((((Heap[this, val] == 0 || Heap[this, val] == 1) || Heap[this, val] == 2) || Heap[this, val] == 3) || Heap[this, val] == 4) || Heap[this, val] == 5) || Heap[this, val] == 6) || Heap[this, val] == 7) || Heap[this, val] == 8) || Heap[this, val] == 9) || Heap[this, val] == 10) || Heap[this, val] == 11) || Heap[this, val] == 12) || Heap[this, val] == 13) || Heap[this, val] == 14) || Heap[this, val] == 15) || Heap[this, val] == 16)) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@11.1--14.2) [184902]"}
          HasDirectPerm(Mask, this, val);
      }
      if (!(((((((((((((((((Heap[this, val] == 0 || Heap[this, val] == 1) || Heap[this, val] == 2) || Heap[this, val] == 3) || Heap[this, val] == 4) || Heap[this, val] == 5) || Heap[this, val] == 6) || Heap[this, val] == 7) || Heap[this, val] == 8) || Heap[this, val] == 9) || Heap[this, val] == 10) || Heap[this, val] == 11) || Heap[this, val] == 12) || Heap[this, val] == 13) || Heap[this, val] == 14) || Heap[this, val] == 15) || Heap[this, val] == 16) || Heap[this, val] == 17)) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@11.1--14.2) [184903]"}
          HasDirectPerm(Mask, this, val);
      }
      if (!((((((((((((((((((Heap[this, val] == 0 || Heap[this, val] == 1) || Heap[this, val] == 2) || Heap[this, val] == 3) || Heap[this, val] == 4) || Heap[this, val] == 5) || Heap[this, val] == 6) || Heap[this, val] == 7) || Heap[this, val] == 8) || Heap[this, val] == 9) || Heap[this, val] == 10) || Heap[this, val] == 11) || Heap[this, val] == 12) || Heap[this, val] == 13) || Heap[this, val] == 14) || Heap[this, val] == 15) || Heap[this, val] == 16) || Heap[this, val] == 17) || Heap[this, val] == 18)) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@11.1--14.2) [184904]"}
          HasDirectPerm(Mask, this, val);
      }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method havoc
// ==================================================

procedure vhavoc() returns (res: int)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test
// ==================================================

procedure test(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var tmp: int;
  var freshVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, Slow(this):=PostMask[null, Slow(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@22.5--22.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@22.5--22.22) [184907]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@24.5--24.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@25.5--25.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@25.5--25.20) [184909]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@26.5--26.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@26.5--26.20) [184912]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@27.5--27.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@27.5--27.22) [184917]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@28.5--28.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@29.5--29.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@29.5--29.20) [184919]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@30.5--30.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@30.5--30.20) [184922]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@31.5--31.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@31.5--31.22) [184927]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@32.5--32.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@33.5--33.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@33.5--33.20) [184929]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@34.5--34.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@34.5--34.20) [184932]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@35.5--35.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@35.5--35.22) [184937]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@36.5--36.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@37.5--37.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@37.5--37.20) [184939]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@38.5--38.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@38.5--38.20) [184942]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@39.5--39.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@39.5--39.22) [184947]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@40.5--40.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@41.5--41.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@41.5--41.20) [184949]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@42.5--42.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@42.5--42.20) [184952]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@43.5--43.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@43.5--43.22) [184957]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@44.5--44.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@45.5--45.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@45.5--45.20) [184959]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@46.5--46.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@46.5--46.20) [184962]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@47.5--47.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@47.5--47.22) [184967]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@48.5--48.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@49.5--49.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@49.5--49.20) [184969]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@50.5--50.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@50.5--50.20) [184972]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@51.5--51.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@51.5--51.22) [184977]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@52.5--52.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@53.5--53.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@53.5--53.20) [184979]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@54.5--54.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@54.5--54.20) [184982]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@55.5--55.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@55.5--55.22) [184987]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@56.5--56.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@57.5--57.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@57.5--57.20) [184989]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@58.5--58.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@58.5--58.20) [184992]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@59.5--59.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@59.5--59.22) [184997]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@60.5--60.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@61.5--61.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@61.5--61.20) [184999]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@62.5--62.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@62.5--62.20) [185002]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@63.5--63.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@63.5--63.22) [185007]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@64.5--64.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@65.5--65.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@65.5--65.20) [185009]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@66.5--66.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@66.5--66.20) [185012]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@67.5--67.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@67.5--67.22) [185017]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@68.5--68.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@69.5--69.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@69.5--69.20) [185019]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@70.5--70.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@70.5--70.20) [185022]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@71.5--71.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@71.5--71.22) [185027]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@72.5--72.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@73.5--73.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@73.5--73.20) [185029]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@74.5--74.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@74.5--74.20) [185032]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@75.5--75.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@75.5--75.22) [185037]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@76.5--76.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@77.5--77.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@77.5--77.20) [185039]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@78.5--78.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@78.5--78.20) [185042]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@79.5--79.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@79.5--79.22) [185047]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@80.5--80.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@81.5--81.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@81.5--81.20) [185049]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@82.5--82.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@82.5--82.20) [185052]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@83.5--83.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@83.5--83.22) [185057]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@84.5--84.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@85.5--85.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@85.5--85.20) [185059]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@86.5--86.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@86.5--86.20) [185062]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@87.5--87.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@87.5--87.22) [185067]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@88.5--88.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@89.5--89.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@89.5--89.20) [185069]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@90.5--90.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@90.5--90.20) [185072]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@91.5--91.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@91.5--91.22) [185077]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@92.5--92.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@93.5--93.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@93.5--93.20) [185079]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@94.5--94.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@94.5--94.20) [185082]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@95.5--95.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@95.5--95.22) [185087]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@96.5--96.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@97.5--97.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@97.5--97.20) [185089]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@98.5--98.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@98.5--98.20) [185092]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@99.5--99.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@99.5--99.22) [185097]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@100.5--100.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@101.5--101.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@101.5--101.20) [185099]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@102.5--102.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@102.5--102.20) [185102]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@103.5--103.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@103.5--103.22) [185107]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@104.5--104.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@105.5--105.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@105.5--105.20) [185109]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@106.5--106.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@106.5--106.20) [185112]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@107.5--107.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@107.5--107.22) [185117]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@108.5--108.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@109.5--109.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@109.5--109.20) [185119]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@110.5--110.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@110.5--110.20) [185122]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@111.5--111.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@111.5--111.22) [185127]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@112.5--112.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@113.5--113.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@113.5--113.20) [185129]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@114.5--114.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@114.5--114.20) [185132]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@115.5--115.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@115.5--115.22) [185137]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@116.5--116.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@117.5--117.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@117.5--117.20) [185139]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@118.5--118.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@118.5--118.20) [185142]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@119.5--119.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@119.5--119.22) [185147]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@120.5--120.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@121.5--121.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@121.5--121.20) [185149]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@122.5--122.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@122.5--122.20) [185152]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@123.5--123.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@123.5--123.22) [185157]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@124.5--124.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@125.5--125.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@125.5--125.20) [185159]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@126.5--126.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@126.5--126.20) [185162]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@127.5--127.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@127.5--127.22) [185167]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@128.5--128.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@129.5--129.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@129.5--129.20) [185169]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@130.5--130.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@130.5--130.20) [185172]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@131.5--131.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@131.5--131.22) [185177]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@132.5--132.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@133.5--133.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@133.5--133.20) [185179]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@134.5--134.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@134.5--134.20) [185182]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@135.5--135.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@135.5--135.22) [185187]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@136.5--136.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@137.5--137.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@137.5--137.20) [185189]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@138.5--138.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@138.5--138.20) [185192]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@139.5--139.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@139.5--139.22) [185197]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@140.5--140.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@141.5--141.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@141.5--141.20) [185199]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@142.5--142.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@142.5--142.20) [185202]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@143.5--143.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@143.5--143.22) [185207]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@144.5--144.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@145.5--145.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@145.5--145.20) [185209]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@146.5--146.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@146.5--146.20) [185212]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@147.5--147.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@147.5--147.22) [185217]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@148.5--148.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@149.5--149.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@149.5--149.20) [185219]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@150.5--150.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@150.5--150.20) [185222]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@151.5--151.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@151.5--151.22) [185227]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@152.5--152.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@153.5--153.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@153.5--153.20) [185229]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@154.5--154.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@154.5--154.20) [185232]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@155.5--155.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@155.5--155.22) [185237]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@156.5--156.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@157.5--157.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@157.5--157.20) [185239]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@158.5--158.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@158.5--158.20) [185242]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@159.5--159.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@159.5--159.22) [185247]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@160.5--160.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@161.5--161.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@161.5--161.20) [185249]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@162.5--162.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@162.5--162.20) [185252]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@163.5--163.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@163.5--163.22) [185257]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@164.5--164.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@165.5--165.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@165.5--165.20) [185259]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@166.5--166.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@166.5--166.20) [185262]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@167.5--167.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@167.5--167.22) [185267]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@168.5--168.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@169.5--169.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@169.5--169.20) [185269]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@170.5--170.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@170.5--170.20) [185272]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@171.5--171.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@171.5--171.22) [185277]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@172.5--172.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@173.5--173.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@173.5--173.20) [185279]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@174.5--174.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@174.5--174.20) [185282]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@175.5--175.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@175.5--175.22) [185287]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@176.5--176.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@177.5--177.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@177.5--177.20) [185289]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@178.5--178.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@178.5--178.20) [185292]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@179.5--179.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@179.5--179.22) [185297]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@180.5--180.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@181.5--181.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@181.5--181.20) [185299]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@182.5--182.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@182.5--182.20) [185302]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@183.5--183.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@183.5--183.22) [185307]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@184.5--184.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@185.5--185.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@185.5--185.20) [185309]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@186.5--186.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@186.5--186.20) [185312]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@187.5--187.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@187.5--187.22) [185317]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@188.5--188.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@189.5--189.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@189.5--189.20) [185319]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@190.5--190.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@190.5--190.20) [185322]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@191.5--191.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@191.5--191.22) [185327]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@192.5--192.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@193.5--193.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@193.5--193.20) [185329]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@194.5--194.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@194.5--194.20) [185332]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@195.5--195.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@195.5--195.22) [185337]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@196.5--196.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@197.5--197.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@197.5--197.20) [185339]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@198.5--198.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@198.5--198.20) [185342]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@199.5--199.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@199.5--199.22) [185347]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@200.5--200.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@201.5--201.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@201.5--201.20) [185349]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@202.5--202.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@202.5--202.20) [185352]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@203.5--203.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@203.5--203.22) [185357]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@204.5--204.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@205.5--205.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@205.5--205.20) [185359]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@206.5--206.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@206.5--206.20) [185362]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_slow_20.vpr@207.5--207.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@207.5--207.22) [185367]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Slow(this))) {
        havoc newVersion;
        Heap := Heap[null, Slow(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := havoc() -- disjunction_slow_20.vpr@208.5--208.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_slow_20.vpr@209.5--209.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@209.5--209.20) [185369]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_slow_20.vpr@210.5--210.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_slow_20.vpr@210.5--210.20) [185372]"}
        perm <= Mask[this, val];
    }
    Mask := Mask[this, val:=Mask[this, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    if (!HasDirectPerm(Mask, null, Slow(this))) {
      Heap := Heap[null, Slow#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Slow(this):=freshVersion];
    }
    Heap := Heap[null, Slow#sm(this):=Heap[null, Slow#sm(this)][this, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test might not hold. There might be insufficient permission to access Slow(this) (disjunction_slow_20.vpr@20.13--20.23) [185375]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}