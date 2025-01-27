// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:27:17
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/disjunction_fast_20.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/disjunction_fast_20-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
    
    // -- Check definedness of this.val == 0 || (this.val == 1 || (this.val == 2 || (this.val == 3 || (this.val == 4 || (this.val == 5 || (this.val == 6 || (this.val == 7 || (this.val == 8 || (this.val == 9 || (this.val == 10 || (this.val == 11 || (this.val == 12 || (this.val == 13 || (this.val == 14 || (this.val == 15 || (this.val == 16 || (this.val == 17 || (this.val == 18 || (this.val == 19 || true)))))))))))))))))))
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@11.1--14.2) [98646]"}
        HasDirectPerm(Mask, this, val);
      if (!(Heap[this, val] == 0)) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@11.1--14.2) [98647]"}
          HasDirectPerm(Mask, this, val);
        if (!(Heap[this, val] == 1)) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@11.1--14.2) [98648]"}
            HasDirectPerm(Mask, this, val);
          if (!(Heap[this, val] == 2)) {
            assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@11.1--14.2) [98649]"}
              HasDirectPerm(Mask, this, val);
            if (!(Heap[this, val] == 3)) {
              assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@11.1--14.2) [98650]"}
                HasDirectPerm(Mask, this, val);
              if (!(Heap[this, val] == 4)) {
                assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@11.1--14.2) [98651]"}
                  HasDirectPerm(Mask, this, val);
                if (!(Heap[this, val] == 5)) {
                  assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@11.1--14.2) [98652]"}
                    HasDirectPerm(Mask, this, val);
                  if (!(Heap[this, val] == 6)) {
                    assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@11.1--14.2) [98653]"}
                      HasDirectPerm(Mask, this, val);
                    if (!(Heap[this, val] == 7)) {
                      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@11.1--14.2) [98654]"}
                        HasDirectPerm(Mask, this, val);
                      if (!(Heap[this, val] == 8)) {
                        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@11.1--14.2) [98655]"}
                          HasDirectPerm(Mask, this, val);
                        if (!(Heap[this, val] == 9)) {
                          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@11.1--14.2) [98656]"}
                            HasDirectPerm(Mask, this, val);
                          if (!(Heap[this, val] == 10)) {
                            assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@11.1--14.2) [98657]"}
                              HasDirectPerm(Mask, this, val);
                            if (!(Heap[this, val] == 11)) {
                              assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@11.1--14.2) [98658]"}
                                HasDirectPerm(Mask, this, val);
                              if (!(Heap[this, val] == 12)) {
                                assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@11.1--14.2) [98659]"}
                                  HasDirectPerm(Mask, this, val);
                                if (!(Heap[this, val] == 13)) {
                                  assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@11.1--14.2) [98660]"}
                                    HasDirectPerm(Mask, this, val);
                                  if (!(Heap[this, val] == 14)) {
                                    assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@11.1--14.2) [98661]"}
                                      HasDirectPerm(Mask, this, val);
                                    if (!(Heap[this, val] == 15)) {
                                      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@11.1--14.2) [98662]"}
                                        HasDirectPerm(Mask, this, val);
                                      if (!(Heap[this, val] == 16)) {
                                        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@11.1--14.2) [98663]"}
                                          HasDirectPerm(Mask, this, val);
                                        if (!(Heap[this, val] == 17)) {
                                          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@11.1--14.2) [98664]"}
                                            HasDirectPerm(Mask, this, val);
                                          if (!(Heap[this, val] == 18)) {
                                            assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@11.1--14.2) [98665]"}
                                              HasDirectPerm(Mask, this, val);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method havoc
// ==================================================

procedure vhavoc_1() returns (res: int)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test
// ==================================================

