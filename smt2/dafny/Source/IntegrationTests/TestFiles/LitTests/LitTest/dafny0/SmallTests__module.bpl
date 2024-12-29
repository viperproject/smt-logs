// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy

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

const unique class._module.__default: ClassName;

procedure {:verboseName "QuantifierRange0 (well-formedness)"} CheckWellFormed$$_module.__default.QuantifierRange0(_module._default.QuantifierRange0$T: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.QuantifierRange0$T))
         && $IsAlloc(a#0, TSeq(_module._default.QuantifierRange0$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module._default.QuantifierRange0$T)
         && $IsAllocBox(x#0, _module._default.QuantifierRange0$T, $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.QuantifierRange0$T)
         && $IsAllocBox(y#0, _module._default.QuantifierRange0$T, $Heap), 
    N#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "QuantifierRange0 (well-formedness)"} CheckWellFormed$$_module.__default.QuantifierRange0(_module._default.QuantifierRange0$T: Ty, a#0: Seq, x#0: Box, y#0: Box, N#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;
  var k#2: int;
  var k#3: int;
  var k#5: int;


    // AddMethodImpl: QuantifierRange0, CheckWellFormed$$_module.__default.QuantifierRange0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (LitInt(0) <= N#0)
    {
    }

    assume {:id "id125"} LitInt(0) <= N#0 && N#0 <= Seq#Length(a#0);
    havoc k#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= k#0)
        {
        }

        assume {:id "id126"} LitInt(0) <= k#0 && k#0 < N#0;
        assert {:id "id127"} 0 <= k#0 && k#0 < Seq#Length(a#0);
        assume {:id "id128"} Seq#Index(a#0, k#0) != x#0;
    }
    else
    {
        assume {:id "id129"} LitInt(0) <= k#0 && k#0 < N#0 ==> Seq#Index(a#0, k#0) != x#0;
    }

    assume {:id "id130"} (forall k#1: int :: 
      { Seq#Index(a#0, k#1) } 
      LitInt(0) <= k#1 && k#1 < N#0 ==> Seq#Index(a#0, k#1) != x#0);
    havoc k#2;
    assume true;
    if (LitInt(0) <= k#2)
    {
    }

    assume {:id "id131"} LitInt(0) <= k#2 && k#2 < N#0;
    assert {:id "id132"} 0 <= k#2 && k#2 < Seq#Length(a#0);
    assume {:id "id133"} Seq#Index(a#0, k#2) == y#0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc k#3;
    assume true;
    if (*)
    {
        if (LitInt(0) <= k#3)
        {
        }

        assume {:id "id134"} LitInt(0) <= k#3 && k#3 < N#0;
        assert {:id "id135"} 0 <= k#3 && k#3 < Seq#Length(a#0);
        assume {:id "id136"} Seq#Index(a#0, k#3) != x#0;
    }
    else
    {
        assume {:id "id137"} LitInt(0) <= k#3 && k#3 < N#0 ==> Seq#Index(a#0, k#3) != x#0;
    }

    assume {:id "id138"} (forall k#4: int :: 
      { Seq#Index(a#0, k#4) } 
      LitInt(0) <= k#4 && k#4 < N#0 ==> Seq#Index(a#0, k#4) != x#0);
    havoc k#5;
    assume true;
    if (LitInt(0) <= k#5)
    {
    }

    assume {:id "id139"} LitInt(0) <= k#5 && k#5 < N#0;
    assert {:id "id140"} 0 <= k#5 && k#5 < Seq#Length(a#0);
    assume {:id "id141"} Seq#Index(a#0, k#5) == y#0;
}



procedure {:verboseName "QuantifierRange0 (call)"} Call$$_module.__default.QuantifierRange0(_module._default.QuantifierRange0$T: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.QuantifierRange0$T))
         && $IsAlloc(a#0, TSeq(_module._default.QuantifierRange0$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module._default.QuantifierRange0$T)
         && $IsAllocBox(x#0, _module._default.QuantifierRange0$T, $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.QuantifierRange0$T)
         && $IsAllocBox(y#0, _module._default.QuantifierRange0$T, $Heap), 
    N#0: int);
  // user-defined preconditions
  requires {:id "id142"} LitInt(0) <= N#0;
  requires {:id "id143"} N#0 <= Seq#Length(a#0);
  requires {:id "id144"} (forall k#1: int :: 
    { Seq#Index(a#0, k#1) } 
    LitInt(0) <= k#1 && k#1 < N#0 ==> Seq#Index(a#0, k#1) != x#0);
  requires {:id "id145"} (exists k#6: int :: 
    { Seq#Index(a#0, k#6) } 
    LitInt(0) <= k#6 && k#6 < N#0 && Seq#Index(a#0, k#6) == y#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id146"} (forall k#4: int :: 
    { Seq#Index(a#0, k#4) } 
    LitInt(0) <= k#4 && k#4 < N#0 ==> Seq#Index(a#0, k#4) != x#0);
  free ensures true;
  ensures {:id "id147"} (exists k#7: int :: 
    { Seq#Index(a#0, k#7) } 
    LitInt(0) <= k#7 && k#7 < N#0 && Seq#Index(a#0, k#7) == y#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "QuantifierRange0 (correctness)"} Impl$$_module.__default.QuantifierRange0(_module._default.QuantifierRange0$T: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.QuantifierRange0$T))
         && $IsAlloc(a#0, TSeq(_module._default.QuantifierRange0$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module._default.QuantifierRange0$T)
         && $IsAllocBox(x#0, _module._default.QuantifierRange0$T, $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.QuantifierRange0$T)
         && $IsAllocBox(y#0, _module._default.QuantifierRange0$T, $Heap), 
    N#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id148"} LitInt(0) <= N#0;
  requires {:id "id149"} N#0 <= Seq#Length(a#0);
  requires {:id "id150"} (forall k#1: int :: 
    { Seq#Index(a#0, k#1) } 
    LitInt(0) <= k#1 && k#1 < N#0 ==> Seq#Index(a#0, k#1) != x#0);
  requires {:id "id151"} (exists k#6: int :: 
    { Seq#Index(a#0, k#6) } 
    LitInt(0) <= k#6 && k#6 < N#0 && Seq#Index(a#0, k#6) == y#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id152"} (forall k#4: int :: 
    { Seq#Index(a#0, k#4) } 
    LitInt(0) <= k#4 && k#4 < N#0 ==> Seq#Index(a#0, k#4) != x#0);
  free ensures true;
  ensures {:id "id153"} (exists k#7: int :: 
    { Seq#Index(a#0, k#7) } 
    LitInt(0) <= k#7 && k#7 < N#0 && Seq#Index(a#0, k#7) == y#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "QuantifierRange0 (correctness)"} Impl$$_module.__default.QuantifierRange0(_module._default.QuantifierRange0$T: Ty, a#0: Seq, x#0: Box, y#0: Box, N#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: QuantifierRange0, Impl$$_module.__default.QuantifierRange0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(316,3)
    assume true;
    assert {:id "id154"} x#0 != y#0;
}



procedure {:verboseName "QuantifierRange1 (well-formedness)"} CheckWellFormed$$_module.__default.QuantifierRange1(_module._default.QuantifierRange1$T: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.QuantifierRange1$T))
         && $IsAlloc(a#0, TSeq(_module._default.QuantifierRange1$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module._default.QuantifierRange1$T)
         && $IsAllocBox(x#0, _module._default.QuantifierRange1$T, $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.QuantifierRange1$T)
         && $IsAllocBox(y#0, _module._default.QuantifierRange1$T, $Heap), 
    N#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "QuantifierRange1 (well-formedness)"} CheckWellFormed$$_module.__default.QuantifierRange1(_module._default.QuantifierRange1$T: Ty, a#0: Seq, x#0: Box, y#0: Box, N#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;
  var k#2: int;
  var k#3: int;
  var k#5: int;


    // AddMethodImpl: QuantifierRange1, CheckWellFormed$$_module.__default.QuantifierRange1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (LitInt(0) <= N#0)
    {
    }

    assume {:id "id155"} LitInt(0) <= N#0 && N#0 <= Seq#Length(a#0);
    havoc k#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= k#0)
        {
        }

        assume {:id "id156"} LitInt(0) <= k#0 && k#0 < N#0;
        assert {:id "id157"} 0 <= k#0 && k#0 < Seq#Length(a#0);
        assume {:id "id158"} Seq#Index(a#0, k#0) != x#0;
    }
    else
    {
        assume {:id "id159"} LitInt(0) <= k#0 && k#0 < N#0 ==> Seq#Index(a#0, k#0) != x#0;
    }

    assume {:id "id160"} (forall k#1: int :: 
      { Seq#Index(a#0, k#1) } 
      LitInt(0) <= k#1 && k#1 < N#0 ==> Seq#Index(a#0, k#1) != x#0);
    havoc k#2;
    assume true;
    if (LitInt(0) <= k#2)
    {
    }

    assume {:id "id161"} LitInt(0) <= k#2 && k#2 < N#0;
    assert {:id "id162"} 0 <= k#2 && k#2 < Seq#Length(a#0);
    assume {:id "id163"} Seq#Index(a#0, k#2) == y#0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc k#3;
    assume true;
    if (*)
    {
        if (LitInt(0) <= k#3)
        {
        }

        assume {:id "id164"} LitInt(0) <= k#3 && k#3 < N#0;
        assert {:id "id165"} 0 <= k#3 && k#3 < Seq#Length(a#0);
        assume {:id "id166"} Seq#Index(a#0, k#3) != x#0;
    }
    else
    {
        assume {:id "id167"} LitInt(0) <= k#3 && k#3 < N#0 ==> Seq#Index(a#0, k#3) != x#0;
    }

    assume {:id "id168"} (forall k#4: int :: 
      { Seq#Index(a#0, k#4) } 
      LitInt(0) <= k#4 && k#4 < N#0 ==> Seq#Index(a#0, k#4) != x#0);
    havoc k#5;
    assume true;
    if (LitInt(0) <= k#5)
    {
    }

    assume {:id "id169"} LitInt(0) <= k#5 && k#5 < N#0;
    assert {:id "id170"} 0 <= k#5 && k#5 < Seq#Length(a#0);
    assume {:id "id171"} Seq#Index(a#0, k#5) == y#0;
}



procedure {:verboseName "QuantifierRange1 (call)"} Call$$_module.__default.QuantifierRange1(_module._default.QuantifierRange1$T: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.QuantifierRange1$T))
         && $IsAlloc(a#0, TSeq(_module._default.QuantifierRange1$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module._default.QuantifierRange1$T)
         && $IsAllocBox(x#0, _module._default.QuantifierRange1$T, $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.QuantifierRange1$T)
         && $IsAllocBox(y#0, _module._default.QuantifierRange1$T, $Heap), 
    N#0: int);
  // user-defined preconditions
  requires {:id "id172"} LitInt(0) <= N#0;
  requires {:id "id173"} N#0 <= Seq#Length(a#0);
  requires {:id "id174"} (forall k#1: int :: 
    { Seq#Index(a#0, k#1) } 
    LitInt(0) <= k#1 && k#1 < N#0 ==> Seq#Index(a#0, k#1) != x#0);
  requires {:id "id175"} (exists k#6: int :: 
    { Seq#Index(a#0, k#6) } 
    LitInt(0) <= k#6 && k#6 < N#0 && Seq#Index(a#0, k#6) == y#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id176"} (forall k#4: int :: 
    { Seq#Index(a#0, k#4) } 
    LitInt(0) <= k#4 && k#4 < N#0 ==> Seq#Index(a#0, k#4) != x#0);
  free ensures true;
  ensures {:id "id177"} (exists k#7: int :: 
    { Seq#Index(a#0, k#7) } 
    LitInt(0) <= k#7 && k#7 < N#0 && Seq#Index(a#0, k#7) == y#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "QuantifierRange1 (correctness)"} Impl$$_module.__default.QuantifierRange1(_module._default.QuantifierRange1$T: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.QuantifierRange1$T))
         && $IsAlloc(a#0, TSeq(_module._default.QuantifierRange1$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module._default.QuantifierRange1$T)
         && $IsAllocBox(x#0, _module._default.QuantifierRange1$T, $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.QuantifierRange1$T)
         && $IsAllocBox(y#0, _module._default.QuantifierRange1$T, $Heap), 
    N#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id178"} LitInt(0) <= N#0;
  requires {:id "id179"} N#0 <= Seq#Length(a#0);
  requires {:id "id180"} (forall k#1: int :: 
    { Seq#Index(a#0, k#1) } 
    LitInt(0) <= k#1 && k#1 < N#0 ==> Seq#Index(a#0, k#1) != x#0);
  requires {:id "id181"} (exists k#6: int :: 
    { Seq#Index(a#0, k#6) } 
    LitInt(0) <= k#6 && k#6 < N#0 && Seq#Index(a#0, k#6) == y#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id182"} (forall k#4: int :: 
    { Seq#Index(a#0, k#4) } 
    LitInt(0) <= k#4 && k#4 < N#0 ==> Seq#Index(a#0, k#4) != x#0);
  free ensures true;
  ensures {:id "id183"} (exists k#7: int :: 
    { Seq#Index(a#0, k#7) } 
    LitInt(0) <= k#7 && k#7 < N#0 && Seq#Index(a#0, k#7) == y#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "QuantifierRange1 (correctness)"} Impl$$_module.__default.QuantifierRange1(_module._default.QuantifierRange1$T: Ty, a#0: Seq, x#0: Box, y#0: Box, N#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: QuantifierRange1, Impl$$_module.__default.QuantifierRange1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(326,3)
    assume true;
    assert {:id "id184"} x#0 != y#0;
}



procedure {:verboseName "QuantifierRange2 (well-formedness)"} CheckWellFormed$$_module.__default.QuantifierRange2(_module._default.QuantifierRange2$T: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.QuantifierRange2$T))
         && $IsAlloc(a#0, TSeq(_module._default.QuantifierRange2$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module._default.QuantifierRange2$T)
         && $IsAllocBox(x#0, _module._default.QuantifierRange2$T, $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.QuantifierRange2$T)
         && $IsAllocBox(y#0, _module._default.QuantifierRange2$T, $Heap), 
    N#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "QuantifierRange2 (well-formedness)"} CheckWellFormed$$_module.__default.QuantifierRange2(_module._default.QuantifierRange2$T: Ty, a#0: Seq, x#0: Box, y#0: Box, N#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;
  var k#1: int;


    // AddMethodImpl: QuantifierRange2, CheckWellFormed$$_module.__default.QuantifierRange2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (LitInt(0) <= N#0)
    {
    }

    assume {:id "id185"} LitInt(0) <= N#0 && N#0 <= Seq#Length(a#0);
    havoc k#0;
    assume true;
    if (LitInt(0) <= k#0)
    {
    }

    assume {:id "id186"} LitInt(0) <= k#0 && k#0 < N#0;
    assert {:id "id187"} 0 <= k#0 && k#0 < Seq#Length(a#0);
    assume {:id "id188"} Seq#Index(a#0, k#0) == y#0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc k#1;
    assume true;
    if (*)
    {
        if (LitInt(0) <= k#1)
        {
        }

        assume {:id "id189"} LitInt(0) <= k#1 && k#1 < N#0;
        assert {:id "id190"} 0 <= k#1 && k#1 < Seq#Length(a#0);
        assume {:id "id191"} Seq#Index(a#0, k#1) == y#0;
    }
    else
    {
        assume {:id "id192"} LitInt(0) <= k#1 && k#1 < N#0 ==> Seq#Index(a#0, k#1) == y#0;
    }

    assume {:id "id193"} (forall k#2: int :: 
      { Seq#Index(a#0, k#2) } 
      LitInt(0) <= k#2 && k#2 < N#0 ==> Seq#Index(a#0, k#2) == y#0);
}



procedure {:verboseName "QuantifierRange2 (call)"} Call$$_module.__default.QuantifierRange2(_module._default.QuantifierRange2$T: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.QuantifierRange2$T))
         && $IsAlloc(a#0, TSeq(_module._default.QuantifierRange2$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module._default.QuantifierRange2$T)
         && $IsAllocBox(x#0, _module._default.QuantifierRange2$T, $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.QuantifierRange2$T)
         && $IsAllocBox(y#0, _module._default.QuantifierRange2$T, $Heap), 
    N#0: int);
  // user-defined preconditions
  requires {:id "id194"} LitInt(0) <= N#0;
  requires {:id "id195"} N#0 <= Seq#Length(a#0);
  requires {:id "id196"} (exists k#3: int :: 
    { Seq#Index(a#0, k#3) } 
    LitInt(0) <= k#3 && k#3 < N#0 && Seq#Index(a#0, k#3) == y#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id197"} (forall k#2: int :: 
    { Seq#Index(a#0, k#2) } 
    LitInt(0) <= k#2 && k#2 < N#0 ==> Seq#Index(a#0, k#2) == y#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "QuantifierRange2 (correctness)"} Impl$$_module.__default.QuantifierRange2(_module._default.QuantifierRange2$T: Ty, 
    a#0: Seq
       where $Is(a#0, TSeq(_module._default.QuantifierRange2$T))
         && $IsAlloc(a#0, TSeq(_module._default.QuantifierRange2$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module._default.QuantifierRange2$T)
         && $IsAllocBox(x#0, _module._default.QuantifierRange2$T, $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.QuantifierRange2$T)
         && $IsAllocBox(y#0, _module._default.QuantifierRange2$T, $Heap), 
    N#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id198"} LitInt(0) <= N#0;
  requires {:id "id199"} N#0 <= Seq#Length(a#0);
  requires {:id "id200"} (exists k#3: int :: 
    { Seq#Index(a#0, k#3) } 
    LitInt(0) <= k#3 && k#3 < N#0 && Seq#Index(a#0, k#3) == y#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id201"} (forall k#2: int :: 
    { Seq#Index(a#0, k#2) } 
    LitInt(0) <= k#2 && k#2 < N#0 ==> Seq#Index(a#0, k#2) == y#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "QuantifierRange2 (correctness)"} Impl$$_module.__default.QuantifierRange2(_module._default.QuantifierRange2$T: Ty, a#0: Seq, x#0: Box, y#0: Box, N#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0_0: int;
  var k#4: int;

    // AddMethodImpl: QuantifierRange2, Impl$$_module.__default.QuantifierRange2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(334,3)
    assume true;
    assert {:id "id202"} N#0 != 0;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(335,3)
    assume true;
    if (N#0 == LitInt(1))
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(336,5)
        // Begin Comprehension WF check
        havoc k#0_0;
        if (true)
        {
            if (LitInt(0) <= k#0_0)
            {
            }

            if (LitInt(0) <= k#0_0 && k#0_0 < N#0)
            {
            }
            else
            {
            }

            assert {:id "id203"} {:subsumption 0} 0 <= (if LitInt(0) <= k#0_0 && k#0_0 < N#0 then k#0_0 else 0)
               && (if LitInt(0) <= k#0_0 && k#0_0 < N#0 then k#0_0 else 0) < Seq#Length(a#0);
            if (Seq#Index(a#0, (if LitInt(0) <= k#0_0 && k#0_0 < N#0 then k#0_0 else 0)) != y#0)
            {
                if (0 <= k#0_0)
                {
                }
            }
        }

        // End Comprehension WF check
        assume true;
        assert {:id "id204"} (forall k#0_1: int :: 
          Seq#Index(a#0, (if LitInt(0) <= k#0_1 && k#0_1 < N#0 then k#0_1 else 0)) != y#0
             ==> k#0_1 < 0 || N#0 <= k#0_1);
        pop;
    }
    else
    {
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(338,3)
    // Begin Comprehension WF check
    havoc k#4;
    if (true)
    {
        if (LitInt(0) <= k#4)
        {
        }

        if (LitInt(0) <= k#4 && k#4 < N#0)
        {
            assert {:id "id205"} 0 <= k#4 && k#4 < Seq#Length(a#0);
        }
    }

    // End Comprehension WF check
    assume true;
    if ((forall k#5: int :: 
      { Seq#Index(a#0, k#5) } 
      LitInt(0) <= k#5 && k#5 < N#0 ==> Seq#Index(a#0, k#5) == x#0))
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(339,5)
        assume true;
        assert {:id "id206"} x#0 == y#0;
    }
    else
    {
    }
}



procedure {:verboseName "M (well-formedness)"} CheckWellFormed$$_module.__default.M(zeros#0: Seq
       where $Is(zeros#0, TSeq(TBool)) && $IsAlloc(zeros#0, TSeq(TBool), $Heap), 
    Z#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M (well-formedness)"} CheckWellFormed$$_module.__default.M(zeros#0: Seq, Z#0: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;


    // AddMethodImpl: M, CheckWellFormed$$_module.__default.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id207"} LitInt(1) <= Seq#Length(zeros#0);
    assume {:id "id208"} Z#0 == Lit(false);
    havoc k#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= k#0)
        {
        }

        assume {:id "id209"} LitInt(0) <= k#0 && k#0 < Seq#Length(zeros#0);
        assert {:id "id210"} 0 <= k#0 && k#0 < Seq#Length(zeros#0);
        assume {:id "id211"} $Unbox(Seq#Index(zeros#0, k#0)): bool == Z#0;
    }
    else
    {
        assume {:id "id212"} LitInt(0) <= k#0 && k#0 < Seq#Length(zeros#0)
           ==> $Unbox(Seq#Index(zeros#0, k#0)): bool == Z#0;
    }

    assume {:id "id213"} (forall k#1: int :: 
      { $Unbox(Seq#Index(zeros#0, k#1)): bool } 
      LitInt(0) <= k#1 && k#1 < Seq#Length(zeros#0)
         ==> $Unbox(Seq#Index(zeros#0, k#1)): bool == Z#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSuccGhost(old($Heap), $Heap);
}



procedure {:verboseName "M (call)"} Call$$_module.__default.M(zeros#0: Seq
       where $Is(zeros#0, TSeq(TBool)) && $IsAlloc(zeros#0, TSeq(TBool), $Heap), 
    Z#0: bool);
  // user-defined preconditions
  requires {:id "id214"} LitInt(1) <= Seq#Length(zeros#0);
  requires {:id "id215"} Z#0 == Lit(false);
  requires {:id "id216"} (forall k#1: int :: 
    { $Unbox(Seq#Index(zeros#0, k#1)): bool } 
    LitInt(0) <= k#1 && k#1 < Seq#Length(zeros#0)
       ==> $Unbox(Seq#Index(zeros#0, k#1)): bool == Z#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "M (correctness)"} Impl$$_module.__default.M(zeros#0: Seq
       where $Is(zeros#0, TSeq(TBool)) && $IsAlloc(zeros#0, TSeq(TBool), $Heap), 
    Z#0: bool)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id217"} LitInt(1) <= Seq#Length(zeros#0);
  requires {:id "id218"} Z#0 == Lit(false);
  requires {:id "id219"} (forall k#1: int :: 
    { $Unbox(Seq#Index(zeros#0, k#1)): bool } 
    LitInt(0) <= k#1 && k#1 < Seq#Length(zeros#0)
       ==> $Unbox(Seq#Index(zeros#0, k#1)): bool == Z#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M (correctness)"} Impl$$_module.__default.M(zeros#0: Seq, Z#0: bool) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: Seq where $Is(x#0, TSeq(TBool)) && $IsAlloc(x#0, TSeq(TBool), $Heap);

    // AddMethodImpl: M, Impl$$_module.__default.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(349,9)
    assume true;
    assume true;
    x#0 := Seq#Build(Seq#Empty(): Seq, $Box(Z#0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(350,3)
    assert {:id "id221"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) <= Seq#Length(zeros#0);
    assert {:id "id222"} {:subsumption 0} LitInt(0) <= LitInt(1) && LitInt(1) <= Seq#Length(zeros#0);
    assume true;
    assert {:id "id223"} Seq#Equal(Seq#Drop(Seq#Take(zeros#0, LitInt(1)), LitInt(0)), 
      Seq#Build(Seq#Empty(): Seq, $Box(Z#0)));
}



procedure {:verboseName "TestSequences0 (well-formedness)"} CheckWellFormed$$_module.__default.TestSequences0();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestSequences0 (call)"} Call$$_module.__default.TestSequences0();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestSequences0 (correctness)"} Impl$$_module.__default.TestSequences0() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestSequences0 (correctness)"} Impl$$_module.__default.TestSequences0() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap);
  var n#1_0: int;

    // AddMethodImpl: TestSequences0, Impl$$_module.__default.TestSequences0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(369,9)
    assume true;
    assume true;
    s#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))), $Box(LitInt(2))), 
        $Box(LitInt(4))));
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(370,3)
    if (*)
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(371,5)
        assume true;
        assert {:id "id225"} Seq#Contains(s#0, $Box(4));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(372,5)
        assume true;
        assert {:id "id226"} Seq#Contains(s#0, $Box(0));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(373,5)
        assume true;
        assert {:id "id227"} !Seq#Contains(s#0, $Box(1));
        pop;
    }
    else
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(375,5)
        assume true;
        assert {:id "id228"} Seq#Contains(s#0, $Box(2));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(376,5)
        assume true;
        assert {:id "id229"} Seq#Contains(s#0, $Box(0));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(377,5)
        // Begin Comprehension WF check
        havoc n#1_0;
        if (true)
        {
            if (Seq#Contains(s#0, $Box(n#1_0)))
            {
                if (LitInt(-3) <= n#1_0)
                {
                }
            }
        }

        // End Comprehension WF check
        assume true;
        assert {:id "id230"} (exists n#1_1: int :: 
          { Seq#Contains(s#0, $Box(n#1_1)) } 
          Seq#Contains(s#0, $Box(n#1_1)) && LitInt(-3) <= n#1_1 && n#1_1 < 2);
        pop;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(379,3)
    assume true;
    assert {:id "id231"} Seq#Contains(s#0, $Box(7));
}



procedure {:verboseName "test0 (well-formedness)"} CheckWellFormed$$_module.__default.test0();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test0 (call)"} Call$$_module.__default.test0();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test0 (correctness)"} Impl$$_module.__default.test0() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test0 (correctness)"} Impl$$_module.__default.test0() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: test0, Impl$$_module.__default.test0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(386,3)
    assume true;
    assert {:id "id232"} Lit(false);
}



procedure {:verboseName "test1 (well-formedness)"} {:verify false} CheckWellFormed$$_module.__default.test1();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test1 (call)"} {:verify false} Call$$_module.__default.test1();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module._default.test2
function _module.__default.test2($ly: LayerType) : bool
uses {
// definition axiom for _module.__default.test2 (revealed)
axiom {:id "id233"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.test2($LS($ly)) } 
    _module.__default.test2#canCall() || 0 < $FunctionContextHeight
       ==> _module.__default.test2#canCall()
         && _module.__default.test2($LS($ly)) == !Lit(_module.__default.test2($ly)));
// definition axiom for _module.__default.test2 for all literals (revealed)
axiom {:id "id234"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    {:weight 3} { _module.__default.test2($LS($ly)) } 
    _module.__default.test2#canCall() || 0 < $FunctionContextHeight
       ==> _module.__default.test2#canCall()
         && _module.__default.test2($LS($ly)) == !Lit(_module.__default.test2($LS($ly))));
}

function _module.__default.test2#canCall() : bool;

// layer synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.test2($LS($ly)) } 
  _module.__default.test2($LS($ly)) == _module.__default.test2($ly));

// fuel synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.test2(AsFuelBottom($ly)) } 
  _module.__default.test2($ly) == _module.__default.test2($LZ));

function _module.__default.test2#requires(LayerType) : bool;

// #requires axiom for _module.__default.test2
axiom (forall $ly: LayerType :: 
  { _module.__default.test2#requires($ly) } 
  _module.__default.test2#requires($ly) == true);

procedure {:verboseName "test2 (well-formedness)"} CheckWellformed$$_module.__default.test2();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test2 (well-formedness)"} CheckWellformed$$_module.__default.test2()
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
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
        assert {:id "id235"} false;
        assume _module.__default.test2#canCall();
        assume {:id "id236"} _module.__default.test2($LS($LZ)) == !Lit(_module.__default.test2($LS($LZ)));
        assume _module.__default.test2#canCall();
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.test2($LS($LZ)), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.test3
function _module.__default.test3($ly: LayerType) : bool
uses {
// definition axiom for _module.__default.test3 (revealed)
axiom {:id "id237"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.test3($LS($ly)) } 
    _module.__default.test3#canCall() || 0 < $FunctionContextHeight
       ==> _module.__default.test3#canCall()
         && _module.__default.test3($LS($ly)) == !Lit(_module.__default.test3($ly)));
// definition axiom for _module.__default.test3 for all literals (revealed)
axiom {:id "id238"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    {:weight 3} { _module.__default.test3($LS($ly)) } 
    _module.__default.test3#canCall() || 0 < $FunctionContextHeight
       ==> _module.__default.test3#canCall()
         && _module.__default.test3($LS($ly)) == !Lit(_module.__default.test3($LS($ly))));
}

function _module.__default.test3#canCall() : bool;

// layer synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.test3($LS($ly)) } 
  _module.__default.test3($LS($ly)) == _module.__default.test3($ly));

// fuel synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.test3(AsFuelBottom($ly)) } 
  _module.__default.test3($ly) == _module.__default.test3($LZ));

function _module.__default.test3#requires(LayerType) : bool;

// #requires axiom for _module.__default.test3
axiom (forall $ly: LayerType :: 
  { _module.__default.test3#requires($ly) } 
  _module.__default.test3#requires($ly) == true);

procedure {:verboseName "test3 (well-formedness)"} {:verify false} CheckWellformed$$_module.__default.test3();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test3 (well-formedness)"} {:verify false} CheckWellformed$$_module.__default.test3()
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
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
        assert {:id "id239"} false;
        assume _module.__default.test3#canCall();
        assume {:id "id240"} _module.__default.test3($LS($LZ)) == !Lit(_module.__default.test3($LS($LZ)));
        assume _module.__default.test3#canCall();
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.test3($LS($LZ)), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.F
function _module.__default.F(b#0: bool) : int
uses {
// consequence axiom for _module.__default.F
axiom 0 <= $FunctionContextHeight
   ==> (forall b#0: bool :: 
    { _module.__default.F(b#0) } 
    _module.__default.F#canCall(b#0) || 0 < $FunctionContextHeight
       ==> (if b#0
         then _module.__default.F(b#0) == LitInt(5)
         else _module.__default.F(b#0) == LitInt(6)));
// definition axiom for _module.__default.F (revealed)
axiom {:id "id241"} 0 <= $FunctionContextHeight
   ==> (forall b#0: bool :: 
    { _module.__default.F(b#0) } 
    _module.__default.F#canCall(b#0) || 0 < $FunctionContextHeight
       ==> _module.__default.F(b#0) == LitInt(5));
// definition axiom for _module.__default.F for all literals (revealed)
axiom {:id "id242"} 0 <= $FunctionContextHeight
   ==> (forall b#0: bool :: 
    {:weight 3} { _module.__default.F(Lit(b#0)) } 
    _module.__default.F#canCall(Lit(b#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.F(Lit(b#0)) == LitInt(5));
}

function _module.__default.F#canCall(b#0: bool) : bool;

function _module.__default.F#requires(bool) : bool;

// #requires axiom for _module.__default.F
axiom (forall b#0: bool :: 
  { _module.__default.F#requires(b#0) } 
  _module.__default.F#requires(b#0) == true);

procedure {:verboseName "F (well-formedness)"} CheckWellformed$$_module.__default.F(b#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id243"} b#0 ==> _module.__default.F(b#0) == LitInt(5);
  ensures {:id "id244"} !b#0 ==> _module.__default.F(b#0) == LitInt(6);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "F (well-formedness)"} CheckWellformed$$_module.__default.F(b#0: bool)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##b#0: bool;
  var ##b#1: bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        if (*)
        {
            assume {:id "id245"} b#0;
            ##b#0 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#0, TBool, $Heap);
            assert {:id "id246"} b#0 == b#0 || (!##b#0 && b#0);
            assume b#0 == b#0 || _module.__default.F#canCall(b#0);
            assume {:id "id247"} _module.__default.F(b#0) == LitInt(5);
        }
        else
        {
            assume {:id "id248"} !b#0;
            ##b#1 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1, TBool, $Heap);
            assert {:id "id249"} b#0 == b#0 || (!##b#1 && b#0);
            assume b#0 == b#0 || _module.__default.F#canCall(b#0);
            assume {:id "id250"} _module.__default.F(b#0) == LitInt(6);
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume {:id "id251"} _module.__default.F(b#0) == LitInt(5);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.F(b#0), TInt);
        return;

        assume false;
    }
}



procedure {:verboseName "TestAttributesVarDecls (well-formedness)"} CheckWellFormed$$_module.__default.TestAttributesVarDecls();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestAttributesVarDecls (call)"} Call$$_module.__default.TestAttributesVarDecls();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestAttributesVarDecls (correctness)"} Impl$$_module.__default.TestAttributesVarDecls() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestNotNot (well-formedness)"} CheckWellFormed$$_module.__default.TestNotNot();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestNotNot (call)"} Call$$_module.__default.TestNotNot();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestNotNot (correctness)"} Impl$$_module.__default.TestNotNot() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestNotNot (correctness)"} Impl$$_module.__default.TestNotNot() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: TestNotNot, Impl$$_module.__default.TestNotNot
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(569,3)
    assume true;
    assert {:id "id259"} !!Lit(true);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(571,3)
    assume true;
    assert {:id "id260"} !(Lit(true) == Lit(false));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(573,3)
    if (Lit(true))
    {
    }
    else
    {
    }

    assume true;
    assert {:id "id261"} {:subsumption 0} !(Lit(true) && Lit(false));
    assert {:id "id262"} {:subsumption 0} !(!Lit(true) && Lit(false));
    assume {:id "id263"} !(if true then false else false);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(575,3)
    if (Lit(true))
    {
    }
    else
    {
    }

    assume true;
    assert {:id "id264"} {:subsumption 0} !(Lit(true) && Lit(false));
    assert {:id "id265"} {:subsumption 0} !(!Lit(true) && Lit(false));
    assume {:id "id266"} !(if true then false else false);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(577,3)
    if (!!Lit(true))
    {
    }
    else
    {
    }

    assume true;
    assert {:id "id267"} {:subsumption 0} !(!!Lit(true) && Lit(false));
    assert {:id "id268"} {:subsumption 0} !(!Lit(true) && Lit(false));
    assume {:id "id269"} !(if !!Lit(true) then false else false);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(579,3)
    assume true;
    assert {:id "id270"} Lit(true) == !!Lit(true);
}



procedure {:verboseName "AssignSuchThat0 (well-formedness)"} CheckWellFormed$$_module.__default.AssignSuchThat0(a#0: int, b#0: int) returns (x#0: int, y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AssignSuchThat0 (call)"} Call$$_module.__default.AssignSuchThat0(a#0: int, b#0: int) returns (x#0: int, y#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id273"} x#0 == a#0;
  ensures {:id "id274"} y#0 == b#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AssignSuchThat0 (correctness)"} Impl$$_module.__default.AssignSuchThat0(a#0: int, b#0: int) returns (x#0: int, y#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id275"} x#0 == a#0;
  ensures {:id "id276"} y#0 == b#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AssignSuchThat0 (correctness)"} Impl$$_module.__default.AssignSuchThat0(a#0: int, b#0: int) returns (x#0: int, y#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0_0: int;
  var y#0_0: int;
  var xx#1_0: int;
  var yy#1_0: int;
  var xx#1_1: int;
  var yy#1_1: int;
  var $rhs#1_0: int;
  var $rhs#1_1: int;

    // AddMethodImpl: AssignSuchThat0, Impl$$_module.__default.AssignSuchThat0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(587,3)
    if (*)
    {
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(588,10)
        havoc x#0_0;
        havoc y#0_0;
        if (true)
        {
            if (a#0 <= x#0_0)
            {
            }

            if (a#0 <= x#0_0 && x#0_0 < a#0 + 1)
            {
            }

            if (a#0 <= x#0_0 && x#0_0 < a#0 + 1 && b#0 + a#0 <= y#0_0 + a#0)
            {
            }

            assume true;
        }

        assert {:id "id277"} (
            $Is(a#0 + 1 - 1, TInt)
             && $Is(b#0 + 1 - 1, TInt)
             && 
            a#0 <= a#0 + 1 - 1
             && a#0 + 1 - 1 < a#0 + 1
             && b#0 + a#0 <= b#0 + 1 - 1 + a#0
             && b#0 + 1 - 1 <= b#0)
           || 
          (
            $Is(a#0, TInt)
             && $Is(b#0 + 1 - 1, TInt)
             && 
            a#0 <= a#0
             && a#0 < a#0 + 1
             && b#0 + a#0 <= b#0 + 1 - 1 + a#0
             && b#0 + 1 - 1 <= b#0)
           || 
          (
            $Is(LitInt(0), TInt)
             && $Is(b#0 + 1 - 1, TInt)
             && 
            a#0 <= LitInt(0)
             && 0 < a#0 + 1
             && b#0 + a#0 <= b#0 + 1 - 1 + a#0
             && b#0 + 1 - 1 <= b#0)
           || 
          (exists $as#x0_0#0_0: int :: 
            $Is(b#0 + 1 - 1, TInt)
               && 
              a#0 <= $as#x0_0#0_0
               && $as#x0_0#0_0 < a#0 + 1
               && b#0 + a#0 <= b#0 + 1 - 1 + a#0
               && b#0 + 1 - 1 <= b#0)
           || 
          (
            $Is(a#0 + 1 - 1, TInt)
             && $Is(b#0 + a#0 - a#0, TInt)
             && 
            a#0 <= a#0 + 1 - 1
             && a#0 + 1 - 1 < a#0 + 1
             && b#0 + a#0 <= b#0 + a#0 - a#0 + a#0
             && b#0 + a#0 - a#0 <= b#0)
           || 
          (
            $Is(a#0, TInt)
             && $Is(b#0 + a#0 - a#0, TInt)
             && 
            a#0 <= a#0
             && a#0 < a#0 + 1
             && b#0 + a#0 <= b#0 + a#0 - a#0 + a#0
             && b#0 + a#0 - a#0 <= b#0)
           || 
          (
            $Is(LitInt(0), TInt)
             && $Is(b#0 + a#0 - a#0, TInt)
             && 
            a#0 <= LitInt(0)
             && 0 < a#0 + 1
             && b#0 + a#0 <= b#0 + a#0 - a#0 + a#0
             && b#0 + a#0 - a#0 <= b#0)
           || 
          (exists $as#x0_0#0_0: int :: 
            $Is(b#0 + a#0 - a#0, TInt)
               && 
              a#0 <= $as#x0_0#0_0
               && $as#x0_0#0_0 < a#0 + 1
               && b#0 + a#0 <= b#0 + a#0 - a#0 + a#0
               && b#0 + a#0 - a#0 <= b#0)
           || 
          (
            $Is(a#0 + 1 - 1, TInt)
             && $Is(LitInt(0), TInt)
             && 
            a#0 <= a#0 + 1 - 1
             && a#0 + 1 - 1 < a#0 + 1
             && b#0 + a#0 <= 0 + a#0
             && LitInt(0) <= b#0)
           || 
          (
            $Is(a#0, TInt)
             && $Is(LitInt(0), TInt)
             && 
            a#0 <= a#0
             && a#0 < a#0 + 1
             && b#0 + a#0 <= 0 + a#0
             && LitInt(0) <= b#0)
           || 
          (
            $Is(LitInt(0), TInt)
             && $Is(LitInt(0), TInt)
             && 
            a#0 <= LitInt(0)
             && 0 < a#0 + 1
             && b#0 + a#0 <= 0 + a#0
             && LitInt(0) <= b#0)
           || 
          (exists $as#x0_0#0_0: int :: 
            $Is(LitInt(0), TInt)
               && 
              a#0 <= $as#x0_0#0_0
               && $as#x0_0#0_0 < a#0 + 1
               && b#0 + a#0 <= 0 + a#0
               && LitInt(0) <= b#0)
           || 
          (exists $as#y0_0#0_0: int :: 
            $Is(a#0 + 1 - 1, TInt)
               && 
              a#0 <= a#0 + 1 - 1
               && a#0 + 1 - 1 < a#0 + 1
               && b#0 + a#0 <= $as#y0_0#0_0 + a#0
               && $as#y0_0#0_0 <= b#0)
           || 
          (exists $as#y0_0#0_0: int :: 
            $Is(a#0, TInt)
               && 
              a#0 <= a#0
               && a#0 < a#0 + 1
               && b#0 + a#0 <= $as#y0_0#0_0 + a#0
               && $as#y0_0#0_0 <= b#0)
           || 
          (exists $as#y0_0#0_0: int :: 
            $Is(LitInt(0), TInt)
               && 
              a#0 <= LitInt(0)
               && 0 < a#0 + 1
               && b#0 + a#0 <= $as#y0_0#0_0 + a#0
               && $as#y0_0#0_0 <= b#0)
           || (exists $as#x0_0#0_0: int, $as#y0_0#0_0: int :: 
            a#0 <= $as#x0_0#0_0
               && $as#x0_0#0_0 < a#0 + 1
               && b#0 + a#0 <= $as#y0_0#0_0 + a#0
               && $as#y0_0#0_0 <= b#0);
        havoc x#0, y#0;
        assume {:id "id278"} a#0 <= x#0 && x#0 < a#0 + 1 && b#0 + a#0 <= y#0 + a#0 && y#0 <= b#0;
    }
    else
    {
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(590,16)
        havoc xx#1_1;
        havoc yy#1_1;
        if (true)
        {
            if (a#0 <= xx#1_1)
            {
            }

            if (a#0 <= xx#1_1 && xx#1_1 < a#0 + 1)
            {
            }

            if (a#0 <= xx#1_1 && xx#1_1 < a#0 + 1 && b#0 + a#0 <= yy#1_1 + a#0)
            {
            }

            assume true;
        }

        assert {:id "id279"} (
            $Is(a#0 + 1 - 1, TInt)
             && $Is(b#0 + 1 - 1, TInt)
             && 
            a#0 <= a#0 + 1 - 1
             && a#0 + 1 - 1 < a#0 + 1
             && b#0 + a#0 <= b#0 + 1 - 1 + a#0
             && b#0 + 1 - 1 <= b#0)
           || 
          (
            $Is(a#0, TInt)
             && $Is(b#0 + 1 - 1, TInt)
             && 
            a#0 <= a#0
             && a#0 < a#0 + 1
             && b#0 + a#0 <= b#0 + 1 - 1 + a#0
             && b#0 + 1 - 1 <= b#0)
           || 
          (
            $Is(LitInt(0), TInt)
             && $Is(b#0 + 1 - 1, TInt)
             && 
            a#0 <= LitInt(0)
             && 0 < a#0 + 1
             && b#0 + a#0 <= b#0 + 1 - 1 + a#0
             && b#0 + 1 - 1 <= b#0)
           || 
          (exists $as#xx1_0#1_0: int :: 
            $Is(b#0 + 1 - 1, TInt)
               && 
              a#0 <= $as#xx1_0#1_0
               && $as#xx1_0#1_0 < a#0 + 1
               && b#0 + a#0 <= b#0 + 1 - 1 + a#0
               && b#0 + 1 - 1 <= b#0)
           || 
          (
            $Is(a#0 + 1 - 1, TInt)
             && $Is(b#0 + a#0 - a#0, TInt)
             && 
            a#0 <= a#0 + 1 - 1
             && a#0 + 1 - 1 < a#0 + 1
             && b#0 + a#0 <= b#0 + a#0 - a#0 + a#0
             && b#0 + a#0 - a#0 <= b#0)
           || 
          (
            $Is(a#0, TInt)
             && $Is(b#0 + a#0 - a#0, TInt)
             && 
            a#0 <= a#0
             && a#0 < a#0 + 1
             && b#0 + a#0 <= b#0 + a#0 - a#0 + a#0
             && b#0 + a#0 - a#0 <= b#0)
           || 
          (
            $Is(LitInt(0), TInt)
             && $Is(b#0 + a#0 - a#0, TInt)
             && 
            a#0 <= LitInt(0)
             && 0 < a#0 + 1
             && b#0 + a#0 <= b#0 + a#0 - a#0 + a#0
             && b#0 + a#0 - a#0 <= b#0)
           || 
          (exists $as#xx1_0#1_0: int :: 
            $Is(b#0 + a#0 - a#0, TInt)
               && 
              a#0 <= $as#xx1_0#1_0
               && $as#xx1_0#1_0 < a#0 + 1
               && b#0 + a#0 <= b#0 + a#0 - a#0 + a#0
               && b#0 + a#0 - a#0 <= b#0)
           || 
          (
            $Is(a#0 + 1 - 1, TInt)
             && $Is(LitInt(0), TInt)
             && 
            a#0 <= a#0 + 1 - 1
             && a#0 + 1 - 1 < a#0 + 1
             && b#0 + a#0 <= 0 + a#0
             && LitInt(0) <= b#0)
           || 
          (
            $Is(a#0, TInt)
             && $Is(LitInt(0), TInt)
             && 
            a#0 <= a#0
             && a#0 < a#0 + 1
             && b#0 + a#0 <= 0 + a#0
             && LitInt(0) <= b#0)
           || 
          (
            $Is(LitInt(0), TInt)
             && $Is(LitInt(0), TInt)
             && 
            a#0 <= LitInt(0)
             && 0 < a#0 + 1
             && b#0 + a#0 <= 0 + a#0
             && LitInt(0) <= b#0)
           || 
          (exists $as#xx1_0#1_0: int :: 
            $Is(LitInt(0), TInt)
               && 
              a#0 <= $as#xx1_0#1_0
               && $as#xx1_0#1_0 < a#0 + 1
               && b#0 + a#0 <= 0 + a#0
               && LitInt(0) <= b#0)
           || 
          (exists $as#yy1_0#1_0: int :: 
            $Is(a#0 + 1 - 1, TInt)
               && 
              a#0 <= a#0 + 1 - 1
               && a#0 + 1 - 1 < a#0 + 1
               && b#0 + a#0 <= $as#yy1_0#1_0 + a#0
               && $as#yy1_0#1_0 <= b#0)
           || 
          (exists $as#yy1_0#1_0: int :: 
            $Is(a#0, TInt)
               && 
              a#0 <= a#0
               && a#0 < a#0 + 1
               && b#0 + a#0 <= $as#yy1_0#1_0 + a#0
               && $as#yy1_0#1_0 <= b#0)
           || 
          (exists $as#yy1_0#1_0: int :: 
            $Is(LitInt(0), TInt)
               && 
              a#0 <= LitInt(0)
               && 0 < a#0 + 1
               && b#0 + a#0 <= $as#yy1_0#1_0 + a#0
               && $as#yy1_0#1_0 <= b#0)
           || (exists $as#xx1_0#1_0: int, $as#yy1_0#1_0: int :: 
            a#0 <= $as#xx1_0#1_0
               && $as#xx1_0#1_0 < a#0 + 1
               && b#0 + a#0 <= $as#yy1_0#1_0 + a#0
               && $as#yy1_0#1_0 <= b#0);
        havoc xx#1_0, yy#1_0;
        assume {:id "id280"} a#0 <= xx#1_0 && xx#1_0 < a#0 + 1 && b#0 + a#0 <= yy#1_0 + a#0 && yy#1_0 <= b#0;
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(591,10)
        assume true;
        assume true;
        assume true;
        $rhs#1_0 := xx#1_0;
        assume true;
        $rhs#1_1 := yy#1_0;
        x#0 := $rhs#1_0;
        y#0 := $rhs#1_1;
    }
}



procedure {:verboseName "AssignSuchThat1 (well-formedness)"} CheckWellFormed$$_module.__default.AssignSuchThat1(a#0: int, b#0: int) returns (x#0: int, y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AssignSuchThat1 (call)"} Call$$_module.__default.AssignSuchThat1(a#0: int, b#0: int) returns (x#0: int, y#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AssignSuchThat1 (correctness)"} Impl$$_module.__default.AssignSuchThat1(a#0: int, b#0: int) returns (x#0: int, y#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AssignSuchThat1 (correctness)"} Impl$$_module.__default.AssignSuchThat1(a#0: int, b#0: int) returns (x#0: int, y#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;
  var k#1: int;
  var k#2: int;
  var S#0: Set where $Is(S#0, TSet(TInt)) && $IsAlloc(S#0, TSet(TInt), $Heap);
  var T#0: Set where $Is(T#0, TSet(TInt)) && $IsAlloc(T#0, TSet(TInt), $Heap);
  var T#1: Set;

    // AddMethodImpl: AssignSuchThat1, Impl$$_module.__default.AssignSuchThat1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(597,15)
    havoc k#1;
    if (true)
    {
        if (LitInt(0) <= k#1)
        {
        }

        assume true;
    }

    havoc k#0;
    assume {:id "id285"} LitInt(0) <= k#0 && k#0 < a#0 - b#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(598,3)
    assume true;
    assert {:id "id286"} b#0 < a#0;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(599,5)
    havoc k#2;
    if (true)
    {
        assume true;
    }

    assert {:id "id287"} ($Is(LitInt(0), TInt) && LitInt(0) == LitInt(Mul(LitInt(2), LitInt(0))))
       || (exists $as#k0#0: int :: $as#k0#0 == Mul(LitInt(2), $as#k0#0));
    havoc k#0;
    assume {:id "id288"} k#0 == Mul(LitInt(2), k#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(600,3)
    assume true;
    assert {:id "id289"} k#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(601,9)
    assume true;
    assume true;
    S#0 := Lit(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(2))), $Box(LitInt(4))), 
        $Box(LitInt(7))));
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(602,9)
    havoc T#1;
    if ($Is(T#1, TSet(TInt)) && $IsAlloc(T#1, TSet(TInt), $Heap))
    {
        assume true;
    }

    assert {:id "id291"} ($Is(S#0, TSet(TInt)) && Set#Subset(S#0, S#0))
       || 
      ($Is(Lit(Set#Empty(): Set), TSet(TInt)) && Set#Subset(Set#Empty(): Set, S#0))
       || (exists $as#T0#0: Set :: $Is($as#T0#0, TSet(TInt)) && Set#Subset($as#T0#0, S#0));
    havoc T#0;
    assume {:id "id292"} Set#Subset(T#0, S#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(603,3)
    assume true;
    assert {:id "id293"} !Set#IsMember(T#0, $Box(LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(604,3)
    assume true;
    assert {:id "id294"} Set#Equal(T#0, Set#Empty(): Set);
}



function Tclass._module.Node() : Ty
uses {
// Tclass._module.Node Tag
axiom Tag(Tclass._module.Node()) == Tagclass._module.Node
   && TagFamily(Tclass._module.Node()) == tytagFamily$Node;
}

const unique Tagclass._module.Node: TyTag;

// Box/unbox axiom for Tclass._module.Node
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Node()) } 
  $IsBox(bx, Tclass._module.Node())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Node()));

procedure {:verboseName "AssignSuchThat2 (well-formedness)"} CheckWellFormed$$_module.__default.AssignSuchThat2(i#0: int, 
    j#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node()), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AssignSuchThat2 (call)"} Call$$_module.__default.AssignSuchThat2(i#0: int, 
    j#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node()), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || Set#IsMember(S#0, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AssignSuchThat2 (correctness)"} Impl$$_module.__default.AssignSuchThat2(i#0: int, 
    j#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || Set#IsMember(S#0, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Node?() : Ty
uses {
// Tclass._module.Node? Tag
axiom Tag(Tclass._module.Node?()) == Tagclass._module.Node?
   && TagFamily(Tclass._module.Node?()) == tytagFamily$Node;
}

const unique Tagclass._module.Node?: TyTag;

// Box/unbox axiom for Tclass._module.Node?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Node?()) } 
  $IsBox(bx, Tclass._module.Node?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Node?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AssignSuchThat2 (correctness)"} Impl$$_module.__default.AssignSuchThat2(i#0: int, j#0: int, S#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#n#0: bool;
  var n#0: ref
     where defass#n#0
       ==> $Is(n#0, Tclass._module.Node()) && $IsAlloc(n#0, Tclass._module.Node(), $Heap);
  var $nw: ref;
  var a#0: ref
     where $Is(a#0, Tclass._System.array(TInt))
       && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap);
  var t#0: int;
  var t#0_0: int;
  var n#0_0: ref;
  var $obj0: ref;
  var $index0: Field;
  var $obj1: ref;
  var $index1: Field;
  var $obj2: ref;
  var $rhs#0_0: int;
  var $rhs#0_1: int;
  var $rhs#0_2: ref where $Is($rhs#0_2, Tclass._module.Node?());
  var newtype$check#0: ref;
  var $rhs#1_0: ref where $Is($rhs#1_0, Tclass._module.Node?());
  var $rhs#1_1: ref where $Is($rhs#1_1, Tclass._module.Node?());
  var newtype$check#1_0: ref;
  var t#2_0_0: int;
  var $rhs#2_0_0: int;
  var $rhs#2_0_1: int;

    // AddMethodImpl: AssignSuchThat2, Impl$$_module.__default.AssignSuchThat2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(S#0, $Box($o)));
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(610,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Node?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    n#0 := $nw;
    defass#n#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(611,9)
    assume true;
    assert {:id "id296"} 0 <= LitInt(25);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(25);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    havoc t#0;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(613,3)
    if (LitInt(0) <= i#0)
    {
    }

    if (LitInt(0) <= i#0 && i#0 < j#0)
    {
    }

    assume true;
    if (LitInt(0) <= i#0 && i#0 < j#0 && j#0 < 25)
    {
        push;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(614,30)
        havoc t#0_0;
        havoc n#0_0;
        assert {:id "id298"} a#0 != a#0 || j#0 != i#0;
        assert {:id "id299"} a#0 != null;
        assert {:id "id300"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
        assume true;
        $obj0 := a#0;
        $index0 := IndexField(i#0);
        assert {:id "id301"} $_ModifiesFrame[$obj0, $index0];
        assert {:id "id302"} a#0 != null;
        assert {:id "id303"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
        assume true;
        $obj1 := a#0;
        $index1 := IndexField(j#0);
        assert {:id "id304"} $_ModifiesFrame[$obj1, $index1];
        assert {:id "id305"} defass#n#0;
        assert {:id "id306"} n#0 != null;
        assume true;
        $obj2 := n#0;
        assert {:id "id307"} $_ModifiesFrame[$obj2, _module.Node.next];
        havoc $rhs#0_0;
        havoc $rhs#0_1;
        havoc $rhs#0_2 /* where $Is($rhs#0_2, Tclass._module.Node?()) */;
        $Heap := update($Heap, $obj0, $index0, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        $Heap := update($Heap, $obj1, $index1, $Box($rhs#0_1));
        assume $IsGoodHeap($Heap);
        $Heap := update($Heap, $obj2, _module.Node.next, $Box($rhs#0_2));
        assume $IsGoodHeap($Heap);
        if ($Is(n#0_0, Tclass._module.Node())
           && $IsAlloc(n#0_0, Tclass._module.Node(), $Heap))
        {
            assume true;
        }

        defass#n#0 := true;
        havoc t#0, n#0;
        assume {:id "id311"} true;
        pop;
    }
    else
    {
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(616,3)
    assert {:id "id312"} defass#n#0;
    assert {:id "id313"} n#0 != null;
    newtype$check#0 := null;
    assume true;
    if ($Unbox(read($Heap, n#0, _module.Node.next)): ref != null)
    {
        // ----- assume statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(617,5)
        assert {:id "id314"} defass#n#0;
        if (Set#IsMember(S#0, $Box(n#0)))
        {
            assert {:id "id315"} defass#n#0;
            assert {:id "id316"} {:subsumption 0} n#0 != null;
        }

        assume true;
        assume {:id "id317"} Set#IsMember(S#0, $Box(n#0))
           && Set#IsMember(S#0, read($Heap, n#0, _module.Node.next));
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(618,25)
        assert {:id "id318"} n#0 != $Unbox(read($Heap, n#0, _module.Node.next)): ref;
        assert {:id "id319"} defass#n#0;
        assert {:id "id320"} n#0 != null;
        assert {:id "id321"} $Unbox(read($Heap, n#0, _module.Node.next)): ref != null;
        assume true;
        $obj0 := $Unbox(read($Heap, n#0, _module.Node.next)): ref;
        assert {:id "id322"} $_ModifiesFrame[$obj0, _module.Node.next];
        assert {:id "id323"} defass#n#0;
        assert {:id "id324"} n#0 != null;
        assume true;
        $obj1 := n#0;
        assert {:id "id325"} $_ModifiesFrame[$obj1, _module.Node.next];
        havoc $rhs#1_0 /* where $Is($rhs#1_0, Tclass._module.Node?()) */;
        havoc $rhs#1_1 /* where $Is($rhs#1_1, Tclass._module.Node?()) */;
        $Heap := update($Heap, $obj0, _module.Node.next, $Box($rhs#1_0));
        assume $IsGoodHeap($Heap);
        $Heap := update($Heap, $obj1, _module.Node.next, $Box($rhs#1_1));
        assume $IsGoodHeap($Heap);
        if (true)
        {
            assert {:id "id328"} defass#n#0;
            assert {:id "id329"} {:subsumption 0} n#0 != null;
            newtype$check#1_0 := null;
            if ($Unbox(read($Heap, n#0, _module.Node.next)): ref != null)
            {
                assert {:id "id330"} defass#n#0;
                assert {:id "id331"} {:subsumption 0} n#0 != null;
                assert {:id "id332"} {:subsumption 0} $Unbox(read($Heap, n#0, _module.Node.next)): ref != null;
                assert {:id "id333"} defass#n#0;
                assert {:id "id334"} {:subsumption 0} n#0 != null;
            }

            assume true;
        }

        havoc ;
        assume {:id "id335"} $Unbox(read($Heap, n#0, _module.Node.next)): ref != null
           && $Unbox(read($Heap, $Unbox(read($Heap, n#0, _module.Node.next)): ref, _module.Node.next)): ref
             == $Unbox(read($Heap, n#0, _module.Node.next)): ref;
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(619,10)
        if (LitInt(0) <= i#0)
        {
        }

        if (LitInt(0) <= i#0 && i#0 < 25)
        {
            if (LitInt(0) <= j#0)
            {
            }
        }

        assume true;
        if (LitInt(0) <= i#0 && i#0 < 25 && LitInt(0) <= j#0 && j#0 < 25)
        {
            // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(620,19)
            havoc t#2_0_0;
            assert {:id "id336"} a#0 != a#0 || j#0 != i#0;
            assert {:id "id337"} a#0 != null;
            assert {:id "id338"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
            assume true;
            $obj0 := a#0;
            $index0 := IndexField(i#0);
            assert {:id "id339"} $_ModifiesFrame[$obj0, $index0];
            assert {:id "id340"} a#0 != null;
            assert {:id "id341"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
            assume true;
            $obj1 := a#0;
            $index1 := IndexField(j#0);
            assert {:id "id342"} $_ModifiesFrame[$obj1, $index1];
            havoc $rhs#2_0_0;
            havoc $rhs#2_0_1;
            $Heap := update($Heap, $obj0, $index0, $Box($rhs#2_0_0));
            assume $IsGoodHeap($Heap);
            $Heap := update($Heap, $obj1, $index1, $Box($rhs#2_0_1));
            assume $IsGoodHeap($Heap);
            if (true)
            {
                assert {:id "id345"} a#0 != null;
                assert {:id "id346"} {:subsumption 0} 0 <= i#0 && i#0 < _System.array.Length(a#0);
                if (t#2_0_0 < $Unbox(read($Heap, a#0, IndexField(i#0))): int)
                {
                    assert {:id "id347"} a#0 != null;
                    assert {:id "id348"} {:subsumption 0} 0 <= i#0 && i#0 < _System.array.Length(a#0);
                    assert {:id "id349"} a#0 != null;
                    assert {:id "id350"} {:subsumption 0} 0 <= j#0 && j#0 < _System.array.Length(a#0);
                }

                assume true;
            }

            havoc t#0;
            assume {:id "id351"} t#0 < $Unbox(read($Heap, a#0, IndexField(i#0))): int
               && $Unbox(read($Heap, a#0, IndexField(i#0))): int
                 < $Unbox(read($Heap, a#0, IndexField(j#0))): int;
        }
        else
        {
        }
    }
}



procedure {:verboseName "AssignSuchThat3 (well-formedness)"} CheckWellFormed$$_module.__default.AssignSuchThat3();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AssignSuchThat3 (call)"} Call$$_module.__default.AssignSuchThat3();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AssignSuchThat3 (correctness)"} Impl$$_module.__default.AssignSuchThat3() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AssignSuchThat3 (correctness)"} Impl$$_module.__default.AssignSuchThat3() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: ref
     where $Is(n#0, Tclass._module.Node?()) && $IsAlloc(n#0, Tclass._module.Node?(), $Heap);
  var $nw: ref;
  var n#1: ref;
  var $rhs#0: ref where $Is($rhs#0, Tclass._module.Node?());

    // AddMethodImpl: AssignSuchThat3, Impl$$_module.__default.AssignSuchThat3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(626,16)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Node?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    n#0 := $nw;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(627,13)
    havoc n#1;
    assert {:id "id353"} n#0 != null;
    assume true;
    assert {:id "id354"} $_ModifiesFrame[n#0, _module.Node.next];
    havoc $rhs#0 /* where $Is($rhs#0, Tclass._module.Node?()) */;
    $Heap := update($Heap, n#0, _module.Node.next, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    if ($Is(n#1, Tclass._module.Node?()) && $IsAlloc(n#1, Tclass._module.Node?(), $Heap))
    {
        assert {:id "id356"} {:subsumption 0} n#1 != null;
        assume true;
    }

    havoc n#0;
    assume {:id "id357"} $Unbox(read($Heap, n#0, _module.Node.next)): ref == n#0;
}



procedure {:verboseName "AssignSuchThat4 (well-formedness)"} CheckWellFormed$$_module.__default.AssignSuchThat4();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AssignSuchThat4 (call)"} Call$$_module.__default.AssignSuchThat4();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AssignSuchThat4 (correctness)"} Impl$$_module.__default.AssignSuchThat4() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AssignSuchThat4 (correctness)"} Impl$$_module.__default.AssignSuchThat4() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: ref
     where $Is(n#0, Tclass._module.Node?()) && $IsAlloc(n#0, Tclass._module.Node?(), $Heap);
  var $nw: ref;
  var n#1: ref;
  var $rhs#0: ref where $Is($rhs#0, Tclass._module.Node?());
  var newtype$check#0: ref;

    // AddMethodImpl: AssignSuchThat4, Impl$$_module.__default.AssignSuchThat4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(632,16)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Node?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    n#0 := $nw;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(633,13)
    havoc n#1;
    assert {:id "id359"} n#0 != null;
    assume true;
    assert {:id "id360"} $_ModifiesFrame[n#0, _module.Node.next];
    havoc $rhs#0 /* where $Is($rhs#0, Tclass._module.Node?()) */;
    $Heap := update($Heap, n#0, _module.Node.next, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    if ($Is(n#1, Tclass._module.Node?()) && $IsAlloc(n#1, Tclass._module.Node?(), $Heap))
    {
        newtype$check#0 := null;
        if (n#1 != null)
        {
            assert {:id "id362"} {:subsumption 0} n#1 != null;
        }

        assume true;
    }

    havoc n#0;
    assume {:id "id363"} n#0 != null && $Unbox(read($Heap, n#0, _module.Node.next)): ref == n#0;
}



procedure {:verboseName "AssignSuchThat5 (well-formedness)"} CheckWellFormed$$_module.__default.AssignSuchThat5();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AssignSuchThat5 (call)"} Call$$_module.__default.AssignSuchThat5();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AssignSuchThat5 (correctness)"} Impl$$_module.__default.AssignSuchThat5() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AssignSuchThat5 (correctness)"} Impl$$_module.__default.AssignSuchThat5() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#k#0: bool;
  var k#0: ref
     where defass#k#0
       ==> $Is(k#0, Tclass._module.Node()) && $IsAlloc(k#0, Tclass._module.Node(), $Heap);
  var $nw: ref;
  var defass#n#0: bool;
  var n#0: ref
     where defass#n#0
       ==> $Is(n#0, Tclass._module.Node()) && $IsAlloc(n#0, Tclass._module.Node(), $Heap);
  var n#1: ref;

    // AddMethodImpl: AssignSuchThat5, Impl$$_module.__default.AssignSuchThat5
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(638,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Node?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    k#0 := $nw;
    defass#k#0 := true;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(639,21)
    havoc n#1;
    if ($Is(n#1, Tclass._module.Node()) && $IsAlloc(n#1, Tclass._module.Node(), $Heap))
    {
        assume true;
    }

    assert {:id "id365"} ($Is(null, Tclass._module.Node())
         && 
        null != null
         && !$Unbox(read(old($Heap), null, alloc)): bool)
       || (exists $as#n0#0: ref :: 
        $Is($as#n0#0, Tclass._module.Node())
           && $IsAlloc($as#n0#0, Tclass._module.Node(), $Heap)
           && 
          $as#n0#0 != null
           && !$Unbox(read(old($Heap), $as#n0#0, alloc)): bool);
    defass#n#0 := true;
    havoc n#0;
    assume {:id "id366"} n#0 != null && !$Unbox(read(old($Heap), n#0, alloc)): bool;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(640,3)
    assume true;
    assert {:id "id367"} Lit(false);
}



procedure {:verboseName "AssignSuchThat6 (well-formedness)"} CheckWellFormed$$_module.__default.AssignSuchThat6();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AssignSuchThat6 (call)"} Call$$_module.__default.AssignSuchThat6();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AssignSuchThat6 (correctness)"} Impl$$_module.__default.AssignSuchThat6() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AssignSuchThat6 (correctness)"} Impl$$_module.__default.AssignSuchThat6() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#n#0: bool;
  var n#0: ref
     where defass#n#0
       ==> $Is(n#0, Tclass._module.Node()) && $IsAlloc(n#0, Tclass._module.Node(), $Heap);
  var n#1: ref;

    // AddMethodImpl: AssignSuchThat6, Impl$$_module.__default.AssignSuchThat6
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc n#0 /* where defass#n#0
       ==> $Is(n#0, Tclass._module.Node()) && $IsAlloc(n#0, Tclass._module.Node(), $Heap) */;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(646,5)
    havoc n#1;
    if ($Is(n#1, Tclass._module.Node()) && $IsAlloc(n#1, Tclass._module.Node(), $Heap))
    {
        assume true;
    }

    defass#n#0 := true;
    havoc n#0;
    assume {:id "id368"} n#0 != null && !$Unbox(read(old($Heap), n#0, alloc)): bool;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(647,3)
    assume true;
    assert {:id "id369"} Lit(false);
}



procedure {:verboseName "AssignSuchThat7 (well-formedness)"} CheckWellFormed$$_module.__default.AssignSuchThat7(_module._default.AssignSuchThat7$T: Ty, 
    A#0: Set
       where $Is(A#0, TSet(_module._default.AssignSuchThat7$T))
         && $IsAlloc(A#0, TSet(_module._default.AssignSuchThat7$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module._default.AssignSuchThat7$T)
         && $IsAllocBox(x#0, _module._default.AssignSuchThat7$T, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AssignSuchThat7 (call)"} Call$$_module.__default.AssignSuchThat7(_module._default.AssignSuchThat7$T: Ty, 
    A#0: Set
       where $Is(A#0, TSet(_module._default.AssignSuchThat7$T))
         && $IsAlloc(A#0, TSet(_module._default.AssignSuchThat7$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module._default.AssignSuchThat7$T)
         && $IsAllocBox(x#0, _module._default.AssignSuchThat7$T, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AssignSuchThat7 (correctness)"} Impl$$_module.__default.AssignSuchThat7(_module._default.AssignSuchThat7$T: Ty, 
    A#0: Set
       where $Is(A#0, TSet(_module._default.AssignSuchThat7$T))
         && $IsAlloc(A#0, TSet(_module._default.AssignSuchThat7$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module._default.AssignSuchThat7$T)
         && $IsAllocBox(x#0, _module._default.AssignSuchThat7$T, $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AssignSuchThat7 (correctness)"} Impl$$_module.__default.AssignSuchThat7(_module._default.AssignSuchThat7$T: Ty, A#0: Set, x#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var B#0: Set
     where $Is(B#0, TSet(_module._default.AssignSuchThat7$T))
       && $IsAlloc(B#0, TSet(_module._default.AssignSuchThat7$T), $Heap);
  var B#1: Set;

    // AddMethodImpl: AssignSuchThat7, Impl$$_module.__default.AssignSuchThat7
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(651,9)
    havoc B#1;
    if ($Is(B#1, TSet(_module._default.AssignSuchThat7$T))
       && $IsAlloc(B#1, TSet(_module._default.AssignSuchThat7$T), $Heap))
    {
        assume true;
    }

    assert {:id "id370"} ($Is(A#0, TSet(_module._default.AssignSuchThat7$T)) && Set#Subset(A#0, A#0))
       || 
      ($Is(Lit(Set#Empty(): Set), TSet(_module._default.AssignSuchThat7$T))
         && Set#Subset(Set#Empty(): Set, A#0))
       || (exists $as#B0#0: Set :: 
        $Is($as#B0#0, TSet(_module._default.AssignSuchThat7$T))
           && Set#Subset($as#B0#0, A#0));
    havoc B#0;
    assume {:id "id371"} Set#Subset(B#0, A#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(652,3)
    if (Set#IsMember(B#0, x#0))
    {
    }

    assume true;
    assert {:id "id372"} {:subsumption 0} Set#IsMember(B#0, x#0) ==> Set#IsMember(A#0, x#0);
    assume {:id "id373"} Set#IsMember(B#0, x#0) ==> Set#IsMember(A#0, x#0);
}



function Tclass._module.Lindgren() : Ty
uses {
// Tclass._module.Lindgren Tag
axiom Tag(Tclass._module.Lindgren()) == Tagclass._module.Lindgren
   && TagFamily(Tclass._module.Lindgren()) == tytagFamily$Lindgren;
}

const unique Tagclass._module.Lindgren: TyTag;

// Box/unbox axiom for Tclass._module.Lindgren
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Lindgren()) } 
  $IsBox(bx, Tclass._module.Lindgren())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Lindgren()));

procedure {:verboseName "AssignSuchThat8 (well-formedness)"} CheckWellFormed$$_module.__default.AssignSuchThat8(n#0: int)
   returns (x#0: int, 
    y#0: DatatypeType
       where $Is(y#0, Tclass._module.Lindgren())
         && $IsAlloc(y#0, Tclass._module.Lindgren(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AssignSuchThat8 (call)"} Call$$_module.__default.AssignSuchThat8(n#0: int)
   returns (x#0: int, 
    y#0: DatatypeType
       where $Is(y#0, Tclass._module.Lindgren())
         && $IsAlloc(y#0, Tclass._module.Lindgren(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AssignSuchThat8 (correctness)"} Impl$$_module.__default.AssignSuchThat8(n#0: int)
   returns (x#0: int, 
    defass#y#0: bool, 
    y#0: DatatypeType
       where defass#y#0
         ==> $Is(y#0, Tclass._module.Lindgren())
           && $IsAlloc(y#0, Tclass._module.Lindgren(), $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AssignSuchThat8 (correctness)"} Impl$$_module.__default.AssignSuchThat8(n#0: int)
   returns (x#0: int, defass#y#0: bool, y#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#1: int;
  var x#2: int;
  var x#3: int;
  var y#1: DatatypeType;
  var y#2: DatatypeType;
  var x#4: int;
  var x#5: int;
  var x#6: int;
  var x#7: int;

    // AddMethodImpl: AssignSuchThat8, Impl$$_module.__default.AssignSuchThat8
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(656,5)
    havoc x#1;
    if (true)
    {
        assume true;
    }

    assert {:id "id374"} ($Is(LitInt(1), TInt) && LitInt(1) == LitInt(1))
       || 
      ($Is(LitInt(0), TInt) && LitInt(0) == LitInt(1))
       || (exists $as#x0#0: int :: $as#x0#0 == LitInt(1));
    havoc x#0;
    assume {:id "id375"} x#0 == LitInt(1);
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(657,5)
    havoc x#2;
    if (true)
    {
        assume true;
    }

    assert {:id "id376"} ($Is(LitInt(11), TInt)
         && (LitInt(11) == LitInt(3) || LitInt(11) == LitInt(7) || LitInt(11) == LitInt(11)))
       || 
      ($Is(LitInt(7), TInt)
         && (LitInt(7) == LitInt(3) || LitInt(7) == LitInt(7) || LitInt(7) == LitInt(11)))
       || 
      ($Is(LitInt(3), TInt)
         && (LitInt(3) == LitInt(3) || LitInt(3) == LitInt(7) || LitInt(3) == LitInt(11)))
       || 
      ($Is(LitInt(0), TInt)
         && (LitInt(0) == LitInt(3) || LitInt(0) == LitInt(7) || LitInt(0) == LitInt(11)))
       || (exists $as#x1#0: int :: 
        $as#x1#0 == LitInt(3) || $as#x1#0 == LitInt(7) || $as#x1#0 == LitInt(11));
    havoc x#0;
    assume {:id "id377"} x#0 == LitInt(3) || x#0 == LitInt(7) || x#0 == LitInt(11);
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(658,5)
    havoc x#3;
    if (true)
    {
        assume true;
    }

    assert {:id "id378"} ($Is(n#0 + 12, TInt) && n#0 + 12 == n#0 + 12)
       || 
      ($Is(LitInt(0), TInt) && LitInt(0) == n#0 + 12)
       || (exists $as#x2#0: int :: $as#x2#0 == n#0 + 12);
    havoc x#0;
    assume {:id "id379"} x#0 == n#0 + 12;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(659,5)
    havoc y#1;
    if ($Is(y#1, Tclass._module.Lindgren())
       && $IsAlloc(y#1, Tclass._module.Lindgren(), $Heap))
    {
        assume true;
    }

    assert {:id "id380"} ($Is(Lit(#_module.Lindgren.HerrNilsson()), Tclass._module.Lindgren())
         && Lit(#_module.Lindgren.HerrNilsson()) == Lit(#_module.Lindgren.HerrNilsson()))
       || 
      ($Is(Lit(#_module.Lindgren.HerrNilsson()), Tclass._module.Lindgren())
         && Lit(#_module.Lindgren.HerrNilsson()) == Lit(#_module.Lindgren.HerrNilsson()))
       || (exists $as#y0#0: DatatypeType :: 
        $Is($as#y0#0, Tclass._module.Lindgren())
           && $as#y0#0 == Lit(#_module.Lindgren.HerrNilsson()));
    defass#y#0 := true;
    havoc y#0;
    assume {:id "id381"} y#0 == Lit(#_module.Lindgren.HerrNilsson());
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(660,5)
    havoc y#2;
    if ($Is(y#2, Tclass._module.Lindgren())
       && $IsAlloc(y#2, Tclass._module.Lindgren(), $Heap))
    {
        assume $IsA#_module.Lindgren(y#2) && $IsA#_module.Lindgren(y#2);
    }

    assert {:id "id382"} ($Is(Lit(#_module.Lindgren.HerrNilsson()), Tclass._module.Lindgren())
         && _module.Lindgren#Equal(#_module.Lindgren.HerrNilsson(), #_module.Lindgren.HerrNilsson()))
       || (exists $as#y1#0: DatatypeType :: 
        $Is($as#y1#0, Tclass._module.Lindgren())
           && $IsAlloc($as#y1#0, Tclass._module.Lindgren(), $Heap)
           && _module.Lindgren#Equal($as#y1#0, $as#y1#0));
    defass#y#0 := true;
    havoc y#0;
    assume {:id "id383"} _module.Lindgren#Equal(y#0, y#0);
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(661,5)
    havoc x#4;
    if (true)
    {
        assume true;
    }

    assert {:id "id384"} ($Is(LitInt(3), TInt)
         && (
          LitInt(3) == LitInt(3)
           || LitInt(3) == LitInt(3)
           || LitInt(3) == LitInt(2)
           || LitInt(3) == LitInt(3)))
       || 
      ($Is(LitInt(2), TInt)
         && (
          LitInt(2) == LitInt(3)
           || LitInt(2) == LitInt(3)
           || LitInt(2) == LitInt(2)
           || LitInt(2) == LitInt(3)))
       || 
      ($Is(LitInt(3), TInt)
         && (
          LitInt(3) == LitInt(3)
           || LitInt(3) == LitInt(3)
           || LitInt(3) == LitInt(2)
           || LitInt(3) == LitInt(3)))
       || 
      ($Is(LitInt(3), TInt)
         && (
          LitInt(3) == LitInt(3)
           || LitInt(3) == LitInt(3)
           || LitInt(3) == LitInt(2)
           || LitInt(3) == LitInt(3)))
       || 
      ($Is(LitInt(0), TInt)
         && (
          LitInt(0) == LitInt(3)
           || LitInt(0) == LitInt(3)
           || LitInt(0) == LitInt(2)
           || LitInt(0) == LitInt(3)))
       || (exists $as#x3#0: int :: 
        $as#x3#0 == LitInt(3)
           || $as#x3#0 == LitInt(3)
           || $as#x3#0 == LitInt(2)
           || $as#x3#0 == LitInt(3));
    havoc x#0;
    assume {:id "id385"} x#0 == LitInt(3) || x#0 == LitInt(3) || x#0 == LitInt(2) || x#0 == LitInt(3);
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(662,5)
    havoc x#5;
    if (true)
    {
        assume true;
    }

    assert {:id "id386"} ($Is(LitInt(0), TInt)
         && Set#IsMember(Map#Domain(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(5)), $Box(LitInt(10))), 
              $Box(LitInt(6)), 
              $Box(LitInt(12)))), 
          $Box(0)))
       || (exists $as#x4#0: int :: 
        Set#IsMember(Map#Domain(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(5)), $Box(LitInt(10))), 
              $Box(LitInt(6)), 
              $Box(LitInt(12)))), 
          $Box($as#x4#0)));
    havoc x#0;
    assume {:id "id387"} Set#IsMember(Map#Domain(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(5)), $Box(LitInt(10))), 
          $Box(LitInt(6)), 
          $Box(LitInt(12)))), 
      $Box(x#0));
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(663,5)
    havoc x#6;
    if (true)
    {
        assume true;
    }

    assert {:id "id388"} ($Is(LitInt(2), TInt)
         && Seq#Contains(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(n#0)), $Box(n#0)), $Box(LitInt(2))), 
          $Box(2)))
       || 
      ($Is(n#0, TInt)
         && Seq#Contains(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(n#0)), $Box(n#0)), $Box(LitInt(2))), 
          $Box(n#0)))
       || 
      ($Is(n#0, TInt)
         && Seq#Contains(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(n#0)), $Box(n#0)), $Box(LitInt(2))), 
          $Box(n#0)))
       || 
      ($Is(LitInt(0), TInt)
         && Seq#Contains(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(n#0)), $Box(n#0)), $Box(LitInt(2))), 
          $Box(0)))
       || (exists $as#x5#0: int :: 
        Seq#Contains(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(n#0)), $Box(n#0)), $Box(LitInt(2))), 
          $Box($as#x5#0)));
    havoc x#0;
    assume {:id "id389"} Seq#Contains(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(n#0)), $Box(n#0)), $Box(LitInt(2))), 
      $Box(x#0));
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(664,5)
    havoc x#7;
    if (true)
    {
        assume true;
    }

    assert {:id "id390"} ($Is(LitInt(0), TInt) && Seq#Contains(Seq#Empty(): Seq, $Box(0)))
       || (exists $as#x6#0: int :: Seq#Contains(Seq#Empty(): Seq, $Box($as#x6#0)));
    havoc x#0;
    assume {:id "id391"} Seq#Contains(Seq#Empty(): Seq, $Box(x#0));
    assert {:id "id392"} defass#y#0;
}



function Tclass._module.QuiteFinite() : Ty
uses {
// Tclass._module.QuiteFinite Tag
axiom Tag(Tclass._module.QuiteFinite()) == Tagclass._module.QuiteFinite
   && TagFamily(Tclass._module.QuiteFinite()) == tytagFamily$QuiteFinite;
}

const unique Tagclass._module.QuiteFinite: TyTag;

// Box/unbox axiom for Tclass._module.QuiteFinite
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.QuiteFinite()) } 
  $IsBox(bx, Tclass._module.QuiteFinite())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.QuiteFinite()));

procedure {:verboseName "AssignSuchThat9 (well-formedness)"} CheckWellFormed$$_module.__default.AssignSuchThat9()
   returns (q#0: DatatypeType
       where $Is(q#0, Tclass._module.QuiteFinite())
         && $IsAlloc(q#0, Tclass._module.QuiteFinite(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AssignSuchThat9 (call)"} Call$$_module.__default.AssignSuchThat9()
   returns (q#0: DatatypeType
       where $Is(q#0, Tclass._module.QuiteFinite())
         && $IsAlloc(q#0, Tclass._module.QuiteFinite(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AssignSuchThat9 (correctness)"} Impl$$_module.__default.AssignSuchThat9()
   returns (q#0: DatatypeType
       where $Is(q#0, Tclass._module.QuiteFinite())
         && $IsAlloc(q#0, Tclass._module.QuiteFinite(), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AssignSuchThat9 (correctness)"} Impl$$_module.__default.AssignSuchThat9() returns (q#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var q#1: DatatypeType;

    // AddMethodImpl: AssignSuchThat9, Impl$$_module.__default.AssignSuchThat9
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(671,5)
    havoc q#1;
    if ($Is(q#1, Tclass._module.QuiteFinite())
       && $IsAlloc(q#1, Tclass._module.QuiteFinite(), $Heap))
    {
        if (!$Eq#_module.QuiteFinite($LS($LS($LZ)), q#1, #_module.QuiteFinite.QQA()))
        {
        }

        assume $IsA#_module.QuiteFinite(q#1)
           && (!$Eq#_module.QuiteFinite($LS($LS($LZ)), q#1, #_module.QuiteFinite.QQA())
             ==> $IsA#_module.QuiteFinite(q#1));
    }

    assert {:id "id393"} ($Is(Lit(#_module.QuiteFinite.QQC()), Tclass._module.QuiteFinite())
         && 
        !$Eq#_module.QuiteFinite($LS($LS($LZ)), #_module.QuiteFinite.QQC(), #_module.QuiteFinite.QQA())
         && !$Eq#_module.QuiteFinite($LS($LS($LZ)), #_module.QuiteFinite.QQC(), #_module.QuiteFinite.QQC()))
       || 
      ($Is(Lit(#_module.QuiteFinite.QQB()), Tclass._module.QuiteFinite())
         && 
        !$Eq#_module.QuiteFinite($LS($LS($LZ)), #_module.QuiteFinite.QQB(), #_module.QuiteFinite.QQA())
         && !$Eq#_module.QuiteFinite($LS($LS($LZ)), #_module.QuiteFinite.QQB(), #_module.QuiteFinite.QQC()))
       || 
      ($Is(Lit(#_module.QuiteFinite.QQA()), Tclass._module.QuiteFinite())
         && 
        !$Eq#_module.QuiteFinite($LS($LS($LZ)), #_module.QuiteFinite.QQA(), #_module.QuiteFinite.QQA())
         && !$Eq#_module.QuiteFinite($LS($LS($LZ)), #_module.QuiteFinite.QQA(), #_module.QuiteFinite.QQC()))
       || (exists $as#q0#0: DatatypeType :: 
        $Is($as#q0#0, Tclass._module.QuiteFinite())
           && 
          !$Eq#_module.QuiteFinite($LS($LS($LZ)), $as#q0#0, #_module.QuiteFinite.QQA())
           && !$Eq#_module.QuiteFinite($LS($LS($LZ)), $as#q0#0, #_module.QuiteFinite.QQC()));
    havoc q#0;
    assume {:id "id394"} !$Eq#_module.QuiteFinite($LS($LS($LZ)), q#0, #_module.QuiteFinite.QQA())
       && !$Eq#_module.QuiteFinite($LS($LS($LZ)), q#0, #_module.QuiteFinite.QQC());
}



// function declaration for _module._default.LetSuchThat_P
function _module.__default.LetSuchThat__P(x#0: int) : bool;

function _module.__default.LetSuchThat__P#canCall(x#0: int) : bool;

function _module.__default.LetSuchThat__P#requires(int) : bool;

// #requires axiom for _module.__default.LetSuchThat__P
axiom (forall x#0: int :: 
  { _module.__default.LetSuchThat__P#requires(x#0) } 
  _module.__default.LetSuchThat__P#requires(x#0) == true);

procedure {:verboseName "LetSuchThat_P (well-formedness)"} CheckWellformed$$_module.__default.LetSuchThat__P(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LetSuchThat0 (well-formedness)"} CheckWellFormed$$_module.__default.LetSuchThat0(g#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LetSuchThat0 (call)"} Call$$_module.__default.LetSuchThat0(g#0: int);
  // user-defined preconditions
  requires {:id "id396"} _module.__default.LetSuchThat__P(g#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LetSuchThat0 (correctness)"} Impl$$_module.__default.LetSuchThat0(g#0: int) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id397"} _module.__default.LetSuchThat__P(g#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function $let#0_q() : int;

function $let#0$canCall() : bool
uses {
axiom $let#0$canCall() ==> _module.__default.LetSuchThat__P($let#0_q());
}

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LetSuchThat0 (correctness)"} Impl$$_module.__default.LetSuchThat0(g#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var t#0: int;
  var t#1: int;
  var ##x#1: int;
  var u#0: int;
  var q#1: int;
  var ##x#2: int;
  var a#0: int;
  var b#0: int;
  var ##x#3: int;
  var ##x#4: int;
  var ##x#5: int;
  var ##x#6: int;

    // AddMethodImpl: LetSuchThat0, Impl$$_module.__default.LetSuchThat0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(681,9)
    havoc t#1;
    if (true)
    {
        ##x#1 := t#1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#1, TInt, $Heap);
        assume _module.__default.LetSuchThat__P#canCall(t#1);
        assume _module.__default.LetSuchThat__P#canCall(t#1);
    }

    assert {:id "id398"} ($Is(LitInt(0), TInt) && _module.__default.LetSuchThat__P(LitInt(0)))
       || (exists $as#t0#0: int :: _module.__default.LetSuchThat__P($as#t0#0));
    havoc t#0;
    assume {:id "id399"} _module.__default.LetSuchThat__P(t#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(682,15)
    assume true;
    havoc q#1;
    if (true)
    {
        ##x#2 := q#1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#2, TInt, $Heap);
        assume _module.__default.LetSuchThat__P#canCall(q#1);
    }

    assert {:id "id400"} ($Is(LitInt(0), TInt) && _module.__default.LetSuchThat__P(LitInt(0)))
       || (exists q#0: int :: _module.__default.LetSuchThat__P(q#0));
    assume true;
    assume _module.__default.LetSuchThat__P(q#1);
    assume $let#0$canCall();
    assume $let#0$canCall();
    u#0 := (var q#0 := $let#0_q(); q#0 + 1);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(683,3)
    // Begin Comprehension WF check
    havoc a#0;
    havoc b#0;
    if (true)
    {
        ##x#3 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#3, TInt, $Heap);
        assume _module.__default.LetSuchThat__P#canCall(a#0);
        if (_module.__default.LetSuchThat__P(a#0))
        {
            ##x#4 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#4, TInt, $Heap);
            assume _module.__default.LetSuchThat__P#canCall(b#0);
        }

        if (_module.__default.LetSuchThat__P(a#0) && _module.__default.LetSuchThat__P(b#0))
        {
        }
    }

    // End Comprehension WF check
    assume (forall a#1: int, b#1: int :: 
      { _module.__default.LetSuchThat__P(b#1), _module.__default.LetSuchThat__P(a#1) } 
      _module.__default.LetSuchThat__P#canCall(a#1)
         && (_module.__default.LetSuchThat__P(a#1)
           ==> _module.__default.LetSuchThat__P#canCall(b#1)));
    if ((forall a#1: int, b#1: int :: 
      { _module.__default.LetSuchThat__P(b#1), _module.__default.LetSuchThat__P(a#1) } 
      _module.__default.LetSuchThat__P(a#1) && _module.__default.LetSuchThat__P(b#1)
         ==> a#1 == b#1))
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(684,5)
        assume true;
        assert {:id "id402"} t#0 < u#0;
        pop;
    }
    else
    {
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(686,3)
    ##x#5 := u#0 - 1;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#5, TInt, $Heap);
    assume _module.__default.LetSuchThat__P#canCall(u#0 - 1);
    assume _module.__default.LetSuchThat__P#canCall(u#0 - 1);
    assert {:id "id403"} _module.__default.LetSuchThat__P(u#0 - 1);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(687,3)
    ##x#6 := u#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#6, TInt, $Heap);
    assume _module.__default.LetSuchThat__P#canCall(u#0);
    assume _module.__default.LetSuchThat__P#canCall(u#0);
    assert {:id "id404"} _module.__default.LetSuchThat__P(u#0);
}



procedure {:verboseName "LetSuchThat1 (well-formedness)"} CheckWellFormed$$_module.__default.LetSuchThat1(_module._default.LetSuchThat1$T: Ty, 
    A#0: Set
       where $Is(A#0, TSet(_module._default.LetSuchThat1$T))
         && $IsAlloc(A#0, TSet(_module._default.LetSuchThat1$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LetSuchThat1 (call)"} Call$$_module.__default.LetSuchThat1(_module._default.LetSuchThat1$T: Ty, 
    A#0: Set
       where $Is(A#0, TSet(_module._default.LetSuchThat1$T))
         && $IsAlloc(A#0, TSet(_module._default.LetSuchThat1$T), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LetSuchThat1 (correctness)"} Impl$$_module.__default.LetSuchThat1(_module._default.LetSuchThat1$T: Ty, 
    A#0: Set
       where $Is(A#0, TSet(_module._default.LetSuchThat1$T))
         && $IsAlloc(A#0, TSet(_module._default.LetSuchThat1$T), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function $let#1_B(_module._default.LetSuchThat1$T: Ty, A: Set) : Set;

function $let#1$canCall(_module._default.LetSuchThat1$T: Ty, A: Set) : bool;

axiom (forall _module._default.LetSuchThat1$T: Ty, A: Set :: 
  { $let#1_B(_module._default.LetSuchThat1$T, A) } 
  $let#1$canCall(_module._default.LetSuchThat1$T, A)
     ==> $Is($let#1_B(_module._default.LetSuchThat1$T, A), 
        TSet(_module._default.LetSuchThat1$T))
       && Set#Subset($let#1_B(_module._default.LetSuchThat1$T, A), A));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LetSuchThat1 (correctness)"} Impl$$_module.__default.LetSuchThat1(_module._default.LetSuchThat1$T: Ty, A#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var C#0: Set
     where $Is(C#0, TSet(_module._default.LetSuchThat1$T))
       && $IsAlloc(C#0, TSet(_module._default.LetSuchThat1$T), $Heap);
  var B#1: Set;

    // AddMethodImpl: LetSuchThat1, Impl$$_module.__default.LetSuchThat1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(692,15)
    assume true;
    havoc B#1;
    if ($Is(B#1, TSet(_module._default.LetSuchThat1$T))
       && $IsAlloc(B#1, TSet(_module._default.LetSuchThat1$T), $Heap))
    {
    }

    assert {:id "id405"} ($Is(A#0, TSet(_module._default.LetSuchThat1$T)) && Set#Subset(A#0, A#0))
       || 
      ($Is(Lit(Set#Empty(): Set), TSet(_module._default.LetSuchThat1$T))
         && Set#Subset(Set#Empty(): Set, A#0))
       || (exists B#0: Set :: 
        $Is(B#0, TSet(_module._default.LetSuchThat1$T)) && Set#Subset(B#0, A#0));
    assume $Is(B#1, TSet(_module._default.LetSuchThat1$T))
       && $IsAlloc(B#1, TSet(_module._default.LetSuchThat1$T), $Heap);
    assume Set#Subset(B#1, A#0);
    assume $let#1$canCall(_module._default.LetSuchThat1$T, A#0);
    assume $let#1$canCall(_module._default.LetSuchThat1$T, A#0);
    C#0 := (var B#0 := $let#1_B(_module._default.LetSuchThat1$T, A#0); 
      Set#Difference(B#0, A#0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(693,3)
    assume true;
    assert {:id "id407"} Set#Equal(C#0, Set#Empty(): Set);
}



procedure {:verboseName "LetSuchThat2 (well-formedness)"} CheckWellFormed$$_module.__default.LetSuchThat2(n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LetSuchThat2 (call)"} Call$$_module.__default.LetSuchThat2(n#0: int where LitInt(0) <= n#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LetSuchThat2 (correctness)"} Impl$$_module.__default.LetSuchThat2(n#0: int where LitInt(0) <= n#0) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function $let#2_k(n: int) : int;

function $let#2$canCall(n: int) : bool;

axiom (forall n: int :: { $let#2_k(n) } $let#2$canCall(n) ==> $let#2_k(n) < n);

function $let#3_k(n: int) : int;

function $let#3$canCall(n: int) : bool;

axiom (forall n: int :: 
  { $let#3_k(n) } 
  $let#3$canCall(n) ==> LitInt(0) <= $let#3_k(n) && $let#3_k(n) < n);

function $let#4_k(n: int) : int;

function $let#4$canCall(n: int) : bool;

axiom (forall n: int :: 
  { $let#4_k(n) } 
  $let#4$canCall(n) ==> LitInt(0) <= $let#4_k(n) && $let#4_k(n) < n);

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LetSuchThat2 (correctness)"} Impl$$_module.__default.LetSuchThat2(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int;
  var k#1: int;
  var k#0_1: int;
  var k#1_1: int;

    // AddMethodImpl: LetSuchThat2, Impl$$_module.__default.LetSuchThat2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(698,15)
    assume true;
    havoc k#1;
    if (true)
    {
    }

    assert {:id "id408"} ($Is(n#0 - 1, TInt) && n#0 - 1 < n#0)
       || 
      ($Is(LitInt(0), TInt) && 0 < n#0)
       || (exists k#0: int :: k#0 < n#0);
    assume true;
    assume k#1 < n#0;
    assume $let#2$canCall(n#0);
    assume $let#2$canCall(n#0);
    x#0 := (var k#0 := $let#2_k(n#0); k#0) + 3;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(699,3)
    assume true;
    assert {:id "id410"} x#0 < n#0 + 3;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(700,3)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(701,7)
        assume true;
        havoc k#0_1;
        if (true)
        {
            if (LitInt(0) <= k#0_1)
            {
            }
        }

        assert {:id "id411"} ($Is(n#0 - 1, TInt) && LitInt(0) <= n#0 - 1 && n#0 - 1 < n#0)
           || 
          ($Is(LitInt(0), TInt) && LitInt(0) <= LitInt(0) && 0 < n#0)
           || 
          ($Is(LitInt(0), TInt) && LitInt(0) <= LitInt(0) && 0 < n#0)
           || (exists k#0_0: int :: LitInt(0) <= k#0_0 && k#0_0 < n#0);
        assume true;
        assume LitInt(0) <= k#0_1 && k#0_1 < n#0;
        assume $let#3$canCall(n#0);
        assume $let#3$canCall(n#0);
        x#0 := (var k#0_0 := $let#3_k(n#0); k#0_0);
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(703,7)
        assume true;
        havoc k#1_1;
        if (LitInt(0) <= k#1_1)
        {
        }

        assert {:id "id413"} ($Is(n#0 - 1, Tclass._System.nat()) && n#0 - 1 < n#0)
           || 
          ($Is(LitInt(0), Tclass._System.nat()) && 0 < n#0)
           || 
          ($Is(LitInt(0), Tclass._System.nat()) && 0 < n#0)
           || (exists k#1_0: int :: LitInt(0) <= k#1_0 && k#1_0 < n#0);
        assume LitInt(0) <= k#1_1;
        assume k#1_1 < n#0;
        assume $let#4$canCall(n#0);
        assume $let#4$canCall(n#0);
        x#0 := (var k#1_0 := $let#4_k(n#0); k#1_0);
    }
}



procedure {:verboseName "LetSuchThat3 (well-formedness)"} CheckWellFormed$$_module.__default.LetSuchThat3(n#0: int)
   returns (xx#0: int, 
    yy#0: DatatypeType
       where $Is(yy#0, Tclass._module.Lindgren())
         && $IsAlloc(yy#0, Tclass._module.Lindgren(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LetSuchThat3 (call)"} Call$$_module.__default.LetSuchThat3(n#0: int)
   returns (xx#0: int, 
    yy#0: DatatypeType
       where $Is(yy#0, Tclass._module.Lindgren())
         && $IsAlloc(yy#0, Tclass._module.Lindgren(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "LetSuchThat3 (correctness)"} Impl$$_module.__default.LetSuchThat3(n#0: int)
   returns (xx#0: int, 
    defass#yy#0: bool, 
    yy#0: DatatypeType
       where defass#yy#0
         ==> $Is(yy#0, Tclass._module.Lindgren())
           && $IsAlloc(yy#0, Tclass._module.Lindgren(), $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



function $let#5_x() : int;

function $let#5$canCall() : bool
uses {
axiom $let#5$canCall() ==> $let#5_x() == LitInt(1);
}

function $let#6_x() : int;

function $let#6$canCall() : bool
uses {
axiom $let#6$canCall()
   ==> $let#6_x() == LitInt(3) || $let#6_x() == LitInt(7) || $let#6_x() == LitInt(11);
}

function $let#7_x(n: int) : int;

function $let#7$canCall(n: int) : bool;

axiom (forall n: int :: { $let#7_x(n) } $let#7$canCall(n) ==> $let#7_x(n) == n + 12);

function $let#8_y() : DatatypeType;

function $let#8$canCall() : bool
uses {
axiom $let#8$canCall()
   ==> $Is($let#8_y(), Tclass._module.Lindgren())
     && $let#8_y() == Lit(#_module.Lindgren.HerrNilsson());
}

function $let#9_y() : DatatypeType;

function $let#9$canCall() : bool
uses {
axiom $let#9$canCall()
   ==> $Is($let#9_y(), Tclass._module.Lindgren())
     && _module.Lindgren#Equal($let#9_y(), $let#9_y());
}

function $let#10_x() : int;

function $let#10$canCall() : bool
uses {
axiom $let#10$canCall()
   ==> $let#10_x() == LitInt(3)
     || $let#10_x() == LitInt(3)
     || $let#10_x() == LitInt(2)
     || $let#10_x() == LitInt(3);
}

function $let#11_x() : int;

function $let#11$canCall() : bool
uses {
axiom $let#11$canCall()
   ==> Set#IsMember(Map#Domain(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(5)), $Box(LitInt(10))), 
        $Box(LitInt(6)), 
        $Box(LitInt(12)))), 
    $Box($let#11_x()));
}

function $let#12_x(n: int) : int;

function $let#12$canCall(n: int) : bool;

axiom (forall n: int :: 
  { $let#12_x(n) } 
  $let#12$canCall(n)
     ==> Seq#Contains(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(n)), $Box(n)), $Box(LitInt(2))), 
      $Box($let#12_x(n))));

function $let#13_x() : int;

function $let#13$canCall() : bool
uses {
axiom $let#13$canCall()
   ==> Set#IsMember(Map#Domain((var m#0 := Lit(Map#Empty(): Map); m#0)), $Box($let#13_x()));
}

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LetSuchThat3 (correctness)"} Impl$$_module.__default.LetSuchThat3(n#0: int)
   returns (xx#0: int, defass#yy#0: bool, yy#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#1: int;
  var x#3: int;
  var x#5: int;
  var y#1: DatatypeType;
  var y#3: DatatypeType;
  var x#7: int;
  var x#9: int;
  var x#11: int;
  var x#13: int;
  var m#Z#0: Map;
  var let#0#0#0: Map;

    // AddMethodImpl: LetSuchThat3, Impl$$_module.__default.LetSuchThat3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(708,6)
    assume true;
    havoc x#1;
    if (true)
    {
    }

    assert {:id "id415"} ($Is(LitInt(1), TInt) && LitInt(1) == LitInt(1))
       || 
      ($Is(LitInt(0), TInt) && LitInt(0) == LitInt(1))
       || (exists x#0: int :: x#0 == LitInt(1));
    assume true;
    assume x#1 == LitInt(1);
    assume $let#5$canCall();
    assume $let#5$canCall();
    xx#0 := (var x#0 := $let#5_x(); x#0 + 10);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(709,6)
    assume true;
    havoc x#3;
    if (true)
    {
    }

    assert {:id "id417"} ($Is(LitInt(11), TInt)
         && (LitInt(11) == LitInt(3) || LitInt(11) == LitInt(7) || LitInt(11) == LitInt(11)))
       || 
      ($Is(LitInt(7), TInt)
         && (LitInt(7) == LitInt(3) || LitInt(7) == LitInt(7) || LitInt(7) == LitInt(11)))
       || 
      ($Is(LitInt(3), TInt)
         && (LitInt(3) == LitInt(3) || LitInt(3) == LitInt(7) || LitInt(3) == LitInt(11)))
       || 
      ($Is(LitInt(0), TInt)
         && (LitInt(0) == LitInt(3) || LitInt(0) == LitInt(7) || LitInt(0) == LitInt(11)))
       || (exists x#2: int :: x#2 == LitInt(3) || x#2 == LitInt(7) || x#2 == LitInt(11));
    assume true;
    assume x#3 == LitInt(3) || x#3 == LitInt(7) || x#3 == LitInt(11);
    assume $let#6$canCall();
    assume $let#6$canCall();
    xx#0 := (var x#2 := $let#6_x(); x#2 + 10);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(710,6)
    assume true;
    havoc x#5;
    if (true)
    {
    }

    assert {:id "id419"} ($Is(n#0 + 12, TInt) && n#0 + 12 == n#0 + 12)
       || 
      ($Is(LitInt(0), TInt) && LitInt(0) == n#0 + 12)
       || (exists x#4: int :: x#4 == n#0 + 12);
    assume true;
    assume x#5 == n#0 + 12;
    assume $let#7$canCall(n#0);
    assume $let#7$canCall(n#0);
    xx#0 := (var x#4 := $let#7_x(n#0); x#4 + 10);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(711,6)
    assume true;
    havoc y#1;
    if ($Is(y#1, Tclass._module.Lindgren())
       && $IsAlloc(y#1, Tclass._module.Lindgren(), $Heap))
    {
    }

    assert {:id "id421"} ($Is(Lit(#_module.Lindgren.HerrNilsson()), Tclass._module.Lindgren())
         && Lit(#_module.Lindgren.HerrNilsson()) == Lit(#_module.Lindgren.HerrNilsson()))
       || 
      ($Is(Lit(#_module.Lindgren.HerrNilsson()), Tclass._module.Lindgren())
         && Lit(#_module.Lindgren.HerrNilsson()) == Lit(#_module.Lindgren.HerrNilsson()))
       || (exists y#0: DatatypeType :: 
        $Is(y#0, Tclass._module.Lindgren())
           && y#0 == Lit(#_module.Lindgren.HerrNilsson()));
    assume $Is(y#1, Tclass._module.Lindgren())
       && $IsAlloc(y#1, Tclass._module.Lindgren(), $Heap);
    assume y#1 == Lit(#_module.Lindgren.HerrNilsson());
    assume $let#8$canCall();
    assume $let#8$canCall();
    yy#0 := (var y#0 := $let#8_y(); y#0);
    defass#yy#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(712,6)
    assume true;
    havoc y#3;
    if ($Is(y#3, Tclass._module.Lindgren())
       && $IsAlloc(y#3, Tclass._module.Lindgren(), $Heap))
    {
    }

    assert {:id "id423"} ($Is(Lit(#_module.Lindgren.HerrNilsson()), Tclass._module.Lindgren())
         && _module.Lindgren#Equal(#_module.Lindgren.HerrNilsson(), #_module.Lindgren.HerrNilsson()))
       || (exists y#2: DatatypeType :: 
        $Is(y#2, Tclass._module.Lindgren()) && _module.Lindgren#Equal(y#2, y#2));
    assume $Is(y#3, Tclass._module.Lindgren())
       && $IsAlloc(y#3, Tclass._module.Lindgren(), $Heap);
    assume _module.Lindgren#Equal(y#3, y#3);
    assume $let#9$canCall();
    assume $let#9$canCall();
    yy#0 := (var y#2 := $let#9_y(); y#2);
    defass#yy#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(713,6)
    assume true;
    havoc x#7;
    if (true)
    {
    }

    assert {:id "id425"} ($Is(LitInt(3), TInt)
         && (
          LitInt(3) == LitInt(3)
           || LitInt(3) == LitInt(3)
           || LitInt(3) == LitInt(2)
           || LitInt(3) == LitInt(3)))
       || 
      ($Is(LitInt(2), TInt)
         && (
          LitInt(2) == LitInt(3)
           || LitInt(2) == LitInt(3)
           || LitInt(2) == LitInt(2)
           || LitInt(2) == LitInt(3)))
       || 
      ($Is(LitInt(3), TInt)
         && (
          LitInt(3) == LitInt(3)
           || LitInt(3) == LitInt(3)
           || LitInt(3) == LitInt(2)
           || LitInt(3) == LitInt(3)))
       || 
      ($Is(LitInt(3), TInt)
         && (
          LitInt(3) == LitInt(3)
           || LitInt(3) == LitInt(3)
           || LitInt(3) == LitInt(2)
           || LitInt(3) == LitInt(3)))
       || 
      ($Is(LitInt(0), TInt)
         && (
          LitInt(0) == LitInt(3)
           || LitInt(0) == LitInt(3)
           || LitInt(0) == LitInt(2)
           || LitInt(0) == LitInt(3)))
       || (exists x#6: int :: 
        x#6 == LitInt(3) || x#6 == LitInt(3) || x#6 == LitInt(2) || x#6 == LitInt(3));
    assume true;
    assume x#7 == LitInt(3) || x#7 == LitInt(3) || x#7 == LitInt(2) || x#7 == LitInt(3);
    assume $let#10$canCall();
    assume $let#10$canCall();
    xx#0 := (var x#6 := $let#10_x(); x#6 + 10);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(714,6)
    assume true;
    havoc x#9;
    if (true)
    {
    }

    assert {:id "id427"} ($Is(LitInt(0), TInt)
         && Set#IsMember(Map#Domain(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(5)), $Box(LitInt(10))), 
              $Box(LitInt(6)), 
              $Box(LitInt(12)))), 
          $Box(0)))
       || (exists x#8: int :: 
        Set#IsMember(Map#Domain(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(5)), $Box(LitInt(10))), 
              $Box(LitInt(6)), 
              $Box(LitInt(12)))), 
          $Box(x#8)));
    assume true;
    assume Set#IsMember(Map#Domain(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(5)), $Box(LitInt(10))), 
          $Box(LitInt(6)), 
          $Box(LitInt(12)))), 
      $Box(x#9));
    assume $let#11$canCall();
    assume $let#11$canCall();
    xx#0 := (var x#8 := $let#11_x(); x#8 + 10);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(715,6)
    assume true;
    havoc x#11;
    if (true)
    {
    }

    assert {:id "id429"} ($Is(LitInt(2), TInt)
         && Seq#Contains(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(n#0)), $Box(n#0)), $Box(LitInt(2))), 
          $Box(2)))
       || 
      ($Is(n#0, TInt)
         && Seq#Contains(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(n#0)), $Box(n#0)), $Box(LitInt(2))), 
          $Box(n#0)))
       || 
      ($Is(n#0, TInt)
         && Seq#Contains(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(n#0)), $Box(n#0)), $Box(LitInt(2))), 
          $Box(n#0)))
       || 
      ($Is(LitInt(0), TInt)
         && Seq#Contains(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(n#0)), $Box(n#0)), $Box(LitInt(2))), 
          $Box(0)))
       || (exists x#10: int :: 
        Seq#Contains(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(n#0)), $Box(n#0)), $Box(LitInt(2))), 
          $Box(x#10)));
    assume true;
    assume Seq#Contains(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(n#0)), $Box(n#0)), $Box(LitInt(2))), 
      $Box(x#11));
    assume $let#12$canCall(n#0);
    assume $let#12$canCall(n#0);
    xx#0 := (var x#10 := $let#12_x(n#0); x#10 + 10);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(716,6)
    assume true;
    havoc x#13;
    if (true)
    {
        havoc m#Z#0;
        assume {:id "id431"} let#0#0#0 == Lit(Map#Empty(): Map);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TMap(TInt, TInt));
        assume {:id "id432"} m#Z#0 == let#0#0#0;
    }

    assert {:id "id433"} ($Is(LitInt(0), TInt)
         && Set#IsMember(Map#Domain((var m#2 := Lit(Map#Empty(): Map); m#2)), $Box(0)))
       || (exists x#12: int :: 
        Set#IsMember(Map#Domain((var m#1 := Lit(Map#Empty(): Map); m#1)), $Box(x#12)));
    assume true;
    assume Set#IsMember(Map#Domain((var m#3 := Lit(Map#Empty(): Map); m#3)), $Box(x#13));
    assume $let#13$canCall();
    assume $let#13$canCall();
    xx#0 := (var x#12 := $let#13_x(); x#12 + 10);
    assert {:id "id435"} defass#yy#0;
}



const unique class._module.Node?: ClassName;

// $Is axiom for class Node
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Node?()) } 
  $Is($o, Tclass._module.Node?())
     <==> $o == null || dtype($o) == Tclass._module.Node?());

// $IsAlloc axiom for class Node
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Node?(), $h) } 
  $IsAlloc($o, Tclass._module.Node?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Node.next: Field
uses {
axiom FDim(_module.Node.next) == 0
   && FieldOfDecl(class._module.Node?, field$next) == _module.Node.next
   && !$IsGhostField(_module.Node.next);
}

// Node.next: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.next)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Node?()
     ==> $Is($Unbox(read($h, $o, _module.Node.next)): ref, Tclass._module.Node?()));

// Node.next: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.next)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Node.next)): ref, Tclass._module.Node?(), $h));

// function declaration for _module.Node.IsList
function _module.Node.IsList($ly: LayerType, $heap: Heap, this: ref, r#0: Set) : bool
uses {
// definition axiom for _module.Node.IsList (revealed)
axiom {:id "id436"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref, r#0: Set :: 
    { _module.Node.IsList($LS($ly), $Heap, this, r#0), $IsGoodHeap($Heap) } 
    _module.Node.IsList#canCall($Heap, this, r#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Node())
           && $IsAlloc(this, Tclass._module.Node(), $Heap)
           && $Is(r#0, TSet(Tclass._module.Node())))
       ==> (Set#IsMember(r#0, $Box(this))
           ==> 
          $Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> _module.Node.IsList#canCall($Heap, 
            $Unbox(read($Heap, this, _module.Node.next)): ref, 
            Set#Difference(r#0, Set#UnionOne(Set#Empty(): Set, $Box(this)))))
         && _module.Node.IsList($LS($ly), $Heap, this, r#0)
           == (Set#IsMember(r#0, $Box(this))
             && ($Unbox(read($Heap, this, _module.Node.next)): ref != null
               ==> _module.Node.IsList($ly, 
                $Heap, 
                $Unbox(read($Heap, this, _module.Node.next)): ref, 
                Set#Difference(r#0, Set#UnionOne(Set#Empty(): Set, $Box(this)))))));
}

function _module.Node.IsList#canCall($heap: Heap, this: ref, r#0: Set) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, r#0: Set :: 
  { _module.Node.IsList($LS($ly), $Heap, this, r#0) } 
  _module.Node.IsList($LS($ly), $Heap, this, r#0)
     == _module.Node.IsList($ly, $Heap, this, r#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, r#0: Set :: 
  { _module.Node.IsList(AsFuelBottom($ly), $Heap, this, r#0) } 
  _module.Node.IsList($ly, $Heap, this, r#0)
     == _module.Node.IsList($LZ, $Heap, this, r#0));

// frame axiom for _module.Node.IsList
axiom (forall $ly: LayerType, $h0: Heap, $h1: Heap, this: ref, r#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Node.IsList($ly, $h1, this, r#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Node())
       && (_module.Node.IsList#canCall($h0, this, r#0)
         || $Is(r#0, TSet(Tclass._module.Node())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(r#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Node.IsList($ly, $h0, this, r#0)
       == _module.Node.IsList($ly, $h1, this, r#0));

function _module.Node.IsList#requires(LayerType, Heap, ref, Set) : bool;

// #requires axiom for _module.Node.IsList
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, r#0: Set :: 
  { _module.Node.IsList#requires($ly, $Heap, this, r#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Node())
       && $IsAlloc(this, Tclass._module.Node(), $Heap)
       && $Is(r#0, TSet(Tclass._module.Node()))
     ==> _module.Node.IsList#requires($ly, $Heap, this, r#0) == true);

procedure {:verboseName "Node.IsList (well-formedness)"} CheckWellformed$$_module.Node.IsList(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    r#0: Set where $Is(r#0, TSet(Tclass._module.Node())));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.IsList (well-formedness)"} CheckWellformed$$_module.Node.IsList(this: ref, r#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var ##r#0: Set;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(r#0, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
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
        if (Set#IsMember(r#0, $Box(this)))
        {
            b$reqreads#0 := $_ReadsFrame[this, _module.Node.next];
            newtype$check#0 := null;
            if ($Unbox(read($Heap, this, _module.Node.next)): ref != null)
            {
                b$reqreads#1 := $_ReadsFrame[this, _module.Node.next];
                assert {:id "id437"} $Unbox(read($Heap, this, _module.Node.next)): ref != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox(read($Heap, this, _module.Node.next), Tclass._module.Node?(), $Heap);
                ##r#0 := Set#Difference(r#0, Set#UnionOne(Set#Empty(): Set, $Box(this)));
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#0, TSet(Tclass._module.Node()), $Heap);
                b$reqreads#2 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && Set#IsMember(##r#0, $Box($o))
                     ==> $_ReadsFrame[$o, $f]);
                assert {:id "id438"} (Set#Subset(##r#0, r#0) && !Set#Subset(r#0, ##r#0))
                   || (Set#Equal(##r#0, r#0) && Set#Subset(##r#0, r#0) && !Set#Subset(r#0, ##r#0));
                assume _module.Node.IsList#canCall($Heap, 
                  $Unbox(read($Heap, this, _module.Node.next)): ref, 
                  Set#Difference(r#0, Set#UnionOne(Set#Empty(): Set, $Box(this))));
            }
        }

        assume {:id "id439"} _module.Node.IsList($LS($LZ), $Heap, this, r#0)
           == (Set#IsMember(r#0, $Box(this))
             && ($Unbox(read($Heap, this, _module.Node.next)): ref != null
               ==> _module.Node.IsList($LS($LZ), 
                $Heap, 
                $Unbox(read($Heap, this, _module.Node.next)): ref, 
                Set#Difference(r#0, Set#UnionOne(Set#Empty(): Set, $Box(this))))));
        assume Set#IsMember(r#0, $Box(this))
           ==> 
          $Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> _module.Node.IsList#canCall($Heap, 
            $Unbox(read($Heap, this, _module.Node.next)): ref, 
            Set#Difference(r#0, Set#UnionOne(Set#Empty(): Set, $Box(this))));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Node.IsList($LS($LZ), $Heap, this, r#0), TBool);
        assert {:id "id440"} b$reqreads#0;
        assert {:id "id441"} b$reqreads#1;
        assert {:id "id442"} b$reqreads#2;
        return;

        assume false;
    }
}



procedure {:verboseName "Node.Test (well-formedness)"} CheckWellFormed$$_module.Node.Test(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    n#0: ref
       where $Is(n#0, Tclass._module.Node()) && $IsAlloc(n#0, Tclass._module.Node(), $Heap), 
    nodes#0: Set
       where $Is(nodes#0, TSet(Tclass._module.Node()))
         && $IsAlloc(nodes#0, TSet(Tclass._module.Node()), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Node.Test (call)"} Call$$_module.Node.Test(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    n#0: ref
       where $Is(n#0, Tclass._module.Node()) && $IsAlloc(n#0, Tclass._module.Node(), $Heap), 
    nodes#0: Set
       where $Is(nodes#0, TSet(Tclass._module.Node()))
         && $IsAlloc(nodes#0, TSet(Tclass._module.Node()), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Node.Test (correctness)"} Impl$$_module.Node.Test(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    n#0: ref
       where $Is(n#0, Tclass._module.Node()) && $IsAlloc(n#0, Tclass._module.Node(), $Heap), 
    nodes#0: Set
       where $Is(nodes#0, TSet(Tclass._module.Node()))
         && $IsAlloc(nodes#0, TSet(Tclass._module.Node()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Test (correctness)"} Impl$$_module.Node.Test(this: ref, n#0: ref, nodes#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##r#0: Set;
  var ##r#1: Set;

    // AddMethodImpl: Test, Impl$$_module.Node.Test
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assume statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(17,5)
    assume true;
    assume {:id "id443"} Set#Equal(nodes#0, Set#Difference(nodes#0, Set#UnionOne(Set#Empty(): Set, $Box(n#0))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(20,5)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##r#0 := nodes#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##r#0, TSet(Tclass._module.Node()), $Heap);
    assume _module.Node.IsList#canCall($Heap, this, nodes#0);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##r#1 := Set#Difference(nodes#0, Set#UnionOne(Set#Empty(): Set, $Box(n#0)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##r#1, TSet(Tclass._module.Node()), $Heap);
    assume _module.Node.IsList#canCall($Heap, this, Set#Difference(nodes#0, Set#UnionOne(Set#Empty(): Set, $Box(n#0))));
    assume _module.Node.IsList#canCall($Heap, this, nodes#0)
       && _module.Node.IsList#canCall($Heap, this, Set#Difference(nodes#0, Set#UnionOne(Set#Empty(): Set, $Box(n#0))));
    assert {:id "id444"} {:subsumption 0} _module.Node.IsList($LS($LS($LZ)), $Heap, this, nodes#0)
       == _module.Node.IsList($LS($LS($LZ)), 
        $Heap, 
        this, 
        Set#Difference(nodes#0, Set#UnionOne(Set#Empty(): Set, $Box(n#0))));
    assume {:id "id445"} _module.Node.IsList($LS($LZ), $Heap, this, nodes#0)
       == _module.Node.IsList($LS($LZ), 
        $Heap, 
        this, 
        Set#Difference(nodes#0, Set#UnionOne(Set#Empty(): Set, $Box(n#0))));
}



procedure {:verboseName "Node.Create (well-formedness)"} CheckWellFormed$$_module.Node.Create(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Node.Create (call)"} Call$$_module.Node.Create(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Node.Create (correctness)"} Impl$$_module.Node.Create(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Create (correctness)"} Impl$$_module.Node.Create(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: ref;
  var newtype$check#0: ref;
  var defass#tmp#0: bool;
  var tmp#0: ref
     where defass#tmp#0
       ==> $Is(tmp#0, Tclass._module.Node())
         && $IsAlloc(tmp#0, Tclass._module.Node(), $Heap);
  var $nw: ref;

    // AddMethodImpl: Create, Impl$$_module.Node.Create
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(26,10)
    assume true;
    assert {:id "id446"} $_ModifiesFrame[this, _module.Node.next];
    newtype$check#0 := null;
    assume true;
    $rhs#0 := null;
    $Heap := update($Heap, this, _module.Node.next, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    havoc tmp#0 /* where defass#tmp#0
       ==> $Is(tmp#0, Tclass._module.Node())
         && $IsAlloc(tmp#0, Tclass._module.Node(), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(28,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Node?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    tmp#0 := $nw;
    defass#tmp#0 := true;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(29,5)
    assert {:id "id450"} defass#tmp#0;
    assume true;
    assert {:id "id451"} tmp#0 != this;
}



procedure {:verboseName "Node.SequenceUpdateOutOfBounds (well-formedness)"} CheckWellFormed$$_module.Node.SequenceUpdateOutOfBounds(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    s#0: Seq
       where $Is(s#0, TSeq(TSet(TInt))) && $IsAlloc(s#0, TSeq(TSet(TInt)), $Heap), 
    j#0: int)
   returns (t#0: Seq
       where $Is(t#0, TSeq(TSet(TInt))) && $IsAlloc(t#0, TSeq(TSet(TInt)), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Node.SequenceUpdateOutOfBounds (call)"} Call$$_module.Node.SequenceUpdateOutOfBounds(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    s#0: Seq
       where $Is(s#0, TSeq(TSet(TInt))) && $IsAlloc(s#0, TSeq(TSet(TInt)), $Heap), 
    j#0: int)
   returns (t#0: Seq
       where $Is(t#0, TSeq(TSet(TInt))) && $IsAlloc(t#0, TSeq(TSet(TInt)), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Node.SequenceUpdateOutOfBounds (correctness)"} Impl$$_module.Node.SequenceUpdateOutOfBounds(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    s#0: Seq
       where $Is(s#0, TSeq(TSet(TInt))) && $IsAlloc(s#0, TSeq(TSet(TInt)), $Heap), 
    j#0: int)
   returns (t#0: Seq
       where $Is(t#0, TSeq(TSet(TInt))) && $IsAlloc(t#0, TSeq(TSet(TInt)), $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.SequenceUpdateOutOfBounds (correctness)"} Impl$$_module.Node.SequenceUpdateOutOfBounds(this: ref, s#0: Seq, j#0: int) returns (t#0: Seq, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: SequenceUpdateOutOfBounds, Impl$$_module.Node.SequenceUpdateOutOfBounds
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(34,7)
    assume true;
    assert {:id "id452"} 0 <= j#0 && j#0 < Seq#Length(s#0);
    assume true;
    t#0 := Seq#Update(s#0, j#0, $Box(Lit(Set#Empty(): Set)));
}



procedure {:verboseName "Node.Sequence (well-formedness)"} CheckWellFormed$$_module.Node.Sequence(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    s#0: Seq where $Is(s#0, TSeq(TBool)) && $IsAlloc(s#0, TSeq(TBool), $Heap), 
    j#0: int, 
    b#0: bool, 
    c#0: bool)
   returns (t#0: Seq where $Is(t#0, TSeq(TBool)) && $IsAlloc(t#0, TSeq(TBool), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Sequence (well-formedness)"} CheckWellFormed$$_module.Node.Sequence(this: ref, s#0: Seq, j#0: int, b#0: bool, c#0: bool) returns (t#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Sequence, CheckWellFormed$$_module.Node.Sequence
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id454"} LitInt(10) <= Seq#Length(s#0);
    if (LitInt(8) <= j#0)
    {
    }

    assume {:id "id455"} LitInt(8) <= j#0 && j#0 < Seq#Length(s#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc t#0;
    assume {:id "id456"} Seq#Length(t#0) == Seq#Length(s#0);
    if (*)
    {
        assert {:id "id457"} 0 <= LitInt(8) && LitInt(8) < Seq#Length(t#0);
        assert {:id "id458"} 0 <= LitInt(8) && LitInt(8) < Seq#Length(s#0);
        assume {:id "id459"} $Unbox(Seq#Index(t#0, LitInt(8))): bool
           == $Unbox(Seq#Index(s#0, LitInt(8))): bool;
    }
    else
    {
        assume {:id "id460"} $Unbox(Seq#Index(t#0, LitInt(8))): bool
           != $Unbox(Seq#Index(s#0, LitInt(8))): bool;
        assert {:id "id461"} 0 <= LitInt(9) && LitInt(9) < Seq#Length(t#0);
        assert {:id "id462"} 0 <= LitInt(9) && LitInt(9) < Seq#Length(s#0);
        assume {:id "id463"} $Unbox(Seq#Index(t#0, LitInt(9))): bool
           == $Unbox(Seq#Index(s#0, LitInt(9))): bool;
    }

    assert {:id "id464"} 0 <= j#0 && j#0 < Seq#Length(t#0);
    assume {:id "id465"} $Unbox(Seq#Index(t#0, j#0)): bool == b#0;
}



procedure {:verboseName "Node.Sequence (call)"} Call$$_module.Node.Sequence(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    s#0: Seq where $Is(s#0, TSeq(TBool)) && $IsAlloc(s#0, TSeq(TBool), $Heap), 
    j#0: int, 
    b#0: bool, 
    c#0: bool)
   returns (t#0: Seq where $Is(t#0, TSeq(TBool)) && $IsAlloc(t#0, TSeq(TBool), $Heap));
  // user-defined preconditions
  requires {:id "id466"} LitInt(10) <= Seq#Length(s#0);
  requires {:id "id467"} LitInt(8) <= j#0;
  requires {:id "id468"} j#0 < Seq#Length(s#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id469"} Seq#Length(t#0) == Seq#Length(s#0);
  free ensures true;
  ensures {:id "id470"} $Unbox(Seq#Index(t#0, LitInt(8))): bool
       == $Unbox(Seq#Index(s#0, LitInt(8))): bool
     || $Unbox(Seq#Index(t#0, LitInt(9))): bool
       == $Unbox(Seq#Index(s#0, LitInt(9))): bool;
  free ensures true;
  ensures {:id "id471"} $Unbox(Seq#Index(t#0, j#0)): bool == b#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Node.Sequence (correctness)"} Impl$$_module.Node.Sequence(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    s#0: Seq where $Is(s#0, TSeq(TBool)) && $IsAlloc(s#0, TSeq(TBool), $Heap), 
    j#0: int, 
    b#0: bool, 
    c#0: bool)
   returns (t#0: Seq where $Is(t#0, TSeq(TBool)) && $IsAlloc(t#0, TSeq(TBool), $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id472"} LitInt(10) <= Seq#Length(s#0);
  requires {:id "id473"} LitInt(8) <= j#0;
  requires {:id "id474"} j#0 < Seq#Length(s#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id475"} Seq#Length(t#0) == Seq#Length(s#0);
  free ensures true;
  ensures {:id "id476"} $Unbox(Seq#Index(t#0, LitInt(8))): bool
       == $Unbox(Seq#Index(s#0, LitInt(8))): bool
     || $Unbox(Seq#Index(t#0, LitInt(9))): bool
       == $Unbox(Seq#Index(s#0, LitInt(9))): bool;
  free ensures true;
  ensures {:id "id477"} $Unbox(Seq#Index(t#0, j#0)): bool == b#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Sequence (correctness)"} Impl$$_module.Node.Sequence(this: ref, s#0: Seq, j#0: int, b#0: bool, c#0: bool)
   returns (t#0: Seq, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Sequence, Impl$$_module.Node.Sequence
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(44,5)
    assume true;
    if (c#0)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(45,9)
        assume true;
        assert {:id "id478"} 0 <= j#0 && j#0 < Seq#Length(s#0);
        assume true;
        t#0 := Seq#Update(s#0, j#0, $Box(b#0));
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(47,9)
        assume true;
        assert {:id "id480"} 0 <= j#0 && j#0 <= Seq#Length(s#0);
        assert {:id "id481"} 0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(s#0);
        assume true;
        t#0 := Seq#Append(Seq#Append(Seq#Take(s#0, j#0), Seq#Build(Seq#Empty(): Seq, $Box(b#0))), 
          Seq#Drop(s#0, j#0 + 1));
    }
}



procedure {:verboseName "Node.Max0 (well-formedness)"} CheckWellFormed$$_module.Node.Max0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    x#0: int, 
    y#0: int)
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Node.Max0 (call)"} Call$$_module.Node.Max0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    x#0: int, 
    y#0: int)
   returns (r#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id484"} r#0 == (if x#0 < y#0 then y#0 else x#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Node.Max0 (correctness)"} Impl$$_module.Node.Max0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    x#0: int, 
    y#0: int)
   returns (r#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id485"} r#0 == (if x#0 < y#0 then y#0 else x#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Max0 (correctness)"} Impl$$_module.Node.Max0(this: ref, x#0: int, y#0: int) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Max0, Impl$$_module.Node.Max0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(54,5)
    assume true;
    if (x#0 < y#0)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(54,20)
        assume true;
        assume true;
        r#0 := y#0;
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(54,37)
        assume true;
        assume true;
        r#0 := x#0;
    }
}



procedure {:verboseName "Node.Max1 (well-formedness)"} CheckWellFormed$$_module.Node.Max1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    x#0: int, 
    y#0: int)
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Node.Max1 (call)"} Call$$_module.Node.Max1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    x#0: int, 
    y#0: int)
   returns (r#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id493"} r#0 == x#0 || r#0 == y#0;
  free ensures true;
  ensures {:id "id494"} x#0 <= r#0;
  ensures {:id "id495"} y#0 <= r#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Node.Max1 (correctness)"} Impl$$_module.Node.Max1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    x#0: int, 
    y#0: int)
   returns (r#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id496"} r#0 == x#0 || r#0 == y#0;
  free ensures true;
  ensures {:id "id497"} x#0 <= r#0;
  ensures {:id "id498"} y#0 <= r#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Max1 (correctness)"} Impl$$_module.Node.Max1(this: ref, x#0: int, y#0: int) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Max1, Impl$$_module.Node.Max1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(61,7)
    assume true;
    if (x#0 < y#0)
    {
    }
    else
    {
    }

    assume true;
    r#0 := (if x#0 < y#0 then y#0 else x#0);
}



// function declaration for _module.Node.PoorlyDefined
function _module.Node.PoorlyDefined($heap: Heap, this: ref, x#0: int) : int
uses {
// definition axiom for _module.Node.PoorlyDefined (revealed)
axiom {:id "id500"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, x#0: int :: 
    { _module.Node.PoorlyDefined($Heap, this, x#0), $IsGoodHeap($Heap) } 
    _module.Node.PoorlyDefined#canCall($Heap, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Node())
           && $IsAlloc(this, Tclass._module.Node(), $Heap)
           && 
          (if $Unbox(read($Heap, this, _module.Node.next)): ref == null
             then Div(5, x#0) < 20
             else true)
           && (if $Unbox(read($Heap, this, _module.Node.next)): ref == null
             then true
             else LitInt(0) <= Div(5, x#0))
           && (if $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.next)): ref
               == null
             then true
             else true)
           && Div(10, x#0) != 8)
       ==> _module.Node.PoorlyDefined($Heap, this, x#0) == LitInt(12));
}

function _module.Node.PoorlyDefined#canCall($heap: Heap, this: ref, x#0: int) : bool;

// frame axiom for _module.Node.PoorlyDefined
axiom (forall $h0: Heap, $h1: Heap, this: ref, x#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Node.PoorlyDefined($h1, this, x#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Node())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this || $o == $Unbox(read($h0, this, _module.Node.next)): ref)
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Node.PoorlyDefined($h0, this, x#0)
       == _module.Node.PoorlyDefined($h1, this, x#0));

function _module.Node.PoorlyDefined#requires(Heap, ref, int) : bool;

// #requires axiom for _module.Node.PoorlyDefined
axiom (forall $Heap: Heap, this: ref, x#0: int :: 
  { _module.Node.PoorlyDefined#requires($Heap, this, x#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Node())
       && $IsAlloc(this, Tclass._module.Node(), $Heap)
     ==> _module.Node.PoorlyDefined#requires($Heap, this, x#0)
       == (
        (if $Unbox(read($Heap, this, _module.Node.next)): ref == null
           then Div(5, x#0) < 20
           else true)
         && (if $Unbox(read($Heap, this, _module.Node.next)): ref == null
           then true
           else LitInt(0) <= Div(5, x#0))
         && (if $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.next)): ref
             == null
           then true
           else true)
         && Div(10, x#0) != 8));

procedure {:verboseName "Node.PoorlyDefined (well-formedness)"} CheckWellformed$$_module.Node.PoorlyDefined(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.PoorlyDefined (well-formedness)"} CheckWellformed$$_module.Node.PoorlyDefined(this: ref, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var newtype$check#2: ref;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this || $o == $Unbox(read($Heap, this, _module.Node.next)): ref);
    // Check well-formedness of preconditions, and then assume them
    if (*)
    {
        b$reqreads#0 := $_ReadsFrame[this, _module.Node.next];
        newtype$check#0 := null;
        assume {:id "id501"} $Unbox(read($Heap, this, _module.Node.next)): ref == null;
        assert {:id "id502"} x#0 != 0;
        assume {:id "id503"} Div(5, x#0) < 20;
    }
    else
    {
        assume {:id "id504"} $Unbox(read($Heap, this, _module.Node.next)): ref != null;
        assume {:id "id505"} true;
    }

    if (*)
    {
        b$reqreads#1 := $_ReadsFrame[this, _module.Node.next];
        newtype$check#1 := null;
        assume {:id "id506"} $Unbox(read($Heap, this, _module.Node.next)): ref == null;
        assume {:id "id507"} true;
    }
    else
    {
        assume {:id "id508"} $Unbox(read($Heap, this, _module.Node.next)): ref != null;
        assert {:id "id509"} x#0 != 0;
        assume {:id "id510"} LitInt(0) <= Div(5, x#0);
    }

    if (*)
    {
        b$reqreads#2 := $_ReadsFrame[this, _module.Node.next];
        assert {:id "id511"} $Unbox(read($Heap, this, _module.Node.next)): ref != null;
        b$reqreads#3 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.next];
        newtype$check#2 := null;
        assume {:id "id512"} $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.next)): ref
           == null;
        assume {:id "id513"} true;
    }
    else
    {
        assume {:id "id514"} $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.next)): ref
           != null;
        assume {:id "id515"} true;
    }

    assert {:id "id516"} x#0 != 0;
    assume {:id "id517"} Div(10, x#0) != 8;
    assert {:id "id518"} b$reqreads#0;
    assert {:id "id519"} b$reqreads#1;
    assert {:id "id520"} b$reqreads#2;
    assert {:id "id521"} b$reqreads#3;
    // Check well-formedness of the reads clause
    b$reqreads#4 := $_ReadsFrame[this, _module.Node.next];
    assert {:id "id522"} b$reqreads#4;
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
        assume {:id "id523"} _module.Node.PoorlyDefined($Heap, this, x#0) == LitInt(12);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Node.PoorlyDefined($Heap, this, x#0), TInt);
        return;

        assume false;
    }
}



// $Is axiom for non-null type _module.Node
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Node()) } { $Is(c#0, Tclass._module.Node?()) } 
  $Is(c#0, Tclass._module.Node())
     <==> $Is(c#0, Tclass._module.Node?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Node
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Node(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Node?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Node(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Node?(), $h));

const unique class._module.Modifies?: ClassName;

function Tclass._module.Modifies?() : Ty
uses {
// Tclass._module.Modifies? Tag
axiom Tag(Tclass._module.Modifies?()) == Tagclass._module.Modifies?
   && TagFamily(Tclass._module.Modifies?()) == tytagFamily$Modifies;
}

const unique Tagclass._module.Modifies?: TyTag;

// Box/unbox axiom for Tclass._module.Modifies?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Modifies?()) } 
  $IsBox(bx, Tclass._module.Modifies?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Modifies?()));

// $Is axiom for class Modifies
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Modifies?()) } 
  $Is($o, Tclass._module.Modifies?())
     <==> $o == null || dtype($o) == Tclass._module.Modifies?());

// $IsAlloc axiom for class Modifies
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Modifies?(), $h) } 
  $IsAlloc($o, Tclass._module.Modifies?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Modifies.x: Field
uses {
axiom FDim(_module.Modifies.x) == 0
   && FieldOfDecl(class._module.Modifies?, field$x) == _module.Modifies.x
   && !$IsGhostField(_module.Modifies.x);
}

// Modifies.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Modifies.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Modifies?()
     ==> $Is($Unbox(read($h, $o, _module.Modifies.x)): int, TInt));

// Modifies.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Modifies.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Modifies?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Modifies.x)): int, TInt, $h));

const _module.Modifies.next: Field
uses {
axiom FDim(_module.Modifies.next) == 0
   && FieldOfDecl(class._module.Modifies?, field$next) == _module.Modifies.next
   && !$IsGhostField(_module.Modifies.next);
}

// Modifies.next: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Modifies.next)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Modifies?()
     ==> $Is($Unbox(read($h, $o, _module.Modifies.next)): ref, Tclass._module.Modifies?()));

// Modifies.next: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Modifies.next)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Modifies?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Modifies.next)): ref, Tclass._module.Modifies?(), $h));

function Tclass._module.Modifies() : Ty
uses {
// Tclass._module.Modifies Tag
axiom Tag(Tclass._module.Modifies()) == Tagclass._module.Modifies
   && TagFamily(Tclass._module.Modifies()) == tytagFamily$Modifies;
}

const unique Tagclass._module.Modifies: TyTag;

// Box/unbox axiom for Tclass._module.Modifies
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Modifies()) } 
  $IsBox(bx, Tclass._module.Modifies())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Modifies()));

procedure {:verboseName "Modifies.A (well-formedness)"} CheckWellFormed$$_module.Modifies.A(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Modifies?())
         && $IsAlloc(p#0, Tclass._module.Modifies?(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Modifies.A (call)"} Call$$_module.Modifies.A(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Modifies?())
         && $IsAlloc(p#0, Tclass._module.Modifies?(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this || $o == p#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Modifies.A (correctness)"} Impl$$_module.Modifies.A(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Modifies?())
         && $IsAlloc(p#0, Tclass._module.Modifies?(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this || $o == p#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Modifies.A (correctness)"} Impl$$_module.Modifies.A(this: ref, p#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var newtype$check#0: ref;
  var $decr$loop#00: int;
  var $rhs#0_0: int;

    // AddMethodImpl: A, Impl$$_module.Modifies.A
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this || $o == p#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(84,7)
    assume true;
    assert {:id "id524"} $_ModifiesFrame[this, _module.Modifies.x];
    assume true;
    $rhs#0 := $Unbox(read($Heap, this, _module.Modifies.x)): int + 1;
    $Heap := update($Heap, this, _module.Modifies.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(85,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 75 - $Unbox(read($Heap, p#0, _module.Modifies.x)): int;
    havoc $w$loop#0;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == this || $o == p#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant 75 - $Unbox(read($Heap, p#0, _module.Modifies.x)): int <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id527"} p#0 != null;
            assume true;
            assume false;
        }

        newtype$check#0 := null;
        if (p#0 != null)
        {
            assert {:id "id528"} p#0 != null;
        }

        assume true;
        if (!(p#0 != null && $Unbox(read($Heap, p#0, _module.Modifies.x)): int < 75))
        {
            break;
        }

        $decr$loop#00 := 75 - $Unbox(read($Heap, p#0, _module.Modifies.x)): int;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(88,11)
        assert {:id "id529"} p#0 != null;
        assume true;
        assert {:id "id530"} $_ModifiesFrame[p#0, _module.Modifies.x];
        assert {:id "id531"} p#0 != null;
        assume true;
        $rhs#0_0 := $Unbox(read($Heap, p#0, _module.Modifies.x)): int + 1;
        $Heap := update($Heap, p#0, _module.Modifies.x, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(85,5)
        assert {:id "id534"} 0 <= $decr$loop#00
           || 75 - $Unbox(read($Heap, p#0, _module.Modifies.x)): int == $decr$loop#00;
        assert {:id "id535"} 75 - $Unbox(read($Heap, p#0, _module.Modifies.x)): int < $decr$loop#00;
    }
}



procedure {:verboseName "Modifies.Aprime (well-formedness)"} CheckWellFormed$$_module.Modifies.Aprime(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Modifies?())
         && $IsAlloc(p#0, Tclass._module.Modifies?(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Modifies.Aprime (call)"} Call$$_module.Modifies.Aprime(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Modifies?())
         && $IsAlloc(p#0, Tclass._module.Modifies?(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this || $o == p#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Modifies.Aprime (correctness)"} Impl$$_module.Modifies.Aprime(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Modifies?())
         && $IsAlloc(p#0, Tclass._module.Modifies?(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this || $o == p#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Modifies.Aprime (correctness)"} Impl$$_module.Modifies.Aprime(this: ref, p#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var $decr$loop#00: int;
  var $rhs#0_0: int;

    // AddMethodImpl: Aprime, Impl$$_module.Modifies.Aprime
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this || $o == p#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(95,7)
    assume true;
    assert {:id "id536"} $_ModifiesFrame[this, _module.Modifies.x];
    assume true;
    $rhs#0 := $Unbox(read($Heap, this, _module.Modifies.x)): int + 1;
    $Heap := update($Heap, this, _module.Modifies.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(96,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if p#0 != null
       then 75 - $Unbox(read($Heap, p#0, _module.Modifies.x)): int
       else 0);
    havoc $w$loop#0;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == this || $o == p#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant (if p#0 != null
           then 75 - $Unbox(read($Heap, p#0, _module.Modifies.x)): int
           else 0)
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            newtype$check#0 := null;
            if (p#0 != null)
            {
                assert {:id "id539"} p#0 != null;
            }
            else
            {
            }

            assume true;
            assume false;
        }

        newtype$check#1 := null;
        if (p#0 != null)
        {
            assert {:id "id540"} p#0 != null;
        }

        assume true;
        if (!(p#0 != null && $Unbox(read($Heap, p#0, _module.Modifies.x)): int < 75))
        {
            break;
        }

        $decr$loop#00 := (if p#0 != null
           then 75 - $Unbox(read($Heap, p#0, _module.Modifies.x)): int
           else 0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(99,11)
        assert {:id "id541"} p#0 != null;
        assume true;
        assert {:id "id542"} $_ModifiesFrame[p#0, _module.Modifies.x];
        assert {:id "id543"} p#0 != null;
        assume true;
        $rhs#0_0 := $Unbox(read($Heap, p#0, _module.Modifies.x)): int + 1;
        $Heap := update($Heap, p#0, _module.Modifies.x, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(96,5)
        assert {:id "id546"} 0 <= $decr$loop#00
           || (if p#0 != null
               then 75 - $Unbox(read($Heap, p#0, _module.Modifies.x)): int
               else 0)
             == $decr$loop#00;
        assert {:id "id547"} (if p#0 != null
             then 75 - $Unbox(read($Heap, p#0, _module.Modifies.x)): int
             else 0)
           < $decr$loop#00;
    }
}



procedure {:verboseName "Modifies.Adoubleprime (well-formedness)"} CheckWellFormed$$_module.Modifies.Adoubleprime(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Modifies?())
         && $IsAlloc(p#0, Tclass._module.Modifies?(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Modifies.Adoubleprime (call)"} Call$$_module.Modifies.Adoubleprime(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Modifies?())
         && $IsAlloc(p#0, Tclass._module.Modifies?(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this || $o == p#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Modifies.Adoubleprime (correctness)"} Impl$$_module.Modifies.Adoubleprime(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Modifies?())
         && $IsAlloc(p#0, Tclass._module.Modifies?(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this || $o == p#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Modifies.Adoubleprime (correctness)"} Impl$$_module.Modifies.Adoubleprime(this: ref, p#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var $decr$loop#00: int;
  var $rhs#0_0: int;

    // AddMethodImpl: Adoubleprime, Impl$$_module.Modifies.Adoubleprime
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this || $o == p#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(106,7)
    assume true;
    assert {:id "id548"} $_ModifiesFrame[this, _module.Modifies.x];
    assume true;
    $rhs#0 := $Unbox(read($Heap, this, _module.Modifies.x)): int + 1;
    $Heap := update($Heap, this, _module.Modifies.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(107,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if p#0 != null
       then 75 - $Unbox(read($Heap, p#0, _module.Modifies.x)): int
       else 0 - 1);
    havoc $w$loop#0;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == this || $o == p#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant (if p#0 != null
           then 75 - $Unbox(read($Heap, p#0, _module.Modifies.x)): int
           else 0 - 1)
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            newtype$check#0 := null;
            if (p#0 != null)
            {
                assert {:id "id551"} p#0 != null;
            }
            else
            {
            }

            assume true;
            assume false;
        }

        newtype$check#1 := null;
        if (p#0 != null)
        {
            assert {:id "id552"} p#0 != null;
        }

        assume true;
        if (!(p#0 != null && $Unbox(read($Heap, p#0, _module.Modifies.x)): int < 75))
        {
            break;
        }

        $decr$loop#00 := (if p#0 != null
           then 75 - $Unbox(read($Heap, p#0, _module.Modifies.x)): int
           else 0 - 1);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(109,11)
        assert {:id "id553"} p#0 != null;
        assume true;
        assert {:id "id554"} $_ModifiesFrame[p#0, _module.Modifies.x];
        assert {:id "id555"} p#0 != null;
        assume true;
        $rhs#0_0 := $Unbox(read($Heap, p#0, _module.Modifies.x)): int + 1;
        $Heap := update($Heap, p#0, _module.Modifies.x, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(107,5)
        assert {:id "id558"} 0 <= $decr$loop#00
           || (if p#0 != null
               then 75 - $Unbox(read($Heap, p#0, _module.Modifies.x)): int
               else 0 - 1)
             == $decr$loop#00;
        assert {:id "id559"} (if p#0 != null
             then 75 - $Unbox(read($Heap, p#0, _module.Modifies.x)): int
             else 0 - 1)
           < $decr$loop#00;
    }
}



procedure {:verboseName "Modifies.B (well-formedness)"} CheckWellFormed$$_module.Modifies.B(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Modifies())
         && $IsAlloc(p#0, Tclass._module.Modifies(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Modifies.B (call)"} Call$$_module.Modifies.B(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Modifies())
         && $IsAlloc(p#0, Tclass._module.Modifies(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Modifies.B (correctness)"} Impl$$_module.Modifies.B(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Modifies())
         && $IsAlloc(p#0, Tclass._module.Modifies(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Modifies.B (correctness)"} Impl$$_module.Modifies.B(this: ref, p#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var p##0: ref;
  var p##0_0: ref;
  var p##1: ref;

    // AddMethodImpl: B, Impl$$_module.Modifies.B
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(116,6)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    p##0 := this;
    assert {:id "id560"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && ($o == this || $o == p##0)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id561"} Call$$_module.Modifies.A(this, p##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(117,5)
    assume true;
    if (p#0 == this)
    {
        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(118,10)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id562"} p#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        p##0_0 := p#0;
        assert {:id "id563"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && ($o == p#0 || $o == p##0_0)
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id564"} Call$$_module.Modifies.A(p#0, p##0_0);
        // TrCallStmt: After ProcessCallStmt
        pop;
    }
    else
    {
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(120,6)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    p##1 := p#0;
    assert {:id "id565"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && ($o == this || $o == p##1)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id566"} Call$$_module.Modifies.A(this, p##1);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Modifies.C (well-formedness)"} CheckWellFormed$$_module.Modifies.C(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    b#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Modifies.C (well-formedness)"} CheckWellFormed$$_module.Modifies.C(this: ref, b#0: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: C, CheckWellFormed$$_module.Modifies.C
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this);
    assume $HeapSucc(old($Heap), $Heap);
    if (*)
    {
        assume {:id "id567"} !b#0;
        assert {:id "id568"} $IsAlloc(this, Tclass._module.Modifies(), old($Heap));
        assume {:id "id569"} $Unbox(read($Heap, this, _module.Modifies.x)): int
           == $Unbox(read(old($Heap), this, _module.Modifies.x)): int;
        assert {:id "id570"} $IsAlloc(this, Tclass._module.Modifies(), old($Heap));
        assume {:id "id571"} $Unbox(read($Heap, this, _module.Modifies.next)): ref
           == $Unbox(read(old($Heap), this, _module.Modifies.next)): ref;
    }
    else
    {
        assume {:id "id572"} !b#0
           ==> $Unbox(read($Heap, this, _module.Modifies.x)): int
               == $Unbox(read(old($Heap), this, _module.Modifies.x)): int
             && $Unbox(read($Heap, this, _module.Modifies.next)): ref
               == $Unbox(read(old($Heap), this, _module.Modifies.next)): ref;
    }
}



procedure {:verboseName "Modifies.C (call)"} Call$$_module.Modifies.C(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    b#0: bool);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id573"} !b#0
     ==> $Unbox(read($Heap, this, _module.Modifies.x)): int
       == $Unbox(read(old($Heap), this, _module.Modifies.x)): int;
  ensures {:id "id574"} !b#0
     ==> $Unbox(read($Heap, this, _module.Modifies.next)): ref
       == $Unbox(read(old($Heap), this, _module.Modifies.next)): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Modifies.C (correctness)"} Impl$$_module.Modifies.C(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    b#0: bool)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id575"} !b#0
     ==> $Unbox(read($Heap, this, _module.Modifies.x)): int
       == $Unbox(read(old($Heap), this, _module.Modifies.x)): int;
  ensures {:id "id576"} !b#0
     ==> $Unbox(read($Heap, this, _module.Modifies.next)): ref
       == $Unbox(read(old($Heap), this, _module.Modifies.next)): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Modifies.C (correctness)"} Impl$$_module.Modifies.C(this: ref, b#0: bool) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: C, Impl$$_module.Modifies.C
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
}



procedure {:verboseName "Modifies.D (well-formedness)"} CheckWellFormed$$_module.Modifies.D(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Modifies())
         && $IsAlloc(p#0, Tclass._module.Modifies(), $Heap), 
    y#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Modifies.D (call)"} Call$$_module.Modifies.D(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Modifies())
         && $IsAlloc(p#0, Tclass._module.Modifies(), $Heap), 
    y#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Modifies.D (correctness)"} Impl$$_module.Modifies.D(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Modifies())
         && $IsAlloc(p#0, Tclass._module.Modifies(), $Heap), 
    y#0: int)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Modifies.D (correctness)"} Impl$$_module.Modifies.D(this: ref, p#0: ref, y#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var b##0_0: bool;
  var b##1_0: bool;

    // AddMethodImpl: D, Impl$$_module.Modifies.D
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(131,5)
    assume true;
    if (y#0 == LitInt(3))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(132,10)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id577"} p#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        b##0_0 := Lit(true);
        assert {:id "id578"} (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == p#0
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id579"} Call$$_module.Modifies.C(p#0, b##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(134,10)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id580"} p#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        b##1_0 := Lit(false);
        assert {:id "id581"} (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == p#0
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id582"} Call$$_module.Modifies.C(p#0, b##1_0);
        // TrCallStmt: After ProcessCallStmt
    }
}



procedure {:verboseName "Modifies.E (well-formedness)"} CheckWellFormed$$_module.Modifies.E(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Modifies.E (call)"} Call$$_module.Modifies.E(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Modifies.E (correctness)"} Impl$$_module.Modifies.E(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Modifies.E (correctness)"} Impl$$_module.Modifies.E(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var p##0: ref;
  var newtype$check#0: ref;

    // AddMethodImpl: E, Impl$$_module.Modifies.E
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(144,6)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    newtype$check#0 := null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    p##0 := null;
    assert {:id "id583"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && ($o == this || $o == p##0)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id584"} Call$$_module.Modifies.A(this, p##0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Modifies.F (well-formedness)"} CheckWellFormed$$_module.Modifies.F(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.Modifies()))
         && $IsAlloc(s#0, TSet(Tclass._module.Modifies()), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Modifies.F (call)"} Call$$_module.Modifies.F(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.Modifies()))
         && $IsAlloc(s#0, TSet(Tclass._module.Modifies()), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || Set#IsMember(s#0, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Modifies.F (correctness)"} Impl$$_module.Modifies.F(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.Modifies()))
         && $IsAlloc(s#0, TSet(Tclass._module.Modifies()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || Set#IsMember(s#0, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Modifies.F (correctness)"} Impl$$_module.Modifies.F(this: ref, s#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#0_0: ref;
  var m#0_1: ref;
  var $prevHeap: Heap;
  var $rhs#1_0: int;

    // AddMethodImpl: F, Impl$$_module.Modifies.F
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(s#0, $Box($o)));
    $_reverifyPost := false;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(150,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc m#0_0;
        assume $Is(m#0_0, Tclass._module.Modifies())
           && $IsAlloc(m#0_0, Tclass._module.Modifies(), $Heap);
        if (Set#IsMember(s#0, $Box(m#0_0)))
        {
            assert {:id "id585"} {:subsumption 0} m#0_0 != null;
        }

        assume true;
        assume Set#IsMember(s#0, $Box(m#0_0))
           && LitInt(2) <= $Unbox(read($Heap, m#0_0, _module.Modifies.x)): int;
        assert {:id "id586"} {:subsumption 0} m#0_0 != null;
        assume true;
        assert {:id "id587"} $_ModifiesFrame[m#0_0, _module.Modifies.x];
        assert {:id "id588"} {:subsumption 0} m#0_0 != null;
        assume true;
        havoc m#0_1;
        assume $Is(m#0_1, Tclass._module.Modifies())
           && $IsAlloc(m#0_1, Tclass._module.Modifies(), $Heap);
        assume Set#IsMember(s#0, $Box(m#0_1))
           && LitInt(2) <= $Unbox(read($Heap, m#0_1, _module.Modifies.x)): int;
        assume m#0_0 != m#0_1;
        assert {:id "id589"} m#0_0 != m#0_1
           || _module.Modifies.x != _module.Modifies.x
           || $Unbox(read($Heap, m#0_0, _module.Modifies.x)): int + 1
             == $Unbox(read($Heap, m#0_1, _module.Modifies.x)): int + 1;
        assume false;
    }
    else
    {
        $prevHeap := $Heap;
        havoc $Heap;
        assume $HeapSucc($prevHeap, $Heap);
        assume (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          read($Heap, $o, $f) == read($prevHeap, $o, $f)
             || (exists m#0_2: ref :: 
              $Is(m#0_2, Tclass._module.Modifies())
                 && 
                Set#IsMember(s#0, $Box(m#0_2))
                 && LitInt(2) <= $Unbox(read($prevHeap, m#0_2, _module.Modifies.x)): int
                 && $o == m#0_2
                 && $f == _module.Modifies.x));
        assume (forall m#inv#0_0: ref :: 
          { read($Heap, m#inv#0_0, _module.Modifies.x) } 
          $Is(m#inv#0_0, Tclass._module.Modifies())
               && 
              m#inv#0_0 != null
               && 
              Set#IsMember(s#0, $Box(m#inv#0_0))
               && LitInt(2) <= $Unbox(read($prevHeap, m#inv#0_0, _module.Modifies.x)): int
             ==> read($Heap, m#inv#0_0, _module.Modifies.x)
               == $Box($Unbox(read($prevHeap, m#inv#0_0, _module.Modifies.x)): int + 1));
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(153,5)
    assume true;
    if (Set#IsMember(s#0, $Box(this)))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(154,9)
        assume true;
        assert {:id "id590"} $_ModifiesFrame[this, _module.Modifies.x];
        assume true;
        $rhs#1_0 := Mul(LitInt(2), $Unbox(read($Heap, this, _module.Modifies.x)): int);
        $Heap := update($Heap, this, _module.Modifies.x, $Box($rhs#1_0));
        assume $IsGoodHeap($Heap);
    }
    else
    {
    }
}



procedure {:verboseName "Modifies.G (well-formedness)"} CheckWellFormed$$_module.Modifies.G(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.Modifies()))
         && $IsAlloc(s#0, TSet(Tclass._module.Modifies()), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Modifies.G (call)"} Call$$_module.Modifies.G(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.Modifies()))
         && $IsAlloc(s#0, TSet(Tclass._module.Modifies()), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Modifies.G (correctness)"} Impl$$_module.Modifies.G(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap), 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.Modifies()))
         && $IsAlloc(s#0, TSet(Tclass._module.Modifies()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Modifies.G (correctness)"} Impl$$_module.Modifies.G(this: ref, s#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#0: int;
  var m#0_0: ref;
  var m#0_1: ref;
  var $prevHeap: Heap;
  var m#1_0_0: ref;
  var m#1_0_1: ref;
  var s##1_0: Set;
  var m#2_0: ref;
  var m#3_0: ref;
  var m#3_1: ref;

    // AddMethodImpl: G, Impl$$_module.Modifies.G
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(161,11)
    assume true;
    assume true;
    m#0 := LitInt(3);
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(163,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc m#0_0;
        assume $Is(m#0_0, Tclass._module.Modifies())
           && $IsAlloc(m#0_0, Tclass._module.Modifies(), $Heap);
        if (Set#IsMember(s#0, $Box(m#0_0)))
        {
        }

        assume true;
        assume Set#IsMember(s#0, $Box(m#0_0)) && m#0_0 == this;
        assert {:id "id594"} {:subsumption 0} m#0_0 != null;
        assume true;
        assert {:id "id595"} $_ModifiesFrame[m#0_0, _module.Modifies.x];
        assert {:id "id596"} {:subsumption 0} m#0_0 != null;
        assume true;
        havoc m#0_1;
        assume $Is(m#0_1, Tclass._module.Modifies())
           && $IsAlloc(m#0_1, Tclass._module.Modifies(), $Heap);
        assume Set#IsMember(s#0, $Box(m#0_1)) && m#0_1 == this;
        assume m#0_0 != m#0_1;
        assert {:id "id597"} m#0_0 != m#0_1
           || _module.Modifies.x != _module.Modifies.x
           || $Unbox(read($Heap, m#0_0, _module.Modifies.x)): int + 1
             == $Unbox(read($Heap, m#0_1, _module.Modifies.x)): int + 1;
        assume false;
    }
    else
    {
        $prevHeap := $Heap;
        havoc $Heap;
        assume $HeapSucc($prevHeap, $Heap);
        assume (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          read($Heap, $o, $f) == read($prevHeap, $o, $f)
             || (exists m#0_2: ref :: 
              $Is(m#0_2, Tclass._module.Modifies())
                 && 
                Set#IsMember(s#0, $Box(m#0_2))
                 && m#0_2 == this
                 && $o == m#0_2
                 && $f == _module.Modifies.x));
        assume (forall m#inv#0_0: ref :: 
          { read($Heap, m#inv#0_0, _module.Modifies.x) } 
          $Is(m#inv#0_0, Tclass._module.Modifies())
               && 
              m#inv#0_0 != null
               && 
              Set#IsMember(s#0, $Box(m#inv#0_0))
               && m#inv#0_0 == this
             ==> read($Heap, m#inv#0_0, _module.Modifies.x)
               == $Box($Unbox(read($prevHeap, m#inv#0_0, _module.Modifies.x)): int + 1));
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(166,5)
    assume true;
    if (Set#Subset(s#0, Set#UnionOne(Set#Empty(): Set, $Box(this))))
    {
        push;
        // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(167,7)
        if (*)
        {
            // Assume Fuel Constant
            havoc m#1_0_0;
            assume $Is(m#1_0_0, Tclass._module.Modifies())
               && $IsAlloc(m#1_0_0, Tclass._module.Modifies(), $Heap);
            assume true;
            assume Set#IsMember(s#0, $Box(m#1_0_0));
            assert {:id "id598"} {:subsumption 0} m#1_0_0 != null;
            assume true;
            assert {:id "id599"} $_ModifiesFrame[m#1_0_0, _module.Modifies.x];
            assert {:id "id600"} {:subsumption 0} m#1_0_0 != null;
            assume true;
            havoc m#1_0_1;
            assume $Is(m#1_0_1, Tclass._module.Modifies())
               && $IsAlloc(m#1_0_1, Tclass._module.Modifies(), $Heap);
            assume Set#IsMember(s#0, $Box(m#1_0_1));
            assume m#1_0_0 != m#1_0_1;
            assert {:id "id601"} m#1_0_0 != m#1_0_1
               || _module.Modifies.x != _module.Modifies.x
               || $Unbox(read($Heap, m#1_0_0, _module.Modifies.x)): int + 1
                 == $Unbox(read($Heap, m#1_0_1, _module.Modifies.x)): int + 1;
            assume false;
        }
        else
        {
            $prevHeap := $Heap;
            havoc $Heap;
            assume $HeapSucc($prevHeap, $Heap);
            assume (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              read($Heap, $o, $f) == read($prevHeap, $o, $f)
                 || (exists m#1_0_2: ref :: 
                  $Is(m#1_0_2, Tclass._module.Modifies())
                     && Set#IsMember(s#0, $Box(m#1_0_2))
                     && $o == m#1_0_2
                     && $f == _module.Modifies.x));
            assume (forall m#inv#1_0_0: ref :: 
              { read($Heap, m#inv#1_0_0, _module.Modifies.x) } 
              $Is(m#inv#1_0_0, Tclass._module.Modifies())
                   && 
                  m#inv#1_0_0 != null
                   && Set#IsMember(s#0, $Box(m#inv#1_0_0))
                 ==> read($Heap, m#inv#1_0_0, _module.Modifies.x)
                   == $Box($Unbox(read($prevHeap, m#inv#1_0_0, _module.Modifies.x)): int + 1));
        }

        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(170,8)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##1_0 := s#0;
        assert {:id "id602"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember(s##1_0, $Box($o))
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id603"} Call$$_module.Modifies.F(this, s##1_0);
        // TrCallStmt: After ProcessCallStmt
        pop;
    }
    else
    {
    }

    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(172,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc m#2_0;
        assume $Is(m#2_0, Tclass._module.Modifies());
        assume true;
        assume {:id "id604"} Set#IsMember(s#0, $Box(m#2_0));
        if (*)
        {
            assume true;
            assume {:id "id605"} true;
            assume false;
        }

        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(172,41)
        assert {:id "id606"} {:subsumption 0} m#2_0 != null;
        assert {:id "id607"} {:subsumption 0} m#2_0 != null;
        assume true;
        assert {:id "id608"} $Unbox(read($Heap, m#2_0, _module.Modifies.x)): int
           < $Unbox(read($Heap, m#2_0, _module.Modifies.x)): int + 10;
        pop;
        assert {:id "id609"} Lit(true);
        assume false;
    }
    else
    {
        assume (forall m#2_1: ref :: 
          { Set#IsMember(s#0, $Box(m#2_1)) } 
          $Is(m#2_1, Tclass._module.Modifies()) && Set#IsMember(s#0, $Box(m#2_1))
             ==> Lit(true));
    }

    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(173,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc m#3_0;
        assume $Is(m#3_0, Tclass._module.Modifies())
           && $IsAlloc(m#3_0, Tclass._module.Modifies(), $Heap);
        assume true;
        assume Set#IsMember(s#0, $Box(m#3_0));
        assert {:id "id610"} {:subsumption 0} m#3_0 != null;
        assume true;
        assert {:id "id611"} $_ModifiesFrame[m#3_0, _module.Modifies.x];
        assert {:id "id612"} {:subsumption 0} m#3_0 != null;
        assume true;
        havoc m#3_1;
        assume $Is(m#3_1, Tclass._module.Modifies())
           && $IsAlloc(m#3_1, Tclass._module.Modifies(), $Heap);
        assume Set#IsMember(s#0, $Box(m#3_1));
        assume m#3_0 != m#3_1;
        assert {:id "id613"} m#3_0 != m#3_1
           || _module.Modifies.x != _module.Modifies.x
           || $Unbox(read($Heap, m#3_0, _module.Modifies.x)): int + 1
             == $Unbox(read($Heap, m#3_1, _module.Modifies.x)): int + 1;
        assume false;
    }
    else
    {
        $prevHeap := $Heap;
        havoc $Heap;
        assume $HeapSucc($prevHeap, $Heap);
        assume (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          read($Heap, $o, $f) == read($prevHeap, $o, $f)
             || (exists m#3_2: ref :: 
              $Is(m#3_2, Tclass._module.Modifies())
                 && Set#IsMember(s#0, $Box(m#3_2))
                 && $o == m#3_2
                 && $f == _module.Modifies.x));
        assume (forall m#inv#3_0: ref :: 
          { read($Heap, m#inv#3_0, _module.Modifies.x) } 
          $Is(m#inv#3_0, Tclass._module.Modifies())
               && 
              m#inv#3_0 != null
               && Set#IsMember(s#0, $Box(m#inv#3_0))
             ==> read($Heap, m#inv#3_0, _module.Modifies.x)
               == $Box($Unbox(read($prevHeap, m#inv#3_0, _module.Modifies.x)): int + 1));
    }
}



procedure {:verboseName "Modifies.SetConstruction (well-formedness)"} CheckWellFormed$$_module.Modifies.SetConstruction(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Modifies.SetConstruction (call)"} Call$$_module.Modifies.SetConstruction(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Modifies.SetConstruction (correctness)"} Impl$$_module.Modifies.SetConstruction(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Modifies())
         && $IsAlloc(this, Tclass._module.Modifies(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Modifies.SetConstruction (correctness)"} Impl$$_module.Modifies.SetConstruction(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap);

    // AddMethodImpl: SetConstruction, Impl$$_module.Modifies.SetConstruction
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(179,11)
    assume true;
    assume true;
    s#0 := Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(180,5)
    assume true;
    assert {:id "id615"} !Set#Equal(s#0, Set#Empty(): Set);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(181,5)
    if (*)
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(182,7)
        assume true;
        assert {:id "id616"} !Set#Equal(s#0, 
          Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(0))), $Box(LitInt(1))));
    }
    else
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(184,7)
        assume true;
        assert {:id "id617"} !Set#Equal(s#0, 
          Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1))), $Box(LitInt(0))));
    }
}



// $Is axiom for non-null type _module.Modifies
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Modifies()) } 
    { $Is(c#0, Tclass._module.Modifies?()) } 
  $Is(c#0, Tclass._module.Modifies())
     <==> $Is(c#0, Tclass._module.Modifies?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Modifies
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Modifies(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Modifies?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Modifies(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Modifies?(), $h));

const unique class._module.AllocatedTests?: ClassName;

function Tclass._module.AllocatedTests?() : Ty
uses {
// Tclass._module.AllocatedTests? Tag
axiom Tag(Tclass._module.AllocatedTests?()) == Tagclass._module.AllocatedTests?
   && TagFamily(Tclass._module.AllocatedTests?()) == tytagFamily$AllocatedTests;
}

const unique Tagclass._module.AllocatedTests?: TyTag;

// Box/unbox axiom for Tclass._module.AllocatedTests?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.AllocatedTests?()) } 
  $IsBox(bx, Tclass._module.AllocatedTests?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.AllocatedTests?()));

// $Is axiom for class AllocatedTests
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.AllocatedTests?()) } 
  $Is($o, Tclass._module.AllocatedTests?())
     <==> $o == null || dtype($o) == Tclass._module.AllocatedTests?());

// $IsAlloc axiom for class AllocatedTests
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.AllocatedTests?(), $h) } 
  $IsAlloc($o, Tclass._module.AllocatedTests?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass._module.AllocatedTests() : Ty
uses {
// Tclass._module.AllocatedTests Tag
axiom Tag(Tclass._module.AllocatedTests()) == Tagclass._module.AllocatedTests
   && TagFamily(Tclass._module.AllocatedTests()) == tytagFamily$AllocatedTests;
}

const unique Tagclass._module.AllocatedTests: TyTag;

// Box/unbox axiom for Tclass._module.AllocatedTests
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.AllocatedTests()) } 
  $IsBox(bx, Tclass._module.AllocatedTests())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.AllocatedTests()));

procedure {:verboseName "AllocatedTests.M (well-formedness)"} CheckWellFormed$$_module.AllocatedTests.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AllocatedTests())
         && $IsAlloc(this, Tclass._module.AllocatedTests(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AllocatedTests.M (call)"} Call$$_module.AllocatedTests.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AllocatedTests())
         && $IsAlloc(this, Tclass._module.AllocatedTests(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AllocatedTests.M (correctness)"} Impl$$_module.AllocatedTests.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AllocatedTests())
         && $IsAlloc(this, Tclass._module.AllocatedTests(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AllocatedTests.M (correctness)"} Impl$$_module.AllocatedTests.M(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#n#0: bool;
  var n#0: ref
     where defass#n#0
       ==> $Is(n#0, Tclass._module.Node()) && $IsAlloc(n#0, Tclass._module.Node(), $Heap);
  var $nw: ref;
  var newtype$check#0_0: ref;
  var newtype$check#1_0: ref;
  var newtype$check#2_0: ref;

    // AddMethodImpl: M, Impl$$_module.AllocatedTests.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(194,11)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Node?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    n#0 := $nw;
    defass#n#0 := true;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(195,5)
    if (*)
    {
        assume true;
        assume {:id "id637"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(196,19)
        assert {:id "id638"} defass#n#0;
        assume true;
        assert {:id "id639"} $IsAllocBox($Box(n#0), Tclass._module.Node(), old($Heap));
    }
    else if (*)
    {
        assume true;
        assume {:id "id634"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(197,19)
        assert {:id "id635"} defass#n#0;
        assume true;
        assert {:id "id636"} !(n#0 != null && !$Unbox(read(old($Heap), n#0, alloc)): bool);
    }
    else if (*)
    {
        assume true;
        assume {:id "id626"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(198,19)
        assert {:id "id627"} defass#n#0;
        if (n#0 != null && !$Unbox(read(old($Heap), n#0, alloc)): bool)
        {
            assert {:id "id628"} defass#n#0;
        }

        if (n#0 != null
           && !$Unbox(read(old($Heap), n#0, alloc)): bool
           && !$IsAllocBox($Box(n#0), Tclass._module.Node(), old($Heap)))
        {
            assert {:id "id629"} defass#n#0;
        }

        assume true;
        assert {:id "id630"} {:subsumption 0} n#0 != null && !$Unbox(read(old($Heap), n#0, alloc)): bool;
        assert {:id "id631"} {:subsumption 0} !$IsAllocBox($Box(n#0), Tclass._module.Node(), old($Heap));
        assert {:id "id632"} {:subsumption 0} $IsAllocBox($Box(n#0), Tclass._module.Node(), $Heap);
        assume {:id "id633"} n#0 != null
           && !$Unbox(read(old($Heap), n#0, alloc)): bool
           && !$IsAllocBox($Box(n#0), Tclass._module.Node(), old($Heap))
           && $IsAllocBox($Box(n#0), Tclass._module.Node(), $Heap);
    }
    else if (*)
    {
        assume true;
        assume {:id "id624"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(199,19)
        newtype$check#2_0 := null;
        assume true;
        assert {:id "id625"} null != null && !$Unbox(read(old($Heap), null, alloc)): bool;
    }
    else if (*)
    {
        assume true;
        assume {:id "id622"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(200,19)
        newtype$check#1_0 := null;
        assume true;
        assert {:id "id623"} !(null != null && !$Unbox(read(old($Heap), null, alloc)): bool);
    }
    else if (*)
    {
        assume true;
        assume {:id "id620"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(201,19)
        newtype$check#0_0 := null;
        assume true;
        assert {:id "id621"} $IsAllocBox($Box(null), Tclass._System.object?(), $Heap);
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id619"} false;
    }
}



procedure {:verboseName "AllocatedTests.Set0 (well-formedness)"} CheckWellFormed$$_module.AllocatedTests.Set0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AllocatedTests())
         && $IsAlloc(this, Tclass._module.AllocatedTests(), $Heap), 
    k#0: ref
       where $Is(k#0, Tclass._module.Node?()) && $IsAlloc(k#0, Tclass._module.Node?(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AllocatedTests.Set0 (call)"} Call$$_module.AllocatedTests.Set0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AllocatedTests())
         && $IsAlloc(this, Tclass._module.AllocatedTests(), $Heap), 
    k#0: ref
       where $Is(k#0, Tclass._module.Node?()) && $IsAlloc(k#0, Tclass._module.Node?(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AllocatedTests.Set0 (correctness)"} Impl$$_module.AllocatedTests.Set0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AllocatedTests())
         && $IsAlloc(this, Tclass._module.AllocatedTests(), $Heap), 
    k#0: ref
       where $Is(k#0, Tclass._module.Node?()) && $IsAlloc(k#0, Tclass._module.Node?(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AllocatedTests.Set0 (correctness)"} Impl$$_module.AllocatedTests.Set0(this: ref, k#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#n#0: bool;
  var n#0: ref
     where defass#n#0
       ==> $Is(n#0, Tclass._module.Node()) && $IsAlloc(n#0, Tclass._module.Node(), $Heap);
  var $nw: ref;
  var U#0: Set
     where $Is(U#0, TSet(Tclass._module.Node?()))
       && $IsAlloc(U#0, TSet(Tclass._module.Node?()), $Heap);
  var newtype$check#0_0: ref;
  var newtype$check#1_0: ref;
  var newtype$check#2_0: ref;
  var newtype$check#3_0: ref;

    // AddMethodImpl: Set0, Impl$$_module.AllocatedTests.Set0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(205,11)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Node?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    n#0 := $nw;
    defass#n#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(206,11)
    assume true;
    assert {:id "id641"} defass#n#0;
    assume true;
    U#0 := Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(k#0)), $Box(n#0));
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(207,5)
    if (*)
    {
        assume true;
        assume {:id "id658"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(208,19)
        assume true;
        assert {:id "id659"} $IsAllocBox($Box(U#0), TSet(Tclass._module.Node?()), $Heap);
    }
    else if (*)
    {
        assume true;
        assume {:id "id656"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(209,19)
        assume true;
        assert {:id "id657"} $IsAllocBox($Box(U#0), TSet(Tclass._module.Node?()), old($Heap));
    }
    else if (*)
    {
        assume true;
        assume {:id "id654"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(210,19)
        assume true;
        assert {:id "id655"} !$IsAllocBox($Box(U#0), TSet(Tclass._module.Node?()), old($Heap));
    }
    else if (*)
    {
        assume true;
        assume {:id "id652"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(211,19)
        assume true;
        assert {:id "id653"} (forall $o: ref :: { $o != null } Set#IsMember(U#0, $Box($o)) ==> $o != null)
           && (forall $o: ref :: 
            { Set#IsMember(U#0, $Box($o)) } 
            Set#IsMember(U#0, $Box($o)) ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }
    else if (*)
    {
        newtype$check#3_0 := null;
        assume true;
        assume {:id "id650"} k#0 == null;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(212,24)
        assume true;
        assert {:id "id651"} (forall $o: ref :: { $o != null } Set#IsMember(U#0, $Box($o)) ==> $o != null)
           && (forall $o: ref :: 
            { Set#IsMember(U#0, $Box($o)) } 
            Set#IsMember(U#0, $Box($o)) ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }
    else if (*)
    {
        newtype$check#2_0 := null;
        assume true;
        assume {:id "id648"} k#0 == null;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(213,24)
        assume true;
        assert {:id "id649"} !((forall $o: ref :: { $o != null } Set#IsMember(U#0, $Box($o)) ==> $o != null)
           && (forall $o: ref :: 
            { Set#IsMember(U#0, $Box($o)) } 
            Set#IsMember(U#0, $Box($o)) ==> !$Unbox(read(old($Heap), $o, alloc)): bool));
    }
    else if (*)
    {
        newtype$check#1_0 := null;
        assume true;
        assume {:id "id646"} k#0 != null;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(214,24)
        assume true;
        assert {:id "id647"} (forall $o: ref :: { $o != null } Set#IsMember(U#0, $Box($o)) ==> $o != null)
           && (forall $o: ref :: 
            { Set#IsMember(U#0, $Box($o)) } 
            Set#IsMember(U#0, $Box($o)) ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }
    else if (*)
    {
        newtype$check#0_0 := null;
        assume true;
        assume {:id "id644"} k#0 != null;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(215,24)
        assume true;
        assert {:id "id645"} !((forall $o: ref :: { $o != null } Set#IsMember(U#0, $Box($o)) ==> $o != null)
           && (forall $o: ref :: 
            { Set#IsMember(U#0, $Box($o)) } 
            Set#IsMember(U#0, $Box($o)) ==> !$Unbox(read(old($Heap), $o, alloc)): bool));
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && k#0 != null
           && k#0 != null
           && k#0 == null
           && k#0 == null;
        assert {:id "id643"} false;
    }
}



procedure {:verboseName "AllocatedTests.Set1 (well-formedness)"} CheckWellFormed$$_module.AllocatedTests.Set1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AllocatedTests())
         && $IsAlloc(this, Tclass._module.AllocatedTests(), $Heap), 
    k#0: ref
       where $Is(k#0, Tclass._module.Node()) && $IsAlloc(k#0, Tclass._module.Node(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AllocatedTests.Set1 (call)"} Call$$_module.AllocatedTests.Set1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AllocatedTests())
         && $IsAlloc(this, Tclass._module.AllocatedTests(), $Heap), 
    k#0: ref
       where $Is(k#0, Tclass._module.Node()) && $IsAlloc(k#0, Tclass._module.Node(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AllocatedTests.Set1 (correctness)"} Impl$$_module.AllocatedTests.Set1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AllocatedTests())
         && $IsAlloc(this, Tclass._module.AllocatedTests(), $Heap), 
    k#0: ref
       where $Is(k#0, Tclass._module.Node()) && $IsAlloc(k#0, Tclass._module.Node(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AllocatedTests.Set1 (correctness)"} Impl$$_module.AllocatedTests.Set1(this: ref, k#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: ref
     where $Is(n#0, Tclass._module.Node?()) && $IsAlloc(n#0, Tclass._module.Node?(), $Heap);
  var U#0: Set
     where $Is(U#0, TSet(Tclass._module.Node?()))
       && $IsAlloc(U#0, TSet(Tclass._module.Node?()), $Heap);
  var newtype$check#0_0: ref;
  var newtype$check#2_0: ref;
  var newtype$check#3_0: ref;
  var newtype$check#4_0: ref;

    // AddMethodImpl: Set1, Impl$$_module.AllocatedTests.Set1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(219,6)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id660"} Call$$_module.AllocatedTests.M(this);
    // TrCallStmt: After ProcessCallStmt
    havoc n#0 /* where $Is(n#0, Tclass._module.Node?()) && $IsAlloc(n#0, Tclass._module.Node?(), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(221,11)
    assume true;
    assume true;
    U#0 := Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(k#0)), $Box(n#0));
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(222,5)
    if (*)
    {
        assume true;
        assume {:id "id673"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(223,19)
        assume true;
        assert {:id "id674"} $IsAllocBox($Box(U#0), TSet(Tclass._module.Node?()), old($Heap));
    }
    else if (*)
    {
        newtype$check#4_0 := null;
        assume true;
        assume {:id "id671"} n#0 == null;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(224,24)
        assume true;
        assert {:id "id672"} $IsAllocBox($Box(U#0), TSet(Tclass._module.Node?()), old($Heap));
    }
    else if (*)
    {
        newtype$check#3_0 := null;
        assume true;
        assume {:id "id669"} n#0 == null;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(225,24)
        assume true;
        assert {:id "id670"} (forall $o: ref :: { $o != null } Set#IsMember(U#0, $Box($o)) ==> $o != null)
           && (forall $o: ref :: 
            { Set#IsMember(U#0, $Box($o)) } 
            Set#IsMember(U#0, $Box($o)) ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }
    else if (*)
    {
        assume true;
        assume {:id "id667"} !$IsAllocBox($Box(n#0), Tclass._module.Node?(), old($Heap));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(226,33)
        newtype$check#2_0 := null;
        assume true;
        assert {:id "id668"} n#0 != null;
    }
    else if (*)
    {
        assume true;
        assume {:id "id665"} !$IsAllocBox($Box(n#0), Tclass._module.Node?(), old($Heap));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(227,33)
        assume true;
        assert {:id "id666"} n#0 != null && !$Unbox(read(old($Heap), n#0, alloc)): bool;
    }
    else if (*)
    {
        assume true;
        assume {:id "id663"} n#0 != null && !$Unbox(read(old($Heap), n#0, alloc)): bool;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(228,23)
        newtype$check#0_0 := null;
        assume true;
        assert {:id "id664"} n#0 != null;
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true)
           && n#0 != null
           && n#0 != null
           && $IsAllocBox($Box(n#0), Tclass._module.Node?(), old($Heap))
           && $IsAllocBox($Box(n#0), Tclass._module.Node?(), old($Heap))
           && !
          (n#0 != null
           && !$Unbox(read(old($Heap), n#0, alloc)): bool);
        assert {:id "id662"} false;
    }
}



procedure {:verboseName "AllocatedTests.Seq0 (well-formedness)"} CheckWellFormed$$_module.AllocatedTests.Seq0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AllocatedTests())
         && $IsAlloc(this, Tclass._module.AllocatedTests(), $Heap), 
    k#0: ref
       where $Is(k#0, Tclass._module.Node?()) && $IsAlloc(k#0, Tclass._module.Node?(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AllocatedTests.Seq0 (call)"} Call$$_module.AllocatedTests.Seq0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AllocatedTests())
         && $IsAlloc(this, Tclass._module.AllocatedTests(), $Heap), 
    k#0: ref
       where $Is(k#0, Tclass._module.Node?()) && $IsAlloc(k#0, Tclass._module.Node?(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AllocatedTests.Seq0 (correctness)"} Impl$$_module.AllocatedTests.Seq0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AllocatedTests())
         && $IsAlloc(this, Tclass._module.AllocatedTests(), $Heap), 
    k#0: ref
       where $Is(k#0, Tclass._module.Node?()) && $IsAlloc(k#0, Tclass._module.Node?(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AllocatedTests.Seq0 (correctness)"} Impl$$_module.AllocatedTests.Seq0(this: ref, k#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#n#0: bool;
  var n#0: ref
     where defass#n#0
       ==> $Is(n#0, Tclass._module.Node()) && $IsAlloc(n#0, Tclass._module.Node(), $Heap);
  var $nw: ref;
  var U#0: Seq
     where $Is(U#0, TSeq(Tclass._module.Node?()))
       && $IsAlloc(U#0, TSeq(Tclass._module.Node?()), $Heap);
  var newtype$check#0_0: ref;
  var newtype$check#1_0: ref;
  var newtype$check#2_0: ref;
  var newtype$check#3_0: ref;

    // AddMethodImpl: Seq0, Impl$$_module.AllocatedTests.Seq0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(232,11)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Node?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    n#0 := $nw;
    defass#n#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(233,11)
    assume true;
    assert {:id "id676"} defass#n#0;
    assume true;
    U#0 := Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(k#0)), $Box(n#0));
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(234,5)
    if (*)
    {
        assume true;
        assume {:id "id699"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(235,19)
        assume true;
        assert {:id "id700"} $IsAllocBox($Box(U#0), TSeq(Tclass._module.Node?()), $Heap);
    }
    else if (*)
    {
        assume true;
        assume {:id "id697"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(236,19)
        assume true;
        assert {:id "id698"} $IsAllocBox($Box(U#0), TSeq(Tclass._module.Node?()), old($Heap));
    }
    else if (*)
    {
        assume true;
        assume {:id "id693"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(237,19)
        assert {:id "id694"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < Seq#Length(U#0);
        assume true;
        assert {:id "id695"} !$IsAllocBox(Seq#Index(U#0, LitInt(1)), Tclass._module.Node?(), old($Heap));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(238,19)
        assume true;
        assert {:id "id696"} !$IsAllocBox($Box(U#0), TSeq(Tclass._module.Node?()), old($Heap));
    }
    else if (*)
    {
        assume true;
        assume {:id "id691"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(239,19)
        assume true;
        assert {:id "id692"} (forall $i: int :: 
          0 <= $i && $i < Seq#Length(U#0)
             ==> $Unbox(Seq#Index(U#0, $i)): ref != null
               && !$Unbox(read(old($Heap), $Unbox(Seq#Index(U#0, $i)): ref, alloc)): bool);
    }
    else if (*)
    {
        newtype$check#3_0 := null;
        assume true;
        assume {:id "id689"} k#0 == null;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(240,24)
        assume true;
        assert {:id "id690"} (forall $i: int :: 
          0 <= $i && $i < Seq#Length(U#0)
             ==> $Unbox(Seq#Index(U#0, $i)): ref != null
               && !$Unbox(read(old($Heap), $Unbox(Seq#Index(U#0, $i)): ref, alloc)): bool);
    }
    else if (*)
    {
        newtype$check#2_0 := null;
        assume true;
        assume {:id "id685"} k#0 == null;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(241,24)
        assert {:id "id686"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(U#0);
        assume true;
        assert {:id "id687"} !($Unbox(Seq#Index(U#0, LitInt(0))): ref != null
           && !$Unbox(read(old($Heap), $Unbox(Seq#Index(U#0, LitInt(0))): ref, alloc)): bool);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(242,25)
        assume true;
        assert {:id "id688"} !(forall $i: int :: 
          0 <= $i && $i < Seq#Length(U#0)
             ==> $Unbox(Seq#Index(U#0, $i)): ref != null
               && !$Unbox(read(old($Heap), $Unbox(Seq#Index(U#0, $i)): ref, alloc)): bool);
    }
    else if (*)
    {
        newtype$check#1_0 := null;
        assume true;
        assume {:id "id683"} k#0 != null;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(243,24)
        assume true;
        assert {:id "id684"} (forall $i: int :: 
          0 <= $i && $i < Seq#Length(U#0)
             ==> $Unbox(Seq#Index(U#0, $i)): ref != null
               && !$Unbox(read(old($Heap), $Unbox(Seq#Index(U#0, $i)): ref, alloc)): bool);
    }
    else if (*)
    {
        newtype$check#0_0 := null;
        assume true;
        assume {:id "id679"} k#0 != null;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(244,24)
        assert {:id "id680"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(U#0);
        assume true;
        assert {:id "id681"} !($Unbox(Seq#Index(U#0, LitInt(0))): ref != null
           && !$Unbox(read(old($Heap), $Unbox(Seq#Index(U#0, LitInt(0))): ref, alloc)): bool);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(245,25)
        assume true;
        assert {:id "id682"} !(forall $i: int :: 
          0 <= $i && $i < Seq#Length(U#0)
             ==> $Unbox(Seq#Index(U#0, $i)): ref != null
               && !$Unbox(read(old($Heap), $Unbox(Seq#Index(U#0, $i)): ref, alloc)): bool);
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && k#0 != null
           && k#0 != null
           && k#0 == null
           && k#0 == null;
        assert {:id "id678"} false;
    }
}



procedure {:verboseName "AllocatedTests.Seq1 (well-formedness)"} CheckWellFormed$$_module.AllocatedTests.Seq1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AllocatedTests())
         && $IsAlloc(this, Tclass._module.AllocatedTests(), $Heap), 
    k#0: ref
       where $Is(k#0, Tclass._module.Node?()) && $IsAlloc(k#0, Tclass._module.Node?(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AllocatedTests.Seq1 (call)"} Call$$_module.AllocatedTests.Seq1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AllocatedTests())
         && $IsAlloc(this, Tclass._module.AllocatedTests(), $Heap), 
    k#0: ref
       where $Is(k#0, Tclass._module.Node?()) && $IsAlloc(k#0, Tclass._module.Node?(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AllocatedTests.Seq1 (correctness)"} Impl$$_module.AllocatedTests.Seq1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AllocatedTests())
         && $IsAlloc(this, Tclass._module.AllocatedTests(), $Heap), 
    k#0: ref
       where $Is(k#0, Tclass._module.Node?()) && $IsAlloc(k#0, Tclass._module.Node?(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AllocatedTests.Seq1 (correctness)"} Impl$$_module.AllocatedTests.Seq1(this: ref, k#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: ref
     where $Is(n#0, Tclass._module.Node?()) && $IsAlloc(n#0, Tclass._module.Node?(), $Heap);
  var U#0: Seq
     where $Is(U#0, TSeq(Tclass._module.Node?()))
       && $IsAlloc(U#0, TSeq(Tclass._module.Node?()), $Heap);
  var newtype$check#0_0: ref;
  var newtype$check#2_0: ref;
  var newtype$check#3_0: ref;
  var newtype$check#4_0: ref;

    // AddMethodImpl: Seq1, Impl$$_module.AllocatedTests.Seq1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(249,6)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id701"} Call$$_module.AllocatedTests.M(this);
    // TrCallStmt: After ProcessCallStmt
    havoc n#0 /* where $Is(n#0, Tclass._module.Node?()) && $IsAlloc(n#0, Tclass._module.Node?(), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(251,11)
    assume true;
    assume true;
    U#0 := Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(k#0)), $Box(n#0));
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(252,5)
    if (*)
    {
        assume true;
        assume {:id "id714"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(253,19)
        assume true;
        assert {:id "id715"} $IsAllocBox($Box(U#0), TSeq(Tclass._module.Node?()), old($Heap));
    }
    else if (*)
    {
        newtype$check#4_0 := null;
        assume true;
        assume {:id "id712"} n#0 == null;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(254,24)
        assume true;
        assert {:id "id713"} $IsAllocBox($Box(U#0), TSeq(Tclass._module.Node?()), old($Heap));
    }
    else if (*)
    {
        newtype$check#3_0 := null;
        assume true;
        assume {:id "id710"} n#0 == null;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(255,24)
        assume true;
        assert {:id "id711"} (forall $i: int :: 
          0 <= $i && $i < Seq#Length(U#0)
             ==> $Unbox(Seq#Index(U#0, $i)): ref != null
               && !$Unbox(read(old($Heap), $Unbox(Seq#Index(U#0, $i)): ref, alloc)): bool);
    }
    else if (*)
    {
        assume true;
        assume {:id "id708"} !$IsAllocBox($Box(n#0), Tclass._module.Node?(), old($Heap));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(256,33)
        newtype$check#2_0 := null;
        assume true;
        assert {:id "id709"} n#0 != null;
    }
    else if (*)
    {
        assume true;
        assume {:id "id706"} !$IsAllocBox($Box(n#0), Tclass._module.Node?(), old($Heap));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(257,33)
        assume true;
        assert {:id "id707"} n#0 != null && !$Unbox(read(old($Heap), n#0, alloc)): bool;
    }
    else if (*)
    {
        assume true;
        assume {:id "id704"} n#0 != null && !$Unbox(read(old($Heap), n#0, alloc)): bool;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(258,23)
        newtype$check#0_0 := null;
        assume true;
        assert {:id "id705"} n#0 != null;
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true)
           && n#0 != null
           && n#0 != null
           && $IsAllocBox($Box(n#0), Tclass._module.Node?(), old($Heap))
           && $IsAllocBox($Box(n#0), Tclass._module.Node?(), old($Heap))
           && !
          (n#0 != null
           && !$Unbox(read(old($Heap), n#0, alloc)): bool);
        assert {:id "id703"} false;
    }
}



// $Is axiom for non-null type _module.AllocatedTests
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.AllocatedTests()) } 
    { $Is(c#0, Tclass._module.AllocatedTests?()) } 
  $Is(c#0, Tclass._module.AllocatedTests())
     <==> $Is(c#0, Tclass._module.AllocatedTests?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.AllocatedTests
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.AllocatedTests(), $h) } 
    { $IsAlloc(c#0, Tclass._module.AllocatedTests?(), $h) } 
  $IsAlloc(c#0, Tclass._module.AllocatedTests(), $h)
     <==> $IsAlloc(c#0, Tclass._module.AllocatedTests?(), $h));

// Constructor function declaration
function #_module.Lindgren.Pippi(ref) : DatatypeType;

const unique ##_module.Lindgren.Pippi: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: ref :: 
  { #_module.Lindgren.Pippi(a#0#0#0) } 
  DatatypeCtorId(#_module.Lindgren.Pippi(a#0#0#0)) == ##_module.Lindgren.Pippi);
}

function _module.Lindgren.Pippi_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Lindgren.Pippi_q(d) } 
  _module.Lindgren.Pippi_q(d) <==> DatatypeCtorId(d) == ##_module.Lindgren.Pippi);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Lindgren.Pippi_q(d) } 
  _module.Lindgren.Pippi_q(d)
     ==> (exists a#1#0#0: ref :: d == #_module.Lindgren.Pippi(a#1#0#0)));

// Constructor $Is
axiom (forall a#2#0#0: ref :: 
  { $Is(#_module.Lindgren.Pippi(a#2#0#0), Tclass._module.Lindgren()) } 
  $Is(#_module.Lindgren.Pippi(a#2#0#0), Tclass._module.Lindgren())
     <==> $Is(a#2#0#0, Tclass._module.Node()));

// Constructor $IsAlloc
axiom (forall a#2#0#0: ref, $h: Heap :: 
  { $IsAlloc(#_module.Lindgren.Pippi(a#2#0#0), Tclass._module.Lindgren(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Lindgren.Pippi(a#2#0#0), Tclass._module.Lindgren(), $h)
       <==> $IsAlloc(a#2#0#0, Tclass._module.Node(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Lindgren._h0(d), Tclass._module.Node(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Lindgren.Pippi_q(d)
       && $IsAlloc(d, Tclass._module.Lindgren(), $h)
     ==> $IsAlloc(_module.Lindgren._h0(d), Tclass._module.Node(), $h));

// Constructor literal
axiom (forall a#3#0#0: ref :: 
  { #_module.Lindgren.Pippi(Lit(a#3#0#0)) } 
  #_module.Lindgren.Pippi(Lit(a#3#0#0)) == Lit(#_module.Lindgren.Pippi(a#3#0#0)));

function _module.Lindgren._h0(DatatypeType) : ref;

// Constructor injectivity
axiom (forall a#4#0#0: ref :: 
  { #_module.Lindgren.Pippi(a#4#0#0) } 
  _module.Lindgren._h0(#_module.Lindgren.Pippi(a#4#0#0)) == a#4#0#0);

// Constructor function declaration
function #_module.Lindgren.Longstocking(Seq, DatatypeType) : DatatypeType;

const unique ##_module.Lindgren.Longstocking: DtCtorId
uses {
// Constructor identifier
axiom (forall a#5#0#0: Seq, a#5#1#0: DatatypeType :: 
  { #_module.Lindgren.Longstocking(a#5#0#0, a#5#1#0) } 
  DatatypeCtorId(#_module.Lindgren.Longstocking(a#5#0#0, a#5#1#0))
     == ##_module.Lindgren.Longstocking);
}

function _module.Lindgren.Longstocking_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Lindgren.Longstocking_q(d) } 
  _module.Lindgren.Longstocking_q(d)
     <==> DatatypeCtorId(d) == ##_module.Lindgren.Longstocking);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Lindgren.Longstocking_q(d) } 
  _module.Lindgren.Longstocking_q(d)
     ==> (exists a#6#0#0: Seq, a#6#1#0: DatatypeType :: 
      d == #_module.Lindgren.Longstocking(a#6#0#0, a#6#1#0)));

// Constructor $Is
axiom (forall a#7#0#0: Seq, a#7#1#0: DatatypeType :: 
  { $Is(#_module.Lindgren.Longstocking(a#7#0#0, a#7#1#0), Tclass._module.Lindgren()) } 
  $Is(#_module.Lindgren.Longstocking(a#7#0#0, a#7#1#0), Tclass._module.Lindgren())
     <==> $Is(a#7#0#0, TSeq(Tclass._System.object()))
       && $Is(a#7#1#0, Tclass._module.Lindgren()));

// Constructor $IsAlloc
axiom (forall a#7#0#0: Seq, a#7#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.Lindgren.Longstocking(a#7#0#0, a#7#1#0), Tclass._module.Lindgren(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Lindgren.Longstocking(a#7#0#0, a#7#1#0), Tclass._module.Lindgren(), $h)
       <==> $IsAlloc(a#7#0#0, TSeq(Tclass._System.object()), $h)
         && $IsAlloc(a#7#1#0, Tclass._module.Lindgren(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Lindgren._h1(d), TSeq(Tclass._System.object()), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Lindgren.Longstocking_q(d)
       && $IsAlloc(d, Tclass._module.Lindgren(), $h)
     ==> $IsAlloc(_module.Lindgren._h1(d), TSeq(Tclass._System.object()), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Lindgren._h2(d), Tclass._module.Lindgren(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Lindgren.Longstocking_q(d)
       && $IsAlloc(d, Tclass._module.Lindgren(), $h)
     ==> $IsAlloc(_module.Lindgren._h2(d), Tclass._module.Lindgren(), $h));

// Constructor literal
axiom (forall a#8#0#0: Seq, a#8#1#0: DatatypeType :: 
  { #_module.Lindgren.Longstocking(Lit(a#8#0#0), Lit(a#8#1#0)) } 
  #_module.Lindgren.Longstocking(Lit(a#8#0#0), Lit(a#8#1#0))
     == Lit(#_module.Lindgren.Longstocking(a#8#0#0, a#8#1#0)));

function _module.Lindgren._h1(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#9#0#0: Seq, a#9#1#0: DatatypeType :: 
  { #_module.Lindgren.Longstocking(a#9#0#0, a#9#1#0) } 
  _module.Lindgren._h1(#_module.Lindgren.Longstocking(a#9#0#0, a#9#1#0))
     == a#9#0#0);

// Inductive seq element rank
axiom (forall a#10#0#0: Seq, a#10#1#0: DatatypeType, i: int :: 
  { Seq#Index(a#10#0#0, i), #_module.Lindgren.Longstocking(a#10#0#0, a#10#1#0) } 
  0 <= i && i < Seq#Length(a#10#0#0)
     ==> DtRank($Unbox(Seq#Index(a#10#0#0, i)): DatatypeType)
       < DtRank(#_module.Lindgren.Longstocking(a#10#0#0, a#10#1#0)));

// Inductive seq rank
axiom (forall a#11#0#0: Seq, a#11#1#0: DatatypeType :: 
  { #_module.Lindgren.Longstocking(a#11#0#0, a#11#1#0) } 
  Seq#Rank(a#11#0#0) < DtRank(#_module.Lindgren.Longstocking(a#11#0#0, a#11#1#0)));

function _module.Lindgren._h2(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#12#0#0: Seq, a#12#1#0: DatatypeType :: 
  { #_module.Lindgren.Longstocking(a#12#0#0, a#12#1#0) } 
  _module.Lindgren._h2(#_module.Lindgren.Longstocking(a#12#0#0, a#12#1#0))
     == a#12#1#0);

// Inductive rank
axiom (forall a#13#0#0: Seq, a#13#1#0: DatatypeType :: 
  { #_module.Lindgren.Longstocking(a#13#0#0, a#13#1#0) } 
  DtRank(a#13#1#0) < DtRank(#_module.Lindgren.Longstocking(a#13#0#0, a#13#1#0)));

// Constructor function declaration
function #_module.Lindgren.HerrNilsson() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Lindgren.HerrNilsson())
   == ##_module.Lindgren.HerrNilsson;
// Constructor $Is
axiom $Is(#_module.Lindgren.HerrNilsson(), Tclass._module.Lindgren());
// Constructor literal
axiom #_module.Lindgren.HerrNilsson() == Lit(#_module.Lindgren.HerrNilsson());
}

const unique ##_module.Lindgren.HerrNilsson: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Lindgren.HerrNilsson())
   == ##_module.Lindgren.HerrNilsson;
}

function _module.Lindgren.HerrNilsson_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Lindgren.HerrNilsson_q(d) } 
  _module.Lindgren.HerrNilsson_q(d)
     <==> DatatypeCtorId(d) == ##_module.Lindgren.HerrNilsson);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Lindgren.HerrNilsson_q(d) } 
  _module.Lindgren.HerrNilsson_q(d) ==> d == #_module.Lindgren.HerrNilsson());

// Constructor $IsAlloc
axiom (forall $h: Heap :: 
  { $IsAlloc(#_module.Lindgren.HerrNilsson(), Tclass._module.Lindgren(), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.Lindgren.HerrNilsson(), Tclass._module.Lindgren(), $h));

// Depth-one case-split function
function $IsA#_module.Lindgren(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Lindgren(d) } 
  $IsA#_module.Lindgren(d)
     ==> _module.Lindgren.Pippi_q(d)
       || _module.Lindgren.Longstocking_q(d)
       || _module.Lindgren.HerrNilsson_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Lindgren.HerrNilsson_q(d), $Is(d, Tclass._module.Lindgren()) } 
    { _module.Lindgren.Longstocking_q(d), $Is(d, Tclass._module.Lindgren()) } 
    { _module.Lindgren.Pippi_q(d), $Is(d, Tclass._module.Lindgren()) } 
  $Is(d, Tclass._module.Lindgren())
     ==> _module.Lindgren.Pippi_q(d)
       || _module.Lindgren.Longstocking_q(d)
       || _module.Lindgren.HerrNilsson_q(d));

// Datatype extensional equality declaration
function _module.Lindgren#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Lindgren.Pippi
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Lindgren#Equal(a, b), _module.Lindgren.Pippi_q(a) } 
    { _module.Lindgren#Equal(a, b), _module.Lindgren.Pippi_q(b) } 
  _module.Lindgren.Pippi_q(a) && _module.Lindgren.Pippi_q(b)
     ==> (_module.Lindgren#Equal(a, b)
       <==> _module.Lindgren._h0(a) == _module.Lindgren._h0(b)));

// Datatype extensional equality definition: #_module.Lindgren.Longstocking
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Lindgren#Equal(a, b), _module.Lindgren.Longstocking_q(a) } 
    { _module.Lindgren#Equal(a, b), _module.Lindgren.Longstocking_q(b) } 
  _module.Lindgren.Longstocking_q(a) && _module.Lindgren.Longstocking_q(b)
     ==> (_module.Lindgren#Equal(a, b)
       <==> Seq#Equal(_module.Lindgren._h1(a), _module.Lindgren._h1(b))
         && _module.Lindgren#Equal(_module.Lindgren._h2(a), _module.Lindgren._h2(b))));

// Datatype extensional equality definition: #_module.Lindgren.HerrNilsson
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Lindgren#Equal(a, b), _module.Lindgren.HerrNilsson_q(a) } 
    { _module.Lindgren#Equal(a, b), _module.Lindgren.HerrNilsson_q(b) } 
  _module.Lindgren.HerrNilsson_q(a) && _module.Lindgren.HerrNilsson_q(b)
     ==> _module.Lindgren#Equal(a, b));

// Datatype extensionality axiom: _module.Lindgren
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Lindgren#Equal(a, b) } 
  _module.Lindgren#Equal(a, b) <==> a == b);

const unique class._module.Lindgren: ClassName;

const unique class._module.InitCalls?: ClassName;

function Tclass._module.InitCalls?() : Ty
uses {
// Tclass._module.InitCalls? Tag
axiom Tag(Tclass._module.InitCalls?()) == Tagclass._module.InitCalls?
   && TagFamily(Tclass._module.InitCalls?()) == tytagFamily$InitCalls;
}

const unique Tagclass._module.InitCalls?: TyTag;

// Box/unbox axiom for Tclass._module.InitCalls?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.InitCalls?()) } 
  $IsBox(bx, Tclass._module.InitCalls?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.InitCalls?()));

// $Is axiom for class InitCalls
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.InitCalls?()) } 
  $Is($o, Tclass._module.InitCalls?())
     <==> $o == null || dtype($o) == Tclass._module.InitCalls?());

// $IsAlloc axiom for class InitCalls
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.InitCalls?(), $h) } 
  $IsAlloc($o, Tclass._module.InitCalls?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.InitCalls.z: Field
uses {
axiom FDim(_module.InitCalls.z) == 0
   && FieldOfDecl(class._module.InitCalls?, field$z) == _module.InitCalls.z
   && !$IsGhostField(_module.InitCalls.z);
}

// InitCalls.z: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.InitCalls.z)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.InitCalls?()
     ==> $Is($Unbox(read($h, $o, _module.InitCalls.z)): int, TInt));

// InitCalls.z: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.InitCalls.z)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.InitCalls?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.InitCalls.z)): int, TInt, $h));

const _module.InitCalls.p: Field
uses {
axiom FDim(_module.InitCalls.p) == 0
   && FieldOfDecl(class._module.InitCalls?, field$p) == _module.InitCalls.p
   && !$IsGhostField(_module.InitCalls.p);
}

// InitCalls.p: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.InitCalls.p)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.InitCalls?()
     ==> $Is($Unbox(read($h, $o, _module.InitCalls.p)): ref, Tclass._module.InitCalls?()));

// InitCalls.p: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.InitCalls.p)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.InitCalls?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.InitCalls.p)): ref, Tclass._module.InitCalls?(), $h));

function Tclass._module.InitCalls() : Ty
uses {
// Tclass._module.InitCalls Tag
axiom Tag(Tclass._module.InitCalls()) == Tagclass._module.InitCalls
   && TagFamily(Tclass._module.InitCalls()) == tytagFamily$InitCalls;
}

const unique Tagclass._module.InitCalls: TyTag;

// Box/unbox axiom for Tclass._module.InitCalls
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.InitCalls()) } 
  $IsBox(bx, Tclass._module.InitCalls())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.InitCalls()));

procedure {:verboseName "InitCalls.Init (well-formedness)"} CheckWellFormed$$_module.InitCalls.Init(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.InitCalls())
         && $IsAlloc(this, Tclass._module.InitCalls(), $Heap), 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "InitCalls.Init (call)"} Call$$_module.InitCalls.Init(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.InitCalls())
         && $IsAlloc(this, Tclass._module.InitCalls(), $Heap), 
    y#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id717"} $Unbox(read($Heap, this, _module.InitCalls.z)): int == y#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "InitCalls.Init (correctness)"} Impl$$_module.InitCalls.Init(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.InitCalls())
         && $IsAlloc(this, Tclass._module.InitCalls(), $Heap), 
    y#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id718"} $Unbox(read($Heap, this, _module.InitCalls.z)): int == y#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "InitCalls.Init (correctness)"} Impl$$_module.InitCalls.Init(this: ref, y#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;

    // AddMethodImpl: Init, Impl$$_module.InitCalls.Init
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(277,7)
    assume true;
    assert {:id "id719"} $_ModifiesFrame[this, _module.InitCalls.z];
    assume true;
    $rhs#0 := y#0;
    $Heap := update($Heap, this, _module.InitCalls.z, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "InitCalls.InitFromReference (well-formedness)"} CheckWellFormed$$_module.InitCalls.InitFromReference(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.InitCalls())
         && $IsAlloc(this, Tclass._module.InitCalls(), $Heap), 
    q#0: ref
       where $Is(q#0, Tclass._module.InitCalls())
         && $IsAlloc(q#0, Tclass._module.InitCalls(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "InitCalls.InitFromReference (well-formedness)"} CheckWellFormed$$_module.InitCalls.InitFromReference(this: ref, q#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: InitFromReference, CheckWellFormed$$_module.InitCalls.InitFromReference
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    assert {:id "id722"} q#0 != null;
    assume {:id "id723"} LitInt(15) <= $Unbox(read($Heap, q#0, _module.InitCalls.z)): int;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this);
    assume $HeapSucc(old($Heap), $Heap);
    assume {:id "id724"} $Unbox(read($Heap, this, _module.InitCalls.p)): ref == q#0;
}



procedure {:verboseName "InitCalls.InitFromReference (call)"} Call$$_module.InitCalls.InitFromReference(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.InitCalls())
         && $IsAlloc(this, Tclass._module.InitCalls(), $Heap), 
    q#0: ref
       where $Is(q#0, Tclass._module.InitCalls())
         && $IsAlloc(q#0, Tclass._module.InitCalls(), $Heap));
  // user-defined preconditions
  requires {:id "id725"} LitInt(15) <= $Unbox(read($Heap, q#0, _module.InitCalls.z)): int;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id726"} $Unbox(read($Heap, this, _module.InitCalls.p)): ref == q#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "InitCalls.InitFromReference (correctness)"} Impl$$_module.InitCalls.InitFromReference(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.InitCalls())
         && $IsAlloc(this, Tclass._module.InitCalls(), $Heap), 
    q#0: ref
       where $Is(q#0, Tclass._module.InitCalls())
         && $IsAlloc(q#0, Tclass._module.InitCalls(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id727"} LitInt(15) <= $Unbox(read($Heap, q#0, _module.InitCalls.z)): int;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id728"} $Unbox(read($Heap, this, _module.InitCalls.p)): ref == q#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "InitCalls.InitFromReference (correctness)"} Impl$$_module.InitCalls.InitFromReference(this: ref, q#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: ref;

    // AddMethodImpl: InitFromReference, Impl$$_module.InitCalls.InitFromReference
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(285,7)
    assume true;
    assert {:id "id729"} $_ModifiesFrame[this, _module.InitCalls.p];
    assume true;
    $rhs#0 := q#0;
    $Heap := update($Heap, this, _module.InitCalls.p, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "InitCalls.TestDriver (well-formedness)"} CheckWellFormed$$_module.InitCalls.TestDriver(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.InitCalls())
         && $IsAlloc(this, Tclass._module.InitCalls(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "InitCalls.TestDriver (call)"} Call$$_module.InitCalls.TestDriver(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.InitCalls())
         && $IsAlloc(this, Tclass._module.InitCalls(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "InitCalls.TestDriver (correctness)"} Impl$$_module.InitCalls.TestDriver(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.InitCalls())
         && $IsAlloc(this, Tclass._module.InitCalls(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "InitCalls.TestDriver (correctness)"} Impl$$_module.InitCalls.TestDriver(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.InitCalls())
         && $IsAlloc(c#0, Tclass._module.InitCalls(), $Heap);
  var $nw: ref;
  var y##0: int;
  var defass#d#0: bool;
  var d#0: ref
     where defass#d#0
       ==> $Is(d#0, Tclass._module.InitCalls())
         && $IsAlloc(d#0, Tclass._module.InitCalls(), $Heap);
  var y##1: int;
  var defass#e#0: bool;
  var e#0: ref
     where defass#e#0
       ==> $Is(e#0, Tclass._module.InitCalls())
         && $IsAlloc(e#0, Tclass._module.InitCalls(), $Heap);
  var y##2: int;
  var defass#f#0: bool;
  var f#0: ref
     where defass#f#0
       ==> $Is(f#0, Tclass._System.object())
         && $IsAlloc(f#0, Tclass._System.object(), $Heap);
  var y##3: int;
  var g#Z#0: ref;
  var let#0#0#0: ref;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var g#Z#1: ref;
  var let#1#0#0: ref;
  var newtype$check#2: ref;
  var newtype$check#3: ref;
  var defass#r#0: bool;
  var r#0: ref
     where defass#r#0
       ==> $Is(r#0, Tclass._module.InitCalls())
         && $IsAlloc(r#0, Tclass._module.InitCalls(), $Heap);
  var q##0: ref;
  var q##1: ref;

    // AddMethodImpl: TestDriver, Impl$$_module.InitCalls.TestDriver
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc c#0 /* where defass#c#0
       ==> $Is(c#0, Tclass._module.InitCalls())
         && $IsAlloc(c#0, Tclass._module.InitCalls(), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(291,7)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.InitCalls?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(291,24)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := LitInt(15);
    assert {:id "id732"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == $nw
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id733"} Call$$_module.InitCalls.Init($nw, y##0);
    // TrCallStmt: After ProcessCallStmt
    c#0 := $nw;
    defass#c#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(292,11)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.InitCalls?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(292,28)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##1 := LitInt(17);
    assert {:id "id735"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == $nw
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id736"} Call$$_module.InitCalls.Init($nw, y##1);
    // TrCallStmt: After ProcessCallStmt
    d#0 := $nw;
    defass#d#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(293,22)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.InitCalls?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(293,39)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##2 := LitInt(18);
    assert {:id "id738"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == $nw
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id739"} Call$$_module.InitCalls.Init($nw, y##2);
    // TrCallStmt: After ProcessCallStmt
    e#0 := $nw;
    defass#e#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(294,19)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.InitCalls?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(294,36)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##3 := LitInt(19);
    assert {:id "id741"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == $nw
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id742"} Call$$_module.InitCalls.Init($nw, y##3);
    // TrCallStmt: After ProcessCallStmt
    f#0 := $nw;
    defass#f#0 := true;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(295,5)
    assert {:id "id744"} defass#c#0;
    assert {:id "id745"} {:subsumption 0} c#0 != null;
    assert {:id "id746"} defass#d#0;
    assert {:id "id747"} {:subsumption 0} d#0 != null;
    assert {:id "id748"} defass#e#0;
    assert {:id "id749"} {:subsumption 0} e#0 != null;
    assume true;
    assert {:id "id750"} $Unbox(read($Heap, c#0, _module.InitCalls.z)): int
         + $Unbox(read($Heap, d#0, _module.InitCalls.z)): int
         + $Unbox(read($Heap, e#0, _module.InitCalls.z)): int
       == LitInt(50);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(297,5)
    havoc g#Z#0;
    assert {:id "id751"} defass#f#0;
    newtype$check#0 := f#0;
    assert {:id "id752"} $Is(newtype$check#0, Tclass._module.InitCalls());
    newtype$check#1 := f#0;
    assume {:id "id753"} let#0#0#0 == f#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, Tclass._module.InitCalls());
    assume {:id "id754"} g#Z#0 == let#0#0#0;
    assert {:id "id755"} defass#f#0;
    assume true;
    assert {:id "id756"} (var g#0 := f#0; f#0 == g#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(298,5)
    havoc g#Z#1;
    assert {:id "id757"} defass#f#0;
    newtype$check#2 := f#0;
    assert {:id "id758"} $Is(newtype$check#2, Tclass._module.InitCalls());
    newtype$check#3 := f#0;
    assume {:id "id759"} let#1#0#0 == f#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#1#0#0, Tclass._module.InitCalls());
    assume {:id "id760"} g#Z#1 == let#1#0#0;
    assert {:id "id761"} {:subsumption 0} g#Z#1 != null;
    assume true;
    assert {:id "id762"} (var g#1 := f#0; 
      $Unbox(read($Heap, g#1, _module.InitCalls.z)): int == LitInt(19));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(301,11)
    assume true;
    assert {:id "id763"} defass#c#0;
    assume true;
    r#0 := c#0;
    defass#r#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(302,7)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.InitCalls?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(302,24)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id765"} defass#r#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    q##0 := r#0;
    assert {:id "id766"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == $nw
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id767"} Call$$_module.InitCalls.InitFromReference($nw, q##0);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $nw;
    defass#r#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(303,7)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.InitCalls?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(303,24)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id769"} defass#r#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    q##1 := r#0;
    assert {:id "id770"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == $nw
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id771"} Call$$_module.InitCalls.InitFromReference($nw, q##1);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $nw;
    defass#r#0 := true;
}



// $Is axiom for non-null type _module.InitCalls
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.InitCalls()) } 
    { $Is(c#0, Tclass._module.InitCalls?()) } 
  $Is(c#0, Tclass._module.InitCalls())
     <==> $Is(c#0, Tclass._module.InitCalls?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.InitCalls
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.InitCalls(), $h) } 
    { $IsAlloc(c#0, Tclass._module.InitCalls?(), $h) } 
  $IsAlloc(c#0, Tclass._module.InitCalls(), $h)
     <==> $IsAlloc(c#0, Tclass._module.InitCalls?(), $h));

const unique class._module.SomeType?: ClassName;

function Tclass._module.SomeType?() : Ty
uses {
// Tclass._module.SomeType? Tag
axiom Tag(Tclass._module.SomeType?()) == Tagclass._module.SomeType?
   && TagFamily(Tclass._module.SomeType?()) == tytagFamily$SomeType;
}

const unique Tagclass._module.SomeType?: TyTag;

// Box/unbox axiom for Tclass._module.SomeType?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.SomeType?()) } 
  $IsBox(bx, Tclass._module.SomeType?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.SomeType?()));

// $Is axiom for class SomeType
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.SomeType?()) } 
  $Is($o, Tclass._module.SomeType?())
     <==> $o == null || dtype($o) == Tclass._module.SomeType?());

// $IsAlloc axiom for class SomeType
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.SomeType?(), $h) } 
  $IsAlloc($o, Tclass._module.SomeType?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.SomeType.x: Field
uses {
axiom FDim(_module.SomeType.x) == 0
   && FieldOfDecl(class._module.SomeType?, field$x) == _module.SomeType.x
   && !$IsGhostField(_module.SomeType.x);
}

// SomeType.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.SomeType.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.SomeType?()
     ==> $Is($Unbox(read($h, $o, _module.SomeType.x)): int, TInt));

// SomeType.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.SomeType.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.SomeType?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.SomeType.x)): int, TInt, $h));

function Tclass._module.SomeType() : Ty
uses {
// Tclass._module.SomeType Tag
axiom Tag(Tclass._module.SomeType()) == Tagclass._module.SomeType
   && TagFamily(Tclass._module.SomeType()) == tytagFamily$SomeType;
}

const unique Tagclass._module.SomeType: TyTag;

// Box/unbox axiom for Tclass._module.SomeType
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.SomeType()) } 
  $IsBox(bx, Tclass._module.SomeType())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.SomeType()));

procedure {:verboseName "SomeType.DoIt (well-formedness)"} CheckWellFormed$$_module.SomeType.DoIt(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SomeType())
         && $IsAlloc(this, Tclass._module.SomeType(), $Heap), 
    stack#0: Seq
       where $Is(stack#0, TSeq(Tclass._module.SomeType()))
         && $IsAlloc(stack#0, TSeq(Tclass._module.SomeType()), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SomeType.DoIt (call)"} Call$$_module.SomeType.DoIt(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SomeType())
         && $IsAlloc(this, Tclass._module.SomeType(), $Heap), 
    stack#0: Seq
       where $Is(stack#0, TSeq(Tclass._module.SomeType()))
         && $IsAlloc(stack#0, TSeq(Tclass._module.SomeType()), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || (exists $i: int :: 
          0 <= $i && $i < Seq#Length(stack#0) && Seq#Index(stack#0, $i) == $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SomeType.DoIt (correctness)"} Impl$$_module.SomeType.DoIt(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SomeType())
         && $IsAlloc(this, Tclass._module.SomeType(), $Heap), 
    stack#0: Seq
       where $Is(stack#0, TSeq(Tclass._module.SomeType()))
         && $IsAlloc(stack#0, TSeq(Tclass._module.SomeType()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || (exists $i: int :: 
          0 <= $i && $i < Seq#Length(stack#0) && Seq#Index(stack#0, $i) == $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SomeType.DoIt (correctness)"} Impl$$_module.SomeType.DoIt(this: ref, stack#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0_0: ref;
  var n#0_1: ref;
  var $prevHeap: Heap;

    // AddMethodImpl: DoIt, Impl$$_module.SomeType.DoIt
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> (exists $i: int :: 
          0 <= $i && $i < Seq#Length(stack#0) && Seq#Index(stack#0, $i) == $Box($o)));
    $_reverifyPost := false;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(359,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc n#0_0;
        assume $Is(n#0_0, Tclass._module.SomeType())
           && $IsAlloc(n#0_0, Tclass._module.SomeType(), $Heap);
        assume true;
        assume Seq#Contains(stack#0, $Box(n#0_0));
        assert {:id "id773"} {:subsumption 0} n#0_0 != null;
        assume true;
        assert {:id "id774"} $_ModifiesFrame[n#0_0, _module.SomeType.x];
        assume true;
        havoc n#0_1;
        assume $Is(n#0_1, Tclass._module.SomeType())
           && $IsAlloc(n#0_1, Tclass._module.SomeType(), $Heap);
        assume Seq#Contains(stack#0, $Box(n#0_1));
        assume n#0_0 != n#0_1;
        assert {:id "id775"} n#0_0 != n#0_1
           || _module.SomeType.x != _module.SomeType.x
           || LitInt(10) == LitInt(10);
        assume false;
    }
    else
    {
        $prevHeap := $Heap;
        havoc $Heap;
        assume $HeapSucc($prevHeap, $Heap);
        assume (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          read($Heap, $o, $f) == read($prevHeap, $o, $f)
             || (exists n#0_2: ref :: 
              $Is(n#0_2, Tclass._module.SomeType())
                 && Seq#Contains(stack#0, $Box(n#0_2))
                 && $o == n#0_2
                 && $f == _module.SomeType.x));
        assume (forall n#inv#0_0: ref :: 
          { read($Heap, n#inv#0_0, _module.SomeType.x) } 
          $Is(n#inv#0_0, Tclass._module.SomeType())
               && 
              n#inv#0_0 != null
               && Seq#Contains(stack#0, $Box(n#inv#0_0))
             ==> read($Heap, n#inv#0_0, _module.SomeType.x) == $Box(LitInt(10)));
    }
}



// $Is axiom for non-null type _module.SomeType
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.SomeType()) } 
    { $Is(c#0, Tclass._module.SomeType?()) } 
  $Is(c#0, Tclass._module.SomeType())
     <==> $Is(c#0, Tclass._module.SomeType?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.SomeType
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.SomeType(), $h) } 
    { $IsAlloc(c#0, Tclass._module.SomeType?(), $h) } 
  $IsAlloc(c#0, Tclass._module.SomeType(), $h)
     <==> $IsAlloc(c#0, Tclass._module.SomeType?(), $h));

const unique class._module.Test?: ClassName;

function Tclass._module.Test?() : Ty
uses {
// Tclass._module.Test? Tag
axiom Tag(Tclass._module.Test?()) == Tagclass._module.Test?
   && TagFamily(Tclass._module.Test?()) == tytagFamily$Test;
}

const unique Tagclass._module.Test?: TyTag;

// Box/unbox axiom for Tclass._module.Test?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Test?()) } 
  $IsBox(bx, Tclass._module.Test?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Test?()));

// $Is axiom for class Test
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Test?()) } 
  $Is($o, Tclass._module.Test?())
     <==> $o == null || dtype($o) == Tclass._module.Test?());

// $IsAlloc axiom for class Test
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Test?(), $h) } 
  $IsAlloc($o, Tclass._module.Test?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass._module.Test() : Ty
uses {
// Tclass._module.Test Tag
axiom Tag(Tclass._module.Test()) == Tagclass._module.Test
   && TagFamily(Tclass._module.Test()) == tytagFamily$Test;
}

const unique Tagclass._module.Test: TyTag;

// Box/unbox axiom for Tclass._module.Test
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Test()) } 
  $IsBox(bx, Tclass._module.Test())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Test()));

procedure {:verboseName "Test.test0 (well-formedness)"} CheckWellFormed$$_module.Test.test0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Test())
         && $IsAlloc(this, Tclass._module.Test(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Test.test0 (call)"} Call$$_module.Test.test0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Test())
         && $IsAlloc(this, Tclass._module.Test(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Test.test0 (correctness)"} Impl$$_module.Test.test0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Test())
         && $IsAlloc(this, Tclass._module.Test(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Test.test0 (correctness)"} Impl$$_module.Test.test0(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: test0, Impl$$_module.Test.test0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(408,5)
    assume true;
    assert {:id "id776"} Lit(false);
}



procedure {:verboseName "Test.test1 (well-formedness)"} {:verify false} CheckWellFormed$$_module.Test.test1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Test())
         && $IsAlloc(this, Tclass._module.Test(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Test.test1 (call)"} {:verify false} Call$$_module.Test.test1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Test())
         && $IsAlloc(this, Tclass._module.Test(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Test.init0 (well-formedness)"} CheckWellFormed$$_module.Test.init0() returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Test.init0 (call)"} Call$$_module.Test.init0()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Test())
         && $IsAlloc(this, Tclass._module.Test(), $Heap));
  modifies $Heap;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Test.init0 (correctness)"} Impl$$_module.Test.init0() returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Test.init0 (correctness)"} Impl$$_module.Test.init0() returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: init0, Impl$$_module.Test.init0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(417,3)
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(418,5)
    assume true;
    assert {:id "id777"} Lit(false);
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(417,3)
    assume this != null && $Is(this, Tclass._module.Test?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(417,3)
}



procedure {:verboseName "Test.init1 (well-formedness)"} {:verify false} CheckWellFormed$$_module.Test.init1() returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Test.init1 (call)"} {:verify false} Call$$_module.Test.init1()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Test())
         && $IsAlloc(this, Tclass._module.Test(), $Heap));
  modifies $Heap;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module.Test.test2
function _module.Test.test2($ly: LayerType, this: ref) : bool
uses {
// definition axiom for _module.Test.test2 (revealed)
axiom {:id "id778"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: ref :: 
    { _module.Test.test2($LS($ly), this) } 
    _module.Test.test2#canCall(this)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.Test()))
       ==> _module.Test.test2#canCall(this)
         && _module.Test.test2($LS($ly), this) == !_module.Test.test2($ly, this));
// definition axiom for _module.Test.test2 for all literals (revealed)
axiom {:id "id779"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: ref :: 
    {:weight 3} { _module.Test.test2($LS($ly), Lit(this)) } 
    _module.Test.test2#canCall(Lit(this))
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.Test()))
       ==> _module.Test.test2#canCall(Lit(this))
         && _module.Test.test2($LS($ly), Lit(this))
           == !Lit(_module.Test.test2($LS($ly), Lit(this))));
}

function _module.Test.test2#canCall(this: ref) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, this: ref :: 
  { _module.Test.test2($LS($ly), this) } 
  _module.Test.test2($LS($ly), this) == _module.Test.test2($ly, this));

// fuel synonym axiom
axiom (forall $ly: LayerType, this: ref :: 
  { _module.Test.test2(AsFuelBottom($ly), this) } 
  _module.Test.test2($ly, this) == _module.Test.test2($LZ, this));

function _module.Test.test2#requires(LayerType, ref) : bool;

// #requires axiom for _module.Test.test2
axiom (forall $ly: LayerType, this: ref :: 
  { _module.Test.test2#requires($ly, this) } 
  this != null && $Is(this, Tclass._module.Test())
     ==> _module.Test.test2#requires($ly, this) == true);

procedure {:verboseName "Test.test2 (well-formedness)"} CheckWellformed$$_module.Test.test2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Test())
         && $IsAlloc(this, Tclass._module.Test(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Test.test2 (well-formedness)"} CheckWellformed$$_module.Test.test2(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
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
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Test?(), $Heap);
        assert {:id "id780"} false;
        assume _module.Test.test2#canCall(this);
        assume {:id "id781"} _module.Test.test2($LS($LZ), this) == !_module.Test.test2($LS($LZ), this);
        assume _module.Test.test2#canCall(this);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Test.test2($LS($LZ), this), TBool);
        return;

        assume false;
    }
}



// function declaration for _module.Test.test3
function _module.Test.test3($ly: LayerType, this: ref) : bool
uses {
// definition axiom for _module.Test.test3 (revealed)
axiom {:id "id782"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: ref :: 
    { _module.Test.test3($LS($ly), this) } 
    _module.Test.test3#canCall(this)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.Test()))
       ==> _module.Test.test3#canCall(this)
         && _module.Test.test3($LS($ly), this) == !_module.Test.test3($ly, this));
// definition axiom for _module.Test.test3 for all literals (revealed)
axiom {:id "id783"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: ref :: 
    {:weight 3} { _module.Test.test3($LS($ly), Lit(this)) } 
    _module.Test.test3#canCall(Lit(this))
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.Test()))
       ==> _module.Test.test3#canCall(Lit(this))
         && _module.Test.test3($LS($ly), Lit(this))
           == !Lit(_module.Test.test3($LS($ly), Lit(this))));
}

function _module.Test.test3#canCall(this: ref) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, this: ref :: 
  { _module.Test.test3($LS($ly), this) } 
  _module.Test.test3($LS($ly), this) == _module.Test.test3($ly, this));

// fuel synonym axiom
axiom (forall $ly: LayerType, this: ref :: 
  { _module.Test.test3(AsFuelBottom($ly), this) } 
  _module.Test.test3($ly, this) == _module.Test.test3($LZ, this));

function _module.Test.test3#requires(LayerType, ref) : bool;

// #requires axiom for _module.Test.test3
axiom (forall $ly: LayerType, this: ref :: 
  { _module.Test.test3#requires($ly, this) } 
  this != null && $Is(this, Tclass._module.Test())
     ==> _module.Test.test3#requires($ly, this) == true);

procedure {:verboseName "Test.test3 (well-formedness)"} {:verify false} CheckWellformed$$_module.Test.test3(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Test())
         && $IsAlloc(this, Tclass._module.Test(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Test.test3 (well-formedness)"} {:verify false} CheckWellformed$$_module.Test.test3(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
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
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Test?(), $Heap);
        assert {:id "id784"} false;
        assume _module.Test.test3#canCall(this);
        assume {:id "id785"} _module.Test.test3($LS($LZ), this) == !_module.Test.test3($LS($LZ), this);
        assume _module.Test.test3#canCall(this);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Test.test3($LS($LZ), this), TBool);
        return;

        assume false;
    }
}



// $Is axiom for non-null type _module.Test
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Test()) } { $Is(c#0, Tclass._module.Test?()) } 
  $Is(c#0, Tclass._module.Test())
     <==> $Is(c#0, Tclass._module.Test?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Test
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Test(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Test?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Test(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Test?(), $h));

const unique class._module.AttributeTests?: ClassName;

function Tclass._module.AttributeTests?() : Ty
uses {
// Tclass._module.AttributeTests? Tag
axiom Tag(Tclass._module.AttributeTests?()) == Tagclass._module.AttributeTests?
   && TagFamily(Tclass._module.AttributeTests?()) == tytagFamily$AttributeTests;
}

const unique Tagclass._module.AttributeTests?: TyTag;

// Box/unbox axiom for Tclass._module.AttributeTests?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.AttributeTests?()) } 
  $IsBox(bx, Tclass._module.AttributeTests?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.AttributeTests?()));

// $Is axiom for class AttributeTests
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.AttributeTests?()) } 
  $Is($o, Tclass._module.AttributeTests?())
     <==> $o == null || dtype($o) == Tclass._module.AttributeTests?());

// $IsAlloc axiom for class AttributeTests
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.AttributeTests?(), $h) } 
  $IsAlloc($o, Tclass._module.AttributeTests?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.AttributeTests.f: Field
uses {
axiom FDim(_module.AttributeTests.f) == 0
   && FieldOfDecl(class._module.AttributeTests?, field$f) == _module.AttributeTests.f
   && !$IsGhostField(_module.AttributeTests.f);
}

// AttributeTests.f: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.AttributeTests.f)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.AttributeTests?()
     ==> $Is($Unbox(read($h, $o, _module.AttributeTests.f)): int, TInt));

// AttributeTests.f: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.AttributeTests.f)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.AttributeTests?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.AttributeTests.f)): int, TInt, $h));

function Tclass._module.AttributeTests() : Ty
uses {
// Tclass._module.AttributeTests Tag
axiom Tag(Tclass._module.AttributeTests()) == Tagclass._module.AttributeTests
   && TagFamily(Tclass._module.AttributeTests()) == tytagFamily$AttributeTests;
}

const unique Tagclass._module.AttributeTests: TyTag;

// Box/unbox axiom for Tclass._module.AttributeTests
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.AttributeTests()) } 
  $IsBox(bx, Tclass._module.AttributeTests())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.AttributeTests()));

procedure {:verboseName "AttributeTests.m0 (well-formedness)"} CheckWellFormed$$_module.AttributeTests.m0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AttributeTests())
         && $IsAlloc(this, Tclass._module.AttributeTests(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AttributeTests.m0 (call)"} Call$$_module.AttributeTests.m0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AttributeTests())
         && $IsAlloc(this, Tclass._module.AttributeTests(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AttributeTests.m0 (correctness)"} Impl$$_module.AttributeTests.m0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AttributeTests())
         && $IsAlloc(this, Tclass._module.AttributeTests(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AttributeTests.m1 (well-formedness)"} CheckWellFormed$$_module.AttributeTests.m1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AttributeTests())
         && $IsAlloc(this, Tclass._module.AttributeTests(), $Heap))
   returns (r#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AttributeTests.m1 (call)"} Call$$_module.AttributeTests.m1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AttributeTests())
         && $IsAlloc(this, Tclass._module.AttributeTests(), $Heap))
   returns (r#0: bool);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AttributeTests.m1 (correctness)"} Impl$$_module.AttributeTests.m1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AttributeTests())
         && $IsAlloc(this, Tclass._module.AttributeTests(), $Heap))
   returns (r#0: bool, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module.AttributeTests.m2
function _module.AttributeTests.m2(this: ref) : bool
uses {
// definition axiom for _module.AttributeTests.m2 (revealed)
axiom {:id "id787"} 0 <= $FunctionContextHeight
   ==> (forall this: ref :: 
    { _module.AttributeTests.m2(this) } 
    _module.AttributeTests.m2#canCall(this)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.AttributeTests()))
       ==> _module.AttributeTests.m2(this) == Lit(true));
// definition axiom for _module.AttributeTests.m2 for all literals (revealed)
axiom {:id "id788"} 0 <= $FunctionContextHeight
   ==> (forall this: ref :: 
    {:weight 3} { _module.AttributeTests.m2(Lit(this)) } 
    _module.AttributeTests.m2#canCall(Lit(this))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.AttributeTests()))
       ==> _module.AttributeTests.m2(Lit(this)) == Lit(true));
}

function _module.AttributeTests.m2#canCall(this: ref) : bool;

function _module.AttributeTests.m2#requires(ref) : bool;

// #requires axiom for _module.AttributeTests.m2
axiom (forall this: ref :: 
  { _module.AttributeTests.m2#requires(this) } 
  this != null && $Is(this, Tclass._module.AttributeTests())
     ==> _module.AttributeTests.m2#requires(this) == true);

procedure {:verboseName "AttributeTests.m2 (well-formedness)"} CheckWellformed$$_module.AttributeTests.m2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AttributeTests())
         && $IsAlloc(this, Tclass._module.AttributeTests(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AttributeTests.C (well-formedness)"} CheckWellFormed$$_module.AttributeTests.C() returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AttributeTests.C (call)"} Call$$_module.AttributeTests.C()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AttributeTests())
         && $IsAlloc(this, Tclass._module.AttributeTests(), $Heap));
  modifies $Heap;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AttributeTests.C (correctness)"} Impl$$_module.AttributeTests.C() returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AttributeTests.testAttributes0 (well-formedness)"} CheckWellFormed$$_module.AttributeTests.testAttributes0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AttributeTests())
         && $IsAlloc(this, Tclass._module.AttributeTests(), $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass._module.AttributeTests())
         && $IsAlloc(r#0, Tclass._module.AttributeTests(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AttributeTests.testAttributes0 (well-formedness)"} CheckWellFormed$$_module.AttributeTests.testAttributes0(this: ref) returns (r#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: testAttributes0, CheckWellFormed$$_module.AttributeTests.testAttributes0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> ($o == this && $f == _module.AttributeTests.f)
           || ($o == this && $f == _module.AttributeTests.f)
           || ($o == this && $f == _module.AttributeTests.f)
           || ($o == this && $f == _module.AttributeTests.f)
           || $o == this
           || $o == this
           || $o == this
           || $o == this);
    assert {:id "id790"} this != null;
    assert {:id "id791"} this != null;
    assert {:id "id792"} this != null;
    assert {:id "id793"} this != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || 
          $o == this
           || $o == this
           || $o == this
           || $o == this
           || $o == this
           || $o == this
           || $o == this
           || $o == this);
    assume (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
           || 
          ($o == this && $f == _module.AttributeTests.f)
           || ($o == this && $f == _module.AttributeTests.f)
           || ($o == this && $f == _module.AttributeTests.f)
           || ($o == this && $f == _module.AttributeTests.f)
           || $o == this
           || $o == this
           || $o == this
           || $o == this);
    assume $HeapSucc(old($Heap), $Heap);
    havoc r#0;
    assume {:id "id794"} true;
    assume {:id "id795"} true;
    assume {:id "id796"} true;
    assume {:id "id797"} true;
}



procedure {:verboseName "AttributeTests.testAttributes0 (call)"} Call$$_module.AttributeTests.testAttributes0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AttributeTests())
         && $IsAlloc(this, Tclass._module.AttributeTests(), $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass._module.AttributeTests())
         && $IsAlloc(r#0, Tclass._module.AttributeTests(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id798"} Lit(true);
  free ensures true;
  ensures {:id "id799"} Lit(true);
  free ensures true;
  ensures {:id "id800"} Lit(true);
  free ensures true;
  ensures {:id "id801"} Lit(true);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || $o == this
         || $o == this
         || $o == this
         || $o == this
         || $o == this
         || $o == this
         || $o == this);
  // frame condition: field granularity
  free ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || 
        ($o == this && $f == _module.AttributeTests.f)
         || ($o == this && $f == _module.AttributeTests.f)
         || ($o == this && $f == _module.AttributeTests.f)
         || ($o == this && $f == _module.AttributeTests.f)
         || $o == this
         || $o == this
         || $o == this
         || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AttributeTests.testAttributes0 (correctness)"} Impl$$_module.AttributeTests.testAttributes0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AttributeTests())
         && $IsAlloc(this, Tclass._module.AttributeTests(), $Heap))
   returns (defass#r#0: bool, 
    r#0: ref
       where defass#r#0
         ==> $Is(r#0, Tclass._module.AttributeTests())
           && $IsAlloc(r#0, Tclass._module.AttributeTests(), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id802"} Lit(true);
  free ensures true;
  ensures {:id "id803"} Lit(true);
  free ensures true;
  ensures {:id "id804"} Lit(true);
  free ensures true;
  ensures {:id "id805"} Lit(true);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || $o == this
         || $o == this
         || $o == this
         || $o == this
         || $o == this
         || $o == this
         || $o == this);
  // frame condition: field granularity
  free ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || 
        ($o == this && $f == _module.AttributeTests.f)
         || ($o == this && $f == _module.AttributeTests.f)
         || ($o == this && $f == _module.AttributeTests.f)
         || ($o == this && $f == _module.AttributeTests.f)
         || $o == this
         || $o == this
         || $o == this
         || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AttributeTests.testAttributes0 (correctness)"} Impl$$_module.AttributeTests.testAttributes0(this: ref) returns (defass#r#0: bool, r#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $PreLoopHeap$loop#0: Heap;
  var $Frame$loop#0: [ref,Field]bool;
  var $decr_init$loop#00: int;
  var $decr_init$loop#01: int;
  var $decr_init$loop#02: int;
  var $decr_init$loop#03: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $decr$loop#01: int;
  var $decr$loop#02: int;
  var $decr$loop#03: int;
  var b1#0: bool;
  var $rhs##0: bool;
  var $rhs##1: bool;
  var $rhs##2: bool;
  var $rhs##3: bool;
  var b2#0: bool;
  var b2'#0: bool;
  var $rhs#0: bool;
  var $rhs#1: bool;
  var $rhs#2: bool;
  var $rhs#3: bool;
  var $rhs#4: bool;
  var $rhs#5: bool;
  var $rhs#6: bool;
  var $rhs#7: bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.AttributeTests())
         && $IsAlloc(c#0, Tclass._module.AttributeTests(), $Heap);
  var $nw: ref;
  var y#0: bool;
  var x#0: real;
  var aa#0: ref
     where $Is(aa#0, Tclass._System.array(TReal))
       && $IsAlloc(aa#0, Tclass._System.array(TReal), $Heap);
  var y#3_0: int;
  var x#3_0: int;
  var z#3_0: bool;

    // AddMethodImpl: testAttributes0, Impl$$_module.AttributeTests.testAttributes0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> ($o == this && $f == _module.AttributeTests.f)
           || ($o == this && $f == _module.AttributeTests.f)
           || ($o == this && $f == _module.AttributeTests.f)
           || ($o == this && $f == _module.AttributeTests.f)
           || $o == this
           || $o == this
           || $o == this
           || $o == this);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(491,5)
    assume true;
    assert {:id "id806"} Lit(true);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(492,5)
    assume true;
    assert {:id "id807"} Lit(true);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(493,5)
    assume true;
    assert {:id "id808"} Lit(true);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(494,5)
    assume true;
    assert {:id "id809"} Lit(true);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(496,5)
    // Assume Fuel Constant
    assert {:id "id810"} this != null;
    assert {:id "id811"} this != null;
    assert {:id "id812"} this != null;
    assert {:id "id813"} this != null;
    assert {:id "id814"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (
            ($o == this && $f == _module.AttributeTests.f)
             || ($o == this && $f == _module.AttributeTests.f)
             || ($o == this && $f == _module.AttributeTests.f)
             || ($o == this && $f == _module.AttributeTests.f))
         ==> $_ModifiesFrame[$o, $f]);
    $Frame$loop#0 := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> ($o == this && $f == _module.AttributeTests.f)
           || ($o == this && $f == _module.AttributeTests.f)
           || ($o == this && $f == _module.AttributeTests.f)
           || ($o == this && $f == _module.AttributeTests.f));
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := $Unbox(read($Heap, this, _module.AttributeTests.f)): int;
    $decr_init$loop#01 := $Unbox(read($Heap, this, _module.AttributeTests.f)): int;
    $decr_init$loop#02 := $Unbox(read($Heap, this, _module.AttributeTests.f)): int;
    $decr_init$loop#03 := $Unbox(read($Heap, this, _module.AttributeTests.f)): int;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id816"} $w$loop#0 ==> Lit(true);
      free invariant true;
      invariant {:id "id818"} $w$loop#0 ==> Lit(true);
      free invariant true;
      invariant {:id "id820"} $w$loop#0 ==> Lit(true);
      free invariant true;
      invariant {:id "id822"} $w$loop#0 ==> Lit(true);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]
             || 
            $o == this
             || $o == this
             || $o == this
             || $o == this
             || $o == this
             || $o == this
             || $o == this
             || $o == this);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || 
            ($o == this && $f == _module.AttributeTests.f)
             || ($o == this && $f == _module.AttributeTests.f)
             || ($o == this && $f == _module.AttributeTests.f)
             || ($o == this && $f == _module.AttributeTests.f)
             || $o == this
             || $o == this
             || $o == this
             || $o == this);
      free invariant $HeapSuccGhost($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $Frame$loop#0[$o, $f]);
      free invariant $Unbox(read($Heap, this, _module.AttributeTests.f)): int <= $decr_init$loop#00
         && ($Unbox(read($Heap, this, _module.AttributeTests.f)): int == $decr_init$loop#00
           ==> $Unbox(read($Heap, this, _module.AttributeTests.f)): int <= $decr_init$loop#01
             && ($Unbox(read($Heap, this, _module.AttributeTests.f)): int == $decr_init$loop#01
               ==> $Unbox(read($Heap, this, _module.AttributeTests.f)): int <= $decr_init$loop#02
                 && ($Unbox(read($Heap, this, _module.AttributeTests.f)): int == $decr_init$loop#02
                   ==> $Unbox(read($Heap, this, _module.AttributeTests.f)): int <= $decr_init$loop#03)));
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id815"} true;
            assume true;
            assume {:id "id817"} true;
            assume true;
            assume {:id "id819"} true;
            assume true;
            assume {:id "id821"} true;
            assume true;
            assume true;
            assume true;
            assume true;
            assume false;
        }

        assume true;
        if (!Lit(false))
        {
            break;
        }

        $decr$loop#00 := $Unbox(read($Heap, this, _module.AttributeTests.f)): int;
        $decr$loop#01 := $Unbox(read($Heap, this, _module.AttributeTests.f)): int;
        $decr$loop#02 := $Unbox(read($Heap, this, _module.AttributeTests.f)): int;
        $decr$loop#03 := $Unbox(read($Heap, this, _module.AttributeTests.f)): int;
        push;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(496,5)
        assert {:id "id823"} 0 <= $decr$loop#00
           || $Unbox(read($Heap, this, _module.AttributeTests.f)): int == $decr$loop#00;
        assert {:id "id824"} 0 <= $decr$loop#01
           || $Unbox(read($Heap, this, _module.AttributeTests.f)): int < $decr$loop#00
           || $Unbox(read($Heap, this, _module.AttributeTests.f)): int == $decr$loop#01;
        assert {:id "id825"} 0 <= $decr$loop#02
           || $Unbox(read($Heap, this, _module.AttributeTests.f)): int < $decr$loop#00
           || $Unbox(read($Heap, this, _module.AttributeTests.f)): int < $decr$loop#01
           || $Unbox(read($Heap, this, _module.AttributeTests.f)): int == $decr$loop#02;
        assert {:id "id826"} 0 <= $decr$loop#03
           || $Unbox(read($Heap, this, _module.AttributeTests.f)): int < $decr$loop#00
           || $Unbox(read($Heap, this, _module.AttributeTests.f)): int < $decr$loop#01
           || $Unbox(read($Heap, this, _module.AttributeTests.f)): int < $decr$loop#02
           || $Unbox(read($Heap, this, _module.AttributeTests.f)): int == $decr$loop#03;
        assert {:id "id827"} $Unbox(read($Heap, this, _module.AttributeTests.f)): int < $decr$loop#00
           || ($Unbox(read($Heap, this, _module.AttributeTests.f)): int == $decr$loop#00
             && ($Unbox(read($Heap, this, _module.AttributeTests.f)): int < $decr$loop#01
               || ($Unbox(read($Heap, this, _module.AttributeTests.f)): int == $decr$loop#01
                 && ($Unbox(read($Heap, this, _module.AttributeTests.f)): int < $decr$loop#02
                   || ($Unbox(read($Heap, this, _module.AttributeTests.f)): int == $decr$loop#02
                     && $Unbox(read($Heap, this, _module.AttributeTests.f)): int < $decr$loop#03)))));
        assume true;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(513,7)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id828"} Call$$_module.AttributeTests.m0(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(514,7)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id829"} Call$$_module.AttributeTests.m0(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(515,7)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id830"} Call$$_module.AttributeTests.m0(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(516,7)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id831"} Call$$_module.AttributeTests.m0(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(518,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id832"} Call$$_module.AttributeTests.m0(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(519,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id833"} Call$$_module.AttributeTests.m0(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(520,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id834"} Call$$_module.AttributeTests.m0(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(521,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id835"} Call$$_module.AttributeTests.m0(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(523,17)
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id836"} $rhs##0 := Call$$_module.AttributeTests.m1(this);
    // TrCallStmt: After ProcessCallStmt
    b1#0 := $rhs##0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(524,13)
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id838"} $rhs##1 := Call$$_module.AttributeTests.m1(this);
    // TrCallStmt: After ProcessCallStmt
    b1#0 := $rhs##1;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(525,13)
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id840"} $rhs##2 := Call$$_module.AttributeTests.m1(this);
    // TrCallStmt: After ProcessCallStmt
    b1#0 := $rhs##2;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(526,13)
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id842"} $rhs##3 := Call$$_module.AttributeTests.m1(this);
    // TrCallStmt: After ProcessCallStmt
    b1#0 := $rhs##3;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(528,17)
    assume true;
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.AttributeTests?(), $Heap);
    assume _module.AttributeTests.m2#canCall(this);
    assume _module.AttributeTests.m2#canCall(this);
    $rhs#0 := _module.AttributeTests.m2(this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.AttributeTests?(), $Heap);
    assume _module.AttributeTests.m2#canCall(this);
    assume _module.AttributeTests.m2#canCall(this);
    $rhs#1 := _module.AttributeTests.m2(this);
    b2#0 := $rhs#0;
    b2'#0 := $rhs#1;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(529,13)
    assume true;
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.AttributeTests?(), $Heap);
    assume _module.AttributeTests.m2#canCall(this);
    assume _module.AttributeTests.m2#canCall(this);
    $rhs#2 := _module.AttributeTests.m2(this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.AttributeTests?(), $Heap);
    assume _module.AttributeTests.m2#canCall(this);
    assume _module.AttributeTests.m2#canCall(this);
    $rhs#3 := _module.AttributeTests.m2(this);
    b2#0 := $rhs#2;
    b2'#0 := $rhs#3;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(530,13)
    assume true;
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.AttributeTests?(), $Heap);
    assume _module.AttributeTests.m2#canCall(this);
    assume _module.AttributeTests.m2#canCall(this);
    $rhs#4 := _module.AttributeTests.m2(this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.AttributeTests?(), $Heap);
    assume _module.AttributeTests.m2#canCall(this);
    assume _module.AttributeTests.m2#canCall(this);
    $rhs#5 := _module.AttributeTests.m2(this);
    b2#0 := $rhs#4;
    b2'#0 := $rhs#5;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(531,13)
    assume true;
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.AttributeTests?(), $Heap);
    assume _module.AttributeTests.m2#canCall(this);
    assume _module.AttributeTests.m2#canCall(this);
    $rhs#6 := _module.AttributeTests.m2(this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.AttributeTests?(), $Heap);
    assume _module.AttributeTests.m2#canCall(this);
    assume _module.AttributeTests.m2#canCall(this);
    $rhs#7 := _module.AttributeTests.m2(this);
    b2#0 := $rhs#6;
    b2'#0 := $rhs#7;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(533,11)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(533,33)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id860"} $nw := Call$$_module.AttributeTests.C();
    // TrCallStmt: After ProcessCallStmt
    c#0 := $nw;
    defass#c#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(534,7)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(534,29)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id862"} $nw := Call$$_module.AttributeTests.C();
    // TrCallStmt: After ProcessCallStmt
    c#0 := $nw;
    defass#c#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(535,7)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(535,29)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id864"} $nw := Call$$_module.AttributeTests.C();
    // TrCallStmt: After ProcessCallStmt
    c#0 := $nw;
    defass#c#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(536,7)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(536,29)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id866"} $nw := Call$$_module.AttributeTests.C();
    // TrCallStmt: After ProcessCallStmt
    c#0 := $nw;
    defass#c#0 := true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(538,5)
    if (*)
    {
        push;
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(539,7)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(539,7)
        assume true;
        // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(539,33)
        // TrCallStmt: Before ProcessCallStmt
        call {:id "id868"} $nw := Call$$_module.AttributeTests.C();
        // TrCallStmt: After ProcessCallStmt
        r#0 := $nw;
        defass#r#0 := true;
        assert {:id "id870"} defass#r#0;
        pop;
        return;

        pop;
    }
    else
    {
        push;
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(541,7)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(541,7)
        assume true;
        // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(541,33)
        // TrCallStmt: Before ProcessCallStmt
        call {:id "id871"} $nw := Call$$_module.AttributeTests.C();
        // TrCallStmt: After ProcessCallStmt
        r#0 := $nw;
        defass#r#0 := true;
        assert {:id "id873"} defass#r#0;
        pop;
        return;

        pop;
    }

    havoc y#0, x#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(547,12)
    assume true;
    assert {:id "id874"} 0 <= LitInt(120);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TReal));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(120);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    aa#0 := $nw;
    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(548,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc y#3_0, x#3_0, z#3_0;
        assume true;
        assume true;
        assume {:id "id876"} x#3_0 < y#3_0;
        if (*)
        {
            if (z#3_0)
            {
                if (LitInt(0) <= x#3_0)
                {
                    assert {:id "id877"} {:subsumption 0} aa#0 != null;
                }
            }

            if (z#3_0 && LitInt(0) <= x#3_0 && x#3_0 < _System.array.Length(aa#0))
            {
                assert {:id "id878"} aa#0 != null;
                assert {:id "id879"} {:subsumption 0} 0 <= x#3_0 && x#3_0 < _System.array.Length(aa#0);
            }

            assume true;
            assume {:id "id880"} z#3_0 && LitInt(0) <= x#3_0 && x#3_0 < _System.array.Length(aa#0)
               ==> $Unbox(read($Heap, aa#0, IndexField(x#3_0))): real == LitReal(0e0);
            assume false;
        }

        assert {:id "id881"} z#3_0 && LitInt(0) <= x#3_0 && x#3_0 < _System.array.Length(aa#0)
           ==> $Unbox(read($Heap, aa#0, IndexField(x#3_0))): real == LitReal(0e0);
        assume false;
    }
    else
    {
        assume (forall y#3_1: int, x#3_1: int, z#3_1: bool :: 
          x#3_1 < y#3_1
             ==> 
            z#3_1 && LitInt(0) <= x#3_1 && x#3_1 < _System.array.Length(aa#0)
             ==> $Unbox(read($Heap, aa#0, IndexField(x#3_1))): real == LitReal(0e0));
    }

    assert {:id "id882"} defass#r#0;
}



// $Is axiom for non-null type _module.AttributeTests
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.AttributeTests()) } 
    { $Is(c#0, Tclass._module.AttributeTests?()) } 
  $Is(c#0, Tclass._module.AttributeTests())
     <==> $Is(c#0, Tclass._module.AttributeTests?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.AttributeTests
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.AttributeTests(), $h) } 
    { $IsAlloc(c#0, Tclass._module.AttributeTests?(), $h) } 
  $IsAlloc(c#0, Tclass._module.AttributeTests(), $h)
     <==> $IsAlloc(c#0, Tclass._module.AttributeTests?(), $h));

// Constructor function declaration
function #_module.QuiteFinite.QQA() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.QuiteFinite.QQA()) == ##_module.QuiteFinite.QQA;
// Constructor $Is
axiom $Is(#_module.QuiteFinite.QQA(), Tclass._module.QuiteFinite());
}

const unique ##_module.QuiteFinite.QQA: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.QuiteFinite.QQA()) == ##_module.QuiteFinite.QQA;
}

function _module.QuiteFinite.QQA_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.QuiteFinite.QQA_q(d) } 
  _module.QuiteFinite.QQA_q(d) <==> DatatypeCtorId(d) == ##_module.QuiteFinite.QQA);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.QuiteFinite.QQA_q(d) } 
  _module.QuiteFinite.QQA_q(d) ==> d == #_module.QuiteFinite.QQA());

// Constructor function declaration
function #_module.QuiteFinite.QQB() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.QuiteFinite.QQB()) == ##_module.QuiteFinite.QQB;
// Constructor $Is
axiom $Is(#_module.QuiteFinite.QQB(), Tclass._module.QuiteFinite());
}

const unique ##_module.QuiteFinite.QQB: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.QuiteFinite.QQB()) == ##_module.QuiteFinite.QQB;
}

function _module.QuiteFinite.QQB_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.QuiteFinite.QQB_q(d) } 
  _module.QuiteFinite.QQB_q(d) <==> DatatypeCtorId(d) == ##_module.QuiteFinite.QQB);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.QuiteFinite.QQB_q(d) } 
  _module.QuiteFinite.QQB_q(d) ==> d == #_module.QuiteFinite.QQB());

// Constructor function declaration
function #_module.QuiteFinite.QQC() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.QuiteFinite.QQC()) == ##_module.QuiteFinite.QQC;
// Constructor $Is
axiom $Is(#_module.QuiteFinite.QQC(), Tclass._module.QuiteFinite());
}

const unique ##_module.QuiteFinite.QQC: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.QuiteFinite.QQC()) == ##_module.QuiteFinite.QQC;
}

function _module.QuiteFinite.QQC_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.QuiteFinite.QQC_q(d) } 
  _module.QuiteFinite.QQC_q(d) <==> DatatypeCtorId(d) == ##_module.QuiteFinite.QQC);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.QuiteFinite.QQC_q(d) } 
  _module.QuiteFinite.QQC_q(d) ==> d == #_module.QuiteFinite.QQC());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.QuiteFinite(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.QuiteFinite())
     ==> $IsAlloc(d, Tclass._module.QuiteFinite(), $h));

// Depth-one case-split function
function $IsA#_module.QuiteFinite(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.QuiteFinite(d) } 
  $IsA#_module.QuiteFinite(d)
     ==> _module.QuiteFinite.QQA_q(d)
       || _module.QuiteFinite.QQB_q(d)
       || _module.QuiteFinite.QQC_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.QuiteFinite.QQC_q(d), $Is(d, Tclass._module.QuiteFinite()) } 
    { _module.QuiteFinite.QQB_q(d), $Is(d, Tclass._module.QuiteFinite()) } 
    { _module.QuiteFinite.QQA_q(d), $Is(d, Tclass._module.QuiteFinite()) } 
  $Is(d, Tclass._module.QuiteFinite())
     ==> _module.QuiteFinite.QQA_q(d)
       || _module.QuiteFinite.QQB_q(d)
       || _module.QuiteFinite.QQC_q(d));

function $Eq#_module.QuiteFinite(LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.QuiteFinite($LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.QuiteFinite()) && $Is(d1, Tclass._module.QuiteFinite())
     ==> ($Eq#_module.QuiteFinite($LS(ly), d0, d1)
       <==> (_module.QuiteFinite.QQA_q(d0) && _module.QuiteFinite.QQA_q(d1))
         || (_module.QuiteFinite.QQB_q(d0) && _module.QuiteFinite.QQB_q(d1))
         || (_module.QuiteFinite.QQC_q(d0) && _module.QuiteFinite.QQC_q(d1))));

// Unbump layer co-equality axiom
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.QuiteFinite($LS(ly), d0, d1) } 
  $Eq#_module.QuiteFinite($LS(ly), d0, d1)
     <==> $Eq#_module.QuiteFinite(ly, d0, d1));

// Equality for codatatypes
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.QuiteFinite($LS(ly), d0, d1) } 
  $Eq#_module.QuiteFinite($LS(ly), d0, d1) <==> d0 == d1);

function $PrefixEq#_module.QuiteFinite(Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.QuiteFinite(k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.QuiteFinite()) && $Is(d1, Tclass._module.QuiteFinite())
     ==> ($PrefixEq#_module.QuiteFinite(k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> (_module.QuiteFinite.QQA_q(d0) && _module.QuiteFinite.QQA_q(d1))
             || (_module.QuiteFinite.QQB_q(d0) && _module.QuiteFinite.QQB_q(d1))
             || (_module.QuiteFinite.QQC_q(d0) && _module.QuiteFinite.QQC_q(d1)))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k) ==> $Eq#_module.QuiteFinite(ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.QuiteFinite(k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.QuiteFinite(k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.QuiteFinite(k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.QuiteFinite($LS(ly), d0, d1) } 
  $Eq#_module.QuiteFinite($LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.QuiteFinite(k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.QuiteFinite(k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.QuiteFinite($LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.QuiteFinite(ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k ==> $PrefixEq#_module.QuiteFinite(ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.QuiteFinite($LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType, m: Box :: 
  { $PrefixEq#_module.QuiteFinite(k, $LS(ly), d0, d1), $PrefixEq#_module.QuiteFinite(m, $LS(ly), d0, d1) } 
  ORD#Less(k, m) && $PrefixEq#_module.QuiteFinite(m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.QuiteFinite(k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.QuiteFinite(k, $LS(ly), d0, d1) } 
  d0 == d1 ==> $PrefixEq#_module.QuiteFinite(k, $LS(ly), d0, d1));

const unique class._module.QuiteFinite: ClassName;

const unique class._module.GT?: ClassName;

function Tclass._module.GT?() : Ty
uses {
// Tclass._module.GT? Tag
axiom Tag(Tclass._module.GT?()) == Tagclass._module.GT?
   && TagFamily(Tclass._module.GT?()) == tytagFamily$GT;
}

const unique Tagclass._module.GT?: TyTag;

// Box/unbox axiom for Tclass._module.GT?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.GT?()) } 
  $IsBox(bx, Tclass._module.GT?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.GT?()));

// $Is axiom for class GT
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.GT?()) } 
  $Is($o, Tclass._module.GT?())
     <==> $o == null || dtype($o) == Tclass._module.GT?());

// $IsAlloc axiom for class GT
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.GT?(), $h) } 
  $IsAlloc($o, Tclass._module.GT?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.GT.x: Field
uses {
axiom FDim(_module.GT.x) == 0
   && FieldOfDecl(class._module.GT?, field$x) == _module.GT.x
   && !$IsGhostField(_module.GT.x);
}

// GT.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.GT.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.GT?()
     ==> $Is($Unbox(read($h, $o, _module.GT.x)): int, TInt));

// GT.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.GT.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.GT?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.GT.x)): int, TInt, $h));

const _module.GT.y: Field
uses {
axiom FDim(_module.GT.y) == 0
   && FieldOfDecl(class._module.GT?, field$y) == _module.GT.y
   && !$IsGhostField(_module.GT.y);
}

// GT.y: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.GT.y)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.GT?()
     ==> $Is($Unbox(read($h, $o, _module.GT.y)): int, TInt));

// GT.y: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.GT.y)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.GT?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.GT.y)): int, TInt, $h));

const _module.GT.z: Field
uses {
axiom FDim(_module.GT.z) == 0
   && FieldOfDecl(class._module.GT?, field$z) == _module.GT.z
   && $IsGhostField(_module.GT.z);
}

// GT.z: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.GT.z)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.GT?()
     ==> $Is($Unbox(read($h, $o, _module.GT.z)): int, TInt));

// GT.z: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.GT.z)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.GT?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.GT.z)): int, TInt, $h));

function Tclass._module.GT() : Ty
uses {
// Tclass._module.GT Tag
axiom Tag(Tclass._module.GT()) == Tagclass._module.GT
   && TagFamily(Tclass._module.GT()) == tytagFamily$GT;
}

const unique Tagclass._module.GT: TyTag;

// Box/unbox axiom for Tclass._module.GT
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.GT()) } 
  $IsBox(bx, Tclass._module.GT())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.GT()));

procedure {:verboseName "GT.M0 (well-formedness)"} CheckWellFormed$$_module.GT.M0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.GT())
         && $IsAlloc(this, Tclass._module.GT(), $Heap), 
    N#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GT.M0 (call)"} Call$$_module.GT.M0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.GT())
         && $IsAlloc(this, Tclass._module.GT(), $Heap), 
    N#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GT.M0 (correctness)"} Impl$$_module.GT.M0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.GT())
         && $IsAlloc(this, Tclass._module.GT(), $Heap), 
    N#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GT.M0 (correctness)"} Impl$$_module.GT.M0(this: ref, N#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var n#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $obj1: ref;
  var $rhs#0_0: int;
  var $rhs#0_1: int;

    // AddMethodImpl: M0, Impl$$_module.GT.M0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(728,7)
    assume true;
    assert {:id "id883"} $_ModifiesFrame[this, _module.GT.x];
    assume true;
    $rhs#0 := LitInt(18);
    $Heap := update($Heap, this, _module.GT.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(729,11)
    assume true;
    assume true;
    n#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(730,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 100 - n#0;
    havoc $w$loop#0;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == this);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant 100 - n#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (100 <= n#0)
        {
            break;
        }

        $decr$loop#00 := 100 - n#0;
        push;
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(731,12)
        assume true;
        assume true;
        $obj1 := this;
        assert {:id "id887"} $_ModifiesFrame[$obj1, _module.GT.y];
        assume true;
        $rhs#0_0 := n#0 + 1;
        assume true;
        $rhs#0_1 := $Unbox(read($Heap, this, _module.GT.y)): int + 1;
        n#0 := $rhs#0_0;
        $Heap := update($Heap, $obj1, _module.GT.y, $Box($rhs#0_1));
        assume $IsGoodHeap($Heap);
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(730,5)
        assert {:id "id892"} 0 <= $decr$loop#00 || 100 - n#0 == $decr$loop#00;
        assert {:id "id893"} 100 - n#0 < $decr$loop#00;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(733,5)
    assume true;
    assert {:id "id894"} $Unbox(read($Heap, this, _module.GT.x)): int == LitInt(18);
}



procedure {:verboseName "GT.M1 (well-formedness)"} CheckWellFormed$$_module.GT.M1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.GT())
         && $IsAlloc(this, Tclass._module.GT(), $Heap), 
    N#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GT.M1 (call)"} Call$$_module.GT.M1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.GT())
         && $IsAlloc(this, Tclass._module.GT(), $Heap), 
    N#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GT.M1 (correctness)"} Impl$$_module.GT.M1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.GT())
         && $IsAlloc(this, Tclass._module.GT(), $Heap), 
    N#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GT.M1 (correctness)"} Impl$$_module.GT.M1(this: ref, N#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var n#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $obj1: ref;
  var $rhs#0_0: int;
  var $rhs#0_1: int;

    // AddMethodImpl: M1, Impl$$_module.GT.M1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(738,7)
    assume true;
    assert {:id "id895"} $_ModifiesFrame[this, _module.GT.x];
    assume true;
    $rhs#0 := LitInt(18);
    $Heap := update($Heap, this, _module.GT.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(739,17)
    assume true;
    assume true;
    n#0 := N#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(740,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 100 - n#0;
    havoc $w$loop#0;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == this);
      free invariant $HeapSuccGhost($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant 100 - n#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (100 <= n#0)
        {
            break;
        }

        $decr$loop#00 := 100 - n#0;
        push;
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(741,12)
        assume true;
        assume true;
        $obj1 := this;
        assert {:id "id899"} $_ModifiesFrame[$obj1, _module.GT.z];
        assume true;
        $rhs#0_0 := n#0 + 1;
        assume true;
        $rhs#0_1 := $Unbox(read($Heap, this, _module.GT.z)): int + 1;
        n#0 := $rhs#0_0;
        $Heap := update($Heap, $obj1, _module.GT.z, $Box($rhs#0_1));
        assume $IsGoodHeap($Heap);
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(740,5)
        assert {:id "id904"} 0 <= $decr$loop#00 || 100 - n#0 == $decr$loop#00;
        assert {:id "id905"} 100 - n#0 < $decr$loop#00;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(743,5)
    assume true;
    assert {:id "id906"} $Unbox(read($Heap, this, _module.GT.x)): int == LitInt(18);
}



procedure {:verboseName "GT.P0 (well-formedness)"} CheckWellFormed$$_module.GT.P0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.GT())
         && $IsAlloc(this, Tclass._module.GT(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GT.P0 (call)"} Call$$_module.GT.P0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.GT())
         && $IsAlloc(this, Tclass._module.GT(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GT.P1 (well-formedness)"} CheckWellFormed$$_module.GT.P1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.GT())
         && $IsAlloc(this, Tclass._module.GT(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GT.P1 (call)"} Call$$_module.GT.P1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.GT())
         && $IsAlloc(this, Tclass._module.GT(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "GT.Q (well-formedness)"} CheckWellFormed$$_module.GT.Q(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.GT())
         && $IsAlloc(this, Tclass._module.GT(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GT.Q (call)"} Call$$_module.GT.Q(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.GT())
         && $IsAlloc(this, Tclass._module.GT(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GT.Q (correctness)"} Impl$$_module.GT.Q(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.GT())
         && $IsAlloc(this, Tclass._module.GT(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GT.Q (correctness)"} Impl$$_module.GT.Q(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0_0: ref;
  var x#1_0: ref;

    // AddMethodImpl: Q, Impl$$_module.GT.Q
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(752,5)
    if (*)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(753,9)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id907"} (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == this
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id908"} Call$$_module.GT.P0(this);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(754,7)
        // Begin Comprehension WF check
        havoc x#0_0;
        if ($Is(x#0_0, Tclass._module.GT()) && $IsAlloc(x#0_0, Tclass._module.GT(), $Heap))
        {
            if ($IsAllocBox($Box(x#0_0), Tclass._module.GT(), $Heap))
            {
            }
        }

        // End Comprehension WF check
        assume true;
        assert {:id "id909"} (forall x#0_1: ref :: 
          $Is(x#0_1, Tclass._module.GT())
             ==> 
            $IsAllocBox($Box(x#0_1), Tclass._module.GT(), $Heap)
             ==> $IsAllocBox($Box(x#0_1), Tclass._module.GT(), old($Heap)));
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(756,9)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id910"} (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == this
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id911"} Call$$_module.GT.P1(this);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SmallTests.dfy(757,7)
        // Begin Comprehension WF check
        havoc x#1_0;
        if ($Is(x#1_0, Tclass._module.GT()) && $IsAlloc(x#1_0, Tclass._module.GT(), $Heap))
        {
            if ($IsAllocBox($Box(x#1_0), Tclass._module.GT(), $Heap))
            {
            }
        }

        // End Comprehension WF check
        assume true;
        assert {:id "id912"} (forall x#1_1: ref :: 
          $Is(x#1_1, Tclass._module.GT())
             ==> 
            $IsAllocBox($Box(x#1_1), Tclass._module.GT(), $Heap)
             ==> $IsAllocBox($Box(x#1_1), Tclass._module.GT(), old($Heap)));
    }
}



// $Is axiom for non-null type _module.GT
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.GT()) } { $Is(c#0, Tclass._module.GT?()) } 
  $Is(c#0, Tclass._module.GT()) <==> $Is(c#0, Tclass._module.GT?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.GT
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.GT(), $h) } 
    { $IsAlloc(c#0, Tclass._module.GT?(), $h) } 
  $IsAlloc(c#0, Tclass._module.GT(), $h)
     <==> $IsAlloc(c#0, Tclass._module.GT?(), $h));

const unique class.GenericPick.__default: ClassName;

// function declaration for GenericPick._default.SetPick0
function GenericPick.__default.SetPick0(GenericPick._default.SetPick0$U: Ty, s#0: Set) : Box;

function GenericPick.__default.SetPick0#canCall(GenericPick._default.SetPick0$U: Ty, s#0: Set) : bool;

// consequence axiom for GenericPick.__default.SetPick0
axiom (forall GenericPick._default.SetPick0$U: Ty, s#0: Set :: 
  { GenericPick.__default.SetPick0(GenericPick._default.SetPick0$U, s#0) } 
  GenericPick.__default.SetPick0#canCall(GenericPick._default.SetPick0$U, s#0)
       || ($Is(s#0, TSet(GenericPick._default.SetPick0$U))
         && !Set#Equal(s#0, Set#Empty(): Set))
     ==> $IsBox(GenericPick.__default.SetPick0(GenericPick._default.SetPick0$U, s#0), 
      GenericPick._default.SetPick0$U));

// alloc consequence axiom for GenericPick.__default.SetPick0
axiom (forall $Heap: Heap, GenericPick._default.SetPick0$U: Ty, s#0: Set :: 
  { $IsAllocBox(GenericPick.__default.SetPick0(GenericPick._default.SetPick0$U, s#0), 
      GenericPick._default.SetPick0$U, 
      $Heap) } 
  (GenericPick.__default.SetPick0#canCall(GenericPick._default.SetPick0$U, s#0)
         || (
          $Is(s#0, TSet(GenericPick._default.SetPick0$U))
           && $IsAlloc(s#0, TSet(GenericPick._default.SetPick0$U), $Heap)
           && !Set#Equal(s#0, Set#Empty(): Set)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(GenericPick.__default.SetPick0(GenericPick._default.SetPick0$U, s#0), 
      GenericPick._default.SetPick0$U, 
      $Heap));

function GenericPick.__default.SetPick0#requires(Ty, Set) : bool;

// #requires axiom for GenericPick.__default.SetPick0
axiom (forall GenericPick._default.SetPick0$U: Ty, $Heap: Heap, s#0: Set :: 
  { GenericPick.__default.SetPick0#requires(GenericPick._default.SetPick0$U, s#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(s#0, TSet(GenericPick._default.SetPick0$U))
     ==> GenericPick.__default.SetPick0#requires(GenericPick._default.SetPick0$U, s#0)
       == !Set#Equal(s#0, Set#Empty(): Set));

function $let#14_x(GenericPick._default.SetPick0$U: Ty, s: Set) : Box;

function $let#14$canCall(GenericPick._default.SetPick0$U: Ty, s: Set) : bool;

axiom (forall GenericPick._default.SetPick0$U: Ty, s: Set :: 
  { $let#14_x(GenericPick._default.SetPick0$U, s) } 
  $let#14$canCall(GenericPick._default.SetPick0$U, s)
     ==> Set#IsMember(s, $let#14_x(GenericPick._default.SetPick0$U, s)));

// definition axiom for GenericPick.__default.SetPick0 (revealed)
axiom {:id "id913"} (forall GenericPick._default.SetPick0$U: Ty, $Heap: Heap, s#0: Set :: 
  { GenericPick.__default.SetPick0(GenericPick._default.SetPick0$U, s#0), $IsGoodHeap($Heap) } 
  GenericPick.__default.SetPick0#canCall(GenericPick._default.SetPick0$U, s#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TSet(GenericPick._default.SetPick0$U))
         && !Set#Equal(s#0, Set#Empty(): Set))
     ==> $let#14$canCall(GenericPick._default.SetPick0$U, s#0)
       && GenericPick.__default.SetPick0(GenericPick._default.SetPick0$U, s#0)
         == (var x#4 := $let#14_x(GenericPick._default.SetPick0$U, s#0); x#4));

// definition axiom for GenericPick.__default.SetPick0 for all literals (revealed)
axiom {:id "id914"} (forall GenericPick._default.SetPick0$U: Ty, $Heap: Heap, s#0: Set :: 
  {:weight 3} { GenericPick.__default.SetPick0(GenericPick._default.SetPick0$U, Lit(s#0)), $IsGoodHeap($Heap) } 
  GenericPick.__default.SetPick0#canCall(GenericPick._default.SetPick0$U, Lit(s#0))
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TSet(GenericPick._default.SetPick0$U))
         && !Set#Equal(s#0, Set#Empty(): Set))
     ==> $let#14$canCall(GenericPick._default.SetPick0$U, Lit(s#0))
       && GenericPick.__default.SetPick0(GenericPick._default.SetPick0$U, Lit(s#0))
         == (var x#5 := $let#14_x(GenericPick._default.SetPick0$U, Lit(s#0)); x#5));

// function declaration for GenericPick._default.SetPick1
function GenericPick.__default.SetPick1(GenericPick._default.SetPick1$U: Ty, s#0: Set) : Box;

function GenericPick.__default.SetPick1#canCall(GenericPick._default.SetPick1$U: Ty, s#0: Set) : bool;

// consequence axiom for GenericPick.__default.SetPick1
axiom (forall GenericPick._default.SetPick1$U: Ty, s#0: Set :: 
  { GenericPick.__default.SetPick1(GenericPick._default.SetPick1$U, s#0) } 
  GenericPick.__default.SetPick1#canCall(GenericPick._default.SetPick1$U, s#0)
       || ($Is(s#0, TSet(GenericPick._default.SetPick1$U)) && Set#Card(s#0) != 0)
     ==> $IsBox(GenericPick.__default.SetPick1(GenericPick._default.SetPick1$U, s#0), 
      GenericPick._default.SetPick1$U));

// alloc consequence axiom for GenericPick.__default.SetPick1
axiom (forall $Heap: Heap, GenericPick._default.SetPick1$U: Ty, s#0: Set :: 
  { $IsAllocBox(GenericPick.__default.SetPick1(GenericPick._default.SetPick1$U, s#0), 
      GenericPick._default.SetPick1$U, 
      $Heap) } 
  (GenericPick.__default.SetPick1#canCall(GenericPick._default.SetPick1$U, s#0)
         || (
          $Is(s#0, TSet(GenericPick._default.SetPick1$U))
           && $IsAlloc(s#0, TSet(GenericPick._default.SetPick1$U), $Heap)
           && Set#Card(s#0) != 0))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(GenericPick.__default.SetPick1(GenericPick._default.SetPick1$U, s#0), 
      GenericPick._default.SetPick1$U, 
      $Heap));

function GenericPick.__default.SetPick1#requires(Ty, Set) : bool;

// #requires axiom for GenericPick.__default.SetPick1
axiom (forall GenericPick._default.SetPick1$U: Ty, $Heap: Heap, s#0: Set :: 
  { GenericPick.__default.SetPick1#requires(GenericPick._default.SetPick1$U, s#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(s#0, TSet(GenericPick._default.SetPick1$U))
     ==> GenericPick.__default.SetPick1#requires(GenericPick._default.SetPick1$U, s#0)
       == (Set#Card(s#0) != 0));

function $let#17_x(GenericPick._default.SetPick1$U: Ty, s: Set) : Box;

function $let#17$canCall(GenericPick._default.SetPick1$U: Ty, s: Set) : bool;

axiom (forall GenericPick._default.SetPick1$U: Ty, s: Set :: 
  { $let#17_x(GenericPick._default.SetPick1$U, s) } 
  $let#17$canCall(GenericPick._default.SetPick1$U, s)
     ==> Set#IsMember(s, $let#17_x(GenericPick._default.SetPick1$U, s)));

// definition axiom for GenericPick.__default.SetPick1 (revealed)
axiom {:id "id915"} (forall GenericPick._default.SetPick1$U: Ty, $Heap: Heap, s#0: Set :: 
  { GenericPick.__default.SetPick1(GenericPick._default.SetPick1$U, s#0), $IsGoodHeap($Heap) } 
  GenericPick.__default.SetPick1#canCall(GenericPick._default.SetPick1$U, s#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TSet(GenericPick._default.SetPick1$U))
         && Set#Card(s#0) != 0)
     ==> $let#17$canCall(GenericPick._default.SetPick1$U, s#0)
       && GenericPick.__default.SetPick1(GenericPick._default.SetPick1$U, s#0)
         == (var x#4 := $let#17_x(GenericPick._default.SetPick1$U, s#0); x#4));

// definition axiom for GenericPick.__default.SetPick1 for all literals (revealed)
axiom {:id "id916"} (forall GenericPick._default.SetPick1$U: Ty, $Heap: Heap, s#0: Set :: 
  {:weight 3} { GenericPick.__default.SetPick1(GenericPick._default.SetPick1$U, Lit(s#0)), $IsGoodHeap($Heap) } 
  GenericPick.__default.SetPick1#canCall(GenericPick._default.SetPick1$U, Lit(s#0))
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TSet(GenericPick._default.SetPick1$U))
         && Set#Card(Lit(s#0)) != 0)
     ==> $let#17$canCall(GenericPick._default.SetPick1$U, Lit(s#0))
       && GenericPick.__default.SetPick1(GenericPick._default.SetPick1$U, Lit(s#0))
         == (var x#5 := $let#17_x(GenericPick._default.SetPick1$U, Lit(s#0)); x#5));

// function declaration for GenericPick._default.SetPick2
function GenericPick.__default.SetPick2(GenericPick._default.SetPick2$U: Ty, s#0: Set) : Box;

function GenericPick.__default.SetPick2#canCall(GenericPick._default.SetPick2$U: Ty, s#0: Set) : bool;

// consequence axiom for GenericPick.__default.SetPick2
axiom (forall GenericPick._default.SetPick2$U: Ty, s#0: Set :: 
  { GenericPick.__default.SetPick2(GenericPick._default.SetPick2$U, s#0) } 
  GenericPick.__default.SetPick2#canCall(GenericPick._default.SetPick2$U, s#0)
       || ($Is(s#0, TSet(GenericPick._default.SetPick2$U))
         && (exists x#0: Box :: 
          { Set#IsMember(s#0, x#0) } 
          $IsBox(x#0, GenericPick._default.SetPick2$U) && Set#IsMember(s#0, x#0)))
     ==> $IsBox(GenericPick.__default.SetPick2(GenericPick._default.SetPick2$U, s#0), 
      GenericPick._default.SetPick2$U));

// alloc consequence axiom for GenericPick.__default.SetPick2
axiom (forall $Heap: Heap, GenericPick._default.SetPick2$U: Ty, s#0: Set :: 
  { $IsAllocBox(GenericPick.__default.SetPick2(GenericPick._default.SetPick2$U, s#0), 
      GenericPick._default.SetPick2$U, 
      $Heap) } 
  (GenericPick.__default.SetPick2#canCall(GenericPick._default.SetPick2$U, s#0)
         || (
          $Is(s#0, TSet(GenericPick._default.SetPick2$U))
           && $IsAlloc(s#0, TSet(GenericPick._default.SetPick2$U), $Heap)
           && (exists x#0: Box :: 
            { Set#IsMember(s#0, x#0) } 
            $IsBox(x#0, GenericPick._default.SetPick2$U) && Set#IsMember(s#0, x#0))))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(GenericPick.__default.SetPick2(GenericPick._default.SetPick2$U, s#0), 
      GenericPick._default.SetPick2$U, 
      $Heap));

function GenericPick.__default.SetPick2#requires(Ty, Set) : bool;

// #requires axiom for GenericPick.__default.SetPick2
axiom (forall GenericPick._default.SetPick2$U: Ty, $Heap: Heap, s#0: Set :: 
  { GenericPick.__default.SetPick2#requires(GenericPick._default.SetPick2$U, s#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(s#0, TSet(GenericPick._default.SetPick2$U))
     ==> GenericPick.__default.SetPick2#requires(GenericPick._default.SetPick2$U, s#0)
       == (exists x#8: Box :: 
        { Set#IsMember(s#0, x#8) } 
        $IsBox(x#8, GenericPick._default.SetPick2$U) && Set#IsMember(s#0, x#8)));

function $let#20_x(GenericPick._default.SetPick2$U: Ty, s: Set) : Box;

function $let#20$canCall(GenericPick._default.SetPick2$U: Ty, s: Set) : bool;

axiom (forall GenericPick._default.SetPick2$U: Ty, s: Set :: 
  { $let#20_x(GenericPick._default.SetPick2$U, s) } 
  $let#20$canCall(GenericPick._default.SetPick2$U, s)
     ==> Set#IsMember(s, $let#20_x(GenericPick._default.SetPick2$U, s)));

// definition axiom for GenericPick.__default.SetPick2 (revealed)
axiom {:id "id917"} (forall GenericPick._default.SetPick2$U: Ty, $Heap: Heap, s#0: Set :: 
  { GenericPick.__default.SetPick2(GenericPick._default.SetPick2$U, s#0), $IsGoodHeap($Heap) } 
  GenericPick.__default.SetPick2#canCall(GenericPick._default.SetPick2$U, s#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TSet(GenericPick._default.SetPick2$U))
         && (exists x#8: Box :: 
          { Set#IsMember(s#0, x#8) } 
          $IsBox(x#8, GenericPick._default.SetPick2$U) && Set#IsMember(s#0, x#8)))
     ==> $let#20$canCall(GenericPick._default.SetPick2$U, s#0)
       && GenericPick.__default.SetPick2(GenericPick._default.SetPick2$U, s#0)
         == (var x#9 := $let#20_x(GenericPick._default.SetPick2$U, s#0); x#9));

// definition axiom for GenericPick.__default.SetPick2 for all literals (revealed)
axiom {:id "id918"} (forall GenericPick._default.SetPick2$U: Ty, $Heap: Heap, s#0: Set :: 
  {:weight 3} { GenericPick.__default.SetPick2(GenericPick._default.SetPick2$U, Lit(s#0)), $IsGoodHeap($Heap) } 
  GenericPick.__default.SetPick2#canCall(GenericPick._default.SetPick2$U, Lit(s#0))
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TSet(GenericPick._default.SetPick2$U))
         && (exists x#10: Box :: 
          { Set#IsMember(s#0, x#10) } 
          $IsBox(x#10, GenericPick._default.SetPick2$U) && Set#IsMember(Lit(s#0), x#10)))
     ==> $let#20$canCall(GenericPick._default.SetPick2$U, Lit(s#0))
       && GenericPick.__default.SetPick2(GenericPick._default.SetPick2$U, Lit(s#0))
         == (var x#11 := $let#20_x(GenericPick._default.SetPick2$U, Lit(s#0)); x#11));

// function declaration for GenericPick._default.MultisetPick0
function GenericPick.__default.MultisetPick0(GenericPick._default.MultisetPick0$U: Ty, s#0: MultiSet) : Box;

function GenericPick.__default.MultisetPick0#canCall(GenericPick._default.MultisetPick0$U: Ty, s#0: MultiSet) : bool;

// consequence axiom for GenericPick.__default.MultisetPick0
axiom (forall GenericPick._default.MultisetPick0$U: Ty, s#0: MultiSet :: 
  { GenericPick.__default.MultisetPick0(GenericPick._default.MultisetPick0$U, s#0) } 
  GenericPick.__default.MultisetPick0#canCall(GenericPick._default.MultisetPick0$U, s#0)
       || ($Is(s#0, TMultiSet(GenericPick._default.MultisetPick0$U))
         && !MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet))
     ==> $IsBox(GenericPick.__default.MultisetPick0(GenericPick._default.MultisetPick0$U, s#0), 
      GenericPick._default.MultisetPick0$U));

// alloc consequence axiom for GenericPick.__default.MultisetPick0
axiom (forall $Heap: Heap, GenericPick._default.MultisetPick0$U: Ty, s#0: MultiSet :: 
  { $IsAllocBox(GenericPick.__default.MultisetPick0(GenericPick._default.MultisetPick0$U, s#0), 
      GenericPick._default.MultisetPick0$U, 
      $Heap) } 
  (GenericPick.__default.MultisetPick0#canCall(GenericPick._default.MultisetPick0$U, s#0)
         || (
          $Is(s#0, TMultiSet(GenericPick._default.MultisetPick0$U))
           && $IsAlloc(s#0, TMultiSet(GenericPick._default.MultisetPick0$U), $Heap)
           && !MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(GenericPick.__default.MultisetPick0(GenericPick._default.MultisetPick0$U, s#0), 
      GenericPick._default.MultisetPick0$U, 
      $Heap));

function GenericPick.__default.MultisetPick0#requires(Ty, MultiSet) : bool;

// #requires axiom for GenericPick.__default.MultisetPick0
axiom (forall GenericPick._default.MultisetPick0$U: Ty, $Heap: Heap, s#0: MultiSet :: 
  { GenericPick.__default.MultisetPick0#requires(GenericPick._default.MultisetPick0$U, s#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(s#0, TMultiSet(GenericPick._default.MultisetPick0$U))
     ==> GenericPick.__default.MultisetPick0#requires(GenericPick._default.MultisetPick0$U, s#0)
       == !MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet));

function $let#23_x(GenericPick._default.MultisetPick0$U: Ty, s: MultiSet) : Box;

function $let#23$canCall(GenericPick._default.MultisetPick0$U: Ty, s: MultiSet) : bool;

axiom (forall GenericPick._default.MultisetPick0$U: Ty, s: MultiSet :: 
  { $let#23_x(GenericPick._default.MultisetPick0$U, s) } 
  $let#23$canCall(GenericPick._default.MultisetPick0$U, s)
     ==> MultiSet#Multiplicity(s, $let#23_x(GenericPick._default.MultisetPick0$U, s)) > 0);

// definition axiom for GenericPick.__default.MultisetPick0 (revealed)
axiom {:id "id919"} (forall GenericPick._default.MultisetPick0$U: Ty, $Heap: Heap, s#0: MultiSet :: 
  { GenericPick.__default.MultisetPick0(GenericPick._default.MultisetPick0$U, s#0), $IsGoodHeap($Heap) } 
  GenericPick.__default.MultisetPick0#canCall(GenericPick._default.MultisetPick0$U, s#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TMultiSet(GenericPick._default.MultisetPick0$U))
         && !MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet))
     ==> $let#23$canCall(GenericPick._default.MultisetPick0$U, s#0)
       && GenericPick.__default.MultisetPick0(GenericPick._default.MultisetPick0$U, s#0)
         == (var x#4 := $let#23_x(GenericPick._default.MultisetPick0$U, s#0); x#4));

// definition axiom for GenericPick.__default.MultisetPick0 for all literals (revealed)
axiom {:id "id920"} (forall GenericPick._default.MultisetPick0$U: Ty, $Heap: Heap, s#0: MultiSet :: 
  {:weight 3} { GenericPick.__default.MultisetPick0(GenericPick._default.MultisetPick0$U, Lit(s#0)), $IsGoodHeap($Heap) } 
  GenericPick.__default.MultisetPick0#canCall(GenericPick._default.MultisetPick0$U, Lit(s#0))
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TMultiSet(GenericPick._default.MultisetPick0$U))
         && !MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet))
     ==> $let#23$canCall(GenericPick._default.MultisetPick0$U, Lit(s#0))
       && GenericPick.__default.MultisetPick0(GenericPick._default.MultisetPick0$U, Lit(s#0))
         == (var x#5 := $let#23_x(GenericPick._default.MultisetPick0$U, Lit(s#0)); x#5));

// function declaration for GenericPick._default.MultisetPick1
function GenericPick.__default.MultisetPick1(GenericPick._default.MultisetPick1$U: Ty, s#0: MultiSet) : Box;

function GenericPick.__default.MultisetPick1#canCall(GenericPick._default.MultisetPick1$U: Ty, s#0: MultiSet) : bool;

// consequence axiom for GenericPick.__default.MultisetPick1
axiom (forall GenericPick._default.MultisetPick1$U: Ty, s#0: MultiSet :: 
  { GenericPick.__default.MultisetPick1(GenericPick._default.MultisetPick1$U, s#0) } 
  GenericPick.__default.MultisetPick1#canCall(GenericPick._default.MultisetPick1$U, s#0)
       || ($Is(s#0, TMultiSet(GenericPick._default.MultisetPick1$U))
         && MultiSet#Card(s#0) != 0)
     ==> $IsBox(GenericPick.__default.MultisetPick1(GenericPick._default.MultisetPick1$U, s#0), 
      GenericPick._default.MultisetPick1$U));

// alloc consequence axiom for GenericPick.__default.MultisetPick1
axiom (forall $Heap: Heap, GenericPick._default.MultisetPick1$U: Ty, s#0: MultiSet :: 
  { $IsAllocBox(GenericPick.__default.MultisetPick1(GenericPick._default.MultisetPick1$U, s#0), 
      GenericPick._default.MultisetPick1$U, 
      $Heap) } 
  (GenericPick.__default.MultisetPick1#canCall(GenericPick._default.MultisetPick1$U, s#0)
         || (
          $Is(s#0, TMultiSet(GenericPick._default.MultisetPick1$U))
           && $IsAlloc(s#0, TMultiSet(GenericPick._default.MultisetPick1$U), $Heap)
           && MultiSet#Card(s#0) != 0))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(GenericPick.__default.MultisetPick1(GenericPick._default.MultisetPick1$U, s#0), 
      GenericPick._default.MultisetPick1$U, 
      $Heap));

function GenericPick.__default.MultisetPick1#requires(Ty, MultiSet) : bool;

// #requires axiom for GenericPick.__default.MultisetPick1
axiom (forall GenericPick._default.MultisetPick1$U: Ty, $Heap: Heap, s#0: MultiSet :: 
  { GenericPick.__default.MultisetPick1#requires(GenericPick._default.MultisetPick1$U, s#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(s#0, TMultiSet(GenericPick._default.MultisetPick1$U))
     ==> GenericPick.__default.MultisetPick1#requires(GenericPick._default.MultisetPick1$U, s#0)
       == (MultiSet#Card(s#0) != 0));

function $let#26_x(GenericPick._default.MultisetPick1$U: Ty, s: MultiSet) : Box;

function $let#26$canCall(GenericPick._default.MultisetPick1$U: Ty, s: MultiSet) : bool;

axiom (forall GenericPick._default.MultisetPick1$U: Ty, s: MultiSet :: 
  { $let#26_x(GenericPick._default.MultisetPick1$U, s) } 
  $let#26$canCall(GenericPick._default.MultisetPick1$U, s)
     ==> MultiSet#Multiplicity(s, $let#26_x(GenericPick._default.MultisetPick1$U, s)) > 0);

// definition axiom for GenericPick.__default.MultisetPick1 (revealed)
axiom {:id "id921"} (forall GenericPick._default.MultisetPick1$U: Ty, $Heap: Heap, s#0: MultiSet :: 
  { GenericPick.__default.MultisetPick1(GenericPick._default.MultisetPick1$U, s#0), $IsGoodHeap($Heap) } 
  GenericPick.__default.MultisetPick1#canCall(GenericPick._default.MultisetPick1$U, s#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TMultiSet(GenericPick._default.MultisetPick1$U))
         && MultiSet#Card(s#0) != 0)
     ==> $let#26$canCall(GenericPick._default.MultisetPick1$U, s#0)
       && GenericPick.__default.MultisetPick1(GenericPick._default.MultisetPick1$U, s#0)
         == (var x#4 := $let#26_x(GenericPick._default.MultisetPick1$U, s#0); x#4));

// definition axiom for GenericPick.__default.MultisetPick1 for all literals (revealed)
axiom {:id "id922"} (forall GenericPick._default.MultisetPick1$U: Ty, $Heap: Heap, s#0: MultiSet :: 
  {:weight 3} { GenericPick.__default.MultisetPick1(GenericPick._default.MultisetPick1$U, Lit(s#0)), $IsGoodHeap($Heap) } 
  GenericPick.__default.MultisetPick1#canCall(GenericPick._default.MultisetPick1$U, Lit(s#0))
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TMultiSet(GenericPick._default.MultisetPick1$U))
         && MultiSet#Card(Lit(s#0)) != 0)
     ==> $let#26$canCall(GenericPick._default.MultisetPick1$U, Lit(s#0))
       && GenericPick.__default.MultisetPick1(GenericPick._default.MultisetPick1$U, Lit(s#0))
         == (var x#5 := $let#26_x(GenericPick._default.MultisetPick1$U, Lit(s#0)); x#5));

// function declaration for GenericPick._default.MultisetPick2
function GenericPick.__default.MultisetPick2(GenericPick._default.MultisetPick2$U: Ty, s#0: MultiSet) : Box;

function GenericPick.__default.MultisetPick2#canCall(GenericPick._default.MultisetPick2$U: Ty, s#0: MultiSet) : bool;

// consequence axiom for GenericPick.__default.MultisetPick2
axiom (forall GenericPick._default.MultisetPick2$U: Ty, s#0: MultiSet :: 
  { GenericPick.__default.MultisetPick2(GenericPick._default.MultisetPick2$U, s#0) } 
  GenericPick.__default.MultisetPick2#canCall(GenericPick._default.MultisetPick2$U, s#0)
       || ($Is(s#0, TMultiSet(GenericPick._default.MultisetPick2$U))
         && (exists x#0: Box :: 
          { MultiSet#Multiplicity(s#0, x#0) } 
          $IsBox(x#0, GenericPick._default.MultisetPick2$U)
             && MultiSet#Multiplicity(s#0, x#0) > 0))
     ==> $IsBox(GenericPick.__default.MultisetPick2(GenericPick._default.MultisetPick2$U, s#0), 
      GenericPick._default.MultisetPick2$U));

// alloc consequence axiom for GenericPick.__default.MultisetPick2
axiom (forall $Heap: Heap, GenericPick._default.MultisetPick2$U: Ty, s#0: MultiSet :: 
  { $IsAllocBox(GenericPick.__default.MultisetPick2(GenericPick._default.MultisetPick2$U, s#0), 
      GenericPick._default.MultisetPick2$U, 
      $Heap) } 
  (GenericPick.__default.MultisetPick2#canCall(GenericPick._default.MultisetPick2$U, s#0)
         || (
          $Is(s#0, TMultiSet(GenericPick._default.MultisetPick2$U))
           && $IsAlloc(s#0, TMultiSet(GenericPick._default.MultisetPick2$U), $Heap)
           && (exists x#0: Box :: 
            { MultiSet#Multiplicity(s#0, x#0) } 
            $IsBox(x#0, GenericPick._default.MultisetPick2$U)
               && MultiSet#Multiplicity(s#0, x#0) > 0)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(GenericPick.__default.MultisetPick2(GenericPick._default.MultisetPick2$U, s#0), 
      GenericPick._default.MultisetPick2$U, 
      $Heap));

function GenericPick.__default.MultisetPick2#requires(Ty, MultiSet) : bool;

// #requires axiom for GenericPick.__default.MultisetPick2
axiom (forall GenericPick._default.MultisetPick2$U: Ty, $Heap: Heap, s#0: MultiSet :: 
  { GenericPick.__default.MultisetPick2#requires(GenericPick._default.MultisetPick2$U, s#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(s#0, TMultiSet(GenericPick._default.MultisetPick2$U))
     ==> GenericPick.__default.MultisetPick2#requires(GenericPick._default.MultisetPick2$U, s#0)
       == (exists x#8: Box :: 
        { MultiSet#Multiplicity(s#0, x#8) } 
        $IsBox(x#8, GenericPick._default.MultisetPick2$U)
           && MultiSet#Multiplicity(s#0, x#8) > 0));

function $let#29_x(GenericPick._default.MultisetPick2$U: Ty, s: MultiSet) : Box;

function $let#29$canCall(GenericPick._default.MultisetPick2$U: Ty, s: MultiSet) : bool;

axiom (forall GenericPick._default.MultisetPick2$U: Ty, s: MultiSet :: 
  { $let#29_x(GenericPick._default.MultisetPick2$U, s) } 
  $let#29$canCall(GenericPick._default.MultisetPick2$U, s)
     ==> MultiSet#Multiplicity(s, $let#29_x(GenericPick._default.MultisetPick2$U, s)) > 0);

// definition axiom for GenericPick.__default.MultisetPick2 (revealed)
axiom {:id "id923"} (forall GenericPick._default.MultisetPick2$U: Ty, $Heap: Heap, s#0: MultiSet :: 
  { GenericPick.__default.MultisetPick2(GenericPick._default.MultisetPick2$U, s#0), $IsGoodHeap($Heap) } 
  GenericPick.__default.MultisetPick2#canCall(GenericPick._default.MultisetPick2$U, s#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TMultiSet(GenericPick._default.MultisetPick2$U))
         && (exists x#8: Box :: 
          { MultiSet#Multiplicity(s#0, x#8) } 
          $IsBox(x#8, GenericPick._default.MultisetPick2$U)
             && MultiSet#Multiplicity(s#0, x#8) > 0))
     ==> $let#29$canCall(GenericPick._default.MultisetPick2$U, s#0)
       && GenericPick.__default.MultisetPick2(GenericPick._default.MultisetPick2$U, s#0)
         == (var x#9 := $let#29_x(GenericPick._default.MultisetPick2$U, s#0); x#9));

// definition axiom for GenericPick.__default.MultisetPick2 for all literals (revealed)
axiom {:id "id924"} (forall GenericPick._default.MultisetPick2$U: Ty, $Heap: Heap, s#0: MultiSet :: 
  {:weight 3} { GenericPick.__default.MultisetPick2(GenericPick._default.MultisetPick2$U, Lit(s#0)), $IsGoodHeap($Heap) } 
  GenericPick.__default.MultisetPick2#canCall(GenericPick._default.MultisetPick2$U, Lit(s#0))
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TMultiSet(GenericPick._default.MultisetPick2$U))
         && (exists x#10: Box :: 
          { MultiSet#Multiplicity(s#0, x#10) } 
          $IsBox(x#10, GenericPick._default.MultisetPick2$U)
             && MultiSet#Multiplicity(Lit(s#0), x#10) > 0))
     ==> $let#29$canCall(GenericPick._default.MultisetPick2$U, Lit(s#0))
       && GenericPick.__default.MultisetPick2(GenericPick._default.MultisetPick2$U, Lit(s#0))
         == (var x#11 := $let#29_x(GenericPick._default.MultisetPick2$U, Lit(s#0)); x#11));

// function declaration for GenericPick._default.MultisetPick3
function GenericPick.__default.MultisetPick3(GenericPick._default.MultisetPick3$U: Ty, s#0: MultiSet) : Box;

function GenericPick.__default.MultisetPick3#canCall(GenericPick._default.MultisetPick3$U: Ty, s#0: MultiSet) : bool;

// consequence axiom for GenericPick.__default.MultisetPick3
axiom (forall GenericPick._default.MultisetPick3$U: Ty, s#0: MultiSet :: 
  { GenericPick.__default.MultisetPick3(GenericPick._default.MultisetPick3$U, s#0) } 
  GenericPick.__default.MultisetPick3#canCall(GenericPick._default.MultisetPick3$U, s#0)
       || ($Is(s#0, TMultiSet(GenericPick._default.MultisetPick3$U))
         && (exists x#0: Box :: 
          { MultiSet#Multiplicity(s#0, x#0) } 
          $IsBox(x#0, GenericPick._default.MultisetPick3$U)
             && 
            MultiSet#Multiplicity(s#0, x#0) > 0
             && MultiSet#Multiplicity(s#0, x#0) > 0))
     ==> $IsBox(GenericPick.__default.MultisetPick3(GenericPick._default.MultisetPick3$U, s#0), 
      GenericPick._default.MultisetPick3$U));

// alloc consequence axiom for GenericPick.__default.MultisetPick3
axiom (forall $Heap: Heap, GenericPick._default.MultisetPick3$U: Ty, s#0: MultiSet :: 
  { $IsAllocBox(GenericPick.__default.MultisetPick3(GenericPick._default.MultisetPick3$U, s#0), 
      GenericPick._default.MultisetPick3$U, 
      $Heap) } 
  (GenericPick.__default.MultisetPick3#canCall(GenericPick._default.MultisetPick3$U, s#0)
         || (
          $Is(s#0, TMultiSet(GenericPick._default.MultisetPick3$U))
           && $IsAlloc(s#0, TMultiSet(GenericPick._default.MultisetPick3$U), $Heap)
           && (exists x#0: Box :: 
            { MultiSet#Multiplicity(s#0, x#0) } 
            $IsBox(x#0, GenericPick._default.MultisetPick3$U)
               && 
              MultiSet#Multiplicity(s#0, x#0) > 0
               && MultiSet#Multiplicity(s#0, x#0) > 0)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(GenericPick.__default.MultisetPick3(GenericPick._default.MultisetPick3$U, s#0), 
      GenericPick._default.MultisetPick3$U, 
      $Heap));

function GenericPick.__default.MultisetPick3#requires(Ty, MultiSet) : bool;

// #requires axiom for GenericPick.__default.MultisetPick3
axiom (forall GenericPick._default.MultisetPick3$U: Ty, $Heap: Heap, s#0: MultiSet :: 
  { GenericPick.__default.MultisetPick3#requires(GenericPick._default.MultisetPick3$U, s#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(s#0, TMultiSet(GenericPick._default.MultisetPick3$U))
     ==> GenericPick.__default.MultisetPick3#requires(GenericPick._default.MultisetPick3$U, s#0)
       == (exists x#8: Box :: 
        { MultiSet#Multiplicity(s#0, x#8) } 
        $IsBox(x#8, GenericPick._default.MultisetPick3$U)
           && 
          MultiSet#Multiplicity(s#0, x#8) > 0
           && MultiSet#Multiplicity(s#0, x#8) > 0));

function $let#32_x(GenericPick._default.MultisetPick3$U: Ty, s: MultiSet) : Box;

function $let#32$canCall(GenericPick._default.MultisetPick3$U: Ty, s: MultiSet) : bool;

axiom (forall GenericPick._default.MultisetPick3$U: Ty, s: MultiSet :: 
  { $let#32_x(GenericPick._default.MultisetPick3$U, s) } 
  $let#32$canCall(GenericPick._default.MultisetPick3$U, s)
     ==> MultiSet#Multiplicity(s, $let#32_x(GenericPick._default.MultisetPick3$U, s)) > 0);

// definition axiom for GenericPick.__default.MultisetPick3 (revealed)
axiom {:id "id925"} (forall GenericPick._default.MultisetPick3$U: Ty, $Heap: Heap, s#0: MultiSet :: 
  { GenericPick.__default.MultisetPick3(GenericPick._default.MultisetPick3$U, s#0), $IsGoodHeap($Heap) } 
  GenericPick.__default.MultisetPick3#canCall(GenericPick._default.MultisetPick3$U, s#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TMultiSet(GenericPick._default.MultisetPick3$U))
         && (exists x#8: Box :: 
          { MultiSet#Multiplicity(s#0, x#8) } 
          $IsBox(x#8, GenericPick._default.MultisetPick3$U)
             && 
            MultiSet#Multiplicity(s#0, x#8) > 0
             && MultiSet#Multiplicity(s#0, x#8) > 0))
     ==> $let#32$canCall(GenericPick._default.MultisetPick3$U, s#0)
       && GenericPick.__default.MultisetPick3(GenericPick._default.MultisetPick3$U, s#0)
         == (var x#9 := $let#32_x(GenericPick._default.MultisetPick3$U, s#0); x#9));

// definition axiom for GenericPick.__default.MultisetPick3 for all literals (revealed)
axiom {:id "id926"} (forall GenericPick._default.MultisetPick3$U: Ty, $Heap: Heap, s#0: MultiSet :: 
  {:weight 3} { GenericPick.__default.MultisetPick3(GenericPick._default.MultisetPick3$U, Lit(s#0)), $IsGoodHeap($Heap) } 
  GenericPick.__default.MultisetPick3#canCall(GenericPick._default.MultisetPick3$U, Lit(s#0))
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TMultiSet(GenericPick._default.MultisetPick3$U))
         && (exists x#10: Box :: 
          { MultiSet#Multiplicity(s#0, x#10) } 
          $IsBox(x#10, GenericPick._default.MultisetPick3$U)
             && 
            MultiSet#Multiplicity(Lit(s#0), x#10) > 0
             && MultiSet#Multiplicity(Lit(s#0), x#10) > 0))
     ==> $let#32$canCall(GenericPick._default.MultisetPick3$U, Lit(s#0))
       && GenericPick.__default.MultisetPick3(GenericPick._default.MultisetPick3$U, Lit(s#0))
         == (var x#11 := $let#32_x(GenericPick._default.MultisetPick3$U, Lit(s#0)); x#11));

// function declaration for GenericPick._default.SeqPick0
function GenericPick.__default.SeqPick0(GenericPick._default.SeqPick0$U: Ty, s#0: Seq) : Box;

function GenericPick.__default.SeqPick0#canCall(GenericPick._default.SeqPick0$U: Ty, s#0: Seq) : bool;

// consequence axiom for GenericPick.__default.SeqPick0
axiom (forall GenericPick._default.SeqPick0$U: Ty, s#0: Seq :: 
  { GenericPick.__default.SeqPick0(GenericPick._default.SeqPick0$U, s#0) } 
  GenericPick.__default.SeqPick0#canCall(GenericPick._default.SeqPick0$U, s#0)
       || ($Is(s#0, TSeq(GenericPick._default.SeqPick0$U))
         && !Seq#Equal(s#0, Seq#Empty(): Seq))
     ==> $IsBox(GenericPick.__default.SeqPick0(GenericPick._default.SeqPick0$U, s#0), 
      GenericPick._default.SeqPick0$U));

// alloc consequence axiom for GenericPick.__default.SeqPick0
axiom (forall $Heap: Heap, GenericPick._default.SeqPick0$U: Ty, s#0: Seq :: 
  { $IsAllocBox(GenericPick.__default.SeqPick0(GenericPick._default.SeqPick0$U, s#0), 
      GenericPick._default.SeqPick0$U, 
      $Heap) } 
  (GenericPick.__default.SeqPick0#canCall(GenericPick._default.SeqPick0$U, s#0)
         || (
          $Is(s#0, TSeq(GenericPick._default.SeqPick0$U))
           && $IsAlloc(s#0, TSeq(GenericPick._default.SeqPick0$U), $Heap)
           && !Seq#Equal(s#0, Seq#Empty(): Seq)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(GenericPick.__default.SeqPick0(GenericPick._default.SeqPick0$U, s#0), 
      GenericPick._default.SeqPick0$U, 
      $Heap));

function GenericPick.__default.SeqPick0#requires(Ty, Seq) : bool;

// #requires axiom for GenericPick.__default.SeqPick0
axiom (forall GenericPick._default.SeqPick0$U: Ty, $Heap: Heap, s#0: Seq :: 
  { GenericPick.__default.SeqPick0#requires(GenericPick._default.SeqPick0$U, s#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(s#0, TSeq(GenericPick._default.SeqPick0$U))
     ==> GenericPick.__default.SeqPick0#requires(GenericPick._default.SeqPick0$U, s#0)
       == !Seq#Equal(s#0, Seq#Empty(): Seq));

function $let#35_x(GenericPick._default.SeqPick0$U: Ty, s: Seq) : Box;

function $let#35$canCall(GenericPick._default.SeqPick0$U: Ty, s: Seq) : bool;

axiom (forall GenericPick._default.SeqPick0$U: Ty, s: Seq :: 
  { $let#35_x(GenericPick._default.SeqPick0$U, s) } 
  $let#35$canCall(GenericPick._default.SeqPick0$U, s)
     ==> Seq#Contains(s, $let#35_x(GenericPick._default.SeqPick0$U, s)));

// definition axiom for GenericPick.__default.SeqPick0 (revealed)
axiom {:id "id927"} (forall GenericPick._default.SeqPick0$U: Ty, $Heap: Heap, s#0: Seq :: 
  { GenericPick.__default.SeqPick0(GenericPick._default.SeqPick0$U, s#0), $IsGoodHeap($Heap) } 
  GenericPick.__default.SeqPick0#canCall(GenericPick._default.SeqPick0$U, s#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TSeq(GenericPick._default.SeqPick0$U))
         && !Seq#Equal(s#0, Seq#Empty(): Seq))
     ==> $let#35$canCall(GenericPick._default.SeqPick0$U, s#0)
       && GenericPick.__default.SeqPick0(GenericPick._default.SeqPick0$U, s#0)
         == (var x#4 := $let#35_x(GenericPick._default.SeqPick0$U, s#0); x#4));

// definition axiom for GenericPick.__default.SeqPick0 for all literals (revealed)
axiom {:id "id928"} (forall GenericPick._default.SeqPick0$U: Ty, $Heap: Heap, s#0: Seq :: 
  {:weight 3} { GenericPick.__default.SeqPick0(GenericPick._default.SeqPick0$U, Lit(s#0)), $IsGoodHeap($Heap) } 
  GenericPick.__default.SeqPick0#canCall(GenericPick._default.SeqPick0$U, Lit(s#0))
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TSeq(GenericPick._default.SeqPick0$U))
         && !Seq#Equal(s#0, Seq#Empty(): Seq))
     ==> $let#35$canCall(GenericPick._default.SeqPick0$U, Lit(s#0))
       && GenericPick.__default.SeqPick0(GenericPick._default.SeqPick0$U, Lit(s#0))
         == (var x#5 := $let#35_x(GenericPick._default.SeqPick0$U, Lit(s#0)); x#5));

// function declaration for GenericPick._default.SeqPick1
function GenericPick.__default.SeqPick1(GenericPick._default.SeqPick1$U: Ty, s#0: Seq) : Box;

function GenericPick.__default.SeqPick1#canCall(GenericPick._default.SeqPick1$U: Ty, s#0: Seq) : bool;

// consequence axiom for GenericPick.__default.SeqPick1
axiom (forall GenericPick._default.SeqPick1$U: Ty, s#0: Seq :: 
  { GenericPick.__default.SeqPick1(GenericPick._default.SeqPick1$U, s#0) } 
  GenericPick.__default.SeqPick1#canCall(GenericPick._default.SeqPick1$U, s#0)
       || ($Is(s#0, TSeq(GenericPick._default.SeqPick1$U)) && Seq#Length(s#0) != 0)
     ==> $IsBox(GenericPick.__default.SeqPick1(GenericPick._default.SeqPick1$U, s#0), 
      GenericPick._default.SeqPick1$U));

// alloc consequence axiom for GenericPick.__default.SeqPick1
axiom (forall $Heap: Heap, GenericPick._default.SeqPick1$U: Ty, s#0: Seq :: 
  { $IsAllocBox(GenericPick.__default.SeqPick1(GenericPick._default.SeqPick1$U, s#0), 
      GenericPick._default.SeqPick1$U, 
      $Heap) } 
  (GenericPick.__default.SeqPick1#canCall(GenericPick._default.SeqPick1$U, s#0)
         || (
          $Is(s#0, TSeq(GenericPick._default.SeqPick1$U))
           && $IsAlloc(s#0, TSeq(GenericPick._default.SeqPick1$U), $Heap)
           && Seq#Length(s#0) != 0))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(GenericPick.__default.SeqPick1(GenericPick._default.SeqPick1$U, s#0), 
      GenericPick._default.SeqPick1$U, 
      $Heap));

function GenericPick.__default.SeqPick1#requires(Ty, Seq) : bool;

// #requires axiom for GenericPick.__default.SeqPick1
axiom (forall GenericPick._default.SeqPick1$U: Ty, $Heap: Heap, s#0: Seq :: 
  { GenericPick.__default.SeqPick1#requires(GenericPick._default.SeqPick1$U, s#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(s#0, TSeq(GenericPick._default.SeqPick1$U))
     ==> GenericPick.__default.SeqPick1#requires(GenericPick._default.SeqPick1$U, s#0)
       == (Seq#Length(s#0) != 0));

function $let#38_x(GenericPick._default.SeqPick1$U: Ty, s: Seq) : Box;

function $let#38$canCall(GenericPick._default.SeqPick1$U: Ty, s: Seq) : bool;

axiom (forall GenericPick._default.SeqPick1$U: Ty, s: Seq :: 
  { $let#38_x(GenericPick._default.SeqPick1$U, s) } 
  $let#38$canCall(GenericPick._default.SeqPick1$U, s)
     ==> Seq#Contains(s, $let#38_x(GenericPick._default.SeqPick1$U, s)));

// definition axiom for GenericPick.__default.SeqPick1 (revealed)
axiom {:id "id929"} (forall GenericPick._default.SeqPick1$U: Ty, $Heap: Heap, s#0: Seq :: 
  { GenericPick.__default.SeqPick1(GenericPick._default.SeqPick1$U, s#0), $IsGoodHeap($Heap) } 
  GenericPick.__default.SeqPick1#canCall(GenericPick._default.SeqPick1$U, s#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TSeq(GenericPick._default.SeqPick1$U))
         && Seq#Length(s#0) != 0)
     ==> $let#38$canCall(GenericPick._default.SeqPick1$U, s#0)
       && GenericPick.__default.SeqPick1(GenericPick._default.SeqPick1$U, s#0)
         == (var x#4 := $let#38_x(GenericPick._default.SeqPick1$U, s#0); x#4));

// definition axiom for GenericPick.__default.SeqPick1 for all literals (revealed)
axiom {:id "id930"} (forall GenericPick._default.SeqPick1$U: Ty, $Heap: Heap, s#0: Seq :: 
  {:weight 3} { GenericPick.__default.SeqPick1(GenericPick._default.SeqPick1$U, Lit(s#0)), $IsGoodHeap($Heap) } 
  GenericPick.__default.SeqPick1#canCall(GenericPick._default.SeqPick1$U, Lit(s#0))
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TSeq(GenericPick._default.SeqPick1$U))
         && Seq#Length(Lit(s#0)) != 0)
     ==> $let#38$canCall(GenericPick._default.SeqPick1$U, Lit(s#0))
       && GenericPick.__default.SeqPick1(GenericPick._default.SeqPick1$U, Lit(s#0))
         == (var x#5 := $let#38_x(GenericPick._default.SeqPick1$U, Lit(s#0)); x#5));

// function declaration for GenericPick._default.SeqPick2
function GenericPick.__default.SeqPick2(GenericPick._default.SeqPick2$U: Ty, s#0: Seq) : Box;

function GenericPick.__default.SeqPick2#canCall(GenericPick._default.SeqPick2$U: Ty, s#0: Seq) : bool;

// consequence axiom for GenericPick.__default.SeqPick2
axiom (forall GenericPick._default.SeqPick2$U: Ty, s#0: Seq :: 
  { GenericPick.__default.SeqPick2(GenericPick._default.SeqPick2$U, s#0) } 
  GenericPick.__default.SeqPick2#canCall(GenericPick._default.SeqPick2$U, s#0)
       || ($Is(s#0, TSeq(GenericPick._default.SeqPick2$U))
         && (exists x#0: Box :: 
          { Seq#Contains(s#0, x#0) } 
          $IsBox(x#0, GenericPick._default.SeqPick2$U) && Seq#Contains(s#0, x#0)))
     ==> $IsBox(GenericPick.__default.SeqPick2(GenericPick._default.SeqPick2$U, s#0), 
      GenericPick._default.SeqPick2$U));

// alloc consequence axiom for GenericPick.__default.SeqPick2
axiom (forall $Heap: Heap, GenericPick._default.SeqPick2$U: Ty, s#0: Seq :: 
  { $IsAllocBox(GenericPick.__default.SeqPick2(GenericPick._default.SeqPick2$U, s#0), 
      GenericPick._default.SeqPick2$U, 
      $Heap) } 
  (GenericPick.__default.SeqPick2#canCall(GenericPick._default.SeqPick2$U, s#0)
         || (
          $Is(s#0, TSeq(GenericPick._default.SeqPick2$U))
           && $IsAlloc(s#0, TSeq(GenericPick._default.SeqPick2$U), $Heap)
           && (exists x#0: Box :: 
            { Seq#Contains(s#0, x#0) } 
            $IsBox(x#0, GenericPick._default.SeqPick2$U) && Seq#Contains(s#0, x#0))))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(GenericPick.__default.SeqPick2(GenericPick._default.SeqPick2$U, s#0), 
      GenericPick._default.SeqPick2$U, 
      $Heap));

function GenericPick.__default.SeqPick2#requires(Ty, Seq) : bool;

// #requires axiom for GenericPick.__default.SeqPick2
axiom (forall GenericPick._default.SeqPick2$U: Ty, $Heap: Heap, s#0: Seq :: 
  { GenericPick.__default.SeqPick2#requires(GenericPick._default.SeqPick2$U, s#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(s#0, TSeq(GenericPick._default.SeqPick2$U))
     ==> GenericPick.__default.SeqPick2#requires(GenericPick._default.SeqPick2$U, s#0)
       == (exists x#8: Box :: 
        { Seq#Contains(s#0, x#8) } 
        $IsBox(x#8, GenericPick._default.SeqPick2$U) && Seq#Contains(s#0, x#8)));

function $let#41_x(GenericPick._default.SeqPick2$U: Ty, s: Seq) : Box;

function $let#41$canCall(GenericPick._default.SeqPick2$U: Ty, s: Seq) : bool;

axiom (forall GenericPick._default.SeqPick2$U: Ty, s: Seq :: 
  { $let#41_x(GenericPick._default.SeqPick2$U, s) } 
  $let#41$canCall(GenericPick._default.SeqPick2$U, s)
     ==> Seq#Contains(s, $let#41_x(GenericPick._default.SeqPick2$U, s)));

// definition axiom for GenericPick.__default.SeqPick2 (revealed)
axiom {:id "id931"} (forall GenericPick._default.SeqPick2$U: Ty, $Heap: Heap, s#0: Seq :: 
  { GenericPick.__default.SeqPick2(GenericPick._default.SeqPick2$U, s#0), $IsGoodHeap($Heap) } 
  GenericPick.__default.SeqPick2#canCall(GenericPick._default.SeqPick2$U, s#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TSeq(GenericPick._default.SeqPick2$U))
         && (exists x#8: Box :: 
          { Seq#Contains(s#0, x#8) } 
          $IsBox(x#8, GenericPick._default.SeqPick2$U) && Seq#Contains(s#0, x#8)))
     ==> $let#41$canCall(GenericPick._default.SeqPick2$U, s#0)
       && GenericPick.__default.SeqPick2(GenericPick._default.SeqPick2$U, s#0)
         == (var x#9 := $let#41_x(GenericPick._default.SeqPick2$U, s#0); x#9));

// definition axiom for GenericPick.__default.SeqPick2 for all literals (revealed)
axiom {:id "id932"} (forall GenericPick._default.SeqPick2$U: Ty, $Heap: Heap, s#0: Seq :: 
  {:weight 3} { GenericPick.__default.SeqPick2(GenericPick._default.SeqPick2$U, Lit(s#0)), $IsGoodHeap($Heap) } 
  GenericPick.__default.SeqPick2#canCall(GenericPick._default.SeqPick2$U, Lit(s#0))
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TSeq(GenericPick._default.SeqPick2$U))
         && (exists x#10: Box :: 
          { Seq#Contains(s#0, x#10) } 
          $IsBox(x#10, GenericPick._default.SeqPick2$U) && Seq#Contains(s#0, x#10)))
     ==> $let#41$canCall(GenericPick._default.SeqPick2$U, Lit(s#0))
       && GenericPick.__default.SeqPick2(GenericPick._default.SeqPick2$U, Lit(s#0))
         == (var x#11 := $let#41_x(GenericPick._default.SeqPick2$U, Lit(s#0)); x#11));

// function declaration for GenericPick._default.SeqPick3
function GenericPick.__default.SeqPick3(GenericPick._default.SeqPick3$U: Ty, s#0: Seq) : Box;

function GenericPick.__default.SeqPick3#canCall(GenericPick._default.SeqPick3$U: Ty, s#0: Seq) : bool;

// consequence axiom for GenericPick.__default.SeqPick3
axiom (forall GenericPick._default.SeqPick3$U: Ty, s#0: Seq :: 
  { GenericPick.__default.SeqPick3(GenericPick._default.SeqPick3$U, s#0) } 
  GenericPick.__default.SeqPick3#canCall(GenericPick._default.SeqPick3$U, s#0)
       || ($Is(s#0, TSeq(GenericPick._default.SeqPick3$U))
         && (exists i#0: int :: LitInt(0) <= i#0 && i#0 < Seq#Length(s#0)))
     ==> $IsBox(GenericPick.__default.SeqPick3(GenericPick._default.SeqPick3$U, s#0), 
      GenericPick._default.SeqPick3$U));

// alloc consequence axiom for GenericPick.__default.SeqPick3
axiom (forall $Heap: Heap, GenericPick._default.SeqPick3$U: Ty, s#0: Seq :: 
  { $IsAllocBox(GenericPick.__default.SeqPick3(GenericPick._default.SeqPick3$U, s#0), 
      GenericPick._default.SeqPick3$U, 
      $Heap) } 
  (GenericPick.__default.SeqPick3#canCall(GenericPick._default.SeqPick3$U, s#0)
         || (
          $Is(s#0, TSeq(GenericPick._default.SeqPick3$U))
           && $IsAlloc(s#0, TSeq(GenericPick._default.SeqPick3$U), $Heap)
           && (exists i#0: int :: LitInt(0) <= i#0 && i#0 < Seq#Length(s#0))))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(GenericPick.__default.SeqPick3(GenericPick._default.SeqPick3$U, s#0), 
      GenericPick._default.SeqPick3$U, 
      $Heap));

function GenericPick.__default.SeqPick3#requires(Ty, Seq) : bool;

// #requires axiom for GenericPick.__default.SeqPick3
axiom (forall GenericPick._default.SeqPick3$U: Ty, $Heap: Heap, s#0: Seq :: 
  { GenericPick.__default.SeqPick3#requires(GenericPick._default.SeqPick3$U, s#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(s#0, TSeq(GenericPick._default.SeqPick3$U))
     ==> GenericPick.__default.SeqPick3#requires(GenericPick._default.SeqPick3$U, s#0)
       == (exists i#4: int :: LitInt(0) <= i#4 && i#4 < Seq#Length(s#0)));

function $let#44_x(GenericPick._default.SeqPick3$U: Ty, s: Seq) : Box;

function $let#44$canCall(GenericPick._default.SeqPick3$U: Ty, s: Seq) : bool;

axiom (forall GenericPick._default.SeqPick3$U: Ty, s: Seq :: 
  { $let#44_x(GenericPick._default.SeqPick3$U, s) } 
  $let#44$canCall(GenericPick._default.SeqPick3$U, s)
     ==> Seq#Contains(s, $let#44_x(GenericPick._default.SeqPick3$U, s)));

// definition axiom for GenericPick.__default.SeqPick3 (revealed)
axiom {:id "id933"} (forall GenericPick._default.SeqPick3$U: Ty, $Heap: Heap, s#0: Seq :: 
  { GenericPick.__default.SeqPick3(GenericPick._default.SeqPick3$U, s#0), $IsGoodHeap($Heap) } 
  GenericPick.__default.SeqPick3#canCall(GenericPick._default.SeqPick3$U, s#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TSeq(GenericPick._default.SeqPick3$U))
         && (exists i#4: int :: LitInt(0) <= i#4 && i#4 < Seq#Length(s#0)))
     ==> $let#44$canCall(GenericPick._default.SeqPick3$U, s#0)
       && GenericPick.__default.SeqPick3(GenericPick._default.SeqPick3$U, s#0)
         == (var x#4 := $let#44_x(GenericPick._default.SeqPick3$U, s#0); x#4));

// definition axiom for GenericPick.__default.SeqPick3 for all literals (revealed)
axiom {:id "id934"} (forall GenericPick._default.SeqPick3$U: Ty, $Heap: Heap, s#0: Seq :: 
  {:weight 3} { GenericPick.__default.SeqPick3(GenericPick._default.SeqPick3$U, Lit(s#0)), $IsGoodHeap($Heap) } 
  GenericPick.__default.SeqPick3#canCall(GenericPick._default.SeqPick3$U, Lit(s#0))
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TSeq(GenericPick._default.SeqPick3$U))
         && (exists i#5: int :: LitInt(0) <= i#5 && i#5 < Seq#Length(Lit(s#0))))
     ==> $let#44$canCall(GenericPick._default.SeqPick3$U, Lit(s#0))
       && GenericPick.__default.SeqPick3(GenericPick._default.SeqPick3$U, Lit(s#0))
         == (var x#5 := $let#44_x(GenericPick._default.SeqPick3$U, Lit(s#0)); x#5));

// function declaration for GenericPick._default.SeqPick4
function GenericPick.__default.SeqPick4(GenericPick._default.SeqPick4$U: Ty, s#0: Seq) : Box;

function GenericPick.__default.SeqPick4#canCall(GenericPick._default.SeqPick4$U: Ty, s#0: Seq) : bool;

// consequence axiom for GenericPick.__default.SeqPick4
axiom (forall GenericPick._default.SeqPick4$U: Ty, s#0: Seq :: 
  { GenericPick.__default.SeqPick4(GenericPick._default.SeqPick4$U, s#0) } 
  GenericPick.__default.SeqPick4#canCall(GenericPick._default.SeqPick4$U, s#0)
       || ($Is(s#0, TSeq(GenericPick._default.SeqPick4$U))
         && (exists i#0: int :: LitInt(0) <= i#0 && i#0 < Seq#Length(s#0)))
     ==> $IsBox(GenericPick.__default.SeqPick4(GenericPick._default.SeqPick4$U, s#0), 
      GenericPick._default.SeqPick4$U));

// alloc consequence axiom for GenericPick.__default.SeqPick4
axiom (forall $Heap: Heap, GenericPick._default.SeqPick4$U: Ty, s#0: Seq :: 
  { $IsAllocBox(GenericPick.__default.SeqPick4(GenericPick._default.SeqPick4$U, s#0), 
      GenericPick._default.SeqPick4$U, 
      $Heap) } 
  (GenericPick.__default.SeqPick4#canCall(GenericPick._default.SeqPick4$U, s#0)
         || (
          $Is(s#0, TSeq(GenericPick._default.SeqPick4$U))
           && $IsAlloc(s#0, TSeq(GenericPick._default.SeqPick4$U), $Heap)
           && (exists i#0: int :: LitInt(0) <= i#0 && i#0 < Seq#Length(s#0))))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(GenericPick.__default.SeqPick4(GenericPick._default.SeqPick4$U, s#0), 
      GenericPick._default.SeqPick4$U, 
      $Heap));

function GenericPick.__default.SeqPick4#requires(Ty, Seq) : bool;

// #requires axiom for GenericPick.__default.SeqPick4
axiom (forall GenericPick._default.SeqPick4$U: Ty, $Heap: Heap, s#0: Seq :: 
  { GenericPick.__default.SeqPick4#requires(GenericPick._default.SeqPick4$U, s#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(s#0, TSeq(GenericPick._default.SeqPick4$U))
     ==> GenericPick.__default.SeqPick4#requires(GenericPick._default.SeqPick4$U, s#0)
       == (exists i#8: int :: LitInt(0) <= i#8 && i#8 < Seq#Length(s#0)));

function $let#47_i(GenericPick._default.SeqPick4$U: Ty, s: Seq) : int;

function $let#47$canCall(GenericPick._default.SeqPick4$U: Ty, s: Seq) : bool;

axiom (forall GenericPick._default.SeqPick4$U: Ty, s: Seq :: 
  { $let#47_i(GenericPick._default.SeqPick4$U, s) } 
  $let#47$canCall(GenericPick._default.SeqPick4$U, s)
     ==> LitInt(0) <= $let#47_i(GenericPick._default.SeqPick4$U, s)
       && $let#47_i(GenericPick._default.SeqPick4$U, s) < Seq#Length(s));

// definition axiom for GenericPick.__default.SeqPick4 (revealed)
axiom {:id "id935"} (forall GenericPick._default.SeqPick4$U: Ty, $Heap: Heap, s#0: Seq :: 
  { GenericPick.__default.SeqPick4(GenericPick._default.SeqPick4$U, s#0), $IsGoodHeap($Heap) } 
  GenericPick.__default.SeqPick4#canCall(GenericPick._default.SeqPick4$U, s#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TSeq(GenericPick._default.SeqPick4$U))
         && (exists i#8: int :: LitInt(0) <= i#8 && i#8 < Seq#Length(s#0)))
     ==> $let#47$canCall(GenericPick._default.SeqPick4$U, s#0)
       && GenericPick.__default.SeqPick4(GenericPick._default.SeqPick4$U, s#0)
         == (var i#9 := $let#47_i(GenericPick._default.SeqPick4$U, s#0); 
          Seq#Index(s#0, i#9)));

// definition axiom for GenericPick.__default.SeqPick4 for all literals (revealed)
axiom {:id "id936"} (forall GenericPick._default.SeqPick4$U: Ty, $Heap: Heap, s#0: Seq :: 
  {:weight 3} { GenericPick.__default.SeqPick4(GenericPick._default.SeqPick4$U, Lit(s#0)), $IsGoodHeap($Heap) } 
  GenericPick.__default.SeqPick4#canCall(GenericPick._default.SeqPick4$U, Lit(s#0))
       || (
        $IsGoodHeap($Heap)
         && $Is(s#0, TSeq(GenericPick._default.SeqPick4$U))
         && (exists i#10: int :: LitInt(0) <= i#10 && i#10 < Seq#Length(Lit(s#0))))
     ==> $let#47$canCall(GenericPick._default.SeqPick4$U, Lit(s#0))
       && GenericPick.__default.SeqPick4(GenericPick._default.SeqPick4$U, Lit(s#0))
         == (var i#11 := $let#47_i(GenericPick._default.SeqPick4$U, Lit(s#0)); 
          Seq#Index(Lit(s#0), i#11)));

// function declaration for GenericPick._default.MapPick0
function GenericPick.__default.MapPick0(GenericPick._default.MapPick0$U: Ty, 
    GenericPick._default.MapPick0$V: Ty, 
    m#0: Map)
   : Box;

function GenericPick.__default.MapPick0#canCall(GenericPick._default.MapPick0$U: Ty, 
    GenericPick._default.MapPick0$V: Ty, 
    m#0: Map)
   : bool;

// consequence axiom for GenericPick.__default.MapPick0
axiom (forall GenericPick._default.MapPick0$U: Ty, 
    GenericPick._default.MapPick0$V: Ty, 
    m#0: Map :: 
  { GenericPick.__default.MapPick0(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V, m#0) } 
  GenericPick.__default.MapPick0#canCall(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V, m#0)
       || ($Is(m#0, TMap(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V))
         && !Map#Equal(m#0, Map#Empty(): Map))
     ==> $IsBox(GenericPick.__default.MapPick0(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V, m#0), 
      GenericPick._default.MapPick0$U));

// alloc consequence axiom for GenericPick.__default.MapPick0
axiom (forall $Heap: Heap, 
    GenericPick._default.MapPick0$U: Ty, 
    GenericPick._default.MapPick0$V: Ty, 
    m#0: Map :: 
  { $IsAllocBox(GenericPick.__default.MapPick0(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V, m#0), 
      GenericPick._default.MapPick0$U, 
      $Heap) } 
  (GenericPick.__default.MapPick0#canCall(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V, m#0)
         || (
          $Is(m#0, TMap(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V))
           && $IsAlloc(m#0, 
            TMap(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V), 
            $Heap)
           && !Map#Equal(m#0, Map#Empty(): Map)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(GenericPick.__default.MapPick0(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V, m#0), 
      GenericPick._default.MapPick0$U, 
      $Heap));

function GenericPick.__default.MapPick0#requires(Ty, Ty, Map) : bool;

// #requires axiom for GenericPick.__default.MapPick0
axiom (forall GenericPick._default.MapPick0$U: Ty, 
    GenericPick._default.MapPick0$V: Ty, 
    $Heap: Heap, 
    m#0: Map :: 
  { GenericPick.__default.MapPick0#requires(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V, m#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(m#0, TMap(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V))
     ==> GenericPick.__default.MapPick0#requires(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V, m#0)
       == !Map#Equal(m#0, Map#Empty(): Map));

function $let#50_x(GenericPick._default.MapPick0$U: Ty, GenericPick._default.MapPick0$V: Ty, m: Map)
   : Box;

function $let#50$canCall(GenericPick._default.MapPick0$U: Ty, GenericPick._default.MapPick0$V: Ty, m: Map)
   : bool;

axiom (forall GenericPick._default.MapPick0$U: Ty, GenericPick._default.MapPick0$V: Ty, m: Map :: 
  { $let#50_x(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V, m) } 
  $let#50$canCall(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V, m)
     ==> Set#IsMember(Map#Domain(m), 
      $let#50_x(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V, m)));

// definition axiom for GenericPick.__default.MapPick0 (revealed)
axiom {:id "id937"} (forall GenericPick._default.MapPick0$U: Ty, 
    GenericPick._default.MapPick0$V: Ty, 
    $Heap: Heap, 
    m#0: Map :: 
  { GenericPick.__default.MapPick0(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V, m#0), $IsGoodHeap($Heap) } 
  GenericPick.__default.MapPick0#canCall(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V, m#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(m#0, TMap(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V))
         && !Map#Equal(m#0, Map#Empty(): Map))
     ==> $let#50$canCall(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V, m#0)
       && GenericPick.__default.MapPick0(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V, m#0)
         == (var x#4 := $let#50_x(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V, m#0); 
          x#4));

// definition axiom for GenericPick.__default.MapPick0 for all literals (revealed)
axiom {:id "id938"} (forall GenericPick._default.MapPick0$U: Ty, 
    GenericPick._default.MapPick0$V: Ty, 
    $Heap: Heap, 
    m#0: Map :: 
  {:weight 3} { GenericPick.__default.MapPick0(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V, Lit(m#0)), $IsGoodHeap($Heap) } 
  GenericPick.__default.MapPick0#canCall(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V, Lit(m#0))
       || (
        $IsGoodHeap($Heap)
         && $Is(m#0, TMap(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V))
         && !Map#Equal(m#0, Map#Empty(): Map))
     ==> $let#50$canCall(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V, Lit(m#0))
       && GenericPick.__default.MapPick0(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V, Lit(m#0))
         == (var x#5 := $let#50_x(GenericPick._default.MapPick0$U, GenericPick._default.MapPick0$V, Lit(m#0)); 
          x#5));

// function declaration for GenericPick._default.MapPick1
function GenericPick.__default.MapPick1(GenericPick._default.MapPick1$U: Ty, 
    GenericPick._default.MapPick1$V: Ty, 
    m#0: Map)
   : Box;

function GenericPick.__default.MapPick1#canCall(GenericPick._default.MapPick1$U: Ty, 
    GenericPick._default.MapPick1$V: Ty, 
    m#0: Map)
   : bool;

// consequence axiom for GenericPick.__default.MapPick1
axiom (forall GenericPick._default.MapPick1$U: Ty, 
    GenericPick._default.MapPick1$V: Ty, 
    m#0: Map :: 
  { GenericPick.__default.MapPick1(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V, m#0) } 
  GenericPick.__default.MapPick1#canCall(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V, m#0)
       || ($Is(m#0, TMap(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V))
         && Map#Card(m#0) != 0)
     ==> $IsBox(GenericPick.__default.MapPick1(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V, m#0), 
      GenericPick._default.MapPick1$U));

// alloc consequence axiom for GenericPick.__default.MapPick1
axiom (forall $Heap: Heap, 
    GenericPick._default.MapPick1$U: Ty, 
    GenericPick._default.MapPick1$V: Ty, 
    m#0: Map :: 
  { $IsAllocBox(GenericPick.__default.MapPick1(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V, m#0), 
      GenericPick._default.MapPick1$U, 
      $Heap) } 
  (GenericPick.__default.MapPick1#canCall(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V, m#0)
         || (
          $Is(m#0, TMap(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V))
           && $IsAlloc(m#0, 
            TMap(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V), 
            $Heap)
           && Map#Card(m#0) != 0))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(GenericPick.__default.MapPick1(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V, m#0), 
      GenericPick._default.MapPick1$U, 
      $Heap));

function GenericPick.__default.MapPick1#requires(Ty, Ty, Map) : bool;

// #requires axiom for GenericPick.__default.MapPick1
axiom (forall GenericPick._default.MapPick1$U: Ty, 
    GenericPick._default.MapPick1$V: Ty, 
    $Heap: Heap, 
    m#0: Map :: 
  { GenericPick.__default.MapPick1#requires(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V, m#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(m#0, TMap(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V))
     ==> GenericPick.__default.MapPick1#requires(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V, m#0)
       == (Map#Card(m#0) != 0));

function $let#53_x(GenericPick._default.MapPick1$U: Ty, GenericPick._default.MapPick1$V: Ty, m: Map)
   : Box;

function $let#53$canCall(GenericPick._default.MapPick1$U: Ty, GenericPick._default.MapPick1$V: Ty, m: Map)
   : bool;

axiom (forall GenericPick._default.MapPick1$U: Ty, GenericPick._default.MapPick1$V: Ty, m: Map :: 
  { $let#53_x(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V, m) } 
  $let#53$canCall(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V, m)
     ==> Set#IsMember(Map#Domain(m), 
      $let#53_x(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V, m)));

// definition axiom for GenericPick.__default.MapPick1 (revealed)
axiom {:id "id939"} (forall GenericPick._default.MapPick1$U: Ty, 
    GenericPick._default.MapPick1$V: Ty, 
    $Heap: Heap, 
    m#0: Map :: 
  { GenericPick.__default.MapPick1(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V, m#0), $IsGoodHeap($Heap) } 
  GenericPick.__default.MapPick1#canCall(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V, m#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(m#0, TMap(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V))
         && Map#Card(m#0) != 0)
     ==> $let#53$canCall(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V, m#0)
       && GenericPick.__default.MapPick1(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V, m#0)
         == (var x#4 := $let#53_x(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V, m#0); 
          x#4));

// definition axiom for GenericPick.__default.MapPick1 for all literals (revealed)
axiom {:id "id940"} (forall GenericPick._default.MapPick1$U: Ty, 
    GenericPick._default.MapPick1$V: Ty, 
    $Heap: Heap, 
    m#0: Map :: 
  {:weight 3} { GenericPick.__default.MapPick1(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V, Lit(m#0)), $IsGoodHeap($Heap) } 
  GenericPick.__default.MapPick1#canCall(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V, Lit(m#0))
       || (
        $IsGoodHeap($Heap)
         && $Is(m#0, TMap(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V))
         && Map#Card(Lit(m#0)) != 0)
     ==> $let#53$canCall(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V, Lit(m#0))
       && GenericPick.__default.MapPick1(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V, Lit(m#0))
         == (var x#5 := $let#53_x(GenericPick._default.MapPick1$U, GenericPick._default.MapPick1$V, Lit(m#0)); 
          x#5));

// function declaration for GenericPick._default.MapPick2
function GenericPick.__default.MapPick2(GenericPick._default.MapPick2$U: Ty, 
    GenericPick._default.MapPick2$V: Ty, 
    m#0: Map)
   : Box;

function GenericPick.__default.MapPick2#canCall(GenericPick._default.MapPick2$U: Ty, 
    GenericPick._default.MapPick2$V: Ty, 
    m#0: Map)
   : bool;

// consequence axiom for GenericPick.__default.MapPick2
axiom (forall GenericPick._default.MapPick2$U: Ty, 
    GenericPick._default.MapPick2$V: Ty, 
    m#0: Map :: 
  { GenericPick.__default.MapPick2(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V, m#0) } 
  GenericPick.__default.MapPick2#canCall(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V, m#0)
       || ($Is(m#0, TMap(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V))
         && (exists x#0: Box :: 
          { Set#IsMember(Map#Domain(m#0), x#0) } 
          $IsBox(x#0, GenericPick._default.MapPick2$U)
             && Set#IsMember(Map#Domain(m#0), x#0)))
     ==> $IsBox(GenericPick.__default.MapPick2(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V, m#0), 
      GenericPick._default.MapPick2$U));

// alloc consequence axiom for GenericPick.__default.MapPick2
axiom (forall $Heap: Heap, 
    GenericPick._default.MapPick2$U: Ty, 
    GenericPick._default.MapPick2$V: Ty, 
    m#0: Map :: 
  { $IsAllocBox(GenericPick.__default.MapPick2(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V, m#0), 
      GenericPick._default.MapPick2$U, 
      $Heap) } 
  (GenericPick.__default.MapPick2#canCall(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V, m#0)
         || (
          $Is(m#0, TMap(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V))
           && $IsAlloc(m#0, 
            TMap(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V), 
            $Heap)
           && (exists x#0: Box :: 
            { Set#IsMember(Map#Domain(m#0), x#0) } 
            $IsBox(x#0, GenericPick._default.MapPick2$U)
               && Set#IsMember(Map#Domain(m#0), x#0))))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(GenericPick.__default.MapPick2(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V, m#0), 
      GenericPick._default.MapPick2$U, 
      $Heap));

function GenericPick.__default.MapPick2#requires(Ty, Ty, Map) : bool;

// #requires axiom for GenericPick.__default.MapPick2
axiom (forall GenericPick._default.MapPick2$U: Ty, 
    GenericPick._default.MapPick2$V: Ty, 
    $Heap: Heap, 
    m#0: Map :: 
  { GenericPick.__default.MapPick2#requires(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V, m#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(m#0, TMap(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V))
     ==> GenericPick.__default.MapPick2#requires(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V, m#0)
       == (exists x#8: Box :: 
        { Set#IsMember(Map#Domain(m#0), x#8) } 
        $IsBox(x#8, GenericPick._default.MapPick2$U)
           && Set#IsMember(Map#Domain(m#0), x#8)));

function $let#56_x(GenericPick._default.MapPick2$U: Ty, GenericPick._default.MapPick2$V: Ty, m: Map)
   : Box;

function $let#56$canCall(GenericPick._default.MapPick2$U: Ty, GenericPick._default.MapPick2$V: Ty, m: Map)
   : bool;

axiom (forall GenericPick._default.MapPick2$U: Ty, GenericPick._default.MapPick2$V: Ty, m: Map :: 
  { $let#56_x(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V, m) } 
  $let#56$canCall(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V, m)
     ==> Set#IsMember(Map#Domain(m), 
      $let#56_x(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V, m)));

// definition axiom for GenericPick.__default.MapPick2 (revealed)
axiom {:id "id941"} (forall GenericPick._default.MapPick2$U: Ty, 
    GenericPick._default.MapPick2$V: Ty, 
    $Heap: Heap, 
    m#0: Map :: 
  { GenericPick.__default.MapPick2(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V, m#0), $IsGoodHeap($Heap) } 
  GenericPick.__default.MapPick2#canCall(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V, m#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(m#0, TMap(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V))
         && (exists x#8: Box :: 
          { Set#IsMember(Map#Domain(m#0), x#8) } 
          $IsBox(x#8, GenericPick._default.MapPick2$U)
             && Set#IsMember(Map#Domain(m#0), x#8)))
     ==> $let#56$canCall(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V, m#0)
       && GenericPick.__default.MapPick2(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V, m#0)
         == (var x#9 := $let#56_x(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V, m#0); 
          x#9));

// definition axiom for GenericPick.__default.MapPick2 for all literals (revealed)
axiom {:id "id942"} (forall GenericPick._default.MapPick2$U: Ty, 
    GenericPick._default.MapPick2$V: Ty, 
    $Heap: Heap, 
    m#0: Map :: 
  {:weight 3} { GenericPick.__default.MapPick2(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V, Lit(m#0)), $IsGoodHeap($Heap) } 
  GenericPick.__default.MapPick2#canCall(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V, Lit(m#0))
       || (
        $IsGoodHeap($Heap)
         && $Is(m#0, TMap(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V))
         && (exists x#10: Box :: 
          { Set#IsMember(Map#Domain(m#0), x#10) } 
          $IsBox(x#10, GenericPick._default.MapPick2$U)
             && Set#IsMember(Map#Domain(m#0), x#10)))
     ==> $let#56$canCall(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V, Lit(m#0))
       && GenericPick.__default.MapPick2(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V, Lit(m#0))
         == (var x#11 := $let#56_x(GenericPick._default.MapPick2$U, GenericPick._default.MapPick2$V, Lit(m#0)); 
          x#11));

const unique class.ListLibrary.__default: ClassName;

// Constructor function declaration
function #ListLibrary.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#ListLibrary.List.Nil()) == ##ListLibrary.List.Nil;
// Constructor literal
axiom #ListLibrary.List.Nil() == Lit(#ListLibrary.List.Nil());
}

const unique ##ListLibrary.List.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#ListLibrary.List.Nil()) == ##ListLibrary.List.Nil;
}

function ListLibrary.List.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ListLibrary.List.Nil_q(d) } 
  ListLibrary.List.Nil_q(d) <==> DatatypeCtorId(d) == ##ListLibrary.List.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ListLibrary.List.Nil_q(d) } 
  ListLibrary.List.Nil_q(d) ==> d == #ListLibrary.List.Nil());

function Tclass.ListLibrary.List(Ty) : Ty;

const unique Tagclass.ListLibrary.List: TyTag;

// Tclass.ListLibrary.List Tag
axiom (forall ListLibrary.List$T: Ty :: 
  { Tclass.ListLibrary.List(ListLibrary.List$T) } 
  Tag(Tclass.ListLibrary.List(ListLibrary.List$T)) == Tagclass.ListLibrary.List
     && TagFamily(Tclass.ListLibrary.List(ListLibrary.List$T)) == tytagFamily$List);

function Tclass.ListLibrary.List_0(Ty) : Ty;

// Tclass.ListLibrary.List injectivity 0
axiom (forall ListLibrary.List$T: Ty :: 
  { Tclass.ListLibrary.List(ListLibrary.List$T) } 
  Tclass.ListLibrary.List_0(Tclass.ListLibrary.List(ListLibrary.List$T))
     == ListLibrary.List$T);

// Box/unbox axiom for Tclass.ListLibrary.List
axiom (forall ListLibrary.List$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.ListLibrary.List(ListLibrary.List$T)) } 
  $IsBox(bx, Tclass.ListLibrary.List(ListLibrary.List$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.ListLibrary.List(ListLibrary.List$T)));

// Constructor $Is
axiom (forall ListLibrary.List$T: Ty :: 
  { $Is(#ListLibrary.List.Nil(), Tclass.ListLibrary.List(ListLibrary.List$T)) } 
  $Is(#ListLibrary.List.Nil(), Tclass.ListLibrary.List(ListLibrary.List$T)));

// Constructor $IsAlloc
axiom (forall ListLibrary.List$T: Ty, $h: Heap :: 
  { $IsAlloc(#ListLibrary.List.Nil(), Tclass.ListLibrary.List(ListLibrary.List$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#ListLibrary.List.Nil(), Tclass.ListLibrary.List(ListLibrary.List$T), $h));

// Constructor function declaration
function #ListLibrary.List.Cons(Box, DatatypeType) : DatatypeType;

const unique ##ListLibrary.List.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #ListLibrary.List.Cons(a#4#0#0, a#4#1#0) } 
  DatatypeCtorId(#ListLibrary.List.Cons(a#4#0#0, a#4#1#0))
     == ##ListLibrary.List.Cons);
}

function ListLibrary.List.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ListLibrary.List.Cons_q(d) } 
  ListLibrary.List.Cons_q(d) <==> DatatypeCtorId(d) == ##ListLibrary.List.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ListLibrary.List.Cons_q(d) } 
  ListLibrary.List.Cons_q(d)
     ==> (exists a#5#0#0: Box, a#5#1#0: DatatypeType :: 
      d == #ListLibrary.List.Cons(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall ListLibrary.List$T: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType :: 
  { $Is(#ListLibrary.List.Cons(a#6#0#0, a#6#1#0), 
      Tclass.ListLibrary.List(ListLibrary.List$T)) } 
  $Is(#ListLibrary.List.Cons(a#6#0#0, a#6#1#0), 
      Tclass.ListLibrary.List(ListLibrary.List$T))
     <==> $IsBox(a#6#0#0, ListLibrary.List$T)
       && $Is(a#6#1#0, Tclass.ListLibrary.List(ListLibrary.List$T)));

// Constructor $IsAlloc
axiom (forall ListLibrary.List$T: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#ListLibrary.List.Cons(a#6#0#0, a#6#1#0), 
      Tclass.ListLibrary.List(ListLibrary.List$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#ListLibrary.List.Cons(a#6#0#0, a#6#1#0), 
        Tclass.ListLibrary.List(ListLibrary.List$T), 
        $h)
       <==> $IsAllocBox(a#6#0#0, ListLibrary.List$T, $h)
         && $IsAlloc(a#6#1#0, Tclass.ListLibrary.List(ListLibrary.List$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ListLibrary.List$T: Ty, $h: Heap :: 
  { $IsAllocBox(ListLibrary.List._h3(d), ListLibrary.List$T, $h) } 
  $IsGoodHeap($h)
       && 
      ListLibrary.List.Cons_q(d)
       && $IsAlloc(d, Tclass.ListLibrary.List(ListLibrary.List$T), $h)
     ==> $IsAllocBox(ListLibrary.List._h3(d), ListLibrary.List$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ListLibrary.List$T: Ty, $h: Heap :: 
  { $IsAlloc(ListLibrary.List._h4(d), Tclass.ListLibrary.List(ListLibrary.List$T), $h) } 
  $IsGoodHeap($h)
       && 
      ListLibrary.List.Cons_q(d)
       && $IsAlloc(d, Tclass.ListLibrary.List(ListLibrary.List$T), $h)
     ==> $IsAlloc(ListLibrary.List._h4(d), Tclass.ListLibrary.List(ListLibrary.List$T), $h));

// Constructor literal
axiom (forall a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { #ListLibrary.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #ListLibrary.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#ListLibrary.List.Cons(a#7#0#0, a#7#1#0)));

function ListLibrary.List._h3(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box, a#8#1#0: DatatypeType :: 
  { #ListLibrary.List.Cons(a#8#0#0, a#8#1#0) } 
  ListLibrary.List._h3(#ListLibrary.List.Cons(a#8#0#0, a#8#1#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box, a#9#1#0: DatatypeType :: 
  { #ListLibrary.List.Cons(a#9#0#0, a#9#1#0) } 
  BoxRank(a#9#0#0) < DtRank(#ListLibrary.List.Cons(a#9#0#0, a#9#1#0)));

function ListLibrary.List._h4(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#10#0#0: Box, a#10#1#0: DatatypeType :: 
  { #ListLibrary.List.Cons(a#10#0#0, a#10#1#0) } 
  ListLibrary.List._h4(#ListLibrary.List.Cons(a#10#0#0, a#10#1#0)) == a#10#1#0);

// Inductive rank
axiom (forall a#11#0#0: Box, a#11#1#0: DatatypeType :: 
  { #ListLibrary.List.Cons(a#11#0#0, a#11#1#0) } 
  DtRank(a#11#1#0) < DtRank(#ListLibrary.List.Cons(a#11#0#0, a#11#1#0)));

// Depth-one case-split function
function $IsA#ListLibrary.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#ListLibrary.List(d) } 
  $IsA#ListLibrary.List(d)
     ==> ListLibrary.List.Nil_q(d) || ListLibrary.List.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall ListLibrary.List$T: Ty, d: DatatypeType :: 
  { ListLibrary.List.Cons_q(d), $Is(d, Tclass.ListLibrary.List(ListLibrary.List$T)) } 
    { ListLibrary.List.Nil_q(d), $Is(d, Tclass.ListLibrary.List(ListLibrary.List$T)) } 
  $Is(d, Tclass.ListLibrary.List(ListLibrary.List$T))
     ==> ListLibrary.List.Nil_q(d) || ListLibrary.List.Cons_q(d));

// Datatype extensional equality declaration
function ListLibrary.List#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #ListLibrary.List.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ListLibrary.List#Equal(a, b), ListLibrary.List.Nil_q(a) } 
    { ListLibrary.List#Equal(a, b), ListLibrary.List.Nil_q(b) } 
  ListLibrary.List.Nil_q(a) && ListLibrary.List.Nil_q(b)
     ==> ListLibrary.List#Equal(a, b));

// Datatype extensional equality definition: #ListLibrary.List.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ListLibrary.List#Equal(a, b), ListLibrary.List.Cons_q(a) } 
    { ListLibrary.List#Equal(a, b), ListLibrary.List.Cons_q(b) } 
  ListLibrary.List.Cons_q(a) && ListLibrary.List.Cons_q(b)
     ==> (ListLibrary.List#Equal(a, b)
       <==> ListLibrary.List._h3(a) == ListLibrary.List._h3(b)
         && ListLibrary.List#Equal(ListLibrary.List._h4(a), ListLibrary.List._h4(b))));

// Datatype extensionality axiom: ListLibrary.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ListLibrary.List#Equal(a, b) } 
  ListLibrary.List#Equal(a, b) <==> a == b);

const unique class.ListLibrary.List: ClassName;

const unique class.DatatypeTestZ.__default: ClassName;

const unique class.ConstantFieldReceiverNonNull.__default: ClassName;

function Tclass.ConstantFieldReceiverNonNull.Six() : Ty
uses {
// Tclass.ConstantFieldReceiverNonNull.Six Tag
axiom Tag(Tclass.ConstantFieldReceiverNonNull.Six())
     == Tagclass.ConstantFieldReceiverNonNull.Six
   && TagFamily(Tclass.ConstantFieldReceiverNonNull.Six()) == tytagFamily$Six;
}

const unique Tagclass.ConstantFieldReceiverNonNull.Six: TyTag;

// Box/unbox axiom for Tclass.ConstantFieldReceiverNonNull.Six
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ConstantFieldReceiverNonNull.Six()) } 
  $IsBox(bx, Tclass.ConstantFieldReceiverNonNull.Six())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.ConstantFieldReceiverNonNull.Six()));

// $Is axiom for newtype ConstantFieldReceiverNonNull.Six
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.ConstantFieldReceiverNonNull.Six()) } 
  $Is(x#0, Tclass.ConstantFieldReceiverNonNull.Six()) <==> LitInt(6) <= x#0);

// $IsAlloc axiom for newtype ConstantFieldReceiverNonNull.Six
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.ConstantFieldReceiverNonNull.Six(), $h) } 
  $IsAlloc(x#0, Tclass.ConstantFieldReceiverNonNull.Six(), $h));

const unique class.ConstantFieldReceiverNonNull.Six: ClassName;

const unique class.ConstantFieldReceiverNonNull.Trait?: ClassName;

function Tclass.ConstantFieldReceiverNonNull.Trait?() : Ty
uses {
// Tclass.ConstantFieldReceiverNonNull.Trait? Tag
axiom Tag(Tclass.ConstantFieldReceiverNonNull.Trait?())
     == Tagclass.ConstantFieldReceiverNonNull.Trait?
   && TagFamily(Tclass.ConstantFieldReceiverNonNull.Trait?()) == tytagFamily$Trait;
}

const unique Tagclass.ConstantFieldReceiverNonNull.Trait?: TyTag;

// Box/unbox axiom for Tclass.ConstantFieldReceiverNonNull.Trait?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ConstantFieldReceiverNonNull.Trait?()) } 
  $IsBox(bx, Tclass.ConstantFieldReceiverNonNull.Trait?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ConstantFieldReceiverNonNull.Trait?()));

// $Is axiom for trait Trait
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ConstantFieldReceiverNonNull.Trait?()) } 
  $Is($o, Tclass.ConstantFieldReceiverNonNull.Trait?())
     <==> $o == null || implements$ConstantFieldReceiverNonNull.Trait(dtype($o)));

// $IsAlloc axiom for trait Trait
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ConstantFieldReceiverNonNull.Trait?(), $h) } 
  $IsAlloc($o, Tclass.ConstantFieldReceiverNonNull.Trait?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$ConstantFieldReceiverNonNull.Trait(ty: Ty) : bool;

function ConstantFieldReceiverNonNull.Trait.x0(this: ref) : int;

// Trait.x0: Type axiom
axiom (forall $o: ref :: 
  { ConstantFieldReceiverNonNull.Trait.x0($o) } 
  $o != null && $Is($o, Tclass.ConstantFieldReceiverNonNull.Trait?())
     ==> $Is(ConstantFieldReceiverNonNull.Trait.x0($o), 
      Tclass.ConstantFieldReceiverNonNull.Six()));

// Trait.x0: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ConstantFieldReceiverNonNull.Trait.x0($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass.ConstantFieldReceiverNonNull.Trait?())
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ConstantFieldReceiverNonNull.Trait.x0($o), 
      Tclass.ConstantFieldReceiverNonNull.Six(), 
      $h));

function ConstantFieldReceiverNonNull.Trait.x1(this: ref) : int
uses {
axiom (forall this: ref :: 
  { ConstantFieldReceiverNonNull.Trait.x1(this): int } 
  ConstantFieldReceiverNonNull.Trait.x1(this): int == LitInt(7));
}

// Trait.x1: Type axiom
axiom (forall $o: ref :: 
  { ConstantFieldReceiverNonNull.Trait.x1($o) } 
  $o != null && $Is($o, Tclass.ConstantFieldReceiverNonNull.Trait?())
     ==> $Is(ConstantFieldReceiverNonNull.Trait.x1($o), 
      Tclass.ConstantFieldReceiverNonNull.Six()));

// Trait.x1: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ConstantFieldReceiverNonNull.Trait.x1($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass.ConstantFieldReceiverNonNull.Trait?())
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ConstantFieldReceiverNonNull.Trait.x1($o), 
      Tclass.ConstantFieldReceiverNonNull.Six(), 
      $h));

function ConstantFieldReceiverNonNull.Trait.y() : int
uses {
axiom ConstantFieldReceiverNonNull.Trait.y(): int == LitInt(7);
// Trait.y: Type axiom
axiom $Is(ConstantFieldReceiverNonNull.Trait.y(), 
  Tclass.ConstantFieldReceiverNonNull.Six());
}

// Trait.y: Allocation axiom
axiom (forall $h: Heap :: 
  { $IsAlloc(ConstantFieldReceiverNonNull.Trait.y(), 
      Tclass.ConstantFieldReceiverNonNull.Six(), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(ConstantFieldReceiverNonNull.Trait.y(), 
      Tclass.ConstantFieldReceiverNonNull.Six(), 
      $h));

function Tclass.ConstantFieldReceiverNonNull.Trait() : Ty
uses {
// Tclass.ConstantFieldReceiverNonNull.Trait Tag
axiom Tag(Tclass.ConstantFieldReceiverNonNull.Trait())
     == Tagclass.ConstantFieldReceiverNonNull.Trait
   && TagFamily(Tclass.ConstantFieldReceiverNonNull.Trait()) == tytagFamily$Trait;
}

const unique Tagclass.ConstantFieldReceiverNonNull.Trait: TyTag;

// Box/unbox axiom for Tclass.ConstantFieldReceiverNonNull.Trait
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ConstantFieldReceiverNonNull.Trait()) } 
  $IsBox(bx, Tclass.ConstantFieldReceiverNonNull.Trait())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ConstantFieldReceiverNonNull.Trait()));

// $Is axiom for non-null type ConstantFieldReceiverNonNull.Trait
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ConstantFieldReceiverNonNull.Trait()) } 
    { $Is(c#0, Tclass.ConstantFieldReceiverNonNull.Trait?()) } 
  $Is(c#0, Tclass.ConstantFieldReceiverNonNull.Trait())
     <==> $Is(c#0, Tclass.ConstantFieldReceiverNonNull.Trait?()) && c#0 != null);

// $IsAlloc axiom for non-null type ConstantFieldReceiverNonNull.Trait
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ConstantFieldReceiverNonNull.Trait(), $h) } 
    { $IsAlloc(c#0, Tclass.ConstantFieldReceiverNonNull.Trait?(), $h) } 
  $IsAlloc(c#0, Tclass.ConstantFieldReceiverNonNull.Trait(), $h)
     <==> $IsAlloc(c#0, Tclass.ConstantFieldReceiverNonNull.Trait?(), $h));

const unique class.ConstantFieldReceiverNonNull.Class?: ClassName;

function Tclass.ConstantFieldReceiverNonNull.Class?() : Ty
uses {
// Tclass.ConstantFieldReceiverNonNull.Class? Tag
axiom Tag(Tclass.ConstantFieldReceiverNonNull.Class?())
     == Tagclass.ConstantFieldReceiverNonNull.Class?
   && TagFamily(Tclass.ConstantFieldReceiverNonNull.Class?()) == tytagFamily$Class;
axiom implements$ConstantFieldReceiverNonNull.Trait(Tclass.ConstantFieldReceiverNonNull.Class?());
}

const unique Tagclass.ConstantFieldReceiverNonNull.Class?: TyTag;

// Box/unbox axiom for Tclass.ConstantFieldReceiverNonNull.Class?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ConstantFieldReceiverNonNull.Class?()) } 
  $IsBox(bx, Tclass.ConstantFieldReceiverNonNull.Class?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ConstantFieldReceiverNonNull.Class?()));

// $Is axiom for class Class
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ConstantFieldReceiverNonNull.Class?()) } 
  $Is($o, Tclass.ConstantFieldReceiverNonNull.Class?())
     <==> $o == null || dtype($o) == Tclass.ConstantFieldReceiverNonNull.Class?());

// $IsAlloc axiom for class Class
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ConstantFieldReceiverNonNull.Class?(), $h) } 
  $IsAlloc($o, Tclass.ConstantFieldReceiverNonNull.Class?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.ConstantFieldReceiverNonNull.Class() : Ty
uses {
// Tclass.ConstantFieldReceiverNonNull.Class Tag
axiom Tag(Tclass.ConstantFieldReceiverNonNull.Class())
     == Tagclass.ConstantFieldReceiverNonNull.Class
   && TagFamily(Tclass.ConstantFieldReceiverNonNull.Class()) == tytagFamily$Class;
}

const unique Tagclass.ConstantFieldReceiverNonNull.Class: TyTag;

// Box/unbox axiom for Tclass.ConstantFieldReceiverNonNull.Class
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ConstantFieldReceiverNonNull.Class()) } 
  $IsBox(bx, Tclass.ConstantFieldReceiverNonNull.Class())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ConstantFieldReceiverNonNull.Class()));

// $Is axiom for non-null type ConstantFieldReceiverNonNull.Class
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ConstantFieldReceiverNonNull.Class()) } 
    { $Is(c#0, Tclass.ConstantFieldReceiverNonNull.Class?()) } 
  $Is(c#0, Tclass.ConstantFieldReceiverNonNull.Class())
     <==> $Is(c#0, Tclass.ConstantFieldReceiverNonNull.Class?()) && c#0 != null);

// $IsAlloc axiom for non-null type ConstantFieldReceiverNonNull.Class
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ConstantFieldReceiverNonNull.Class(), $h) } 
    { $IsAlloc(c#0, Tclass.ConstantFieldReceiverNonNull.Class?(), $h) } 
  $IsAlloc(c#0, Tclass.ConstantFieldReceiverNonNull.Class(), $h)
     <==> $IsAlloc(c#0, Tclass.ConstantFieldReceiverNonNull.Class?(), $h));

const unique class.ConstantFieldReceiverNonNull.AnotherClass?: ClassName;

function Tclass.ConstantFieldReceiverNonNull.AnotherClass?() : Ty
uses {
// Tclass.ConstantFieldReceiverNonNull.AnotherClass? Tag
axiom Tag(Tclass.ConstantFieldReceiverNonNull.AnotherClass?())
     == Tagclass.ConstantFieldReceiverNonNull.AnotherClass?
   && TagFamily(Tclass.ConstantFieldReceiverNonNull.AnotherClass?())
     == tytagFamily$AnotherClass;
}

const unique Tagclass.ConstantFieldReceiverNonNull.AnotherClass?: TyTag;

// Box/unbox axiom for Tclass.ConstantFieldReceiverNonNull.AnotherClass?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ConstantFieldReceiverNonNull.AnotherClass?()) } 
  $IsBox(bx, Tclass.ConstantFieldReceiverNonNull.AnotherClass?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ConstantFieldReceiverNonNull.AnotherClass?()));

// $Is axiom for class AnotherClass
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ConstantFieldReceiverNonNull.AnotherClass?()) } 
  $Is($o, Tclass.ConstantFieldReceiverNonNull.AnotherClass?())
     <==> $o == null || dtype($o) == Tclass.ConstantFieldReceiverNonNull.AnotherClass?());

// $IsAlloc axiom for class AnotherClass
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ConstantFieldReceiverNonNull.AnotherClass?(), $h) } 
  $IsAlloc($o, Tclass.ConstantFieldReceiverNonNull.AnotherClass?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function ConstantFieldReceiverNonNull.AnotherClass.u(this: ref) : int;

// AnotherClass.u: Type axiom
axiom (forall $o: ref :: 
  { ConstantFieldReceiverNonNull.AnotherClass.u($o) } 
  $o != null && dtype($o) == Tclass.ConstantFieldReceiverNonNull.AnotherClass?()
     ==> $Is(ConstantFieldReceiverNonNull.AnotherClass.u($o), TInt));

// AnotherClass.u: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ConstantFieldReceiverNonNull.AnotherClass.u($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ConstantFieldReceiverNonNull.AnotherClass?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ConstantFieldReceiverNonNull.AnotherClass.u($o), TInt, $h));

function Tclass.ConstantFieldReceiverNonNull.AnotherClass() : Ty
uses {
// Tclass.ConstantFieldReceiverNonNull.AnotherClass Tag
axiom Tag(Tclass.ConstantFieldReceiverNonNull.AnotherClass())
     == Tagclass.ConstantFieldReceiverNonNull.AnotherClass
   && TagFamily(Tclass.ConstantFieldReceiverNonNull.AnotherClass())
     == tytagFamily$AnotherClass;
}

const unique Tagclass.ConstantFieldReceiverNonNull.AnotherClass: TyTag;

// Box/unbox axiom for Tclass.ConstantFieldReceiverNonNull.AnotherClass
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ConstantFieldReceiverNonNull.AnotherClass()) } 
  $IsBox(bx, Tclass.ConstantFieldReceiverNonNull.AnotherClass())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ConstantFieldReceiverNonNull.AnotherClass()));

// $Is axiom for non-null type ConstantFieldReceiverNonNull.AnotherClass
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ConstantFieldReceiverNonNull.AnotherClass()) } 
    { $Is(c#0, Tclass.ConstantFieldReceiverNonNull.AnotherClass?()) } 
  $Is(c#0, Tclass.ConstantFieldReceiverNonNull.AnotherClass())
     <==> $Is(c#0, Tclass.ConstantFieldReceiverNonNull.AnotherClass?()) && c#0 != null);

// $IsAlloc axiom for non-null type ConstantFieldReceiverNonNull.AnotherClass
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ConstantFieldReceiverNonNull.AnotherClass(), $h) } 
    { $IsAlloc(c#0, Tclass.ConstantFieldReceiverNonNull.AnotherClass?(), $h) } 
  $IsAlloc(c#0, Tclass.ConstantFieldReceiverNonNull.AnotherClass(), $h)
     <==> $IsAlloc(c#0, Tclass.ConstantFieldReceiverNonNull.AnotherClass?(), $h));

const unique class.RustAssert.__default: ClassName;

// function declaration for RustAssert._default.F
function RustAssert.__default.F(x#0: int) : int;

function RustAssert.__default.F#canCall(x#0: int) : bool;

function RustAssert.__default.F#requires(int) : bool;

// #requires axiom for RustAssert.__default.F
axiom (forall x#0: int :: 
  { RustAssert.__default.F#requires(x#0) } 
  RustAssert.__default.F#requires(x#0) == (x#0 == LitInt(100)));

// definition axiom for RustAssert.__default.F (revealed)
axiom {:id "id943"} (forall x#0: int :: 
  { RustAssert.__default.F(x#0) } 
  RustAssert.__default.F#canCall(x#0) || x#0 == LitInt(100)
     ==> RustAssert.__default.F(x#0) == LitInt(25));

// definition axiom for RustAssert.__default.F for all literals (revealed)
axiom {:id "id944"} (forall x#0: int :: 
  {:weight 3} { RustAssert.__default.F(LitInt(x#0)) } 
  RustAssert.__default.F#canCall(LitInt(x#0)) || LitInt(x#0) == LitInt(100)
     ==> RustAssert.__default.F(LitInt(x#0)) == LitInt(25));

// type axiom for trait parent: Trait? extends object?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ConstantFieldReceiverNonNull.Trait?()) } 
  $Is($o, Tclass.ConstantFieldReceiverNonNull.Trait?())
     ==> $Is($o, Tclass._System.object?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ConstantFieldReceiverNonNull.Trait?()) } 
  $IsBox(bx, Tclass.ConstantFieldReceiverNonNull.Trait?())
     ==> $IsBox(bx, Tclass._System.object?()));

// allocation axiom for trait parent: Trait? extends object?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.ConstantFieldReceiverNonNull.Trait?(), $heap) } 
  $IsAlloc($o, Tclass.ConstantFieldReceiverNonNull.Trait?(), $heap)
     ==> $IsAlloc($o, Tclass._System.object?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.ConstantFieldReceiverNonNull.Trait?(), $h) } 
  $IsAllocBox(bx, Tclass.ConstantFieldReceiverNonNull.Trait?(), $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._System.object?(), $h));

// type axiom for trait parent: Class? extends Trait?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ConstantFieldReceiverNonNull.Class?()) } 
  $Is($o, Tclass.ConstantFieldReceiverNonNull.Class?())
     ==> $Is($o, Tclass.ConstantFieldReceiverNonNull.Trait?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ConstantFieldReceiverNonNull.Class?()) } 
  $IsBox(bx, Tclass.ConstantFieldReceiverNonNull.Class?())
     ==> $IsBox(bx, Tclass.ConstantFieldReceiverNonNull.Trait?()));

// allocation axiom for trait parent: Class? extends Trait?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.ConstantFieldReceiverNonNull.Class?(), $heap) } 
  $IsAlloc($o, Tclass.ConstantFieldReceiverNonNull.Class?(), $heap)
     ==> $IsAlloc($o, Tclass.ConstantFieldReceiverNonNull.Trait?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.ConstantFieldReceiverNonNull.Class?(), $h) } 
  $IsAllocBox(bx, Tclass.ConstantFieldReceiverNonNull.Class?(), $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.ConstantFieldReceiverNonNull.Trait?(), $h));

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

const unique tytagFamily$Node: TyTagFamily;

const unique tytagFamily$Lindgren: TyTagFamily;

const unique tytagFamily$QuiteFinite: TyTagFamily;

const unique tytagFamily$Modifies: TyTagFamily;

const unique tytagFamily$AllocatedTests: TyTagFamily;

const unique tytagFamily$InitCalls: TyTagFamily;

const unique tytagFamily$SomeType: TyTagFamily;

const unique tytagFamily$Test: TyTagFamily;

const unique tytagFamily$AttributeTests: TyTagFamily;

const unique tytagFamily$GT: TyTagFamily;

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$Six: TyTagFamily;

const unique tytagFamily$Trait: TyTagFamily;

const unique tytagFamily$Class: TyTagFamily;

const unique tytagFamily$AnotherClass: TyTagFamily;

const unique field$next: NameFamily;

const unique field$x: NameFamily;

const unique field$z: NameFamily;

const unique field$p: NameFamily;

const unique field$f: NameFamily;

const unique field$y: NameFamily;
