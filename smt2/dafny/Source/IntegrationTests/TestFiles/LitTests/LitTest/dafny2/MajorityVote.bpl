// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy

const $$Language$Dafny: bool
uses {
axiom $$Language$Dafny;
}

type Ty;

type Bv0 = int;

const unique TBool: Ty
uses {
axiom Tag(TBool) == TagBool;
}

const unique TChar: Ty
uses {
axiom Tag(TChar) == TagChar;
}

const unique TInt: Ty
uses {
axiom Tag(TInt) == TagInt;
}

const unique TReal: Ty
uses {
axiom Tag(TReal) == TagReal;
}

const unique TORDINAL: Ty
uses {
axiom Tag(TORDINAL) == TagORDINAL;
}

revealed function TBitvector(int) : Ty;

axiom (forall w: int :: { TBitvector(w) } Inv0_TBitvector(TBitvector(w)) == w);

revealed function TSet(Ty) : Ty;

axiom (forall t: Ty :: { TSet(t) } Inv0_TSet(TSet(t)) == t);

axiom (forall t: Ty :: { TSet(t) } Tag(TSet(t)) == TagSet);

revealed function TISet(Ty) : Ty;

axiom (forall t: Ty :: { TISet(t) } Inv0_TISet(TISet(t)) == t);

axiom (forall t: Ty :: { TISet(t) } Tag(TISet(t)) == TagISet);

revealed function TMultiSet(Ty) : Ty;

axiom (forall t: Ty :: { TMultiSet(t) } Inv0_TMultiSet(TMultiSet(t)) == t);

axiom (forall t: Ty :: { TMultiSet(t) } Tag(TMultiSet(t)) == TagMultiSet);

revealed function TSeq(Ty) : Ty;

axiom (forall t: Ty :: { TSeq(t) } Inv0_TSeq(TSeq(t)) == t);

axiom (forall t: Ty :: { TSeq(t) } Tag(TSeq(t)) == TagSeq);

revealed function TMap(Ty, Ty) : Ty;

axiom (forall t: Ty, u: Ty :: { TMap(t, u) } Inv0_TMap(TMap(t, u)) == t);

axiom (forall t: Ty, u: Ty :: { TMap(t, u) } Inv1_TMap(TMap(t, u)) == u);

axiom (forall t: Ty, u: Ty :: { TMap(t, u) } Tag(TMap(t, u)) == TagMap);

revealed function TIMap(Ty, Ty) : Ty;

axiom (forall t: Ty, u: Ty :: { TIMap(t, u) } Inv0_TIMap(TIMap(t, u)) == t);

axiom (forall t: Ty, u: Ty :: { TIMap(t, u) } Inv1_TIMap(TIMap(t, u)) == u);

axiom (forall t: Ty, u: Ty :: { TIMap(t, u) } Tag(TIMap(t, u)) == TagIMap);

revealed function Inv0_TBitvector(Ty) : int;

revealed function Inv0_TSet(Ty) : Ty;

revealed function Inv0_TISet(Ty) : Ty;

revealed function Inv0_TSeq(Ty) : Ty;

revealed function Inv0_TMultiSet(Ty) : Ty;

revealed function Inv0_TMap(Ty) : Ty;

revealed function Inv1_TMap(Ty) : Ty;

revealed function Inv0_TIMap(Ty) : Ty;

revealed function Inv1_TIMap(Ty) : Ty;

type TyTag;

revealed function Tag(Ty) : TyTag;

const unique TagBool: TyTag;

const unique TagChar: TyTag;

const unique TagInt: TyTag;

const unique TagReal: TyTag;

const unique TagORDINAL: TyTag;

const unique TagSet: TyTag;

const unique TagISet: TyTag;

const unique TagMultiSet: TyTag;

const unique TagSeq: TyTag;

const unique TagMap: TyTag;

const unique TagIMap: TyTag;

const unique TagClass: TyTag;

type TyTagFamily;

revealed function TagFamily(Ty) : TyTagFamily;

revealed function {:identity} Lit<T>(x: T) : T
uses {
axiom (forall<T> x: T :: {:identity} { Lit(x): T } Lit(x): T == x);
}

axiom (forall<T> x: T :: { $Box(Lit(x)) } $Box(Lit(x)) == Lit($Box(x)));

revealed function {:identity} LitInt(x: int) : int
uses {
axiom (forall x: int :: {:identity} { LitInt(x): int } LitInt(x): int == x);
}

axiom (forall x: int :: { $Box(LitInt(x)) } $Box(LitInt(x)) == Lit($Box(x)));

revealed function {:identity} LitReal(x: real) : real
uses {
axiom (forall x: real :: {:identity} { LitReal(x): real } LitReal(x): real == x);
}

axiom (forall x: real :: { $Box(LitReal(x)) } $Box(LitReal(x)) == Lit($Box(x)));

revealed function {:inline} char#IsChar(n: int) : bool
{
  (0 <= n && n < 55296) || (57344 <= n && n < 1114112)
}

type char;

revealed function char#FromInt(int) : char;

axiom (forall n: int :: 
  { char#FromInt(n) } 
  char#IsChar(n) ==> char#ToInt(char#FromInt(n)) == n);

revealed function char#ToInt(char) : int;

axiom (forall ch: char :: 
  { char#ToInt(ch) } 
  char#FromInt(char#ToInt(ch)) == ch && char#IsChar(char#ToInt(ch)));

revealed function char#Plus(char, char) : char;

axiom (forall a: char, b: char :: 
  { char#Plus(a, b) } 
  char#Plus(a, b) == char#FromInt(char#ToInt(a) + char#ToInt(b)));

revealed function char#Minus(char, char) : char;

axiom (forall a: char, b: char :: 
  { char#Minus(a, b) } 
  char#Minus(a, b) == char#FromInt(char#ToInt(a) - char#ToInt(b)));

type ref;

const null: ref;

type Box;

const $ArbitraryBoxValue: Box;

revealed function $Box<T>(T) : Box;

revealed function $Unbox<T>(Box) : T;

axiom (forall<T> x: T :: { $Box(x) } $Unbox($Box(x)) == x);

axiom (forall<T> x: Box :: { $Unbox(x): T } $Box($Unbox(x): T) == x);

revealed function $IsBox(Box, Ty) : bool;

revealed function $IsAllocBox(Box, Ty, Heap) : bool;

axiom (forall bx: Box :: 
  { $IsBox(bx, TInt) } 
  $IsBox(bx, TInt) ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, TInt));

axiom (forall bx: Box :: 
  { $IsBox(bx, TReal) } 
  $IsBox(bx, TReal)
     ==> $Box($Unbox(bx): real) == bx && $Is($Unbox(bx): real, TReal));

axiom (forall bx: Box :: 
  { $IsBox(bx, TBool) } 
  $IsBox(bx, TBool)
     ==> $Box($Unbox(bx): bool) == bx && $Is($Unbox(bx): bool, TBool));

axiom (forall bx: Box :: 
  { $IsBox(bx, TChar) } 
  $IsBox(bx, TChar)
     ==> $Box($Unbox(bx): char) == bx && $Is($Unbox(bx): char, TChar));

axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(0)) } 
  $IsBox(bx, TBitvector(0))
     ==> $Box($Unbox(bx): Bv0) == bx && $Is($Unbox(bx): Bv0, TBitvector(0)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TSet(t)) } 
  $IsBox(bx, TSet(t))
     ==> $Box($Unbox(bx): Set) == bx && $Is($Unbox(bx): Set, TSet(t)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TISet(t)) } 
  $IsBox(bx, TISet(t))
     ==> $Box($Unbox(bx): ISet) == bx && $Is($Unbox(bx): ISet, TISet(t)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TMultiSet(t)) } 
  $IsBox(bx, TMultiSet(t))
     ==> $Box($Unbox(bx): MultiSet) == bx && $Is($Unbox(bx): MultiSet, TMultiSet(t)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TSeq(t)) } 
  $IsBox(bx, TSeq(t))
     ==> $Box($Unbox(bx): Seq) == bx && $Is($Unbox(bx): Seq, TSeq(t)));

axiom (forall bx: Box, s: Ty, t: Ty :: 
  { $IsBox(bx, TMap(s, t)) } 
  $IsBox(bx, TMap(s, t))
     ==> $Box($Unbox(bx): Map) == bx && $Is($Unbox(bx): Map, TMap(s, t)));

axiom (forall bx: Box, s: Ty, t: Ty :: 
  { $IsBox(bx, TIMap(s, t)) } 
  $IsBox(bx, TIMap(s, t))
     ==> $Box($Unbox(bx): IMap) == bx && $Is($Unbox(bx): IMap, TIMap(s, t)));

axiom (forall<T> v: T, t: Ty :: 
  { $IsBox($Box(v), t) } 
  $IsBox($Box(v), t) <==> $Is(v, t));

axiom (forall<T> v: T, t: Ty, h: Heap :: 
  { $IsAllocBox($Box(v), t, h) } 
  $IsAllocBox($Box(v), t, h) <==> $IsAlloc(v, t, h));

revealed function $Is<T>(T, Ty) : bool;

axiom (forall v: int :: { $Is(v, TInt) } $Is(v, TInt));

axiom (forall v: real :: { $Is(v, TReal) } $Is(v, TReal));

axiom (forall v: bool :: { $Is(v, TBool) } $Is(v, TBool));

axiom (forall v: char :: { $Is(v, TChar) } $Is(v, TChar));

axiom (forall v: ORDINAL :: { $Is(v, TORDINAL) } $Is(v, TORDINAL));

axiom (forall v: Bv0 :: { $Is(v, TBitvector(0)) } $Is(v, TBitvector(0)));

axiom (forall v: Set, t0: Ty :: 
  { $Is(v, TSet(t0)) } 
  $Is(v, TSet(t0))
     <==> (forall bx: Box :: 
      { Set#IsMember(v, bx) } 
      Set#IsMember(v, bx) ==> $IsBox(bx, t0)));

axiom (forall v: ISet, t0: Ty :: 
  { $Is(v, TISet(t0)) } 
  $Is(v, TISet(t0)) <==> (forall bx: Box :: { v[bx] } v[bx] ==> $IsBox(bx, t0)));

axiom (forall v: MultiSet, t0: Ty :: 
  { $Is(v, TMultiSet(t0)) } 
  $Is(v, TMultiSet(t0))
     <==> (forall bx: Box :: 
      { MultiSet#Multiplicity(v, bx) } 
      0 < MultiSet#Multiplicity(v, bx) ==> $IsBox(bx, t0)));

axiom (forall v: MultiSet, t0: Ty :: 
  { $Is(v, TMultiSet(t0)) } 
  $Is(v, TMultiSet(t0)) ==> $IsGoodMultiSet(v));

axiom (forall v: Seq, t0: Ty :: 
  { $Is(v, TSeq(t0)) } 
  $Is(v, TSeq(t0))
     <==> (forall i: int :: 
      { Seq#Index(v, i) } 
      0 <= i && i < Seq#Length(v) ==> $IsBox(Seq#Index(v, i), t0)));

axiom (forall v: Map, t0: Ty, t1: Ty :: 
  { $Is(v, TMap(t0, t1)) } 
  $Is(v, TMap(t0, t1))
     <==> (forall bx: Box :: 
      { Map#Elements(v)[bx] } { Set#IsMember(Map#Domain(v), bx) } 
      Set#IsMember(Map#Domain(v), bx)
         ==> $IsBox(Map#Elements(v)[bx], t1) && $IsBox(bx, t0)));

axiom (forall v: Map, t0: Ty, t1: Ty :: 
  { $Is(v, TMap(t0, t1)) } 
  $Is(v, TMap(t0, t1))
     ==> $Is(Map#Domain(v), TSet(t0))
       && $Is(Map#Values(v), TSet(t1))
       && $Is(Map#Items(v), TSet(Tclass._System.Tuple2(t0, t1))));

axiom (forall v: IMap, t0: Ty, t1: Ty :: 
  { $Is(v, TIMap(t0, t1)) } 
  $Is(v, TIMap(t0, t1))
     <==> (forall bx: Box :: 
      { IMap#Elements(v)[bx] } { IMap#Domain(v)[bx] } 
      IMap#Domain(v)[bx] ==> $IsBox(IMap#Elements(v)[bx], t1) && $IsBox(bx, t0)));

axiom (forall v: IMap, t0: Ty, t1: Ty :: 
  { $Is(v, TIMap(t0, t1)) } 
  $Is(v, TIMap(t0, t1))
     ==> $Is(IMap#Domain(v), TISet(t0))
       && $Is(IMap#Values(v), TISet(t1))
       && $Is(IMap#Items(v), TISet(Tclass._System.Tuple2(t0, t1))));

revealed function $IsAlloc<T>(T, Ty, Heap) : bool;

axiom (forall h: Heap, v: int :: { $IsAlloc(v, TInt, h) } $IsAlloc(v, TInt, h));

axiom (forall h: Heap, v: real :: { $IsAlloc(v, TReal, h) } $IsAlloc(v, TReal, h));

axiom (forall h: Heap, v: bool :: { $IsAlloc(v, TBool, h) } $IsAlloc(v, TBool, h));

axiom (forall h: Heap, v: char :: { $IsAlloc(v, TChar, h) } $IsAlloc(v, TChar, h));

axiom (forall h: Heap, v: ORDINAL :: 
  { $IsAlloc(v, TORDINAL, h) } 
  $IsAlloc(v, TORDINAL, h));

axiom (forall v: Bv0, h: Heap :: 
  { $IsAlloc(v, TBitvector(0), h) } 
  $IsAlloc(v, TBitvector(0), h));

axiom (forall v: Set, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TSet(t0), h) } 
  $IsAlloc(v, TSet(t0), h)
     <==> (forall bx: Box :: 
      { Set#IsMember(v, bx) } 
      Set#IsMember(v, bx) ==> $IsAllocBox(bx, t0, h)));

axiom (forall v: ISet, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TISet(t0), h) } 
  $IsAlloc(v, TISet(t0), h)
     <==> (forall bx: Box :: { v[bx] } v[bx] ==> $IsAllocBox(bx, t0, h)));

axiom (forall v: MultiSet, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TMultiSet(t0), h) } 
  $IsAlloc(v, TMultiSet(t0), h)
     <==> (forall bx: Box :: 
      { MultiSet#Multiplicity(v, bx) } 
      0 < MultiSet#Multiplicity(v, bx) ==> $IsAllocBox(bx, t0, h)));

axiom (forall v: Seq, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TSeq(t0), h) } 
  $IsAlloc(v, TSeq(t0), h)
     <==> (forall i: int :: 
      { Seq#Index(v, i) } 
      0 <= i && i < Seq#Length(v) ==> $IsAllocBox(Seq#Index(v, i), t0, h)));

axiom (forall v: Map, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(v, TMap(t0, t1), h) } 
  $IsAlloc(v, TMap(t0, t1), h)
     <==> (forall bx: Box :: 
      { Map#Elements(v)[bx] } { Set#IsMember(Map#Domain(v), bx) } 
      Set#IsMember(Map#Domain(v), bx)
         ==> $IsAllocBox(Map#Elements(v)[bx], t1, h) && $IsAllocBox(bx, t0, h)));

axiom (forall v: IMap, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(v, TIMap(t0, t1), h) } 
  $IsAlloc(v, TIMap(t0, t1), h)
     <==> (forall bx: Box :: 
      { IMap#Elements(v)[bx] } { IMap#Domain(v)[bx] } 
      IMap#Domain(v)[bx]
         ==> $IsAllocBox(IMap#Elements(v)[bx], t1, h) && $IsAllocBox(bx, t0, h)));

revealed function $AlwaysAllocated(Ty) : bool;

axiom (forall ty: Ty :: 
  { $AlwaysAllocated(ty) } 
  $AlwaysAllocated(ty)
     ==> (forall h: Heap, v: Box :: 
      { $IsAllocBox(v, ty, h) } 
      $IsBox(v, ty) ==> $IsAllocBox(v, ty, h)));

revealed function $OlderTag(Heap) : bool;

type ClassName;

const unique class._System.int: ClassName;

const unique class._System.bool: ClassName;

const unique class._System.set: ClassName;

const unique class._System.seq: ClassName;

const unique class._System.multiset: ClassName;

revealed function Tclass._System.object?() : Ty
uses {
// Tclass._System.object? Tag
axiom Tag(Tclass._System.object?()) == Tagclass._System.object?
   && TagFamily(Tclass._System.object?()) == tytagFamily$object;
}

revealed function Tclass._System.Tuple2(Ty, Ty) : Ty;

revealed function dtype(ref) : Ty;

revealed function TypeTuple(a: ClassName, b: ClassName) : ClassName;

revealed function TypeTupleCar(ClassName) : ClassName;

revealed function TypeTupleCdr(ClassName) : ClassName;

axiom (forall a: ClassName, b: ClassName :: 
  { TypeTuple(a, b) } 
  TypeTupleCar(TypeTuple(a, b)) == a && TypeTupleCdr(TypeTuple(a, b)) == b);

type HandleType;

revealed function SetRef_to_SetBox(s: [ref]bool) : Set;

axiom (forall s: [ref]bool, bx: Box :: 
  { Set#IsMember(SetRef_to_SetBox(s), bx) } 
  Set#IsMember(SetRef_to_SetBox(s), bx) == s[$Unbox(bx): ref]);

axiom (forall s: [ref]bool :: 
  { SetRef_to_SetBox(s) } 
  $Is(SetRef_to_SetBox(s), TSet(Tclass._System.object?())));

revealed function Apply1(Ty, Ty, Heap, HandleType, Box) : Box;

type DatatypeType;

type DtCtorId;

revealed function DatatypeCtorId(DatatypeType) : DtCtorId;

revealed function DtRank(DatatypeType) : int;

revealed function BoxRank(Box) : int;

axiom (forall d: DatatypeType :: { BoxRank($Box(d)) } BoxRank($Box(d)) == DtRank(d));

type ORDINAL = Box;

revealed function ORD#IsNat(ORDINAL) : bool;

revealed function ORD#Offset(ORDINAL) : int;

axiom (forall o: ORDINAL :: { ORD#Offset(o) } 0 <= ORD#Offset(o));

revealed function {:inline} ORD#IsLimit(o: ORDINAL) : bool
{
  ORD#Offset(o) == 0
}

revealed function {:inline} ORD#IsSucc(o: ORDINAL) : bool
{
  0 < ORD#Offset(o)
}

revealed function ORD#FromNat(int) : ORDINAL;

axiom (forall n: int :: 
  { ORD#FromNat(n) } 
  0 <= n ==> ORD#IsNat(ORD#FromNat(n)) && ORD#Offset(ORD#FromNat(n)) == n);

axiom (forall o: ORDINAL :: 
  { ORD#Offset(o) } { ORD#IsNat(o) } 
  ORD#IsNat(o) ==> o == ORD#FromNat(ORD#Offset(o)));

revealed function ORD#Less(ORDINAL, ORDINAL) : bool;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Less(o, p) } 
  (ORD#Less(o, p) ==> o != p)
     && (ORD#IsNat(o) && !ORD#IsNat(p) ==> ORD#Less(o, p))
     && (ORD#IsNat(o) && ORD#IsNat(p)
       ==> ORD#Less(o, p) == (ORD#Offset(o) < ORD#Offset(p)))
     && (ORD#Less(o, p) && ORD#IsNat(p) ==> ORD#IsNat(o)));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Less(o, p), ORD#Less(p, o) } 
  ORD#Less(o, p) || o == p || ORD#Less(p, o));

axiom (forall o: ORDINAL, p: ORDINAL, r: ORDINAL :: 
  { ORD#Less(o, p), ORD#Less(p, r) } { ORD#Less(o, p), ORD#Less(o, r) } 
  ORD#Less(o, p) && ORD#Less(p, r) ==> ORD#Less(o, r));

revealed function ORD#LessThanLimit(ORDINAL, ORDINAL) : bool;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#LessThanLimit(o, p) } 
  ORD#LessThanLimit(o, p) == ORD#Less(o, p));

revealed function ORD#Plus(ORDINAL, ORDINAL) : ORDINAL;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Plus(o, p) } 
  (ORD#IsNat(ORD#Plus(o, p)) ==> ORD#IsNat(o) && ORD#IsNat(p))
     && (ORD#IsNat(p)
       ==> ORD#IsNat(ORD#Plus(o, p)) == ORD#IsNat(o)
         && ORD#Offset(ORD#Plus(o, p)) == ORD#Offset(o) + ORD#Offset(p)));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Plus(o, p) } 
  (o == ORD#Plus(o, p) || ORD#Less(o, ORD#Plus(o, p)))
     && (p == ORD#Plus(o, p) || ORD#Less(p, ORD#Plus(o, p))));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Plus(o, p) } 
  (o == ORD#FromNat(0) ==> ORD#Plus(o, p) == p)
     && (p == ORD#FromNat(0) ==> ORD#Plus(o, p) == o));

revealed function ORD#Minus(ORDINAL, ORDINAL) : ORDINAL;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Minus(o, p) } 
  ORD#IsNat(p) && ORD#Offset(p) <= ORD#Offset(o)
     ==> ORD#IsNat(ORD#Minus(o, p)) == ORD#IsNat(o)
       && ORD#Offset(ORD#Minus(o, p)) == ORD#Offset(o) - ORD#Offset(p));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Minus(o, p) } 
  ORD#IsNat(p) && ORD#Offset(p) <= ORD#Offset(o)
     ==> (p == ORD#FromNat(0) && ORD#Minus(o, p) == o)
       || (p != ORD#FromNat(0) && ORD#Less(ORD#Minus(o, p), o)));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Plus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n
     ==> ORD#Plus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n))
       == ORD#Plus(o, ORD#FromNat(m + n)));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Minus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n && m + n <= ORD#Offset(o)
     ==> ORD#Minus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n))
       == ORD#Minus(o, ORD#FromNat(m + n)));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Minus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n && n <= ORD#Offset(o) + m
     ==> (0 <= m - n
         ==> ORD#Minus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Plus(o, ORD#FromNat(m - n)))
       && (m - n <= 0
         ==> ORD#Minus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Minus(o, ORD#FromNat(n - m))));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Plus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n && n <= ORD#Offset(o) + m
     ==> (0 <= m - n
         ==> ORD#Plus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Minus(o, ORD#FromNat(m - n)))
       && (m - n <= 0
         ==> ORD#Plus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Plus(o, ORD#FromNat(n - m))));

const $ModuleContextHeight: int;

const $FunctionContextHeight: int;

type LayerType;

const $LZ: LayerType;

revealed function $LS(LayerType) : LayerType;

revealed function AsFuelBottom(LayerType) : LayerType;

revealed function AtLayer<A>([LayerType]A, LayerType) : A;

axiom (forall<A> f: [LayerType]A, ly: LayerType :: 
  { AtLayer(f, ly) } 
  AtLayer(f, ly) == f[ly]);

axiom (forall<A> f: [LayerType]A, ly: LayerType :: 
  { AtLayer(f, $LS(ly)) } 
  AtLayer(f, $LS(ly)) == AtLayer(f, ly));

type Field;

revealed function FDim(Field) : int
uses {
axiom FDim(alloc) == 0;
}

revealed function IndexField(int) : Field;

axiom (forall i: int :: { IndexField(i) } FDim(IndexField(i)) == 1);

revealed function IndexField_Inverse(Field) : int;

axiom (forall i: int :: { IndexField(i) } IndexField_Inverse(IndexField(i)) == i);

revealed function MultiIndexField(Field, int) : Field;

axiom (forall f: Field, i: int :: 
  { MultiIndexField(f, i) } 
  FDim(MultiIndexField(f, i)) == FDim(f) + 1);

revealed function MultiIndexField_Inverse0(Field) : Field;

revealed function MultiIndexField_Inverse1(Field) : int;

axiom (forall f: Field, i: int :: 
  { MultiIndexField(f, i) } 
  MultiIndexField_Inverse0(MultiIndexField(f, i)) == f
     && MultiIndexField_Inverse1(MultiIndexField(f, i)) == i);

revealed function DeclType(Field) : ClassName;

type NameFamily;

revealed function DeclName(Field) : NameFamily
uses {
axiom DeclName(alloc) == allocName;
}

revealed function FieldOfDecl(ClassName, NameFamily) : Field;

axiom (forall cl: ClassName, nm: NameFamily :: 
  { FieldOfDecl(cl, nm): Field } 
  DeclType(FieldOfDecl(cl, nm): Field) == cl
     && DeclName(FieldOfDecl(cl, nm): Field) == nm);

revealed function $IsGhostField(Field) : bool
uses {
axiom $IsGhostField(alloc);
}

axiom (forall h: Heap, k: Heap :: 
  { $HeapSuccGhost(h, k) } 
  $HeapSuccGhost(h, k)
     ==> $HeapSucc(h, k)
       && (forall o: ref, f: Field :: 
        { read(k, o, f) } 
        !$IsGhostField(f) ==> read(h, o, f) == read(k, o, f)));

axiom (forall<T> h: Heap, k: Heap, v: T, t: Ty :: 
  { $HeapSucc(h, k), $IsAlloc(v, t, h) } 
  $HeapSucc(h, k) ==> $IsAlloc(v, t, h) ==> $IsAlloc(v, t, k));

axiom (forall h: Heap, k: Heap, bx: Box, t: Ty :: 
  { $HeapSucc(h, k), $IsAllocBox(bx, t, h) } 
  $HeapSucc(h, k) ==> $IsAllocBox(bx, t, h) ==> $IsAllocBox(bx, t, k));

const unique alloc: Field;

const unique allocName: NameFamily;

revealed function _System.array.Length(a: ref) : int;

axiom (forall o: ref :: { _System.array.Length(o) } 0 <= _System.array.Length(o));

revealed function Int(x: real) : int
uses {
axiom (forall x: real :: { Int(x): int } Int(x): int == int(x));
}

revealed function Real(x: int) : real
uses {
axiom (forall x: int :: { Real(x): real } Real(x): real == real(x));
}

axiom (forall i: int :: { Int(Real(i)) } Int(Real(i)) == i);

revealed function {:inline} _System.real.Floor(x: real) : int
{
  Int(x)
}

type Heap = [ref][Field]Box;

revealed function {:inline} read(H: Heap, r: ref, f: Field) : Box
{
  H[r][f]
}

revealed function {:inline} update(H: Heap, r: ref, f: Field, v: Box) : Heap
{
  H[r := H[r][f := v]]
}

revealed function $IsGoodHeap(Heap) : bool;

revealed function $IsHeapAnchor(Heap) : bool;

var $Heap: Heap where $IsGoodHeap($Heap) && $IsHeapAnchor($Heap);

const $OneHeap: Heap
uses {
axiom $IsGoodHeap($OneHeap);
}

revealed function $HeapSucc(Heap, Heap) : bool;

axiom (forall h: Heap, r: ref, f: Field, x: Box :: 
  { update(h, r, f, x) } 
  $IsGoodHeap(update(h, r, f, x)) ==> $HeapSucc(h, update(h, r, f, x)));

axiom (forall a: Heap, b: Heap, c: Heap :: 
  { $HeapSucc(a, b), $HeapSucc(b, c) } 
  a != c ==> $HeapSucc(a, b) && $HeapSucc(b, c) ==> $HeapSucc(a, c));

axiom (forall h: Heap, k: Heap :: 
  { $HeapSucc(h, k) } 
  $HeapSucc(h, k)
     ==> (forall o: ref :: 
      { read(k, o, alloc) } 
      $Unbox(read(h, o, alloc)) ==> $Unbox(read(k, o, alloc))));

revealed function $HeapSuccGhost(Heap, Heap) : bool;

procedure $YieldHavoc(this: ref, rds: Set, nw: Set);
  modifies $Heap;
  ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc))
       ==> 
      $o == this || Set#IsMember(rds, $Box($o)) || Set#IsMember(nw, $Box($o))
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  ensures $HeapSucc(old($Heap), $Heap);



procedure $IterHavoc0(this: ref, rds: Set, modi: Set);
  modifies $Heap;
  ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc))
       ==> 
      Set#IsMember(rds, $Box($o)) && !Set#IsMember(modi, $Box($o)) && $o != this
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  ensures $HeapSucc(old($Heap), $Heap);



procedure $IterHavoc1(this: ref, modi: Set, nw: Set);
  modifies $Heap;
  ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc))
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || $o == this
         || Set#IsMember(modi, $Box($o))
         || Set#IsMember(nw, $Box($o)));
  ensures $HeapSucc(old($Heap), $Heap);



procedure $IterCollectNewObjects(prevHeap: Heap, newHeap: Heap, this: ref, NW: Field) returns (s: Set);
  ensures (forall bx: Box :: 
    { Set#IsMember(s, bx) } 
    Set#IsMember(s, bx)
       <==> Set#IsMember($Unbox(read(newHeap, this, NW)): Set, bx)
         || (
          $Unbox(bx) != null
           && !$Unbox(read(prevHeap, $Unbox(bx): ref, alloc))
           && $Unbox(read(newHeap, $Unbox(bx): ref, alloc))));



type Set;

revealed function Set#Card(s: Set) : int;

axiom (forall s: Set :: { Set#Card(s) } 0 <= Set#Card(s));

revealed function Set#Empty() : Set;

revealed function Set#IsMember(s: Set, o: Box) : bool;

axiom (forall o: Box :: 
  { Set#IsMember(Set#Empty(), o) } 
  !Set#IsMember(Set#Empty(), o));

axiom (forall s: Set :: 
  { Set#Card(s) } 
  (Set#Card(s) == 0 <==> s == Set#Empty())
     && (Set#Card(s) != 0
       ==> (exists x: Box :: { Set#IsMember(s, x) } Set#IsMember(s, x))));

revealed function Set#UnionOne(s: Set, o: Box) : Set;

axiom (forall a: Set, x: Box, o: Box :: 
  { Set#IsMember(Set#UnionOne(a, x), o) } 
  Set#IsMember(Set#UnionOne(a, x), o) <==> o == x || Set#IsMember(a, o));

axiom (forall a: Set, x: Box :: 
  { Set#UnionOne(a, x) } 
  Set#IsMember(Set#UnionOne(a, x), x));

axiom (forall a: Set, x: Box, y: Box :: 
  { Set#UnionOne(a, x), Set#IsMember(a, y) } 
  Set#IsMember(a, y) ==> Set#IsMember(Set#UnionOne(a, x), y));

axiom (forall a: Set, x: Box :: 
  { Set#Card(Set#UnionOne(a, x)) } 
  Set#IsMember(a, x) ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a));

axiom (forall a: Set, x: Box :: 
  { Set#Card(Set#UnionOne(a, x)) } 
  !Set#IsMember(a, x) ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a) + 1);

revealed function Set#Union(a: Set, b: Set) : Set;

axiom (forall a: Set, b: Set, o: Box :: 
  { Set#IsMember(Set#Union(a, b), o) } 
  Set#IsMember(Set#Union(a, b), o) <==> Set#IsMember(a, o) || Set#IsMember(b, o));

axiom (forall a: Set, b: Set, y: Box :: 
  { Set#Union(a, b), Set#IsMember(a, y) } 
  Set#IsMember(a, y) ==> Set#IsMember(Set#Union(a, b), y));

axiom (forall a: Set, b: Set, y: Box :: 
  { Set#Union(a, b), Set#IsMember(b, y) } 
  Set#IsMember(b, y) ==> Set#IsMember(Set#Union(a, b), y));

axiom (forall a: Set, b: Set :: 
  { Set#Union(a, b) } 
  Set#Disjoint(a, b)
     ==> Set#Difference(Set#Union(a, b), a) == b
       && Set#Difference(Set#Union(a, b), b) == a);

revealed function Set#Intersection(a: Set, b: Set) : Set;

axiom (forall a: Set, b: Set, o: Box :: 
  { Set#IsMember(Set#Intersection(a, b), o) } 
  Set#IsMember(Set#Intersection(a, b), o)
     <==> Set#IsMember(a, o) && Set#IsMember(b, o));

axiom (forall a: Set, b: Set :: 
  { Set#Union(Set#Union(a, b), b) } 
  Set#Union(Set#Union(a, b), b) == Set#Union(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Union(a, Set#Union(a, b)) } 
  Set#Union(a, Set#Union(a, b)) == Set#Union(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Intersection(Set#Intersection(a, b), b) } 
  Set#Intersection(Set#Intersection(a, b), b) == Set#Intersection(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Intersection(a, Set#Intersection(a, b)) } 
  Set#Intersection(a, Set#Intersection(a, b)) == Set#Intersection(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Card(Set#Union(a, b)) } { Set#Card(Set#Intersection(a, b)) } 
  Set#Card(Set#Union(a, b)) + Set#Card(Set#Intersection(a, b))
     == Set#Card(a) + Set#Card(b));

revealed function Set#Difference(a: Set, b: Set) : Set;

axiom (forall a: Set, b: Set, o: Box :: 
  { Set#IsMember(Set#Difference(a, b), o) } 
  Set#IsMember(Set#Difference(a, b), o)
     <==> Set#IsMember(a, o) && !Set#IsMember(b, o));

axiom (forall a: Set, b: Set, y: Box :: 
  { Set#Difference(a, b), Set#IsMember(b, y) } 
  Set#IsMember(b, y) ==> !Set#IsMember(Set#Difference(a, b), y));

axiom (forall a: Set, b: Set :: 
  { Set#Card(Set#Difference(a, b)) } 
  Set#Card(Set#Difference(a, b))
         + Set#Card(Set#Difference(b, a))
         + Set#Card(Set#Intersection(a, b))
       == Set#Card(Set#Union(a, b))
     && Set#Card(Set#Difference(a, b)) == Set#Card(a) - Set#Card(Set#Intersection(a, b)));

revealed function Set#Subset(a: Set, b: Set) : bool;

axiom (forall a: Set, b: Set :: 
  { Set#Subset(a, b) } 
  Set#Subset(a, b)
     <==> (forall o: Box :: 
      { Set#IsMember(a, o) } { Set#IsMember(b, o) } 
      Set#IsMember(a, o) ==> Set#IsMember(b, o)));

revealed function Set#Equal(a: Set, b: Set) : bool;

axiom (forall a: Set, b: Set :: 
  { Set#Equal(a, b) } 
  Set#Equal(a, b)
     <==> (forall o: Box :: 
      { Set#IsMember(a, o) } { Set#IsMember(b, o) } 
      Set#IsMember(a, o) <==> Set#IsMember(b, o)));

axiom (forall a: Set, b: Set :: { Set#Equal(a, b) } Set#Equal(a, b) ==> a == b);

revealed function Set#Disjoint(a: Set, b: Set) : bool;

axiom (forall a: Set, b: Set :: 
  { Set#Disjoint(a, b) } 
  Set#Disjoint(a, b)
     <==> (forall o: Box :: 
      { Set#IsMember(a, o) } { Set#IsMember(b, o) } 
      !Set#IsMember(a, o) || !Set#IsMember(b, o)));

revealed function Set#FromBoogieMap([Box]bool) : Set;

axiom (forall m: [Box]bool, bx: Box :: 
  { Set#IsMember(Set#FromBoogieMap(m), bx) } 
  Set#IsMember(Set#FromBoogieMap(m), bx) == m[bx]);

type ISet = [Box]bool;

revealed function ISet#Empty() : ISet;

axiom (forall o: Box :: { ISet#Empty()[o] } !ISet#Empty()[o]);

revealed function ISet#FromSet(Set) : ISet;

axiom (forall s: Set, bx: Box :: 
  { ISet#FromSet(s)[bx] } 
  ISet#FromSet(s)[bx] == Set#IsMember(s, bx));

revealed function ISet#UnionOne(ISet, Box) : ISet;

axiom (forall a: ISet, x: Box, o: Box :: 
  { ISet#UnionOne(a, x)[o] } 
  ISet#UnionOne(a, x)[o] <==> o == x || a[o]);

axiom (forall a: ISet, x: Box :: { ISet#UnionOne(a, x) } ISet#UnionOne(a, x)[x]);

axiom (forall a: ISet, x: Box, y: Box :: 
  { ISet#UnionOne(a, x), a[y] } 
  a[y] ==> ISet#UnionOne(a, x)[y]);

revealed function ISet#Union(ISet, ISet) : ISet;

axiom (forall a: ISet, b: ISet, o: Box :: 
  { ISet#Union(a, b)[o] } 
  ISet#Union(a, b)[o] <==> a[o] || b[o]);

axiom (forall a: ISet, b: ISet, y: Box :: 
  { ISet#Union(a, b), a[y] } 
  a[y] ==> ISet#Union(a, b)[y]);

axiom (forall a: ISet, b: ISet, y: Box :: 
  { ISet#Union(a, b), b[y] } 
  b[y] ==> ISet#Union(a, b)[y]);

axiom (forall a: ISet, b: ISet :: 
  { ISet#Union(a, b) } 
  ISet#Disjoint(a, b)
     ==> ISet#Difference(ISet#Union(a, b), a) == b
       && ISet#Difference(ISet#Union(a, b), b) == a);

revealed function ISet#Intersection(ISet, ISet) : ISet;

axiom (forall a: ISet, b: ISet, o: Box :: 
  { ISet#Intersection(a, b)[o] } 
  ISet#Intersection(a, b)[o] <==> a[o] && b[o]);

axiom (forall a: ISet, b: ISet :: 
  { ISet#Union(ISet#Union(a, b), b) } 
  ISet#Union(ISet#Union(a, b), b) == ISet#Union(a, b));

axiom (forall a: ISet, b: ISet :: 
  { ISet#Union(a, ISet#Union(a, b)) } 
  ISet#Union(a, ISet#Union(a, b)) == ISet#Union(a, b));

axiom (forall a: ISet, b: ISet :: 
  { ISet#Intersection(ISet#Intersection(a, b), b) } 
  ISet#Intersection(ISet#Intersection(a, b), b) == ISet#Intersection(a, b));

axiom (forall a: ISet, b: ISet :: 
  { ISet#Intersection(a, ISet#Intersection(a, b)) } 
  ISet#Intersection(a, ISet#Intersection(a, b)) == ISet#Intersection(a, b));

revealed function ISet#Difference(ISet, ISet) : ISet;

axiom (forall a: ISet, b: ISet, o: Box :: 
  { ISet#Difference(a, b)[o] } 
  ISet#Difference(a, b)[o] <==> a[o] && !b[o]);

axiom (forall a: ISet, b: ISet, y: Box :: 
  { ISet#Difference(a, b), b[y] } 
  b[y] ==> !ISet#Difference(a, b)[y]);

revealed function ISet#Subset(ISet, ISet) : bool;

axiom (forall a: ISet, b: ISet :: 
  { ISet#Subset(a, b) } 
  ISet#Subset(a, b) <==> (forall o: Box :: { a[o] } { b[o] } a[o] ==> b[o]));

revealed function ISet#Equal(ISet, ISet) : bool;

axiom (forall a: ISet, b: ISet :: 
  { ISet#Equal(a, b) } 
  ISet#Equal(a, b) <==> (forall o: Box :: { a[o] } { b[o] } a[o] <==> b[o]));

axiom (forall a: ISet, b: ISet :: { ISet#Equal(a, b) } ISet#Equal(a, b) ==> a == b);

revealed function ISet#Disjoint(ISet, ISet) : bool;

axiom (forall a: ISet, b: ISet :: 
  { ISet#Disjoint(a, b) } 
  ISet#Disjoint(a, b) <==> (forall o: Box :: { a[o] } { b[o] } !a[o] || !b[o]));

revealed function Math#min(a: int, b: int) : int;

axiom (forall a: int, b: int :: { Math#min(a, b) } a <= b <==> Math#min(a, b) == a);

axiom (forall a: int, b: int :: { Math#min(a, b) } b <= a <==> Math#min(a, b) == b);

axiom (forall a: int, b: int :: 
  { Math#min(a, b) } 
  Math#min(a, b) == a || Math#min(a, b) == b);

revealed function Math#clip(a: int) : int;

axiom (forall a: int :: { Math#clip(a) } 0 <= a ==> Math#clip(a) == a);

axiom (forall a: int :: { Math#clip(a) } a < 0 ==> Math#clip(a) == 0);

type MultiSet;

revealed function MultiSet#Multiplicity(m: MultiSet, o: Box) : int;

revealed function MultiSet#UpdateMultiplicity(m: MultiSet, o: Box, n: int) : MultiSet;

axiom (forall m: MultiSet, o: Box, n: int, p: Box :: 
  { MultiSet#Multiplicity(MultiSet#UpdateMultiplicity(m, o, n), p) } 
  0 <= n
     ==> (o == p ==> MultiSet#Multiplicity(MultiSet#UpdateMultiplicity(m, o, n), p) == n)
       && (o != p
         ==> MultiSet#Multiplicity(MultiSet#UpdateMultiplicity(m, o, n), p)
           == MultiSet#Multiplicity(m, p)));

revealed function $IsGoodMultiSet(ms: MultiSet) : bool;

axiom (forall ms: MultiSet :: 
  { $IsGoodMultiSet(ms) } 
  $IsGoodMultiSet(ms)
     <==> (forall bx: Box :: 
      { MultiSet#Multiplicity(ms, bx) } 
      0 <= MultiSet#Multiplicity(ms, bx)
         && MultiSet#Multiplicity(ms, bx) <= MultiSet#Card(ms)));

revealed function MultiSet#Card(m: MultiSet) : int;

axiom (forall s: MultiSet :: { MultiSet#Card(s) } 0 <= MultiSet#Card(s));

axiom (forall s: MultiSet, x: Box, n: int :: 
  { MultiSet#Card(MultiSet#UpdateMultiplicity(s, x, n)) } 
  0 <= n
     ==> MultiSet#Card(MultiSet#UpdateMultiplicity(s, x, n))
       == MultiSet#Card(s) - MultiSet#Multiplicity(s, x) + n);

revealed function MultiSet#Empty() : MultiSet;

axiom (forall o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Empty(), o) } 
  MultiSet#Multiplicity(MultiSet#Empty(), o) == 0);

axiom (forall s: MultiSet :: 
  { MultiSet#Card(s) } 
  (MultiSet#Card(s) == 0 <==> s == MultiSet#Empty())
     && (MultiSet#Card(s) != 0
       ==> (exists x: Box :: 
        { MultiSet#Multiplicity(s, x) } 
        0 < MultiSet#Multiplicity(s, x))));

revealed function MultiSet#Singleton(o: Box) : MultiSet;

axiom (forall r: Box, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Singleton(r), o) } 
  (MultiSet#Multiplicity(MultiSet#Singleton(r), o) == 1 <==> r == o)
     && (MultiSet#Multiplicity(MultiSet#Singleton(r), o) == 0 <==> r != o));

axiom (forall r: Box :: 
  { MultiSet#Singleton(r) } 
  MultiSet#Singleton(r) == MultiSet#UnionOne(MultiSet#Empty(), r));

revealed function MultiSet#UnionOne(m: MultiSet, o: Box) : MultiSet;

axiom (forall a: MultiSet, x: Box, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#UnionOne(a, x), o) } 
  0 < MultiSet#Multiplicity(MultiSet#UnionOne(a, x), o)
     <==> o == x || 0 < MultiSet#Multiplicity(a, o));

axiom (forall a: MultiSet, x: Box :: 
  { MultiSet#UnionOne(a, x) } 
  MultiSet#Multiplicity(MultiSet#UnionOne(a, x), x)
     == MultiSet#Multiplicity(a, x) + 1);

axiom (forall a: MultiSet, x: Box, y: Box :: 
  { MultiSet#UnionOne(a, x), MultiSet#Multiplicity(a, y) } 
  0 < MultiSet#Multiplicity(a, y)
     ==> 0 < MultiSet#Multiplicity(MultiSet#UnionOne(a, x), y));

axiom (forall a: MultiSet, x: Box, y: Box :: 
  { MultiSet#UnionOne(a, x), MultiSet#Multiplicity(a, y) } 
  x != y
     ==> MultiSet#Multiplicity(a, y) == MultiSet#Multiplicity(MultiSet#UnionOne(a, x), y));

axiom (forall a: MultiSet, x: Box :: 
  { MultiSet#Card(MultiSet#UnionOne(a, x)) } 
  MultiSet#Card(MultiSet#UnionOne(a, x)) == MultiSet#Card(a) + 1);

revealed function MultiSet#Union(a: MultiSet, b: MultiSet) : MultiSet;

axiom (forall a: MultiSet, b: MultiSet, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Union(a, b), o) } 
  MultiSet#Multiplicity(MultiSet#Union(a, b), o)
     == MultiSet#Multiplicity(a, o) + MultiSet#Multiplicity(b, o));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Card(MultiSet#Union(a, b)) } 
  MultiSet#Card(MultiSet#Union(a, b)) == MultiSet#Card(a) + MultiSet#Card(b));

revealed function MultiSet#Intersection(a: MultiSet, b: MultiSet) : MultiSet;

axiom (forall a: MultiSet, b: MultiSet, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Intersection(a, b), o) } 
  MultiSet#Multiplicity(MultiSet#Intersection(a, b), o)
     == Math#min(MultiSet#Multiplicity(a, o), MultiSet#Multiplicity(b, o)));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Intersection(MultiSet#Intersection(a, b), b) } 
  MultiSet#Intersection(MultiSet#Intersection(a, b), b)
     == MultiSet#Intersection(a, b));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Intersection(a, MultiSet#Intersection(a, b)) } 
  MultiSet#Intersection(a, MultiSet#Intersection(a, b))
     == MultiSet#Intersection(a, b));

revealed function MultiSet#Difference(a: MultiSet, b: MultiSet) : MultiSet;

axiom (forall a: MultiSet, b: MultiSet, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Difference(a, b), o) } 
  MultiSet#Multiplicity(MultiSet#Difference(a, b), o)
     == Math#clip(MultiSet#Multiplicity(a, o) - MultiSet#Multiplicity(b, o)));

axiom (forall a: MultiSet, b: MultiSet, y: Box :: 
  { MultiSet#Difference(a, b), MultiSet#Multiplicity(b, y), MultiSet#Multiplicity(a, y) } 
  MultiSet#Multiplicity(a, y) <= MultiSet#Multiplicity(b, y)
     ==> MultiSet#Multiplicity(MultiSet#Difference(a, b), y) == 0);

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Card(MultiSet#Difference(a, b)) } 
  MultiSet#Card(MultiSet#Difference(a, b))
         + MultiSet#Card(MultiSet#Difference(b, a))
         + 2 * MultiSet#Card(MultiSet#Intersection(a, b))
       == MultiSet#Card(MultiSet#Union(a, b))
     && MultiSet#Card(MultiSet#Difference(a, b))
       == MultiSet#Card(a) - MultiSet#Card(MultiSet#Intersection(a, b)));

revealed function MultiSet#Subset(a: MultiSet, b: MultiSet) : bool;

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Subset(a, b) } 
  MultiSet#Subset(a, b)
     <==> (forall o: Box :: 
      { MultiSet#Multiplicity(a, o) } { MultiSet#Multiplicity(b, o) } 
      MultiSet#Multiplicity(a, o) <= MultiSet#Multiplicity(b, o)));

revealed function MultiSet#Equal(a: MultiSet, b: MultiSet) : bool;

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Equal(a, b) } 
  MultiSet#Equal(a, b)
     <==> (forall o: Box :: 
      { MultiSet#Multiplicity(a, o) } { MultiSet#Multiplicity(b, o) } 
      MultiSet#Multiplicity(a, o) == MultiSet#Multiplicity(b, o)));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Equal(a, b) } 
  MultiSet#Equal(a, b) ==> a == b);

revealed function MultiSet#Disjoint(a: MultiSet, b: MultiSet) : bool;

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Disjoint(a, b) } 
  MultiSet#Disjoint(a, b)
     <==> (forall o: Box :: 
      { MultiSet#Multiplicity(a, o) } { MultiSet#Multiplicity(b, o) } 
      MultiSet#Multiplicity(a, o) == 0 || MultiSet#Multiplicity(b, o) == 0));

revealed function MultiSet#FromSet(s: Set) : MultiSet;

axiom (forall s: Set, a: Box :: 
  { MultiSet#Multiplicity(MultiSet#FromSet(s), a) } 
  (MultiSet#Multiplicity(MultiSet#FromSet(s), a) == 0 <==> !Set#IsMember(s, a))
     && (MultiSet#Multiplicity(MultiSet#FromSet(s), a) == 1 <==> Set#IsMember(s, a)));

axiom (forall s: Set :: 
  { MultiSet#Card(MultiSet#FromSet(s)) } 
  MultiSet#Card(MultiSet#FromSet(s)) == Set#Card(s));

revealed function MultiSet#FromSeq(s: Seq) : MultiSet
uses {
axiom MultiSet#FromSeq(Seq#Empty()) == MultiSet#Empty();
}

axiom (forall s: Seq :: { MultiSet#FromSeq(s) } $IsGoodMultiSet(MultiSet#FromSeq(s)));

axiom (forall s: Seq :: 
  { MultiSet#Card(MultiSet#FromSeq(s)) } 
  MultiSet#Card(MultiSet#FromSeq(s)) == Seq#Length(s));

axiom (forall s: Seq, v: Box :: 
  { MultiSet#FromSeq(Seq#Build(s, v)) } 
  MultiSet#FromSeq(Seq#Build(s, v)) == MultiSet#UnionOne(MultiSet#FromSeq(s), v));

axiom (forall a: Seq, b: Seq :: 
  { MultiSet#FromSeq(Seq#Append(a, b)) } 
  MultiSet#FromSeq(Seq#Append(a, b))
     == MultiSet#Union(MultiSet#FromSeq(a), MultiSet#FromSeq(b)));

axiom (forall s: Seq, i: int, v: Box, x: Box :: 
  { MultiSet#Multiplicity(MultiSet#FromSeq(Seq#Update(s, i, v)), x) } 
  0 <= i && i < Seq#Length(s)
     ==> MultiSet#Multiplicity(MultiSet#FromSeq(Seq#Update(s, i, v)), x)
       == MultiSet#Multiplicity(MultiSet#Union(MultiSet#Difference(MultiSet#FromSeq(s), MultiSet#Singleton(Seq#Index(s, i))), 
          MultiSet#Singleton(v)), 
        x));

axiom (forall s: Seq, x: Box :: 
  { MultiSet#Multiplicity(MultiSet#FromSeq(s), x) } 
  (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= i && i < Seq#Length(s) && x == Seq#Index(s, i))
     <==> 0 < MultiSet#Multiplicity(MultiSet#FromSeq(s), x));

type Seq;

revealed function Seq#Length(s: Seq) : int;

axiom (forall s: Seq :: { Seq#Length(s) } 0 <= Seq#Length(s));

revealed function Seq#Empty() : Seq
uses {
axiom Seq#Length(Seq#Empty()) == 0;
}

axiom (forall s: Seq :: { Seq#Length(s) } Seq#Length(s) == 0 ==> s == Seq#Empty());

revealed function Seq#Build(s: Seq, val: Box) : Seq;

revealed function Seq#Build_inv0(s: Seq) : Seq;

revealed function Seq#Build_inv1(s: Seq) : Box;

axiom (forall s: Seq, val: Box :: 
  { Seq#Build(s, val) } 
  Seq#Build_inv0(Seq#Build(s, val)) == s
     && Seq#Build_inv1(Seq#Build(s, val)) == val);

axiom (forall s: Seq, v: Box :: 
  { Seq#Build(s, v) } 
  Seq#Length(Seq#Build(s, v)) == 1 + Seq#Length(s));

axiom (forall s: Seq, i: int, v: Box :: 
  { Seq#Index(Seq#Build(s, v), i) } 
  (i == Seq#Length(s) ==> Seq#Index(Seq#Build(s, v), i) == v)
     && (i != Seq#Length(s) ==> Seq#Index(Seq#Build(s, v), i) == Seq#Index(s, i)));

axiom (forall s0: Seq, s1: Seq :: 
  { Seq#Length(Seq#Append(s0, s1)) } 
  Seq#Length(Seq#Append(s0, s1)) == Seq#Length(s0) + Seq#Length(s1));

revealed function Seq#Index(s: Seq, i: int) : Box;

axiom (forall s0: Seq, s1: Seq, n: int :: 
  { Seq#Index(Seq#Append(s0, s1), n) } 
  (n < Seq#Length(s0) ==> Seq#Index(Seq#Append(s0, s1), n) == Seq#Index(s0, n))
     && (Seq#Length(s0) <= n
       ==> Seq#Index(Seq#Append(s0, s1), n) == Seq#Index(s1, n - Seq#Length(s0))));

revealed function Seq#Update(s: Seq, i: int, val: Box) : Seq;

axiom (forall s: Seq, i: int, v: Box :: 
  { Seq#Length(Seq#Update(s, i, v)) } 
  0 <= i && i < Seq#Length(s) ==> Seq#Length(Seq#Update(s, i, v)) == Seq#Length(s));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Index(Seq#Update(s, i, v), n) } 
  0 <= n && n < Seq#Length(s)
     ==> (i == n ==> Seq#Index(Seq#Update(s, i, v), n) == v)
       && (i != n ==> Seq#Index(Seq#Update(s, i, v), n) == Seq#Index(s, n)));

revealed function Seq#Append(s0: Seq, s1: Seq) : Seq;

revealed function Seq#Contains(s: Seq, val: Box) : bool;

axiom (forall s: Seq, x: Box :: 
  { Seq#Contains(s, x) } 
  Seq#Contains(s, x)
     <==> (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= i && i < Seq#Length(s) && Seq#Index(s, i) == x));

axiom (forall x: Box :: 
  { Seq#Contains(Seq#Empty(), x) } 
  !Seq#Contains(Seq#Empty(), x));

axiom (forall s0: Seq, s1: Seq, x: Box :: 
  { Seq#Contains(Seq#Append(s0, s1), x) } 
  Seq#Contains(Seq#Append(s0, s1), x)
     <==> Seq#Contains(s0, x) || Seq#Contains(s1, x));

axiom (forall s: Seq, v: Box, x: Box :: 
  { Seq#Contains(Seq#Build(s, v), x) } 
  Seq#Contains(Seq#Build(s, v), x) <==> v == x || Seq#Contains(s, x));

axiom (forall s: Seq, n: int, x: Box :: 
  { Seq#Contains(Seq#Take(s, n), x) } 
  Seq#Contains(Seq#Take(s, n), x)
     <==> (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= i && i < n && i < Seq#Length(s) && Seq#Index(s, i) == x));

axiom (forall s: Seq, n: int, x: Box :: 
  { Seq#Contains(Seq#Drop(s, n), x) } 
  Seq#Contains(Seq#Drop(s, n), x)
     <==> (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= n && n <= i && i < Seq#Length(s) && Seq#Index(s, i) == x));

revealed function Seq#Equal(s0: Seq, s1: Seq) : bool;

axiom (forall s0: Seq, s1: Seq :: 
  { Seq#Equal(s0, s1) } 
  Seq#Equal(s0, s1)
     <==> Seq#Length(s0) == Seq#Length(s1)
       && (forall j: int :: 
        { Seq#Index(s0, j) } { Seq#Index(s1, j) } 
        0 <= j && j < Seq#Length(s0) ==> Seq#Index(s0, j) == Seq#Index(s1, j)));

axiom (forall a: Seq, b: Seq :: { Seq#Equal(a, b) } Seq#Equal(a, b) ==> a == b);

revealed function Seq#SameUntil(s0: Seq, s1: Seq, n: int) : bool;

axiom (forall s0: Seq, s1: Seq, n: int :: 
  { Seq#SameUntil(s0, s1, n) } 
  Seq#SameUntil(s0, s1, n)
     <==> (forall j: int :: 
      { Seq#Index(s0, j) } { Seq#Index(s1, j) } 
      0 <= j && j < n ==> Seq#Index(s0, j) == Seq#Index(s1, j)));

revealed function Seq#Take(s: Seq, howMany: int) : Seq;

axiom (forall s: Seq, n: int :: 
  { Seq#Length(Seq#Take(s, n)) } 
  0 <= n && n <= Seq#Length(s) ==> Seq#Length(Seq#Take(s, n)) == n);

axiom (forall s: Seq, n: int, j: int :: 
  {:weight 25} { Seq#Index(Seq#Take(s, n), j) } { Seq#Index(s, j), Seq#Take(s, n) } 
  0 <= j && j < n && j < Seq#Length(s)
     ==> Seq#Index(Seq#Take(s, n), j) == Seq#Index(s, j));

revealed function Seq#Drop(s: Seq, howMany: int) : Seq;

axiom (forall s: Seq, n: int :: 
  { Seq#Length(Seq#Drop(s, n)) } 
  0 <= n && n <= Seq#Length(s) ==> Seq#Length(Seq#Drop(s, n)) == Seq#Length(s) - n);

axiom (forall s: Seq, n: int, j: int :: 
  {:weight 25} { Seq#Index(Seq#Drop(s, n), j) } 
  0 <= n && 0 <= j && j < Seq#Length(s) - n
     ==> Seq#Index(Seq#Drop(s, n), j) == Seq#Index(s, j + n));

axiom (forall s: Seq, n: int, k: int :: 
  {:weight 25} { Seq#Index(s, k), Seq#Drop(s, n) } 
  0 <= n && n <= k && k < Seq#Length(s)
     ==> Seq#Index(Seq#Drop(s, n), k - n) == Seq#Index(s, k));

axiom (forall s: Seq, t: Seq, n: int :: 
  { Seq#Take(Seq#Append(s, t), n) } { Seq#Drop(Seq#Append(s, t), n) } 
  n == Seq#Length(s)
     ==> Seq#Take(Seq#Append(s, t), n) == s && Seq#Drop(Seq#Append(s, t), n) == t);

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Take(Seq#Update(s, i, v), n) } 
  0 <= i && i < n && n <= Seq#Length(s)
     ==> Seq#Take(Seq#Update(s, i, v), n) == Seq#Update(Seq#Take(s, n), i, v));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Take(Seq#Update(s, i, v), n) } 
  n <= i && i < Seq#Length(s)
     ==> Seq#Take(Seq#Update(s, i, v), n) == Seq#Take(s, n));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Drop(Seq#Update(s, i, v), n) } 
  0 <= n && n <= i && i < Seq#Length(s)
     ==> Seq#Drop(Seq#Update(s, i, v), n) == Seq#Update(Seq#Drop(s, n), i - n, v));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Drop(Seq#Update(s, i, v), n) } 
  0 <= i && i < n && n <= Seq#Length(s)
     ==> Seq#Drop(Seq#Update(s, i, v), n) == Seq#Drop(s, n));

axiom (forall s: Seq, v: Box, n: int :: 
  { Seq#Drop(Seq#Build(s, v), n) } 
  0 <= n && n <= Seq#Length(s)
     ==> Seq#Drop(Seq#Build(s, v), n) == Seq#Build(Seq#Drop(s, n), v));

axiom (forall s: Seq, n: int :: { Seq#Drop(s, n) } n == 0 ==> Seq#Drop(s, n) == s);

axiom (forall s: Seq, n: int :: 
  { Seq#Take(s, n) } 
  n == 0 ==> Seq#Take(s, n) == Seq#Empty());

axiom (forall s: Seq, m: int, n: int :: 
  { Seq#Drop(Seq#Drop(s, m), n) } 
  0 <= m && 0 <= n && m + n <= Seq#Length(s)
     ==> Seq#Drop(Seq#Drop(s, m), n) == Seq#Drop(s, m + n));

axiom (forall s: Seq, bx: Box, t: Ty :: 
  { $Is(Seq#Build(s, bx), TSeq(t)) } 
  $Is(s, TSeq(t)) && $IsBox(bx, t) ==> $Is(Seq#Build(s, bx), TSeq(t)));

revealed function Seq#Create(ty: Ty, heap: Heap, len: int, init: HandleType) : Seq;

axiom (forall ty: Ty, heap: Heap, len: int, init: HandleType :: 
  { Seq#Length(Seq#Create(ty, heap, len, init): Seq) } 
  $IsGoodHeap(heap) && 0 <= len
     ==> Seq#Length(Seq#Create(ty, heap, len, init): Seq) == len);

axiom (forall ty: Ty, heap: Heap, len: int, init: HandleType, i: int :: 
  { Seq#Index(Seq#Create(ty, heap, len, init), i) } 
  $IsGoodHeap(heap) && 0 <= i && i < len
     ==> Seq#Index(Seq#Create(ty, heap, len, init), i)
       == Apply1(TInt, ty, heap, init, $Box(i)));

revealed function Seq#FromArray(h: Heap, a: ref) : Seq;

axiom (forall h: Heap, a: ref :: 
  { Seq#Length(Seq#FromArray(h, a)) } 
  Seq#Length(Seq#FromArray(h, a)) == _System.array.Length(a));

axiom (forall h: Heap, a: ref :: 
  { Seq#FromArray(h, a) } 
  (forall i: int :: 
    { read(h, a, IndexField(i)) } { Seq#Index(Seq#FromArray(h, a): Seq, i) } 
    0 <= i && i < Seq#Length(Seq#FromArray(h, a))
       ==> Seq#Index(Seq#FromArray(h, a), i) == read(h, a, IndexField(i))));

axiom (forall h0: Heap, h1: Heap, a: ref :: 
  { Seq#FromArray(h1, a), $HeapSucc(h0, h1) } 
  $IsGoodHeap(h0) && $IsGoodHeap(h1) && $HeapSucc(h0, h1) && h0[a] == h1[a]
     ==> Seq#FromArray(h0, a) == Seq#FromArray(h1, a));

axiom (forall h: Heap, i: int, v: Box, a: ref :: 
  { Seq#FromArray(update(h, a, IndexField(i), v), a) } 
  0 <= i && i < _System.array.Length(a)
     ==> Seq#FromArray(update(h, a, IndexField(i), v), a)
       == Seq#Update(Seq#FromArray(h, a), i, v));

axiom (forall h: Heap, a: ref, n0: int, n1: int :: 
  { Seq#Take(Seq#FromArray(h, a), n0), Seq#Take(Seq#FromArray(h, a), n1) } 
  n0 + 1 == n1 && 0 <= n0 && n1 <= _System.array.Length(a)
     ==> Seq#Take(Seq#FromArray(h, a), n1)
       == Seq#Build(Seq#Take(Seq#FromArray(h, a), n0), read(h, a, IndexField(n0): Field)));

revealed function Seq#Rank(Seq) : int;

axiom (forall s: Seq, i: int :: 
  { DtRank($Unbox(Seq#Index(s, i)): DatatypeType) } 
  0 <= i && i < Seq#Length(s)
     ==> DtRank($Unbox(Seq#Index(s, i)): DatatypeType) < Seq#Rank(s));

axiom (forall s: Seq, i: int :: 
  { Seq#Rank(Seq#Drop(s, i)) } 
  0 < i && i <= Seq#Length(s) ==> Seq#Rank(Seq#Drop(s, i)) < Seq#Rank(s));

axiom (forall s: Seq, i: int :: 
  { Seq#Rank(Seq#Take(s, i)) } 
  0 <= i && i < Seq#Length(s) ==> Seq#Rank(Seq#Take(s, i)) < Seq#Rank(s));

axiom (forall s: Seq, i: int, j: int :: 
  { Seq#Rank(Seq#Append(Seq#Take(s, i), Seq#Drop(s, j))) } 
  0 <= i && i < j && j <= Seq#Length(s)
     ==> Seq#Rank(Seq#Append(Seq#Take(s, i), Seq#Drop(s, j))) < Seq#Rank(s));

type Map;

revealed function Map#Domain(Map) : Set;

revealed function Map#Elements(Map) : [Box]Box;

revealed function Map#Card(Map) : int;

axiom (forall m: Map :: { Map#Card(m) } 0 <= Map#Card(m));

axiom (forall m: Map :: { Map#Card(m) } Map#Card(m) == 0 <==> m == Map#Empty());

axiom (forall m: Map :: 
  { Map#Domain(m) } 
  m == Map#Empty() || (exists k: Box :: Set#IsMember(Map#Domain(m), k)));

axiom (forall m: Map :: 
  { Map#Values(m) } 
  m == Map#Empty() || (exists v: Box :: Set#IsMember(Map#Values(m), v)));

axiom (forall m: Map :: 
  { Map#Items(m) } 
  m == Map#Empty()
     || (exists k: Box, v: Box :: 
      Set#IsMember(Map#Items(m), $Box(#_System._tuple#2._#Make2(k, v)))));

axiom (forall m: Map :: 
  { Set#Card(Map#Domain(m)) } { Map#Card(m) } 
  Set#Card(Map#Domain(m)) == Map#Card(m));

axiom (forall m: Map :: 
  { Set#Card(Map#Values(m)) } { Map#Card(m) } 
  Set#Card(Map#Values(m)) <= Map#Card(m));

axiom (forall m: Map :: 
  { Set#Card(Map#Items(m)) } { Map#Card(m) } 
  Set#Card(Map#Items(m)) == Map#Card(m));

revealed function Map#Values(Map) : Set;

axiom (forall m: Map, v: Box :: 
  { Set#IsMember(Map#Values(m), v) } 
  Set#IsMember(Map#Values(m), v)
     == (exists u: Box :: 
      { Set#IsMember(Map#Domain(m), u) } { Map#Elements(m)[u] } 
      Set#IsMember(Map#Domain(m), u) && v == Map#Elements(m)[u]));

revealed function Map#Items(Map) : Set;

revealed function #_System._tuple#2._#Make2(Box, Box) : DatatypeType;

revealed function _System.Tuple2._0(DatatypeType) : Box;

revealed function _System.Tuple2._1(DatatypeType) : Box;

axiom (forall m: Map, item: Box :: 
  { Set#IsMember(Map#Items(m), item) } 
  Set#IsMember(Map#Items(m), item)
     <==> Set#IsMember(Map#Domain(m), _System.Tuple2._0($Unbox(item)))
       && Map#Elements(m)[_System.Tuple2._0($Unbox(item))]
         == _System.Tuple2._1($Unbox(item)));

revealed function Map#Empty() : Map;

axiom (forall u: Box :: 
  { Set#IsMember(Map#Domain(Map#Empty(): Map), u) } 
  !Set#IsMember(Map#Domain(Map#Empty(): Map), u));

revealed function Map#Glue(Set, [Box]Box, Ty) : Map;

axiom (forall a: Set, b: [Box]Box, t: Ty :: 
  { Map#Domain(Map#Glue(a, b, t)) } 
  Map#Domain(Map#Glue(a, b, t)) == a);

axiom (forall a: Set, b: [Box]Box, t: Ty :: 
  { Map#Elements(Map#Glue(a, b, t)) } 
  Map#Elements(Map#Glue(a, b, t)) == b);

axiom (forall a: Set, b: [Box]Box, t0: Ty, t1: Ty :: 
  { Map#Glue(a, b, TMap(t0, t1)) } 
  (forall bx: Box :: Set#IsMember(a, bx) ==> $IsBox(bx, t0) && $IsBox(b[bx], t1))
     ==> $Is(Map#Glue(a, b, TMap(t0, t1)), TMap(t0, t1)));

revealed function Map#Build(Map, Box, Box) : Map;

axiom (forall m: Map, u: Box, u': Box, v: Box :: 
  { Set#IsMember(Map#Domain(Map#Build(m, u, v)), u') } 
    { Map#Elements(Map#Build(m, u, v))[u'] } 
  (u' == u
       ==> Set#IsMember(Map#Domain(Map#Build(m, u, v)), u')
         && Map#Elements(Map#Build(m, u, v))[u'] == v)
     && (u' != u
       ==> Set#IsMember(Map#Domain(Map#Build(m, u, v)), u')
           == Set#IsMember(Map#Domain(m), u')
         && Map#Elements(Map#Build(m, u, v))[u'] == Map#Elements(m)[u']));

axiom (forall m: Map, u: Box, v: Box :: 
  { Map#Card(Map#Build(m, u, v)) } 
  Set#IsMember(Map#Domain(m), u) ==> Map#Card(Map#Build(m, u, v)) == Map#Card(m));

axiom (forall m: Map, u: Box, v: Box :: 
  { Map#Card(Map#Build(m, u, v)) } 
  !Set#IsMember(Map#Domain(m), u)
     ==> Map#Card(Map#Build(m, u, v)) == Map#Card(m) + 1);

revealed function Map#Merge(Map, Map) : Map;

axiom (forall m: Map, n: Map :: 
  { Map#Domain(Map#Merge(m, n)) } 
  Map#Domain(Map#Merge(m, n)) == Set#Union(Map#Domain(m), Map#Domain(n)));

axiom (forall m: Map, n: Map, u: Box :: 
  { Map#Elements(Map#Merge(m, n))[u] } 
  Set#IsMember(Map#Domain(Map#Merge(m, n)), u)
     ==> (!Set#IsMember(Map#Domain(n), u)
         ==> Map#Elements(Map#Merge(m, n))[u] == Map#Elements(m)[u])
       && (Set#IsMember(Map#Domain(n), u)
         ==> Map#Elements(Map#Merge(m, n))[u] == Map#Elements(n)[u]));

revealed function Map#Subtract(Map, Set) : Map;

axiom (forall m: Map, s: Set :: 
  { Map#Domain(Map#Subtract(m, s)) } 
  Map#Domain(Map#Subtract(m, s)) == Set#Difference(Map#Domain(m), s));

axiom (forall m: Map, s: Set, u: Box :: 
  { Map#Elements(Map#Subtract(m, s))[u] } 
  Set#IsMember(Map#Domain(Map#Subtract(m, s)), u)
     ==> Map#Elements(Map#Subtract(m, s))[u] == Map#Elements(m)[u]);

revealed function Map#Equal(Map, Map) : bool;

axiom (forall m: Map, m': Map :: 
  { Map#Equal(m, m') } 
  Map#Equal(m, m')
     <==> (forall u: Box :: 
        Set#IsMember(Map#Domain(m), u) == Set#IsMember(Map#Domain(m'), u))
       && (forall u: Box :: 
        Set#IsMember(Map#Domain(m), u) ==> Map#Elements(m)[u] == Map#Elements(m')[u]));

axiom (forall m: Map, m': Map :: { Map#Equal(m, m') } Map#Equal(m, m') ==> m == m');

revealed function Map#Disjoint(Map, Map) : bool;

axiom (forall m: Map, m': Map :: 
  { Map#Disjoint(m, m') } 
  Map#Disjoint(m, m')
     <==> (forall o: Box :: 
      { Set#IsMember(Map#Domain(m), o) } { Set#IsMember(Map#Domain(m'), o) } 
      !Set#IsMember(Map#Domain(m), o) || !Set#IsMember(Map#Domain(m'), o)));

type IMap;

revealed function IMap#Domain(IMap) : ISet;

revealed function IMap#Elements(IMap) : [Box]Box;

axiom (forall m: IMap :: 
  { IMap#Domain(m) } 
  m == IMap#Empty() || (exists k: Box :: IMap#Domain(m)[k]));

axiom (forall m: IMap :: 
  { IMap#Values(m) } 
  m == IMap#Empty() || (exists v: Box :: IMap#Values(m)[v]));

axiom (forall m: IMap :: 
  { IMap#Items(m) } 
  m == IMap#Empty()
     || (exists k: Box, v: Box :: IMap#Items(m)[$Box(#_System._tuple#2._#Make2(k, v))]));

axiom (forall m: IMap :: 
  { IMap#Domain(m) } 
  m == IMap#Empty() <==> IMap#Domain(m) == ISet#Empty());

axiom (forall m: IMap :: 
  { IMap#Values(m) } 
  m == IMap#Empty() <==> IMap#Values(m) == ISet#Empty());

axiom (forall m: IMap :: 
  { IMap#Items(m) } 
  m == IMap#Empty() <==> IMap#Items(m) == ISet#Empty());

revealed function IMap#Values(IMap) : ISet;

axiom (forall m: IMap, v: Box :: 
  { IMap#Values(m)[v] } 
  IMap#Values(m)[v]
     == (exists u: Box :: 
      { IMap#Domain(m)[u] } { IMap#Elements(m)[u] } 
      IMap#Domain(m)[u] && v == IMap#Elements(m)[u]));

revealed function IMap#Items(IMap) : ISet;

axiom (forall m: IMap, item: Box :: 
  { IMap#Items(m)[item] } 
  IMap#Items(m)[item]
     <==> IMap#Domain(m)[_System.Tuple2._0($Unbox(item))]
       && IMap#Elements(m)[_System.Tuple2._0($Unbox(item))]
         == _System.Tuple2._1($Unbox(item)));

revealed function IMap#Empty() : IMap;

axiom (forall u: Box :: 
  { IMap#Domain(IMap#Empty(): IMap)[u] } 
  !IMap#Domain(IMap#Empty(): IMap)[u]);

revealed function IMap#Glue([Box]bool, [Box]Box, Ty) : IMap;

axiom (forall a: [Box]bool, b: [Box]Box, t: Ty :: 
  { IMap#Domain(IMap#Glue(a, b, t)) } 
  IMap#Domain(IMap#Glue(a, b, t)) == a);

axiom (forall a: [Box]bool, b: [Box]Box, t: Ty :: 
  { IMap#Elements(IMap#Glue(a, b, t)) } 
  IMap#Elements(IMap#Glue(a, b, t)) == b);

axiom (forall a: [Box]bool, b: [Box]Box, t0: Ty, t1: Ty :: 
  { IMap#Glue(a, b, TIMap(t0, t1)) } 
  (forall bx: Box :: a[bx] ==> $IsBox(bx, t0) && $IsBox(b[bx], t1))
     ==> $Is(IMap#Glue(a, b, TIMap(t0, t1)), TIMap(t0, t1)));

revealed function IMap#Build(IMap, Box, Box) : IMap;

axiom (forall m: IMap, u: Box, u': Box, v: Box :: 
  { IMap#Domain(IMap#Build(m, u, v))[u'] } 
    { IMap#Elements(IMap#Build(m, u, v))[u'] } 
  (u' == u
       ==> IMap#Domain(IMap#Build(m, u, v))[u']
         && IMap#Elements(IMap#Build(m, u, v))[u'] == v)
     && (u' != u
       ==> IMap#Domain(IMap#Build(m, u, v))[u'] == IMap#Domain(m)[u']
         && IMap#Elements(IMap#Build(m, u, v))[u'] == IMap#Elements(m)[u']));

revealed function IMap#Equal(IMap, IMap) : bool;

axiom (forall m: IMap, m': IMap :: 
  { IMap#Equal(m, m') } 
  IMap#Equal(m, m')
     <==> (forall u: Box :: IMap#Domain(m)[u] == IMap#Domain(m')[u])
       && (forall u: Box :: 
        IMap#Domain(m)[u] ==> IMap#Elements(m)[u] == IMap#Elements(m')[u]));

axiom (forall m: IMap, m': IMap :: 
  { IMap#Equal(m, m') } 
  IMap#Equal(m, m') ==> m == m');

revealed function IMap#Merge(IMap, IMap) : IMap;

axiom (forall m: IMap, n: IMap :: 
  { IMap#Domain(IMap#Merge(m, n)) } 
  IMap#Domain(IMap#Merge(m, n)) == ISet#Union(IMap#Domain(m), IMap#Domain(n)));

axiom (forall m: IMap, n: IMap, u: Box :: 
  { IMap#Elements(IMap#Merge(m, n))[u] } 
  IMap#Domain(IMap#Merge(m, n))[u]
     ==> (!IMap#Domain(n)[u]
         ==> IMap#Elements(IMap#Merge(m, n))[u] == IMap#Elements(m)[u])
       && (IMap#Domain(n)[u]
         ==> IMap#Elements(IMap#Merge(m, n))[u] == IMap#Elements(n)[u]));

revealed function IMap#Subtract(IMap, Set) : IMap;

axiom (forall m: IMap, s: Set :: 
  { IMap#Domain(IMap#Subtract(m, s)) } 
  IMap#Domain(IMap#Subtract(m, s))
     == ISet#Difference(IMap#Domain(m), ISet#FromSet(s)));

axiom (forall m: IMap, s: Set, u: Box :: 
  { IMap#Elements(IMap#Subtract(m, s))[u] } 
  IMap#Domain(IMap#Subtract(m, s))[u]
     ==> IMap#Elements(IMap#Subtract(m, s))[u] == IMap#Elements(m)[u]);

revealed function INTERNAL_add_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_add_boogie(x, y): int } 
  INTERNAL_add_boogie(x, y): int == x + y);
}

revealed function INTERNAL_sub_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_sub_boogie(x, y): int } 
  INTERNAL_sub_boogie(x, y): int == x - y);
}

revealed function INTERNAL_mul_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_mul_boogie(x, y): int } 
  INTERNAL_mul_boogie(x, y): int == x * y);
}

revealed function INTERNAL_div_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_div_boogie(x, y): int } 
  INTERNAL_div_boogie(x, y): int == x div y);
}

revealed function INTERNAL_mod_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_mod_boogie(x, y): int } 
  INTERNAL_mod_boogie(x, y): int == x mod y);
}

revealed function {:never_pattern true} INTERNAL_lt_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_lt_boogie(x, y): bool } 
  INTERNAL_lt_boogie(x, y): bool == (x < y));
}

revealed function {:never_pattern true} INTERNAL_le_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_le_boogie(x, y): bool } 
  INTERNAL_le_boogie(x, y): bool == (x <= y));
}

revealed function {:never_pattern true} INTERNAL_gt_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_gt_boogie(x, y): bool } 
  INTERNAL_gt_boogie(x, y): bool == (x > y));
}

revealed function {:never_pattern true} INTERNAL_ge_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_ge_boogie(x, y): bool } 
  INTERNAL_ge_boogie(x, y): bool == (x >= y));
}

revealed function Mul(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Mul(x, y): int } Mul(x, y): int == x * y);
}

revealed function Div(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Div(x, y): int } Div(x, y): int == x div y);
}

revealed function Mod(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Mod(x, y): int } Mod(x, y): int == x mod y);
}

revealed function Add(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Add(x, y): int } Add(x, y): int == x + y);
}

revealed function Sub(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Sub(x, y): int } Sub(x, y): int == x - y);
}

function Tclass._System.nat() : Ty
uses {
// Tclass._System.nat Tag
axiom Tag(Tclass._System.nat()) == Tagclass._System.nat
   && TagFamily(Tclass._System.nat()) == tytagFamily$nat;
}

const unique Tagclass._System.nat: TyTag;

// Box/unbox axiom for Tclass._System.nat
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.nat()) } 
  $IsBox(bx, Tclass._System.nat())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._System.nat()));

// $Is axiom for subset type _System.nat
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._System.nat()) } 
  $Is(x#0, Tclass._System.nat()) <==> LitInt(0) <= x#0);

// $IsAlloc axiom for subset type _System.nat
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._System.nat(), $h) } 
  $IsAlloc(x#0, Tclass._System.nat(), $h));

const unique class._System.object?: ClassName;

const unique Tagclass._System.object?: TyTag;

// Box/unbox axiom for Tclass._System.object?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.object?()) } 
  $IsBox(bx, Tclass._System.object?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._System.object?()));

// $Is axiom for trait object
axiom (forall $o: ref :: 
  { $Is($o, Tclass._System.object?()) } 
  $Is($o, Tclass._System.object?()));

// $IsAlloc axiom for trait object
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.object?(), $h) } 
  $IsAlloc($o, Tclass._System.object?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_System.object(ty: Ty) : bool;

function Tclass._System.object() : Ty
uses {
// Tclass._System.object Tag
axiom Tag(Tclass._System.object()) == Tagclass._System.object
   && TagFamily(Tclass._System.object()) == tytagFamily$object;
}

const unique Tagclass._System.object: TyTag;

// Box/unbox axiom for Tclass._System.object
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.object()) } 
  $IsBox(bx, Tclass._System.object())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._System.object()));

// $Is axiom for non-null type _System.object
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._System.object()) } { $Is(c#0, Tclass._System.object?()) } 
  $Is(c#0, Tclass._System.object())
     <==> $Is(c#0, Tclass._System.object?()) && c#0 != null);

// $IsAlloc axiom for non-null type _System.object
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.object(), $h) } 
    { $IsAlloc(c#0, Tclass._System.object?(), $h) } 
  $IsAlloc(c#0, Tclass._System.object(), $h)
     <==> $IsAlloc(c#0, Tclass._System.object?(), $h));

const unique class._System.array?: ClassName;

function Tclass._System.array?(Ty) : Ty;

const unique Tagclass._System.array?: TyTag;

// Tclass._System.array? Tag
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array?(_System.array$arg) } 
  Tag(Tclass._System.array?(_System.array$arg)) == Tagclass._System.array?
     && TagFamily(Tclass._System.array?(_System.array$arg)) == tytagFamily$array);

function Tclass._System.array?_0(Ty) : Ty;

// Tclass._System.array? injectivity 0
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array?(_System.array$arg) } 
  Tclass._System.array?_0(Tclass._System.array?(_System.array$arg))
     == _System.array$arg);

// Box/unbox axiom for Tclass._System.array?
axiom (forall _System.array$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array?(_System.array$arg)) } 
  $IsBox(bx, Tclass._System.array?(_System.array$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array?(_System.array$arg)));

// array.: Type axiom
axiom (forall _System.array$arg: Ty, $h: Heap, $o: ref, $i0: int :: 
  { read($h, $o, IndexField($i0)), Tclass._System.array?(_System.array$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array?(_System.array$arg)
       && 
      0 <= $i0
       && $i0 < _System.array.Length($o)
     ==> $IsBox(read($h, $o, IndexField($i0)), _System.array$arg));

// array.: Allocation axiom
axiom (forall _System.array$arg: Ty, $h: Heap, $o: ref, $i0: int :: 
  { read($h, $o, IndexField($i0)), Tclass._System.array?(_System.array$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array?(_System.array$arg)
       && 
      0 <= $i0
       && $i0 < _System.array.Length($o)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, IndexField($i0)), _System.array$arg, $h));

// $Is axiom for array type array
axiom (forall _System.array$arg: Ty, $o: ref :: 
  { $Is($o, Tclass._System.array?(_System.array$arg)) } 
  $Is($o, Tclass._System.array?(_System.array$arg))
     <==> $o == null || dtype($o) == Tclass._System.array?(_System.array$arg));

// $IsAlloc axiom for array type array
axiom (forall _System.array$arg: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.array?(_System.array$arg), $h) } 
  $IsAlloc($o, Tclass._System.array?(_System.array$arg), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// array.Length: Type axiom
axiom (forall _System.array$arg: Ty, $o: ref :: 
  { _System.array.Length($o), Tclass._System.array?(_System.array$arg) } 
  $o != null && dtype($o) == Tclass._System.array?(_System.array$arg)
     ==> $Is(_System.array.Length($o), TInt));

// array.Length: Allocation axiom
axiom (forall _System.array$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array.Length($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array?(_System.array$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array?(_System.array$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array.Length($o), TInt, $h));

function Tclass._System.array(Ty) : Ty;

const unique Tagclass._System.array: TyTag;

// Tclass._System.array Tag
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array(_System.array$arg) } 
  Tag(Tclass._System.array(_System.array$arg)) == Tagclass._System.array
     && TagFamily(Tclass._System.array(_System.array$arg)) == tytagFamily$array);

function Tclass._System.array_0(Ty) : Ty;

// Tclass._System.array injectivity 0
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array(_System.array$arg) } 
  Tclass._System.array_0(Tclass._System.array(_System.array$arg))
     == _System.array$arg);

// Box/unbox axiom for Tclass._System.array
axiom (forall _System.array$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array(_System.array$arg)) } 
  $IsBox(bx, Tclass._System.array(_System.array$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array(_System.array$arg)));

// $Is axiom for non-null type _System.array
axiom (forall _System.array$arg: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._System.array(_System.array$arg)) } 
    { $Is(c#0, Tclass._System.array?(_System.array$arg)) } 
  $Is(c#0, Tclass._System.array(_System.array$arg))
     <==> $Is(c#0, Tclass._System.array?(_System.array$arg)) && c#0 != null);

// $IsAlloc axiom for non-null type _System.array
axiom (forall _System.array$arg: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.array(_System.array$arg), $h) } 
    { $IsAlloc(c#0, Tclass._System.array?(_System.array$arg), $h) } 
  $IsAlloc(c#0, Tclass._System.array(_System.array$arg), $h)
     <==> $IsAlloc(c#0, Tclass._System.array?(_System.array$arg), $h));

function Tclass._System.___hFunc1(Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc1: TyTag;

// Tclass._System.___hFunc1 Tag
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc1(#$T0, #$R) } 
  Tag(Tclass._System.___hFunc1(#$T0, #$R)) == Tagclass._System.___hFunc1
     && TagFamily(Tclass._System.___hFunc1(#$T0, #$R)) == tytagFamily$_#Func1);

function Tclass._System.___hFunc1_0(Ty) : Ty;

// Tclass._System.___hFunc1 injectivity 0
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc1(#$T0, #$R) } 
  Tclass._System.___hFunc1_0(Tclass._System.___hFunc1(#$T0, #$R)) == #$T0);

function Tclass._System.___hFunc1_1(Ty) : Ty;

// Tclass._System.___hFunc1 injectivity 1
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc1(#$T0, #$R) } 
  Tclass._System.___hFunc1_1(Tclass._System.___hFunc1(#$T0, #$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hFunc1
axiom (forall #$T0: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc1(#$T0, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc1(#$T0, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc1(#$T0, #$R)));

function Handle1([Heap,Box]Box, [Heap,Box]bool, [Heap,Box]Set) : HandleType;

function Requires1(Ty, Ty, Heap, HandleType, Box) : bool;

function Reads1(Ty, Ty, Heap, HandleType, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    heap: Heap, 
    h: [Heap,Box]Box, 
    r: [Heap,Box]bool, 
    rd: [Heap,Box]Set, 
    bx0: Box :: 
  { Apply1(t0, t1, heap, Handle1(h, r, rd), bx0) } 
  Apply1(t0, t1, heap, Handle1(h, r, rd), bx0) == h[heap, bx0]);

axiom (forall t0: Ty, 
    t1: Ty, 
    heap: Heap, 
    h: [Heap,Box]Box, 
    r: [Heap,Box]bool, 
    rd: [Heap,Box]Set, 
    bx0: Box :: 
  { Requires1(t0, t1, heap, Handle1(h, r, rd), bx0) } 
  r[heap, bx0] ==> Requires1(t0, t1, heap, Handle1(h, r, rd), bx0));

axiom (forall t0: Ty, 
    t1: Ty, 
    heap: Heap, 
    h: [Heap,Box]Box, 
    r: [Heap,Box]bool, 
    rd: [Heap,Box]Set, 
    bx0: Box, 
    bx: Box :: 
  { Set#IsMember(Reads1(t0, t1, heap, Handle1(h, r, rd), bx0), bx) } 
  Set#IsMember(Reads1(t0, t1, heap, Handle1(h, r, rd), bx0), bx)
     == Set#IsMember(rd[heap, bx0], bx));

function {:inline} Requires1#canCall(t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box) : bool
{
  true
}

function {:inline} Reads1#canCall(t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box) : bool
{
  true
}

// frame axiom for Reads1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Reads1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h0, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads1(t0, t1, h0, f, bx0) == Reads1(t0, t1, h1, f, bx0));

// frame axiom for Reads1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Reads1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h1, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads1(t0, t1, h0, f, bx0) == Reads1(t0, t1, h1, f, bx0));

// frame axiom for Requires1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Requires1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h0, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires1(t0, t1, h0, f, bx0) == Requires1(t0, t1, h1, f, bx0));

// frame axiom for Requires1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Requires1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h1, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires1(t0, t1, h0, f, bx0) == Requires1(t0, t1, h1, f, bx0));

// frame axiom for Apply1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Apply1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h0, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply1(t0, t1, h0, f, bx0) == Apply1(t0, t1, h1, f, bx0));

// frame axiom for Apply1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Apply1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h1, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply1(t0, t1, h0, f, bx0) == Apply1(t0, t1, h1, f, bx0));

// empty-reads property for Reads1 
axiom (forall t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box :: 
  { Reads1(t0, t1, $OneHeap, f, bx0), $IsGoodHeap(heap) } 
    { Reads1(t0, t1, heap, f, bx0) } 
  $IsGoodHeap(heap) && $IsBox(bx0, t0) && $Is(f, Tclass._System.___hFunc1(t0, t1))
     ==> (Set#Equal(Reads1(t0, t1, $OneHeap, f, bx0), Set#Empty(): Set)
       <==> Set#Equal(Reads1(t0, t1, heap, f, bx0), Set#Empty(): Set)));

// empty-reads property for Requires1
axiom (forall t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box :: 
  { Requires1(t0, t1, $OneHeap, f, bx0), $IsGoodHeap(heap) } 
    { Requires1(t0, t1, heap, f, bx0) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && Set#Equal(Reads1(t0, t1, $OneHeap, f, bx0), Set#Empty(): Set)
     ==> Requires1(t0, t1, $OneHeap, f, bx0) == Requires1(t0, t1, heap, f, bx0));

axiom (forall f: HandleType, t0: Ty, t1: Ty :: 
  { $Is(f, Tclass._System.___hFunc1(t0, t1)) } 
  $Is(f, Tclass._System.___hFunc1(t0, t1))
     <==> (forall h: Heap, bx0: Box :: 
      { Apply1(t0, t1, h, f, bx0) } 
      $IsGoodHeap(h) && $IsBox(bx0, t0) && Requires1(t0, t1, h, f, bx0)
         ==> $IsBox(Apply1(t0, t1, h, f, bx0), t1)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, u0: Ty, u1: Ty :: 
  { $Is(f, Tclass._System.___hFunc1(t0, t1)), $Is(f, Tclass._System.___hFunc1(u0, u1)) } 
  $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, t1) } { $IsBox(bx, u1) } 
        $IsBox(bx, t1) ==> $IsBox(bx, u1))
     ==> $Is(f, Tclass._System.___hFunc1(u0, u1)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h)
       <==> (forall bx0: Box :: 
        { Apply1(t0, t1, h, f, bx0) } { Reads1(t0, t1, h, f, bx0) } 
        $IsBox(bx0, t0) && $IsAllocBox(bx0, t0, h) && Requires1(t0, t1, h, f, bx0)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads1(t0, t1, h, f, bx0), $Box(r)) } 
            r != null && Set#IsMember(Reads1(t0, t1, h, f, bx0), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h)
     ==> (forall bx0: Box :: 
      { Apply1(t0, t1, h, f, bx0) } 
      $IsAllocBox(bx0, t0, h) && Requires1(t0, t1, h, f, bx0)
         ==> $IsAllocBox(Apply1(t0, t1, h, f, bx0), t1, h)));

function Tclass._System.___hPartialFunc1(Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc1: TyTag;

// Tclass._System.___hPartialFunc1 Tag
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc1(#$T0, #$R) } 
  Tag(Tclass._System.___hPartialFunc1(#$T0, #$R))
       == Tagclass._System.___hPartialFunc1
     && TagFamily(Tclass._System.___hPartialFunc1(#$T0, #$R))
       == tytagFamily$_#PartialFunc1);

function Tclass._System.___hPartialFunc1_0(Ty) : Ty;

// Tclass._System.___hPartialFunc1 injectivity 0
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc1(#$T0, #$R) } 
  Tclass._System.___hPartialFunc1_0(Tclass._System.___hPartialFunc1(#$T0, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc1_1(Ty) : Ty;

// Tclass._System.___hPartialFunc1 injectivity 1
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc1(#$T0, #$R) } 
  Tclass._System.___hPartialFunc1_1(Tclass._System.___hPartialFunc1(#$T0, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc1
axiom (forall #$T0: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc1(#$T0, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc1(#$T0, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc1(#$T0, #$R)));

// $Is axiom for subset type _System._#PartialFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc1(#$T0, #$R))
       && (forall x0#0: Box :: 
        $IsBox(x0#0, #$T0)
           ==> Set#Equal(Reads1(#$T0, #$R, $OneHeap, f#0, x0#0), Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc1(#$T0, #$R), $h));

function Tclass._System.___hTotalFunc1(Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc1: TyTag;

// Tclass._System.___hTotalFunc1 Tag
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc1(#$T0, #$R) } 
  Tag(Tclass._System.___hTotalFunc1(#$T0, #$R)) == Tagclass._System.___hTotalFunc1
     && TagFamily(Tclass._System.___hTotalFunc1(#$T0, #$R)) == tytagFamily$_#TotalFunc1);

function Tclass._System.___hTotalFunc1_0(Ty) : Ty;

// Tclass._System.___hTotalFunc1 injectivity 0
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc1(#$T0, #$R) } 
  Tclass._System.___hTotalFunc1_0(Tclass._System.___hTotalFunc1(#$T0, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc1_1(Ty) : Ty;

// Tclass._System.___hTotalFunc1 injectivity 1
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc1(#$T0, #$R) } 
  Tclass._System.___hTotalFunc1_1(Tclass._System.___hTotalFunc1(#$T0, #$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc1
axiom (forall #$T0: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc1(#$T0, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc1(#$T0, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc1(#$T0, #$R)));

// $Is axiom for subset type _System._#TotalFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R))
       && (forall x0#0: Box :: 
        $IsBox(x0#0, #$T0) ==> Requires1(#$T0, #$R, $OneHeap, f#0, x0#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R), $h));

function Tclass._System.___hFunc0(Ty) : Ty;

const unique Tagclass._System.___hFunc0: TyTag;

// Tclass._System.___hFunc0 Tag
axiom (forall #$R: Ty :: 
  { Tclass._System.___hFunc0(#$R) } 
  Tag(Tclass._System.___hFunc0(#$R)) == Tagclass._System.___hFunc0
     && TagFamily(Tclass._System.___hFunc0(#$R)) == tytagFamily$_#Func0);

function Tclass._System.___hFunc0_0(Ty) : Ty;

// Tclass._System.___hFunc0 injectivity 0
axiom (forall #$R: Ty :: 
  { Tclass._System.___hFunc0(#$R) } 
  Tclass._System.___hFunc0_0(Tclass._System.___hFunc0(#$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hFunc0
axiom (forall #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc0(#$R)) } 
  $IsBox(bx, Tclass._System.___hFunc0(#$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc0(#$R)));

function Handle0([Heap]Box, [Heap]bool, [Heap]Set) : HandleType;

function Apply0(Ty, Heap, HandleType) : Box;

function Requires0(Ty, Heap, HandleType) : bool;

function Reads0(Ty, Heap, HandleType) : Set;

axiom (forall t0: Ty, heap: Heap, h: [Heap]Box, r: [Heap]bool, rd: [Heap]Set :: 
  { Apply0(t0, heap, Handle0(h, r, rd)) } 
  Apply0(t0, heap, Handle0(h, r, rd)) == h[heap]);

axiom (forall t0: Ty, heap: Heap, h: [Heap]Box, r: [Heap]bool, rd: [Heap]Set :: 
  { Requires0(t0, heap, Handle0(h, r, rd)) } 
  r[heap] ==> Requires0(t0, heap, Handle0(h, r, rd)));

axiom (forall t0: Ty, heap: Heap, h: [Heap]Box, r: [Heap]bool, rd: [Heap]Set, bx: Box :: 
  { Set#IsMember(Reads0(t0, heap, Handle0(h, r, rd)), bx) } 
  Set#IsMember(Reads0(t0, heap, Handle0(h, r, rd)), bx)
     == Set#IsMember(rd[heap], bx));

function {:inline} Requires0#canCall(t0: Ty, heap: Heap, f: HandleType) : bool
{
  true
}

function {:inline} Reads0#canCall(t0: Ty, heap: Heap, f: HandleType) : bool
{
  true
}

// frame axiom for Reads0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Reads0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h0, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads0(t0, h0, f) == Reads0(t0, h1, f));

// frame axiom for Reads0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Reads0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h1, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads0(t0, h0, f) == Reads0(t0, h1, f));

// frame axiom for Requires0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Requires0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h0, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires0(t0, h0, f) == Requires0(t0, h1, f));

// frame axiom for Requires0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Requires0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h1, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires0(t0, h0, f) == Requires0(t0, h1, f));

// frame axiom for Apply0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Apply0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h0, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply0(t0, h0, f) == Apply0(t0, h1, f));

// frame axiom for Apply0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Apply0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h1, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply0(t0, h0, f) == Apply0(t0, h1, f));

// empty-reads property for Reads0 
axiom (forall t0: Ty, heap: Heap, f: HandleType :: 
  { Reads0(t0, $OneHeap, f), $IsGoodHeap(heap) } { Reads0(t0, heap, f) } 
  $IsGoodHeap(heap) && $Is(f, Tclass._System.___hFunc0(t0))
     ==> (Set#Equal(Reads0(t0, $OneHeap, f), Set#Empty(): Set)
       <==> Set#Equal(Reads0(t0, heap, f), Set#Empty(): Set)));

// empty-reads property for Requires0
axiom (forall t0: Ty, heap: Heap, f: HandleType :: 
  { Requires0(t0, $OneHeap, f), $IsGoodHeap(heap) } { Requires0(t0, heap, f) } 
  $IsGoodHeap(heap)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && Set#Equal(Reads0(t0, $OneHeap, f), Set#Empty(): Set)
     ==> Requires0(t0, $OneHeap, f) == Requires0(t0, heap, f));

axiom (forall f: HandleType, t0: Ty :: 
  { $Is(f, Tclass._System.___hFunc0(t0)) } 
  $Is(f, Tclass._System.___hFunc0(t0))
     <==> (forall h: Heap :: 
      { Apply0(t0, h, f) } 
      $IsGoodHeap(h) && Requires0(t0, h, f) ==> $IsBox(Apply0(t0, h, f), t0)));

axiom (forall f: HandleType, t0: Ty, u0: Ty :: 
  { $Is(f, Tclass._System.___hFunc0(t0)), $Is(f, Tclass._System.___hFunc0(u0)) } 
  $Is(f, Tclass._System.___hFunc0(t0))
       && (forall bx: Box :: 
        { $IsBox(bx, t0) } { $IsBox(bx, u0) } 
        $IsBox(bx, t0) ==> $IsBox(bx, u0))
     ==> $Is(f, Tclass._System.___hFunc0(u0)));

axiom (forall f: HandleType, t0: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc0(t0), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc0(t0), h)
       <==> Requires0(t0, h, f)
         ==> (forall r: ref :: 
          { Set#IsMember(Reads0(t0, h, f), $Box(r)) } 
          r != null && Set#IsMember(Reads0(t0, h, f), $Box(r))
             ==> $Unbox(read(h, r, alloc)): bool)));

axiom (forall f: HandleType, t0: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc0(t0), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc0(t0), h)
     ==> 
    Requires0(t0, h, f)
     ==> $IsAllocBox(Apply0(t0, h, f), t0, h));

function Tclass._System.___hPartialFunc0(Ty) : Ty;

const unique Tagclass._System.___hPartialFunc0: TyTag;

// Tclass._System.___hPartialFunc0 Tag
axiom (forall #$R: Ty :: 
  { Tclass._System.___hPartialFunc0(#$R) } 
  Tag(Tclass._System.___hPartialFunc0(#$R)) == Tagclass._System.___hPartialFunc0
     && TagFamily(Tclass._System.___hPartialFunc0(#$R)) == tytagFamily$_#PartialFunc0);

function Tclass._System.___hPartialFunc0_0(Ty) : Ty;

// Tclass._System.___hPartialFunc0 injectivity 0
axiom (forall #$R: Ty :: 
  { Tclass._System.___hPartialFunc0(#$R) } 
  Tclass._System.___hPartialFunc0_0(Tclass._System.___hPartialFunc0(#$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc0
axiom (forall #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc0(#$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc0(#$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc0(#$R)));

// $Is axiom for subset type _System._#PartialFunc0
axiom (forall #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc0(#$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc0(#$R))
     <==> $Is(f#0, Tclass._System.___hFunc0(#$R))
       && Set#Equal(Reads0(#$R, $OneHeap, f#0), Set#Empty(): Set));

// $IsAlloc axiom for subset type _System._#PartialFunc0
axiom (forall #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc0(#$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc0(#$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc0(#$R), $h));

function Tclass._System.___hTotalFunc0(Ty) : Ty;

const unique Tagclass._System.___hTotalFunc0: TyTag;

// Tclass._System.___hTotalFunc0 Tag
axiom (forall #$R: Ty :: 
  { Tclass._System.___hTotalFunc0(#$R) } 
  Tag(Tclass._System.___hTotalFunc0(#$R)) == Tagclass._System.___hTotalFunc0
     && TagFamily(Tclass._System.___hTotalFunc0(#$R)) == tytagFamily$_#TotalFunc0);

function Tclass._System.___hTotalFunc0_0(Ty) : Ty;

// Tclass._System.___hTotalFunc0 injectivity 0
axiom (forall #$R: Ty :: 
  { Tclass._System.___hTotalFunc0(#$R) } 
  Tclass._System.___hTotalFunc0_0(Tclass._System.___hTotalFunc0(#$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc0
axiom (forall #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc0(#$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc0(#$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc0(#$R)));

// $Is axiom for subset type _System._#TotalFunc0
axiom (forall #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc0(#$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc0(#$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc0(#$R)) && Requires0(#$R, $OneHeap, f#0));

// $IsAlloc axiom for subset type _System._#TotalFunc0
axiom (forall #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc0(#$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc0(#$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc0(#$R), $h));

const unique ##_System._tuple#2._#Make2: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box, a#0#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#_System._tuple#2._#Make2(a#0#0#0, a#0#1#0))
     == ##_System._tuple#2._#Make2);
}

function _System.Tuple2.___hMake2_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple2.___hMake2_q(d) } 
  _System.Tuple2.___hMake2_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#2._#Make2);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple2.___hMake2_q(d) } 
  _System.Tuple2.___hMake2_q(d)
     ==> (exists a#1#0#0: Box, a#1#1#0: Box :: 
      d == #_System._tuple#2._#Make2(a#1#0#0, a#1#1#0)));

const unique Tagclass._System.Tuple2: TyTag;

// Tclass._System.Tuple2 Tag
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty :: 
  { Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1) } 
  Tag(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
       == Tagclass._System.Tuple2
     && TagFamily(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
       == tytagFamily$_tuple#2);

function Tclass._System.Tuple2_0(Ty) : Ty;

// Tclass._System.Tuple2 injectivity 0
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty :: 
  { Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1) } 
  Tclass._System.Tuple2_0(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     == _System._tuple#2$T0);

function Tclass._System.Tuple2_1(Ty) : Ty;

// Tclass._System.Tuple2 injectivity 1
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty :: 
  { Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1) } 
  Tclass._System.Tuple2_1(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     == _System._tuple#2$T1);

// Box/unbox axiom for Tclass._System.Tuple2
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)) } 
  $IsBox(bx, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)));

// Constructor $Is
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty, a#2#0#0: Box, a#2#1#0: Box :: 
  { $Is(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
      Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)) } 
  $Is(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
      Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     <==> $IsBox(a#2#0#0, _System._tuple#2$T0) && $IsBox(a#2#1#0, _System._tuple#2$T1));

// Constructor $IsAlloc
axiom (forall _System._tuple#2$T0: Ty, 
    _System._tuple#2$T1: Ty, 
    a#2#0#0: Box, 
    a#2#1#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
      Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
        Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), 
        $h)
       <==> $IsAllocBox(a#2#0#0, _System._tuple#2$T0, $h)
         && $IsAllocBox(a#2#1#0, _System._tuple#2$T1, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#2$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple2._0(d), _System._tuple#2$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple2.___hMake2_q(d)
       && (exists _System._tuple#2$T1: Ty :: 
        { $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h) } 
        $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h))
     ==> $IsAllocBox(_System.Tuple2._0(d), _System._tuple#2$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#2$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple2._1(d), _System._tuple#2$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple2.___hMake2_q(d)
       && (exists _System._tuple#2$T0: Ty :: 
        { $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h) } 
        $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h))
     ==> $IsAllocBox(_System.Tuple2._1(d), _System._tuple#2$T1, $h));

// Constructor literal
axiom (forall a#3#0#0: Box, a#3#1#0: Box :: 
  { #_System._tuple#2._#Make2(Lit(a#3#0#0), Lit(a#3#1#0)) } 
  #_System._tuple#2._#Make2(Lit(a#3#0#0), Lit(a#3#1#0))
     == Lit(#_System._tuple#2._#Make2(a#3#0#0, a#3#1#0)));

// Constructor injectivity
axiom (forall a#4#0#0: Box, a#4#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#4#0#0, a#4#1#0) } 
  _System.Tuple2._0(#_System._tuple#2._#Make2(a#4#0#0, a#4#1#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box, a#5#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#5#0#0, a#5#1#0) } 
  BoxRank(a#5#0#0) < DtRank(#_System._tuple#2._#Make2(a#5#0#0, a#5#1#0)));

// Constructor injectivity
axiom (forall a#6#0#0: Box, a#6#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#6#0#0, a#6#1#0) } 
  _System.Tuple2._1(#_System._tuple#2._#Make2(a#6#0#0, a#6#1#0)) == a#6#1#0);

// Inductive rank
axiom (forall a#7#0#0: Box, a#7#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#7#0#0, a#7#1#0) } 
  BoxRank(a#7#1#0) < DtRank(#_System._tuple#2._#Make2(a#7#0#0, a#7#1#0)));

// Depth-one case-split function
function $IsA#_System.Tuple2(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple2(d) } 
  $IsA#_System.Tuple2(d) ==> _System.Tuple2.___hMake2_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty, d: DatatypeType :: 
  { _System.Tuple2.___hMake2_q(d), $Is(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)) } 
  $Is(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     ==> _System.Tuple2.___hMake2_q(d));

// Datatype extensional equality declaration
function _System.Tuple2#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#2._#Make2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple2#Equal(a, b) } 
  _System.Tuple2#Equal(a, b)
     <==> _System.Tuple2._0(a) == _System.Tuple2._0(b)
       && _System.Tuple2._1(a) == _System.Tuple2._1(b));

// Datatype extensionality axiom: _System._tuple#2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple2#Equal(a, b) } 
  _System.Tuple2#Equal(a, b) <==> a == b);

const unique class._System.Tuple2: ClassName;

// Constructor function declaration
function #_System._tuple#0._#Make0() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_System._tuple#0._#Make0()) == ##_System._tuple#0._#Make0;
// Constructor $Is
axiom $Is(#_System._tuple#0._#Make0(), Tclass._System.Tuple0());
// Constructor literal
axiom #_System._tuple#0._#Make0() == Lit(#_System._tuple#0._#Make0());
}

const unique ##_System._tuple#0._#Make0: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_System._tuple#0._#Make0()) == ##_System._tuple#0._#Make0;
}

function _System.Tuple0.___hMake0_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple0.___hMake0_q(d) } 
  _System.Tuple0.___hMake0_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#0._#Make0);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple0.___hMake0_q(d) } 
  _System.Tuple0.___hMake0_q(d) ==> d == #_System._tuple#0._#Make0());

function Tclass._System.Tuple0() : Ty
uses {
// Tclass._System.Tuple0 Tag
axiom Tag(Tclass._System.Tuple0()) == Tagclass._System.Tuple0
   && TagFamily(Tclass._System.Tuple0()) == tytagFamily$_tuple#0;
}

const unique Tagclass._System.Tuple0: TyTag;

// Box/unbox axiom for Tclass._System.Tuple0
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.Tuple0()) } 
  $IsBox(bx, Tclass._System.Tuple0())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._System.Tuple0()));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._System.Tuple0(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._System.Tuple0())
     ==> $IsAlloc(d, Tclass._System.Tuple0(), $h));

// Depth-one case-split function
function $IsA#_System.Tuple0(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple0(d) } 
  $IsA#_System.Tuple0(d) ==> _System.Tuple0.___hMake0_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _System.Tuple0.___hMake0_q(d), $Is(d, Tclass._System.Tuple0()) } 
  $Is(d, Tclass._System.Tuple0()) ==> _System.Tuple0.___hMake0_q(d));

// Datatype extensional equality declaration
function _System.Tuple0#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#0._#Make0
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple0#Equal(a, b) } 
  _System.Tuple0#Equal(a, b));

// Datatype extensionality axiom: _System._tuple#0
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple0#Equal(a, b) } 
  _System.Tuple0#Equal(a, b) <==> a == b);

const unique class._System.Tuple0: ClassName;

function Tclass._System.___hFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc4: TyTag;

// Tclass._System.___hFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hFunc4
     && TagFamily(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#Func4);

function Tclass._System.___hFunc4_0(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_0(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hFunc4_1(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_1(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hFunc4_2(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_2(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hFunc4_3(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_3(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hFunc4_4(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_4(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

function Handle4([Heap,Box,Box,Box,Box]Box, [Heap,Box,Box,Box,Box]bool, [Heap,Box,Box,Box,Box]Set)
   : HandleType;

function Apply4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : Box;

function Requires4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : bool;

function Reads4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Apply4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3) } 
  Apply4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3)
     == h[heap, bx0, bx1, bx2, bx3]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Requires4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3) } 
  r[heap, bx0, bx1, bx2, bx3]
     ==> Requires4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx: Box :: 
  { Set#IsMember(Reads4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3), bx) } 
  Set#IsMember(Reads4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3), bx)
     == Set#IsMember(rd[heap, bx0, bx1, bx2, bx3], bx));

function {:inline} Requires4#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box)
   : bool
{
  true
}

function {:inline} Reads4#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box)
   : bool
{
  true
}

// frame axiom for Reads4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Reads4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Apply4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Apply4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// empty-reads property for Reads4 
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), $IsGoodHeap(heap) } 
    { Reads4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
     ==> (Set#Equal(Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)
       <==> Set#Equal(Reads4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)));

// empty-reads property for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Requires4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), $IsGoodHeap(heap) } 
    { Requires4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && Set#Equal(Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)
     ==> Requires4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty :: 
  { $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4)) } 
  $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
     <==> (forall h: Heap, bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
      { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && $IsBox(bx2, t2)
           && $IsBox(bx3, t3)
           && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
         ==> $IsBox(Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), t4)));

axiom (forall f: HandleType, 
    t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    u0: Ty, 
    u1: Ty, 
    u2: Ty, 
    u3: Ty, 
    u4: Ty :: 
  { $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4)), $Is(f, Tclass._System.___hFunc4(u0, u1, u2, u3, u4)) } 
  $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, u1) } { $IsBox(bx, t1) } 
        $IsBox(bx, u1) ==> $IsBox(bx, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, u2) } { $IsBox(bx, t2) } 
        $IsBox(bx, u2) ==> $IsBox(bx, t2))
       && (forall bx: Box :: 
        { $IsBox(bx, u3) } { $IsBox(bx, t3) } 
        $IsBox(bx, u3) ==> $IsBox(bx, t3))
       && (forall bx: Box :: 
        { $IsBox(bx, t4) } { $IsBox(bx, u4) } 
        $IsBox(bx, t4) ==> $IsBox(bx, u4))
     ==> $Is(f, Tclass._System.___hFunc4(u0, u1, u2, u3, u4)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h)
       <==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
        { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
          { Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && 
            $IsBox(bx2, t2)
             && $IsAllocBox(bx2, t2, h)
             && 
            $IsBox(bx3, t3)
             && $IsAllocBox(bx3, t3, h)
             && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), $Box(r)) } 
            r != null
                 && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h)
     ==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
      { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && $IsAllocBox(bx2, t2, h)
           && $IsAllocBox(bx3, t3, h)
           && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
         ==> $IsAllocBox(Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), t4, h)));

function Tclass._System.___hPartialFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc4: TyTag;

// Tclass._System.___hPartialFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hPartialFunc4
     && TagFamily(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#PartialFunc4);

function Tclass._System.___hPartialFunc4_0(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_0(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc4_1(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_1(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc4_2(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_2(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hPartialFunc4_3(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_3(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hPartialFunc4_4(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_4(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

// $Is axiom for subset type _System._#PartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
           ==> Set#Equal(Reads4(#$T0, #$T1, #$T2, #$T3, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0), 
            Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h));

function Tclass._System.___hTotalFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc4: TyTag;

// Tclass._System.___hTotalFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hTotalFunc4
     && TagFamily(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#TotalFunc4);

function Tclass._System.___hTotalFunc4_0(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_0(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc4_1(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_1(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc4_2(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_2(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hTotalFunc4_3(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_3(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hTotalFunc4_4(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_4(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

// $Is axiom for subset type _System._#TotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
           ==> Requires4(#$T0, #$T1, #$T2, #$T3, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h));

const unique class._module.__default: ClassName;

// function declaration for _module._default.Count
function _module.__default.Count(_module._default.Count$T: Ty, 
    $ly: LayerType, 
    a#0: Seq, 
    s#0: int, 
    t#0: int, 
    x#0: Box)
   : int
uses {
// definition axiom for _module.__default.Count (revealed)
axiom {:id "id0"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Count$T: Ty, 
      $ly: LayerType, 
      a#0: Seq, 
      s#0: int, 
      t#0: int, 
      x#0: Box :: 
    { _module.__default.Count(_module._default.Count$T, $LS($ly), a#0, s#0, t#0, x#0) } 
    _module.__default.Count#canCall(_module._default.Count$T, a#0, s#0, t#0, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(a#0, TSeq(_module._default.Count$T))
           && $IsBox(x#0, _module._default.Count$T)
           && 
          LitInt(0) <= s#0
           && s#0 <= t#0
           && t#0 <= Seq#Length(a#0))
       ==> (s#0 != t#0
           ==> _module.__default.Count#canCall(_module._default.Count$T, a#0, s#0, t#0 - 1, x#0))
         && _module.__default.Count(_module._default.Count$T, $LS($ly), a#0, s#0, t#0, x#0)
           == (if s#0 == t#0
             then 0
             else _module.__default.Count(_module._default.Count$T, $ly, a#0, s#0, t#0 - 1, x#0)
               + (if Seq#Index(a#0, t#0 - 1) == x#0 then 1 else 0)));
// definition axiom for _module.__default.Count for decreasing-related literals (revealed)
axiom {:id "id1"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Count$T: Ty, 
      $ly: LayerType, 
      a#0: Seq, 
      s#0: int, 
      t#0: int, 
      x#0: Box :: 
    {:weight 3} { _module.__default.Count(_module._default.Count$T, $LS($ly), Lit(a#0), LitInt(s#0), LitInt(t#0), x#0) } 
    _module.__default.Count#canCall(_module._default.Count$T, Lit(a#0), LitInt(s#0), LitInt(t#0), x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(a#0, TSeq(_module._default.Count$T))
           && $IsBox(x#0, _module._default.Count$T)
           && 
          LitInt(0) <= LitInt(s#0)
           && LitInt(s#0) <= LitInt(t#0)
           && LitInt(t#0) <= Seq#Length(Lit(a#0)))
       ==> (LitInt(s#0) != LitInt(t#0)
           ==> _module.__default.Count#canCall(_module._default.Count$T, Lit(a#0), LitInt(s#0), LitInt(t#0 - 1), x#0))
         && _module.__default.Count(_module._default.Count$T, $LS($ly), Lit(a#0), LitInt(s#0), LitInt(t#0), x#0)
           == (if LitInt(s#0) == LitInt(t#0)
             then 0
             else _module.__default.Count(_module._default.Count$T, $LS($ly), Lit(a#0), LitInt(s#0), LitInt(t#0 - 1), x#0)
               + (if Seq#Index(Lit(a#0), LitInt(t#0 - 1)) == x#0 then 1 else 0)));
// definition axiom for _module.__default.Count for all literals (revealed)
axiom {:id "id2"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Count$T: Ty, 
      $ly: LayerType, 
      a#0: Seq, 
      s#0: int, 
      t#0: int, 
      x#0: Box :: 
    {:weight 3} { _module.__default.Count(_module._default.Count$T, $LS($ly), Lit(a#0), LitInt(s#0), LitInt(t#0), Lit(x#0)) } 
    _module.__default.Count#canCall(_module._default.Count$T, Lit(a#0), LitInt(s#0), LitInt(t#0), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(a#0, TSeq(_module._default.Count$T))
           && $IsBox(x#0, _module._default.Count$T)
           && 
          LitInt(0) <= LitInt(s#0)
           && LitInt(s#0) <= LitInt(t#0)
           && LitInt(t#0) <= Seq#Length(Lit(a#0)))
       ==> (LitInt(s#0) != LitInt(t#0)
           ==> _module.__default.Count#canCall(_module._default.Count$T, Lit(a#0), LitInt(s#0), LitInt(t#0 - 1), Lit(x#0)))
         && _module.__default.Count(_module._default.Count$T, $LS($ly), Lit(a#0), LitInt(s#0), LitInt(t#0), Lit(x#0))
           == (if LitInt(s#0) == LitInt(t#0)
             then 0
             else _module.__default.Count(_module._default.Count$T, 
                $LS($ly), 
                Lit(a#0), 
                LitInt(s#0), 
                LitInt(t#0 - 1), 
                Lit(x#0))
               + (if Seq#Index(Lit(a#0), LitInt(t#0 - 1)) == Lit(x#0) then 1 else 0)));
}

function _module.__default.Count#canCall(_module._default.Count$T: Ty, a#0: Seq, s#0: int, t#0: int, x#0: Box) : bool;

// layer synonym axiom
axiom (forall _module._default.Count$T: Ty, 
    $ly: LayerType, 
    a#0: Seq, 
    s#0: int, 
    t#0: int, 
    x#0: Box :: 
  { _module.__default.Count(_module._default.Count$T, $LS($ly), a#0, s#0, t#0, x#0) } 
  _module.__default.Count(_module._default.Count$T, $LS($ly), a#0, s#0, t#0, x#0)
     == _module.__default.Count(_module._default.Count$T, $ly, a#0, s#0, t#0, x#0));

// fuel synonym axiom
axiom (forall _module._default.Count$T: Ty, 
    $ly: LayerType, 
    a#0: Seq, 
    s#0: int, 
    t#0: int, 
    x#0: Box :: 
  { _module.__default.Count(_module._default.Count$T, AsFuelBottom($ly), a#0, s#0, t#0, x#0) } 
  _module.__default.Count(_module._default.Count$T, $ly, a#0, s#0, t#0, x#0)
     == _module.__default.Count(_module._default.Count$T, $LZ, a#0, s#0, t#0, x#0));

function _module.__default.Count#requires(Ty, LayerType, Seq, int, int, Box) : bool;

// #requires axiom for _module.__default.Count
axiom (forall _module._default.Count$T: Ty, 
    $ly: LayerType, 
    a#0: Seq, 
    s#0: int, 
    t#0: int, 
    x#0: Box :: 
  { _module.__default.Count#requires(_module._default.Count$T, $ly, a#0, s#0, t#0, x#0) } 
  $Is(a#0, TSeq(_module._default.Count$T))
       && $IsBox(x#0, _module._default.Count$T)
     ==> _module.__default.Count#requires(_module._default.Count$T, $ly, a#0, s#0, t#0, x#0)
       == (LitInt(0) <= s#0 && s#0 <= t#0 && t#0 <= Seq#Length(a#0)));

procedure {:verboseName "Count (well-formedness)"} CheckWellformed$$_module.__default.Count(_module._default.Count$T: Ty, 
    a#0: Seq where $Is(a#0, TSeq(_module._default.Count$T)), 
    s#0: int, 
    t#0: int, 
    x#0: Box where $IsBox(x#0, _module._default.Count$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Count (well-formedness)"} CheckWellformed$$_module.__default.Count(_module._default.Count$T: Ty, a#0: Seq, s#0: int, t#0: int, x#0: Box)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##a#0: Seq;
  var ##s#0: int;
  var ##t#0: int;
  var ##x#0: Box;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    if (LitInt(0) <= s#0)
    {
    }

    if (LitInt(0) <= s#0 && s#0 <= t#0)
    {
    }

    assume {:id "id3"} LitInt(0) <= s#0 && s#0 <= t#0 && t#0 <= Seq#Length(a#0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (s#0 == t#0)
        {
            assume {:id "id4"} _module.__default.Count(_module._default.Count$T, $LS($LZ), a#0, s#0, t#0, x#0)
               == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Count(_module._default.Count$T, $LS($LZ), a#0, s#0, t#0, x#0), 
              TInt);
            return;
        }
        else
        {
            ##a#0 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0, TSeq(_module._default.Count$T), $Heap);
            ##s#0 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0, TInt, $Heap);
            ##t#0 := t#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#0, TInt, $Heap);
            ##x#0 := x#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#0, _module._default.Count$T, $Heap);
            assert {:id "id5"} {:subsumption 0} LitInt(0) <= ##s#0;
            assert {:id "id6"} {:subsumption 0} ##s#0 <= ##t#0;
            assert {:id "id7"} {:subsumption 0} ##t#0 <= Seq#Length(##a#0);
            assume LitInt(0) <= ##s#0 && ##s#0 <= ##t#0 && ##t#0 <= Seq#Length(##a#0);
            assert {:id "id8"} 0 <= s#0 || Seq#Rank(##a#0) < Seq#Rank(a#0) || ##s#0 == s#0;
            assert {:id "id9"} 0 <= t#0 || Seq#Rank(##a#0) < Seq#Rank(a#0) || ##s#0 < s#0 || ##t#0 == t#0;
            assert {:id "id10"} Seq#Rank(##a#0) < Seq#Rank(a#0)
               || (Seq#Rank(##a#0) == Seq#Rank(a#0)
                 && (##s#0 < s#0 || (##s#0 == s#0 && ##t#0 < t#0)));
            assume _module.__default.Count#canCall(_module._default.Count$T, a#0, s#0, t#0 - 1, x#0);
            assert {:id "id11"} 0 <= t#0 - 1 && t#0 - 1 < Seq#Length(a#0);
            if (Seq#Index(a#0, t#0 - 1) == x#0)
            {
            }
            else
            {
            }

            assume {:id "id12"} _module.__default.Count(_module._default.Count$T, $LS($LZ), a#0, s#0, t#0, x#0)
               == _module.__default.Count(_module._default.Count$T, $LS($LZ), a#0, s#0, t#0 - 1, x#0)
                 + (if Seq#Index(a#0, t#0 - 1) == x#0 then 1 else 0);
            assume _module.__default.Count#canCall(_module._default.Count$T, a#0, s#0, t#0 - 1, x#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Count(_module._default.Count$T, $LS($LZ), a#0, s#0, t#0, x#0), 
              TInt);
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.HasMajority
function _module.__default.HasMajority(_module._default.HasMajority$T: Ty, a#0: Seq, s#0: int, t#0: int, x#0: Box)
   : bool
uses {
// definition axiom for _module.__default.HasMajority (revealed)
axiom {:id "id13"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.HasMajority$T: Ty, a#0: Seq, s#0: int, t#0: int, x#0: Box :: 
    { _module.__default.HasMajority(_module._default.HasMajority$T, a#0, s#0, t#0, x#0) } 
    _module.__default.HasMajority#canCall(_module._default.HasMajority$T, a#0, s#0, t#0, x#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, TSeq(_module._default.HasMajority$T))
           && $IsBox(x#0, _module._default.HasMajority$T)
           && 
          LitInt(0) <= s#0
           && s#0 <= t#0
           && t#0 <= Seq#Length(a#0))
       ==> _module.__default.Count#canCall(_module._default.HasMajority$T, a#0, s#0, t#0, x#0)
         && _module.__default.HasMajority(_module._default.HasMajority$T, a#0, s#0, t#0, x#0)
           == (Mul(LitInt(2), 
              _module.__default.Count(_module._default.HasMajority$T, $LS($LZ), a#0, s#0, t#0, x#0))
             > t#0 - s#0));
// definition axiom for _module.__default.HasMajority for decreasing-related literals (revealed)
axiom {:id "id14"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.HasMajority$T: Ty, a#0: Seq, s#0: int, t#0: int, x#0: Box :: 
    {:weight 3} { _module.__default.HasMajority(_module._default.HasMajority$T, Lit(a#0), LitInt(s#0), LitInt(t#0), x#0) } 
    _module.__default.HasMajority#canCall(_module._default.HasMajority$T, Lit(a#0), LitInt(s#0), LitInt(t#0), x#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, TSeq(_module._default.HasMajority$T))
           && $IsBox(x#0, _module._default.HasMajority$T)
           && 
          LitInt(0) <= LitInt(s#0)
           && LitInt(s#0) <= LitInt(t#0)
           && LitInt(t#0) <= Seq#Length(Lit(a#0)))
       ==> _module.__default.Count#canCall(_module._default.HasMajority$T, Lit(a#0), LitInt(s#0), LitInt(t#0), x#0)
         && _module.__default.HasMajority(_module._default.HasMajority$T, Lit(a#0), LitInt(s#0), LitInt(t#0), x#0)
           == (Mul(LitInt(2), 
              _module.__default.Count(_module._default.HasMajority$T, 
                $LS($LZ), 
                Lit(a#0), 
                LitInt(s#0), 
                LitInt(t#0), 
                x#0))
             > t#0 - s#0));
// definition axiom for _module.__default.HasMajority for all literals (revealed)
axiom {:id "id15"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.HasMajority$T: Ty, a#0: Seq, s#0: int, t#0: int, x#0: Box :: 
    {:weight 3} { _module.__default.HasMajority(_module._default.HasMajority$T, Lit(a#0), LitInt(s#0), LitInt(t#0), Lit(x#0)) } 
    _module.__default.HasMajority#canCall(_module._default.HasMajority$T, Lit(a#0), LitInt(s#0), LitInt(t#0), Lit(x#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, TSeq(_module._default.HasMajority$T))
           && $IsBox(x#0, _module._default.HasMajority$T)
           && 
          LitInt(0) <= LitInt(s#0)
           && LitInt(s#0) <= LitInt(t#0)
           && LitInt(t#0) <= Seq#Length(Lit(a#0)))
       ==> _module.__default.Count#canCall(_module._default.HasMajority$T, Lit(a#0), LitInt(s#0), LitInt(t#0), Lit(x#0))
         && _module.__default.HasMajority(_module._default.HasMajority$T, Lit(a#0), LitInt(s#0), LitInt(t#0), Lit(x#0))
           == Lit(Mul(LitInt(2), 
                LitInt(_module.__default.Count(_module._default.HasMajority$T, 
                    $LS($LZ), 
                    Lit(a#0), 
                    LitInt(s#0), 
                    LitInt(t#0), 
                    Lit(x#0))))
               > t#0 - s#0));
}

function _module.__default.HasMajority#canCall(_module._default.HasMajority$T: Ty, a#0: Seq, s#0: int, t#0: int, x#0: Box)
   : bool;

function _module.__default.HasMajority#requires(Ty, Seq, int, int, Box) : bool;

// #requires axiom for _module.__default.HasMajority
axiom (forall _module._default.HasMajority$T: Ty, a#0: Seq, s#0: int, t#0: int, x#0: Box :: 
  { _module.__default.HasMajority#requires(_module._default.HasMajority$T, a#0, s#0, t#0, x#0) } 
  $Is(a#0, TSeq(_module._default.HasMajority$T))
       && $IsBox(x#0, _module._default.HasMajority$T)
     ==> _module.__default.HasMajority#requires(_module._default.HasMajority$T, a#0, s#0, t#0, x#0)
       == (LitInt(0) <= s#0 && s#0 <= t#0 && t#0 <= Seq#Length(a#0)));

procedure {:verboseName "HasMajority (well-formedness)"} CheckWellformed$$_module.__default.HasMajority(_module._default.HasMajority$T: Ty, 
    a#0: Seq where $Is(a#0, TSeq(_module._default.HasMajority$T)), 
    s#0: int, 
    t#0: int, 
    x#0: Box where $IsBox(x#0, _module._default.HasMajority$T));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "HasMajority (well-formedness)"} CheckWellformed$$_module.__default.HasMajority(_module._default.HasMajority$T: Ty, a#0: Seq, s#0: int, t#0: int, x#0: Box)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##a#0: Seq;
  var ##s#0: int;
  var ##t#0: int;
  var ##x#0: Box;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    if (LitInt(0) <= s#0)
    {
    }

    if (LitInt(0) <= s#0 && s#0 <= t#0)
    {
    }

    assume {:id "id16"} LitInt(0) <= s#0 && s#0 <= t#0 && t#0 <= Seq#Length(a#0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        ##a#0 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0, TSeq(_module._default.HasMajority$T), $Heap);
        ##s#0 := s#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0, TInt, $Heap);
        ##t#0 := t#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#0, TInt, $Heap);
        ##x#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#0, _module._default.HasMajority$T, $Heap);
        assert {:id "id17"} {:subsumption 0} LitInt(0) <= ##s#0;
        assert {:id "id18"} {:subsumption 0} ##s#0 <= ##t#0;
        assert {:id "id19"} {:subsumption 0} ##t#0 <= Seq#Length(##a#0);
        assume LitInt(0) <= ##s#0 && ##s#0 <= ##t#0 && ##t#0 <= Seq#Length(##a#0);
        assume _module.__default.Count#canCall(_module._default.HasMajority$T, a#0, s#0, t#0, x#0);
        assume {:id "id20"} _module.__default.HasMajority(_module._default.HasMajority$T, a#0, s#0, t#0, x#0)
           == (Mul(LitInt(2), 
              _module.__default.Count(_module._default.HasMajority$T, $LS($LZ), a#0, s#0, t#0, x#0))
             > t#0 - s#0);
        assume _module.__default.Count#canCall(_module._default.HasMajority$T, a#0, s#0, t#0, x#0);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.HasMajority(_module._default.HasMajority$T, a#0, s#0, t#0, x#0), 
          TBool);
        return;

        assume false;
    }
}



procedure {:verboseName "FindWinner (well-formedness)"} CheckWellFormed$$_module.__default.FindWinner(_module._default.FindWinner$Candidate: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.FindWinner$Candidate))
         && $IsAlloc(a#0, TSeq(_module._default.FindWinner$Candidate), $Heap), 
    K#0: Box
       where $IsBox(K#0, _module._default.FindWinner$Candidate)
         && $IsAllocBox(K#0, _module._default.FindWinner$Candidate, $Heap))
   returns (k#0: Box
       where $IsBox(k#0, _module._default.FindWinner$Candidate)
         && $IsAllocBox(k#0, _module._default.FindWinner$Candidate, $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FindWinner (well-formedness)"} CheckWellFormed$$_module.__default.FindWinner(_module._default.FindWinner$Candidate: Ty, a#0: Seq, K#0: Box)
   returns (k#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##a#0: Seq;
  var ##s#0: int;
  var ##t#0: int;
  var ##x#0: Box;


    // AddMethodImpl: FindWinner, CheckWellFormed$$_module.__default.FindWinner
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##a#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TSeq(_module._default.FindWinner$Candidate), $Heap);
    ##s#0 := LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, TInt, $Heap);
    ##t#0 := Seq#Length(a#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#0, TInt, $Heap);
    ##x#0 := K#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##x#0, _module._default.FindWinner$Candidate, $Heap);
    assert {:id "id21"} {:subsumption 0} LitInt(0) <= ##s#0;
    assert {:id "id22"} {:subsumption 0} ##s#0 <= ##t#0;
    assert {:id "id23"} {:subsumption 0} ##t#0 <= Seq#Length(##a#0);
    assume LitInt(0) <= ##s#0 && ##s#0 <= ##t#0 && ##t#0 <= Seq#Length(##a#0);
    assume _module.__default.HasMajority#canCall(_module._default.FindWinner$Candidate, a#0, LitInt(0), Seq#Length(a#0), K#0);
    assume {:id "id24"} _module.__default.HasMajority(_module._default.FindWinner$Candidate, a#0, LitInt(0), Seq#Length(a#0), K#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc k#0;
    assume {:id "id25"} k#0 == K#0;
}



procedure {:verboseName "FindWinner (call)"} Call$$_module.__default.FindWinner(_module._default.FindWinner$Candidate: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.FindWinner$Candidate))
         && $IsAlloc(a#0, TSeq(_module._default.FindWinner$Candidate), $Heap), 
    K#0: Box
       where $IsBox(K#0, _module._default.FindWinner$Candidate)
         && $IsAllocBox(K#0, _module._default.FindWinner$Candidate, $Heap))
   returns (k#0: Box
       where $IsBox(k#0, _module._default.FindWinner$Candidate)
         && $IsAllocBox(k#0, _module._default.FindWinner$Candidate, $Heap));
  // user-defined preconditions
  requires {:id "id26"} _module.__default.HasMajority#canCall(_module._default.FindWinner$Candidate, a#0, LitInt(0), Seq#Length(a#0), K#0)
     ==> _module.__default.HasMajority(_module._default.FindWinner$Candidate, a#0, LitInt(0), Seq#Length(a#0), K#0)
       || Mul(LitInt(2), 
          _module.__default.Count(_module._default.FindWinner$Candidate, 
            $LS($LS($LZ)), 
            a#0, 
            LitInt(0), 
            Seq#Length(a#0), 
            K#0))
         > Seq#Length(a#0) - 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id27"} k#0 == K#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FindWinner (correctness)"} Impl$$_module.__default.FindWinner(_module._default.FindWinner$Candidate: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.FindWinner$Candidate))
         && $IsAlloc(a#0, TSeq(_module._default.FindWinner$Candidate), $Heap), 
    K#0: Box
       where $IsBox(K#0, _module._default.FindWinner$Candidate)
         && $IsAllocBox(K#0, _module._default.FindWinner$Candidate, $Heap))
   returns (defass#k#0: bool, 
    k#0: Box
       where defass#k#0
         ==> $IsBox(k#0, _module._default.FindWinner$Candidate)
           && $IsAllocBox(k#0, _module._default.FindWinner$Candidate, $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id28"} _module.__default.HasMajority#canCall(_module._default.FindWinner$Candidate, a#0, LitInt(0), Seq#Length(a#0), K#0)
     && 
    _module.__default.HasMajority(_module._default.FindWinner$Candidate, a#0, LitInt(0), Seq#Length(a#0), K#0)
     && Mul(LitInt(2), 
        _module.__default.Count(_module._default.FindWinner$Candidate, 
          $LS($LZ), 
          a#0, 
          LitInt(0), 
          Seq#Length(a#0), 
          K#0))
       > Seq#Length(a#0) - 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id29"} k#0 == K#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FindWinner (correctness)"} Impl$$_module.__default.FindWinner(_module._default.FindWinner$Candidate: Ty, a#0: Seq, K#0: Box)
   returns (defass#k#0: bool, k#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: int;
  var c#0: int;
  var s#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var $rhs#2: int;
  var $PreLoopHeap$loop#0: Heap;
  var preLoop$loop#0$defass#k#0: bool;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var ##a#1: Seq;
  var ##s#1: int;
  var ##t#1: int;
  var ##x#1: Box;
  var ##a#2: Seq;
  var ##s#2: int;
  var ##t#2: int;
  var ##x#2: Box;
  var ##a#3: Seq;
  var ##s#3: int;
  var ##t#3: int;
  var ##x#3: Box;
  var $decr$loop#00: int;
  var $rhs#0_0_0: int;
  var $rhs#0_0_1: int;
  var a##0_1_1_0: Seq;
  var s##0_1_1_0: int;
  var t##0_1_1_0: int;
  var x##0_1_1_0: Box;
  var y##0_1_1_0: Box;
  var a##0_1_1_1: Seq;
  var s##0_1_1_1: int;
  var t##0_1_1_1: int;
  var u##0_1_1_0: int;
  var x##0_1_1_1: Box;
  var $rhs#0_1_1_0: Box;
  var $rhs#0_1_1_1: int;
  var $rhs#0_1_1_2: int;
  var $rhs#0_1_1_3: int;
  var a##0: Seq;
  var s##0: int;
  var t##0: int;
  var x##0: Box;
  var y##0: Box;

    // AddMethodImpl: FindWinner, Impl$$_module.__default.FindWinner
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(84,5)
    assume true;
    assert {:id "id30"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
    assume true;
    k#0 := Seq#Index(a#0, LitInt(0));
    defass#k#0 := true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(85,15)
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(1);
    assume true;
    $rhs#1 := LitInt(1);
    assume true;
    $rhs#2 := LitInt(0);
    n#0 := $rhs#0;
    c#0 := $rhs#1;
    s#0 := $rhs#2;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(86,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    preLoop$loop#0$defass#k#0 := defass#k#0;
    $decr_init$loop#00 := Seq#Length(a#0) - n#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id39"} $w$loop#0 ==> LitInt(0) <= s#0;
      invariant {:id "id40"} $w$loop#0 ==> s#0 <= n#0;
      invariant {:id "id41"} $w$loop#0 ==> n#0 <= Seq#Length(a#0);
      free invariant $w$loop#0
         ==> _module.__default.Count#canCall(_module._default.FindWinner$Candidate, a#0, s#0, Seq#Length(a#0), K#0);
      invariant {:id "id46"} $w$loop#0
         ==> Mul(LitInt(2), 
            _module.__default.Count(_module._default.FindWinner$Candidate, 
              $LS($LS($LZ)), 
              a#0, 
              s#0, 
              Seq#Length(a#0), 
              K#0))
           > Seq#Length(a#0) - s#0;
      free invariant $w$loop#0
         ==> _module.__default.Count#canCall(_module._default.FindWinner$Candidate, a#0, s#0, n#0, k#0);
      invariant {:id "id52"} $w$loop#0
         ==> Mul(LitInt(2), 
            _module.__default.Count(_module._default.FindWinner$Candidate, $LS($LS($LZ)), a#0, s#0, n#0, k#0))
           > n#0 - s#0;
      free invariant $w$loop#0
         ==> _module.__default.Count#canCall(_module._default.FindWinner$Candidate, a#0, s#0, n#0, k#0);
      invariant {:id "id58"} $w$loop#0
         ==> c#0
           == _module.__default.Count(_module._default.FindWinner$Candidate, $LS($LS($LZ)), a#0, s#0, n#0, k#0);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant preLoop$loop#0$defass#k#0 ==> defass#k#0;
      free invariant Seq#Length(a#0) - n#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= s#0)
            {
            }

            if (LitInt(0) <= s#0 && s#0 <= n#0)
            {
            }

            assume true;
            assume {:id "id38"} LitInt(0) <= s#0 && s#0 <= n#0 && n#0 <= Seq#Length(a#0);
            ##a#1 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1, TSeq(_module._default.FindWinner$Candidate), $Heap);
            ##s#1 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1, TInt, $Heap);
            ##t#1 := Seq#Length(a#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#1, TInt, $Heap);
            ##x#1 := K#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#1, _module._default.FindWinner$Candidate, $Heap);
            assert {:id "id42"} {:subsumption 0} LitInt(0) <= ##s#1;
            assert {:id "id43"} {:subsumption 0} ##s#1 <= ##t#1;
            assert {:id "id44"} {:subsumption 0} ##t#1 <= Seq#Length(##a#1);
            assume _module.__default.Count#canCall(_module._default.FindWinner$Candidate, a#0, s#0, Seq#Length(a#0), K#0);
            assume _module.__default.Count#canCall(_module._default.FindWinner$Candidate, a#0, s#0, Seq#Length(a#0), K#0);
            assume {:id "id45"} Mul(LitInt(2), 
                _module.__default.Count(_module._default.FindWinner$Candidate, $LS($LZ), a#0, s#0, Seq#Length(a#0), K#0))
               > Seq#Length(a#0) - s#0;
            ##a#2 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#2, TSeq(_module._default.FindWinner$Candidate), $Heap);
            ##s#2 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#2, TInt, $Heap);
            ##t#2 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#2, TInt, $Heap);
            assert {:id "id47"} defass#k#0;
            ##x#2 := k#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#2, _module._default.FindWinner$Candidate, $Heap);
            assert {:id "id48"} {:subsumption 0} LitInt(0) <= ##s#2;
            assert {:id "id49"} {:subsumption 0} ##s#2 <= ##t#2;
            assert {:id "id50"} {:subsumption 0} ##t#2 <= Seq#Length(##a#2);
            assume _module.__default.Count#canCall(_module._default.FindWinner$Candidate, a#0, s#0, n#0, k#0);
            assume _module.__default.Count#canCall(_module._default.FindWinner$Candidate, a#0, s#0, n#0, k#0);
            assume {:id "id51"} Mul(LitInt(2), 
                _module.__default.Count(_module._default.FindWinner$Candidate, $LS($LZ), a#0, s#0, n#0, k#0))
               > n#0 - s#0;
            ##a#3 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#3, TSeq(_module._default.FindWinner$Candidate), $Heap);
            ##s#3 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#3, TInt, $Heap);
            ##t#3 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#3, TInt, $Heap);
            assert {:id "id53"} defass#k#0;
            ##x#3 := k#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#3, _module._default.FindWinner$Candidate, $Heap);
            assert {:id "id54"} {:subsumption 0} LitInt(0) <= ##s#3;
            assert {:id "id55"} {:subsumption 0} ##s#3 <= ##t#3;
            assert {:id "id56"} {:subsumption 0} ##t#3 <= Seq#Length(##a#3);
            assume _module.__default.Count#canCall(_module._default.FindWinner$Candidate, a#0, s#0, n#0, k#0);
            assume _module.__default.Count#canCall(_module._default.FindWinner$Candidate, a#0, s#0, n#0, k#0);
            assume {:id "id57"} c#0
               == _module.__default.Count(_module._default.FindWinner$Candidate, $LS($LZ), a#0, s#0, n#0, k#0);
            assume true;
            assume false;
        }

        assume true;
        if (Seq#Length(a#0) <= n#0)
        {
            break;
        }

        $decr$loop#00 := Seq#Length(a#0) - n#0;
        push;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(92,5)
        assert {:id "id59"} 0 <= n#0 && n#0 < Seq#Length(a#0);
        assert {:id "id60"} defass#k#0;
        assume true;
        if (Seq#Index(a#0, n#0) == k#0)
        {
            push;
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(93,12)
            assume true;
            assume true;
            assume true;
            $rhs#0_0_0 := n#0 + 1;
            assume true;
            $rhs#0_0_1 := c#0 + 1;
            n#0 := $rhs#0_0_0;
            c#0 := $rhs#0_0_1;
            pop;
        }
        else
        {
            push;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(94,12)
            assume true;
            if (Mul(LitInt(2), c#0) > n#0 + 1 - s#0)
            {
                push;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(95,9)
                assume true;
                assume true;
                n#0 := n#0 + 1;
                pop;
            }
            else
            {
                push;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(97,9)
                assume true;
                assume true;
                n#0 := n#0 + 1;
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(100,19)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                a##0_1_1_0 := a#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##0_1_1_0 := s#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##0_1_1_0 := n#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                x##0_1_1_0 := K#0;
                assert {:id "id67"} defass#k#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                y##0_1_1_0 := k#0;
                call {:id "id68"} Call$$_module.__default.Lemma__Unique(_module._default.FindWinner$Candidate, a##0_1_1_0, s##0_1_1_0, t##0_1_1_0, x##0_1_1_0, y##0_1_1_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(104,18)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                a##0_1_1_1 := a#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##0_1_1_1 := s#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##0_1_1_1 := n#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                u##0_1_1_0 := Seq#Length(a#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                x##0_1_1_1 := K#0;
                call {:id "id69"} Call$$_module.__default.Lemma__Split(_module._default.FindWinner$Candidate, a##0_1_1_1, s##0_1_1_1, t##0_1_1_1, u##0_1_1_0, x##0_1_1_1);
                // TrCallStmt: After ProcessCallStmt
                // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(105,18)
                assume true;
                assume true;
                assume true;
                assume true;
                assert {:id "id70"} 0 <= n#0 && n#0 < Seq#Length(a#0);
                assume true;
                $rhs#0_1_1_0 := Seq#Index(a#0, n#0);
                assume true;
                $rhs#0_1_1_1 := n#0 + 1;
                assume true;
                $rhs#0_1_1_2 := LitInt(1);
                assume true;
                $rhs#0_1_1_3 := n#0;
                k#0 := $rhs#0_1_1_0;
                defass#k#0 := true;
                n#0 := $rhs#0_1_1_1;
                c#0 := $rhs#0_1_1_2;
                s#0 := $rhs#0_1_1_3;
                pop;
            }

            pop;
        }

        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(86,3)
        assert {:id "id79"} 0 <= $decr$loop#00 || Seq#Length(a#0) - n#0 == $decr$loop#00;
        assert {:id "id80"} Seq#Length(a#0) - n#0 < $decr$loop#00;
        assume LitInt(0) <= s#0 && s#0 <= n#0 && n#0 <= Seq#Length(a#0)
           ==> _module.__default.Count#canCall(_module._default.FindWinner$Candidate, a#0, s#0, Seq#Length(a#0), K#0)
             && (Mul(LitInt(2), 
                  _module.__default.Count(_module._default.FindWinner$Candidate, $LS($LZ), a#0, s#0, Seq#Length(a#0), K#0))
                 > Seq#Length(a#0) - s#0
               ==> _module.__default.Count#canCall(_module._default.FindWinner$Candidate, a#0, s#0, n#0, k#0)
                 && (Mul(LitInt(2), 
                      _module.__default.Count(_module._default.FindWinner$Candidate, $LS($LZ), a#0, s#0, n#0, k#0))
                     > n#0 - s#0
                   ==> _module.__default.Count#canCall(_module._default.FindWinner$Candidate, a#0, s#0, n#0, k#0)));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(108,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := s#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##0 := Seq#Length(a#0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := K#0;
    assert {:id "id81"} defass#k#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := k#0;
    call {:id "id82"} Call$$_module.__default.Lemma__Unique(_module._default.FindWinner$Candidate, a##0, s##0, t##0, x##0, y##0);
    // TrCallStmt: After ProcessCallStmt
    assert {:id "id83"} defass#k#0;
}



function Tclass._module.Result(Ty) : Ty;

const unique Tagclass._module.Result: TyTag;

// Tclass._module.Result Tag
axiom (forall _module.Result$Candidate: Ty :: 
  { Tclass._module.Result(_module.Result$Candidate) } 
  Tag(Tclass._module.Result(_module.Result$Candidate)) == Tagclass._module.Result
     && TagFamily(Tclass._module.Result(_module.Result$Candidate)) == tytagFamily$Result);

function Tclass._module.Result_0(Ty) : Ty;

// Tclass._module.Result injectivity 0
axiom (forall _module.Result$Candidate: Ty :: 
  { Tclass._module.Result(_module.Result$Candidate) } 
  Tclass._module.Result_0(Tclass._module.Result(_module.Result$Candidate))
     == _module.Result$Candidate);

// Box/unbox axiom for Tclass._module.Result
axiom (forall _module.Result$Candidate: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Result(_module.Result$Candidate)) } 
  $IsBox(bx, Tclass._module.Result(_module.Result$Candidate))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Result(_module.Result$Candidate)));

procedure {:verboseName "DetermineElection (well-formedness)"} CheckWellFormed$$_module.__default.DetermineElection(_module._default.DetermineElection$Candidate: Ty
       where $AlwaysAllocated(_module._default.DetermineElection$Candidate), 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.DetermineElection$Candidate))
         && $IsAlloc(a#0, TSeq(_module._default.DetermineElection$Candidate), $Heap))
   returns (result#0: DatatypeType
       where $Is(result#0, Tclass._module.Result(_module._default.DetermineElection$Candidate))
         && $IsAlloc(result#0, 
          Tclass._module.Result(_module._default.DetermineElection$Candidate), 
          $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DetermineElection (well-formedness)"} CheckWellFormed$$_module.__default.DetermineElection(_module._default.DetermineElection$Candidate: Ty, a#0: Seq)
   returns (result#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##a#0: Seq;
  var ##s#0: int;
  var ##t#0: int;
  var ##x#0: Box;
  var c#0: Box;
  var ##a#1: Seq;
  var ##s#1: int;
  var ##t#1: int;
  var ##x#1: Box;


    // AddMethodImpl: DetermineElection, CheckWellFormed$$_module.__default.DetermineElection
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc result#0;
    if (*)
    {
        assume {:id "id84"} _module.Result.Winner_q(result#0);
        ##a#0 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0, TSeq(_module._default.DetermineElection$Candidate), $Heap);
        ##s#0 := LitInt(0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0, TInt, $Heap);
        ##t#0 := Seq#Length(a#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#0, TInt, $Heap);
        assert {:id "id85"} _module.Result.Winner_q(result#0);
        ##x#0 := _module.Result.cand(result#0);
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#0, _module._default.DetermineElection$Candidate, $Heap);
        assert {:id "id86"} {:subsumption 0} LitInt(0) <= ##s#0;
        assert {:id "id87"} {:subsumption 0} ##s#0 <= ##t#0;
        assert {:id "id88"} {:subsumption 0} ##t#0 <= Seq#Length(##a#0);
        assume LitInt(0) <= ##s#0 && ##s#0 <= ##t#0 && ##t#0 <= Seq#Length(##a#0);
        assume _module.__default.Count#canCall(_module._default.DetermineElection$Candidate, 
          a#0, 
          LitInt(0), 
          Seq#Length(a#0), 
          _module.Result.cand(result#0));
        assume {:id "id89"} Mul(LitInt(2), 
            _module.__default.Count(_module._default.DetermineElection$Candidate, 
              $LS($LZ), 
              a#0, 
              LitInt(0), 
              Seq#Length(a#0), 
              _module.Result.cand(result#0)))
           > Seq#Length(a#0);
    }
    else
    {
        assume {:id "id90"} _module.Result.Winner_q(result#0)
           ==> Mul(LitInt(2), 
              _module.__default.Count(_module._default.DetermineElection$Candidate, 
                $LS($LZ), 
                a#0, 
                LitInt(0), 
                Seq#Length(a#0), 
                _module.Result.cand(result#0)))
             > Seq#Length(a#0);
    }

    if (*)
    {
        assume {:id "id91"} _module.Result.NoWinner_q(result#0);
        havoc c#0;
        assume $IsBox(c#0, _module._default.DetermineElection$Candidate)
           && $IsAllocBox(c#0, _module._default.DetermineElection$Candidate, $Heap);
        ##a#1 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#1, TSeq(_module._default.DetermineElection$Candidate), $Heap);
        ##s#1 := LitInt(0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#1, TInt, $Heap);
        ##t#1 := Seq#Length(a#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#1, TInt, $Heap);
        ##x#1 := c#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#1, _module._default.DetermineElection$Candidate, $Heap);
        assert {:id "id92"} {:subsumption 0} LitInt(0) <= ##s#1;
        assert {:id "id93"} {:subsumption 0} ##s#1 <= ##t#1;
        assert {:id "id94"} {:subsumption 0} ##t#1 <= Seq#Length(##a#1);
        assume LitInt(0) <= ##s#1 && ##s#1 <= ##t#1 && ##t#1 <= Seq#Length(##a#1);
        assume _module.__default.Count#canCall(_module._default.DetermineElection$Candidate, 
          a#0, 
          LitInt(0), 
          Seq#Length(a#0), 
          c#0);
        assume {:id "id95"} Mul(LitInt(2), 
            _module.__default.Count(_module._default.DetermineElection$Candidate, 
              $LS($LZ), 
              a#0, 
              LitInt(0), 
              Seq#Length(a#0), 
              c#0))
           <= Seq#Length(a#0);
        assume {:id "id96"} (forall c#1: Box :: 
          { _module.__default.Count(_module._default.DetermineElection$Candidate, 
              $LS($LZ), 
              a#0, 
              0, 
              Seq#Length(a#0), 
              c#1) } 
          $IsBox(c#1, _module._default.DetermineElection$Candidate)
             ==> Mul(LitInt(2), 
                _module.__default.Count(_module._default.DetermineElection$Candidate, 
                  $LS($LZ), 
                  a#0, 
                  LitInt(0), 
                  Seq#Length(a#0), 
                  c#1))
               <= Seq#Length(a#0));
    }
    else
    {
        assume {:id "id97"} _module.Result.NoWinner_q(result#0)
           ==> (forall c#1: Box :: 
            { _module.__default.Count(_module._default.DetermineElection$Candidate, 
                $LS($LZ), 
                a#0, 
                0, 
                Seq#Length(a#0), 
                c#1) } 
            $IsBox(c#1, _module._default.DetermineElection$Candidate)
               ==> Mul(LitInt(2), 
                  _module.__default.Count(_module._default.DetermineElection$Candidate, 
                    $LS($LZ), 
                    a#0, 
                    LitInt(0), 
                    Seq#Length(a#0), 
                    c#1))
                 <= Seq#Length(a#0));
    }
}



procedure {:verboseName "DetermineElection (call)"} Call$$_module.__default.DetermineElection(_module._default.DetermineElection$Candidate: Ty
       where $AlwaysAllocated(_module._default.DetermineElection$Candidate), 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.DetermineElection$Candidate))
         && $IsAlloc(a#0, TSeq(_module._default.DetermineElection$Candidate), $Heap))
   returns (result#0: DatatypeType
       where $Is(result#0, Tclass._module.Result(_module._default.DetermineElection$Candidate))
         && $IsAlloc(result#0, 
          Tclass._module.Result(_module._default.DetermineElection$Candidate), 
          $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Result.Winner_q(result#0)
     ==> _module.__default.Count#canCall(_module._default.DetermineElection$Candidate, 
      a#0, 
      LitInt(0), 
      Seq#Length(a#0), 
      _module.Result.cand(result#0));
  ensures {:id "id98"} _module.Result.Winner_q(result#0)
     ==> Mul(LitInt(2), 
        _module.__default.Count(_module._default.DetermineElection$Candidate, 
          $LS($LS($LZ)), 
          a#0, 
          LitInt(0), 
          Seq#Length(a#0), 
          _module.Result.cand(result#0)))
       > Seq#Length(a#0);
  free ensures _module.Result.NoWinner_q(result#0)
     ==> (forall c#1: Box :: 
      { _module.__default.Count(_module._default.DetermineElection$Candidate, 
          $LS($LZ), 
          a#0, 
          0, 
          Seq#Length(a#0), 
          c#1) } 
      $IsBox(c#1, _module._default.DetermineElection$Candidate)
         ==> _module.__default.Count#canCall(_module._default.DetermineElection$Candidate, 
          a#0, 
          LitInt(0), 
          Seq#Length(a#0), 
          c#1));
  free ensures {:id "id99"} _module.Result.NoWinner_q(result#0)
     ==> (forall c#1: Box :: 
      { _module.__default.Count(_module._default.DetermineElection$Candidate, 
          $LS($LZ), 
          a#0, 
          0, 
          Seq#Length(a#0), 
          c#1) } 
      $IsBox(c#1, _module._default.DetermineElection$Candidate)
         ==> Mul(LitInt(2), 
            _module.__default.Count(_module._default.DetermineElection$Candidate, 
              $LS($LZ), 
              a#0, 
              LitInt(0), 
              Seq#Length(a#0), 
              c#1))
           <= Seq#Length(a#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DetermineElection (correctness)"} Impl$$_module.__default.DetermineElection(_module._default.DetermineElection$Candidate: Ty
       where $AlwaysAllocated(_module._default.DetermineElection$Candidate), 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.DetermineElection$Candidate))
         && $IsAlloc(a#0, TSeq(_module._default.DetermineElection$Candidate), $Heap))
   returns (result#0: DatatypeType
       where $Is(result#0, Tclass._module.Result(_module._default.DetermineElection$Candidate))
         && $IsAlloc(result#0, 
          Tclass._module.Result(_module._default.DetermineElection$Candidate), 
          $Heap), 
    $_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Result.Winner_q(result#0)
     ==> _module.__default.Count#canCall(_module._default.DetermineElection$Candidate, 
      a#0, 
      LitInt(0), 
      Seq#Length(a#0), 
      _module.Result.cand(result#0));
  ensures {:id "id100"} _module.Result.Winner_q(result#0)
     ==> Mul(LitInt(2), 
        _module.__default.Count(_module._default.DetermineElection$Candidate, 
          $LS($LS($LZ)), 
          a#0, 
          LitInt(0), 
          Seq#Length(a#0), 
          _module.Result.cand(result#0)))
       > Seq#Length(a#0);
  free ensures _module.Result.NoWinner_q(result#0)
     ==> (forall c#1: Box :: 
      { _module.__default.Count(_module._default.DetermineElection$Candidate, 
          $LS($LZ), 
          a#0, 
          0, 
          Seq#Length(a#0), 
          c#1) } 
      $IsBox(c#1, _module._default.DetermineElection$Candidate)
         ==> _module.__default.Count#canCall(_module._default.DetermineElection$Candidate, 
          a#0, 
          LitInt(0), 
          Seq#Length(a#0), 
          c#1));
  ensures {:id "id101"} _module.Result.NoWinner_q(result#0)
     ==> (forall c#1: Box :: 
      { _module.__default.Count(_module._default.DetermineElection$Candidate, 
          $LS($LS($LZ)), 
          a#0, 
          0, 
          Seq#Length(a#0), 
          c#1) } 
      $IsBox(c#1, _module._default.DetermineElection$Candidate)
         ==> Mul(LitInt(2), 
            _module.__default.Count(_module._default.DetermineElection$Candidate, 
              $LS($LS($LZ)), 
              a#0, 
              LitInt(0), 
              Seq#Length(a#0), 
              c#1))
           <= Seq#Length(a#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DetermineElection (correctness)"} Impl$$_module.__default.DetermineElection(_module._default.DetermineElection$Candidate: Ty, a#0: Seq)
   returns (result#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var b#0: bool;
  var c#3: Box;
  var ##a#2: Seq;
  var ##s#2: int;
  var ##t#2: int;
  var ##x#2: Box;
  var w#0: Box
     where $IsBox(w#0, _module._default.DetermineElection$Candidate)
       && $IsAllocBox(w#0, _module._default.DetermineElection$Candidate, $Heap);
  var w#1: Box;
  var ##a#3: Seq;
  var ##s#3: int;
  var ##t#3: int;
  var ##x#3: Box;
  var cand#0: Box
     where $IsBox(cand#0, _module._default.DetermineElection$Candidate)
       && $IsAllocBox(cand#0, _module._default.DetermineElection$Candidate, $Heap);
  var $rhs##0: Box;
  var a##0: Seq;
  var hasWinner##0: bool;
  var K##0: Box;
  var ##a#4: Seq;
  var ##s#4: int;
  var ##t#4: int;
  var ##x#4: Box;

    // AddMethodImpl: DetermineElection, Impl$$_module.__default.DetermineElection
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(122,3)
    assume true;
    if (Seq#Length(a#0) == LitInt(0))
    {
        push;
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(122,17)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(122,17)
        assume true;
        assume true;
        result#0 := Lit(#_module.Result.NoWinner());
        pop;
        return;

        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(123,15)
    assume true;
    // Begin Comprehension WF check
    havoc c#3;
    if ($IsBox(c#3, _module._default.DetermineElection$Candidate)
       && $IsAllocBox(c#3, _module._default.DetermineElection$Candidate, $Heap))
    {
        ##a#2 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#2, TSeq(_module._default.DetermineElection$Candidate), $Heap);
        ##s#2 := LitInt(0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#2, TInt, $Heap);
        ##t#2 := Seq#Length(a#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#2, TInt, $Heap);
        ##x#2 := c#3;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#2, _module._default.DetermineElection$Candidate, $Heap);
        assert {:id "id103"} {:subsumption 0} LitInt(0) <= ##s#2;
        assert {:id "id104"} {:subsumption 0} ##s#2 <= ##t#2;
        assert {:id "id105"} {:subsumption 0} ##t#2 <= Seq#Length(##a#2);
        assume LitInt(0) <= ##s#2 && ##s#2 <= ##t#2 && ##t#2 <= Seq#Length(##a#2);
        assume _module.__default.Count#canCall(_module._default.DetermineElection$Candidate, 
          a#0, 
          LitInt(0), 
          Seq#Length(a#0), 
          c#3);
    }

    // End Comprehension WF check
    assume (forall c#2: Box :: 
      { _module.__default.Count(_module._default.DetermineElection$Candidate, 
          $LS($LZ), 
          a#0, 
          0, 
          Seq#Length(a#0), 
          c#2) } 
      $IsBox(c#2, _module._default.DetermineElection$Candidate)
         ==> _module.__default.Count#canCall(_module._default.DetermineElection$Candidate, 
          a#0, 
          LitInt(0), 
          Seq#Length(a#0), 
          c#2));
    b#0 := (exists c#2: Box :: 
      { _module.__default.Count(_module._default.DetermineElection$Candidate, 
          $LS($LZ), 
          a#0, 
          0, 
          Seq#Length(a#0), 
          c#2) } 
      $IsBox(c#2, _module._default.DetermineElection$Candidate)
         && Mul(LitInt(2), 
            _module.__default.Count(_module._default.DetermineElection$Candidate, 
              $LS($LZ), 
              a#0, 
              LitInt(0), 
              Seq#Length(a#0), 
              c#2))
           > Seq#Length(a#0));
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(124,15)
    havoc w#1;
    if ($IsBox(w#1, _module._default.DetermineElection$Candidate)
       && $IsAllocBox(w#1, _module._default.DetermineElection$Candidate, $Heap))
    {
        if (b#0)
        {
            ##a#3 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#3, TSeq(_module._default.DetermineElection$Candidate), $Heap);
            ##s#3 := LitInt(0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#3, TInt, $Heap);
            ##t#3 := Seq#Length(a#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#3, TInt, $Heap);
            ##x#3 := w#1;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#3, _module._default.DetermineElection$Candidate, $Heap);
            assert {:id "id107"} {:subsumption 0} LitInt(0) <= ##s#3;
            assert {:id "id108"} {:subsumption 0} ##s#3 <= ##t#3;
            assert {:id "id109"} {:subsumption 0} ##t#3 <= Seq#Length(##a#3);
            assume _module.__default.Count#canCall(_module._default.DetermineElection$Candidate, 
              a#0, 
              LitInt(0), 
              Seq#Length(a#0), 
              w#1);
        }

        assume b#0
           ==> _module.__default.Count#canCall(_module._default.DetermineElection$Candidate, 
            a#0, 
            LitInt(0), 
            Seq#Length(a#0), 
            w#1);
    }

    assert {:id "id110"} (exists $as#w0#0: Box :: 
      $IsBox($as#w0#0, _module._default.DetermineElection$Candidate)
         && (b#0
           ==> Mul(LitInt(2), 
              _module.__default.Count(_module._default.DetermineElection$Candidate, 
                $LS($LZ), 
                a#0, 
                LitInt(0), 
                Seq#Length(a#0), 
                $as#w0#0))
             > Seq#Length(a#0)));
    havoc w#0;
    assume {:id "id111"} b#0
       ==> Mul(LitInt(2), 
          _module.__default.Count(_module._default.DetermineElection$Candidate, 
            $LS($LZ), 
            a#0, 
            LitInt(0), 
            Seq#Length(a#0), 
            w#0))
         > Seq#Length(a#0);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(125,30)
    assume true;
    // TrCallStmt: Adding lhs with type Candidate
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    hasWinner##0 := b#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    K##0 := w#0;
    call {:id "id112"} $rhs##0 := Call$$_module.__default.SearchForWinner(_module._default.DetermineElection$Candidate, a##0, hasWinner##0, K##0);
    // TrCallStmt: After ProcessCallStmt
    cand#0 := $rhs##0;
    // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(126,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(126,3)
    assume true;
    ##a#4 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#4, TSeq(_module._default.DetermineElection$Candidate), $Heap);
    ##s#4 := LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#4, TInt, $Heap);
    ##t#4 := Seq#Length(a#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#4, TInt, $Heap);
    ##x#4 := cand#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##x#4, _module._default.DetermineElection$Candidate, $Heap);
    assert {:id "id114"} {:subsumption 0} LitInt(0) <= ##s#4;
    assert {:id "id115"} {:subsumption 0} ##s#4 <= ##t#4;
    assert {:id "id116"} {:subsumption 0} ##t#4 <= Seq#Length(##a#4);
    assume LitInt(0) <= ##s#4 && ##s#4 <= ##t#4 && ##t#4 <= Seq#Length(##a#4);
    assume _module.__default.Count#canCall(_module._default.DetermineElection$Candidate, 
      a#0, 
      LitInt(0), 
      Seq#Length(a#0), 
      cand#0);
    if (Mul(LitInt(2), 
        _module.__default.Count(_module._default.DetermineElection$Candidate, 
          $LS($LZ), 
          a#0, 
          LitInt(0), 
          Seq#Length(a#0), 
          cand#0))
       > Seq#Length(a#0))
    {
    }
    else
    {
    }

    assume _module.__default.Count#canCall(_module._default.DetermineElection$Candidate, 
      a#0, 
      LitInt(0), 
      Seq#Length(a#0), 
      cand#0);
    result#0 := (if Mul(LitInt(2), 
          _module.__default.Count(_module._default.DetermineElection$Candidate, 
            $LS($LZ), 
            a#0, 
            LitInt(0), 
            Seq#Length(a#0), 
            cand#0))
         > Seq#Length(a#0)
       then #_module.Result.Winner(cand#0)
       else #_module.Result.NoWinner());
    return;
}



procedure {:verboseName "SearchForWinner (well-formedness)"} CheckWellFormed$$_module.__default.SearchForWinner(_module._default.SearchForWinner$Candidate: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.SearchForWinner$Candidate))
         && $IsAlloc(a#0, TSeq(_module._default.SearchForWinner$Candidate), $Heap), 
    hasWinner#0: bool, 
    K#0: Box
       where $IsBox(K#0, _module._default.SearchForWinner$Candidate)
         && $IsAllocBox(K#0, _module._default.SearchForWinner$Candidate, $Heap))
   returns (k#0: Box
       where $IsBox(k#0, _module._default.SearchForWinner$Candidate)
         && $IsAllocBox(k#0, _module._default.SearchForWinner$Candidate, $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SearchForWinner (well-formedness)"} CheckWellFormed$$_module.__default.SearchForWinner(_module._default.SearchForWinner$Candidate: Ty, 
    a#0: Seq, 
    hasWinner#0: bool, 
    K#0: Box)
   returns (k#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##a#0: Seq;
  var ##s#0: int;
  var ##t#0: int;
  var ##x#0: Box;


    // AddMethodImpl: SearchForWinner, CheckWellFormed$$_module.__default.SearchForWinner
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id118"} Seq#Length(a#0) != 0;
    if (*)
    {
        assume {:id "id119"} hasWinner#0;
        ##a#0 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0, TSeq(_module._default.SearchForWinner$Candidate), $Heap);
        ##s#0 := LitInt(0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0, TInt, $Heap);
        ##t#0 := Seq#Length(a#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#0, TInt, $Heap);
        ##x#0 := K#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#0, _module._default.SearchForWinner$Candidate, $Heap);
        assert {:id "id120"} {:subsumption 0} LitInt(0) <= ##s#0;
        assert {:id "id121"} {:subsumption 0} ##s#0 <= ##t#0;
        assert {:id "id122"} {:subsumption 0} ##t#0 <= Seq#Length(##a#0);
        assume LitInt(0) <= ##s#0 && ##s#0 <= ##t#0 && ##t#0 <= Seq#Length(##a#0);
        assume _module.__default.Count#canCall(_module._default.SearchForWinner$Candidate, a#0, LitInt(0), Seq#Length(a#0), K#0);
        assume {:id "id123"} Mul(LitInt(2), 
            _module.__default.Count(_module._default.SearchForWinner$Candidate, 
              $LS($LZ), 
              a#0, 
              LitInt(0), 
              Seq#Length(a#0), 
              K#0))
           > Seq#Length(a#0);
    }
    else
    {
        assume {:id "id124"} hasWinner#0
           ==> Mul(LitInt(2), 
              _module.__default.Count(_module._default.SearchForWinner$Candidate, 
                $LS($LZ), 
                a#0, 
                LitInt(0), 
                Seq#Length(a#0), 
                K#0))
             > Seq#Length(a#0);
    }

    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc k#0;
    if (*)
    {
        assume {:id "id125"} hasWinner#0;
        assume {:id "id126"} k#0 == K#0;
    }
    else
    {
        assume {:id "id127"} hasWinner#0 ==> k#0 == K#0;
    }
}



procedure {:verboseName "SearchForWinner (call)"} Call$$_module.__default.SearchForWinner(_module._default.SearchForWinner$Candidate: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.SearchForWinner$Candidate))
         && $IsAlloc(a#0, TSeq(_module._default.SearchForWinner$Candidate), $Heap), 
    hasWinner#0: bool, 
    K#0: Box
       where $IsBox(K#0, _module._default.SearchForWinner$Candidate)
         && $IsAllocBox(K#0, _module._default.SearchForWinner$Candidate, $Heap))
   returns (k#0: Box
       where $IsBox(k#0, _module._default.SearchForWinner$Candidate)
         && $IsAllocBox(k#0, _module._default.SearchForWinner$Candidate, $Heap));
  // user-defined preconditions
  requires {:id "id128"} Seq#Length(a#0) != 0;
  requires {:id "id129"} hasWinner#0
     ==> Mul(LitInt(2), 
        _module.__default.Count(_module._default.SearchForWinner$Candidate, 
          $LS($LS($LZ)), 
          a#0, 
          LitInt(0), 
          Seq#Length(a#0), 
          K#0))
       > Seq#Length(a#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id130"} hasWinner#0 ==> k#0 == K#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SearchForWinner (correctness)"} Impl$$_module.__default.SearchForWinner(_module._default.SearchForWinner$Candidate: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.SearchForWinner$Candidate))
         && $IsAlloc(a#0, TSeq(_module._default.SearchForWinner$Candidate), $Heap), 
    hasWinner#0: bool, 
    K#0: Box
       where $IsBox(K#0, _module._default.SearchForWinner$Candidate)
         && $IsAllocBox(K#0, _module._default.SearchForWinner$Candidate, $Heap))
   returns (defass#k#0: bool, 
    k#0: Box
       where defass#k#0
         ==> $IsBox(k#0, _module._default.SearchForWinner$Candidate)
           && $IsAllocBox(k#0, _module._default.SearchForWinner$Candidate, $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id131"} Seq#Length(a#0) != 0;
  requires {:id "id132"} hasWinner#0
     ==> Mul(LitInt(2), 
        _module.__default.Count(_module._default.SearchForWinner$Candidate, 
          $LS($LS($LZ)), 
          a#0, 
          LitInt(0), 
          Seq#Length(a#0), 
          K#0))
       > Seq#Length(a#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id133"} hasWinner#0 ==> k#0 == K#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SearchForWinner (correctness)"} Impl$$_module.__default.SearchForWinner(_module._default.SearchForWinner$Candidate: Ty, 
    a#0: Seq, 
    hasWinner#0: bool, 
    K#0: Box)
   returns (defass#k#0: bool, k#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: int;
  var c#0: int;
  var s#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var $rhs#2: int;
  var $PreLoopHeap$loop#0: Heap;
  var preLoop$loop#0$defass#k#0: bool;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var ##a#1: Seq;
  var ##s#1: int;
  var ##t#1: int;
  var ##x#1: Box;
  var ##a#2: Seq;
  var ##s#2: int;
  var ##t#2: int;
  var ##x#2: Box;
  var ##a#3: Seq;
  var ##s#3: int;
  var ##t#3: int;
  var ##x#3: Box;
  var $decr$loop#00: int;
  var $rhs#0_0_0: int;
  var $rhs#0_0_1: int;
  var a##0_1_1_0: Seq;
  var s##0_1_1_0: int;
  var t##0_1_1_0: int;
  var x##0_1_1_0: Box;
  var y##0_1_1_0: Box;
  var a##0_1_1_1: Seq;
  var s##0_1_1_1: int;
  var t##0_1_1_1: int;
  var u##0_1_1_0: int;
  var x##0_1_1_1: Box;
  var $rhs#0_1_1_0: Box;
  var $rhs#0_1_1_1: int;
  var $rhs#0_1_1_2: int;
  var $rhs#0_1_1_3: int;
  var a##0: Seq;
  var s##0: int;
  var t##0: int;
  var x##0: Box;
  var y##0: Box;

    // AddMethodImpl: SearchForWinner, Impl$$_module.__default.SearchForWinner
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(138,5)
    assume true;
    assert {:id "id134"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
    assume true;
    k#0 := Seq#Index(a#0, LitInt(0));
    defass#k#0 := true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(139,15)
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(1);
    assume true;
    $rhs#1 := LitInt(1);
    assume true;
    $rhs#2 := LitInt(0);
    n#0 := $rhs#0;
    c#0 := $rhs#1;
    s#0 := $rhs#2;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(140,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    preLoop$loop#0$defass#k#0 := defass#k#0;
    $decr_init$loop#00 := Seq#Length(a#0) - n#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id143"} $w$loop#0 ==> LitInt(0) <= s#0;
      invariant {:id "id144"} $w$loop#0 ==> s#0 <= n#0;
      invariant {:id "id145"} $w$loop#0 ==> n#0 <= Seq#Length(a#0);
      free invariant $w$loop#0
         ==> 
        hasWinner#0
         ==> _module.__default.Count#canCall(_module._default.SearchForWinner$Candidate, a#0, s#0, Seq#Length(a#0), K#0);
      invariant {:id "id150"} $w$loop#0
         ==> 
        hasWinner#0
         ==> Mul(LitInt(2), 
            _module.__default.Count(_module._default.SearchForWinner$Candidate, 
              $LS($LS($LZ)), 
              a#0, 
              s#0, 
              Seq#Length(a#0), 
              K#0))
           > Seq#Length(a#0) - s#0;
      free invariant $w$loop#0
         ==> _module.__default.Count#canCall(_module._default.SearchForWinner$Candidate, a#0, s#0, n#0, k#0);
      invariant {:id "id156"} $w$loop#0
         ==> Mul(LitInt(2), 
            _module.__default.Count(_module._default.SearchForWinner$Candidate, $LS($LS($LZ)), a#0, s#0, n#0, k#0))
           > n#0 - s#0;
      free invariant $w$loop#0
         ==> _module.__default.Count#canCall(_module._default.SearchForWinner$Candidate, a#0, s#0, n#0, k#0);
      invariant {:id "id162"} $w$loop#0
         ==> c#0
           == _module.__default.Count(_module._default.SearchForWinner$Candidate, $LS($LS($LZ)), a#0, s#0, n#0, k#0);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant preLoop$loop#0$defass#k#0 ==> defass#k#0;
      free invariant Seq#Length(a#0) - n#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= s#0)
            {
            }

            if (LitInt(0) <= s#0 && s#0 <= n#0)
            {
            }

            assume true;
            assume {:id "id142"} LitInt(0) <= s#0 && s#0 <= n#0 && n#0 <= Seq#Length(a#0);
            if (hasWinner#0)
            {
                ##a#1 := a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1, TSeq(_module._default.SearchForWinner$Candidate), $Heap);
                ##s#1 := s#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#1, TInt, $Heap);
                ##t#1 := Seq#Length(a#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#1, TInt, $Heap);
                ##x#1 := K#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##x#1, _module._default.SearchForWinner$Candidate, $Heap);
                assert {:id "id146"} {:subsumption 0} LitInt(0) <= ##s#1;
                assert {:id "id147"} {:subsumption 0} ##s#1 <= ##t#1;
                assert {:id "id148"} {:subsumption 0} ##t#1 <= Seq#Length(##a#1);
                assume _module.__default.Count#canCall(_module._default.SearchForWinner$Candidate, a#0, s#0, Seq#Length(a#0), K#0);
            }

            assume hasWinner#0
               ==> _module.__default.Count#canCall(_module._default.SearchForWinner$Candidate, a#0, s#0, Seq#Length(a#0), K#0);
            assume {:id "id149"} hasWinner#0
               ==> Mul(LitInt(2), 
                  _module.__default.Count(_module._default.SearchForWinner$Candidate, 
                    $LS($LZ), 
                    a#0, 
                    s#0, 
                    Seq#Length(a#0), 
                    K#0))
                 > Seq#Length(a#0) - s#0;
            ##a#2 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#2, TSeq(_module._default.SearchForWinner$Candidate), $Heap);
            ##s#2 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#2, TInt, $Heap);
            ##t#2 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#2, TInt, $Heap);
            assert {:id "id151"} defass#k#0;
            ##x#2 := k#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#2, _module._default.SearchForWinner$Candidate, $Heap);
            assert {:id "id152"} {:subsumption 0} LitInt(0) <= ##s#2;
            assert {:id "id153"} {:subsumption 0} ##s#2 <= ##t#2;
            assert {:id "id154"} {:subsumption 0} ##t#2 <= Seq#Length(##a#2);
            assume _module.__default.Count#canCall(_module._default.SearchForWinner$Candidate, a#0, s#0, n#0, k#0);
            assume _module.__default.Count#canCall(_module._default.SearchForWinner$Candidate, a#0, s#0, n#0, k#0);
            assume {:id "id155"} Mul(LitInt(2), 
                _module.__default.Count(_module._default.SearchForWinner$Candidate, $LS($LZ), a#0, s#0, n#0, k#0))
               > n#0 - s#0;
            ##a#3 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#3, TSeq(_module._default.SearchForWinner$Candidate), $Heap);
            ##s#3 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#3, TInt, $Heap);
            ##t#3 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#3, TInt, $Heap);
            assert {:id "id157"} defass#k#0;
            ##x#3 := k#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#3, _module._default.SearchForWinner$Candidate, $Heap);
            assert {:id "id158"} {:subsumption 0} LitInt(0) <= ##s#3;
            assert {:id "id159"} {:subsumption 0} ##s#3 <= ##t#3;
            assert {:id "id160"} {:subsumption 0} ##t#3 <= Seq#Length(##a#3);
            assume _module.__default.Count#canCall(_module._default.SearchForWinner$Candidate, a#0, s#0, n#0, k#0);
            assume _module.__default.Count#canCall(_module._default.SearchForWinner$Candidate, a#0, s#0, n#0, k#0);
            assume {:id "id161"} c#0
               == _module.__default.Count(_module._default.SearchForWinner$Candidate, $LS($LZ), a#0, s#0, n#0, k#0);
            assume true;
            assume false;
        }

        assume true;
        if (Seq#Length(a#0) <= n#0)
        {
            break;
        }

        $decr$loop#00 := Seq#Length(a#0) - n#0;
        push;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(146,5)
        assert {:id "id163"} 0 <= n#0 && n#0 < Seq#Length(a#0);
        assert {:id "id164"} defass#k#0;
        assume true;
        if (Seq#Index(a#0, n#0) == k#0)
        {
            push;
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(147,12)
            assume true;
            assume true;
            assume true;
            $rhs#0_0_0 := n#0 + 1;
            assume true;
            $rhs#0_0_1 := c#0 + 1;
            n#0 := $rhs#0_0_0;
            c#0 := $rhs#0_0_1;
            pop;
        }
        else
        {
            push;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(148,12)
            assume true;
            if (Mul(LitInt(2), c#0) > n#0 + 1 - s#0)
            {
                push;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(149,9)
                assume true;
                assume true;
                n#0 := n#0 + 1;
                pop;
            }
            else
            {
                push;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(151,9)
                assume true;
                assume true;
                n#0 := n#0 + 1;
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(154,19)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                a##0_1_1_0 := a#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##0_1_1_0 := s#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##0_1_1_0 := n#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                x##0_1_1_0 := K#0;
                assert {:id "id171"} defass#k#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                y##0_1_1_0 := k#0;
                call {:id "id172"} Call$$_module.__default.Lemma__Unique(_module._default.SearchForWinner$Candidate, a##0_1_1_0, s##0_1_1_0, t##0_1_1_0, x##0_1_1_0, y##0_1_1_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(158,18)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                a##0_1_1_1 := a#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##0_1_1_1 := s#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##0_1_1_1 := n#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                u##0_1_1_0 := Seq#Length(a#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                x##0_1_1_1 := K#0;
                call {:id "id173"} Call$$_module.__default.Lemma__Split(_module._default.SearchForWinner$Candidate, a##0_1_1_1, s##0_1_1_1, t##0_1_1_1, u##0_1_1_0, x##0_1_1_1);
                // TrCallStmt: After ProcessCallStmt
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(159,7)
                assume true;
                if (Seq#Length(a#0) == n#0)
                {
                    push;
                    // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(159,21)
                    assert {:id "id174"} defass#k#0;
                    pop;
                    pop;
                    pop;
                    pop;
                    return;

                    pop;
                }
                else
                {
                }

                // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(160,18)
                assume true;
                assume true;
                assume true;
                assume true;
                assert {:id "id175"} 0 <= n#0 && n#0 < Seq#Length(a#0);
                assume true;
                $rhs#0_1_1_0 := Seq#Index(a#0, n#0);
                assume true;
                $rhs#0_1_1_1 := n#0 + 1;
                assume true;
                $rhs#0_1_1_2 := LitInt(1);
                assume true;
                $rhs#0_1_1_3 := n#0;
                k#0 := $rhs#0_1_1_0;
                defass#k#0 := true;
                n#0 := $rhs#0_1_1_1;
                c#0 := $rhs#0_1_1_2;
                s#0 := $rhs#0_1_1_3;
                pop;
            }

            pop;
        }

        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(140,3)
        assert {:id "id184"} 0 <= $decr$loop#00 || Seq#Length(a#0) - n#0 == $decr$loop#00;
        assert {:id "id185"} Seq#Length(a#0) - n#0 < $decr$loop#00;
        assume LitInt(0) <= s#0 && s#0 <= n#0 && n#0 <= Seq#Length(a#0)
           ==> (hasWinner#0
               ==> _module.__default.Count#canCall(_module._default.SearchForWinner$Candidate, a#0, s#0, Seq#Length(a#0), K#0))
             && (
              (hasWinner#0
               ==> Mul(LitInt(2), 
                  _module.__default.Count(_module._default.SearchForWinner$Candidate, 
                    $LS($LZ), 
                    a#0, 
                    s#0, 
                    Seq#Length(a#0), 
                    K#0))
                 > Seq#Length(a#0) - s#0)
               ==> _module.__default.Count#canCall(_module._default.SearchForWinner$Candidate, a#0, s#0, n#0, k#0)
                 && (Mul(LitInt(2), 
                      _module.__default.Count(_module._default.SearchForWinner$Candidate, $LS($LZ), a#0, s#0, n#0, k#0))
                     > n#0 - s#0
                   ==> _module.__default.Count#canCall(_module._default.SearchForWinner$Candidate, a#0, s#0, n#0, k#0)));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(163,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := s#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##0 := Seq#Length(a#0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := K#0;
    assert {:id "id186"} defass#k#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := k#0;
    call {:id "id187"} Call$$_module.__default.Lemma__Unique(_module._default.SearchForWinner$Candidate, a##0, s##0, t##0, x##0, y##0);
    // TrCallStmt: After ProcessCallStmt
    assert {:id "id188"} defass#k#0;
}



procedure {:verboseName "Lemma_Split (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__Split(_module._default.Lemma_Split$T: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.Lemma_Split$T))
         && $IsAlloc(a#0, TSeq(_module._default.Lemma_Split$T), $Heap), 
    s#0: int, 
    t#0: int, 
    u#0: int, 
    x#0: Box
       where $IsBox(x#0, _module._default.Lemma_Split$T)
         && $IsAllocBox(x#0, _module._default.Lemma_Split$T, $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_Split (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__Split(_module._default.Lemma_Split$T: Ty, 
    a#0: Seq, 
    s#0: int, 
    t#0: int, 
    u#0: int, 
    x#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##a#0: Seq;
  var ##s#0: int;
  var ##t#0: int;
  var ##x#0: Box;
  var ##a#1: Seq;
  var ##s#1: int;
  var ##t#1: int;
  var ##x#1: Box;
  var ##a#2: Seq;
  var ##s#2: int;
  var ##t#2: int;
  var ##x#2: Box;


    // AddMethodImpl: Lemma_Split, CheckWellFormed$$_module.__default.Lemma__Split
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (LitInt(0) <= s#0)
    {
    }

    if (LitInt(0) <= s#0 && s#0 <= t#0)
    {
    }

    if (LitInt(0) <= s#0 && s#0 <= t#0 && t#0 <= u#0)
    {
    }

    assume {:id "id189"} LitInt(0) <= s#0 && s#0 <= t#0 && t#0 <= u#0 && u#0 <= Seq#Length(a#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##a#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TSeq(_module._default.Lemma_Split$T), $Heap);
    ##s#0 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, TInt, $Heap);
    ##t#0 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#0, TInt, $Heap);
    ##x#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##x#0, _module._default.Lemma_Split$T, $Heap);
    assert {:id "id190"} {:subsumption 0} LitInt(0) <= ##s#0;
    assert {:id "id191"} {:subsumption 0} ##s#0 <= ##t#0;
    assert {:id "id192"} {:subsumption 0} ##t#0 <= Seq#Length(##a#0);
    assume LitInt(0) <= ##s#0 && ##s#0 <= ##t#0 && ##t#0 <= Seq#Length(##a#0);
    assume _module.__default.Count#canCall(_module._default.Lemma_Split$T, a#0, s#0, t#0, x#0);
    ##a#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, TSeq(_module._default.Lemma_Split$T), $Heap);
    ##s#1 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#1, TInt, $Heap);
    ##t#1 := u#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#1, TInt, $Heap);
    ##x#1 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##x#1, _module._default.Lemma_Split$T, $Heap);
    assert {:id "id193"} {:subsumption 0} LitInt(0) <= ##s#1;
    assert {:id "id194"} {:subsumption 0} ##s#1 <= ##t#1;
    assert {:id "id195"} {:subsumption 0} ##t#1 <= Seq#Length(##a#1);
    assume LitInt(0) <= ##s#1 && ##s#1 <= ##t#1 && ##t#1 <= Seq#Length(##a#1);
    assume _module.__default.Count#canCall(_module._default.Lemma_Split$T, a#0, t#0, u#0, x#0);
    ##a#2 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#2, TSeq(_module._default.Lemma_Split$T), $Heap);
    ##s#2 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#2, TInt, $Heap);
    ##t#2 := u#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#2, TInt, $Heap);
    ##x#2 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##x#2, _module._default.Lemma_Split$T, $Heap);
    assert {:id "id196"} {:subsumption 0} LitInt(0) <= ##s#2;
    assert {:id "id197"} {:subsumption 0} ##s#2 <= ##t#2;
    assert {:id "id198"} {:subsumption 0} ##t#2 <= Seq#Length(##a#2);
    assume LitInt(0) <= ##s#2 && ##s#2 <= ##t#2 && ##t#2 <= Seq#Length(##a#2);
    assume _module.__default.Count#canCall(_module._default.Lemma_Split$T, a#0, s#0, u#0, x#0);
    assume {:id "id199"} _module.__default.Count(_module._default.Lemma_Split$T, $LS($LZ), a#0, s#0, t#0, x#0)
         + _module.__default.Count(_module._default.Lemma_Split$T, $LS($LZ), a#0, t#0, u#0, x#0)
       == _module.__default.Count(_module._default.Lemma_Split$T, $LS($LZ), a#0, s#0, u#0, x#0);
}



procedure {:verboseName "Lemma_Split (call)"} Call$$_module.__default.Lemma__Split(_module._default.Lemma_Split$T: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.Lemma_Split$T))
         && $IsAlloc(a#0, TSeq(_module._default.Lemma_Split$T), $Heap), 
    s#0: int, 
    t#0: int, 
    u#0: int, 
    x#0: Box
       where $IsBox(x#0, _module._default.Lemma_Split$T)
         && $IsAllocBox(x#0, _module._default.Lemma_Split$T, $Heap));
  // user-defined preconditions
  requires {:id "id200"} LitInt(0) <= s#0;
  requires {:id "id201"} s#0 <= t#0;
  requires {:id "id202"} t#0 <= u#0;
  requires {:id "id203"} u#0 <= Seq#Length(a#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Count#canCall(_module._default.Lemma_Split$T, a#0, s#0, t#0, x#0)
     && _module.__default.Count#canCall(_module._default.Lemma_Split$T, a#0, t#0, u#0, x#0)
     && _module.__default.Count#canCall(_module._default.Lemma_Split$T, a#0, s#0, u#0, x#0);
  ensures {:id "id204"} _module.__default.Count(_module._default.Lemma_Split$T, $LS($LS($LZ)), a#0, s#0, t#0, x#0)
       + _module.__default.Count(_module._default.Lemma_Split$T, $LS($LS($LZ)), a#0, t#0, u#0, x#0)
     == _module.__default.Count(_module._default.Lemma_Split$T, $LS($LS($LZ)), a#0, s#0, u#0, x#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_Split (correctness)"} Impl$$_module.__default.Lemma__Split(_module._default.Lemma_Split$T: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.Lemma_Split$T))
         && $IsAlloc(a#0, TSeq(_module._default.Lemma_Split$T), $Heap), 
    s#0: int, 
    t#0: int, 
    u#0: int, 
    x#0: Box
       where $IsBox(x#0, _module._default.Lemma_Split$T)
         && $IsAllocBox(x#0, _module._default.Lemma_Split$T, $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id205"} LitInt(0) <= s#0;
  requires {:id "id206"} s#0 <= t#0;
  requires {:id "id207"} t#0 <= u#0;
  requires {:id "id208"} u#0 <= Seq#Length(a#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Count#canCall(_module._default.Lemma_Split$T, a#0, s#0, t#0, x#0)
     && _module.__default.Count#canCall(_module._default.Lemma_Split$T, a#0, t#0, u#0, x#0)
     && _module.__default.Count#canCall(_module._default.Lemma_Split$T, a#0, s#0, u#0, x#0);
  ensures {:id "id209"} _module.__default.Count(_module._default.Lemma_Split$T, $LS($LS($LZ)), a#0, s#0, t#0, x#0)
       + _module.__default.Count(_module._default.Lemma_Split$T, $LS($LS($LZ)), a#0, t#0, u#0, x#0)
     == _module.__default.Count(_module._default.Lemma_Split$T, $LS($LS($LZ)), a#0, s#0, u#0, x#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_Split (correctness)"} Impl$$_module.__default.Lemma__Split(_module._default.Lemma_Split$T: Ty, 
    a#0: Seq, 
    s#0: int, 
    t#0: int, 
    u#0: int, 
    x#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: Lemma_Split, Impl$$_module.__default.Lemma__Split
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#a0#0: Seq, $ih#s0#0: int, $ih#t0#0: int, $ih#u0#0: int :: 
      { _module.__default.Count(_module._default.Lemma_Split$T, $LS($LZ), $ih#a0#0, $ih#s0#0, $ih#u0#0, x#0), _module.__default.Count(_module._default.Lemma_Split$T, $LS($LZ), $ih#a0#0, $ih#t0#0, $ih#u0#0, x#0) } 
        { _module.__default.Count(_module._default.Lemma_Split$T, $LS($LZ), $ih#a0#0, $ih#t0#0, $ih#u0#0, x#0), _module.__default.Count(_module._default.Lemma_Split$T, $LS($LZ), $ih#a0#0, $ih#s0#0, $ih#t0#0, x#0) } 
      $Is($ih#a0#0, TSeq(_module._default.Lemma_Split$T))
           && 
          LitInt(0) <= $ih#s0#0
           && $ih#s0#0 <= $ih#t0#0
           && $ih#t0#0 <= $ih#u0#0
           && $ih#u0#0 <= Seq#Length($ih#a0#0)
           && (Seq#Rank($ih#a0#0) < Seq#Rank(a#0)
             || (Seq#Rank($ih#a0#0) == Seq#Rank(a#0)
               && ((0 <= $ih#s0#0 && $ih#s0#0 < s#0)
                 || ($ih#s0#0 == s#0
                   && ((0 <= $ih#t0#0 && $ih#t0#0 < t#0)
                     || ($ih#t0#0 == t#0 && 0 <= $ih#u0#0 && $ih#u0#0 < u#0))))))
         ==> _module.__default.Count(_module._default.Lemma_Split$T, $LS($LZ), $ih#a0#0, $ih#s0#0, $ih#t0#0, x#0)
             + _module.__default.Count(_module._default.Lemma_Split$T, $LS($LZ), $ih#a0#0, $ih#t0#0, $ih#u0#0, x#0)
           == _module.__default.Count(_module._default.Lemma_Split$T, $LS($LZ), $ih#a0#0, $ih#s0#0, $ih#u0#0, x#0));
    $_reverifyPost := false;
}



procedure {:verboseName "Lemma_Unique (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__Unique(_module._default.Lemma_Unique$T: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.Lemma_Unique$T))
         && $IsAlloc(a#0, TSeq(_module._default.Lemma_Unique$T), $Heap), 
    s#0: int, 
    t#0: int, 
    x#0: Box
       where $IsBox(x#0, _module._default.Lemma_Unique$T)
         && $IsAllocBox(x#0, _module._default.Lemma_Unique$T, $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.Lemma_Unique$T)
         && $IsAllocBox(y#0, _module._default.Lemma_Unique$T, $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_Unique (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__Unique(_module._default.Lemma_Unique$T: Ty, 
    a#0: Seq, 
    s#0: int, 
    t#0: int, 
    x#0: Box, 
    y#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##a#0: Seq;
  var ##s#0: int;
  var ##t#0: int;
  var ##x#0: Box;
  var ##a#1: Seq;
  var ##s#1: int;
  var ##t#1: int;
  var ##x#1: Box;


    // AddMethodImpl: Lemma_Unique, CheckWellFormed$$_module.__default.Lemma__Unique
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (LitInt(0) <= s#0)
    {
    }

    if (LitInt(0) <= s#0 && s#0 <= t#0)
    {
    }

    assume {:id "id210"} LitInt(0) <= s#0 && s#0 <= t#0 && t#0 <= Seq#Length(a#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    if (*)
    {
        assume {:id "id211"} x#0 != y#0;
        ##a#0 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0, TSeq(_module._default.Lemma_Unique$T), $Heap);
        ##s#0 := s#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0, TInt, $Heap);
        ##t#0 := t#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#0, TInt, $Heap);
        ##x#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#0, _module._default.Lemma_Unique$T, $Heap);
        assert {:id "id212"} {:subsumption 0} LitInt(0) <= ##s#0;
        assert {:id "id213"} {:subsumption 0} ##s#0 <= ##t#0;
        assert {:id "id214"} {:subsumption 0} ##t#0 <= Seq#Length(##a#0);
        assume LitInt(0) <= ##s#0 && ##s#0 <= ##t#0 && ##t#0 <= Seq#Length(##a#0);
        assume _module.__default.Count#canCall(_module._default.Lemma_Unique$T, a#0, s#0, t#0, x#0);
        ##a#1 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#1, TSeq(_module._default.Lemma_Unique$T), $Heap);
        ##s#1 := s#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#1, TInt, $Heap);
        ##t#1 := t#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#1, TInt, $Heap);
        ##x#1 := y#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#1, _module._default.Lemma_Unique$T, $Heap);
        assert {:id "id215"} {:subsumption 0} LitInt(0) <= ##s#1;
        assert {:id "id216"} {:subsumption 0} ##s#1 <= ##t#1;
        assert {:id "id217"} {:subsumption 0} ##t#1 <= Seq#Length(##a#1);
        assume LitInt(0) <= ##s#1 && ##s#1 <= ##t#1 && ##t#1 <= Seq#Length(##a#1);
        assume _module.__default.Count#canCall(_module._default.Lemma_Unique$T, a#0, s#0, t#0, y#0);
        assume {:id "id218"} _module.__default.Count(_module._default.Lemma_Unique$T, $LS($LZ), a#0, s#0, t#0, x#0)
             + _module.__default.Count(_module._default.Lemma_Unique$T, $LS($LZ), a#0, s#0, t#0, y#0)
           <= t#0 - s#0;
    }
    else
    {
        assume {:id "id219"} x#0 != y#0
           ==> _module.__default.Count(_module._default.Lemma_Unique$T, $LS($LZ), a#0, s#0, t#0, x#0)
               + _module.__default.Count(_module._default.Lemma_Unique$T, $LS($LZ), a#0, s#0, t#0, y#0)
             <= t#0 - s#0;
    }
}



procedure {:verboseName "Lemma_Unique (call)"} Call$$_module.__default.Lemma__Unique(_module._default.Lemma_Unique$T: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.Lemma_Unique$T))
         && $IsAlloc(a#0, TSeq(_module._default.Lemma_Unique$T), $Heap), 
    s#0: int, 
    t#0: int, 
    x#0: Box
       where $IsBox(x#0, _module._default.Lemma_Unique$T)
         && $IsAllocBox(x#0, _module._default.Lemma_Unique$T, $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.Lemma_Unique$T)
         && $IsAllocBox(y#0, _module._default.Lemma_Unique$T, $Heap));
  // user-defined preconditions
  requires {:id "id220"} LitInt(0) <= s#0;
  requires {:id "id221"} s#0 <= t#0;
  requires {:id "id222"} t#0 <= Seq#Length(a#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures x#0 != y#0
     ==> _module.__default.Count#canCall(_module._default.Lemma_Unique$T, a#0, s#0, t#0, x#0)
       && _module.__default.Count#canCall(_module._default.Lemma_Unique$T, a#0, s#0, t#0, y#0);
  ensures {:id "id223"} x#0 != y#0
     ==> _module.__default.Count(_module._default.Lemma_Unique$T, $LS($LS($LZ)), a#0, s#0, t#0, x#0)
         + _module.__default.Count(_module._default.Lemma_Unique$T, $LS($LS($LZ)), a#0, s#0, t#0, y#0)
       <= t#0 - s#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_Unique (correctness)"} Impl$$_module.__default.Lemma__Unique(_module._default.Lemma_Unique$T: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.Lemma_Unique$T))
         && $IsAlloc(a#0, TSeq(_module._default.Lemma_Unique$T), $Heap), 
    s#0: int, 
    t#0: int, 
    x#0: Box
       where $IsBox(x#0, _module._default.Lemma_Unique$T)
         && $IsAllocBox(x#0, _module._default.Lemma_Unique$T, $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.Lemma_Unique$T)
         && $IsAllocBox(y#0, _module._default.Lemma_Unique$T, $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id224"} LitInt(0) <= s#0;
  requires {:id "id225"} s#0 <= t#0;
  requires {:id "id226"} t#0 <= Seq#Length(a#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures x#0 != y#0
     ==> _module.__default.Count#canCall(_module._default.Lemma_Unique$T, a#0, s#0, t#0, x#0)
       && _module.__default.Count#canCall(_module._default.Lemma_Unique$T, a#0, s#0, t#0, y#0);
  ensures {:id "id227"} x#0 != y#0
     ==> _module.__default.Count(_module._default.Lemma_Unique$T, $LS($LS($LZ)), a#0, s#0, t#0, x#0)
         + _module.__default.Count(_module._default.Lemma_Unique$T, $LS($LS($LZ)), a#0, s#0, t#0, y#0)
       <= t#0 - s#0;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_Unique (correctness)"} Impl$$_module.__default.Lemma__Unique(_module._default.Lemma_Unique$T: Ty, 
    a#0: Seq, 
    s#0: int, 
    t#0: int, 
    x#0: Box, 
    y#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: Lemma_Unique, Impl$$_module.__default.Lemma__Unique
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#a0#0: Seq, $ih#s0#0: int, $ih#t0#0: int :: 
      { _module.__default.Count(_module._default.Lemma_Unique$T, $LS($LZ), $ih#a0#0, $ih#s0#0, $ih#t0#0, y#0) } 
        { _module.__default.Count(_module._default.Lemma_Unique$T, $LS($LZ), $ih#a0#0, $ih#s0#0, $ih#t0#0, x#0) } 
      $Is($ih#a0#0, TSeq(_module._default.Lemma_Unique$T))
           && 
          LitInt(0) <= $ih#s0#0
           && $ih#s0#0 <= $ih#t0#0
           && $ih#t0#0 <= Seq#Length($ih#a0#0)
           && (Seq#Rank($ih#a0#0) < Seq#Rank(a#0)
             || (Seq#Rank($ih#a0#0) == Seq#Rank(a#0)
               && ((0 <= $ih#s0#0 && $ih#s0#0 < s#0)
                 || ($ih#s0#0 == s#0 && 0 <= $ih#t0#0 && $ih#t0#0 < t#0))))
         ==> 
        x#0 != y#0
         ==> _module.__default.Count(_module._default.Lemma_Unique$T, $LS($LZ), $ih#a0#0, $ih#s0#0, $ih#t0#0, x#0)
             + _module.__default.Count(_module._default.Lemma_Unique$T, $LS($LZ), $ih#a0#0, $ih#s0#0, $ih#t0#0, y#0)
           <= $ih#t0#0 - $ih#s0#0);
    $_reverifyPost := false;
}



procedure {:verboseName "FindWinner' (well-formedness)"} CheckWellFormed$$_module.__default.FindWinner_k(_module._default.FindWinner'$Candidate: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.FindWinner'$Candidate))
         && $IsAlloc(a#0, TSeq(_module._default.FindWinner'$Candidate), $Heap), 
    K#0: Box
       where $IsBox(K#0, _module._default.FindWinner'$Candidate)
         && $IsAllocBox(K#0, _module._default.FindWinner'$Candidate, $Heap))
   returns (k#0: Box
       where $IsBox(k#0, _module._default.FindWinner'$Candidate)
         && $IsAllocBox(k#0, _module._default.FindWinner'$Candidate, $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FindWinner' (well-formedness)"} CheckWellFormed$$_module.__default.FindWinner_k(_module._default.FindWinner'$Candidate: Ty, a#0: Seq, K#0: Box)
   returns (k#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##a#0: Seq;
  var ##s#0: int;
  var ##t#0: int;
  var ##x#0: Box;


    // AddMethodImpl: FindWinner', CheckWellFormed$$_module.__default.FindWinner_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##a#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TSeq(_module._default.FindWinner'$Candidate), $Heap);
    ##s#0 := LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, TInt, $Heap);
    ##t#0 := Seq#Length(a#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#0, TInt, $Heap);
    ##x#0 := K#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##x#0, _module._default.FindWinner'$Candidate, $Heap);
    assert {:id "id228"} {:subsumption 0} LitInt(0) <= ##s#0;
    assert {:id "id229"} {:subsumption 0} ##s#0 <= ##t#0;
    assert {:id "id230"} {:subsumption 0} ##t#0 <= Seq#Length(##a#0);
    assume LitInt(0) <= ##s#0 && ##s#0 <= ##t#0 && ##t#0 <= Seq#Length(##a#0);
    assume _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, LitInt(0), Seq#Length(a#0), K#0);
    assume {:id "id231"} _module.__default.HasMajority(_module._default.FindWinner'$Candidate, a#0, LitInt(0), Seq#Length(a#0), K#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc k#0;
    assume {:id "id232"} k#0 == K#0;
}



procedure {:verboseName "FindWinner' (call)"} Call$$_module.__default.FindWinner_k(_module._default.FindWinner'$Candidate: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.FindWinner'$Candidate))
         && $IsAlloc(a#0, TSeq(_module._default.FindWinner'$Candidate), $Heap), 
    K#0: Box
       where $IsBox(K#0, _module._default.FindWinner'$Candidate)
         && $IsAllocBox(K#0, _module._default.FindWinner'$Candidate, $Heap))
   returns (k#0: Box
       where $IsBox(k#0, _module._default.FindWinner'$Candidate)
         && $IsAllocBox(k#0, _module._default.FindWinner'$Candidate, $Heap));
  // user-defined preconditions
  requires {:id "id233"} _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, LitInt(0), Seq#Length(a#0), K#0)
     ==> _module.__default.HasMajority(_module._default.FindWinner'$Candidate, a#0, LitInt(0), Seq#Length(a#0), K#0)
       || Mul(LitInt(2), 
          _module.__default.Count(_module._default.FindWinner'$Candidate, 
            $LS($LS($LZ)), 
            a#0, 
            LitInt(0), 
            Seq#Length(a#0), 
            K#0))
         > Seq#Length(a#0) - 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id234"} k#0 == K#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FindWinner' (correctness)"} Impl$$_module.__default.FindWinner_k(_module._default.FindWinner'$Candidate: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.FindWinner'$Candidate))
         && $IsAlloc(a#0, TSeq(_module._default.FindWinner'$Candidate), $Heap), 
    K#0: Box
       where $IsBox(K#0, _module._default.FindWinner'$Candidate)
         && $IsAllocBox(K#0, _module._default.FindWinner'$Candidate, $Heap))
   returns (defass#k#0: bool, 
    k#0: Box
       where defass#k#0
         ==> $IsBox(k#0, _module._default.FindWinner'$Candidate)
           && $IsAllocBox(k#0, _module._default.FindWinner'$Candidate, $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id235"} _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, LitInt(0), Seq#Length(a#0), K#0)
     && 
    _module.__default.HasMajority(_module._default.FindWinner'$Candidate, a#0, LitInt(0), Seq#Length(a#0), K#0)
     && Mul(LitInt(2), 
        _module.__default.Count(_module._default.FindWinner'$Candidate, 
          $LS($LZ), 
          a#0, 
          LitInt(0), 
          Seq#Length(a#0), 
          K#0))
       > Seq#Length(a#0) - 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id236"} k#0 == K#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FindWinner' (correctness)"} Impl$$_module.__default.FindWinner_k(_module._default.FindWinner'$Candidate: Ty, a#0: Seq, K#0: Box)
   returns (defass#k#0: bool, k#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var lo#0: int;
  var up#0: int;
  var c#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var $rhs#2: int;
  var $PreLoopHeap$loop#0: Heap;
  var preLoop$loop#0$defass#k#0: bool;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var ##a#1: Seq;
  var ##s#1: int;
  var ##t#1: int;
  var ##x#1: Box;
  var ##a#2: Seq;
  var ##s#2: int;
  var ##t#2: int;
  var ##x#2: Box;
  var ##a#3: Seq;
  var ##s#3: int;
  var ##t#3: int;
  var ##x#3: Box;
  var $decr$loop#00: int;
  var $rhs#0_0_0: int;
  var $rhs#0_0_1: int;
  var ##a#0_1_1_0_0_0: Seq;
  var ##s#0_1_1_0_0_0: int;
  var ##t#0_1_1_0_0_0: int;
  var ##x#0_1_1_0_0_0: Box;
  var ##a#0_1_1_0_0_0_0_0: Seq;
  var ##s#0_1_1_0_0_0_0_0: int;
  var ##t#0_1_1_0_0_0_0_0: int;
  var ##x#0_1_1_0_0_0_0_0: Box;
  var ##a#0_1_1_0_0_0_0_1: Seq;
  var ##s#0_1_1_0_0_0_0_1: int;
  var ##t#0_1_1_0_0_0_0_1: int;
  var ##x#0_1_1_0_0_0_0_1: Box;
  var ##a#0_1_1_0_0_0_1_0: Seq;
  var ##s#0_1_1_0_0_0_1_0: int;
  var ##t#0_1_1_0_0_0_1_0: int;
  var ##x#0_1_1_0_0_0_1_0: Box;
  var ##a#0_1_1_0_0_0_1_1: Seq;
  var ##s#0_1_1_0_0_0_1_1: int;
  var ##t#0_1_1_0_0_0_1_1: int;
  var ##x#0_1_1_0_0_0_1_1: Box;
  var ##a#0_1_1_0_0_0_2_0: Seq;
  var ##s#0_1_1_0_0_0_2_0: int;
  var ##t#0_1_1_0_0_0_2_0: int;
  var ##x#0_1_1_0_0_0_2_0: Box;
  var ##a#0_1_1_0_0_1: Seq;
  var ##s#0_1_1_0_0_1: int;
  var ##t#0_1_1_0_0_1: int;
  var ##x#0_1_1_0_0_1: Box;
  var ##a#0_1_1_0_1_0: Seq;
  var ##s#0_1_1_0_1_0: int;
  var ##t#0_1_1_0_1_0: int;
  var ##x#0_1_1_0_1_0: Box;
  var ##a#0_1_1_0: Seq;
  var ##s#0_1_1_0: int;
  var ##t#0_1_1_0: int;
  var ##x#0_1_1_0: Box;
  var ##a#0_1_1_1_1_0: Seq;
  var ##s#0_1_1_1_1_0: int;
  var ##t#0_1_1_1_1_0: int;
  var ##x#0_1_1_1_1_0: Box;
  var ##a#0_1_1_1_1_0_0_0_0: Seq;
  var ##s#0_1_1_1_1_0_0_0_0: int;
  var ##t#0_1_1_1_1_0_0_0_0: int;
  var ##x#0_1_1_1_1_0_0_0_0: Box;
  var ##a#0_1_1_1_1_0_0_0_1: Seq;
  var ##s#0_1_1_1_1_0_0_0_1: int;
  var ##t#0_1_1_1_1_0_0_0_1: int;
  var ##x#0_1_1_1_1_0_0_0_1: Box;
  var ##a#0_1_1_1_1_0_0_1_0: Seq;
  var ##s#0_1_1_1_1_0_0_1_0: int;
  var ##t#0_1_1_1_1_0_0_1_0: int;
  var ##x#0_1_1_1_1_0_0_1_0: Box;
  var ##a#0_1_1_1_1_0_0_1_1: Seq;
  var ##s#0_1_1_1_1_0_0_1_1: int;
  var ##t#0_1_1_1_1_0_0_1_1: int;
  var ##x#0_1_1_1_1_0_0_1_1: Box;
  var ##a#0_1_1_1_1_0_0_0: Seq;
  var ##s#0_1_1_1_1_0_0_0: int;
  var ##t#0_1_1_1_1_0_0_0: int;
  var ##x#0_1_1_1_1_0_0_0: Box;
  var ##a#0_1_1_1_1_1_0_0_0: Seq;
  var ##s#0_1_1_1_1_1_0_0_0: int;
  var ##t#0_1_1_1_1_1_0_0_0: int;
  var ##x#0_1_1_1_1_1_0_0_0: Box;
  var ##a#0_1_1_1_1_1_0_0_1: Seq;
  var ##s#0_1_1_1_1_1_0_0_1: int;
  var ##t#0_1_1_1_1_1_0_0_1: int;
  var ##x#0_1_1_1_1_1_0_0_1: Box;
  var ##a#0_1_1_1_1_1_0_1_0: Seq;
  var ##s#0_1_1_1_1_1_0_1_0: int;
  var ##t#0_1_1_1_1_1_0_1_0: int;
  var ##x#0_1_1_1_1_1_0_1_0: Box;
  var a##0_1_1_1_1_1_0_1_0: Seq;
  var s##0_1_1_1_1_1_0_1_0: int;
  var t##0_1_1_1_1_1_0_1_0: int;
  var x##0_1_1_1_1_1_0_1_0: Box;
  var y##0_1_1_1_1_1_0_1_0: Box;
  var ##a#0_1_1_1_1_1_0_1_1: Seq;
  var ##s#0_1_1_1_1_1_0_1_1: int;
  var ##t#0_1_1_1_1_1_0_1_1: int;
  var ##x#0_1_1_1_1_1_0_1_1: Box;
  var ##a#0_1_1_1_1_1_0_0: Seq;
  var ##s#0_1_1_1_1_1_0_0: int;
  var ##t#0_1_1_1_1_1_0_0: int;
  var ##x#0_1_1_1_1_1_0_0: Box;
  var ##a#0_1_1_1_1_1: Seq;
  var ##s#0_1_1_1_1_1: int;
  var ##t#0_1_1_1_1_1: int;
  var ##x#0_1_1_1_1_1: Box;
  var ##a#0_1_1_1_2_0: Seq;
  var ##s#0_1_1_1_2_0: int;
  var ##t#0_1_1_1_2_0: int;
  var ##x#0_1_1_1_2_0: Box;
  var ##a#0_1_1_1_2_1: Seq;
  var ##s#0_1_1_1_2_1: int;
  var ##t#0_1_1_1_2_1: int;
  var ##x#0_1_1_1_2_1: Box;
  var ##a#0_1_1_1_2_2: Seq;
  var ##s#0_1_1_1_2_2: int;
  var ##t#0_1_1_1_2_2: int;
  var ##x#0_1_1_1_2_2: Box;
  var ##a#0_1_1_1_2_3: Seq;
  var ##s#0_1_1_1_2_3: int;
  var ##t#0_1_1_1_2_3: int;
  var ##x#0_1_1_1_2_3: Box;
  var ##a#0_1_1_1_3_0: Seq;
  var ##s#0_1_1_1_3_0: int;
  var ##t#0_1_1_1_3_0: int;
  var ##x#0_1_1_1_3_0: Box;
  var a##0_1_1_1_3_0: Seq;
  var s##0_1_1_1_3_0: int;
  var t##0_1_1_1_3_0: int;
  var u##0_1_1_1_3_0: int;
  var x##0_1_1_1_3_0: Box;
  var ##a#0_1_1_1_3_1: Seq;
  var ##s#0_1_1_1_3_1: int;
  var ##t#0_1_1_1_3_1: int;
  var ##x#0_1_1_1_3_1: Box;
  var ##a#0_1_1_1_3_2: Seq;
  var ##s#0_1_1_1_3_2: int;
  var ##t#0_1_1_1_3_2: int;
  var ##x#0_1_1_1_3_2: Box;
  var ##a#0_1_1_1_0: Seq;
  var ##s#0_1_1_1_0: int;
  var ##t#0_1_1_1_0: int;
  var ##x#0_1_1_1_0: Box;
  var ##a#0_1_1_1: Seq;
  var ##s#0_1_1_1: int;
  var ##t#0_1_1_1: int;
  var ##x#0_1_1_1: Box;
  var $rhs#0_1_1_0: Box;
  var $rhs#0_1_1_1: int;
  var $rhs#0_1_1_2: int;
  var $rhs#0_1_1_3: int;
  var ##a#0_1_1_2: Seq;
  var ##s#0_1_1_2: int;
  var ##t#0_1_1_2: int;
  var ##x#0_1_1_2: Box;
  var a##0: Seq;
  var s##0: int;
  var t##0: int;
  var x##0: Box;
  var y##0: Box;

    // AddMethodImpl: FindWinner', Impl$$_module.__default.FindWinner_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(203,5)
    assume true;
    assert {:id "id237"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
    assume true;
    k#0 := Seq#Index(a#0, LitInt(0));
    defass#k#0 := true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(204,17)
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := LitInt(1);
    assume true;
    $rhs#2 := LitInt(1);
    lo#0 := $rhs#0;
    up#0 := $rhs#1;
    c#0 := $rhs#2;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(205,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    preLoop$loop#0$defass#k#0 := defass#k#0;
    $decr_init$loop#00 := Seq#Length(a#0) - up#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id246"} $w$loop#0 ==> LitInt(0) <= lo#0;
      invariant {:id "id247"} $w$loop#0 ==> lo#0 < up#0;
      invariant {:id "id248"} $w$loop#0 ==> up#0 <= Seq#Length(a#0);
      free invariant $w$loop#0
         ==> _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
      invariant {:id "id253"} $w$loop#0
         ==> 
        _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0)
         ==> _module.__default.HasMajority(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0)
           || Mul(LitInt(2), 
              _module.__default.Count(_module._default.FindWinner'$Candidate, 
                $LS($LS($LZ)), 
                a#0, 
                lo#0, 
                Seq#Length(a#0), 
                K#0))
             > Seq#Length(a#0) - lo#0;
      free invariant {:id "id254"} $w$loop#0
         ==> _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0)
           && 
          _module.__default.HasMajority(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0)
           && Mul(LitInt(2), 
              _module.__default.Count(_module._default.FindWinner'$Candidate, 
                $LS($LZ), 
                a#0, 
                lo#0, 
                Seq#Length(a#0), 
                K#0))
             > Seq#Length(a#0) - lo#0;
      free invariant $w$loop#0
         ==> _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
      invariant {:id "id260"} $w$loop#0
         ==> 
        _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0)
         ==> _module.__default.HasMajority(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0)
           || Mul(LitInt(2), 
              _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
             > up#0 - lo#0;
      free invariant {:id "id261"} $w$loop#0
         ==> _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0)
           && 
          _module.__default.HasMajority(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0)
           && Mul(LitInt(2), 
              _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LZ), a#0, lo#0, up#0, k#0))
             > up#0 - lo#0;
      free invariant $w$loop#0
         ==> _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
      invariant {:id "id267"} $w$loop#0
         ==> c#0
           == _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant preLoop$loop#0$defass#k#0 ==> defass#k#0;
      free invariant Seq#Length(a#0) - up#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= lo#0)
            {
            }

            if (LitInt(0) <= lo#0 && lo#0 < up#0)
            {
            }

            assume true;
            assume {:id "id245"} LitInt(0) <= lo#0 && lo#0 < up#0 && up#0 <= Seq#Length(a#0);
            ##a#1 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1, TSeq(_module._default.FindWinner'$Candidate), $Heap);
            ##s#1 := lo#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1, TInt, $Heap);
            ##t#1 := Seq#Length(a#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#1, TInt, $Heap);
            ##x#1 := K#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#1, _module._default.FindWinner'$Candidate, $Heap);
            assert {:id "id249"} {:subsumption 0} LitInt(0) <= ##s#1;
            assert {:id "id250"} {:subsumption 0} ##s#1 <= ##t#1;
            assert {:id "id251"} {:subsumption 0} ##t#1 <= Seq#Length(##a#1);
            assume _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
            assume _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
            assume {:id "id252"} _module.__default.HasMajority(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
            ##a#2 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#2, TSeq(_module._default.FindWinner'$Candidate), $Heap);
            ##s#2 := lo#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#2, TInt, $Heap);
            ##t#2 := up#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#2, TInt, $Heap);
            assert {:id "id255"} defass#k#0;
            ##x#2 := k#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#2, _module._default.FindWinner'$Candidate, $Heap);
            assert {:id "id256"} {:subsumption 0} LitInt(0) <= ##s#2;
            assert {:id "id257"} {:subsumption 0} ##s#2 <= ##t#2;
            assert {:id "id258"} {:subsumption 0} ##t#2 <= Seq#Length(##a#2);
            assume _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
            assume _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
            assume {:id "id259"} _module.__default.HasMajority(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
            ##a#3 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#3, TSeq(_module._default.FindWinner'$Candidate), $Heap);
            ##s#3 := lo#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#3, TInt, $Heap);
            ##t#3 := up#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#3, TInt, $Heap);
            assert {:id "id262"} defass#k#0;
            ##x#3 := k#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#3, _module._default.FindWinner'$Candidate, $Heap);
            assert {:id "id263"} {:subsumption 0} LitInt(0) <= ##s#3;
            assert {:id "id264"} {:subsumption 0} ##s#3 <= ##t#3;
            assert {:id "id265"} {:subsumption 0} ##t#3 <= Seq#Length(##a#3);
            assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
            assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
            assume {:id "id266"} c#0
               == _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LZ), a#0, lo#0, up#0, k#0);
            assume true;
            assume false;
        }

        assume true;
        if (Seq#Length(a#0) <= up#0)
        {
            break;
        }

        $decr$loop#00 := Seq#Length(a#0) - up#0;
        push;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(211,5)
        assert {:id "id268"} 0 <= up#0 && up#0 < Seq#Length(a#0);
        assert {:id "id269"} defass#k#0;
        assume true;
        if (Seq#Index(a#0, up#0) == k#0)
        {
            push;
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(213,13)
            assume true;
            assume true;
            assume true;
            $rhs#0_0_0 := up#0 + 1;
            assume true;
            $rhs#0_0_1 := c#0 + 1;
            up#0 := $rhs#0_0_0;
            c#0 := $rhs#0_0_1;
            pop;
        }
        else
        {
            push;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(214,12)
            assume true;
            if (Mul(LitInt(2), c#0) > up#0 + 1 - lo#0)
            {
                push;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(216,10)
                assume true;
                assume true;
                up#0 := up#0 + 1;
                pop;
            }
            else
            {
                push;
                // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(220,7)
                // Assume Fuel Constant
                if (*)
                {
                    // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(220,7)
                    assume true;
                    assume false;
                }
                else if (*)
                {
                    // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(220,7)
                    assume true;
                    // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(220,7)
                    push;
                    pop;
                    // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(220,7)
                    assume true;
                    // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(220,7)
                    assert {:id "id313"} {:subsumption 0} Lit(true) == (Mul(LitInt(2), c#0) <= up#0 + 1 - lo#0);
                    assume false;
                }
                else if (*)
                {
                    // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(220,7)
                    assume true;
                    // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(220,7)
                    push;
                    pop;
                    // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(220,7)
                    ##a#0_1_1_0_1_0 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_0_1_0, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                    ##s#0_1_1_0_1_0 := lo#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_0_1_0, TInt, $Heap);
                    ##t#0_1_1_0_1_0 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_0_1_0, TInt, $Heap);
                    assert {:id "id308"} defass#k#0;
                    ##x#0_1_1_0_1_0 := k#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_0_1_0, _module._default.FindWinner'$Candidate, $Heap);
                    assert {:id "id309"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_0_1_0;
                    assert {:id "id310"} {:subsumption 0} ##s#0_1_1_0_1_0 <= ##t#0_1_1_0_1_0;
                    assert {:id "id311"} {:subsumption 0} ##t#0_1_1_0_1_0 <= Seq#Length(##a#0_1_1_0_1_0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                    // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(220,7)
                    assert {:id "id312"} {:subsumption 0} (Mul(LitInt(2), c#0) <= up#0 + 1 - lo#0)
                       == (Mul(LitInt(2), 
                          _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                         <= up#0 + 1 - lo#0);
                    assume false;
                }
                else if (*)
                {
                    // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(220,7)
                    ##a#0_1_1_0_0_0 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_0_0_0, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                    ##s#0_1_1_0_0_0 := lo#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_0_0_0, TInt, $Heap);
                    ##t#0_1_1_0_0_0 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_0_0_0, TInt, $Heap);
                    assume {:id "id275"} defass#k#0;
                    ##x#0_1_1_0_0_0 := k#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_0_0_0, _module._default.FindWinner'$Candidate, $Heap);
                    assume {:id "id276"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_0_0_0;
                    assume {:id "id277"} {:subsumption 0} ##s#0_1_1_0_0_0 <= ##t#0_1_1_0_0_0;
                    assume {:id "id278"} {:subsumption 0} ##t#0_1_1_0_0_0 <= Seq#Length(##a#0_1_1_0_0_0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                    // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(220,7)
                    push;
                    // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(226,10)
                    // Assume Fuel Constant
                    if (*)
                    {
                        // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(226,10)
                        assume true;
                        assume false;
                    }
                    else if (*)
                    {
                        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(226,10)
                        assume true;
                        // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(226,10)
                        push;
                        pop;
                        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(226,10)
                        ##a#0_1_1_0_0_0_2_0 := a#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##a#0_1_1_0_0_0_2_0, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                        ##s#0_1_1_0_0_0_2_0 := lo#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##s#0_1_1_0_0_0_2_0, TInt, $Heap);
                        ##t#0_1_1_0_0_0_2_0 := up#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#0_1_1_0_0_0_2_0, TInt, $Heap);
                        assert {:id "id297"} defass#k#0;
                        ##x#0_1_1_0_0_0_2_0 := k#0;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#0_1_1_0_0_0_2_0, _module._default.FindWinner'$Candidate, $Heap);
                        assert {:id "id298"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_0_0_0_2_0;
                        assert {:id "id299"} {:subsumption 0} ##s#0_1_1_0_0_0_2_0 <= ##t#0_1_1_0_0_0_2_0;
                        assert {:id "id300"} {:subsumption 0} ##t#0_1_1_0_0_0_2_0 <= Seq#Length(##a#0_1_1_0_0_0_2_0);
                        assume _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                        assume _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                        // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(226,10)
                        assert {:id "id301"} {:subsumption 0} Lit(true)
                           == _module.__default.HasMajority(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                        assume false;
                    }
                    else if (*)
                    {
                        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(226,10)
                        ##a#0_1_1_0_0_0_1_0 := a#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##a#0_1_1_0_0_0_1_0, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                        ##s#0_1_1_0_0_0_1_0 := lo#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##s#0_1_1_0_0_0_1_0, TInt, $Heap);
                        ##t#0_1_1_0_0_0_1_0 := up#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#0_1_1_0_0_0_1_0, TInt, $Heap);
                        assume {:id "id288"} defass#k#0;
                        ##x#0_1_1_0_0_0_1_0 := k#0;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#0_1_1_0_0_0_1_0, _module._default.FindWinner'$Candidate, $Heap);
                        assume {:id "id289"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_0_0_0_1_0;
                        assume {:id "id290"} {:subsumption 0} ##s#0_1_1_0_0_0_1_0 <= ##t#0_1_1_0_0_0_1_0;
                        assume {:id "id291"} {:subsumption 0} ##t#0_1_1_0_0_0_1_0 <= Seq#Length(##a#0_1_1_0_0_0_1_0);
                        assume _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                        assume _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                        // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(226,10)
                        push;
                        pop;
                        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(226,10)
                        ##a#0_1_1_0_0_0_1_1 := a#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##a#0_1_1_0_0_0_1_1, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                        ##s#0_1_1_0_0_0_1_1 := lo#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##s#0_1_1_0_0_0_1_1, TInt, $Heap);
                        ##t#0_1_1_0_0_0_1_1 := up#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#0_1_1_0_0_0_1_1, TInt, $Heap);
                        assert {:id "id292"} defass#k#0;
                        ##x#0_1_1_0_0_0_1_1 := k#0;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#0_1_1_0_0_0_1_1, _module._default.FindWinner'$Candidate, $Heap);
                        assert {:id "id293"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_0_0_0_1_1;
                        assert {:id "id294"} {:subsumption 0} ##s#0_1_1_0_0_0_1_1 <= ##t#0_1_1_0_0_0_1_1;
                        assert {:id "id295"} {:subsumption 0} ##t#0_1_1_0_0_0_1_1 <= Seq#Length(##a#0_1_1_0_0_0_1_1);
                        assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                        assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                        // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(226,10)
                        assert {:id "id296"} {:subsumption 0} _module.__default.HasMajority(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0)
                           == (Mul(LitInt(2), 
                              _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                             > up#0 - lo#0);
                        assume false;
                    }
                    else if (*)
                    {
                        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(226,10)
                        ##a#0_1_1_0_0_0_0_0 := a#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##a#0_1_1_0_0_0_0_0, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                        ##s#0_1_1_0_0_0_0_0 := lo#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##s#0_1_1_0_0_0_0_0, TInt, $Heap);
                        ##t#0_1_1_0_0_0_0_0 := up#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#0_1_1_0_0_0_0_0, TInt, $Heap);
                        assume {:id "id279"} defass#k#0;
                        ##x#0_1_1_0_0_0_0_0 := k#0;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#0_1_1_0_0_0_0_0, _module._default.FindWinner'$Candidate, $Heap);
                        assume {:id "id280"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_0_0_0_0_0;
                        assume {:id "id281"} {:subsumption 0} ##s#0_1_1_0_0_0_0_0 <= ##t#0_1_1_0_0_0_0_0;
                        assume {:id "id282"} {:subsumption 0} ##t#0_1_1_0_0_0_0_0 <= Seq#Length(##a#0_1_1_0_0_0_0_0);
                        assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                        assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                        // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(226,10)
                        push;
                        pop;
                        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(226,10)
                        ##a#0_1_1_0_0_0_0_1 := a#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##a#0_1_1_0_0_0_0_1, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                        ##s#0_1_1_0_0_0_0_1 := lo#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##s#0_1_1_0_0_0_0_1, TInt, $Heap);
                        ##t#0_1_1_0_0_0_0_1 := up#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#0_1_1_0_0_0_0_1, TInt, $Heap);
                        assert {:id "id283"} defass#k#0;
                        ##x#0_1_1_0_0_0_0_1 := k#0;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#0_1_1_0_0_0_0_1, _module._default.FindWinner'$Candidate, $Heap);
                        assert {:id "id284"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_0_0_0_0_1;
                        assert {:id "id285"} {:subsumption 0} ##s#0_1_1_0_0_0_0_1 <= ##t#0_1_1_0_0_0_0_1;
                        assert {:id "id286"} {:subsumption 0} ##t#0_1_1_0_0_0_0_1 <= Seq#Length(##a#0_1_1_0_0_0_0_1);
                        assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                        assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                        // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(226,10)
                        assert {:id "id287"} {:subsumption 0} (Mul(LitInt(2), 
                              _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                             > up#0 - lo#0)
                           == (Mul(LitInt(2), 
                              _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                             >= up#0 + 1 - lo#0);
                        assume false;
                    }

                    assume {:id "id302"} true
                       ==> Mul(LitInt(2), 
                          _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LZ), a#0, lo#0, up#0, k#0))
                         >= up#0 + 1 - lo#0;
                    pop;
                    // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(220,7)
                    ##a#0_1_1_0_0_1 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_0_0_1, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                    ##s#0_1_1_0_0_1 := lo#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_0_0_1, TInt, $Heap);
                    ##t#0_1_1_0_0_1 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_0_0_1, TInt, $Heap);
                    assert {:id "id303"} defass#k#0;
                    ##x#0_1_1_0_0_1 := k#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_0_0_1, _module._default.FindWinner'$Candidate, $Heap);
                    assert {:id "id304"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_0_0_1;
                    assert {:id "id305"} {:subsumption 0} ##s#0_1_1_0_0_1 <= ##t#0_1_1_0_0_1;
                    assert {:id "id306"} {:subsumption 0} ##t#0_1_1_0_0_1 <= Seq#Length(##a#0_1_1_0_0_1);
                    assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                    // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(220,7)
                    assert {:id "id307"} {:subsumption 0} (Mul(LitInt(2), 
                          _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                         <= up#0 + 1 - lo#0)
                       == 
                      (Mul(LitInt(2), 
                        _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                       == up#0 + 1 - lo#0);
                    assume false;
                }

                assume {:id "id314"} true
                   ==> Mul(LitInt(2), 
                      _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LZ), a#0, lo#0, up#0, k#0))
                     == up#0 + 1 - lo#0;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(237,10)
                assume true;
                assume true;
                up#0 := up#0 + 1;
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(238,7)
                ##a#0_1_1_0 := a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#0_1_1_0, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                ##s#0_1_1_0 := lo#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#0_1_1_0, TInt, $Heap);
                ##t#0_1_1_0 := up#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#0_1_1_0, TInt, $Heap);
                assert {:id "id316"} defass#k#0;
                ##x#0_1_1_0 := k#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##x#0_1_1_0, _module._default.FindWinner'$Candidate, $Heap);
                assert {:id "id317"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_0;
                assert {:id "id318"} {:subsumption 0} ##s#0_1_1_0 <= ##t#0_1_1_0;
                assert {:id "id319"} {:subsumption 0} ##t#0_1_1_0 <= Seq#Length(##a#0_1_1_0);
                assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                assert {:id "id320"} {:subsumption 0} Mul(LitInt(2), 
                    _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                   == up#0 - lo#0;
                assume {:id "id321"} Mul(LitInt(2), 
                    _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LZ), a#0, lo#0, up#0, k#0))
                   == up#0 - lo#0;
                // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(244,7)
                // Assume Fuel Constant
                if (*)
                {
                    // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(244,7)
                    ##a#0_1_1_1_0 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_0, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                    ##s#0_1_1_1_0 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_0, TInt, $Heap);
                    ##t#0_1_1_1_0 := Seq#Length(a#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_0, TInt, $Heap);
                    ##x#0_1_1_1_0 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_0, _module._default.FindWinner'$Candidate, $Heap);
                    assert {:id "id407"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_0;
                    assert {:id "id408"} {:subsumption 0} ##s#0_1_1_1_0 <= ##t#0_1_1_1_0;
                    assert {:id "id409"} {:subsumption 0} ##t#0_1_1_1_0 <= Seq#Length(##a#0_1_1_1_0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                    assume false;
                }
                else if (*)
                {
                    // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(244,7)
                    ##a#0_1_1_1_3_0 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_3_0, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                    ##s#0_1_1_1_3_0 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_3_0, TInt, $Heap);
                    ##t#0_1_1_1_3_0 := Seq#Length(a#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_3_0, TInt, $Heap);
                    ##x#0_1_1_1_3_0 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_3_0, _module._default.FindWinner'$Candidate, $Heap);
                    assume {:id "id396"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_3_0;
                    assume {:id "id397"} {:subsumption 0} ##s#0_1_1_1_3_0 <= ##t#0_1_1_1_3_0;
                    assume {:id "id398"} {:subsumption 0} ##t#0_1_1_1_3_0 <= Seq#Length(##a#0_1_1_1_3_0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                    // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(244,7)
                    push;
                    push;
                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(246,24)
                    // TrCallStmt: Before ProcessCallStmt
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    a##0_1_1_1_3_0 := a#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    s##0_1_1_1_3_0 := lo#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    t##0_1_1_1_3_0 := up#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    u##0_1_1_1_3_0 := Seq#Length(a#0);
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    x##0_1_1_1_3_0 := K#0;
                    call {:id "id399"} Call$$_module.__default.Lemma__Split(_module._default.FindWinner'$Candidate, a##0_1_1_1_3_0, s##0_1_1_1_3_0, t##0_1_1_1_3_0, u##0_1_1_1_3_0, x##0_1_1_1_3_0);
                    // TrCallStmt: After ProcessCallStmt
                    pop;
                    pop;
                    // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(244,7)
                    ##a#0_1_1_1_3_1 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_3_1, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                    ##s#0_1_1_1_3_1 := lo#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_3_1, TInt, $Heap);
                    ##t#0_1_1_1_3_1 := Seq#Length(a#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_3_1, TInt, $Heap);
                    ##x#0_1_1_1_3_1 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_3_1, _module._default.FindWinner'$Candidate, $Heap);
                    assert {:id "id400"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_3_1;
                    assert {:id "id401"} {:subsumption 0} ##s#0_1_1_1_3_1 <= ##t#0_1_1_1_3_1;
                    assert {:id "id402"} {:subsumption 0} ##t#0_1_1_1_3_1 <= Seq#Length(##a#0_1_1_1_3_1);
                    assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
                    ##a#0_1_1_1_3_2 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_3_2, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                    ##s#0_1_1_1_3_2 := lo#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_3_2, TInt, $Heap);
                    ##t#0_1_1_1_3_2 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_3_2, TInt, $Heap);
                    ##x#0_1_1_1_3_2 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_3_2, _module._default.FindWinner'$Candidate, $Heap);
                    assert {:id "id403"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_3_2;
                    assert {:id "id404"} {:subsumption 0} ##s#0_1_1_1_3_2 <= ##t#0_1_1_1_3_2;
                    assert {:id "id405"} {:subsumption 0} ##t#0_1_1_1_3_2 <= Seq#Length(##a#0_1_1_1_3_2);
                    assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, K#0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0)
                       && _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, K#0);
                    // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(244,7)
                    assert {:id "id406"} {:subsumption 0} Mul(LitInt(2), 
                        _module.__default.Count(_module._default.FindWinner'$Candidate, 
                          $LS($LS($LZ)), 
                          a#0, 
                          up#0, 
                          Seq#Length(a#0), 
                          K#0))
                       == Mul(LitInt(2), 
                          _module.__default.Count(_module._default.FindWinner'$Candidate, 
                            $LS($LS($LZ)), 
                            a#0, 
                            lo#0, 
                            Seq#Length(a#0), 
                            K#0))
                         - Mul(LitInt(2), 
                          _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, K#0));
                    assume false;
                }
                else if (*)
                {
                    // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(244,7)
                    ##a#0_1_1_1_2_0 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_2_0, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                    ##s#0_1_1_1_2_0 := lo#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_2_0, TInt, $Heap);
                    ##t#0_1_1_1_2_0 := Seq#Length(a#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_2_0, TInt, $Heap);
                    ##x#0_1_1_1_2_0 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_2_0, _module._default.FindWinner'$Candidate, $Heap);
                    assume {:id "id381"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_0;
                    assume {:id "id382"} {:subsumption 0} ##s#0_1_1_1_2_0 <= ##t#0_1_1_1_2_0;
                    assume {:id "id383"} {:subsumption 0} ##t#0_1_1_1_2_0 <= Seq#Length(##a#0_1_1_1_2_0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
                    ##a#0_1_1_1_2_1 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_2_1, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                    ##s#0_1_1_1_2_1 := lo#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_2_1, TInt, $Heap);
                    ##t#0_1_1_1_2_1 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_2_1, TInt, $Heap);
                    ##x#0_1_1_1_2_1 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_2_1, _module._default.FindWinner'$Candidate, $Heap);
                    assume {:id "id384"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_1;
                    assume {:id "id385"} {:subsumption 0} ##s#0_1_1_1_2_1 <= ##t#0_1_1_1_2_1;
                    assume {:id "id386"} {:subsumption 0} ##t#0_1_1_1_2_1 <= Seq#Length(##a#0_1_1_1_2_1);
                    assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, K#0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0)
                       && _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, K#0);
                    // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(244,7)
                    push;
                    push;
                    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(248,12)
                    ##a#0_1_1_1_2_2 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_2_2, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                    ##s#0_1_1_1_2_2 := lo#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_2_2, TInt, $Heap);
                    ##t#0_1_1_1_2_2 := Seq#Length(a#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_2_2, TInt, $Heap);
                    ##x#0_1_1_1_2_2 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_2_2, _module._default.FindWinner'$Candidate, $Heap);
                    assert {:id "id387"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_2;
                    assert {:id "id388"} {:subsumption 0} ##s#0_1_1_1_2_2 <= ##t#0_1_1_1_2_2;
                    assert {:id "id389"} {:subsumption 0} ##t#0_1_1_1_2_2 <= Seq#Length(##a#0_1_1_1_2_2);
                    assume _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
                    assume _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
                    assert {:id "id390"} {:subsumption 0} _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0)
                       ==> _module.__default.HasMajority(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0)
                         || Mul(LitInt(2), 
                            _module.__default.Count(_module._default.FindWinner'$Candidate, 
                              $LS($LS($LZ)), 
                              a#0, 
                              lo#0, 
                              Seq#Length(a#0), 
                              K#0))
                           > Seq#Length(a#0) - lo#0;
                    assume {:id "id391"} _module.__default.HasMajority(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
                    pop;
                    pop;
                    // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(244,7)
                    ##a#0_1_1_1_2_3 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_2_3, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                    ##s#0_1_1_1_2_3 := lo#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_2_3, TInt, $Heap);
                    ##t#0_1_1_1_2_3 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_2_3, TInt, $Heap);
                    ##x#0_1_1_1_2_3 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_2_3, _module._default.FindWinner'$Candidate, $Heap);
                    assert {:id "id392"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_3;
                    assert {:id "id393"} {:subsumption 0} ##s#0_1_1_1_2_3 <= ##t#0_1_1_1_2_3;
                    assert {:id "id394"} {:subsumption 0} ##t#0_1_1_1_2_3 <= Seq#Length(##a#0_1_1_1_2_3);
                    assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, K#0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, K#0);
                    // ----- assert line1 > line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(244,7)
                    assert {:id "id395"} {:subsumption 0} Mul(LitInt(2), 
                          _module.__default.Count(_module._default.FindWinner'$Candidate, 
                            $LS($LS($LZ)), 
                            a#0, 
                            lo#0, 
                            Seq#Length(a#0), 
                            K#0))
                         - Mul(LitInt(2), 
                          _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, K#0))
                       > Seq#Length(a#0)
                         - lo#0
                         - Mul(LitInt(2), 
                          _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, K#0));
                    assume false;
                }
                else if (*)
                {
                    // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(244,7)
                    ##a#0_1_1_1_1_0 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_1_0, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                    ##s#0_1_1_1_1_0 := lo#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_1_0, TInt, $Heap);
                    ##t#0_1_1_1_1_0 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_1_0, TInt, $Heap);
                    ##x#0_1_1_1_1_0 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_1_0, _module._default.FindWinner'$Candidate, $Heap);
                    assume {:id "id323"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_1_0;
                    assume {:id "id324"} {:subsumption 0} ##s#0_1_1_1_1_0 <= ##t#0_1_1_1_1_0;
                    assume {:id "id325"} {:subsumption 0} ##t#0_1_1_1_1_0 <= Seq#Length(##a#0_1_1_1_1_0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, K#0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, K#0);
                    // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(244,7)
                    push;
                    push;
                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(250,13)
                    assert {:id "id326"} defass#k#0;
                    assume true;
                    if (k#0 == K#0)
                    {
                        push;
                        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(251,15)
                        // Assume Fuel Constant
                        if (*)
                        {
                            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(251,15)
                            ##a#0_1_1_1_1_0_0_0 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_1_0_0_0, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                            ##s#0_1_1_1_1_0_0_0 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_1_0_0_0, TInt, $Heap);
                            ##t#0_1_1_1_1_0_0_0 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_1_0_0_0, TInt, $Heap);
                            ##x#0_1_1_1_1_0_0_0 := K#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_1_0_0_0, _module._default.FindWinner'$Candidate, $Heap);
                            assert {:id "id346"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_1_0_0_0;
                            assert {:id "id347"} {:subsumption 0} ##s#0_1_1_1_1_0_0_0 <= ##t#0_1_1_1_1_0_0_0;
                            assert {:id "id348"} {:subsumption 0} ##t#0_1_1_1_1_0_0_0 <= Seq#Length(##a#0_1_1_1_1_0_0_0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, K#0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, K#0);
                            assume false;
                        }
                        else if (*)
                        {
                            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(251,15)
                            ##a#0_1_1_1_1_0_0_1_0 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_1_0_0_1_0, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                            ##s#0_1_1_1_1_0_0_1_0 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_1_0_0_1_0, TInt, $Heap);
                            ##t#0_1_1_1_1_0_0_1_0 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_1_0_0_1_0, TInt, $Heap);
                            ##x#0_1_1_1_1_0_0_1_0 := K#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_1_0_0_1_0, _module._default.FindWinner'$Candidate, $Heap);
                            assume {:id "id338"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_1_0_0_1_0;
                            assume {:id "id339"} {:subsumption 0} ##s#0_1_1_1_1_0_0_1_0 <= ##t#0_1_1_1_1_0_0_1_0;
                            assume {:id "id340"} {:subsumption 0} ##t#0_1_1_1_1_0_0_1_0 <= Seq#Length(##a#0_1_1_1_1_0_0_1_0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, K#0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, K#0);
                            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(251,15)
                            push;
                            pop;
                            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(251,15)
                            ##a#0_1_1_1_1_0_0_1_1 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_1_0_0_1_1, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                            ##s#0_1_1_1_1_0_0_1_1 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_1_0_0_1_1, TInt, $Heap);
                            ##t#0_1_1_1_1_0_0_1_1 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_1_0_0_1_1, TInt, $Heap);
                            assert {:id "id341"} defass#k#0;
                            ##x#0_1_1_1_1_0_0_1_1 := k#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_1_0_0_1_1, _module._default.FindWinner'$Candidate, $Heap);
                            assert {:id "id342"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_1_0_0_1_1;
                            assert {:id "id343"} {:subsumption 0} ##s#0_1_1_1_1_0_0_1_1 <= ##t#0_1_1_1_1_0_0_1_1;
                            assert {:id "id344"} {:subsumption 0} ##t#0_1_1_1_1_0_0_1_1 <= Seq#Length(##a#0_1_1_1_1_0_0_1_1);
                            assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(251,15)
                            assert {:id "id345"} {:subsumption 0} Mul(LitInt(2), 
                                _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, K#0))
                               == Mul(LitInt(2), 
                                _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0));
                            assume false;
                        }
                        else if (*)
                        {
                            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(251,15)
                            ##a#0_1_1_1_1_0_0_0_0 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_1_0_0_0_0, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                            ##s#0_1_1_1_1_0_0_0_0 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_1_0_0_0_0, TInt, $Heap);
                            ##t#0_1_1_1_1_0_0_0_0 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_1_0_0_0_0, TInt, $Heap);
                            assume {:id "id327"} defass#k#0;
                            ##x#0_1_1_1_1_0_0_0_0 := k#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_1_0_0_0_0, _module._default.FindWinner'$Candidate, $Heap);
                            assume {:id "id328"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_1_0_0_0_0;
                            assume {:id "id329"} {:subsumption 0} ##s#0_1_1_1_1_0_0_0_0 <= ##t#0_1_1_1_1_0_0_0_0;
                            assume {:id "id330"} {:subsumption 0} ##t#0_1_1_1_1_0_0_0_0 <= Seq#Length(##a#0_1_1_1_1_0_0_0_0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(251,15)
                            push;
                            push;
                            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(255,21)
                            ##a#0_1_1_1_1_0_0_0_1 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_1_0_0_0_1, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                            ##s#0_1_1_1_1_0_0_0_1 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_1_0_0_0_1, TInt, $Heap);
                            ##t#0_1_1_1_1_0_0_0_1 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_1_0_0_0_1, TInt, $Heap);
                            assert {:id "id331"} defass#k#0;
                            ##x#0_1_1_1_1_0_0_0_1 := k#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_1_0_0_0_1, _module._default.FindWinner'$Candidate, $Heap);
                            assert {:id "id332"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_1_0_0_0_1;
                            assert {:id "id333"} {:subsumption 0} ##s#0_1_1_1_1_0_0_0_1 <= ##t#0_1_1_1_1_0_0_0_1;
                            assert {:id "id334"} {:subsumption 0} ##t#0_1_1_1_1_0_0_0_1 <= Seq#Length(##a#0_1_1_1_1_0_0_0_1);
                            assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                            assert {:id "id335"} {:subsumption 0} Mul(LitInt(2), 
                                _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                               == up#0 - lo#0;
                            assume {:id "id336"} Mul(LitInt(2), 
                                _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LZ), a#0, lo#0, up#0, k#0))
                               == up#0 - lo#0;
                            pop;
                            pop;
                            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(251,15)
                            assume true;
                            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(251,15)
                            assert {:id "id337"} {:subsumption 0} Mul(LitInt(2), 
                                _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                               == up#0 - lo#0;
                            assume false;
                        }

                        assume {:id "id349"} Mul(LitInt(2), 
                            _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LZ), a#0, lo#0, up#0, K#0))
                           == up#0 - lo#0;
                        pop;
                    }
                    else
                    {
                        push;
                        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(259,15)
                        // Assume Fuel Constant
                        if (*)
                        {
                            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(259,15)
                            ##a#0_1_1_1_1_1_0_0 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_1_1_0_0, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                            ##s#0_1_1_1_1_1_0_0 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_1_1_0_0, TInt, $Heap);
                            ##t#0_1_1_1_1_1_0_0 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_1_1_0_0, TInt, $Heap);
                            ##x#0_1_1_1_1_1_0_0 := K#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_1_1_0_0, _module._default.FindWinner'$Candidate, $Heap);
                            assert {:id "id371"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_1_1_0_0;
                            assert {:id "id372"} {:subsumption 0} ##s#0_1_1_1_1_1_0_0 <= ##t#0_1_1_1_1_1_0_0;
                            assert {:id "id373"} {:subsumption 0} ##t#0_1_1_1_1_1_0_0 <= Seq#Length(##a#0_1_1_1_1_1_0_0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, K#0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, K#0);
                            assume false;
                        }
                        else if (*)
                        {
                            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(259,15)
                            ##a#0_1_1_1_1_1_0_1_0 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_1_1_0_1_0, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                            ##s#0_1_1_1_1_1_0_1_0 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_1_1_0_1_0, TInt, $Heap);
                            ##t#0_1_1_1_1_1_0_1_0 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_1_1_0_1_0, TInt, $Heap);
                            ##x#0_1_1_1_1_1_0_1_0 := K#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_1_1_0_1_0, _module._default.FindWinner'$Candidate, $Heap);
                            assume {:id "id361"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_1_1_0_1_0;
                            assume {:id "id362"} {:subsumption 0} ##s#0_1_1_1_1_1_0_1_0 <= ##t#0_1_1_1_1_1_0_1_0;
                            assume {:id "id363"} {:subsumption 0} ##t#0_1_1_1_1_1_0_1_0 <= Seq#Length(##a#0_1_1_1_1_1_0_1_0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, K#0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, K#0);
                            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(259,15)
                            push;
                            push;
                            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(261,33)
                            // TrCallStmt: Before ProcessCallStmt
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            a##0_1_1_1_1_1_0_1_0 := a#0;
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            s##0_1_1_1_1_1_0_1_0 := lo#0;
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            t##0_1_1_1_1_1_0_1_0 := up#0;
                            assert {:id "id364"} defass#k#0;
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            x##0_1_1_1_1_1_0_1_0 := k#0;
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            y##0_1_1_1_1_1_0_1_0 := K#0;
                            call {:id "id365"} Call$$_module.__default.Lemma__Unique(_module._default.FindWinner'$Candidate, a##0_1_1_1_1_1_0_1_0, s##0_1_1_1_1_1_0_1_0, t##0_1_1_1_1_1_0_1_0, x##0_1_1_1_1_1_0_1_0, y##0_1_1_1_1_1_0_1_0);
                            // TrCallStmt: After ProcessCallStmt
                            pop;
                            pop;
                            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(259,15)
                            ##a#0_1_1_1_1_1_0_1_1 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_1_1_0_1_1, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                            ##s#0_1_1_1_1_1_0_1_1 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_1_1_0_1_1, TInt, $Heap);
                            ##t#0_1_1_1_1_1_0_1_1 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_1_1_0_1_1, TInt, $Heap);
                            assert {:id "id366"} defass#k#0;
                            ##x#0_1_1_1_1_1_0_1_1 := k#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_1_1_0_1_1, _module._default.FindWinner'$Candidate, $Heap);
                            assert {:id "id367"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_1_1_0_1_1;
                            assert {:id "id368"} {:subsumption 0} ##s#0_1_1_1_1_1_0_1_1 <= ##t#0_1_1_1_1_1_0_1_1;
                            assert {:id "id369"} {:subsumption 0} ##t#0_1_1_1_1_1_0_1_1 <= Seq#Length(##a#0_1_1_1_1_1_0_1_1);
                            assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                            // ----- assert line0 <= line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(259,15)
                            assert {:id "id370"} {:subsumption 0} Mul(LitInt(2), 
                                _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, K#0))
                               <= Mul(LitInt(2), 
                                up#0
                                   - lo#0
                                   - _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0));
                            assume false;
                        }
                        else if (*)
                        {
                            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(259,15)
                            ##a#0_1_1_1_1_1_0_0_0 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_1_1_0_0_0, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                            ##s#0_1_1_1_1_1_0_0_0 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_1_1_0_0_0, TInt, $Heap);
                            ##t#0_1_1_1_1_1_0_0_0 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_1_1_0_0_0, TInt, $Heap);
                            assume {:id "id350"} defass#k#0;
                            ##x#0_1_1_1_1_1_0_0_0 := k#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_1_1_0_0_0, _module._default.FindWinner'$Candidate, $Heap);
                            assume {:id "id351"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_1_1_0_0_0;
                            assume {:id "id352"} {:subsumption 0} ##s#0_1_1_1_1_1_0_0_0 <= ##t#0_1_1_1_1_1_0_0_0;
                            assume {:id "id353"} {:subsumption 0} ##t#0_1_1_1_1_1_0_0_0 <= Seq#Length(##a#0_1_1_1_1_1_0_0_0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(259,15)
                            push;
                            push;
                            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(263,21)
                            ##a#0_1_1_1_1_1_0_0_1 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_1_1_0_0_1, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                            ##s#0_1_1_1_1_1_0_0_1 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_1_1_0_0_1, TInt, $Heap);
                            ##t#0_1_1_1_1_1_0_0_1 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_1_1_0_0_1, TInt, $Heap);
                            assert {:id "id354"} defass#k#0;
                            ##x#0_1_1_1_1_1_0_0_1 := k#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_1_1_0_0_1, _module._default.FindWinner'$Candidate, $Heap);
                            assert {:id "id355"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_1_1_0_0_1;
                            assert {:id "id356"} {:subsumption 0} ##s#0_1_1_1_1_1_0_0_1 <= ##t#0_1_1_1_1_1_0_0_1;
                            assert {:id "id357"} {:subsumption 0} ##t#0_1_1_1_1_1_0_0_1 <= Seq#Length(##a#0_1_1_1_1_1_0_0_1);
                            assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0);
                            assert {:id "id358"} {:subsumption 0} Mul(LitInt(2), 
                                _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                               == up#0 - lo#0;
                            assume {:id "id359"} Mul(LitInt(2), 
                                _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LZ), a#0, lo#0, up#0, k#0))
                               == up#0 - lo#0;
                            pop;
                            pop;
                            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(259,15)
                            assume true;
                            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(259,15)
                            assert {:id "id360"} {:subsumption 0} Mul(LitInt(2), 
                                up#0
                                   - lo#0
                                   - _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                               == up#0 - lo#0;
                            assume false;
                        }

                        assume {:id "id374"} Mul(LitInt(2), 
                            _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LZ), a#0, lo#0, up#0, K#0))
                           <= up#0 - lo#0;
                        pop;
                    }

                    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(267,13)
                    ##a#0_1_1_1_1_1 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_1_1, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                    ##s#0_1_1_1_1_1 := lo#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_1_1, TInt, $Heap);
                    ##t#0_1_1_1_1_1 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_1_1, TInt, $Heap);
                    ##x#0_1_1_1_1_1 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_1_1, _module._default.FindWinner'$Candidate, $Heap);
                    assert {:id "id375"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_1_1;
                    assert {:id "id376"} {:subsumption 0} ##s#0_1_1_1_1_1 <= ##t#0_1_1_1_1_1;
                    assert {:id "id377"} {:subsumption 0} ##t#0_1_1_1_1_1 <= Seq#Length(##a#0_1_1_1_1_1);
                    assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, K#0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, K#0);
                    assert {:id "id378"} {:subsumption 0} Mul(LitInt(2), 
                        _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, K#0))
                       <= up#0 - lo#0;
                    assume {:id "id379"} Mul(LitInt(2), 
                        _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LZ), a#0, lo#0, up#0, K#0))
                       <= up#0 - lo#0;
                    pop;
                    pop;
                    // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(244,7)
                    assume true;
                    // ----- assert line2 >= line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(244,7)
                    assert {:id "id380"} {:subsumption 0} Seq#Length(a#0)
                         - lo#0
                         - Mul(LitInt(2), 
                          _module.__default.Count(_module._default.FindWinner'$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, K#0))
                       >= Seq#Length(a#0) - lo#0 - (up#0 - lo#0);
                    assume false;
                }
                else if (*)
                {
                    // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(244,7)
                    assume true;
                    // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(244,7)
                    push;
                    pop;
                    // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(244,7)
                    assume true;
                    // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(244,7)
                    assert {:id "id322"} {:subsumption 0} Seq#Length(a#0) - lo#0 - (up#0 - lo#0) == Seq#Length(a#0) - up#0;
                    assume false;
                }

                assume {:id "id410"} Mul(LitInt(2), 
                    _module.__default.Count(_module._default.FindWinner'$Candidate, 
                      $LS($LZ), 
                      a#0, 
                      up#0, 
                      Seq#Length(a#0), 
                      K#0))
                   > Seq#Length(a#0) - up#0;
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(273,7)
                ##a#0_1_1_1 := a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#0_1_1_1, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                ##s#0_1_1_1 := up#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#0_1_1_1, TInt, $Heap);
                ##t#0_1_1_1 := Seq#Length(a#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#0_1_1_1, TInt, $Heap);
                ##x#0_1_1_1 := K#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##x#0_1_1_1, _module._default.FindWinner'$Candidate, $Heap);
                assert {:id "id411"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1;
                assert {:id "id412"} {:subsumption 0} ##s#0_1_1_1 <= ##t#0_1_1_1;
                assert {:id "id413"} {:subsumption 0} ##t#0_1_1_1 <= Seq#Length(##a#0_1_1_1);
                assume _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                assume _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                assert {:id "id414"} {:subsumption 0} _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, up#0, Seq#Length(a#0), K#0)
                   ==> _module.__default.HasMajority(_module._default.FindWinner'$Candidate, a#0, up#0, Seq#Length(a#0), K#0)
                     || Mul(LitInt(2), 
                        _module.__default.Count(_module._default.FindWinner'$Candidate, 
                          $LS($LS($LZ)), 
                          a#0, 
                          up#0, 
                          Seq#Length(a#0), 
                          K#0))
                       > Seq#Length(a#0) - up#0;
                assume {:id "id415"} _module.__default.HasMajority(_module._default.FindWinner'$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(275,20)
                assume true;
                assume true;
                assume true;
                assume true;
                assert {:id "id416"} 0 <= up#0 && up#0 < Seq#Length(a#0);
                assume true;
                $rhs#0_1_1_0 := Seq#Index(a#0, up#0);
                assume true;
                $rhs#0_1_1_1 := up#0;
                assume true;
                $rhs#0_1_1_2 := up#0 + 1;
                assume true;
                $rhs#0_1_1_3 := LitInt(1);
                k#0 := $rhs#0_1_1_0;
                defass#k#0 := true;
                lo#0 := $rhs#0_1_1_1;
                up#0 := $rhs#0_1_1_2;
                c#0 := $rhs#0_1_1_3;
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(276,7)
                ##a#0_1_1_2 := a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#0_1_1_2, TSeq(_module._default.FindWinner'$Candidate), $Heap);
                ##s#0_1_1_2 := lo#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#0_1_1_2, TInt, $Heap);
                ##t#0_1_1_2 := Seq#Length(a#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#0_1_1_2, TInt, $Heap);
                ##x#0_1_1_2 := K#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##x#0_1_1_2, _module._default.FindWinner'$Candidate, $Heap);
                assert {:id "id425"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_2;
                assert {:id "id426"} {:subsumption 0} ##s#0_1_1_2 <= ##t#0_1_1_2;
                assert {:id "id427"} {:subsumption 0} ##t#0_1_1_2 <= Seq#Length(##a#0_1_1_2);
                assume _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
                assume _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
                assert {:id "id428"} {:subsumption 0} _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0)
                   ==> _module.__default.HasMajority(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0)
                     || Mul(LitInt(2), 
                        _module.__default.Count(_module._default.FindWinner'$Candidate, 
                          $LS($LS($LZ)), 
                          a#0, 
                          lo#0, 
                          Seq#Length(a#0), 
                          K#0))
                       > Seq#Length(a#0) - lo#0;
                assume {:id "id429"} _module.__default.HasMajority(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
                pop;
            }

            pop;
        }

        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(205,3)
        assert {:id "id430"} 0 <= $decr$loop#00 || Seq#Length(a#0) - up#0 == $decr$loop#00;
        assert {:id "id431"} Seq#Length(a#0) - up#0 < $decr$loop#00;
        assume LitInt(0) <= lo#0 && lo#0 < up#0 && up#0 <= Seq#Length(a#0)
           ==> _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0)
             && (_module.__default.HasMajority(_module._default.FindWinner'$Candidate, a#0, lo#0, Seq#Length(a#0), K#0)
               ==> _module.__default.HasMajority#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0)
                 && (_module.__default.HasMajority(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0)
                   ==> _module.__default.Count#canCall(_module._default.FindWinner'$Candidate, a#0, lo#0, up#0, k#0)));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(279,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := lo#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##0 := Seq#Length(a#0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := K#0;
    assert {:id "id432"} defass#k#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := k#0;
    call {:id "id433"} Call$$_module.__default.Lemma__Unique(_module._default.FindWinner'$Candidate, a##0, s##0, t##0, x##0, y##0);
    // TrCallStmt: After ProcessCallStmt
    assert {:id "id434"} defass#k#0;
}



procedure {:verboseName "FindWinner'' (well-formedness)"} CheckWellFormed$$_module.__default.FindWinner_k_k(_module._default.FindWinner''$Candidate: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.FindWinner''$Candidate))
         && $IsAlloc(a#0, TSeq(_module._default.FindWinner''$Candidate), $Heap), 
    K#0: Box
       where $IsBox(K#0, _module._default.FindWinner''$Candidate)
         && $IsAllocBox(K#0, _module._default.FindWinner''$Candidate, $Heap))
   returns (k#0: Box
       where $IsBox(k#0, _module._default.FindWinner''$Candidate)
         && $IsAllocBox(k#0, _module._default.FindWinner''$Candidate, $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FindWinner'' (well-formedness)"} CheckWellFormed$$_module.__default.FindWinner_k_k(_module._default.FindWinner''$Candidate: Ty, a#0: Seq, K#0: Box)
   returns (k#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##a#0: Seq;
  var ##s#0: int;
  var ##t#0: int;
  var ##x#0: Box;


    // AddMethodImpl: FindWinner'', CheckWellFormed$$_module.__default.FindWinner_k_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##a#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TSeq(_module._default.FindWinner''$Candidate), $Heap);
    ##s#0 := LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, TInt, $Heap);
    ##t#0 := Seq#Length(a#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#0, TInt, $Heap);
    ##x#0 := K#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##x#0, _module._default.FindWinner''$Candidate, $Heap);
    assert {:id "id435"} {:subsumption 0} LitInt(0) <= ##s#0;
    assert {:id "id436"} {:subsumption 0} ##s#0 <= ##t#0;
    assert {:id "id437"} {:subsumption 0} ##t#0 <= Seq#Length(##a#0);
    assume LitInt(0) <= ##s#0 && ##s#0 <= ##t#0 && ##t#0 <= Seq#Length(##a#0);
    assume _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, LitInt(0), Seq#Length(a#0), K#0);
    assume {:id "id438"} _module.__default.HasMajority(_module._default.FindWinner''$Candidate, a#0, LitInt(0), Seq#Length(a#0), K#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc k#0;
    assume {:id "id439"} k#0 == K#0;
}



procedure {:verboseName "FindWinner'' (call)"} Call$$_module.__default.FindWinner_k_k(_module._default.FindWinner''$Candidate: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.FindWinner''$Candidate))
         && $IsAlloc(a#0, TSeq(_module._default.FindWinner''$Candidate), $Heap), 
    K#0: Box
       where $IsBox(K#0, _module._default.FindWinner''$Candidate)
         && $IsAllocBox(K#0, _module._default.FindWinner''$Candidate, $Heap))
   returns (k#0: Box
       where $IsBox(k#0, _module._default.FindWinner''$Candidate)
         && $IsAllocBox(k#0, _module._default.FindWinner''$Candidate, $Heap));
  // user-defined preconditions
  requires {:id "id440"} _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, LitInt(0), Seq#Length(a#0), K#0)
     ==> _module.__default.HasMajority(_module._default.FindWinner''$Candidate, a#0, LitInt(0), Seq#Length(a#0), K#0)
       || Mul(LitInt(2), 
          _module.__default.Count(_module._default.FindWinner''$Candidate, 
            $LS($LS($LZ)), 
            a#0, 
            LitInt(0), 
            Seq#Length(a#0), 
            K#0))
         > Seq#Length(a#0) - 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id441"} k#0 == K#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FindWinner'' (correctness)"} Impl$$_module.__default.FindWinner_k_k(_module._default.FindWinner''$Candidate: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.FindWinner''$Candidate))
         && $IsAlloc(a#0, TSeq(_module._default.FindWinner''$Candidate), $Heap), 
    K#0: Box
       where $IsBox(K#0, _module._default.FindWinner''$Candidate)
         && $IsAllocBox(K#0, _module._default.FindWinner''$Candidate, $Heap))
   returns (defass#k#0: bool, 
    k#0: Box
       where defass#k#0
         ==> $IsBox(k#0, _module._default.FindWinner''$Candidate)
           && $IsAllocBox(k#0, _module._default.FindWinner''$Candidate, $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id442"} _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, LitInt(0), Seq#Length(a#0), K#0)
     && 
    _module.__default.HasMajority(_module._default.FindWinner''$Candidate, a#0, LitInt(0), Seq#Length(a#0), K#0)
     && Mul(LitInt(2), 
        _module.__default.Count(_module._default.FindWinner''$Candidate, 
          $LS($LZ), 
          a#0, 
          LitInt(0), 
          Seq#Length(a#0), 
          K#0))
       > Seq#Length(a#0) - 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id443"} k#0 == K#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FindWinner'' (correctness)"} Impl$$_module.__default.FindWinner_k_k(_module._default.FindWinner''$Candidate: Ty, a#0: Seq, K#0: Box)
   returns (defass#k#0: bool, k#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var lo#0: int;
  var up#0: int;
  var c#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var $rhs#2: int;
  var $PreLoopHeap$loop#0: Heap;
  var preLoop$loop#0$defass#k#0: bool;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var ##a#1: Seq;
  var ##s#1: int;
  var ##t#1: int;
  var ##x#1: Box;
  var ##a#2: Seq;
  var ##s#2: int;
  var ##t#2: int;
  var ##x#2: Box;
  var ##a#3: Seq;
  var ##s#3: int;
  var ##t#3: int;
  var ##x#3: Box;
  var $decr$loop#00: int;
  var $rhs#0_0_0: int;
  var $rhs#0_0_1: int;
  var ##a#0_1_1_0_0_0: Seq;
  var ##s#0_1_1_0_0_0: int;
  var ##t#0_1_1_0_0_0: int;
  var ##x#0_1_1_0_0_0: Box;
  var ##a#0_1_1_0_0_0_0_0: Seq;
  var ##s#0_1_1_0_0_0_0_0: int;
  var ##t#0_1_1_0_0_0_0_0: int;
  var ##x#0_1_1_0_0_0_0_0: Box;
  var ##a#0_1_1_0_0_0_0_1: Seq;
  var ##s#0_1_1_0_0_0_0_1: int;
  var ##t#0_1_1_0_0_0_0_1: int;
  var ##x#0_1_1_0_0_0_0_1: Box;
  var ##a#0_1_1_0_0_0_1_0: Seq;
  var ##s#0_1_1_0_0_0_1_0: int;
  var ##t#0_1_1_0_0_0_1_0: int;
  var ##x#0_1_1_0_0_0_1_0: Box;
  var ##a#0_1_1_0_0_0_1_1: Seq;
  var ##s#0_1_1_0_0_0_1_1: int;
  var ##t#0_1_1_0_0_0_1_1: int;
  var ##x#0_1_1_0_0_0_1_1: Box;
  var ##a#0_1_1_0_0_0_2_0: Seq;
  var ##s#0_1_1_0_0_0_2_0: int;
  var ##t#0_1_1_0_0_0_2_0: int;
  var ##x#0_1_1_0_0_0_2_0: Box;
  var ##a#0_1_1_0_0_1: Seq;
  var ##s#0_1_1_0_0_1: int;
  var ##t#0_1_1_0_0_1: int;
  var ##x#0_1_1_0_0_1: Box;
  var ##a#0_1_1_0_1_0: Seq;
  var ##s#0_1_1_0_1_0: int;
  var ##t#0_1_1_0_1_0: int;
  var ##x#0_1_1_0_1_0: Box;
  var ##a#0_1_1_0: Seq;
  var ##s#0_1_1_0: int;
  var ##t#0_1_1_0: int;
  var ##x#0_1_1_0: Box;
  var ##a#0_1_1_1_0_0: Seq;
  var ##s#0_1_1_1_0_0: int;
  var ##t#0_1_1_1_0_0: int;
  var ##x#0_1_1_1_0_0: Box;
  var ##a#0_1_1_1_0_1: Seq;
  var ##s#0_1_1_1_0_1: int;
  var ##t#0_1_1_1_0_1: int;
  var ##x#0_1_1_1_0_1: Box;
  var ##a#0_1_1_1_1_0: Seq;
  var ##s#0_1_1_1_1_0: int;
  var ##t#0_1_1_1_1_0: int;
  var ##x#0_1_1_1_1_0: Box;
  var ##a#0_1_1_1_1_1: Seq;
  var ##s#0_1_1_1_1_1: int;
  var ##t#0_1_1_1_1_1: int;
  var ##x#0_1_1_1_1_1: Box;
  var ##a#0_1_1_1_2_0: Seq;
  var ##s#0_1_1_1_2_0: int;
  var ##t#0_1_1_1_2_0: int;
  var ##x#0_1_1_1_2_0: Box;
  var ##a#0_1_1_1_2_1: Seq;
  var ##s#0_1_1_1_2_1: int;
  var ##t#0_1_1_1_2_1: int;
  var ##x#0_1_1_1_2_1: Box;
  var ##a#0_1_1_1_2_0_0_0_0: Seq;
  var ##s#0_1_1_1_2_0_0_0_0: int;
  var ##t#0_1_1_1_2_0_0_0_0: int;
  var ##x#0_1_1_1_2_0_0_0_0: Box;
  var ##a#0_1_1_1_2_0_0_0_1: Seq;
  var ##s#0_1_1_1_2_0_0_0_1: int;
  var ##t#0_1_1_1_2_0_0_0_1: int;
  var ##x#0_1_1_1_2_0_0_0_1: Box;
  var ##a#0_1_1_1_2_0_0_1_0: Seq;
  var ##s#0_1_1_1_2_0_0_1_0: int;
  var ##t#0_1_1_1_2_0_0_1_0: int;
  var ##x#0_1_1_1_2_0_0_1_0: Box;
  var ##a#0_1_1_1_2_0_0_1_1: Seq;
  var ##s#0_1_1_1_2_0_0_1_1: int;
  var ##t#0_1_1_1_2_0_0_1_1: int;
  var ##x#0_1_1_1_2_0_0_1_1: Box;
  var ##a#0_1_1_1_2_0_0_0: Seq;
  var ##s#0_1_1_1_2_0_0_0: int;
  var ##t#0_1_1_1_2_0_0_0: int;
  var ##x#0_1_1_1_2_0_0_0: Box;
  var ##a#0_1_1_1_2_1_0_0_0: Seq;
  var ##s#0_1_1_1_2_1_0_0_0: int;
  var ##t#0_1_1_1_2_1_0_0_0: int;
  var ##x#0_1_1_1_2_1_0_0_0: Box;
  var ##a#0_1_1_1_2_1_0_0_1: Seq;
  var ##s#0_1_1_1_2_1_0_0_1: int;
  var ##t#0_1_1_1_2_1_0_0_1: int;
  var ##x#0_1_1_1_2_1_0_0_1: Box;
  var ##a#0_1_1_1_2_1_0_0_2: Seq;
  var ##s#0_1_1_1_2_1_0_0_2: int;
  var ##t#0_1_1_1_2_1_0_0_2: int;
  var ##x#0_1_1_1_2_1_0_0_2: Box;
  var ##a#0_1_1_1_2_1_0_0_3: Seq;
  var ##s#0_1_1_1_2_1_0_0_3: int;
  var ##t#0_1_1_1_2_1_0_0_3: int;
  var ##x#0_1_1_1_2_1_0_0_3: Box;
  var ##a#0_1_1_1_2_1_0_1_0: Seq;
  var ##s#0_1_1_1_2_1_0_1_0: int;
  var ##t#0_1_1_1_2_1_0_1_0: int;
  var ##x#0_1_1_1_2_1_0_1_0: Box;
  var ##a#0_1_1_1_2_1_0_1_1: Seq;
  var ##s#0_1_1_1_2_1_0_1_1: int;
  var ##t#0_1_1_1_2_1_0_1_1: int;
  var ##x#0_1_1_1_2_1_0_1_1: Box;
  var ##a#0_1_1_1_2_1_0_1_2: Seq;
  var ##s#0_1_1_1_2_1_0_1_2: int;
  var ##t#0_1_1_1_2_1_0_1_2: int;
  var ##x#0_1_1_1_2_1_0_1_2: Box;
  var ##a#0_1_1_1_2_1_0_1_3: Seq;
  var ##s#0_1_1_1_2_1_0_1_3: int;
  var ##t#0_1_1_1_2_1_0_1_3: int;
  var ##x#0_1_1_1_2_1_0_1_3: Box;
  var a##0_1_1_1_2_1_0_2_0: Seq;
  var s##0_1_1_1_2_1_0_2_0: int;
  var t##0_1_1_1_2_1_0_2_0: int;
  var x##0_1_1_1_2_1_0_2_0: Box;
  var y##0_1_1_1_2_1_0_2_0: Box;
  var ##a#0_1_1_1_2_1_0_2_0: Seq;
  var ##s#0_1_1_1_2_1_0_2_0: int;
  var ##t#0_1_1_1_2_1_0_2_0: int;
  var ##x#0_1_1_1_2_1_0_2_0: Box;
  var ##a#0_1_1_1_2_1_0_2_1: Seq;
  var ##s#0_1_1_1_2_1_0_2_1: int;
  var ##t#0_1_1_1_2_1_0_2_1: int;
  var ##x#0_1_1_1_2_1_0_2_1: Box;
  var ##a#0_1_1_1_2_2: Seq;
  var ##s#0_1_1_1_2_2: int;
  var ##t#0_1_1_1_2_2: int;
  var ##x#0_1_1_1_2_2: Box;
  var ##a#0_1_1_1_2_3: Seq;
  var ##s#0_1_1_1_2_3: int;
  var ##t#0_1_1_1_2_3: int;
  var ##x#0_1_1_1_2_3: Box;
  var ##a#0_1_1_1_3_0: Seq;
  var ##s#0_1_1_1_3_0: int;
  var ##t#0_1_1_1_3_0: int;
  var ##x#0_1_1_1_3_0: Box;
  var a##0_1_1_1_3_0: Seq;
  var s##0_1_1_1_3_0: int;
  var t##0_1_1_1_3_0: int;
  var u##0_1_1_1_3_0: int;
  var x##0_1_1_1_3_0: Box;
  var ##a#0_1_1_1_3_1: Seq;
  var ##s#0_1_1_1_3_1: int;
  var ##t#0_1_1_1_3_1: int;
  var ##x#0_1_1_1_3_1: Box;
  var ##a#0_1_1_1_3_2: Seq;
  var ##s#0_1_1_1_3_2: int;
  var ##t#0_1_1_1_3_2: int;
  var ##x#0_1_1_1_3_2: Box;
  var ##a#0_1_1_1_4_0: Seq;
  var ##s#0_1_1_1_4_0: int;
  var ##t#0_1_1_1_4_0: int;
  var ##x#0_1_1_1_4_0: Box;
  var ##a#0_1_1_1_4_1: Seq;
  var ##s#0_1_1_1_4_1: int;
  var ##t#0_1_1_1_4_1: int;
  var ##x#0_1_1_1_4_1: Box;
  var ##a#0_1_1_1_5_0: Seq;
  var ##s#0_1_1_1_5_0: int;
  var ##t#0_1_1_1_5_0: int;
  var ##x#0_1_1_1_5_0: Box;
  var $rhs#0_1_1_0: Box;
  var $rhs#0_1_1_1: int;
  var $rhs#0_1_1_2: int;
  var $rhs#0_1_1_3: int;
  var ##a#0_1_1_1: Seq;
  var ##s#0_1_1_1: int;
  var ##t#0_1_1_1: int;
  var ##x#0_1_1_1: Box;
  var a##0: Seq;
  var s##0: int;
  var t##0: int;
  var x##0: Box;
  var y##0: Box;

    // AddMethodImpl: FindWinner'', Impl$$_module.__default.FindWinner_k_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(287,5)
    assume true;
    assert {:id "id444"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
    assume true;
    k#0 := Seq#Index(a#0, LitInt(0));
    defass#k#0 := true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(288,17)
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := LitInt(1);
    assume true;
    $rhs#2 := LitInt(1);
    lo#0 := $rhs#0;
    up#0 := $rhs#1;
    c#0 := $rhs#2;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(289,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    preLoop$loop#0$defass#k#0 := defass#k#0;
    $decr_init$loop#00 := Seq#Length(a#0) - up#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id453"} $w$loop#0 ==> LitInt(0) <= lo#0;
      invariant {:id "id454"} $w$loop#0 ==> lo#0 < up#0;
      invariant {:id "id455"} $w$loop#0 ==> up#0 <= Seq#Length(a#0);
      free invariant $w$loop#0
         ==> _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
      invariant {:id "id460"} $w$loop#0
         ==> 
        _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0)
         ==> _module.__default.HasMajority(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0)
           || Mul(LitInt(2), 
              _module.__default.Count(_module._default.FindWinner''$Candidate, 
                $LS($LS($LZ)), 
                a#0, 
                lo#0, 
                Seq#Length(a#0), 
                K#0))
             > Seq#Length(a#0) - lo#0;
      free invariant {:id "id461"} $w$loop#0
         ==> _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0)
           && 
          _module.__default.HasMajority(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0)
           && Mul(LitInt(2), 
              _module.__default.Count(_module._default.FindWinner''$Candidate, 
                $LS($LZ), 
                a#0, 
                lo#0, 
                Seq#Length(a#0), 
                K#0))
             > Seq#Length(a#0) - lo#0;
      free invariant $w$loop#0
         ==> _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
      invariant {:id "id467"} $w$loop#0
         ==> 
        _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0)
         ==> _module.__default.HasMajority(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0)
           || Mul(LitInt(2), 
              _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
             > up#0 - lo#0;
      free invariant {:id "id468"} $w$loop#0
         ==> _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0)
           && 
          _module.__default.HasMajority(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0)
           && Mul(LitInt(2), 
              _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LZ), a#0, lo#0, up#0, k#0))
             > up#0 - lo#0;
      free invariant $w$loop#0
         ==> _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
      invariant {:id "id474"} $w$loop#0
         ==> c#0
           == _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant preLoop$loop#0$defass#k#0 ==> defass#k#0;
      free invariant Seq#Length(a#0) - up#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= lo#0)
            {
            }

            if (LitInt(0) <= lo#0 && lo#0 < up#0)
            {
            }

            assume true;
            assume {:id "id452"} LitInt(0) <= lo#0 && lo#0 < up#0 && up#0 <= Seq#Length(a#0);
            ##a#1 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1, TSeq(_module._default.FindWinner''$Candidate), $Heap);
            ##s#1 := lo#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1, TInt, $Heap);
            ##t#1 := Seq#Length(a#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#1, TInt, $Heap);
            ##x#1 := K#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#1, _module._default.FindWinner''$Candidate, $Heap);
            assert {:id "id456"} {:subsumption 0} LitInt(0) <= ##s#1;
            assert {:id "id457"} {:subsumption 0} ##s#1 <= ##t#1;
            assert {:id "id458"} {:subsumption 0} ##t#1 <= Seq#Length(##a#1);
            assume _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
            assume _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
            assume {:id "id459"} _module.__default.HasMajority(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
            ##a#2 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#2, TSeq(_module._default.FindWinner''$Candidate), $Heap);
            ##s#2 := lo#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#2, TInt, $Heap);
            ##t#2 := up#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#2, TInt, $Heap);
            assert {:id "id462"} defass#k#0;
            ##x#2 := k#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#2, _module._default.FindWinner''$Candidate, $Heap);
            assert {:id "id463"} {:subsumption 0} LitInt(0) <= ##s#2;
            assert {:id "id464"} {:subsumption 0} ##s#2 <= ##t#2;
            assert {:id "id465"} {:subsumption 0} ##t#2 <= Seq#Length(##a#2);
            assume _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
            assume _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
            assume {:id "id466"} _module.__default.HasMajority(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
            ##a#3 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#3, TSeq(_module._default.FindWinner''$Candidate), $Heap);
            ##s#3 := lo#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#3, TInt, $Heap);
            ##t#3 := up#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#3, TInt, $Heap);
            assert {:id "id469"} defass#k#0;
            ##x#3 := k#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#3, _module._default.FindWinner''$Candidate, $Heap);
            assert {:id "id470"} {:subsumption 0} LitInt(0) <= ##s#3;
            assert {:id "id471"} {:subsumption 0} ##s#3 <= ##t#3;
            assert {:id "id472"} {:subsumption 0} ##t#3 <= Seq#Length(##a#3);
            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
            assume {:id "id473"} c#0
               == _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LZ), a#0, lo#0, up#0, k#0);
            assume true;
            assume false;
        }

        assume true;
        if (Seq#Length(a#0) <= up#0)
        {
            break;
        }

        $decr$loop#00 := Seq#Length(a#0) - up#0;
        push;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(295,5)
        assert {:id "id475"} 0 <= up#0 && up#0 < Seq#Length(a#0);
        assert {:id "id476"} defass#k#0;
        assume true;
        if (Seq#Index(a#0, up#0) == k#0)
        {
            push;
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(297,13)
            assume true;
            assume true;
            assume true;
            $rhs#0_0_0 := up#0 + 1;
            assume true;
            $rhs#0_0_1 := c#0 + 1;
            up#0 := $rhs#0_0_0;
            c#0 := $rhs#0_0_1;
            pop;
        }
        else
        {
            push;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(298,12)
            assume true;
            if (Mul(LitInt(2), c#0) > up#0 + 1 - lo#0)
            {
                push;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(300,10)
                assume true;
                assume true;
                up#0 := up#0 + 1;
                pop;
            }
            else
            {
                push;
                // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(304,7)
                // Assume Fuel Constant
                if (*)
                {
                    // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(304,7)
                    assume true;
                    assume false;
                }
                else if (*)
                {
                    // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(304,7)
                    assume true;
                    // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(304,7)
                    push;
                    pop;
                    // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(304,7)
                    assume true;
                    // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(304,7)
                    assert {:id "id520"} {:subsumption 0} Lit(true) == (Mul(LitInt(2), c#0) <= up#0 + 1 - lo#0);
                    assume false;
                }
                else if (*)
                {
                    // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(304,7)
                    assume true;
                    // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(304,7)
                    push;
                    pop;
                    // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(304,7)
                    ##a#0_1_1_0_1_0 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_0_1_0, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                    ##s#0_1_1_0_1_0 := lo#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_0_1_0, TInt, $Heap);
                    ##t#0_1_1_0_1_0 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_0_1_0, TInt, $Heap);
                    assert {:id "id515"} defass#k#0;
                    ##x#0_1_1_0_1_0 := k#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_0_1_0, _module._default.FindWinner''$Candidate, $Heap);
                    assert {:id "id516"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_0_1_0;
                    assert {:id "id517"} {:subsumption 0} ##s#0_1_1_0_1_0 <= ##t#0_1_1_0_1_0;
                    assert {:id "id518"} {:subsumption 0} ##t#0_1_1_0_1_0 <= Seq#Length(##a#0_1_1_0_1_0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                    // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(304,7)
                    assert {:id "id519"} {:subsumption 0} (Mul(LitInt(2), c#0) <= up#0 + 1 - lo#0)
                       == (Mul(LitInt(2), 
                          _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                         <= up#0 + 1 - lo#0);
                    assume false;
                }
                else if (*)
                {
                    // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(304,7)
                    ##a#0_1_1_0_0_0 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_0_0_0, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                    ##s#0_1_1_0_0_0 := lo#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_0_0_0, TInt, $Heap);
                    ##t#0_1_1_0_0_0 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_0_0_0, TInt, $Heap);
                    assume {:id "id482"} defass#k#0;
                    ##x#0_1_1_0_0_0 := k#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_0_0_0, _module._default.FindWinner''$Candidate, $Heap);
                    assume {:id "id483"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_0_0_0;
                    assume {:id "id484"} {:subsumption 0} ##s#0_1_1_0_0_0 <= ##t#0_1_1_0_0_0;
                    assume {:id "id485"} {:subsumption 0} ##t#0_1_1_0_0_0 <= Seq#Length(##a#0_1_1_0_0_0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                    // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(304,7)
                    push;
                    // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(310,11)
                    // Assume Fuel Constant
                    if (*)
                    {
                        // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(310,11)
                        assume true;
                        assume false;
                    }
                    else if (*)
                    {
                        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(310,11)
                        assume true;
                        // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(310,11)
                        push;
                        pop;
                        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(310,11)
                        ##a#0_1_1_0_0_0_2_0 := a#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##a#0_1_1_0_0_0_2_0, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                        ##s#0_1_1_0_0_0_2_0 := lo#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##s#0_1_1_0_0_0_2_0, TInt, $Heap);
                        ##t#0_1_1_0_0_0_2_0 := up#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#0_1_1_0_0_0_2_0, TInt, $Heap);
                        assert {:id "id504"} defass#k#0;
                        ##x#0_1_1_0_0_0_2_0 := k#0;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#0_1_1_0_0_0_2_0, _module._default.FindWinner''$Candidate, $Heap);
                        assert {:id "id505"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_0_0_0_2_0;
                        assert {:id "id506"} {:subsumption 0} ##s#0_1_1_0_0_0_2_0 <= ##t#0_1_1_0_0_0_2_0;
                        assert {:id "id507"} {:subsumption 0} ##t#0_1_1_0_0_0_2_0 <= Seq#Length(##a#0_1_1_0_0_0_2_0);
                        assume _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                        assume _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                        // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(310,11)
                        assert {:id "id508"} {:subsumption 0} Lit(true)
                           == _module.__default.HasMajority(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                        assume false;
                    }
                    else if (*)
                    {
                        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(310,11)
                        ##a#0_1_1_0_0_0_1_0 := a#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##a#0_1_1_0_0_0_1_0, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                        ##s#0_1_1_0_0_0_1_0 := lo#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##s#0_1_1_0_0_0_1_0, TInt, $Heap);
                        ##t#0_1_1_0_0_0_1_0 := up#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#0_1_1_0_0_0_1_0, TInt, $Heap);
                        assume {:id "id495"} defass#k#0;
                        ##x#0_1_1_0_0_0_1_0 := k#0;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#0_1_1_0_0_0_1_0, _module._default.FindWinner''$Candidate, $Heap);
                        assume {:id "id496"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_0_0_0_1_0;
                        assume {:id "id497"} {:subsumption 0} ##s#0_1_1_0_0_0_1_0 <= ##t#0_1_1_0_0_0_1_0;
                        assume {:id "id498"} {:subsumption 0} ##t#0_1_1_0_0_0_1_0 <= Seq#Length(##a#0_1_1_0_0_0_1_0);
                        assume _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                        assume _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                        // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(310,11)
                        push;
                        pop;
                        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(310,11)
                        ##a#0_1_1_0_0_0_1_1 := a#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##a#0_1_1_0_0_0_1_1, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                        ##s#0_1_1_0_0_0_1_1 := lo#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##s#0_1_1_0_0_0_1_1, TInt, $Heap);
                        ##t#0_1_1_0_0_0_1_1 := up#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#0_1_1_0_0_0_1_1, TInt, $Heap);
                        assert {:id "id499"} defass#k#0;
                        ##x#0_1_1_0_0_0_1_1 := k#0;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#0_1_1_0_0_0_1_1, _module._default.FindWinner''$Candidate, $Heap);
                        assert {:id "id500"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_0_0_0_1_1;
                        assert {:id "id501"} {:subsumption 0} ##s#0_1_1_0_0_0_1_1 <= ##t#0_1_1_0_0_0_1_1;
                        assert {:id "id502"} {:subsumption 0} ##t#0_1_1_0_0_0_1_1 <= Seq#Length(##a#0_1_1_0_0_0_1_1);
                        assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                        assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                        // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(310,11)
                        assert {:id "id503"} {:subsumption 0} _module.__default.HasMajority(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0)
                           == (Mul(LitInt(2), 
                              _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                             > up#0 - lo#0);
                        assume false;
                    }
                    else if (*)
                    {
                        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(310,11)
                        ##a#0_1_1_0_0_0_0_0 := a#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##a#0_1_1_0_0_0_0_0, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                        ##s#0_1_1_0_0_0_0_0 := lo#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##s#0_1_1_0_0_0_0_0, TInt, $Heap);
                        ##t#0_1_1_0_0_0_0_0 := up#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#0_1_1_0_0_0_0_0, TInt, $Heap);
                        assume {:id "id486"} defass#k#0;
                        ##x#0_1_1_0_0_0_0_0 := k#0;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#0_1_1_0_0_0_0_0, _module._default.FindWinner''$Candidate, $Heap);
                        assume {:id "id487"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_0_0_0_0_0;
                        assume {:id "id488"} {:subsumption 0} ##s#0_1_1_0_0_0_0_0 <= ##t#0_1_1_0_0_0_0_0;
                        assume {:id "id489"} {:subsumption 0} ##t#0_1_1_0_0_0_0_0 <= Seq#Length(##a#0_1_1_0_0_0_0_0);
                        assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                        assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                        // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(310,11)
                        push;
                        pop;
                        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(310,11)
                        ##a#0_1_1_0_0_0_0_1 := a#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##a#0_1_1_0_0_0_0_1, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                        ##s#0_1_1_0_0_0_0_1 := lo#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##s#0_1_1_0_0_0_0_1, TInt, $Heap);
                        ##t#0_1_1_0_0_0_0_1 := up#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#0_1_1_0_0_0_0_1, TInt, $Heap);
                        assert {:id "id490"} defass#k#0;
                        ##x#0_1_1_0_0_0_0_1 := k#0;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#0_1_1_0_0_0_0_1, _module._default.FindWinner''$Candidate, $Heap);
                        assert {:id "id491"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_0_0_0_0_1;
                        assert {:id "id492"} {:subsumption 0} ##s#0_1_1_0_0_0_0_1 <= ##t#0_1_1_0_0_0_0_1;
                        assert {:id "id493"} {:subsumption 0} ##t#0_1_1_0_0_0_0_1 <= Seq#Length(##a#0_1_1_0_0_0_0_1);
                        assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                        assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                        // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(310,11)
                        assert {:id "id494"} {:subsumption 0} (Mul(LitInt(2), 
                              _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                             > up#0 - lo#0)
                           == (Mul(LitInt(2), 
                              _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                             >= up#0 + 1 - lo#0);
                        assume false;
                    }

                    assume {:id "id509"} true
                       ==> Mul(LitInt(2), 
                          _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LZ), a#0, lo#0, up#0, k#0))
                         >= up#0 + 1 - lo#0;
                    pop;
                    // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(304,7)
                    ##a#0_1_1_0_0_1 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_0_0_1, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                    ##s#0_1_1_0_0_1 := lo#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_0_0_1, TInt, $Heap);
                    ##t#0_1_1_0_0_1 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_0_0_1, TInt, $Heap);
                    assert {:id "id510"} defass#k#0;
                    ##x#0_1_1_0_0_1 := k#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_0_0_1, _module._default.FindWinner''$Candidate, $Heap);
                    assert {:id "id511"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_0_0_1;
                    assert {:id "id512"} {:subsumption 0} ##s#0_1_1_0_0_1 <= ##t#0_1_1_0_0_1;
                    assert {:id "id513"} {:subsumption 0} ##t#0_1_1_0_0_1 <= Seq#Length(##a#0_1_1_0_0_1);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                    // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(304,7)
                    assert {:id "id514"} {:subsumption 0} (Mul(LitInt(2), 
                          _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                         <= up#0 + 1 - lo#0)
                       == 
                      (Mul(LitInt(2), 
                        _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                       == up#0 + 1 - lo#0);
                    assume false;
                }

                assume {:id "id521"} true
                   ==> Mul(LitInt(2), 
                      _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LZ), a#0, lo#0, up#0, k#0))
                     == up#0 + 1 - lo#0;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(321,10)
                assume true;
                assume true;
                up#0 := up#0 + 1;
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(322,7)
                ##a#0_1_1_0 := a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#0_1_1_0, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                ##s#0_1_1_0 := lo#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#0_1_1_0, TInt, $Heap);
                ##t#0_1_1_0 := up#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#0_1_1_0, TInt, $Heap);
                assert {:id "id523"} defass#k#0;
                ##x#0_1_1_0 := k#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##x#0_1_1_0, _module._default.FindWinner''$Candidate, $Heap);
                assert {:id "id524"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_0;
                assert {:id "id525"} {:subsumption 0} ##s#0_1_1_0 <= ##t#0_1_1_0;
                assert {:id "id526"} {:subsumption 0} ##t#0_1_1_0 <= Seq#Length(##a#0_1_1_0);
                assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                assert {:id "id527"} {:subsumption 0} Mul(LitInt(2), 
                    _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                   == up#0 - lo#0;
                assume {:id "id528"} Mul(LitInt(2), 
                    _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LZ), a#0, lo#0, up#0, k#0))
                   == up#0 - lo#0;
                // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                // Assume Fuel Constant
                if (*)
                {
                    // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    assume true;
                    assume false;
                }
                else if (*)
                {
                    // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    assume true;
                    // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    push;
                    pop;
                    // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    ##a#0_1_1_1_5_0 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_5_0, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                    ##s#0_1_1_1_5_0 := lo#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_5_0, TInt, $Heap);
                    ##t#0_1_1_1_5_0 := Seq#Length(a#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_5_0, TInt, $Heap);
                    ##x#0_1_1_1_5_0 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_5_0, _module._default.FindWinner''$Candidate, $Heap);
                    assert {:id "id644"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_5_0;
                    assert {:id "id645"} {:subsumption 0} ##s#0_1_1_1_5_0 <= ##t#0_1_1_1_5_0;
                    assert {:id "id646"} {:subsumption 0} ##t#0_1_1_1_5_0 <= Seq#Length(##a#0_1_1_1_5_0);
                    assume _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
                    assume _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
                    // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    assert {:id "id647"} {:subsumption 0} Lit(true)
                       == _module.__default.HasMajority(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
                    assume false;
                }
                else if (*)
                {
                    // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    ##a#0_1_1_1_4_0 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_4_0, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                    ##s#0_1_1_1_4_0 := lo#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_4_0, TInt, $Heap);
                    ##t#0_1_1_1_4_0 := Seq#Length(a#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_4_0, TInt, $Heap);
                    ##x#0_1_1_1_4_0 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_4_0, _module._default.FindWinner''$Candidate, $Heap);
                    assume {:id "id637"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_4_0;
                    assume {:id "id638"} {:subsumption 0} ##s#0_1_1_1_4_0 <= ##t#0_1_1_1_4_0;
                    assume {:id "id639"} {:subsumption 0} ##t#0_1_1_1_4_0 <= Seq#Length(##a#0_1_1_1_4_0);
                    assume _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
                    assume _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
                    // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    push;
                    pop;
                    // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    ##a#0_1_1_1_4_1 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_4_1, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                    ##s#0_1_1_1_4_1 := lo#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_4_1, TInt, $Heap);
                    ##t#0_1_1_1_4_1 := Seq#Length(a#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_4_1, TInt, $Heap);
                    ##x#0_1_1_1_4_1 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_4_1, _module._default.FindWinner''$Candidate, $Heap);
                    assert {:id "id640"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_4_1;
                    assert {:id "id641"} {:subsumption 0} ##s#0_1_1_1_4_1 <= ##t#0_1_1_1_4_1;
                    assert {:id "id642"} {:subsumption 0} ##t#0_1_1_1_4_1 <= Seq#Length(##a#0_1_1_1_4_1);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
                    // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    assert {:id "id643"} {:subsumption 0} _module.__default.HasMajority(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0)
                       == (Mul(LitInt(2), 
                          _module.__default.Count(_module._default.FindWinner''$Candidate, 
                            $LS($LS($LZ)), 
                            a#0, 
                            lo#0, 
                            Seq#Length(a#0), 
                            K#0))
                         > Seq#Length(a#0) - lo#0);
                    assume false;
                }
                else if (*)
                {
                    // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    ##a#0_1_1_1_3_0 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_3_0, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                    ##s#0_1_1_1_3_0 := lo#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_3_0, TInt, $Heap);
                    ##t#0_1_1_1_3_0 := Seq#Length(a#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_3_0, TInt, $Heap);
                    ##x#0_1_1_1_3_0 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_3_0, _module._default.FindWinner''$Candidate, $Heap);
                    assume {:id "id626"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_3_0;
                    assume {:id "id627"} {:subsumption 0} ##s#0_1_1_1_3_0 <= ##t#0_1_1_1_3_0;
                    assume {:id "id628"} {:subsumption 0} ##t#0_1_1_1_3_0 <= Seq#Length(##a#0_1_1_1_3_0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
                    // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    push;
                    push;
                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(334,24)
                    // TrCallStmt: Before ProcessCallStmt
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    a##0_1_1_1_3_0 := a#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    s##0_1_1_1_3_0 := lo#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    t##0_1_1_1_3_0 := up#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    u##0_1_1_1_3_0 := Seq#Length(a#0);
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    x##0_1_1_1_3_0 := K#0;
                    call {:id "id629"} Call$$_module.__default.Lemma__Split(_module._default.FindWinner''$Candidate, a##0_1_1_1_3_0, s##0_1_1_1_3_0, t##0_1_1_1_3_0, u##0_1_1_1_3_0, x##0_1_1_1_3_0);
                    // TrCallStmt: After ProcessCallStmt
                    pop;
                    pop;
                    // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    ##a#0_1_1_1_3_1 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_3_1, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                    ##s#0_1_1_1_3_1 := lo#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_3_1, TInt, $Heap);
                    ##t#0_1_1_1_3_1 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_3_1, TInt, $Heap);
                    ##x#0_1_1_1_3_1 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_3_1, _module._default.FindWinner''$Candidate, $Heap);
                    assert {:id "id630"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_3_1;
                    assert {:id "id631"} {:subsumption 0} ##s#0_1_1_1_3_1 <= ##t#0_1_1_1_3_1;
                    assert {:id "id632"} {:subsumption 0} ##t#0_1_1_1_3_1 <= Seq#Length(##a#0_1_1_1_3_1);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, K#0);
                    ##a#0_1_1_1_3_2 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_3_2, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                    ##s#0_1_1_1_3_2 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_3_2, TInt, $Heap);
                    ##t#0_1_1_1_3_2 := Seq#Length(a#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_3_2, TInt, $Heap);
                    ##x#0_1_1_1_3_2 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_3_2, _module._default.FindWinner''$Candidate, $Heap);
                    assert {:id "id633"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_3_2;
                    assert {:id "id634"} {:subsumption 0} ##s#0_1_1_1_3_2 <= ##t#0_1_1_1_3_2;
                    assert {:id "id635"} {:subsumption 0} ##t#0_1_1_1_3_2 <= Seq#Length(##a#0_1_1_1_3_2);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, K#0)
                       && _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                    // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    assert {:id "id636"} {:subsumption 0} (Mul(LitInt(2), 
                          _module.__default.Count(_module._default.FindWinner''$Candidate, 
                            $LS($LS($LZ)), 
                            a#0, 
                            lo#0, 
                            Seq#Length(a#0), 
                            K#0))
                         > Seq#Length(a#0) - lo#0)
                       == (Mul(LitInt(2), 
                            _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, K#0))
                           + Mul(LitInt(2), 
                            _module.__default.Count(_module._default.FindWinner''$Candidate, 
                              $LS($LS($LZ)), 
                              a#0, 
                              up#0, 
                              Seq#Length(a#0), 
                              K#0))
                         > Seq#Length(a#0) - lo#0);
                    assume false;
                }
                else if (*)
                {
                    // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    ##a#0_1_1_1_2_0 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_2_0, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                    ##s#0_1_1_1_2_0 := lo#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_2_0, TInt, $Heap);
                    ##t#0_1_1_1_2_0 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_2_0, TInt, $Heap);
                    ##x#0_1_1_1_2_0 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_2_0, _module._default.FindWinner''$Candidate, $Heap);
                    assume {:id "id543"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_0;
                    assume {:id "id544"} {:subsumption 0} ##s#0_1_1_1_2_0 <= ##t#0_1_1_1_2_0;
                    assume {:id "id545"} {:subsumption 0} ##t#0_1_1_1_2_0 <= Seq#Length(##a#0_1_1_1_2_0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, K#0);
                    ##a#0_1_1_1_2_1 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_2_1, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                    ##s#0_1_1_1_2_1 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_2_1, TInt, $Heap);
                    ##t#0_1_1_1_2_1 := Seq#Length(a#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_2_1, TInt, $Heap);
                    ##x#0_1_1_1_2_1 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_2_1, _module._default.FindWinner''$Candidate, $Heap);
                    assume {:id "id546"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_1;
                    assume {:id "id547"} {:subsumption 0} ##s#0_1_1_1_2_1 <= ##t#0_1_1_1_2_1;
                    assume {:id "id548"} {:subsumption 0} ##t#0_1_1_1_2_1 <= Seq#Length(##a#0_1_1_1_2_1);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, K#0)
                       && _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                    // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    assume {:id "id549"} Mul(LitInt(2), 
                          _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LZ), a#0, lo#0, up#0, K#0))
                         + Mul(LitInt(2), 
                          _module.__default.Count(_module._default.FindWinner''$Candidate, 
                            $LS($LZ), 
                            a#0, 
                            up#0, 
                            Seq#Length(a#0), 
                            K#0))
                       > Seq#Length(a#0) - lo#0;
                    // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    push;
                    push;
                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(337,11)
                    assert {:id "id550"} defass#k#0;
                    assume true;
                    if (k#0 == K#0)
                    {
                        push;
                        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(338,13)
                        // Assume Fuel Constant
                        if (*)
                        {
                            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(338,13)
                            ##a#0_1_1_1_2_0_0_0 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_2_0_0_0, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                            ##s#0_1_1_1_2_0_0_0 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_2_0_0_0, TInt, $Heap);
                            ##t#0_1_1_1_2_0_0_0 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_2_0_0_0, TInt, $Heap);
                            ##x#0_1_1_1_2_0_0_0 := K#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_2_0_0_0, _module._default.FindWinner''$Candidate, $Heap);
                            assert {:id "id570"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_0_0_0;
                            assert {:id "id571"} {:subsumption 0} ##s#0_1_1_1_2_0_0_0 <= ##t#0_1_1_1_2_0_0_0;
                            assert {:id "id572"} {:subsumption 0} ##t#0_1_1_1_2_0_0_0 <= Seq#Length(##a#0_1_1_1_2_0_0_0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, K#0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, K#0);
                            assume false;
                        }
                        else if (*)
                        {
                            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(338,13)
                            ##a#0_1_1_1_2_0_0_1_0 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_2_0_0_1_0, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                            ##s#0_1_1_1_2_0_0_1_0 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_2_0_0_1_0, TInt, $Heap);
                            ##t#0_1_1_1_2_0_0_1_0 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_2_0_0_1_0, TInt, $Heap);
                            ##x#0_1_1_1_2_0_0_1_0 := K#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_2_0_0_1_0, _module._default.FindWinner''$Candidate, $Heap);
                            assume {:id "id562"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_0_0_1_0;
                            assume {:id "id563"} {:subsumption 0} ##s#0_1_1_1_2_0_0_1_0 <= ##t#0_1_1_1_2_0_0_1_0;
                            assume {:id "id564"} {:subsumption 0} ##t#0_1_1_1_2_0_0_1_0 <= Seq#Length(##a#0_1_1_1_2_0_0_1_0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, K#0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, K#0);
                            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(338,13)
                            push;
                            pop;
                            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(338,13)
                            ##a#0_1_1_1_2_0_0_1_1 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_2_0_0_1_1, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                            ##s#0_1_1_1_2_0_0_1_1 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_2_0_0_1_1, TInt, $Heap);
                            ##t#0_1_1_1_2_0_0_1_1 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_2_0_0_1_1, TInt, $Heap);
                            assert {:id "id565"} defass#k#0;
                            ##x#0_1_1_1_2_0_0_1_1 := k#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_2_0_0_1_1, _module._default.FindWinner''$Candidate, $Heap);
                            assert {:id "id566"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_0_0_1_1;
                            assert {:id "id567"} {:subsumption 0} ##s#0_1_1_1_2_0_0_1_1 <= ##t#0_1_1_1_2_0_0_1_1;
                            assert {:id "id568"} {:subsumption 0} ##t#0_1_1_1_2_0_0_1_1 <= Seq#Length(##a#0_1_1_1_2_0_0_1_1);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(338,13)
                            assert {:id "id569"} {:subsumption 0} Mul(LitInt(2), 
                                _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, K#0))
                               == Mul(LitInt(2), 
                                _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0));
                            assume false;
                        }
                        else if (*)
                        {
                            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(338,13)
                            ##a#0_1_1_1_2_0_0_0_0 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_2_0_0_0_0, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                            ##s#0_1_1_1_2_0_0_0_0 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_2_0_0_0_0, TInt, $Heap);
                            ##t#0_1_1_1_2_0_0_0_0 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_2_0_0_0_0, TInt, $Heap);
                            assume {:id "id551"} defass#k#0;
                            ##x#0_1_1_1_2_0_0_0_0 := k#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_2_0_0_0_0, _module._default.FindWinner''$Candidate, $Heap);
                            assume {:id "id552"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_0_0_0_0;
                            assume {:id "id553"} {:subsumption 0} ##s#0_1_1_1_2_0_0_0_0 <= ##t#0_1_1_1_2_0_0_0_0;
                            assume {:id "id554"} {:subsumption 0} ##t#0_1_1_1_2_0_0_0_0 <= Seq#Length(##a#0_1_1_1_2_0_0_0_0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(338,13)
                            push;
                            push;
                            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(342,19)
                            ##a#0_1_1_1_2_0_0_0_1 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_2_0_0_0_1, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                            ##s#0_1_1_1_2_0_0_0_1 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_2_0_0_0_1, TInt, $Heap);
                            ##t#0_1_1_1_2_0_0_0_1 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_2_0_0_0_1, TInt, $Heap);
                            assert {:id "id555"} defass#k#0;
                            ##x#0_1_1_1_2_0_0_0_1 := k#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_2_0_0_0_1, _module._default.FindWinner''$Candidate, $Heap);
                            assert {:id "id556"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_0_0_0_1;
                            assert {:id "id557"} {:subsumption 0} ##s#0_1_1_1_2_0_0_0_1 <= ##t#0_1_1_1_2_0_0_0_1;
                            assert {:id "id558"} {:subsumption 0} ##t#0_1_1_1_2_0_0_0_1 <= Seq#Length(##a#0_1_1_1_2_0_0_0_1);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                            assert {:id "id559"} {:subsumption 0} Mul(LitInt(2), 
                                _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                               == up#0 - lo#0;
                            assume {:id "id560"} Mul(LitInt(2), 
                                _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LZ), a#0, lo#0, up#0, k#0))
                               == up#0 - lo#0;
                            pop;
                            pop;
                            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(338,13)
                            assume true;
                            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(338,13)
                            assert {:id "id561"} {:subsumption 0} Mul(LitInt(2), 
                                _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                               == up#0 - lo#0;
                            assume false;
                        }

                        assume {:id "id573"} Mul(LitInt(2), 
                            _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LZ), a#0, lo#0, up#0, K#0))
                           == up#0 - lo#0;
                        pop;
                    }
                    else
                    {
                        push;
                        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(346,13)
                        // Assume Fuel Constant
                        if (*)
                        {
                            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(346,13)
                            assume true;
                            assume false;
                        }
                        else if (*)
                        {
                            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(346,13)
                            assume true;
                            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(346,13)
                            push;
                            push;
                            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(348,31)
                            // TrCallStmt: Before ProcessCallStmt
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            a##0_1_1_1_2_1_0_2_0 := a#0;
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            s##0_1_1_1_2_1_0_2_0 := lo#0;
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            t##0_1_1_1_2_1_0_2_0 := up#0;
                            assert {:id "id606"} defass#k#0;
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            x##0_1_1_1_2_1_0_2_0 := k#0;
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            y##0_1_1_1_2_1_0_2_0 := K#0;
                            call {:id "id607"} Call$$_module.__default.Lemma__Unique(_module._default.FindWinner''$Candidate, a##0_1_1_1_2_1_0_2_0, s##0_1_1_1_2_1_0_2_0, t##0_1_1_1_2_1_0_2_0, x##0_1_1_1_2_1_0_2_0, y##0_1_1_1_2_1_0_2_0);
                            // TrCallStmt: After ProcessCallStmt
                            pop;
                            pop;
                            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(346,13)
                            ##a#0_1_1_1_2_1_0_2_0 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_2_1_0_2_0, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                            ##s#0_1_1_1_2_1_0_2_0 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_2_1_0_2_0, TInt, $Heap);
                            ##t#0_1_1_1_2_1_0_2_0 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_2_1_0_2_0, TInt, $Heap);
                            ##x#0_1_1_1_2_1_0_2_0 := K#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_2_1_0_2_0, _module._default.FindWinner''$Candidate, $Heap);
                            assert {:id "id608"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_1_0_2_0;
                            assert {:id "id609"} {:subsumption 0} ##s#0_1_1_1_2_1_0_2_0 <= ##t#0_1_1_1_2_1_0_2_0;
                            assert {:id "id610"} {:subsumption 0} ##t#0_1_1_1_2_1_0_2_0 <= Seq#Length(##a#0_1_1_1_2_1_0_2_0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, K#0);
                            ##a#0_1_1_1_2_1_0_2_1 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_2_1_0_2_1, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                            ##s#0_1_1_1_2_1_0_2_1 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_2_1_0_2_1, TInt, $Heap);
                            ##t#0_1_1_1_2_1_0_2_1 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_2_1_0_2_1, TInt, $Heap);
                            assert {:id "id611"} defass#k#0;
                            ##x#0_1_1_1_2_1_0_2_1 := k#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_2_1_0_2_1, _module._default.FindWinner''$Candidate, $Heap);
                            assert {:id "id612"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_1_0_2_1;
                            assert {:id "id613"} {:subsumption 0} ##s#0_1_1_1_2_1_0_2_1 <= ##t#0_1_1_1_2_1_0_2_1;
                            assert {:id "id614"} {:subsumption 0} ##t#0_1_1_1_2_1_0_2_1 <= Seq#Length(##a#0_1_1_1_2_1_0_2_1);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, K#0)
                               && _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(346,13)
                            assert {:id "id615"} {:subsumption 0} Lit(true)
                               == (_module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, K#0)
                                   + _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0)
                                 <= up#0 - lo#0);
                            assume false;
                        }
                        else if (*)
                        {
                            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(346,13)
                            ##a#0_1_1_1_2_1_0_1_0 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_2_1_0_1_0, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                            ##s#0_1_1_1_2_1_0_1_0 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_2_1_0_1_0, TInt, $Heap);
                            ##t#0_1_1_1_2_1_0_1_0 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_2_1_0_1_0, TInt, $Heap);
                            ##x#0_1_1_1_2_1_0_1_0 := K#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_2_1_0_1_0, _module._default.FindWinner''$Candidate, $Heap);
                            assume {:id "id591"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_1_0_1_0;
                            assume {:id "id592"} {:subsumption 0} ##s#0_1_1_1_2_1_0_1_0 <= ##t#0_1_1_1_2_1_0_1_0;
                            assume {:id "id593"} {:subsumption 0} ##t#0_1_1_1_2_1_0_1_0 <= Seq#Length(##a#0_1_1_1_2_1_0_1_0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, K#0);
                            ##a#0_1_1_1_2_1_0_1_1 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_2_1_0_1_1, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                            ##s#0_1_1_1_2_1_0_1_1 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_2_1_0_1_1, TInt, $Heap);
                            ##t#0_1_1_1_2_1_0_1_1 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_2_1_0_1_1, TInt, $Heap);
                            assume {:id "id594"} defass#k#0;
                            ##x#0_1_1_1_2_1_0_1_1 := k#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_2_1_0_1_1, _module._default.FindWinner''$Candidate, $Heap);
                            assume {:id "id595"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_1_0_1_1;
                            assume {:id "id596"} {:subsumption 0} ##s#0_1_1_1_2_1_0_1_1 <= ##t#0_1_1_1_2_1_0_1_1;
                            assume {:id "id597"} {:subsumption 0} ##t#0_1_1_1_2_1_0_1_1 <= Seq#Length(##a#0_1_1_1_2_1_0_1_1);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, K#0)
                               && _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(346,13)
                            push;
                            pop;
                            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(346,13)
                            ##a#0_1_1_1_2_1_0_1_2 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_2_1_0_1_2, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                            ##s#0_1_1_1_2_1_0_1_2 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_2_1_0_1_2, TInt, $Heap);
                            ##t#0_1_1_1_2_1_0_1_2 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_2_1_0_1_2, TInt, $Heap);
                            ##x#0_1_1_1_2_1_0_1_2 := K#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_2_1_0_1_2, _module._default.FindWinner''$Candidate, $Heap);
                            assert {:id "id598"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_1_0_1_2;
                            assert {:id "id599"} {:subsumption 0} ##s#0_1_1_1_2_1_0_1_2 <= ##t#0_1_1_1_2_1_0_1_2;
                            assert {:id "id600"} {:subsumption 0} ##t#0_1_1_1_2_1_0_1_2 <= Seq#Length(##a#0_1_1_1_2_1_0_1_2);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, K#0);
                            ##a#0_1_1_1_2_1_0_1_3 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_2_1_0_1_3, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                            ##s#0_1_1_1_2_1_0_1_3 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_2_1_0_1_3, TInt, $Heap);
                            ##t#0_1_1_1_2_1_0_1_3 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_2_1_0_1_3, TInt, $Heap);
                            assert {:id "id601"} defass#k#0;
                            ##x#0_1_1_1_2_1_0_1_3 := k#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_2_1_0_1_3, _module._default.FindWinner''$Candidate, $Heap);
                            assert {:id "id602"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_1_0_1_3;
                            assert {:id "id603"} {:subsumption 0} ##s#0_1_1_1_2_1_0_1_3 <= ##t#0_1_1_1_2_1_0_1_3;
                            assert {:id "id604"} {:subsumption 0} ##t#0_1_1_1_2_1_0_1_3 <= Seq#Length(##a#0_1_1_1_2_1_0_1_3);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, K#0)
                               && _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(346,13)
                            assert {:id "id605"} {:subsumption 0} (_module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, K#0)
                                   + _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0)
                                 <= up#0 - lo#0)
                               == (Mul(LitInt(2), 
                                    _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, K#0))
                                   + Mul(LitInt(2), 
                                    _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                                 <= Mul(LitInt(2), up#0 - lo#0));
                            assume false;
                        }
                        else if (*)
                        {
                            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(346,13)
                            ##a#0_1_1_1_2_1_0_0_0 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_2_1_0_0_0, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                            ##s#0_1_1_1_2_1_0_0_0 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_2_1_0_0_0, TInt, $Heap);
                            ##t#0_1_1_1_2_1_0_0_0 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_2_1_0_0_0, TInt, $Heap);
                            ##x#0_1_1_1_2_1_0_0_0 := K#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_2_1_0_0_0, _module._default.FindWinner''$Candidate, $Heap);
                            assume {:id "id574"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_1_0_0_0;
                            assume {:id "id575"} {:subsumption 0} ##s#0_1_1_1_2_1_0_0_0 <= ##t#0_1_1_1_2_1_0_0_0;
                            assume {:id "id576"} {:subsumption 0} ##t#0_1_1_1_2_1_0_0_0 <= Seq#Length(##a#0_1_1_1_2_1_0_0_0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, K#0);
                            ##a#0_1_1_1_2_1_0_0_1 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_2_1_0_0_1, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                            ##s#0_1_1_1_2_1_0_0_1 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_2_1_0_0_1, TInt, $Heap);
                            ##t#0_1_1_1_2_1_0_0_1 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_2_1_0_0_1, TInt, $Heap);
                            assume {:id "id577"} defass#k#0;
                            ##x#0_1_1_1_2_1_0_0_1 := k#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_2_1_0_0_1, _module._default.FindWinner''$Candidate, $Heap);
                            assume {:id "id578"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_1_0_0_1;
                            assume {:id "id579"} {:subsumption 0} ##s#0_1_1_1_2_1_0_0_1 <= ##t#0_1_1_1_2_1_0_0_1;
                            assume {:id "id580"} {:subsumption 0} ##t#0_1_1_1_2_1_0_0_1 <= Seq#Length(##a#0_1_1_1_2_1_0_0_1);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, K#0)
                               && _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(346,13)
                            push;
                            push;
                            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(352,19)
                            ##a#0_1_1_1_2_1_0_0_2 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_2_1_0_0_2, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                            ##s#0_1_1_1_2_1_0_0_2 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_2_1_0_0_2, TInt, $Heap);
                            ##t#0_1_1_1_2_1_0_0_2 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_2_1_0_0_2, TInt, $Heap);
                            assert {:id "id581"} defass#k#0;
                            ##x#0_1_1_1_2_1_0_0_2 := k#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_2_1_0_0_2, _module._default.FindWinner''$Candidate, $Heap);
                            assert {:id "id582"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_1_0_0_2;
                            assert {:id "id583"} {:subsumption 0} ##s#0_1_1_1_2_1_0_0_2 <= ##t#0_1_1_1_2_1_0_0_2;
                            assert {:id "id584"} {:subsumption 0} ##t#0_1_1_1_2_1_0_0_2 <= Seq#Length(##a#0_1_1_1_2_1_0_0_2);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0);
                            assert {:id "id585"} {:subsumption 0} Mul(LitInt(2), 
                                _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                               == up#0 - lo#0;
                            assume {:id "id586"} Mul(LitInt(2), 
                                _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LZ), a#0, lo#0, up#0, k#0))
                               == up#0 - lo#0;
                            pop;
                            pop;
                            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(346,13)
                            ##a#0_1_1_1_2_1_0_0_3 := a#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##a#0_1_1_1_2_1_0_0_3, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                            ##s#0_1_1_1_2_1_0_0_3 := lo#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##s#0_1_1_1_2_1_0_0_3, TInt, $Heap);
                            ##t#0_1_1_1_2_1_0_0_3 := up#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#0_1_1_1_2_1_0_0_3, TInt, $Heap);
                            ##x#0_1_1_1_2_1_0_0_3 := K#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#0_1_1_1_2_1_0_0_3, _module._default.FindWinner''$Candidate, $Heap);
                            assert {:id "id587"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_1_0_0_3;
                            assert {:id "id588"} {:subsumption 0} ##s#0_1_1_1_2_1_0_0_3 <= ##t#0_1_1_1_2_1_0_0_3;
                            assert {:id "id589"} {:subsumption 0} ##t#0_1_1_1_2_1_0_0_3 <= Seq#Length(##a#0_1_1_1_2_1_0_0_3);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, K#0);
                            assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, K#0);
                            // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(346,13)
                            assert {:id "id590"} {:subsumption 0} (Mul(LitInt(2), 
                                    _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, K#0))
                                   + Mul(LitInt(2), 
                                    _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, k#0))
                                 <= Mul(LitInt(2), up#0 - lo#0))
                               == (Mul(LitInt(2), 
                                  _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, K#0))
                                 <= up#0 - lo#0);
                            assume false;
                        }

                        assume {:id "id616"} true
                           ==> Mul(LitInt(2), 
                              _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LZ), a#0, lo#0, up#0, K#0))
                             <= up#0 - lo#0;
                        pop;
                    }

                    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(356,11)
                    ##a#0_1_1_1_2_2 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_2_2, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                    ##s#0_1_1_1_2_2 := lo#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_2_2, TInt, $Heap);
                    ##t#0_1_1_1_2_2 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_2_2, TInt, $Heap);
                    ##x#0_1_1_1_2_2 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_2_2, _module._default.FindWinner''$Candidate, $Heap);
                    assert {:id "id617"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_2;
                    assert {:id "id618"} {:subsumption 0} ##s#0_1_1_1_2_2 <= ##t#0_1_1_1_2_2;
                    assert {:id "id619"} {:subsumption 0} ##t#0_1_1_1_2_2 <= Seq#Length(##a#0_1_1_1_2_2);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, K#0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, K#0);
                    assert {:id "id620"} {:subsumption 0} Mul(LitInt(2), 
                        _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LS($LZ)), a#0, lo#0, up#0, K#0))
                       <= up#0 - lo#0;
                    assume {:id "id621"} Mul(LitInt(2), 
                        _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LZ), a#0, lo#0, up#0, K#0))
                       <= up#0 - lo#0;
                    pop;
                    pop;
                    // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    ##a#0_1_1_1_2_3 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_2_3, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                    ##s#0_1_1_1_2_3 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_2_3, TInt, $Heap);
                    ##t#0_1_1_1_2_3 := Seq#Length(a#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_2_3, TInt, $Heap);
                    ##x#0_1_1_1_2_3 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_2_3, _module._default.FindWinner''$Candidate, $Heap);
                    assert {:id "id622"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_2_3;
                    assert {:id "id623"} {:subsumption 0} ##s#0_1_1_1_2_3 <= ##t#0_1_1_1_2_3;
                    assert {:id "id624"} {:subsumption 0} ##t#0_1_1_1_2_3 <= Seq#Length(##a#0_1_1_1_2_3);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                    // ----- assert line3 ==> line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    assert {:id "id625"} {:subsumption 0} Mul(LitInt(2), 
                            _module.__default.Count(_module._default.FindWinner''$Candidate, $LS($LZ), a#0, lo#0, up#0, K#0))
                           + Mul(LitInt(2), 
                            _module.__default.Count(_module._default.FindWinner''$Candidate, 
                              $LS($LZ), 
                              a#0, 
                              up#0, 
                              Seq#Length(a#0), 
                              K#0))
                         > Seq#Length(a#0) - lo#0
                       ==> Mul(LitInt(2), 
                          _module.__default.Count(_module._default.FindWinner''$Candidate, 
                            $LS($LS($LZ)), 
                            a#0, 
                            up#0, 
                            Seq#Length(a#0), 
                            K#0))
                         > Seq#Length(a#0) - lo#0 - (up#0 - lo#0);
                    assume false;
                }
                else if (*)
                {
                    // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    ##a#0_1_1_1_1_0 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_1_0, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                    ##s#0_1_1_1_1_0 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_1_0, TInt, $Heap);
                    ##t#0_1_1_1_1_0 := Seq#Length(a#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_1_0, TInt, $Heap);
                    ##x#0_1_1_1_1_0 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_1_0, _module._default.FindWinner''$Candidate, $Heap);
                    assume {:id "id536"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_1_0;
                    assume {:id "id537"} {:subsumption 0} ##s#0_1_1_1_1_0 <= ##t#0_1_1_1_1_0;
                    assume {:id "id538"} {:subsumption 0} ##t#0_1_1_1_1_0 <= Seq#Length(##a#0_1_1_1_1_0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                    // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    push;
                    pop;
                    // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    ##a#0_1_1_1_1_1 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_1_1, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                    ##s#0_1_1_1_1_1 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_1_1, TInt, $Heap);
                    ##t#0_1_1_1_1_1 := Seq#Length(a#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_1_1, TInt, $Heap);
                    ##x#0_1_1_1_1_1 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_1_1, _module._default.FindWinner''$Candidate, $Heap);
                    assert {:id "id539"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_1_1;
                    assert {:id "id540"} {:subsumption 0} ##s#0_1_1_1_1_1 <= ##t#0_1_1_1_1_1;
                    assert {:id "id541"} {:subsumption 0} ##t#0_1_1_1_1_1 <= Seq#Length(##a#0_1_1_1_1_1);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                    // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    assert {:id "id542"} {:subsumption 0} (Mul(LitInt(2), 
                          _module.__default.Count(_module._default.FindWinner''$Candidate, 
                            $LS($LS($LZ)), 
                            a#0, 
                            up#0, 
                            Seq#Length(a#0), 
                            K#0))
                         > Seq#Length(a#0) - lo#0 - (up#0 - lo#0))
                       == (Mul(LitInt(2), 
                          _module.__default.Count(_module._default.FindWinner''$Candidate, 
                            $LS($LS($LZ)), 
                            a#0, 
                            up#0, 
                            Seq#Length(a#0), 
                            K#0))
                         > Seq#Length(a#0) - up#0);
                    assume false;
                }
                else if (*)
                {
                    // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    ##a#0_1_1_1_0_0 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_0_0, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                    ##s#0_1_1_1_0_0 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_0_0, TInt, $Heap);
                    ##t#0_1_1_1_0_0 := Seq#Length(a#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_0_0, TInt, $Heap);
                    ##x#0_1_1_1_0_0 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_0_0, _module._default.FindWinner''$Candidate, $Heap);
                    assume {:id "id529"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_0_0;
                    assume {:id "id530"} {:subsumption 0} ##s#0_1_1_1_0_0 <= ##t#0_1_1_1_0_0;
                    assume {:id "id531"} {:subsumption 0} ##t#0_1_1_1_0_0 <= Seq#Length(##a#0_1_1_1_0_0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                    assume _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                    // ----- Hint5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    push;
                    pop;
                    // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    ##a#0_1_1_1_0_1 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#0_1_1_1_0_1, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                    ##s#0_1_1_1_0_1 := up#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1_1_0_1, TInt, $Heap);
                    ##t#0_1_1_1_0_1 := Seq#Length(a#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1_1_0_1, TInt, $Heap);
                    ##x#0_1_1_1_0_1 := K#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0_1_1_1_0_1, _module._default.FindWinner''$Candidate, $Heap);
                    assert {:id "id532"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1_0_1;
                    assert {:id "id533"} {:subsumption 0} ##s#0_1_1_1_0_1 <= ##t#0_1_1_1_0_1;
                    assert {:id "id534"} {:subsumption 0} ##t#0_1_1_1_0_1 <= Seq#Length(##a#0_1_1_1_0_1);
                    assume _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                    assume _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                    // ----- assert line5 == line6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(328,7)
                    assert {:id "id535"} {:subsumption 0} (Mul(LitInt(2), 
                          _module.__default.Count(_module._default.FindWinner''$Candidate, 
                            $LS($LS($LZ)), 
                            a#0, 
                            up#0, 
                            Seq#Length(a#0), 
                            K#0))
                         > Seq#Length(a#0) - up#0)
                       == _module.__default.HasMajority(_module._default.FindWinner''$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                    assume false;
                }

                assume {:id "id648"} true
                   ==> _module.__default.HasMajority(_module._default.FindWinner''$Candidate, a#0, up#0, Seq#Length(a#0), K#0);
                // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(365,20)
                assume true;
                assume true;
                assume true;
                assume true;
                assert {:id "id649"} 0 <= up#0 && up#0 < Seq#Length(a#0);
                assume true;
                $rhs#0_1_1_0 := Seq#Index(a#0, up#0);
                assume true;
                $rhs#0_1_1_1 := up#0;
                assume true;
                $rhs#0_1_1_2 := up#0 + 1;
                assume true;
                $rhs#0_1_1_3 := LitInt(1);
                k#0 := $rhs#0_1_1_0;
                defass#k#0 := true;
                lo#0 := $rhs#0_1_1_1;
                up#0 := $rhs#0_1_1_2;
                c#0 := $rhs#0_1_1_3;
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(366,7)
                ##a#0_1_1_1 := a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#0_1_1_1, TSeq(_module._default.FindWinner''$Candidate), $Heap);
                ##s#0_1_1_1 := lo#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#0_1_1_1, TInt, $Heap);
                ##t#0_1_1_1 := Seq#Length(a#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#0_1_1_1, TInt, $Heap);
                ##x#0_1_1_1 := K#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##x#0_1_1_1, _module._default.FindWinner''$Candidate, $Heap);
                assert {:id "id658"} {:subsumption 0} LitInt(0) <= ##s#0_1_1_1;
                assert {:id "id659"} {:subsumption 0} ##s#0_1_1_1 <= ##t#0_1_1_1;
                assert {:id "id660"} {:subsumption 0} ##t#0_1_1_1 <= Seq#Length(##a#0_1_1_1);
                assume _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
                assume _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
                assert {:id "id661"} {:subsumption 0} _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0)
                   ==> _module.__default.HasMajority(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0)
                     || Mul(LitInt(2), 
                        _module.__default.Count(_module._default.FindWinner''$Candidate, 
                          $LS($LS($LZ)), 
                          a#0, 
                          lo#0, 
                          Seq#Length(a#0), 
                          K#0))
                       > Seq#Length(a#0) - lo#0;
                assume {:id "id662"} _module.__default.HasMajority(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0);
                pop;
            }

            pop;
        }

        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(289,3)
        assert {:id "id663"} 0 <= $decr$loop#00 || Seq#Length(a#0) - up#0 == $decr$loop#00;
        assert {:id "id664"} Seq#Length(a#0) - up#0 < $decr$loop#00;
        assume LitInt(0) <= lo#0 && lo#0 < up#0 && up#0 <= Seq#Length(a#0)
           ==> _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0)
             && (_module.__default.HasMajority(_module._default.FindWinner''$Candidate, a#0, lo#0, Seq#Length(a#0), K#0)
               ==> _module.__default.HasMajority#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0)
                 && (_module.__default.HasMajority(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0)
                   ==> _module.__default.Count#canCall(_module._default.FindWinner''$Candidate, a#0, lo#0, up#0, k#0)));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/MajorityVote.dfy(369,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := lo#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##0 := Seq#Length(a#0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := K#0;
    assert {:id "id665"} defass#k#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := k#0;
    call {:id "id666"} Call$$_module.__default.Lemma__Unique(_module._default.FindWinner''$Candidate, a##0, s##0, t##0, x##0, y##0);
    // TrCallStmt: After ProcessCallStmt
    assert {:id "id667"} defass#k#0;
}



// Constructor function declaration
function #_module.Result.NoWinner() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Result.NoWinner()) == ##_module.Result.NoWinner;
// Constructor literal
axiom #_module.Result.NoWinner() == Lit(#_module.Result.NoWinner());
}

const unique ##_module.Result.NoWinner: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Result.NoWinner()) == ##_module.Result.NoWinner;
}

function _module.Result.NoWinner_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Result.NoWinner_q(d) } 
  _module.Result.NoWinner_q(d) <==> DatatypeCtorId(d) == ##_module.Result.NoWinner);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Result.NoWinner_q(d) } 
  _module.Result.NoWinner_q(d) ==> d == #_module.Result.NoWinner());

// Constructor $Is
axiom (forall _module.Result$Candidate: Ty :: 
  { $Is(#_module.Result.NoWinner(), Tclass._module.Result(_module.Result$Candidate)) } 
  $Is(#_module.Result.NoWinner(), Tclass._module.Result(_module.Result$Candidate)));

// Constructor $IsAlloc
axiom (forall _module.Result$Candidate: Ty, $h: Heap :: 
  { $IsAlloc(#_module.Result.NoWinner(), Tclass._module.Result(_module.Result$Candidate), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.Result.NoWinner(), Tclass._module.Result(_module.Result$Candidate), $h));

// Constructor function declaration
function #_module.Result.Winner(Box) : DatatypeType;

const unique ##_module.Result.Winner: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box :: 
  { #_module.Result.Winner(a#4#0#0) } 
  DatatypeCtorId(#_module.Result.Winner(a#4#0#0)) == ##_module.Result.Winner);
}

function _module.Result.Winner_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Result.Winner_q(d) } 
  _module.Result.Winner_q(d) <==> DatatypeCtorId(d) == ##_module.Result.Winner);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Result.Winner_q(d) } 
  _module.Result.Winner_q(d)
     ==> (exists a#5#0#0: Box :: d == #_module.Result.Winner(a#5#0#0)));

// Constructor $Is
axiom (forall _module.Result$Candidate: Ty, a#6#0#0: Box :: 
  { $Is(#_module.Result.Winner(a#6#0#0), Tclass._module.Result(_module.Result$Candidate)) } 
  $Is(#_module.Result.Winner(a#6#0#0), Tclass._module.Result(_module.Result$Candidate))
     <==> $IsBox(a#6#0#0, _module.Result$Candidate));

// Constructor $IsAlloc
axiom (forall _module.Result$Candidate: Ty, a#6#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.Result.Winner(a#6#0#0), 
      Tclass._module.Result(_module.Result$Candidate), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Result.Winner(a#6#0#0), 
        Tclass._module.Result(_module.Result$Candidate), 
        $h)
       <==> $IsAllocBox(a#6#0#0, _module.Result$Candidate, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Result$Candidate: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Result.cand(d), _module.Result$Candidate, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Result.Winner_q(d)
       && $IsAlloc(d, Tclass._module.Result(_module.Result$Candidate), $h)
     ==> $IsAllocBox(_module.Result.cand(d), _module.Result$Candidate, $h));

// Constructor literal
axiom (forall a#7#0#0: Box :: 
  { #_module.Result.Winner(Lit(a#7#0#0)) } 
  #_module.Result.Winner(Lit(a#7#0#0)) == Lit(#_module.Result.Winner(a#7#0#0)));

function _module.Result.cand(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box :: 
  { #_module.Result.Winner(a#8#0#0) } 
  _module.Result.cand(#_module.Result.Winner(a#8#0#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box :: 
  { #_module.Result.Winner(a#9#0#0) } 
  BoxRank(a#9#0#0) < DtRank(#_module.Result.Winner(a#9#0#0)));

// Depth-one case-split function
function $IsA#_module.Result(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Result(d) } 
  $IsA#_module.Result(d)
     ==> _module.Result.NoWinner_q(d) || _module.Result.Winner_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Result$Candidate: Ty, d: DatatypeType :: 
  { _module.Result.Winner_q(d), $Is(d, Tclass._module.Result(_module.Result$Candidate)) } 
    { _module.Result.NoWinner_q(d), $Is(d, Tclass._module.Result(_module.Result$Candidate)) } 
  $Is(d, Tclass._module.Result(_module.Result$Candidate))
     ==> _module.Result.NoWinner_q(d) || _module.Result.Winner_q(d));

// Datatype extensional equality declaration
function _module.Result#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Result.NoWinner
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Result#Equal(a, b), _module.Result.NoWinner_q(a) } 
    { _module.Result#Equal(a, b), _module.Result.NoWinner_q(b) } 
  _module.Result.NoWinner_q(a) && _module.Result.NoWinner_q(b)
     ==> _module.Result#Equal(a, b));

// Datatype extensional equality definition: #_module.Result.Winner
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Result#Equal(a, b), _module.Result.Winner_q(a) } 
    { _module.Result#Equal(a, b), _module.Result.Winner_q(b) } 
  _module.Result.Winner_q(a) && _module.Result.Winner_q(b)
     ==> (_module.Result#Equal(a, b)
       <==> _module.Result.cand(a) == _module.Result.cand(b)));

// Datatype extensionality axiom: _module.Result
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Result#Equal(a, b) } 
  _module.Result#Equal(a, b) <==> a == b);

const unique class._module.Result: ClassName;

const unique tytagFamily$nat: TyTagFamily;

const unique tytagFamily$object: TyTagFamily;

const unique tytagFamily$array: TyTagFamily;

const unique tytagFamily$_#Func1: TyTagFamily;

const unique tytagFamily$_#PartialFunc1: TyTagFamily;

const unique tytagFamily$_#TotalFunc1: TyTagFamily;

const unique tytagFamily$_#Func0: TyTagFamily;

const unique tytagFamily$_#PartialFunc0: TyTagFamily;

const unique tytagFamily$_#TotalFunc0: TyTagFamily;

const unique tytagFamily$_tuple#2: TyTagFamily;

const unique tytagFamily$_tuple#0: TyTagFamily;

const unique tytagFamily$_#Func4: TyTagFamily;

const unique tytagFamily$_#PartialFunc4: TyTagFamily;

const unique tytagFamily$_#TotalFunc4: TyTagFamily;

const unique tytagFamily$Result: TyTagFamily;