procedure test_1(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@22.5--22.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@22.5--22.22) [98668]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@24.5--24.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@25.5--25.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@25.5--25.20) [98670]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@26.5--26.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@26.5--26.20) [98673]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@27.5--27.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@27.5--27.22) [98678]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@28.5--28.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@29.5--29.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@29.5--29.20) [98680]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@30.5--30.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@30.5--30.20) [98683]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@31.5--31.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@31.5--31.22) [98688]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@32.5--32.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@33.5--33.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@33.5--33.20) [98690]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@34.5--34.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@34.5--34.20) [98693]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@35.5--35.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@35.5--35.22) [98698]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@36.5--36.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@37.5--37.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@37.5--37.20) [98700]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@38.5--38.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@38.5--38.20) [98703]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@39.5--39.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@39.5--39.22) [98708]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@40.5--40.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@41.5--41.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@41.5--41.20) [98710]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@42.5--42.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@42.5--42.20) [98713]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@43.5--43.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@43.5--43.22) [98718]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@44.5--44.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@45.5--45.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@45.5--45.20) [98720]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@46.5--46.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@46.5--46.20) [98723]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@47.5--47.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@47.5--47.22) [98728]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@48.5--48.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@49.5--49.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@49.5--49.20) [98730]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@50.5--50.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@50.5--50.20) [98733]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@51.5--51.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@51.5--51.22) [98738]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@52.5--52.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@53.5--53.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@53.5--53.20) [98740]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@54.5--54.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@54.5--54.20) [98743]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@55.5--55.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@55.5--55.22) [98748]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@56.5--56.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@57.5--57.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@57.5--57.20) [98750]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@58.5--58.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@58.5--58.20) [98753]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@59.5--59.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@59.5--59.22) [98758]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@60.5--60.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@61.5--61.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@61.5--61.20) [98760]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@62.5--62.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@62.5--62.20) [98763]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@63.5--63.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@63.5--63.22) [98768]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@64.5--64.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@65.5--65.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@65.5--65.20) [98770]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@66.5--66.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@66.5--66.20) [98773]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@67.5--67.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@67.5--67.22) [98778]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@68.5--68.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@69.5--69.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@69.5--69.20) [98780]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@70.5--70.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@70.5--70.20) [98783]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@71.5--71.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@71.5--71.22) [98788]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@72.5--72.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@73.5--73.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@73.5--73.20) [98790]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@74.5--74.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@74.5--74.20) [98793]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@75.5--75.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@75.5--75.22) [98798]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@76.5--76.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@77.5--77.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@77.5--77.20) [98800]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@78.5--78.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@78.5--78.20) [98803]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@79.5--79.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@79.5--79.22) [98808]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@80.5--80.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@81.5--81.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@81.5--81.20) [98810]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@82.5--82.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@82.5--82.20) [98813]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@83.5--83.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@83.5--83.22) [98818]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@84.5--84.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@85.5--85.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@85.5--85.20) [98820]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@86.5--86.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@86.5--86.20) [98823]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@87.5--87.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@87.5--87.22) [98828]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@88.5--88.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@89.5--89.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@89.5--89.20) [98830]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@90.5--90.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@90.5--90.20) [98833]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@91.5--91.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@91.5--91.22) [98838]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@92.5--92.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@93.5--93.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@93.5--93.20) [98840]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@94.5--94.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@94.5--94.20) [98843]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@95.5--95.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@95.5--95.22) [98848]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@96.5--96.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@97.5--97.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@97.5--97.20) [98850]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@98.5--98.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@98.5--98.20) [98853]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@99.5--99.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@99.5--99.22) [98858]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@100.5--100.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@101.5--101.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@101.5--101.20) [98860]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@102.5--102.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@102.5--102.20) [98863]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@103.5--103.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@103.5--103.22) [98868]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@104.5--104.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@105.5--105.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@105.5--105.20) [98870]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@106.5--106.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@106.5--106.20) [98873]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@107.5--107.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@107.5--107.22) [98878]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@108.5--108.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@109.5--109.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@109.5--109.20) [98880]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@110.5--110.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@110.5--110.20) [98883]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@111.5--111.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@111.5--111.22) [98888]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@112.5--112.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@113.5--113.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@113.5--113.20) [98890]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@114.5--114.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@114.5--114.20) [98893]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@115.5--115.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@115.5--115.22) [98898]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@116.5--116.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@117.5--117.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@117.5--117.20) [98900]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@118.5--118.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@118.5--118.20) [98903]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@119.5--119.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@119.5--119.22) [98908]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@120.5--120.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@121.5--121.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@121.5--121.20) [98910]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@122.5--122.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@122.5--122.20) [98913]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@123.5--123.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@123.5--123.22) [98918]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@124.5--124.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@125.5--125.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@125.5--125.20) [98920]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@126.5--126.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@126.5--126.20) [98923]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@127.5--127.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@127.5--127.22) [98928]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@128.5--128.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@129.5--129.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@129.5--129.20) [98930]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@130.5--130.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@130.5--130.20) [98933]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@131.5--131.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@131.5--131.22) [98938]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@132.5--132.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@133.5--133.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@133.5--133.20) [98940]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@134.5--134.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@134.5--134.20) [98943]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@135.5--135.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@135.5--135.22) [98948]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@136.5--136.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@137.5--137.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@137.5--137.20) [98950]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@138.5--138.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@138.5--138.20) [98953]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@139.5--139.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@139.5--139.22) [98958]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@140.5--140.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@141.5--141.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@141.5--141.20) [98960]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@142.5--142.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@142.5--142.20) [98963]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@143.5--143.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@143.5--143.22) [98968]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@144.5--144.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@145.5--145.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@145.5--145.20) [98970]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@146.5--146.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@146.5--146.20) [98973]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@147.5--147.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@147.5--147.22) [98978]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@148.5--148.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@149.5--149.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@149.5--149.20) [98980]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@150.5--150.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@150.5--150.20) [98983]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@151.5--151.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@151.5--151.22) [98988]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@152.5--152.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@153.5--153.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@153.5--153.20) [98990]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@154.5--154.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@154.5--154.20) [98993]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@155.5--155.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@155.5--155.22) [98998]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@156.5--156.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@157.5--157.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@157.5--157.20) [99000]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@158.5--158.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@158.5--158.20) [99003]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@159.5--159.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@159.5--159.22) [99008]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@160.5--160.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@161.5--161.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@161.5--161.20) [99010]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@162.5--162.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@162.5--162.20) [99013]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@163.5--163.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@163.5--163.22) [99018]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@164.5--164.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@165.5--165.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@165.5--165.20) [99020]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@166.5--166.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@166.5--166.20) [99023]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@167.5--167.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@167.5--167.22) [99028]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@168.5--168.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@169.5--169.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@169.5--169.20) [99030]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@170.5--170.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@170.5--170.20) [99033]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@171.5--171.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@171.5--171.22) [99038]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@172.5--172.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@173.5--173.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@173.5--173.20) [99040]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@174.5--174.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@174.5--174.20) [99043]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@175.5--175.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@175.5--175.22) [99048]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@176.5--176.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@177.5--177.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@177.5--177.20) [99050]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@178.5--178.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@178.5--178.20) [99053]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@179.5--179.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@179.5--179.22) [99058]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@180.5--180.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@181.5--181.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@181.5--181.20) [99060]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@182.5--182.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@182.5--182.20) [99063]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@183.5--183.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@183.5--183.22) [99068]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@184.5--184.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@185.5--185.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@185.5--185.20) [99070]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@186.5--186.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@186.5--186.20) [99073]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@187.5--187.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@187.5--187.22) [99078]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@188.5--188.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@189.5--189.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@189.5--189.20) [99080]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@190.5--190.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@190.5--190.20) [99083]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@191.5--191.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@191.5--191.22) [99088]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@192.5--192.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@193.5--193.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@193.5--193.20) [99090]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@194.5--194.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@194.5--194.20) [99093]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@195.5--195.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@195.5--195.22) [99098]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@196.5--196.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@197.5--197.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@197.5--197.20) [99100]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@198.5--198.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@198.5--198.20) [99103]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@199.5--199.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@199.5--199.22) [99108]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@200.5--200.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@201.5--201.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@201.5--201.20) [99110]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@202.5--202.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@202.5--202.20) [99113]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@203.5--203.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@203.5--203.22) [99118]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@204.5--204.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@205.5--205.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@205.5--205.20) [99120]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@206.5--206.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@206.5--206.20) [99123]"}
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
  
  // -- Translating statement: unfold acc(Slow(this), write) -- disjunction_fast_20.vpr@207.5--207.22
    assume Slow#trigger(Heap, Slow(this));
    assume Heap[null, Slow(this)] == FrameFragment(Heap[this, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Slow(this) might fail. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@207.5--207.22) [99128]"}
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
  
  // -- Translating statement: tmp := havoc() -- disjunction_fast_20.vpr@208.5--208.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc tmp;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.val := tmp -- disjunction_fast_20.vpr@209.5--209.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@209.5--209.20) [99130]"}
      FullPerm == Mask[this, val];
    Heap := Heap[this, val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Slow(this), write) -- disjunction_fast_20.vpr@210.5--210.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Slow(this) might fail. There might be insufficient permission to access this.val (disjunction_fast_20.vpr@210.5--210.20) [99133]"}
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test might not hold. There might be insufficient permission to access Slow(this) (disjunction_fast_20.vpr@20.13--20.23) [99136]"}
        perm <= Mask[null, Slow(this)];
    }
    Mask := Mask[null, Slow(this):=Mask[null, Slow(this)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}