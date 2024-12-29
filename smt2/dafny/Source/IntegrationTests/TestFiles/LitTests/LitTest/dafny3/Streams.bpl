// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy

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

function Tclass._System.___hFunc2(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc2: TyTag;

// Tclass._System.___hFunc2 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tag(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == Tagclass._System.___hFunc2
     && TagFamily(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == tytagFamily$_#Func2);

function Tclass._System.___hFunc2_0(Ty) : Ty;

// Tclass._System.___hFunc2 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hFunc2_0(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == #$T0);

function Tclass._System.___hFunc2_1(Ty) : Ty;

// Tclass._System.___hFunc2 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hFunc2_1(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == #$T1);

function Tclass._System.___hFunc2_2(Ty) : Ty;

// Tclass._System.___hFunc2 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hFunc2_2(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc2(#$T0, #$T1, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc2(#$T0, #$T1, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc2(#$T0, #$T1, #$R)));

function Handle2([Heap,Box,Box]Box, [Heap,Box,Box]bool, [Heap,Box,Box]Set) : HandleType;

function Apply2(Ty, Ty, Ty, Heap, HandleType, Box, Box) : Box;

function Requires2(Ty, Ty, Ty, Heap, HandleType, Box, Box) : bool;

function Reads2(Ty, Ty, Ty, Heap, HandleType, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box]Box, 
    r: [Heap,Box,Box]bool, 
    rd: [Heap,Box,Box]Set, 
    bx0: Box, 
    bx1: Box :: 
  { Apply2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1) } 
  Apply2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1) == h[heap, bx0, bx1]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box]Box, 
    r: [Heap,Box,Box]bool, 
    rd: [Heap,Box,Box]Set, 
    bx0: Box, 
    bx1: Box :: 
  { Requires2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1) } 
  r[heap, bx0, bx1] ==> Requires2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box]Box, 
    r: [Heap,Box,Box]bool, 
    rd: [Heap,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx: Box :: 
  { Set#IsMember(Reads2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1), bx) } 
  Set#IsMember(Reads2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1), bx)
     == Set#IsMember(rd[heap, bx0, bx1], bx));

function {:inline} Requires2#canCall(t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box) : bool
{
  true
}

function {:inline} Reads2#canCall(t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box) : bool
{
  true
}

// frame axiom for Reads2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Reads2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h0, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads2(t0, t1, t2, h0, f, bx0, bx1) == Reads2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Reads2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Reads2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h1, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads2(t0, t1, t2, h0, f, bx0, bx1) == Reads2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Requires2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Requires2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h0, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires2(t0, t1, t2, h0, f, bx0, bx1) == Requires2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Requires2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Requires2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h1, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires2(t0, t1, t2, h0, f, bx0, bx1) == Requires2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Apply2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Apply2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h0, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply2(t0, t1, t2, h0, f, bx0, bx1) == Apply2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Apply2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Apply2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h1, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply2(t0, t1, t2, h0, f, bx0, bx1) == Apply2(t0, t1, t2, h1, f, bx0, bx1));

// empty-reads property for Reads2 
axiom (forall t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { Reads2(t0, t1, t2, $OneHeap, f, bx0, bx1), $IsGoodHeap(heap) } 
    { Reads2(t0, t1, t2, heap, f, bx0, bx1) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
     ==> (Set#Equal(Reads2(t0, t1, t2, $OneHeap, f, bx0, bx1), Set#Empty(): Set)
       <==> Set#Equal(Reads2(t0, t1, t2, heap, f, bx0, bx1), Set#Empty(): Set)));

// empty-reads property for Requires2
axiom (forall t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { Requires2(t0, t1, t2, $OneHeap, f, bx0, bx1), $IsGoodHeap(heap) } 
    { Requires2(t0, t1, t2, heap, f, bx0, bx1) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && Set#Equal(Reads2(t0, t1, t2, $OneHeap, f, bx0, bx1), Set#Empty(): Set)
     ==> Requires2(t0, t1, t2, $OneHeap, f, bx0, bx1)
       == Requires2(t0, t1, t2, heap, f, bx0, bx1));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty :: 
  { $Is(f, Tclass._System.___hFunc2(t0, t1, t2)) } 
  $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
     <==> (forall h: Heap, bx0: Box, bx1: Box :: 
      { Apply2(t0, t1, t2, h, f, bx0, bx1) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && Requires2(t0, t1, t2, h, f, bx0, bx1)
         ==> $IsBox(Apply2(t0, t1, t2, h, f, bx0, bx1), t2)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, u0: Ty, u1: Ty, u2: Ty :: 
  { $Is(f, Tclass._System.___hFunc2(t0, t1, t2)), $Is(f, Tclass._System.___hFunc2(u0, u1, u2)) } 
  $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, u1) } { $IsBox(bx, t1) } 
        $IsBox(bx, u1) ==> $IsBox(bx, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, t2) } { $IsBox(bx, u2) } 
        $IsBox(bx, t2) ==> $IsBox(bx, u2))
     ==> $Is(f, Tclass._System.___hFunc2(u0, u1, u2)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h)
       <==> (forall bx0: Box, bx1: Box :: 
        { Apply2(t0, t1, t2, h, f, bx0, bx1) } { Reads2(t0, t1, t2, h, f, bx0, bx1) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && Requires2(t0, t1, t2, h, f, bx0, bx1)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads2(t0, t1, t2, h, f, bx0, bx1), $Box(r)) } 
            r != null && Set#IsMember(Reads2(t0, t1, t2, h, f, bx0, bx1), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h)
     ==> (forall bx0: Box, bx1: Box :: 
      { Apply2(t0, t1, t2, h, f, bx0, bx1) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && Requires2(t0, t1, t2, h, f, bx0, bx1)
         ==> $IsAllocBox(Apply2(t0, t1, t2, h, f, bx0, bx1), t2, h)));

function Tclass._System.___hPartialFunc2(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc2: TyTag;

// Tclass._System.___hPartialFunc2 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tag(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
       == Tagclass._System.___hPartialFunc2
     && TagFamily(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
       == tytagFamily$_#PartialFunc2);

function Tclass._System.___hPartialFunc2_0(Ty) : Ty;

// Tclass._System.___hPartialFunc2 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hPartialFunc2_0(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc2_1(Ty) : Ty;

// Tclass._System.___hPartialFunc2 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hPartialFunc2_1(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc2_2(Ty) : Ty;

// Tclass._System.___hPartialFunc2 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hPartialFunc2_2(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R)));

// $Is axiom for subset type _System._#PartialFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc2(#$T0, #$T1, #$R))
       && (forall x0#0: Box, x1#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1)
           ==> Set#Equal(Reads2(#$T0, #$T1, #$R, $OneHeap, f#0, x0#0, x1#0), Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc2(#$T0, #$T1, #$R), $h));

function Tclass._System.___hTotalFunc2(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc2: TyTag;

// Tclass._System.___hTotalFunc2 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tag(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
       == Tagclass._System.___hTotalFunc2
     && TagFamily(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
       == tytagFamily$_#TotalFunc2);

function Tclass._System.___hTotalFunc2_0(Ty) : Ty;

// Tclass._System.___hTotalFunc2 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hTotalFunc2_0(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc2_1(Ty) : Ty;

// Tclass._System.___hTotalFunc2 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hTotalFunc2_1(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc2_2(Ty) : Ty;

// Tclass._System.___hTotalFunc2 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hTotalFunc2_2(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R)));

// $Is axiom for subset type _System._#TotalFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
       && (forall x0#0: Box, x1#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1)
           ==> Requires2(#$T0, #$T1, #$R, $OneHeap, f#0, x0#0, x1#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R), $h));

function Tclass._System.___hFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc3: TyTag;

// Tclass._System.___hFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hFunc3
     && TagFamily(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#Func3);

function Tclass._System.___hFunc3_0(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_0(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hFunc3_1(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_1(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hFunc3_2(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_2(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hFunc3_3(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_3(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R)));

function Handle3([Heap,Box,Box,Box]Box, [Heap,Box,Box,Box]bool, [Heap,Box,Box,Box]Set)
   : HandleType;

function Apply3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : Box;

function Requires3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : bool;

function Reads3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Apply3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2) } 
  Apply3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2)
     == h[heap, bx0, bx1, bx2]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Requires3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2) } 
  r[heap, bx0, bx1, bx2]
     ==> Requires3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx: Box :: 
  { Set#IsMember(Reads3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2), bx) } 
  Set#IsMember(Reads3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2), bx)
     == Set#IsMember(rd[heap, bx0, bx1, bx2], bx));

function {:inline} Requires3#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box)
   : bool
{
  true
}

function {:inline} Reads3#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box)
   : bool
{
  true
}

// frame axiom for Reads3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Reads3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Apply3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Apply3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// empty-reads property for Reads3 
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), $IsGoodHeap(heap) } 
    { Reads3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
     ==> (Set#Equal(Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), Set#Empty(): Set)
       <==> Set#Equal(Reads3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2), Set#Empty(): Set)));

// empty-reads property for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Requires3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), $IsGoodHeap(heap) } 
    { Requires3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && Set#Equal(Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), Set#Empty(): Set)
     ==> Requires3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty :: 
  { $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3)) } 
  $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
     <==> (forall h: Heap, bx0: Box, bx1: Box, bx2: Box :: 
      { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && $IsBox(bx2, t2)
           && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
         ==> $IsBox(Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), t3)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, u0: Ty, u1: Ty, u2: Ty, u3: Ty :: 
  { $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3)), $Is(f, Tclass._System.___hFunc3(u0, u1, u2, u3)) } 
  $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
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
        { $IsBox(bx, t3) } { $IsBox(bx, u3) } 
        $IsBox(bx, t3) ==> $IsBox(bx, u3))
     ==> $Is(f, Tclass._System.___hFunc3(u0, u1, u2, u3)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h)
       <==> (forall bx0: Box, bx1: Box, bx2: Box :: 
        { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
          { Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && 
            $IsBox(bx2, t2)
             && $IsAllocBox(bx2, t2, h)
             && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), $Box(r)) } 
            r != null && Set#IsMember(Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h)
     ==> (forall bx0: Box, bx1: Box, bx2: Box :: 
      { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && $IsAllocBox(bx2, t2, h)
           && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
         ==> $IsAllocBox(Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), t3, h)));

function Tclass._System.___hPartialFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc3: TyTag;

// Tclass._System.___hPartialFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hPartialFunc3
     && TagFamily(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#PartialFunc3);

function Tclass._System.___hPartialFunc3_0(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_0(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc3_1(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_1(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc3_2(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_2(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hPartialFunc3_3(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_3(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)));

// $Is axiom for subset type _System._#PartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1) && $IsBox(x2#0, #$T2)
           ==> Set#Equal(Reads3(#$T0, #$T1, #$T2, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0), Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R), $h));

function Tclass._System.___hTotalFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc3: TyTag;

// Tclass._System.___hTotalFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hTotalFunc3
     && TagFamily(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#TotalFunc3);

function Tclass._System.___hTotalFunc3_0(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_0(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc3_1(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_1(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc3_2(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_2(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hTotalFunc3_3(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_3(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)));

// $Is axiom for subset type _System._#TotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1) && $IsBox(x2#0, #$T2)
           ==> Requires3(#$T0, #$T1, #$T2, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h));

const unique class._module.__default: ClassName;

// function declaration for _module._default.append
function _module.__default.append(_module._default.append$_T0: Ty, 
    $ly: LayerType, 
    M#0: DatatypeType, 
    N#0: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for _module.__default.append
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.append$_T0: Ty, 
      $ly: LayerType, 
      M#0: DatatypeType, 
      N#0: DatatypeType :: 
    { _module.__default.append(_module._default.append$_T0, $ly, M#0, N#0) } 
    _module.__default.append#canCall(_module._default.append$_T0, M#0, N#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(M#0, Tclass._module.Stream(_module._default.append$_T0))
           && $Is(N#0, Tclass._module.Stream(_module._default.append$_T0)))
       ==> $Is(_module.__default.append(_module._default.append$_T0, $ly, M#0, N#0), 
        Tclass._module.Stream(_module._default.append$_T0)));
// alloc consequence axiom for _module.__default.append
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.append$_T0: Ty, 
      $ly: LayerType, 
      M#0: DatatypeType, 
      N#0: DatatypeType :: 
    { $IsAlloc(_module.__default.append(_module._default.append$_T0, $ly, M#0, N#0), 
        Tclass._module.Stream(_module._default.append$_T0), 
        $Heap) } 
    (_module.__default.append#canCall(_module._default.append$_T0, M#0, N#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(M#0, Tclass._module.Stream(_module._default.append$_T0))
             && $IsAlloc(M#0, Tclass._module.Stream(_module._default.append$_T0), $Heap)
             && 
            $Is(N#0, Tclass._module.Stream(_module._default.append$_T0))
             && $IsAlloc(N#0, Tclass._module.Stream(_module._default.append$_T0), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.append(_module._default.append$_T0, $ly, M#0, N#0), 
        Tclass._module.Stream(_module._default.append$_T0), 
        $Heap));
// definition axiom for _module.__default.append (revealed)
axiom {:id "id0"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.append$_T0: Ty, 
      $ly: LayerType, 
      M#0: DatatypeType, 
      N#0: DatatypeType :: 
    { _module.__default.append(_module._default.append$_T0, $LS($ly), M#0, N#0) } 
    _module.__default.append#canCall(_module._default.append$_T0, M#0, N#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(M#0, Tclass._module.Stream(_module._default.append$_T0))
           && $Is(N#0, Tclass._module.Stream(_module._default.append$_T0)))
       ==> (!_module.Stream.Nil_q(M#0)
           ==> (var M'#1 := _module.Stream.tail(M#0); 
            _module.__default.append#canCall(_module._default.append$_T0, M'#1, N#0)))
         && _module.__default.append(_module._default.append$_T0, $LS($ly), M#0, N#0)
           == (if _module.Stream.Nil_q(M#0)
             then N#0
             else (var M'#0 := _module.Stream.tail(M#0); 
              (var t#0 := _module.Stream.head(M#0); 
                #_module.Stream.Cons(t#0, _module.__default.append(_module._default.append$_T0, $ly, M'#0, N#0))))));
}

function _module.__default.append#canCall(_module._default.append$_T0: Ty, M#0: DatatypeType, N#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.append$_T0: Ty, 
    $ly: LayerType, 
    M#0: DatatypeType, 
    N#0: DatatypeType :: 
  { _module.__default.append(_module._default.append$_T0, $LS($ly), M#0, N#0) } 
  _module.__default.append(_module._default.append$_T0, $LS($ly), M#0, N#0)
     == _module.__default.append(_module._default.append$_T0, $ly, M#0, N#0));

// fuel synonym axiom
axiom (forall _module._default.append$_T0: Ty, 
    $ly: LayerType, 
    M#0: DatatypeType, 
    N#0: DatatypeType :: 
  { _module.__default.append(_module._default.append$_T0, AsFuelBottom($ly), M#0, N#0) } 
  _module.__default.append(_module._default.append$_T0, $ly, M#0, N#0)
     == _module.__default.append(_module._default.append$_T0, $LZ, M#0, N#0));

function Tclass._module.Stream(Ty) : Ty;

const unique Tagclass._module.Stream: TyTag;

// Tclass._module.Stream Tag
axiom (forall _module.Stream$T: Ty :: 
  { Tclass._module.Stream(_module.Stream$T) } 
  Tag(Tclass._module.Stream(_module.Stream$T)) == Tagclass._module.Stream
     && TagFamily(Tclass._module.Stream(_module.Stream$T)) == tytagFamily$Stream);

function Tclass._module.Stream_0(Ty) : Ty;

// Tclass._module.Stream injectivity 0
axiom (forall _module.Stream$T: Ty :: 
  { Tclass._module.Stream(_module.Stream$T) } 
  Tclass._module.Stream_0(Tclass._module.Stream(_module.Stream$T))
     == _module.Stream$T);

// Box/unbox axiom for Tclass._module.Stream
axiom (forall _module.Stream$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Stream(_module.Stream$T)) } 
  $IsBox(bx, Tclass._module.Stream(_module.Stream$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Stream(_module.Stream$T)));

function _module.__default.append#requires(Ty, LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.append
axiom (forall _module._default.append$_T0: Ty, 
    $ly: LayerType, 
    M#0: DatatypeType, 
    N#0: DatatypeType :: 
  { _module.__default.append#requires(_module._default.append$_T0, $ly, M#0, N#0) } 
  $Is(M#0, Tclass._module.Stream(_module._default.append$_T0))
       && $Is(N#0, Tclass._module.Stream(_module._default.append$_T0))
     ==> _module.__default.append#requires(_module._default.append$_T0, $ly, M#0, N#0)
       == true);

procedure {:verboseName "append (well-formedness)"} CheckWellformed$$_module.__default.append(_module._default.append$_T0: Ty, 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(_module._default.append$_T0)), 
    N#0: DatatypeType
       where $Is(N#0, Tclass._module.Stream(_module._default.append$_T0)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.f
function _module.__default.f(x#0: Box) : Box
uses {
// consequence axiom for _module.__default.f
axiom 0 <= $FunctionContextHeight
   ==> (forall x#0: Box :: 
    { _module.__default.f(x#0) } 
    _module.__default.f#canCall(x#0)
         || (0 < $FunctionContextHeight && $IsBox(x#0, Tclass._module.X()))
       ==> $IsBox(_module.__default.f(x#0), Tclass._module.X()));
}

function _module.__default.f#canCall(x#0: Box) : bool;

function Tclass._module.X() : Ty
uses {
axiom $AlwaysAllocated(Tclass._module.X());
}

function _module.__default.f#requires(Box) : bool;

// #requires axiom for _module.__default.f
axiom (forall x#0: Box :: 
  { _module.__default.f#requires(x#0) } 
  $IsBox(x#0, Tclass._module.X()) ==> _module.__default.f#requires(x#0) == true);

procedure {:verboseName "f (well-formedness)"} CheckWellformed$$_module.__default.f(x#0: Box where $IsBox(x#0, Tclass._module.X()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.g
function _module.__default.g(x#0: Box) : Box
uses {
// consequence axiom for _module.__default.g
axiom 0 <= $FunctionContextHeight
   ==> (forall x#0: Box :: 
    { _module.__default.g(x#0) } 
    _module.__default.g#canCall(x#0)
         || (0 < $FunctionContextHeight && $IsBox(x#0, Tclass._module.X()))
       ==> $IsBox(_module.__default.g(x#0), Tclass._module.X()));
}

function _module.__default.g#canCall(x#0: Box) : bool;

function _module.__default.g#requires(Box) : bool;

// #requires axiom for _module.__default.g
axiom (forall x#0: Box :: 
  { _module.__default.g#requires(x#0) } 
  $IsBox(x#0, Tclass._module.X()) ==> _module.__default.g#requires(x#0) == true);

procedure {:verboseName "g (well-formedness)"} CheckWellformed$$_module.__default.g(x#0: Box where $IsBox(x#0, Tclass._module.X()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.map_f
function _module.__default.map__f($ly: LayerType, M#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.map__f
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, M#0: DatatypeType :: 
    { _module.__default.map__f($ly, M#0) } 
    _module.__default.map__f#canCall(M#0)
         || (1 < $FunctionContextHeight
           && $Is(M#0, Tclass._module.Stream(Tclass._module.X())))
       ==> $Is(_module.__default.map__f($ly, M#0), Tclass._module.Stream(Tclass._module.X())));
// definition axiom for _module.__default.map__f (revealed)
axiom {:id "id7"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, M#0: DatatypeType :: 
    { _module.__default.map__f($LS($ly), M#0) } 
    _module.__default.map__f#canCall(M#0)
         || (1 < $FunctionContextHeight
           && $Is(M#0, Tclass._module.Stream(Tclass._module.X())))
       ==> (!_module.Stream.Nil_q(M#0)
           ==> (var N#1 := _module.Stream.tail(M#0); 
            (var x#1 := _module.Stream.head(M#0); 
              _module.__default.f#canCall(x#1) && _module.__default.map__f#canCall(N#1))))
         && _module.__default.map__f($LS($ly), M#0)
           == (if _module.Stream.Nil_q(M#0)
             then #_module.Stream.Nil()
             else (var N#0 := _module.Stream.tail(M#0); 
              (var x#0 := _module.Stream.head(M#0); 
                #_module.Stream.Cons(_module.__default.f(x#0), _module.__default.map__f($ly, N#0))))));
}

function _module.__default.map__f#canCall(M#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, M#0: DatatypeType :: 
  { _module.__default.map__f($LS($ly), M#0) } 
  _module.__default.map__f($LS($ly), M#0) == _module.__default.map__f($ly, M#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, M#0: DatatypeType :: 
  { _module.__default.map__f(AsFuelBottom($ly), M#0) } 
  _module.__default.map__f($ly, M#0) == _module.__default.map__f($LZ, M#0));

function _module.__default.map__f#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.map__f
axiom (forall $ly: LayerType, M#0: DatatypeType :: 
  { _module.__default.map__f#requires($ly, M#0) } 
  $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
     ==> _module.__default.map__f#requires($ly, M#0) == true);

procedure {:verboseName "map_f (well-formedness)"} CheckWellformed$$_module.__default.map__f(M#0: DatatypeType where $Is(M#0, Tclass._module.Stream(Tclass._module.X())));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.map_g
function _module.__default.map__g($ly: LayerType, M#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.map__g
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, M#0: DatatypeType :: 
    { _module.__default.map__g($ly, M#0) } 
    _module.__default.map__g#canCall(M#0)
         || (1 < $FunctionContextHeight
           && $Is(M#0, Tclass._module.Stream(Tclass._module.X())))
       ==> $Is(_module.__default.map__g($ly, M#0), Tclass._module.Stream(Tclass._module.X())));
// definition axiom for _module.__default.map__g (revealed)
axiom {:id "id14"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, M#0: DatatypeType :: 
    { _module.__default.map__g($LS($ly), M#0) } 
    _module.__default.map__g#canCall(M#0)
         || (1 < $FunctionContextHeight
           && $Is(M#0, Tclass._module.Stream(Tclass._module.X())))
       ==> (!_module.Stream.Nil_q(M#0)
           ==> (var N#1 := _module.Stream.tail(M#0); 
            (var x#1 := _module.Stream.head(M#0); 
              _module.__default.g#canCall(x#1) && _module.__default.map__g#canCall(N#1))))
         && _module.__default.map__g($LS($ly), M#0)
           == (if _module.Stream.Nil_q(M#0)
             then #_module.Stream.Nil()
             else (var N#0 := _module.Stream.tail(M#0); 
              (var x#0 := _module.Stream.head(M#0); 
                #_module.Stream.Cons(_module.__default.g(x#0), _module.__default.map__g($ly, N#0))))));
}

function _module.__default.map__g#canCall(M#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, M#0: DatatypeType :: 
  { _module.__default.map__g($LS($ly), M#0) } 
  _module.__default.map__g($LS($ly), M#0) == _module.__default.map__g($ly, M#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, M#0: DatatypeType :: 
  { _module.__default.map__g(AsFuelBottom($ly), M#0) } 
  _module.__default.map__g($ly, M#0) == _module.__default.map__g($LZ, M#0));

function _module.__default.map__g#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.map__g
axiom (forall $ly: LayerType, M#0: DatatypeType :: 
  { _module.__default.map__g#requires($ly, M#0) } 
  $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
     ==> _module.__default.map__g#requires($ly, M#0) == true);

procedure {:verboseName "map_g (well-formedness)"} CheckWellformed$$_module.__default.map__g(M#0: DatatypeType where $Is(M#0, Tclass._module.Stream(Tclass._module.X())));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.map_fg
function _module.__default.map__fg($ly: LayerType, M#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.map__fg
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, M#0: DatatypeType :: 
    { _module.__default.map__fg($ly, M#0) } 
    _module.__default.map__fg#canCall(M#0)
         || (1 < $FunctionContextHeight
           && $Is(M#0, Tclass._module.Stream(Tclass._module.X())))
       ==> $Is(_module.__default.map__fg($ly, M#0), Tclass._module.Stream(Tclass._module.X())));
// definition axiom for _module.__default.map__fg (revealed)
axiom {:id "id21"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, M#0: DatatypeType :: 
    { _module.__default.map__fg($LS($ly), M#0) } 
    _module.__default.map__fg#canCall(M#0)
         || (1 < $FunctionContextHeight
           && $Is(M#0, Tclass._module.Stream(Tclass._module.X())))
       ==> (!_module.Stream.Nil_q(M#0)
           ==> (var N#1 := _module.Stream.tail(M#0); 
            (var x#1 := _module.Stream.head(M#0); 
              _module.__default.g#canCall(x#1)
                 && _module.__default.f#canCall(_module.__default.g(x#1))
                 && _module.__default.map__fg#canCall(N#1))))
         && _module.__default.map__fg($LS($ly), M#0)
           == (if _module.Stream.Nil_q(M#0)
             then #_module.Stream.Nil()
             else (var N#0 := _module.Stream.tail(M#0); 
              (var x#0 := _module.Stream.head(M#0); 
                #_module.Stream.Cons(_module.__default.f(_module.__default.g(x#0)), 
                  _module.__default.map__fg($ly, N#0))))));
}

function _module.__default.map__fg#canCall(M#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, M#0: DatatypeType :: 
  { _module.__default.map__fg($LS($ly), M#0) } 
  _module.__default.map__fg($LS($ly), M#0) == _module.__default.map__fg($ly, M#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, M#0: DatatypeType :: 
  { _module.__default.map__fg(AsFuelBottom($ly), M#0) } 
  _module.__default.map__fg($ly, M#0) == _module.__default.map__fg($LZ, M#0));

function _module.__default.map__fg#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.map__fg
axiom (forall $ly: LayerType, M#0: DatatypeType :: 
  { _module.__default.map__fg#requires($ly, M#0) } 
  $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
     ==> _module.__default.map__fg#requires($ly, M#0) == true);

procedure {:verboseName "map_fg (well-formedness)"} CheckWellformed$$_module.__default.map__fg(M#0: DatatypeType where $Is(M#0, Tclass._module.Stream(Tclass._module.X())));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Theorem0 (well-formedness)"} CheckWellFormed$$_module.__default.Theorem0(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Theorem0 (call)"} Call$$_module.__default.Theorem0(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(_module.__default.map__fg($LS($LZ), M#0))
     && $IsA#_module.Stream(_module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#0)))
     && 
    _module.__default.map__fg#canCall(M#0)
     && 
    _module.__default.map__g#canCall(M#0)
     && _module.__default.map__f#canCall(_module.__default.map__g($LS($LZ), M#0));
  ensures {:id "id29"} $Eq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    $LS($LS($LZ)), 
    _module.__default.map__fg($LS($LS($LZ)), M#0), 
    _module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem0# (co-call)"} CoCall$$_module.__default.Theorem0_h(_k#0: Box, 
    M#1: DatatypeType
       where $Is(M#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.map__fg#canCall(M#1)
     && 
    _module.__default.map__g#canCall(M#1)
     && _module.__default.map__f#canCall(_module.__default.map__g($LS($LZ), M#1));
  free ensures {:id "id30"} $PrefixEq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    _k#0, 
    $LS($LS($LZ)), 
    _module.__default.map__fg($LS($LZ), M#1), 
    _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem0# (correctness)"} Impl$$_module.__default.Theorem0_h(_k#0: Box, 
    M#1: DatatypeType
       where $Is(M#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#1))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.map__fg#canCall(M#1)
     && 
    _module.__default.map__g#canCall(M#1)
     && _module.__default.map__f#canCall(_module.__default.map__g($LS($LZ), M#1));
  ensures {:id "id31"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.map__fg($LS($LZ), M#1), 
      _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#1)))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Nil_q(_module.__default.map__fg($LS($LS($LZ)), M#1))
       ==> _module.Stream.Nil_q(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#1))));
  ensures {:id "id32"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.map__fg($LS($LZ), M#1), 
      _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#1)))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Cons_q(_module.__default.map__fg($LS($LS($LZ)), M#1))
       ==> _module.Stream.Cons_q(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#1)))
         && 
        _module.Stream.head(_module.__default.map__fg($LS($LS($LZ)), M#1))
           == _module.Stream.head(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#1)))
         && $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.map__fg($LS($LS($LZ)), M#1)), 
          _module.Stream.tail(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#1)))));
  ensures {:id "id33"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.map__fg($LS($LZ), M#1), 
      _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#1)))
     || 
    (0 < ORD#Offset(_k#0)
       ==> (_module.Stream.Nil_q(_module.__default.map__fg($LS($LS($LZ)), M#1))
           ==> _module.Stream.Nil_q(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#1))))
         && (_module.Stream.Cons_q(_module.__default.map__fg($LS($LS($LZ)), M#1))
           ==> _module.Stream.Cons_q(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#1)))
             && 
            _module.Stream.head(_module.__default.map__fg($LS($LS($LZ)), M#1))
               == _module.Stream.head(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#1)))
             && $PrefixEq#_module.Stream(Tclass._module.X(), 
              Tclass._module.X(), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              $LS($LS($LZ)), 
              _module.Stream.tail(_module.__default.map__fg($LS($LS($LZ)), M#1)), 
              _module.Stream.tail(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#1))))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.Stream(Tclass._module.X(), 
        Tclass._module.X(), 
        $LS($LS($LZ)), 
        _module.__default.map__fg($LS($LZ), M#1), 
        _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem0# (correctness)"} Impl$$_module.__default.Theorem0_h(_k#0: Box, M#1: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var N#0: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var x#0: Box;
  var let#0_0_1#0#0: Box;
  var _k##0: Box;
  var M##0: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Theorem0#, Impl$$_module.__default.Theorem0_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(M#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#M0#0: DatatypeType :: 
      { $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.map__fg($LS($LZ), $ih#M0#0), 
          _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), $ih#M0#0))) } 
      $Is($ih#M0#0, Tclass._module.Stream(Tclass._module.X()))
           && Lit(true)
           && ORD#Less($ih#_k0#0, _k#0)
         ==> $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.map__fg($LS($LZ), $ih#M0#0), 
          _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), $ih#M0#0))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(48,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        assume true;
        havoc _mcc#0#0, _mcc#1#0;
        if (M#1 == #_module.Stream.Nil())
        {
        }
        else if (M#1 == #_module.Stream.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, Tclass._module.X())
               && $IsAllocBox(_mcc#0#0, Tclass._module.X(), $Heap);
            assume $Is(_mcc#1#0, Tclass._module.Stream(Tclass._module.X()))
               && $IsAlloc(_mcc#1#0, Tclass._module.Stream(Tclass._module.X()), $Heap);
            havoc N#0;
            assume $Is(N#0, Tclass._module.Stream(Tclass._module.X()))
               && $IsAlloc(N#0, Tclass._module.Stream(Tclass._module.X()), $Heap);
            assume {:id "id34"} let#0_0_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.Stream(Tclass._module.X()));
            assume {:id "id35"} N#0 == let#0_0_0#0#0;
            havoc x#0;
            assume $IsBox(x#0, Tclass._module.X()) && $IsAllocBox(x#0, Tclass._module.X(), $Heap);
            assume {:id "id36"} let#0_0_1#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#0_0_1#0#0, Tclass._module.X());
            assume {:id "id37"} x#0 == let#0_0_1#0#0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(52,15)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id38"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id39"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
            assume true;
            // ProcessCallStmt: CheckSubrange
            M##0 := N#0;
            call {:id "id40"} CoCall$$_module.__default.Theorem0_h(_k##0, M##0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
            assume false;
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(48,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box, M#2: DatatypeType :: 
          { _module.__default.map__g($LS($LZ), M#2), ORD#Less(_k'#0, _k#0) } 
            { _module.__default.map__fg($LS($LZ), M#2), ORD#Less(_k'#0, _k#0) } 
          $Is(M#2, Tclass._module.Stream(Tclass._module.X())) && ORD#Less(_k'#0, _k#0)
             ==> $PrefixEq#_module.Stream(Tclass._module.X(), 
              Tclass._module.X(), 
              _k'#0, 
              $LS($LS($LZ)), 
              _module.__default.map__fg($LS($LZ), M#2), 
              _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#2))));
    }
}



procedure {:verboseName "Theorem0_Alt (well-formedness)"} CheckWellFormed$$_module.__default.Theorem0__Alt(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Theorem0_Alt (call)"} Call$$_module.__default.Theorem0__Alt(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(_module.__default.map__fg($LS($LZ), M#0))
     && $IsA#_module.Stream(_module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#0)))
     && 
    _module.__default.map__fg#canCall(M#0)
     && 
    _module.__default.map__g#canCall(M#0)
     && _module.__default.map__f#canCall(_module.__default.map__g($LS($LZ), M#0));
  ensures {:id "id42"} $Eq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    $LS($LS($LZ)), 
    _module.__default.map__fg($LS($LS($LZ)), M#0), 
    _module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem0_Alt# (co-call)"} CoCall$$_module.__default.Theorem0__Alt_h(_k#0: Box, 
    M#1: DatatypeType
       where $Is(M#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.map__fg#canCall(M#1)
     && 
    _module.__default.map__g#canCall(M#1)
     && _module.__default.map__f#canCall(_module.__default.map__g($LS($LZ), M#1));
  free ensures {:id "id43"} $PrefixEq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    _k#0, 
    $LS($LS($LZ)), 
    _module.__default.map__fg($LS($LZ), M#1), 
    _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem0_Alt# (correctness)"} Impl$$_module.__default.Theorem0__Alt_h(_k#0: Box, 
    M#1: DatatypeType
       where $Is(M#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#1))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.map__fg#canCall(M#1)
     && 
    _module.__default.map__g#canCall(M#1)
     && _module.__default.map__f#canCall(_module.__default.map__g($LS($LZ), M#1));
  ensures {:id "id44"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.map__fg($LS($LZ), M#1), 
      _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#1)))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Nil_q(_module.__default.map__fg($LS($LS($LZ)), M#1))
       ==> _module.Stream.Nil_q(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#1))));
  ensures {:id "id45"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.map__fg($LS($LZ), M#1), 
      _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#1)))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Cons_q(_module.__default.map__fg($LS($LS($LZ)), M#1))
       ==> _module.Stream.Cons_q(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#1)))
         && 
        _module.Stream.head(_module.__default.map__fg($LS($LS($LZ)), M#1))
           == _module.Stream.head(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#1)))
         && $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.map__fg($LS($LS($LZ)), M#1)), 
          _module.Stream.tail(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#1)))));
  ensures {:id "id46"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.map__fg($LS($LZ), M#1), 
      _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#1)))
     || 
    (0 < ORD#Offset(_k#0)
       ==> (_module.Stream.Nil_q(_module.__default.map__fg($LS($LS($LZ)), M#1))
           ==> _module.Stream.Nil_q(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#1))))
         && (_module.Stream.Cons_q(_module.__default.map__fg($LS($LS($LZ)), M#1))
           ==> _module.Stream.Cons_q(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#1)))
             && 
            _module.Stream.head(_module.__default.map__fg($LS($LS($LZ)), M#1))
               == _module.Stream.head(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#1)))
             && $PrefixEq#_module.Stream(Tclass._module.X(), 
              Tclass._module.X(), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              $LS($LS($LZ)), 
              _module.Stream.tail(_module.__default.map__fg($LS($LS($LZ)), M#1)), 
              _module.Stream.tail(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#1))))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.Stream(Tclass._module.X(), 
        Tclass._module.X(), 
        $LS($LS($LZ)), 
        _module.__default.map__fg($LS($LZ), M#1), 
        _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem0_Alt# (correctness)"} Impl$$_module.__default.Theorem0__Alt_h(_k#0: Box, M#1: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _k##0: Box;
  var M##0: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Theorem0_Alt#, Impl$$_module.__default.Theorem0__Alt_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(M#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#M0#0: DatatypeType :: 
      { $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.map__fg($LS($LZ), $ih#M0#0), 
          _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), $ih#M0#0))) } 
      $Is($ih#M0#0, Tclass._module.Stream(Tclass._module.X()))
           && Lit(true)
           && ORD#Less($ih#_k0#0, _k#0)
         ==> $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.map__fg($LS($LZ), $ih#M0#0), 
          _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), $ih#M0#0))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(57,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(58,3)
        assume true;
        if (_module.Stream.Cons_q(M#1))
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(59,17)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id47"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id48"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
            assert {:id "id49"} _module.Stream.Cons_q(M#1);
            assume true;
            // ProcessCallStmt: CheckSubrange
            M##0 := _module.Stream.tail(M#1);
            call {:id "id50"} CoCall$$_module.__default.Theorem0__Alt_h(_k##0, M##0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(57,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box, M#2: DatatypeType :: 
          { _module.__default.map__g($LS($LZ), M#2), ORD#Less(_k'#0, _k#0) } 
            { _module.__default.map__fg($LS($LZ), M#2), ORD#Less(_k'#0, _k#0) } 
          $Is(M#2, Tclass._module.Stream(Tclass._module.X())) && ORD#Less(_k'#0, _k#0)
             ==> $PrefixEq#_module.Stream(Tclass._module.X(), 
              Tclass._module.X(), 
              _k'#0, 
              $LS($LS($LZ)), 
              _module.__default.map__fg($LS($LZ), M#2), 
              _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#2))));
    }
}



procedure {:verboseName "Theorem0_Par (well-formedness)"} CheckWellFormed$$_module.__default.Theorem0__Par(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Theorem0_Par (call)"} Call$$_module.__default.Theorem0__Par(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(_module.__default.map__fg($LS($LZ), M#0))
     && $IsA#_module.Stream(_module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#0)))
     && 
    _module.__default.map__fg#canCall(M#0)
     && 
    _module.__default.map__g#canCall(M#0)
     && _module.__default.map__f#canCall(_module.__default.map__g($LS($LZ), M#0));
  ensures {:id "id52"} $Eq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    $LS($LS($LZ)), 
    _module.__default.map__fg($LS($LS($LZ)), M#0), 
    _module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem0_Par (correctness)"} Impl$$_module.__default.Theorem0__Par(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(_module.__default.map__fg($LS($LZ), M#0))
     && $IsA#_module.Stream(_module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#0)))
     && 
    _module.__default.map__fg#canCall(M#0)
     && 
    _module.__default.map__g#canCall(M#0)
     && _module.__default.map__f#canCall(_module.__default.map__g($LS($LZ), M#0));
  ensures {:id "id53"} $Eq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    $LS($LS($LZ)), 
    _module.__default.map__fg($LS($LS($LZ)), M#0), 
    _module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem0_Par (correctness)"} Impl$$_module.__default.Theorem0__Par(M#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var k#0_0: int;
  var k##0_0: int;
  var M##0_0: DatatypeType;
  var $initHeapForallStmt#0_0: Heap;

    // AddMethodImpl: Theorem0_Par, Impl$$_module.__default.Theorem0__Par
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(M#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#M0#0: DatatypeType :: 
      { _module.__default.map__g($LS($LZ), $ih#M0#0) } 
        { _module.__default.map__fg($LS($LZ), $ih#M0#0) } 
      true);
    $_reverifyPost := false;
    // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(65,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc k#0_0;
        assume LitInt(0) <= k#0_0;
        assume true;
        assume true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(66,17)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        k##0_0 := k#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        M##0_0 := M#0;
        call {:id "id54"} Call$$_module.__default.Theorem0__Ind(k##0_0, M##0_0);
        // TrCallStmt: After ProcessCallStmt
        assume false;
    }
    else
    {
        $initHeapForallStmt#0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#0_0 == $Heap;
        assume (forall k#0_1: int :: 
          LitInt(0) <= k#0_1 && Lit(true)
             ==> $PrefixEq#_module.Stream(Tclass._module.X(), 
              Tclass._module.X(), 
              ORD#FromNat(k#0_1), 
              $LS($LS($LZ)), 
              _module.__default.map__fg($LS($LZ), M#0), 
              _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#0))));
    }
}



procedure {:verboseName "Theorem0_Ind (well-formedness)"} CheckWellFormed$$_module.__default.Theorem0__Ind(k#0: int where LitInt(0) <= k#0, 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem0_Ind (well-formedness)"} CheckWellFormed$$_module.__default.Theorem0__Ind(k#0: int, M#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##M#0: DatatypeType;
  var ##M#1: DatatypeType;
  var ##M#2: DatatypeType;


    // AddMethodImpl: Theorem0_Ind, CheckWellFormed$$_module.__default.Theorem0__Ind
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##M#0 := M#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##M#0, Tclass._module.Stream(Tclass._module.X()), $Heap);
    assume _module.__default.map__fg#canCall(M#0);
    ##M#2 := M#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##M#2, Tclass._module.Stream(Tclass._module.X()), $Heap);
    assume _module.__default.map__g#canCall(M#0);
    ##M#1 := _module.__default.map__g($LS($LZ), M#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##M#1, Tclass._module.Stream(Tclass._module.X()), $Heap);
    assume _module.__default.map__f#canCall(_module.__default.map__g($LS($LZ), M#0));
    assert {:id "id55"} 0 <= k#0;
    assume {:id "id56"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      ORD#FromNat(k#0), 
      $LS($LS($LZ)), 
      _module.__default.map__fg($LS($LZ), M#0), 
      _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#0)));
}



procedure {:verboseName "Theorem0_Ind (call)"} Call$$_module.__default.Theorem0__Ind(k#0: int where LitInt(0) <= k#0, 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.map__fg#canCall(M#0)
     && 
    _module.__default.map__g#canCall(M#0)
     && _module.__default.map__f#canCall(_module.__default.map__g($LS($LZ), M#0));
  free ensures {:id "id57"} $PrefixEq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    ORD#FromNat(k#0), 
    $LS($LS($LZ)), 
    _module.__default.map__fg($LS($LZ), M#0), 
    _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem0_Ind (correctness)"} Impl$$_module.__default.Theorem0__Ind(k#0: int where LitInt(0) <= k#0, 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.map__fg#canCall(M#0)
     && 
    _module.__default.map__g#canCall(M#0)
     && _module.__default.map__f#canCall(_module.__default.map__g($LS($LZ), M#0));
  ensures {:id "id58"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      ORD#FromNat(k#0), 
      $LS($LS($LZ)), 
      _module.__default.map__fg($LS($LZ), M#0), 
      _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#0)))
     || (0 < k#0
       ==> 
      _module.Stream.Nil_q(_module.__default.map__fg($LS($LS($LZ)), M#0))
       ==> _module.Stream.Nil_q(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#0))));
  ensures {:id "id59"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      ORD#FromNat(k#0), 
      $LS($LS($LZ)), 
      _module.__default.map__fg($LS($LZ), M#0), 
      _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#0)))
     || (0 < k#0
       ==> 
      _module.Stream.Cons_q(_module.__default.map__fg($LS($LS($LZ)), M#0))
       ==> _module.Stream.Cons_q(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#0)))
         && 
        _module.Stream.head(_module.__default.map__fg($LS($LS($LZ)), M#0))
           == _module.Stream.head(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#0)))
         && $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          ORD#FromNat(k#0 - 1), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.map__fg($LS($LS($LZ)), M#0)), 
          _module.Stream.tail(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#0)))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem0_Ind (correctness)"} Impl$$_module.__default.Theorem0__Ind(k#0: int, M#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0_0_0: Box;
  var _mcc#1#0_0_0: DatatypeType;
  var N#0_0_0: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var x#0_0_0: Box;
  var let#0_0_1#0#0: Box;
  var k##0_0_0: int;
  var M##0_0_0: DatatypeType;

    // AddMethodImpl: Theorem0_Ind, Impl$$_module.__default.Theorem0__Ind
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(M#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#k0#0: int, $ih#M0#0: DatatypeType :: 
      { $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          ORD#FromNat($ih#k0#0), 
          $LS($LS($LZ)), 
          _module.__default.map__fg($LS($LZ), $ih#M0#0), 
          _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), $ih#M0#0))) } 
      LitInt(0) <= $ih#k0#0
           && $Is($ih#M0#0, Tclass._module.Stream(Tclass._module.X()))
           && Lit(true)
           && 
          0 <= $ih#k0#0
           && $ih#k0#0 < k#0
         ==> $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          ORD#FromNat($ih#k0#0), 
          $LS($LS($LZ)), 
          _module.__default.map__fg($LS($LZ), $ih#M0#0), 
          _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), $ih#M0#0))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(72,3)
    assume true;
    if (k#0 != 0)
    {
        assume true;
        havoc _mcc#0#0_0_0, _mcc#1#0_0_0;
        if (M#0 == #_module.Stream.Nil())
        {
        }
        else if (M#0 == #_module.Stream.Cons(_mcc#0#0_0_0, _mcc#1#0_0_0))
        {
            assume $IsBox(_mcc#0#0_0_0, Tclass._module.X());
            assume $Is(_mcc#1#0_0_0, Tclass._module.Stream(Tclass._module.X()));
            havoc N#0_0_0;
            assume $Is(N#0_0_0, Tclass._module.Stream(Tclass._module.X()))
               && $IsAlloc(N#0_0_0, Tclass._module.Stream(Tclass._module.X()), $Heap);
            assume {:id "id60"} let#0_0_0#0#0 == _mcc#1#0_0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.Stream(Tclass._module.X()));
            assume {:id "id61"} N#0_0_0 == let#0_0_0#0#0;
            havoc x#0_0_0;
            assume $IsBox(x#0_0_0, Tclass._module.X())
               && $IsAllocBox(x#0_0_0, Tclass._module.X(), $Heap);
            assume {:id "id62"} let#0_0_1#0#0 == _mcc#0#0_0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#0_0_1#0#0, Tclass._module.X());
            assume {:id "id63"} x#0_0_0 == let#0_0_1#0#0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(76,21)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id64"} $Is(k#0 - 1, Tclass._System.nat());
            k##0_0_0 := k#0 - 1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            M##0_0_0 := N#0_0_0;
            assert {:id "id65"} 0 <= k#0 || k##0_0_0 == k#0;
            assert {:id "id66"} k##0_0_0 < k#0;
            call {:id "id67"} Call$$_module.__default.Theorem0__Ind(k##0_0_0, M##0_0_0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
            assume false;
        }
    }
    else
    {
    }
}



procedure {:verboseName "Theorem0_AutoInd (well-formedness)"} CheckWellFormed$$_module.__default.Theorem0__AutoInd(k#0: int where LitInt(0) <= k#0, 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem0_AutoInd (well-formedness)"} CheckWellFormed$$_module.__default.Theorem0__AutoInd(k#0: int, M#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##M#0: DatatypeType;
  var ##M#1: DatatypeType;
  var ##M#2: DatatypeType;


    // AddMethodImpl: Theorem0_AutoInd, CheckWellFormed$$_module.__default.Theorem0__AutoInd
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##M#0 := M#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##M#0, Tclass._module.Stream(Tclass._module.X()), $Heap);
    assume _module.__default.map__fg#canCall(M#0);
    ##M#2 := M#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##M#2, Tclass._module.Stream(Tclass._module.X()), $Heap);
    assume _module.__default.map__g#canCall(M#0);
    ##M#1 := _module.__default.map__g($LS($LZ), M#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##M#1, Tclass._module.Stream(Tclass._module.X()), $Heap);
    assume _module.__default.map__f#canCall(_module.__default.map__g($LS($LZ), M#0));
    assert {:id "id68"} 0 <= k#0;
    assume {:id "id69"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      ORD#FromNat(k#0), 
      $LS($LS($LZ)), 
      _module.__default.map__fg($LS($LZ), M#0), 
      _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#0)));
}



procedure {:verboseName "Theorem0_AutoInd (call)"} Call$$_module.__default.Theorem0__AutoInd(k#0: int where LitInt(0) <= k#0, 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.map__fg#canCall(M#0)
     && 
    _module.__default.map__g#canCall(M#0)
     && _module.__default.map__f#canCall(_module.__default.map__g($LS($LZ), M#0));
  free ensures {:id "id70"} $PrefixEq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    ORD#FromNat(k#0), 
    $LS($LS($LZ)), 
    _module.__default.map__fg($LS($LZ), M#0), 
    _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem0_AutoInd (correctness)"} Impl$$_module.__default.Theorem0__AutoInd(k#0: int where LitInt(0) <= k#0, 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.map__fg#canCall(M#0)
     && 
    _module.__default.map__g#canCall(M#0)
     && _module.__default.map__f#canCall(_module.__default.map__g($LS($LZ), M#0));
  ensures {:id "id71"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      ORD#FromNat(k#0), 
      $LS($LS($LZ)), 
      _module.__default.map__fg($LS($LZ), M#0), 
      _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#0)))
     || (0 < k#0
       ==> 
      _module.Stream.Nil_q(_module.__default.map__fg($LS($LS($LZ)), M#0))
       ==> _module.Stream.Nil_q(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#0))));
  ensures {:id "id72"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      ORD#FromNat(k#0), 
      $LS($LS($LZ)), 
      _module.__default.map__fg($LS($LZ), M#0), 
      _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), M#0)))
     || (0 < k#0
       ==> 
      _module.Stream.Cons_q(_module.__default.map__fg($LS($LS($LZ)), M#0))
       ==> _module.Stream.Cons_q(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#0)))
         && 
        _module.Stream.head(_module.__default.map__fg($LS($LS($LZ)), M#0))
           == _module.Stream.head(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#0)))
         && $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          ORD#FromNat(k#0 - 1), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.map__fg($LS($LS($LZ)), M#0)), 
          _module.Stream.tail(_module.__default.map__f($LS($LS($LZ)), _module.__default.map__g($LS($LS($LZ)), M#0)))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem0_AutoInd (correctness)"} Impl$$_module.__default.Theorem0__AutoInd(k#0: int, M#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: Theorem0_AutoInd, Impl$$_module.__default.Theorem0__AutoInd
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(M#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#k0#0: int, $ih#M0#0: DatatypeType :: 
      { $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          ORD#FromNat($ih#k0#0), 
          $LS($LS($LZ)), 
          _module.__default.map__fg($LS($LZ), $ih#M0#0), 
          _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), $ih#M0#0))) } 
      LitInt(0) <= $ih#k0#0
           && $Is($ih#M0#0, Tclass._module.Stream(Tclass._module.X()))
           && Lit(true)
           && 
          0 <= $ih#k0#0
           && $ih#k0#0 < k#0
         ==> $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          ORD#FromNat($ih#k0#0), 
          $LS($LS($LZ)), 
          _module.__default.map__fg($LS($LZ), $ih#M0#0), 
          _module.__default.map__f($LS($LZ), _module.__default.map__g($LS($LZ), $ih#M0#0))));
    $_reverifyPost := false;
}



procedure {:verboseName "Theorem1 (well-formedness)"} CheckWellFormed$$_module.__default.Theorem1(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0), 
    N#0: DatatypeType
       where $Is(N#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Theorem1 (call)"} Call$$_module.__default.Theorem1(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0), 
    N#0: DatatypeType
       where $Is(N#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(_module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0)))
     && $IsA#_module.Stream(_module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.map__f($LS($LZ), M#0), 
        _module.__default.map__f($LS($LZ), N#0)))
     && 
    _module.__default.append#canCall(Tclass._module.X(), M#0, N#0)
     && _module.__default.map__f#canCall(_module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0))
     && 
    _module.__default.map__f#canCall(M#0)
     && _module.__default.map__f#canCall(N#0)
     && _module.__default.append#canCall(Tclass._module.X(), 
      _module.__default.map__f($LS($LZ), M#0), 
      _module.__default.map__f($LS($LZ), N#0));
  ensures {:id "id74"} $Eq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    $LS($LS($LZ)), 
    _module.__default.map__f($LS($LS($LZ)), 
      _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#0, N#0)), 
    _module.__default.append(Tclass._module.X(), 
      $LS($LS($LZ)), 
      _module.__default.map__f($LS($LS($LZ)), M#0), 
      _module.__default.map__f($LS($LS($LZ)), N#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem1# (co-call)"} CoCall$$_module.__default.Theorem1_h(_k#0: Box, 
    M#1: DatatypeType
       where $Is(M#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#1), 
    N#1: DatatypeType
       where $Is(N#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.append#canCall(Tclass._module.X(), M#1, N#1)
     && _module.__default.map__f#canCall(_module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1))
     && 
    _module.__default.map__f#canCall(M#1)
     && _module.__default.map__f#canCall(N#1)
     && _module.__default.append#canCall(Tclass._module.X(), 
      _module.__default.map__f($LS($LZ), M#1), 
      _module.__default.map__f($LS($LZ), N#1));
  free ensures {:id "id75"} $PrefixEq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    _k#0, 
    $LS($LS($LZ)), 
    _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1)), 
    _module.__default.append(Tclass._module.X(), 
      $LS($LZ), 
      _module.__default.map__f($LS($LZ), M#1), 
      _module.__default.map__f($LS($LZ), N#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem1# (correctness)"} Impl$$_module.__default.Theorem1_h(_k#0: Box, 
    M#1: DatatypeType
       where $Is(M#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#1), 
    N#1: DatatypeType
       where $Is(N#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#1))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.append#canCall(Tclass._module.X(), M#1, N#1)
     && _module.__default.map__f#canCall(_module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1))
     && 
    _module.__default.map__f#canCall(M#1)
     && _module.__default.map__f#canCall(N#1)
     && _module.__default.append#canCall(Tclass._module.X(), 
      _module.__default.map__f($LS($LZ), M#1), 
      _module.__default.map__f($LS($LZ), N#1));
  ensures {:id "id76"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.map__f($LS($LZ), M#1), 
        _module.__default.map__f($LS($LZ), N#1)))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Nil_q(_module.__default.map__f($LS($LS($LZ)), 
          _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1)))
       ==> _module.Stream.Nil_q(_module.__default.append(Tclass._module.X(), 
          $LS($LS($LZ)), 
          _module.__default.map__f($LS($LS($LZ)), M#1), 
          _module.__default.map__f($LS($LS($LZ)), N#1))));
  ensures {:id "id77"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.map__f($LS($LZ), M#1), 
        _module.__default.map__f($LS($LZ), N#1)))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Cons_q(_module.__default.map__f($LS($LS($LZ)), 
          _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1)))
       ==> _module.Stream.Cons_q(_module.__default.append(Tclass._module.X(), 
            $LS($LS($LZ)), 
            _module.__default.map__f($LS($LS($LZ)), M#1), 
            _module.__default.map__f($LS($LS($LZ)), N#1)))
         && 
        _module.Stream.head(_module.__default.map__f($LS($LS($LZ)), 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1)))
           == _module.Stream.head(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              _module.__default.map__f($LS($LS($LZ)), M#1), 
              _module.__default.map__f($LS($LS($LZ)), N#1)))
         && $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.map__f($LS($LS($LZ)), 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1))), 
          _module.Stream.tail(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              _module.__default.map__f($LS($LS($LZ)), M#1), 
              _module.__default.map__f($LS($LS($LZ)), N#1)))));
  ensures {:id "id78"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.map__f($LS($LZ), M#1), 
        _module.__default.map__f($LS($LZ), N#1)))
     || 
    (0 < ORD#Offset(_k#0)
       ==> (_module.Stream.Nil_q(_module.__default.map__f($LS($LS($LZ)), 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1)))
           ==> _module.Stream.Nil_q(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              _module.__default.map__f($LS($LS($LZ)), M#1), 
              _module.__default.map__f($LS($LS($LZ)), N#1))))
         && (_module.Stream.Cons_q(_module.__default.map__f($LS($LS($LZ)), 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1)))
           ==> _module.Stream.Cons_q(_module.__default.append(Tclass._module.X(), 
                $LS($LS($LZ)), 
                _module.__default.map__f($LS($LS($LZ)), M#1), 
                _module.__default.map__f($LS($LS($LZ)), N#1)))
             && 
            _module.Stream.head(_module.__default.map__f($LS($LS($LZ)), 
                  _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1)))
               == _module.Stream.head(_module.__default.append(Tclass._module.X(), 
                  $LS($LS($LZ)), 
                  _module.__default.map__f($LS($LS($LZ)), M#1), 
                  _module.__default.map__f($LS($LS($LZ)), N#1)))
             && $PrefixEq#_module.Stream(Tclass._module.X(), 
              Tclass._module.X(), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              $LS($LS($LZ)), 
              _module.Stream.tail(_module.__default.map__f($LS($LS($LZ)), 
                  _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1))), 
              _module.Stream.tail(_module.__default.append(Tclass._module.X(), 
                  $LS($LS($LZ)), 
                  _module.__default.map__f($LS($LS($LZ)), M#1), 
                  _module.__default.map__f($LS($LS($LZ)), N#1))))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.Stream(Tclass._module.X(), 
        Tclass._module.X(), 
        $LS($LS($LZ)), 
        _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1)), 
        _module.__default.append(Tclass._module.X(), 
          $LS($LZ), 
          _module.__default.map__f($LS($LZ), M#1), 
          _module.__default.map__f($LS($LZ), N#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem1# (correctness)"} Impl$$_module.__default.Theorem1_h(_k#0: Box, M#1: DatatypeType, N#1: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var M'#0: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var x#0: Box;
  var let#0_0_1#0#0: Box;
  var _k##0: Box;
  var M##0: DatatypeType;
  var N##0: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Theorem1#, Impl$$_module.__default.Theorem1_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(M#1);
    assume $IsA#_module.Stream(N#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#M0#0: DatatypeType, $ih#N0#0: DatatypeType :: 
      { $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.map__f($LS($LZ), 
            _module.__default.append(Tclass._module.X(), $LS($LZ), $ih#M0#0, $ih#N0#0)), 
          _module.__default.append(Tclass._module.X(), 
            $LS($LZ), 
            _module.__default.map__f($LS($LZ), $ih#M0#0), 
            _module.__default.map__f($LS($LZ), $ih#N0#0))) } 
      $Is($ih#M0#0, Tclass._module.Stream(Tclass._module.X()))
           && $Is($ih#N0#0, Tclass._module.Stream(Tclass._module.X()))
           && Lit(true)
           && ORD#Less($ih#_k0#0, _k#0)
         ==> $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.map__f($LS($LZ), 
            _module.__default.append(Tclass._module.X(), $LS($LZ), $ih#M0#0, $ih#N0#0)), 
          _module.__default.append(Tclass._module.X(), 
            $LS($LZ), 
            _module.__default.map__f($LS($LZ), $ih#M0#0), 
            _module.__default.map__f($LS($LZ), $ih#N0#0))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(88,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        assume true;
        havoc _mcc#0#0, _mcc#1#0;
        if (M#1 == #_module.Stream.Nil())
        {
        }
        else if (M#1 == #_module.Stream.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, Tclass._module.X())
               && $IsAllocBox(_mcc#0#0, Tclass._module.X(), $Heap);
            assume $Is(_mcc#1#0, Tclass._module.Stream(Tclass._module.X()))
               && $IsAlloc(_mcc#1#0, Tclass._module.Stream(Tclass._module.X()), $Heap);
            havoc M'#0;
            assume $Is(M'#0, Tclass._module.Stream(Tclass._module.X()))
               && $IsAlloc(M'#0, Tclass._module.Stream(Tclass._module.X()), $Heap);
            assume {:id "id79"} let#0_0_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.Stream(Tclass._module.X()));
            assume {:id "id80"} M'#0 == let#0_0_0#0#0;
            havoc x#0;
            assume $IsBox(x#0, Tclass._module.X()) && $IsAllocBox(x#0, Tclass._module.X(), $Heap);
            assume {:id "id81"} let#0_0_1#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#0_0_1#0#0, Tclass._module.X());
            assume {:id "id82"} x#0 == let#0_0_1#0#0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(92,15)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id83"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id84"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
            assume true;
            // ProcessCallStmt: CheckSubrange
            M##0 := M'#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            N##0 := N#1;
            call {:id "id85"} CoCall$$_module.__default.Theorem1_h(_k##0, M##0, N##0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
            assume false;
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(88,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box, M#2: DatatypeType, N#2: DatatypeType :: 
          { _module.__default.append(Tclass._module.X(), 
              $LS($LZ), 
              _module.__default.map__f($LS($LZ), M#2), 
              _module.__default.map__f($LS($LZ), N#2)), ORD#Less(_k'#0, _k#0) } 
            { _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#2, N#2)), ORD#Less(_k'#0, _k#0) } 
          $Is(M#2, Tclass._module.Stream(Tclass._module.X()))
               && $Is(N#2, Tclass._module.Stream(Tclass._module.X()))
               && ORD#Less(_k'#0, _k#0)
             ==> $PrefixEq#_module.Stream(Tclass._module.X(), 
              Tclass._module.X(), 
              _k'#0, 
              $LS($LS($LZ)), 
              _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#2, N#2)), 
              _module.__default.append(Tclass._module.X(), 
                $LS($LZ), 
                _module.__default.map__f($LS($LZ), M#2), 
                _module.__default.map__f($LS($LZ), N#2))));
    }
}



procedure {:verboseName "Theorem1_Alt (well-formedness)"} CheckWellFormed$$_module.__default.Theorem1__Alt(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0), 
    N#0: DatatypeType
       where $Is(N#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Theorem1_Alt (call)"} Call$$_module.__default.Theorem1__Alt(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0), 
    N#0: DatatypeType
       where $Is(N#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(_module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0)))
     && $IsA#_module.Stream(_module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.map__f($LS($LZ), M#0), 
        _module.__default.map__f($LS($LZ), N#0)))
     && 
    _module.__default.append#canCall(Tclass._module.X(), M#0, N#0)
     && _module.__default.map__f#canCall(_module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0))
     && 
    _module.__default.map__f#canCall(M#0)
     && _module.__default.map__f#canCall(N#0)
     && _module.__default.append#canCall(Tclass._module.X(), 
      _module.__default.map__f($LS($LZ), M#0), 
      _module.__default.map__f($LS($LZ), N#0));
  ensures {:id "id87"} $Eq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    $LS($LS($LZ)), 
    _module.__default.map__f($LS($LS($LZ)), 
      _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#0, N#0)), 
    _module.__default.append(Tclass._module.X(), 
      $LS($LS($LZ)), 
      _module.__default.map__f($LS($LS($LZ)), M#0), 
      _module.__default.map__f($LS($LS($LZ)), N#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem1_Alt# (co-call)"} CoCall$$_module.__default.Theorem1__Alt_h(_k#0: Box, 
    M#1: DatatypeType
       where $Is(M#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#1), 
    N#1: DatatypeType
       where $Is(N#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.append#canCall(Tclass._module.X(), M#1, N#1)
     && _module.__default.map__f#canCall(_module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1))
     && 
    _module.__default.map__f#canCall(M#1)
     && _module.__default.map__f#canCall(N#1)
     && _module.__default.append#canCall(Tclass._module.X(), 
      _module.__default.map__f($LS($LZ), M#1), 
      _module.__default.map__f($LS($LZ), N#1));
  free ensures {:id "id88"} $PrefixEq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    _k#0, 
    $LS($LS($LZ)), 
    _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1)), 
    _module.__default.append(Tclass._module.X(), 
      $LS($LZ), 
      _module.__default.map__f($LS($LZ), M#1), 
      _module.__default.map__f($LS($LZ), N#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem1_Alt# (correctness)"} Impl$$_module.__default.Theorem1__Alt_h(_k#0: Box, 
    M#1: DatatypeType
       where $Is(M#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#1), 
    N#1: DatatypeType
       where $Is(N#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#1))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.append#canCall(Tclass._module.X(), M#1, N#1)
     && _module.__default.map__f#canCall(_module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1))
     && 
    _module.__default.map__f#canCall(M#1)
     && _module.__default.map__f#canCall(N#1)
     && _module.__default.append#canCall(Tclass._module.X(), 
      _module.__default.map__f($LS($LZ), M#1), 
      _module.__default.map__f($LS($LZ), N#1));
  ensures {:id "id89"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.map__f($LS($LZ), M#1), 
        _module.__default.map__f($LS($LZ), N#1)))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Nil_q(_module.__default.map__f($LS($LS($LZ)), 
          _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1)))
       ==> _module.Stream.Nil_q(_module.__default.append(Tclass._module.X(), 
          $LS($LS($LZ)), 
          _module.__default.map__f($LS($LS($LZ)), M#1), 
          _module.__default.map__f($LS($LS($LZ)), N#1))));
  ensures {:id "id90"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.map__f($LS($LZ), M#1), 
        _module.__default.map__f($LS($LZ), N#1)))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Cons_q(_module.__default.map__f($LS($LS($LZ)), 
          _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1)))
       ==> _module.Stream.Cons_q(_module.__default.append(Tclass._module.X(), 
            $LS($LS($LZ)), 
            _module.__default.map__f($LS($LS($LZ)), M#1), 
            _module.__default.map__f($LS($LS($LZ)), N#1)))
         && 
        _module.Stream.head(_module.__default.map__f($LS($LS($LZ)), 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1)))
           == _module.Stream.head(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              _module.__default.map__f($LS($LS($LZ)), M#1), 
              _module.__default.map__f($LS($LS($LZ)), N#1)))
         && $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.map__f($LS($LS($LZ)), 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1))), 
          _module.Stream.tail(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              _module.__default.map__f($LS($LS($LZ)), M#1), 
              _module.__default.map__f($LS($LS($LZ)), N#1)))));
  ensures {:id "id91"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.map__f($LS($LZ), M#1), 
        _module.__default.map__f($LS($LZ), N#1)))
     || 
    (0 < ORD#Offset(_k#0)
       ==> (_module.Stream.Nil_q(_module.__default.map__f($LS($LS($LZ)), 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1)))
           ==> _module.Stream.Nil_q(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              _module.__default.map__f($LS($LS($LZ)), M#1), 
              _module.__default.map__f($LS($LS($LZ)), N#1))))
         && (_module.Stream.Cons_q(_module.__default.map__f($LS($LS($LZ)), 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1)))
           ==> _module.Stream.Cons_q(_module.__default.append(Tclass._module.X(), 
                $LS($LS($LZ)), 
                _module.__default.map__f($LS($LS($LZ)), M#1), 
                _module.__default.map__f($LS($LS($LZ)), N#1)))
             && 
            _module.Stream.head(_module.__default.map__f($LS($LS($LZ)), 
                  _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1)))
               == _module.Stream.head(_module.__default.append(Tclass._module.X(), 
                  $LS($LS($LZ)), 
                  _module.__default.map__f($LS($LS($LZ)), M#1), 
                  _module.__default.map__f($LS($LS($LZ)), N#1)))
             && $PrefixEq#_module.Stream(Tclass._module.X(), 
              Tclass._module.X(), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              $LS($LS($LZ)), 
              _module.Stream.tail(_module.__default.map__f($LS($LS($LZ)), 
                  _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1))), 
              _module.Stream.tail(_module.__default.append(Tclass._module.X(), 
                  $LS($LS($LZ)), 
                  _module.__default.map__f($LS($LS($LZ)), M#1), 
                  _module.__default.map__f($LS($LS($LZ)), N#1))))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.Stream(Tclass._module.X(), 
        Tclass._module.X(), 
        $LS($LS($LZ)), 
        _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1)), 
        _module.__default.append(Tclass._module.X(), 
          $LS($LZ), 
          _module.__default.map__f($LS($LZ), M#1), 
          _module.__default.map__f($LS($LZ), N#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem1_Alt# (correctness)"} Impl$$_module.__default.Theorem1__Alt_h(_k#0: Box, M#1: DatatypeType, N#1: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _k##0: Box;
  var M##0: DatatypeType;
  var N##0: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Theorem1_Alt#, Impl$$_module.__default.Theorem1__Alt_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(M#1);
    assume $IsA#_module.Stream(N#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#M0#0: DatatypeType, $ih#N0#0: DatatypeType :: 
      { $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.map__f($LS($LZ), 
            _module.__default.append(Tclass._module.X(), $LS($LZ), $ih#M0#0, $ih#N0#0)), 
          _module.__default.append(Tclass._module.X(), 
            $LS($LZ), 
            _module.__default.map__f($LS($LZ), $ih#M0#0), 
            _module.__default.map__f($LS($LZ), $ih#N0#0))) } 
      $Is($ih#M0#0, Tclass._module.Stream(Tclass._module.X()))
           && $Is($ih#N0#0, Tclass._module.Stream(Tclass._module.X()))
           && Lit(true)
           && ORD#Less($ih#_k0#0, _k#0)
         ==> $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.map__f($LS($LZ), 
            _module.__default.append(Tclass._module.X(), $LS($LZ), $ih#M0#0, $ih#N0#0)), 
          _module.__default.append(Tclass._module.X(), 
            $LS($LZ), 
            _module.__default.map__f($LS($LZ), $ih#M0#0), 
            _module.__default.map__f($LS($LZ), $ih#N0#0))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(97,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(98,3)
        assume true;
        if (_module.Stream.Cons_q(M#1))
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(99,17)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id92"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id93"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
            assert {:id "id94"} _module.Stream.Cons_q(M#1);
            assume true;
            // ProcessCallStmt: CheckSubrange
            M##0 := _module.Stream.tail(M#1);
            assume true;
            // ProcessCallStmt: CheckSubrange
            N##0 := N#1;
            call {:id "id95"} CoCall$$_module.__default.Theorem1__Alt_h(_k##0, M##0, N##0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(97,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box, M#2: DatatypeType, N#2: DatatypeType :: 
          { _module.__default.append(Tclass._module.X(), 
              $LS($LZ), 
              _module.__default.map__f($LS($LZ), M#2), 
              _module.__default.map__f($LS($LZ), N#2)), ORD#Less(_k'#0, _k#0) } 
            { _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#2, N#2)), ORD#Less(_k'#0, _k#0) } 
          $Is(M#2, Tclass._module.Stream(Tclass._module.X()))
               && $Is(N#2, Tclass._module.Stream(Tclass._module.X()))
               && ORD#Less(_k'#0, _k#0)
             ==> $PrefixEq#_module.Stream(Tclass._module.X(), 
              Tclass._module.X(), 
              _k'#0, 
              $LS($LS($LZ)), 
              _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#2, N#2)), 
              _module.__default.append(Tclass._module.X(), 
                $LS($LZ), 
                _module.__default.map__f($LS($LZ), M#2), 
                _module.__default.map__f($LS($LZ), N#2))));
    }
}



procedure {:verboseName "Theorem1_Par (well-formedness)"} CheckWellFormed$$_module.__default.Theorem1__Par(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0), 
    N#0: DatatypeType
       where $Is(N#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Theorem1_Par (call)"} Call$$_module.__default.Theorem1__Par(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0), 
    N#0: DatatypeType
       where $Is(N#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(_module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0)))
     && $IsA#_module.Stream(_module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.map__f($LS($LZ), M#0), 
        _module.__default.map__f($LS($LZ), N#0)))
     && 
    _module.__default.append#canCall(Tclass._module.X(), M#0, N#0)
     && _module.__default.map__f#canCall(_module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0))
     && 
    _module.__default.map__f#canCall(M#0)
     && _module.__default.map__f#canCall(N#0)
     && _module.__default.append#canCall(Tclass._module.X(), 
      _module.__default.map__f($LS($LZ), M#0), 
      _module.__default.map__f($LS($LZ), N#0));
  ensures {:id "id97"} $Eq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    $LS($LS($LZ)), 
    _module.__default.map__f($LS($LS($LZ)), 
      _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#0, N#0)), 
    _module.__default.append(Tclass._module.X(), 
      $LS($LS($LZ)), 
      _module.__default.map__f($LS($LS($LZ)), M#0), 
      _module.__default.map__f($LS($LS($LZ)), N#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem1_Par (correctness)"} Impl$$_module.__default.Theorem1__Par(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0), 
    N#0: DatatypeType
       where $Is(N#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#0))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(_module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0)))
     && $IsA#_module.Stream(_module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.map__f($LS($LZ), M#0), 
        _module.__default.map__f($LS($LZ), N#0)))
     && 
    _module.__default.append#canCall(Tclass._module.X(), M#0, N#0)
     && _module.__default.map__f#canCall(_module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0))
     && 
    _module.__default.map__f#canCall(M#0)
     && _module.__default.map__f#canCall(N#0)
     && _module.__default.append#canCall(Tclass._module.X(), 
      _module.__default.map__f($LS($LZ), M#0), 
      _module.__default.map__f($LS($LZ), N#0));
  ensures {:id "id98"} $Eq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    $LS($LS($LZ)), 
    _module.__default.map__f($LS($LS($LZ)), 
      _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#0, N#0)), 
    _module.__default.append(Tclass._module.X(), 
      $LS($LS($LZ)), 
      _module.__default.map__f($LS($LS($LZ)), M#0), 
      _module.__default.map__f($LS($LS($LZ)), N#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem1_Par (correctness)"} Impl$$_module.__default.Theorem1__Par(M#0: DatatypeType, N#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var k#0_0: int;
  var k##0_0: int;
  var M##0_0: DatatypeType;
  var N##0_0: DatatypeType;
  var $initHeapForallStmt#0_0: Heap;

    // AddMethodImpl: Theorem1_Par, Impl$$_module.__default.Theorem1__Par
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(M#0);
    assume $IsA#_module.Stream(N#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#M0#0: DatatypeType, $ih#N0#0: DatatypeType :: 
      { _module.__default.append(Tclass._module.X(), 
          $LS($LZ), 
          _module.__default.map__f($LS($LZ), $ih#M0#0), 
          _module.__default.map__f($LS($LZ), $ih#N0#0)) } 
        { _module.__default.map__f($LS($LZ), 
          _module.__default.append(Tclass._module.X(), $LS($LZ), $ih#M0#0, $ih#N0#0)) } 
      true);
    $_reverifyPost := false;
    // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(105,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc k#0_0;
        assume LitInt(0) <= k#0_0;
        assume true;
        assume true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(106,17)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        k##0_0 := k#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        M##0_0 := M#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        N##0_0 := N#0;
        call {:id "id99"} Call$$_module.__default.Theorem1__Ind(k##0_0, M##0_0, N##0_0);
        // TrCallStmt: After ProcessCallStmt
        assume false;
    }
    else
    {
        $initHeapForallStmt#0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#0_0 == $Heap;
        assume (forall k#0_1: int :: 
          LitInt(0) <= k#0_1 && Lit(true)
             ==> $PrefixEq#_module.Stream(Tclass._module.X(), 
              Tclass._module.X(), 
              ORD#FromNat(k#0_1), 
              $LS($LS($LZ)), 
              _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0)), 
              _module.__default.append(Tclass._module.X(), 
                $LS($LZ), 
                _module.__default.map__f($LS($LZ), M#0), 
                _module.__default.map__f($LS($LZ), N#0))));
    }
}



procedure {:verboseName "Theorem1_Ind (well-formedness)"} CheckWellFormed$$_module.__default.Theorem1__Ind(k#0: int where LitInt(0) <= k#0, 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0), 
    N#0: DatatypeType
       where $Is(N#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem1_Ind (well-formedness)"} CheckWellFormed$$_module.__default.Theorem1__Ind(k#0: int, M#0: DatatypeType, N#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##M#0: DatatypeType;
  var ##M#1: DatatypeType;
  var ##N#0: DatatypeType;
  var ##M#2: DatatypeType;
  var ##M#3: DatatypeType;
  var ##N#1: DatatypeType;
  var ##M#4: DatatypeType;


    // AddMethodImpl: Theorem1_Ind, CheckWellFormed$$_module.__default.Theorem1__Ind
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##M#1 := M#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##M#1, Tclass._module.Stream(Tclass._module.X()), $Heap);
    ##N#0 := N#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##N#0, Tclass._module.Stream(Tclass._module.X()), $Heap);
    assume _module.__default.append#canCall(Tclass._module.X(), M#0, N#0);
    ##M#0 := _module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##M#0, Tclass._module.Stream(Tclass._module.X()), $Heap);
    assume _module.__default.map__f#canCall(_module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0));
    ##M#3 := M#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##M#3, Tclass._module.Stream(Tclass._module.X()), $Heap);
    assume _module.__default.map__f#canCall(M#0);
    ##M#2 := _module.__default.map__f($LS($LZ), M#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##M#2, Tclass._module.Stream(Tclass._module.X()), $Heap);
    ##M#4 := N#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##M#4, Tclass._module.Stream(Tclass._module.X()), $Heap);
    assume _module.__default.map__f#canCall(N#0);
    ##N#1 := _module.__default.map__f($LS($LZ), N#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##N#1, Tclass._module.Stream(Tclass._module.X()), $Heap);
    assume _module.__default.append#canCall(Tclass._module.X(), 
      _module.__default.map__f($LS($LZ), M#0), 
      _module.__default.map__f($LS($LZ), N#0));
    assert {:id "id100"} 0 <= k#0;
    assume {:id "id101"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      ORD#FromNat(k#0), 
      $LS($LS($LZ)), 
      _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.map__f($LS($LZ), M#0), 
        _module.__default.map__f($LS($LZ), N#0)));
}



procedure {:verboseName "Theorem1_Ind (call)"} Call$$_module.__default.Theorem1__Ind(k#0: int where LitInt(0) <= k#0, 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0), 
    N#0: DatatypeType
       where $Is(N#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.append#canCall(Tclass._module.X(), M#0, N#0)
     && _module.__default.map__f#canCall(_module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0))
     && 
    _module.__default.map__f#canCall(M#0)
     && _module.__default.map__f#canCall(N#0)
     && _module.__default.append#canCall(Tclass._module.X(), 
      _module.__default.map__f($LS($LZ), M#0), 
      _module.__default.map__f($LS($LZ), N#0));
  free ensures {:id "id102"} $PrefixEq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    ORD#FromNat(k#0), 
    $LS($LS($LZ)), 
    _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0)), 
    _module.__default.append(Tclass._module.X(), 
      $LS($LZ), 
      _module.__default.map__f($LS($LZ), M#0), 
      _module.__default.map__f($LS($LZ), N#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem1_Ind (correctness)"} Impl$$_module.__default.Theorem1__Ind(k#0: int where LitInt(0) <= k#0, 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0), 
    N#0: DatatypeType
       where $Is(N#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.append#canCall(Tclass._module.X(), M#0, N#0)
     && _module.__default.map__f#canCall(_module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0))
     && 
    _module.__default.map__f#canCall(M#0)
     && _module.__default.map__f#canCall(N#0)
     && _module.__default.append#canCall(Tclass._module.X(), 
      _module.__default.map__f($LS($LZ), M#0), 
      _module.__default.map__f($LS($LZ), N#0));
  ensures {:id "id103"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      ORD#FromNat(k#0), 
      $LS($LS($LZ)), 
      _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.map__f($LS($LZ), M#0), 
        _module.__default.map__f($LS($LZ), N#0)))
     || (0 < k#0
       ==> 
      _module.Stream.Nil_q(_module.__default.map__f($LS($LS($LZ)), 
          _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#0, N#0)))
       ==> _module.Stream.Nil_q(_module.__default.append(Tclass._module.X(), 
          $LS($LS($LZ)), 
          _module.__default.map__f($LS($LS($LZ)), M#0), 
          _module.__default.map__f($LS($LS($LZ)), N#0))));
  ensures {:id "id104"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      ORD#FromNat(k#0), 
      $LS($LS($LZ)), 
      _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.map__f($LS($LZ), M#0), 
        _module.__default.map__f($LS($LZ), N#0)))
     || (0 < k#0
       ==> 
      _module.Stream.Cons_q(_module.__default.map__f($LS($LS($LZ)), 
          _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#0, N#0)))
       ==> _module.Stream.Cons_q(_module.__default.append(Tclass._module.X(), 
            $LS($LS($LZ)), 
            _module.__default.map__f($LS($LS($LZ)), M#0), 
            _module.__default.map__f($LS($LS($LZ)), N#0)))
         && 
        _module.Stream.head(_module.__default.map__f($LS($LS($LZ)), 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#0, N#0)))
           == _module.Stream.head(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              _module.__default.map__f($LS($LS($LZ)), M#0), 
              _module.__default.map__f($LS($LS($LZ)), N#0)))
         && $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          ORD#FromNat(k#0 - 1), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.map__f($LS($LS($LZ)), 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#0, N#0))), 
          _module.Stream.tail(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              _module.__default.map__f($LS($LS($LZ)), M#0), 
              _module.__default.map__f($LS($LS($LZ)), N#0)))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem1_Ind (correctness)"} Impl$$_module.__default.Theorem1__Ind(k#0: int, M#0: DatatypeType, N#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0_0: Box;
  var _mcc#1#0_0: DatatypeType;
  var M'#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var x#0_0: Box;
  var let#0_1#0#0: Box;
  var k##0_0_0: int;
  var M##0_0_0: DatatypeType;
  var N##0_0_0: DatatypeType;

    // AddMethodImpl: Theorem1_Ind, Impl$$_module.__default.Theorem1__Ind
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(M#0);
    assume $IsA#_module.Stream(N#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#k0#0: int, $ih#M0#0: DatatypeType, $ih#N0#0: DatatypeType :: 
      { $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          ORD#FromNat($ih#k0#0), 
          $LS($LS($LZ)), 
          _module.__default.map__f($LS($LZ), 
            _module.__default.append(Tclass._module.X(), $LS($LZ), $ih#M0#0, $ih#N0#0)), 
          _module.__default.append(Tclass._module.X(), 
            $LS($LZ), 
            _module.__default.map__f($LS($LZ), $ih#M0#0), 
            _module.__default.map__f($LS($LZ), $ih#N0#0))) } 
      LitInt(0) <= $ih#k0#0
           && $Is($ih#M0#0, Tclass._module.Stream(Tclass._module.X()))
           && $Is($ih#N0#0, Tclass._module.Stream(Tclass._module.X()))
           && Lit(true)
           && 
          0 <= $ih#k0#0
           && $ih#k0#0 < k#0
         ==> $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          ORD#FromNat($ih#k0#0), 
          $LS($LS($LZ)), 
          _module.__default.map__f($LS($LZ), 
            _module.__default.append(Tclass._module.X(), $LS($LZ), $ih#M0#0, $ih#N0#0)), 
          _module.__default.append(Tclass._module.X(), 
            $LS($LZ), 
            _module.__default.map__f($LS($LZ), $ih#M0#0), 
            _module.__default.map__f($LS($LZ), $ih#N0#0))));
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (M#0 == #_module.Stream.Nil())
    {
    }
    else if (M#0 == #_module.Stream.Cons(_mcc#0#0_0, _mcc#1#0_0))
    {
        assume $IsBox(_mcc#0#0_0, Tclass._module.X());
        assume $Is(_mcc#1#0_0, Tclass._module.Stream(Tclass._module.X()));
        havoc M'#0_0;
        assume $Is(M'#0_0, Tclass._module.Stream(Tclass._module.X()))
           && $IsAlloc(M'#0_0, Tclass._module.Stream(Tclass._module.X()), $Heap);
        assume {:id "id105"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.Stream(Tclass._module.X()));
        assume {:id "id106"} M'#0_0 == let#0_0#0#0;
        havoc x#0_0;
        assume $IsBox(x#0_0, Tclass._module.X())
           && $IsAllocBox(x#0_0, Tclass._module.X(), $Heap);
        assume {:id "id107"} let#0_1#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $IsBox(let#0_1#0#0, Tclass._module.X());
        assume {:id "id108"} x#0_0 == let#0_1#0#0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(116,7)
        assume true;
        if (k#0 != 0)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(117,21)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id109"} $Is(k#0 - 1, Tclass._System.nat());
            k##0_0_0 := k#0 - 1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            M##0_0_0 := M'#0_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            N##0_0_0 := N#0;
            assert {:id "id110"} 0 <= k#0 || k##0_0_0 == k#0;
            assert {:id "id111"} k##0_0_0 < k#0;
            call {:id "id112"} Call$$_module.__default.Theorem1__Ind(k##0_0_0, M##0_0_0, N##0_0_0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
        }
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "Theorem1_AutoInd (well-formedness)"} CheckWellFormed$$_module.__default.Theorem1__AutoInd(k#0: int where LitInt(0) <= k#0, 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0), 
    N#0: DatatypeType
       where $Is(N#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem1_AutoInd (well-formedness)"} CheckWellFormed$$_module.__default.Theorem1__AutoInd(k#0: int, M#0: DatatypeType, N#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##M#0: DatatypeType;
  var ##M#1: DatatypeType;
  var ##N#0: DatatypeType;
  var ##M#2: DatatypeType;
  var ##M#3: DatatypeType;
  var ##N#1: DatatypeType;
  var ##M#4: DatatypeType;


    // AddMethodImpl: Theorem1_AutoInd, CheckWellFormed$$_module.__default.Theorem1__AutoInd
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##M#1 := M#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##M#1, Tclass._module.Stream(Tclass._module.X()), $Heap);
    ##N#0 := N#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##N#0, Tclass._module.Stream(Tclass._module.X()), $Heap);
    assume _module.__default.append#canCall(Tclass._module.X(), M#0, N#0);
    ##M#0 := _module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##M#0, Tclass._module.Stream(Tclass._module.X()), $Heap);
    assume _module.__default.map__f#canCall(_module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0));
    ##M#3 := M#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##M#3, Tclass._module.Stream(Tclass._module.X()), $Heap);
    assume _module.__default.map__f#canCall(M#0);
    ##M#2 := _module.__default.map__f($LS($LZ), M#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##M#2, Tclass._module.Stream(Tclass._module.X()), $Heap);
    ##M#4 := N#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##M#4, Tclass._module.Stream(Tclass._module.X()), $Heap);
    assume _module.__default.map__f#canCall(N#0);
    ##N#1 := _module.__default.map__f($LS($LZ), N#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##N#1, Tclass._module.Stream(Tclass._module.X()), $Heap);
    assume _module.__default.append#canCall(Tclass._module.X(), 
      _module.__default.map__f($LS($LZ), M#0), 
      _module.__default.map__f($LS($LZ), N#0));
    assert {:id "id113"} 0 <= k#0;
    assume {:id "id114"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      ORD#FromNat(k#0), 
      $LS($LS($LZ)), 
      _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.map__f($LS($LZ), M#0), 
        _module.__default.map__f($LS($LZ), N#0)));
}



procedure {:verboseName "Theorem1_AutoInd (call)"} Call$$_module.__default.Theorem1__AutoInd(k#0: int where LitInt(0) <= k#0, 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0), 
    N#0: DatatypeType
       where $Is(N#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.append#canCall(Tclass._module.X(), M#0, N#0)
     && _module.__default.map__f#canCall(_module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0))
     && 
    _module.__default.map__f#canCall(M#0)
     && _module.__default.map__f#canCall(N#0)
     && _module.__default.append#canCall(Tclass._module.X(), 
      _module.__default.map__f($LS($LZ), M#0), 
      _module.__default.map__f($LS($LZ), N#0));
  free ensures {:id "id115"} $PrefixEq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    ORD#FromNat(k#0), 
    $LS($LS($LZ)), 
    _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0)), 
    _module.__default.append(Tclass._module.X(), 
      $LS($LZ), 
      _module.__default.map__f($LS($LZ), M#0), 
      _module.__default.map__f($LS($LZ), N#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem1_AutoInd (correctness)"} Impl$$_module.__default.Theorem1__AutoInd(k#0: int where LitInt(0) <= k#0, 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0), 
    N#0: DatatypeType
       where $Is(N#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.append#canCall(Tclass._module.X(), M#0, N#0)
     && _module.__default.map__f#canCall(_module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0))
     && 
    _module.__default.map__f#canCall(M#0)
     && _module.__default.map__f#canCall(N#0)
     && _module.__default.append#canCall(Tclass._module.X(), 
      _module.__default.map__f($LS($LZ), M#0), 
      _module.__default.map__f($LS($LZ), N#0));
  ensures {:id "id116"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      ORD#FromNat(k#0), 
      $LS($LS($LZ)), 
      _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.map__f($LS($LZ), M#0), 
        _module.__default.map__f($LS($LZ), N#0)))
     || (0 < k#0
       ==> 
      _module.Stream.Nil_q(_module.__default.map__f($LS($LS($LZ)), 
          _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#0, N#0)))
       ==> _module.Stream.Nil_q(_module.__default.append(Tclass._module.X(), 
          $LS($LS($LZ)), 
          _module.__default.map__f($LS($LS($LZ)), M#0), 
          _module.__default.map__f($LS($LS($LZ)), N#0))));
  ensures {:id "id117"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      ORD#FromNat(k#0), 
      $LS($LS($LZ)), 
      _module.__default.map__f($LS($LZ), _module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.map__f($LS($LZ), M#0), 
        _module.__default.map__f($LS($LZ), N#0)))
     || (0 < k#0
       ==> 
      _module.Stream.Cons_q(_module.__default.map__f($LS($LS($LZ)), 
          _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#0, N#0)))
       ==> _module.Stream.Cons_q(_module.__default.append(Tclass._module.X(), 
            $LS($LS($LZ)), 
            _module.__default.map__f($LS($LS($LZ)), M#0), 
            _module.__default.map__f($LS($LS($LZ)), N#0)))
         && 
        _module.Stream.head(_module.__default.map__f($LS($LS($LZ)), 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#0, N#0)))
           == _module.Stream.head(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              _module.__default.map__f($LS($LS($LZ)), M#0), 
              _module.__default.map__f($LS($LS($LZ)), N#0)))
         && $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          ORD#FromNat(k#0 - 1), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.map__f($LS($LS($LZ)), 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#0, N#0))), 
          _module.Stream.tail(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              _module.__default.map__f($LS($LS($LZ)), M#0), 
              _module.__default.map__f($LS($LS($LZ)), N#0)))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem1_AutoInd (correctness)"} Impl$$_module.__default.Theorem1__AutoInd(k#0: int, M#0: DatatypeType, N#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: Theorem1_AutoInd, Impl$$_module.__default.Theorem1__AutoInd
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(M#0);
    assume $IsA#_module.Stream(N#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#k0#0: int, $ih#M0#0: DatatypeType, $ih#N0#0: DatatypeType :: 
      { $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          ORD#FromNat($ih#k0#0), 
          $LS($LS($LZ)), 
          _module.__default.map__f($LS($LZ), 
            _module.__default.append(Tclass._module.X(), $LS($LZ), $ih#M0#0, $ih#N0#0)), 
          _module.__default.append(Tclass._module.X(), 
            $LS($LZ), 
            _module.__default.map__f($LS($LZ), $ih#M0#0), 
            _module.__default.map__f($LS($LZ), $ih#N0#0))) } 
      LitInt(0) <= $ih#k0#0
           && $Is($ih#M0#0, Tclass._module.Stream(Tclass._module.X()))
           && $Is($ih#N0#0, Tclass._module.Stream(Tclass._module.X()))
           && Lit(true)
           && 
          0 <= $ih#k0#0
           && $ih#k0#0 < k#0
         ==> $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          ORD#FromNat($ih#k0#0), 
          $LS($LS($LZ)), 
          _module.__default.map__f($LS($LZ), 
            _module.__default.append(Tclass._module.X(), $LS($LZ), $ih#M0#0, $ih#N0#0)), 
          _module.__default.append(Tclass._module.X(), 
            $LS($LZ), 
            _module.__default.map__f($LS($LZ), $ih#M0#0), 
            _module.__default.map__f($LS($LZ), $ih#N0#0))));
    $_reverifyPost := false;
}



procedure {:verboseName "Theorem1_AutoForall (well-formedness)"} CheckWellFormed$$_module.__default.Theorem1__AutoForall();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Theorem1_AutoForall (call)"} Call$$_module.__default.Theorem1__AutoForall();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem1_AutoForall (correctness)"} Impl$$_module.__default.Theorem1__AutoForall() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem2 (well-formedness)"} CheckWellFormed$$_module.__default.Theorem2(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Theorem2 (call)"} Call$$_module.__default.Theorem2(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(_module.__default.append(Tclass._module.X(), $LS($LZ), Lit(#_module.Stream.Nil()), M#0))
     && $IsA#_module.Stream(M#0)
     && _module.__default.append#canCall(Tclass._module.X(), Lit(#_module.Stream.Nil()), M#0);
  ensures {:id "id119"} $Eq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    $LS($LS($LZ)), 
    _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), Lit(#_module.Stream.Nil()), M#0), 
    M#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem2 (correctness)"} Impl$$_module.__default.Theorem2(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(_module.__default.append(Tclass._module.X(), $LS($LZ), Lit(#_module.Stream.Nil()), M#0))
     && $IsA#_module.Stream(M#0)
     && _module.__default.append#canCall(Tclass._module.X(), Lit(#_module.Stream.Nil()), M#0);
  ensures {:id "id120"} $Eq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    $LS($LS($LZ)), 
    _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), Lit(#_module.Stream.Nil()), M#0), 
    M#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem2 (correctness)"} Impl$$_module.__default.Theorem2(M#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: Theorem2, Impl$$_module.__default.Theorem2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(M#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#M0#0: DatatypeType :: 
      { _module.__default.append(Tclass._module.X(), $LS($LZ), Lit(#_module.Stream.Nil()), $ih#M0#0) } 
      true);
    $_reverifyPost := false;
}



procedure {:verboseName "Theorem3 (well-formedness)"} CheckWellFormed$$_module.__default.Theorem3(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Theorem3 (call)"} Call$$_module.__default.Theorem3(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(_module.__default.append(Tclass._module.X(), $LS($LZ), M#0, Lit(#_module.Stream.Nil())))
     && $IsA#_module.Stream(M#0)
     && _module.__default.append#canCall(Tclass._module.X(), M#0, Lit(#_module.Stream.Nil()));
  ensures {:id "id122"} $Eq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    $LS($LS($LZ)), 
    _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#0, Lit(#_module.Stream.Nil())), 
    M#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem3# (co-call)"} CoCall$$_module.__default.Theorem3_h(_k#0: Box, 
    M#1: DatatypeType
       where $Is(M#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.append#canCall(Tclass._module.X(), M#1, Lit(#_module.Stream.Nil()));
  free ensures {:id "id123"} $PrefixEq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    _k#0, 
    $LS($LS($LZ)), 
    _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, Lit(#_module.Stream.Nil())), 
    M#1);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem3# (correctness)"} Impl$$_module.__default.Theorem3_h(_k#0: Box, 
    M#1: DatatypeType
       where $Is(M#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#1))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.append#canCall(Tclass._module.X(), M#1, Lit(#_module.Stream.Nil()));
  ensures {:id "id124"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, Lit(#_module.Stream.Nil())), 
      M#1)
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Nil_q(_module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, Lit(#_module.Stream.Nil())))
       ==> _module.Stream.Nil_q(M#1));
  ensures {:id "id125"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, Lit(#_module.Stream.Nil())), 
      M#1)
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Cons_q(_module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, Lit(#_module.Stream.Nil())))
       ==> _module.Stream.Cons_q(M#1)
         && 
        _module.Stream.head(_module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, Lit(#_module.Stream.Nil())))
           == _module.Stream.head(M#1)
         && $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, Lit(#_module.Stream.Nil()))), 
          _module.Stream.tail(M#1)));
  ensures {:id "id126"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, Lit(#_module.Stream.Nil())), 
      M#1)
     || 
    (0 < ORD#Offset(_k#0)
       ==> (_module.Stream.Nil_q(_module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, Lit(#_module.Stream.Nil())))
           ==> _module.Stream.Nil_q(M#1))
         && (_module.Stream.Cons_q(_module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, Lit(#_module.Stream.Nil())))
           ==> _module.Stream.Cons_q(M#1)
             && 
            _module.Stream.head(_module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, Lit(#_module.Stream.Nil())))
               == _module.Stream.head(M#1)
             && $PrefixEq#_module.Stream(Tclass._module.X(), 
              Tclass._module.X(), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              $LS($LS($LZ)), 
              _module.Stream.tail(_module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, Lit(#_module.Stream.Nil()))), 
              _module.Stream.tail(M#1))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.Stream(Tclass._module.X(), 
        Tclass._module.X(), 
        $LS($LS($LZ)), 
        _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, Lit(#_module.Stream.Nil())), 
        M#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem3# (correctness)"} Impl$$_module.__default.Theorem3_h(_k#0: Box, M#1: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var N#0: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var x#0: Box;
  var let#0_0_1#0#0: Box;
  var _k##0: Box;
  var M##0: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Theorem3#, Impl$$_module.__default.Theorem3_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(M#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#M0#0: DatatypeType :: 
      { $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.append(Tclass._module.X(), $LS($LZ), $ih#M0#0, Lit(#_module.Stream.Nil())), 
          $ih#M0#0) } 
      $Is($ih#M0#0, Tclass._module.Stream(Tclass._module.X()))
           && Lit(true)
           && ORD#Less($ih#_k0#0, _k#0)
         ==> $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.append(Tclass._module.X(), $LS($LZ), $ih#M0#0, Lit(#_module.Stream.Nil())), 
          $ih#M0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(140,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        assume true;
        havoc _mcc#0#0, _mcc#1#0;
        if (M#1 == #_module.Stream.Nil())
        {
        }
        else if (M#1 == #_module.Stream.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, Tclass._module.X())
               && $IsAllocBox(_mcc#0#0, Tclass._module.X(), $Heap);
            assume $Is(_mcc#1#0, Tclass._module.Stream(Tclass._module.X()))
               && $IsAlloc(_mcc#1#0, Tclass._module.Stream(Tclass._module.X()), $Heap);
            havoc N#0;
            assume $Is(N#0, Tclass._module.Stream(Tclass._module.X()))
               && $IsAlloc(N#0, Tclass._module.Stream(Tclass._module.X()), $Heap);
            assume {:id "id127"} let#0_0_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.Stream(Tclass._module.X()));
            assume {:id "id128"} N#0 == let#0_0_0#0#0;
            havoc x#0;
            assume $IsBox(x#0, Tclass._module.X()) && $IsAllocBox(x#0, Tclass._module.X(), $Heap);
            assume {:id "id129"} let#0_0_1#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#0_0_1#0#0, Tclass._module.X());
            assume {:id "id130"} x#0 == let#0_0_1#0#0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(144,15)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id131"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id132"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
            assume true;
            // ProcessCallStmt: CheckSubrange
            M##0 := N#0;
            call {:id "id133"} CoCall$$_module.__default.Theorem3_h(_k##0, M##0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
            assume false;
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(140,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box, M#2: DatatypeType :: 
          { _module.__default.append(Tclass._module.X(), $LS($LZ), M#2, #_module.Stream.Nil()), ORD#Less(_k'#0, _k#0) } 
          $Is(M#2, Tclass._module.Stream(Tclass._module.X())) && ORD#Less(_k'#0, _k#0)
             ==> $PrefixEq#_module.Stream(Tclass._module.X(), 
              Tclass._module.X(), 
              _k'#0, 
              $LS($LS($LZ)), 
              _module.__default.append(Tclass._module.X(), $LS($LZ), M#2, Lit(#_module.Stream.Nil())), 
              M#2));
    }
}



procedure {:verboseName "Theorem3_Alt (well-formedness)"} CheckWellFormed$$_module.__default.Theorem3__Alt(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Theorem3_Alt (call)"} Call$$_module.__default.Theorem3__Alt(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(_module.__default.append(Tclass._module.X(), $LS($LZ), M#0, Lit(#_module.Stream.Nil())))
     && $IsA#_module.Stream(M#0)
     && _module.__default.append#canCall(Tclass._module.X(), M#0, Lit(#_module.Stream.Nil()));
  ensures {:id "id135"} $Eq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    $LS($LS($LZ)), 
    _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#0, Lit(#_module.Stream.Nil())), 
    M#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem3_Alt# (co-call)"} CoCall$$_module.__default.Theorem3__Alt_h(_k#0: Box, 
    M#1: DatatypeType
       where $Is(M#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.append#canCall(Tclass._module.X(), M#1, Lit(#_module.Stream.Nil()));
  free ensures {:id "id136"} $PrefixEq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    _k#0, 
    $LS($LS($LZ)), 
    _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, Lit(#_module.Stream.Nil())), 
    M#1);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem3_Alt# (correctness)"} Impl$$_module.__default.Theorem3__Alt_h(_k#0: Box, 
    M#1: DatatypeType
       where $Is(M#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#1))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.append#canCall(Tclass._module.X(), M#1, Lit(#_module.Stream.Nil()));
  ensures {:id "id137"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, Lit(#_module.Stream.Nil())), 
      M#1)
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Nil_q(_module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, Lit(#_module.Stream.Nil())))
       ==> _module.Stream.Nil_q(M#1));
  ensures {:id "id138"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, Lit(#_module.Stream.Nil())), 
      M#1)
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Cons_q(_module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, Lit(#_module.Stream.Nil())))
       ==> _module.Stream.Cons_q(M#1)
         && 
        _module.Stream.head(_module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, Lit(#_module.Stream.Nil())))
           == _module.Stream.head(M#1)
         && $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, Lit(#_module.Stream.Nil()))), 
          _module.Stream.tail(M#1)));
  ensures {:id "id139"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, Lit(#_module.Stream.Nil())), 
      M#1)
     || 
    (0 < ORD#Offset(_k#0)
       ==> (_module.Stream.Nil_q(_module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, Lit(#_module.Stream.Nil())))
           ==> _module.Stream.Nil_q(M#1))
         && (_module.Stream.Cons_q(_module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, Lit(#_module.Stream.Nil())))
           ==> _module.Stream.Cons_q(M#1)
             && 
            _module.Stream.head(_module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, Lit(#_module.Stream.Nil())))
               == _module.Stream.head(M#1)
             && $PrefixEq#_module.Stream(Tclass._module.X(), 
              Tclass._module.X(), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              $LS($LS($LZ)), 
              _module.Stream.tail(_module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, Lit(#_module.Stream.Nil()))), 
              _module.Stream.tail(M#1))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.Stream(Tclass._module.X(), 
        Tclass._module.X(), 
        $LS($LS($LZ)), 
        _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, Lit(#_module.Stream.Nil())), 
        M#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem3_Alt# (correctness)"} Impl$$_module.__default.Theorem3__Alt_h(_k#0: Box, M#1: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _k##0: Box;
  var M##0: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Theorem3_Alt#, Impl$$_module.__default.Theorem3__Alt_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(M#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#M0#0: DatatypeType :: 
      { $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.append(Tclass._module.X(), $LS($LZ), $ih#M0#0, Lit(#_module.Stream.Nil())), 
          $ih#M0#0) } 
      $Is($ih#M0#0, Tclass._module.Stream(Tclass._module.X()))
           && Lit(true)
           && ORD#Less($ih#_k0#0, _k#0)
         ==> $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.append(Tclass._module.X(), $LS($LZ), $ih#M0#0, Lit(#_module.Stream.Nil())), 
          $ih#M0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(149,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(150,3)
        assume true;
        if (_module.Stream.Cons_q(M#1))
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(151,17)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id140"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id141"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
            assert {:id "id142"} _module.Stream.Cons_q(M#1);
            assume true;
            // ProcessCallStmt: CheckSubrange
            M##0 := _module.Stream.tail(M#1);
            call {:id "id143"} CoCall$$_module.__default.Theorem3__Alt_h(_k##0, M##0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(149,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box, M#2: DatatypeType :: 
          { _module.__default.append(Tclass._module.X(), $LS($LZ), M#2, #_module.Stream.Nil()), ORD#Less(_k'#0, _k#0) } 
          $Is(M#2, Tclass._module.Stream(Tclass._module.X())) && ORD#Less(_k'#0, _k#0)
             ==> $PrefixEq#_module.Stream(Tclass._module.X(), 
              Tclass._module.X(), 
              _k'#0, 
              $LS($LS($LZ)), 
              _module.__default.append(Tclass._module.X(), $LS($LZ), M#2, Lit(#_module.Stream.Nil())), 
              M#2));
    }
}



procedure {:verboseName "Theorem4 (well-formedness)"} CheckWellFormed$$_module.__default.Theorem4(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0), 
    N#0: DatatypeType
       where $Is(N#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#0), 
    P#0: DatatypeType
       where $Is(P#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(P#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(P#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Theorem4 (call)"} Call$$_module.__default.Theorem4(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0), 
    N#0: DatatypeType
       where $Is(N#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#0), 
    P#0: DatatypeType
       where $Is(P#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(P#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(P#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(_module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        M#0, 
        _module.__default.append(Tclass._module.X(), $LS($LZ), N#0, P#0)))
     && $IsA#_module.Stream(_module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0), 
        P#0))
     && 
    _module.__default.append#canCall(Tclass._module.X(), N#0, P#0)
     && _module.__default.append#canCall(Tclass._module.X(), 
      M#0, 
      _module.__default.append(Tclass._module.X(), $LS($LZ), N#0, P#0))
     && 
    _module.__default.append#canCall(Tclass._module.X(), M#0, N#0)
     && _module.__default.append#canCall(Tclass._module.X(), 
      _module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0), 
      P#0);
  ensures {:id "id145"} $Eq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    $LS($LS($LZ)), 
    _module.__default.append(Tclass._module.X(), 
      $LS($LS($LZ)), 
      M#0, 
      _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), N#0, P#0)), 
    _module.__default.append(Tclass._module.X(), 
      $LS($LS($LZ)), 
      _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#0, N#0), 
      P#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem4# (co-call)"} CoCall$$_module.__default.Theorem4_h(_k#0: Box, 
    M#1: DatatypeType
       where $Is(M#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#1), 
    N#1: DatatypeType
       where $Is(N#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#1), 
    P#1: DatatypeType
       where $Is(P#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(P#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(P#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.append#canCall(Tclass._module.X(), N#1, P#1)
     && _module.__default.append#canCall(Tclass._module.X(), 
      M#1, 
      _module.__default.append(Tclass._module.X(), $LS($LZ), N#1, P#1))
     && 
    _module.__default.append#canCall(Tclass._module.X(), M#1, N#1)
     && _module.__default.append#canCall(Tclass._module.X(), 
      _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1), 
      P#1);
  free ensures {:id "id146"} $PrefixEq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    _k#0, 
    $LS($LS($LZ)), 
    _module.__default.append(Tclass._module.X(), 
      $LS($LZ), 
      M#1, 
      _module.__default.append(Tclass._module.X(), $LS($LZ), N#1, P#1)), 
    _module.__default.append(Tclass._module.X(), 
      $LS($LZ), 
      _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1), 
      P#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem4# (correctness)"} Impl$$_module.__default.Theorem4_h(_k#0: Box, 
    M#1: DatatypeType
       where $Is(M#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#1), 
    N#1: DatatypeType
       where $Is(N#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#1), 
    P#1: DatatypeType
       where $Is(P#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(P#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(P#1))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.append#canCall(Tclass._module.X(), N#1, P#1)
     && _module.__default.append#canCall(Tclass._module.X(), 
      M#1, 
      _module.__default.append(Tclass._module.X(), $LS($LZ), N#1, P#1))
     && 
    _module.__default.append#canCall(Tclass._module.X(), M#1, N#1)
     && _module.__default.append#canCall(Tclass._module.X(), 
      _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1), 
      P#1);
  ensures {:id "id147"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        M#1, 
        _module.__default.append(Tclass._module.X(), $LS($LZ), N#1, P#1)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1), 
        P#1))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Nil_q(_module.__default.append(Tclass._module.X(), 
          $LS($LS($LZ)), 
          M#1, 
          _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), N#1, P#1)))
       ==> _module.Stream.Nil_q(_module.__default.append(Tclass._module.X(), 
          $LS($LS($LZ)), 
          _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1), 
          P#1)));
  ensures {:id "id148"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        M#1, 
        _module.__default.append(Tclass._module.X(), $LS($LZ), N#1, P#1)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1), 
        P#1))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Cons_q(_module.__default.append(Tclass._module.X(), 
          $LS($LS($LZ)), 
          M#1, 
          _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), N#1, P#1)))
       ==> _module.Stream.Cons_q(_module.__default.append(Tclass._module.X(), 
            $LS($LS($LZ)), 
            _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1), 
            P#1))
         && 
        _module.Stream.head(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              M#1, 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), N#1, P#1)))
           == _module.Stream.head(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1), 
              P#1))
         && $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              M#1, 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), N#1, P#1))), 
          _module.Stream.tail(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1), 
              P#1))));
  ensures {:id "id149"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        M#1, 
        _module.__default.append(Tclass._module.X(), $LS($LZ), N#1, P#1)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1), 
        P#1))
     || 
    (0 < ORD#Offset(_k#0)
       ==> (_module.Stream.Nil_q(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              M#1, 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), N#1, P#1)))
           ==> _module.Stream.Nil_q(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1), 
              P#1)))
         && (_module.Stream.Cons_q(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              M#1, 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), N#1, P#1)))
           ==> _module.Stream.Cons_q(_module.__default.append(Tclass._module.X(), 
                $LS($LS($LZ)), 
                _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1), 
                P#1))
             && 
            _module.Stream.head(_module.__default.append(Tclass._module.X(), 
                  $LS($LS($LZ)), 
                  M#1, 
                  _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), N#1, P#1)))
               == _module.Stream.head(_module.__default.append(Tclass._module.X(), 
                  $LS($LS($LZ)), 
                  _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1), 
                  P#1))
             && $PrefixEq#_module.Stream(Tclass._module.X(), 
              Tclass._module.X(), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              $LS($LS($LZ)), 
              _module.Stream.tail(_module.__default.append(Tclass._module.X(), 
                  $LS($LS($LZ)), 
                  M#1, 
                  _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), N#1, P#1))), 
              _module.Stream.tail(_module.__default.append(Tclass._module.X(), 
                  $LS($LS($LZ)), 
                  _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1), 
                  P#1)))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.Stream(Tclass._module.X(), 
        Tclass._module.X(), 
        $LS($LS($LZ)), 
        _module.__default.append(Tclass._module.X(), 
          $LS($LZ), 
          M#1, 
          _module.__default.append(Tclass._module.X(), $LS($LZ), N#1, P#1)), 
        _module.__default.append(Tclass._module.X(), 
          $LS($LZ), 
          _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1), 
          P#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem4# (correctness)"} Impl$$_module.__default.Theorem4_h(_k#0: Box, M#1: DatatypeType, N#1: DatatypeType, P#1: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var M'#0: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var x#0: Box;
  var let#0_0_1#0#0: Box;
  var _k##0: Box;
  var M##0: DatatypeType;
  var N##0: DatatypeType;
  var P##0: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Theorem4#, Impl$$_module.__default.Theorem4_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(M#1);
    assume $IsA#_module.Stream(N#1);
    assume $IsA#_module.Stream(P#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, 
        $ih#M0#0: DatatypeType, 
        $ih#N0#0: DatatypeType, 
        $ih#P0#0: DatatypeType :: 
      { $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.append(Tclass._module.X(), 
            $LS($LZ), 
            $ih#M0#0, 
            _module.__default.append(Tclass._module.X(), $LS($LZ), $ih#N0#0, $ih#P0#0)), 
          _module.__default.append(Tclass._module.X(), 
            $LS($LZ), 
            _module.__default.append(Tclass._module.X(), $LS($LZ), $ih#M0#0, $ih#N0#0), 
            $ih#P0#0)) } 
      $Is($ih#M0#0, Tclass._module.Stream(Tclass._module.X()))
           && $Is($ih#N0#0, Tclass._module.Stream(Tclass._module.X()))
           && $Is($ih#P0#0, Tclass._module.Stream(Tclass._module.X()))
           && Lit(true)
           && ORD#Less($ih#_k0#0, _k#0)
         ==> $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.append(Tclass._module.X(), 
            $LS($LZ), 
            $ih#M0#0, 
            _module.__default.append(Tclass._module.X(), $LS($LZ), $ih#N0#0, $ih#P0#0)), 
          _module.__default.append(Tclass._module.X(), 
            $LS($LZ), 
            _module.__default.append(Tclass._module.X(), $LS($LZ), $ih#M0#0, $ih#N0#0), 
            $ih#P0#0)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(158,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        assume true;
        havoc _mcc#0#0, _mcc#1#0;
        if (M#1 == #_module.Stream.Nil())
        {
        }
        else if (M#1 == #_module.Stream.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, Tclass._module.X())
               && $IsAllocBox(_mcc#0#0, Tclass._module.X(), $Heap);
            assume $Is(_mcc#1#0, Tclass._module.Stream(Tclass._module.X()))
               && $IsAlloc(_mcc#1#0, Tclass._module.Stream(Tclass._module.X()), $Heap);
            havoc M'#0;
            assume $Is(M'#0, Tclass._module.Stream(Tclass._module.X()))
               && $IsAlloc(M'#0, Tclass._module.Stream(Tclass._module.X()), $Heap);
            assume {:id "id150"} let#0_0_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.Stream(Tclass._module.X()));
            assume {:id "id151"} M'#0 == let#0_0_0#0#0;
            havoc x#0;
            assume $IsBox(x#0, Tclass._module.X()) && $IsAllocBox(x#0, Tclass._module.X(), $Heap);
            assume {:id "id152"} let#0_0_1#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#0_0_1#0#0, Tclass._module.X());
            assume {:id "id153"} x#0 == let#0_0_1#0#0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(162,15)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id154"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id155"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
            assume true;
            // ProcessCallStmt: CheckSubrange
            M##0 := M'#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            N##0 := N#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            P##0 := P#1;
            call {:id "id156"} CoCall$$_module.__default.Theorem4_h(_k##0, M##0, N##0, P##0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
            assume false;
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(158,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box, M#2: DatatypeType, N#2: DatatypeType, P#2: DatatypeType :: 
          { _module.__default.append(Tclass._module.X(), 
              $LS($LZ), 
              _module.__default.append(Tclass._module.X(), $LS($LZ), M#2, N#2), 
              P#2), ORD#Less(_k'#0, _k#0) } 
            { _module.__default.append(Tclass._module.X(), 
              $LS($LZ), 
              M#2, 
              _module.__default.append(Tclass._module.X(), $LS($LZ), N#2, P#2)), ORD#Less(_k'#0, _k#0) } 
          $Is(M#2, Tclass._module.Stream(Tclass._module.X()))
               && $Is(N#2, Tclass._module.Stream(Tclass._module.X()))
               && $Is(P#2, Tclass._module.Stream(Tclass._module.X()))
               && ORD#Less(_k'#0, _k#0)
             ==> $PrefixEq#_module.Stream(Tclass._module.X(), 
              Tclass._module.X(), 
              _k'#0, 
              $LS($LS($LZ)), 
              _module.__default.append(Tclass._module.X(), 
                $LS($LZ), 
                M#2, 
                _module.__default.append(Tclass._module.X(), $LS($LZ), N#2, P#2)), 
              _module.__default.append(Tclass._module.X(), 
                $LS($LZ), 
                _module.__default.append(Tclass._module.X(), $LS($LZ), M#2, N#2), 
                P#2)));
    }
}



procedure {:verboseName "Theorem4_Alt (well-formedness)"} CheckWellFormed$$_module.__default.Theorem4__Alt(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0), 
    N#0: DatatypeType
       where $Is(N#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#0), 
    P#0: DatatypeType
       where $Is(P#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(P#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(P#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Theorem4_Alt (call)"} Call$$_module.__default.Theorem4__Alt(M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#0), 
    N#0: DatatypeType
       where $Is(N#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#0), 
    P#0: DatatypeType
       where $Is(P#0, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(P#0, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(P#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(_module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        M#0, 
        _module.__default.append(Tclass._module.X(), $LS($LZ), N#0, P#0)))
     && $IsA#_module.Stream(_module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0), 
        P#0))
     && 
    _module.__default.append#canCall(Tclass._module.X(), N#0, P#0)
     && _module.__default.append#canCall(Tclass._module.X(), 
      M#0, 
      _module.__default.append(Tclass._module.X(), $LS($LZ), N#0, P#0))
     && 
    _module.__default.append#canCall(Tclass._module.X(), M#0, N#0)
     && _module.__default.append#canCall(Tclass._module.X(), 
      _module.__default.append(Tclass._module.X(), $LS($LZ), M#0, N#0), 
      P#0);
  ensures {:id "id158"} $Eq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    $LS($LS($LZ)), 
    _module.__default.append(Tclass._module.X(), 
      $LS($LS($LZ)), 
      M#0, 
      _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), N#0, P#0)), 
    _module.__default.append(Tclass._module.X(), 
      $LS($LS($LZ)), 
      _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#0, N#0), 
      P#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem4_Alt# (co-call)"} CoCall$$_module.__default.Theorem4__Alt_h(_k#0: Box, 
    M#1: DatatypeType
       where $Is(M#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#1), 
    N#1: DatatypeType
       where $Is(N#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#1), 
    P#1: DatatypeType
       where $Is(P#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(P#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(P#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.append#canCall(Tclass._module.X(), N#1, P#1)
     && _module.__default.append#canCall(Tclass._module.X(), 
      M#1, 
      _module.__default.append(Tclass._module.X(), $LS($LZ), N#1, P#1))
     && 
    _module.__default.append#canCall(Tclass._module.X(), M#1, N#1)
     && _module.__default.append#canCall(Tclass._module.X(), 
      _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1), 
      P#1);
  free ensures {:id "id159"} $PrefixEq#_module.Stream(Tclass._module.X(), 
    Tclass._module.X(), 
    _k#0, 
    $LS($LS($LZ)), 
    _module.__default.append(Tclass._module.X(), 
      $LS($LZ), 
      M#1, 
      _module.__default.append(Tclass._module.X(), $LS($LZ), N#1, P#1)), 
    _module.__default.append(Tclass._module.X(), 
      $LS($LZ), 
      _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1), 
      P#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem4_Alt# (correctness)"} Impl$$_module.__default.Theorem4__Alt_h(_k#0: Box, 
    M#1: DatatypeType
       where $Is(M#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(M#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(M#1), 
    N#1: DatatypeType
       where $Is(N#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(N#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(N#1), 
    P#1: DatatypeType
       where $Is(P#1, Tclass._module.Stream(Tclass._module.X()))
         && $IsAlloc(P#1, Tclass._module.Stream(Tclass._module.X()), $Heap)
         && $IsA#_module.Stream(P#1))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.append#canCall(Tclass._module.X(), N#1, P#1)
     && _module.__default.append#canCall(Tclass._module.X(), 
      M#1, 
      _module.__default.append(Tclass._module.X(), $LS($LZ), N#1, P#1))
     && 
    _module.__default.append#canCall(Tclass._module.X(), M#1, N#1)
     && _module.__default.append#canCall(Tclass._module.X(), 
      _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1), 
      P#1);
  ensures {:id "id160"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        M#1, 
        _module.__default.append(Tclass._module.X(), $LS($LZ), N#1, P#1)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1), 
        P#1))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Nil_q(_module.__default.append(Tclass._module.X(), 
          $LS($LS($LZ)), 
          M#1, 
          _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), N#1, P#1)))
       ==> _module.Stream.Nil_q(_module.__default.append(Tclass._module.X(), 
          $LS($LS($LZ)), 
          _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1), 
          P#1)));
  ensures {:id "id161"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        M#1, 
        _module.__default.append(Tclass._module.X(), $LS($LZ), N#1, P#1)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1), 
        P#1))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Cons_q(_module.__default.append(Tclass._module.X(), 
          $LS($LS($LZ)), 
          M#1, 
          _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), N#1, P#1)))
       ==> _module.Stream.Cons_q(_module.__default.append(Tclass._module.X(), 
            $LS($LS($LZ)), 
            _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1), 
            P#1))
         && 
        _module.Stream.head(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              M#1, 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), N#1, P#1)))
           == _module.Stream.head(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1), 
              P#1))
         && $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              M#1, 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), N#1, P#1))), 
          _module.Stream.tail(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1), 
              P#1))));
  ensures {:id "id162"} $PrefixEq#_module.Stream(Tclass._module.X(), 
      Tclass._module.X(), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        M#1, 
        _module.__default.append(Tclass._module.X(), $LS($LZ), N#1, P#1)), 
      _module.__default.append(Tclass._module.X(), 
        $LS($LZ), 
        _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1), 
        P#1))
     || 
    (0 < ORD#Offset(_k#0)
       ==> (_module.Stream.Nil_q(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              M#1, 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), N#1, P#1)))
           ==> _module.Stream.Nil_q(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1), 
              P#1)))
         && (_module.Stream.Cons_q(_module.__default.append(Tclass._module.X(), 
              $LS($LS($LZ)), 
              M#1, 
              _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), N#1, P#1)))
           ==> _module.Stream.Cons_q(_module.__default.append(Tclass._module.X(), 
                $LS($LS($LZ)), 
                _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1), 
                P#1))
             && 
            _module.Stream.head(_module.__default.append(Tclass._module.X(), 
                  $LS($LS($LZ)), 
                  M#1, 
                  _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), N#1, P#1)))
               == _module.Stream.head(_module.__default.append(Tclass._module.X(), 
                  $LS($LS($LZ)), 
                  _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1), 
                  P#1))
             && $PrefixEq#_module.Stream(Tclass._module.X(), 
              Tclass._module.X(), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              $LS($LS($LZ)), 
              _module.Stream.tail(_module.__default.append(Tclass._module.X(), 
                  $LS($LS($LZ)), 
                  M#1, 
                  _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), N#1, P#1))), 
              _module.Stream.tail(_module.__default.append(Tclass._module.X(), 
                  $LS($LS($LZ)), 
                  _module.__default.append(Tclass._module.X(), $LS($LS($LZ)), M#1, N#1), 
                  P#1)))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.Stream(Tclass._module.X(), 
        Tclass._module.X(), 
        $LS($LS($LZ)), 
        _module.__default.append(Tclass._module.X(), 
          $LS($LZ), 
          M#1, 
          _module.__default.append(Tclass._module.X(), $LS($LZ), N#1, P#1)), 
        _module.__default.append(Tclass._module.X(), 
          $LS($LZ), 
          _module.__default.append(Tclass._module.X(), $LS($LZ), M#1, N#1), 
          P#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem4_Alt# (correctness)"} Impl$$_module.__default.Theorem4__Alt_h(_k#0: Box, M#1: DatatypeType, N#1: DatatypeType, P#1: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _k##0: Box;
  var M##0: DatatypeType;
  var N##0: DatatypeType;
  var P##0: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Theorem4_Alt#, Impl$$_module.__default.Theorem4__Alt_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(M#1);
    assume $IsA#_module.Stream(N#1);
    assume $IsA#_module.Stream(P#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, 
        $ih#M0#0: DatatypeType, 
        $ih#N0#0: DatatypeType, 
        $ih#P0#0: DatatypeType :: 
      { $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.append(Tclass._module.X(), 
            $LS($LZ), 
            $ih#M0#0, 
            _module.__default.append(Tclass._module.X(), $LS($LZ), $ih#N0#0, $ih#P0#0)), 
          _module.__default.append(Tclass._module.X(), 
            $LS($LZ), 
            _module.__default.append(Tclass._module.X(), $LS($LZ), $ih#M0#0, $ih#N0#0), 
            $ih#P0#0)) } 
      $Is($ih#M0#0, Tclass._module.Stream(Tclass._module.X()))
           && $Is($ih#N0#0, Tclass._module.Stream(Tclass._module.X()))
           && $Is($ih#P0#0, Tclass._module.Stream(Tclass._module.X()))
           && Lit(true)
           && ORD#Less($ih#_k0#0, _k#0)
         ==> $PrefixEq#_module.Stream(Tclass._module.X(), 
          Tclass._module.X(), 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.append(Tclass._module.X(), 
            $LS($LZ), 
            $ih#M0#0, 
            _module.__default.append(Tclass._module.X(), $LS($LZ), $ih#N0#0, $ih#P0#0)), 
          _module.__default.append(Tclass._module.X(), 
            $LS($LZ), 
            _module.__default.append(Tclass._module.X(), $LS($LZ), $ih#M0#0, $ih#N0#0), 
            $ih#P0#0)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(167,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(168,3)
        assume true;
        if (_module.Stream.Cons_q(M#1))
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(169,17)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id163"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id164"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
            assert {:id "id165"} _module.Stream.Cons_q(M#1);
            assume true;
            // ProcessCallStmt: CheckSubrange
            M##0 := _module.Stream.tail(M#1);
            assume true;
            // ProcessCallStmt: CheckSubrange
            N##0 := N#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            P##0 := P#1;
            call {:id "id166"} CoCall$$_module.__default.Theorem4__Alt_h(_k##0, M##0, N##0, P##0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(167,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box, M#2: DatatypeType, N#2: DatatypeType, P#2: DatatypeType :: 
          { _module.__default.append(Tclass._module.X(), 
              $LS($LZ), 
              _module.__default.append(Tclass._module.X(), $LS($LZ), M#2, N#2), 
              P#2), ORD#Less(_k'#0, _k#0) } 
            { _module.__default.append(Tclass._module.X(), 
              $LS($LZ), 
              M#2, 
              _module.__default.append(Tclass._module.X(), $LS($LZ), N#2, P#2)), ORD#Less(_k'#0, _k#0) } 
          $Is(M#2, Tclass._module.Stream(Tclass._module.X()))
               && $Is(N#2, Tclass._module.Stream(Tclass._module.X()))
               && $Is(P#2, Tclass._module.Stream(Tclass._module.X()))
               && ORD#Less(_k'#0, _k#0)
             ==> $PrefixEq#_module.Stream(Tclass._module.X(), 
              Tclass._module.X(), 
              _k'#0, 
              $LS($LS($LZ)), 
              _module.__default.append(Tclass._module.X(), 
                $LS($LZ), 
                M#2, 
                _module.__default.append(Tclass._module.X(), $LS($LZ), N#2, P#2)), 
              _module.__default.append(Tclass._module.X(), 
                $LS($LZ), 
                _module.__default.append(Tclass._module.X(), $LS($LZ), M#2, N#2), 
                P#2)));
    }
}



// function declaration for _module._default.FlattenStartMarker
function _module.__default.FlattenStartMarker(_module._default.FlattenStartMarker$T: Ty, M#0: DatatypeType, startMarker#0: Box)
   : DatatypeType
uses {
// consequence axiom for _module.__default.FlattenStartMarker
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.FlattenStartMarker$T: Ty, M#0: DatatypeType, startMarker#0: Box :: 
    { _module.__default.FlattenStartMarker(_module._default.FlattenStartMarker$T, M#0, startMarker#0) } 
    _module.__default.FlattenStartMarker#canCall(_module._default.FlattenStartMarker$T, M#0, startMarker#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(M#0, 
            Tclass._module.Stream(Tclass._module.Stream(_module._default.FlattenStartMarker$T)))
           && $IsBox(startMarker#0, _module._default.FlattenStartMarker$T))
       ==> $Is(_module.__default.FlattenStartMarker(_module._default.FlattenStartMarker$T, M#0, startMarker#0), 
        Tclass._module.Stream(_module._default.FlattenStartMarker$T)));
// alloc consequence axiom for _module.__default.FlattenStartMarker
axiom 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.FlattenStartMarker$T: Ty, 
      M#0: DatatypeType, 
      startMarker#0: Box :: 
    { $IsAlloc(_module.__default.FlattenStartMarker(_module._default.FlattenStartMarker$T, M#0, startMarker#0), 
        Tclass._module.Stream(_module._default.FlattenStartMarker$T), 
        $Heap) } 
    (_module.__default.FlattenStartMarker#canCall(_module._default.FlattenStartMarker$T, M#0, startMarker#0)
           || (2 < $FunctionContextHeight
             && 
            $Is(M#0, 
              Tclass._module.Stream(Tclass._module.Stream(_module._default.FlattenStartMarker$T)))
             && $IsAlloc(M#0, 
              Tclass._module.Stream(Tclass._module.Stream(_module._default.FlattenStartMarker$T)), 
              $Heap)
             && 
            $IsBox(startMarker#0, _module._default.FlattenStartMarker$T)
             && $IsAllocBox(startMarker#0, _module._default.FlattenStartMarker$T, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.FlattenStartMarker(_module._default.FlattenStartMarker$T, M#0, startMarker#0), 
        Tclass._module.Stream(_module._default.FlattenStartMarker$T), 
        $Heap));
// definition axiom for _module.__default.FlattenStartMarker (revealed)
axiom {:id "id167"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.FlattenStartMarker$T: Ty, M#0: DatatypeType, startMarker#0: Box :: 
    { _module.__default.FlattenStartMarker(_module._default.FlattenStartMarker$T, M#0, startMarker#0) } 
    _module.__default.FlattenStartMarker#canCall(_module._default.FlattenStartMarker$T, M#0, startMarker#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(M#0, 
            Tclass._module.Stream(Tclass._module.Stream(_module._default.FlattenStartMarker$T)))
           && $IsBox(startMarker#0, _module._default.FlattenStartMarker$T))
       ==> _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.FlattenStartMarker$T, 
          Lit(#_module.Stream.Nil()), 
          M#0, 
          startMarker#0)
         && _module.__default.FlattenStartMarker(_module._default.FlattenStartMarker$T, M#0, startMarker#0)
           == _module.__default.PrependThenFlattenStartMarker(_module._default.FlattenStartMarker$T, 
            $LS($LZ), 
            Lit(#_module.Stream.Nil()), 
            M#0, 
            startMarker#0));
// definition axiom for _module.__default.FlattenStartMarker for all literals (revealed)
axiom {:id "id168"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.FlattenStartMarker$T: Ty, M#0: DatatypeType, startMarker#0: Box :: 
    {:weight 3} { _module.__default.FlattenStartMarker(_module._default.FlattenStartMarker$T, Lit(M#0), Lit(startMarker#0)) } 
    _module.__default.FlattenStartMarker#canCall(_module._default.FlattenStartMarker$T, Lit(M#0), Lit(startMarker#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(M#0, 
            Tclass._module.Stream(Tclass._module.Stream(_module._default.FlattenStartMarker$T)))
           && $IsBox(startMarker#0, _module._default.FlattenStartMarker$T))
       ==> _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.FlattenStartMarker$T, 
          Lit(#_module.Stream.Nil()), 
          Lit(M#0), 
          Lit(startMarker#0))
         && _module.__default.FlattenStartMarker(_module._default.FlattenStartMarker$T, Lit(M#0), Lit(startMarker#0))
           == Lit(_module.__default.PrependThenFlattenStartMarker(_module._default.FlattenStartMarker$T, 
              $LS($LZ), 
              Lit(#_module.Stream.Nil()), 
              Lit(M#0), 
              Lit(startMarker#0))));
}

function _module.__default.FlattenStartMarker#canCall(_module._default.FlattenStartMarker$T: Ty, M#0: DatatypeType, startMarker#0: Box)
   : bool;

function _module.__default.FlattenStartMarker#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for _module.__default.FlattenStartMarker
axiom (forall _module._default.FlattenStartMarker$T: Ty, M#0: DatatypeType, startMarker#0: Box :: 
  { _module.__default.FlattenStartMarker#requires(_module._default.FlattenStartMarker$T, M#0, startMarker#0) } 
  $Is(M#0, 
        Tclass._module.Stream(Tclass._module.Stream(_module._default.FlattenStartMarker$T)))
       && $IsBox(startMarker#0, _module._default.FlattenStartMarker$T)
     ==> _module.__default.FlattenStartMarker#requires(_module._default.FlattenStartMarker$T, M#0, startMarker#0)
       == true);

procedure {:verboseName "FlattenStartMarker (well-formedness)"} CheckWellformed$$_module.__default.FlattenStartMarker(_module._default.FlattenStartMarker$T: Ty, 
    M#0: DatatypeType
       where $Is(M#0, 
        Tclass._module.Stream(Tclass._module.Stream(_module._default.FlattenStartMarker$T))), 
    startMarker#0: Box
       where $IsBox(startMarker#0, _module._default.FlattenStartMarker$T));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.PrependThenFlattenStartMarker
function _module.__default.PrependThenFlattenStartMarker(_module._default.PrependThenFlattenStartMarker$T: Ty, 
    $ly: LayerType, 
    prefix#0: DatatypeType, 
    M#0: DatatypeType, 
    startMarker#0: Box)
   : DatatypeType
uses {
// consequence axiom for _module.__default.PrependThenFlattenStartMarker
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.PrependThenFlattenStartMarker$T: Ty, 
      $ly: LayerType, 
      prefix#0: DatatypeType, 
      M#0: DatatypeType, 
      startMarker#0: Box :: 
    { _module.__default.PrependThenFlattenStartMarker(_module._default.PrependThenFlattenStartMarker$T, 
        $ly, 
        prefix#0, 
        M#0, 
        startMarker#0) } 
    _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.PrependThenFlattenStartMarker$T, prefix#0, M#0, startMarker#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(prefix#0, 
            Tclass._module.Stream(_module._default.PrependThenFlattenStartMarker$T))
           && $Is(M#0, 
            Tclass._module.Stream(Tclass._module.Stream(_module._default.PrependThenFlattenStartMarker$T)))
           && $IsBox(startMarker#0, _module._default.PrependThenFlattenStartMarker$T))
       ==> $Is(_module.__default.PrependThenFlattenStartMarker(_module._default.PrependThenFlattenStartMarker$T, 
          $ly, 
          prefix#0, 
          M#0, 
          startMarker#0), 
        Tclass._module.Stream(_module._default.PrependThenFlattenStartMarker$T)));
// alloc consequence axiom for _module.__default.PrependThenFlattenStartMarker
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.PrependThenFlattenStartMarker$T: Ty, 
      $ly: LayerType, 
      prefix#0: DatatypeType, 
      M#0: DatatypeType, 
      startMarker#0: Box :: 
    { $IsAlloc(_module.__default.PrependThenFlattenStartMarker(_module._default.PrependThenFlattenStartMarker$T, 
          $ly, 
          prefix#0, 
          M#0, 
          startMarker#0), 
        Tclass._module.Stream(_module._default.PrependThenFlattenStartMarker$T), 
        $Heap) } 
    (_module.__default.PrependThenFlattenStartMarker#canCall(_module._default.PrependThenFlattenStartMarker$T, prefix#0, M#0, startMarker#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(prefix#0, 
              Tclass._module.Stream(_module._default.PrependThenFlattenStartMarker$T))
             && $IsAlloc(prefix#0, 
              Tclass._module.Stream(_module._default.PrependThenFlattenStartMarker$T), 
              $Heap)
             && 
            $Is(M#0, 
              Tclass._module.Stream(Tclass._module.Stream(_module._default.PrependThenFlattenStartMarker$T)))
             && $IsAlloc(M#0, 
              Tclass._module.Stream(Tclass._module.Stream(_module._default.PrependThenFlattenStartMarker$T)), 
              $Heap)
             && 
            $IsBox(startMarker#0, _module._default.PrependThenFlattenStartMarker$T)
             && $IsAllocBox(startMarker#0, _module._default.PrependThenFlattenStartMarker$T, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.PrependThenFlattenStartMarker(_module._default.PrependThenFlattenStartMarker$T, 
          $ly, 
          prefix#0, 
          M#0, 
          startMarker#0), 
        Tclass._module.Stream(_module._default.PrependThenFlattenStartMarker$T), 
        $Heap));
// definition axiom for _module.__default.PrependThenFlattenStartMarker (revealed)
axiom {:id "id170"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.PrependThenFlattenStartMarker$T: Ty, 
      $ly: LayerType, 
      prefix#0: DatatypeType, 
      M#0: DatatypeType, 
      startMarker#0: Box :: 
    { _module.__default.PrependThenFlattenStartMarker(_module._default.PrependThenFlattenStartMarker$T, 
        $LS($ly), 
        prefix#0, 
        M#0, 
        startMarker#0) } 
    _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.PrependThenFlattenStartMarker$T, prefix#0, M#0, startMarker#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(prefix#0, 
            Tclass._module.Stream(_module._default.PrependThenFlattenStartMarker$T))
           && $Is(M#0, 
            Tclass._module.Stream(Tclass._module.Stream(_module._default.PrependThenFlattenStartMarker$T)))
           && $IsBox(startMarker#0, _module._default.PrependThenFlattenStartMarker$T))
       ==> (_module.Stream.Nil_q(prefix#0)
           ==> 
          !_module.Stream.Nil_q(M#0)
           ==> (var N#1 := _module.Stream.tail(M#0); 
            (var s#1 := $Unbox(_module.Stream.head(M#0)): DatatypeType; 
              _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.PrependThenFlattenStartMarker$T, s#1, N#1, startMarker#0))))
         && (!_module.Stream.Nil_q(prefix#0)
           ==> (var tl#1 := _module.Stream.tail(prefix#0); 
            _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.PrependThenFlattenStartMarker$T, tl#1, M#0, startMarker#0)))
         && _module.__default.PrependThenFlattenStartMarker(_module._default.PrependThenFlattenStartMarker$T, 
            $LS($ly), 
            prefix#0, 
            M#0, 
            startMarker#0)
           == (if _module.Stream.Nil_q(prefix#0)
             then (if _module.Stream.Nil_q(M#0)
               then #_module.Stream.Nil()
               else (var N#0 := _module.Stream.tail(M#0); 
                (var s#0 := $Unbox(_module.Stream.head(M#0)): DatatypeType; 
                  #_module.Stream.Cons(startMarker#0, 
                    _module.__default.PrependThenFlattenStartMarker(_module._default.PrependThenFlattenStartMarker$T, $ly, s#0, N#0, startMarker#0)))))
             else (var tl#0 := _module.Stream.tail(prefix#0); 
              (var hd#0 := _module.Stream.head(prefix#0); 
                #_module.Stream.Cons(hd#0, 
                  _module.__default.PrependThenFlattenStartMarker(_module._default.PrependThenFlattenStartMarker$T, $ly, tl#0, M#0, startMarker#0))))));
}

function _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.PrependThenFlattenStartMarker$T: Ty, 
    prefix#0: DatatypeType, 
    M#0: DatatypeType, 
    startMarker#0: Box)
   : bool;

// layer synonym axiom
axiom (forall _module._default.PrependThenFlattenStartMarker$T: Ty, 
    $ly: LayerType, 
    prefix#0: DatatypeType, 
    M#0: DatatypeType, 
    startMarker#0: Box :: 
  { _module.__default.PrependThenFlattenStartMarker(_module._default.PrependThenFlattenStartMarker$T, 
      $LS($ly), 
      prefix#0, 
      M#0, 
      startMarker#0) } 
  _module.__default.PrependThenFlattenStartMarker(_module._default.PrependThenFlattenStartMarker$T, 
      $LS($ly), 
      prefix#0, 
      M#0, 
      startMarker#0)
     == _module.__default.PrependThenFlattenStartMarker(_module._default.PrependThenFlattenStartMarker$T, 
      $ly, 
      prefix#0, 
      M#0, 
      startMarker#0));

// fuel synonym axiom
axiom (forall _module._default.PrependThenFlattenStartMarker$T: Ty, 
    $ly: LayerType, 
    prefix#0: DatatypeType, 
    M#0: DatatypeType, 
    startMarker#0: Box :: 
  { _module.__default.PrependThenFlattenStartMarker(_module._default.PrependThenFlattenStartMarker$T, 
      AsFuelBottom($ly), 
      prefix#0, 
      M#0, 
      startMarker#0) } 
  _module.__default.PrependThenFlattenStartMarker(_module._default.PrependThenFlattenStartMarker$T, 
      $ly, 
      prefix#0, 
      M#0, 
      startMarker#0)
     == _module.__default.PrependThenFlattenStartMarker(_module._default.PrependThenFlattenStartMarker$T, 
      $LZ, 
      prefix#0, 
      M#0, 
      startMarker#0));

function _module.__default.PrependThenFlattenStartMarker#requires(Ty, LayerType, DatatypeType, DatatypeType, Box) : bool;

// #requires axiom for _module.__default.PrependThenFlattenStartMarker
axiom (forall _module._default.PrependThenFlattenStartMarker$T: Ty, 
    $ly: LayerType, 
    prefix#0: DatatypeType, 
    M#0: DatatypeType, 
    startMarker#0: Box :: 
  { _module.__default.PrependThenFlattenStartMarker#requires(_module._default.PrependThenFlattenStartMarker$T, 
      $ly, 
      prefix#0, 
      M#0, 
      startMarker#0) } 
  $Is(prefix#0, 
        Tclass._module.Stream(_module._default.PrependThenFlattenStartMarker$T))
       && $Is(M#0, 
        Tclass._module.Stream(Tclass._module.Stream(_module._default.PrependThenFlattenStartMarker$T)))
       && $IsBox(startMarker#0, _module._default.PrependThenFlattenStartMarker$T)
     ==> _module.__default.PrependThenFlattenStartMarker#requires(_module._default.PrependThenFlattenStartMarker$T, 
        $ly, 
        prefix#0, 
        M#0, 
        startMarker#0)
       == true);

procedure {:verboseName "PrependThenFlattenStartMarker (well-formedness)"} CheckWellformed$$_module.__default.PrependThenFlattenStartMarker(_module._default.PrependThenFlattenStartMarker$T: Ty, 
    prefix#0: DatatypeType
       where $Is(prefix#0, 
        Tclass._module.Stream(_module._default.PrependThenFlattenStartMarker$T)), 
    M#0: DatatypeType
       where $Is(M#0, 
        Tclass._module.Stream(Tclass._module.Stream(_module._default.PrependThenFlattenStartMarker$T))), 
    startMarker#0: Box
       where $IsBox(startMarker#0, _module._default.PrependThenFlattenStartMarker$T));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.StreamOfNonEmpties
function _module.__default.StreamOfNonEmpties(_module._default.StreamOfNonEmpties$_T0: Ty, $ly: LayerType, M#0: DatatypeType)
   : bool
uses {
// definition axiom for _module.__default.StreamOfNonEmpties (revealed)
axiom {:id "id182"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.StreamOfNonEmpties$_T0: Ty, $ly: LayerType, M#0: DatatypeType :: 
    { _module.__default.StreamOfNonEmpties(_module._default.StreamOfNonEmpties$_T0, $LS($ly), M#0) } 
    _module.__default.StreamOfNonEmpties#canCall(_module._default.StreamOfNonEmpties$_T0, M#0)
         || (1 < $FunctionContextHeight
           && $Is(M#0, 
            Tclass._module.Stream(Tclass._module.Stream(_module._default.StreamOfNonEmpties$_T0))))
       ==> (!_module.Stream.Nil_q(M#0)
           ==> (var N#1 := _module.Stream.tail(M#0); 
            (var s#1 := $Unbox(_module.Stream.head(M#0)): DatatypeType; 
              _module.Stream.Cons_q(s#1)
                 ==> _module.__default.StreamOfNonEmpties#canCall(_module._default.StreamOfNonEmpties$_T0, N#1))))
         && _module.__default.StreamOfNonEmpties(_module._default.StreamOfNonEmpties$_T0, $LS($ly), M#0)
           == (if _module.Stream.Nil_q(M#0)
             then true
             else (var N#0 := _module.Stream.tail(M#0); 
              (var s#0 := $Unbox(_module.Stream.head(M#0)): DatatypeType; 
                _module.Stream.Cons_q(s#0)
                   && _module.__default.StreamOfNonEmpties(_module._default.StreamOfNonEmpties$_T0, $ly, N#0)))));
}

function _module.__default.StreamOfNonEmpties#canCall(_module._default.StreamOfNonEmpties$_T0: Ty, M#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.StreamOfNonEmpties$_T0: Ty, $ly: LayerType, M#0: DatatypeType :: 
  { _module.__default.StreamOfNonEmpties(_module._default.StreamOfNonEmpties$_T0, $LS($ly), M#0) } 
  _module.__default.StreamOfNonEmpties(_module._default.StreamOfNonEmpties$_T0, $LS($ly), M#0)
     == _module.__default.StreamOfNonEmpties(_module._default.StreamOfNonEmpties$_T0, $ly, M#0));

// fuel synonym axiom
axiom (forall _module._default.StreamOfNonEmpties$_T0: Ty, $ly: LayerType, M#0: DatatypeType :: 
  { _module.__default.StreamOfNonEmpties(_module._default.StreamOfNonEmpties$_T0, AsFuelBottom($ly), M#0) } 
  _module.__default.StreamOfNonEmpties(_module._default.StreamOfNonEmpties$_T0, $ly, M#0)
     == _module.__default.StreamOfNonEmpties(_module._default.StreamOfNonEmpties$_T0, $LZ, M#0));

function _module.__default.StreamOfNonEmpties#requires(Ty, LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.StreamOfNonEmpties
axiom (forall _module._default.StreamOfNonEmpties$_T0: Ty, $ly: LayerType, M#0: DatatypeType :: 
  { _module.__default.StreamOfNonEmpties#requires(_module._default.StreamOfNonEmpties$_T0, $ly, M#0) } 
  $Is(M#0, 
      Tclass._module.Stream(Tclass._module.Stream(_module._default.StreamOfNonEmpties$_T0)))
     ==> _module.__default.StreamOfNonEmpties#requires(_module._default.StreamOfNonEmpties$_T0, $ly, M#0)
       == true);

// 1st prefix predicate axiom for _module.__default.StreamOfNonEmpties_h
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.StreamOfNonEmpties#$_T0: Ty, $ly: LayerType, M#0: DatatypeType :: 
    { _module.__default.StreamOfNonEmpties(_module._default.StreamOfNonEmpties#$_T0, $LS($ly), M#0) } 
    $Is(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.StreamOfNonEmpties#$_T0)))
         && _module.__default.StreamOfNonEmpties(_module._default.StreamOfNonEmpties#$_T0, $LS($ly), M#0)
       ==> (forall _k#0: Box :: 
        { _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $LS($ly), _k#0, M#0) } 
        _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $LS($ly), _k#0, M#0)));

// 2nd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.StreamOfNonEmpties#$_T0: Ty, $ly: LayerType, M#0: DatatypeType :: 
    { _module.__default.StreamOfNonEmpties(_module._default.StreamOfNonEmpties#$_T0, $LS($ly), M#0) } 
    $Is(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.StreamOfNonEmpties#$_T0)))
         && (forall _k#0: Box :: 
          { _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $LS($ly), _k#0, M#0) } 
          _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $LS($ly), _k#0, M#0))
       ==> _module.__default.StreamOfNonEmpties(_module._default.StreamOfNonEmpties#$_T0, $LS($ly), M#0));

// 3rd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.StreamOfNonEmpties#$_T0: Ty, 
      $ly: LayerType, 
      M#0: DatatypeType, 
      _k#0: Box :: 
    { _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $ly, _k#0, M#0) } 
    $Is(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.StreamOfNonEmpties#$_T0)))
         && _k#0 == ORD#FromNat(0)
       ==> _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $ly, _k#0, M#0));

procedure {:verboseName "StreamOfNonEmpties (well-formedness)"} CheckWellformed$$_module.__default.StreamOfNonEmpties(_module._default.StreamOfNonEmpties$_T0: Ty, 
    M#0: DatatypeType
       where $Is(M#0, 
        Tclass._module.Stream(Tclass._module.Stream(_module._default.StreamOfNonEmpties$_T0))));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.StreamOfNonEmpties#
function _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0: Ty, 
    $ly: LayerType, 
    _k#0: Box, 
    M#0: DatatypeType)
   : bool
uses {
// definition axiom for _module.__default.StreamOfNonEmpties_h (revealed)
axiom {:id "id189"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.StreamOfNonEmpties#$_T0: Ty, 
      $ly: LayerType, 
      _k#0: Box, 
      M#0: DatatypeType :: 
    { _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $LS($ly), _k#0, M#0) } 
    _module.__default.StreamOfNonEmpties_h#canCall(_module._default.StreamOfNonEmpties#$_T0, _k#0, M#0)
         || (2 < $FunctionContextHeight
           && $Is(M#0, 
            Tclass._module.Stream(Tclass._module.Stream(_module._default.StreamOfNonEmpties#$_T0))))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !_module.Stream.Nil_q(M#0)
           ==> (var N#3 := _module.Stream.tail(M#0); 
            (var s#3 := $Unbox(_module.Stream.head(M#0)): DatatypeType; 
              _module.Stream.Cons_q(s#3)
                 ==> _module.__default.StreamOfNonEmpties_h#canCall(_module._default.StreamOfNonEmpties#$_T0, ORD#Minus(_k#0, ORD#FromNat(1)), N#3))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Stream.Nil_q(M#0)
             then true
             else (var N#4 := _module.Stream.tail(M#0); 
              (var s#4 := $Unbox(_module.Stream.head(M#0)): DatatypeType; 
                _module.Stream.Cons_q(s#4)
                   && _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, 
                    $ly, 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    N#4)))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $ly, _k'#0, M#0) } 
            ORD#Less(_k'#0, _k#0)
               ==> _module.__default.StreamOfNonEmpties_h#canCall(_module._default.StreamOfNonEmpties#$_T0, _k'#0, M#0)))
         && _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $LS($ly), _k#0, M#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Stream.Nil_q(M#0)
                 then true
                 else (var N#2 := _module.Stream.tail(M#0); 
                  (var s#2 := $Unbox(_module.Stream.head(M#0)): DatatypeType; 
                    _module.Stream.Cons_q(s#2)
                       && _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, 
                        $ly, 
                        ORD#Minus(_k#0, ORD#FromNat(1)), 
                        N#2)))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#0: Box :: 
                { _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $ly, _k'#0, M#0) } 
                ORD#Less(_k'#0, _k#0)
                   ==> _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $ly, _k'#0, M#0)))));
// definition axiom for _module.__default.StreamOfNonEmpties_h for decreasing-related literals (revealed)
axiom {:id "id190"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.StreamOfNonEmpties#$_T0: Ty, 
      $ly: LayerType, 
      _k#0: Box, 
      M#0: DatatypeType :: 
    {:weight 3} { _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $LS($ly), Lit(_k#0), M#0) } 
    _module.__default.StreamOfNonEmpties_h#canCall(_module._default.StreamOfNonEmpties#$_T0, Lit(_k#0), M#0)
         || (2 < $FunctionContextHeight
           && $Is(M#0, 
            Tclass._module.Stream(Tclass._module.Stream(_module._default.StreamOfNonEmpties#$_T0))))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !_module.Stream.Nil_q(M#0)
           ==> (var N#6 := _module.Stream.tail(M#0); 
            (var s#6 := $Unbox(_module.Stream.head(M#0)): DatatypeType; 
              _module.Stream.Cons_q(s#6)
                 ==> _module.__default.StreamOfNonEmpties_h#canCall(_module._default.StreamOfNonEmpties#$_T0, ORD#Minus(_k#0, ORD#FromNat(1)), N#6))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Stream.Nil_q(M#0)
             then true
             else (var N#7 := _module.Stream.tail(M#0); 
              (var s#7 := $Unbox(_module.Stream.head(M#0)): DatatypeType; 
                _module.Stream.Cons_q(s#7)
                   && _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, 
                    $LS($ly), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    N#7)))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $LS($ly), _k'#1, M#0) } 
            ORD#Less(_k'#1, _k#0)
               ==> _module.__default.StreamOfNonEmpties_h#canCall(_module._default.StreamOfNonEmpties#$_T0, _k'#1, M#0)))
         && _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $LS($ly), Lit(_k#0), M#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Stream.Nil_q(M#0)
                 then true
                 else (var N#5 := _module.Stream.tail(M#0); 
                  (var s#5 := $Unbox(_module.Stream.head(M#0)): DatatypeType; 
                    _module.Stream.Cons_q(s#5)
                       && _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, 
                        $LS($ly), 
                        ORD#Minus(_k#0, ORD#FromNat(1)), 
                        N#5)))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#1: Box :: 
                { _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $LS($ly), _k'#1, M#0) } 
                ORD#Less(_k'#1, _k#0)
                   ==> _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $LS($ly), _k'#1, M#0)))));
// definition axiom for _module.__default.StreamOfNonEmpties_h for all literals (revealed)
axiom {:id "id191"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.StreamOfNonEmpties#$_T0: Ty, 
      $ly: LayerType, 
      _k#0: Box, 
      M#0: DatatypeType :: 
    {:weight 3} { _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $LS($ly), Lit(_k#0), Lit(M#0)) } 
    _module.__default.StreamOfNonEmpties_h#canCall(_module._default.StreamOfNonEmpties#$_T0, Lit(_k#0), Lit(M#0))
         || (2 < $FunctionContextHeight
           && $Is(M#0, 
            Tclass._module.Stream(Tclass._module.Stream(_module._default.StreamOfNonEmpties#$_T0))))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !Lit(_module.Stream.Nil_q(Lit(M#0)))
           ==> (var N#9 := Lit(_module.Stream.tail(Lit(M#0))); 
            (var s#9 := Lit($Unbox(_module.Stream.head(Lit(M#0))): DatatypeType); 
              _module.Stream.Cons_q(s#9)
                 ==> _module.__default.StreamOfNonEmpties_h#canCall(_module._default.StreamOfNonEmpties#$_T0, ORD#Minus(_k#0, ORD#FromNat(1)), N#9))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Stream.Nil_q(Lit(M#0))
             then true
             else (var N#10 := Lit(_module.Stream.tail(Lit(M#0))); 
              (var s#10 := Lit($Unbox(_module.Stream.head(Lit(M#0))): DatatypeType); 
                _module.Stream.Cons_q(s#10)
                   && _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, 
                    $LS($ly), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    N#10)))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $LS($ly), _k'#2, M#0) } 
            ORD#Less(_k'#2, _k#0)
               ==> _module.__default.StreamOfNonEmpties_h#canCall(_module._default.StreamOfNonEmpties#$_T0, _k'#2, M#0)))
         && _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $LS($ly), Lit(_k#0), Lit(M#0))
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Stream.Nil_q(Lit(M#0))
                 then true
                 else (var N#8 := Lit(_module.Stream.tail(Lit(M#0))); 
                  (var s#8 := Lit($Unbox(_module.Stream.head(Lit(M#0))): DatatypeType); 
                    _module.Stream.Cons_q(s#8)
                       && _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, 
                        $LS($ly), 
                        ORD#Minus(_k#0, ORD#FromNat(1)), 
                        N#8)))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#2: Box :: 
                { _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $LS($ly), _k'#2, M#0) } 
                ORD#Less(_k'#2, _k#0)
                   ==> _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $LS($ly), _k'#2, M#0)))));
}

function _module.__default.StreamOfNonEmpties_h#canCall(_module._default.StreamOfNonEmpties#$_T0: Ty, _k#0: Box, M#0: DatatypeType)
   : bool;

// layer synonym axiom
axiom (forall _module._default.StreamOfNonEmpties#$_T0: Ty, 
    $ly: LayerType, 
    _k#0: Box, 
    M#0: DatatypeType :: 
  { _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $LS($ly), _k#0, M#0) } 
  _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $LS($ly), _k#0, M#0)
     == _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $ly, _k#0, M#0));

// fuel synonym axiom
axiom (forall _module._default.StreamOfNonEmpties#$_T0: Ty, 
    $ly: LayerType, 
    _k#0: Box, 
    M#0: DatatypeType :: 
  { _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, AsFuelBottom($ly), _k#0, M#0) } 
  _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $ly, _k#0, M#0)
     == _module.__default.StreamOfNonEmpties_h(_module._default.StreamOfNonEmpties#$_T0, $LZ, _k#0, M#0));

function _module.__default.StreamOfNonEmpties_h#requires(Ty, LayerType, Box, DatatypeType) : bool;

// #requires axiom for _module.__default.StreamOfNonEmpties_h
axiom (forall _module._default.StreamOfNonEmpties#$_T0: Ty, 
    $ly: LayerType, 
    _k#0: Box, 
    M#0: DatatypeType :: 
  { _module.__default.StreamOfNonEmpties_h#requires(_module._default.StreamOfNonEmpties#$_T0, $ly, _k#0, M#0) } 
  $Is(M#0, 
      Tclass._module.Stream(Tclass._module.Stream(_module._default.StreamOfNonEmpties#$_T0)))
     ==> _module.__default.StreamOfNonEmpties_h#requires(_module._default.StreamOfNonEmpties#$_T0, $ly, _k#0, M#0)
       == true);

// function declaration for _module._default.FlattenNonEmpties
function _module.__default.FlattenNonEmpties(_module._default.FlattenNonEmpties$_T0: Ty, M#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.FlattenNonEmpties
axiom 3 <= $FunctionContextHeight
   ==> (forall _module._default.FlattenNonEmpties$_T0: Ty, M#0: DatatypeType :: 
    { _module.__default.FlattenNonEmpties(_module._default.FlattenNonEmpties$_T0, M#0) } 
    _module.__default.FlattenNonEmpties#canCall(_module._default.FlattenNonEmpties$_T0, M#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(M#0, 
            Tclass._module.Stream(Tclass._module.Stream(_module._default.FlattenNonEmpties$_T0)))
           && _module.__default.StreamOfNonEmpties(_module._default.FlattenNonEmpties$_T0, $LS($LZ), M#0))
       ==> $Is(_module.__default.FlattenNonEmpties(_module._default.FlattenNonEmpties$_T0, M#0), 
        Tclass._module.Stream(_module._default.FlattenNonEmpties$_T0)));
// alloc consequence axiom for _module.__default.FlattenNonEmpties
axiom 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module._default.FlattenNonEmpties$_T0: Ty, M#0: DatatypeType :: 
    { $IsAlloc(_module.__default.FlattenNonEmpties(_module._default.FlattenNonEmpties$_T0, M#0), 
        Tclass._module.Stream(_module._default.FlattenNonEmpties$_T0), 
        $Heap) } 
    (_module.__default.FlattenNonEmpties#canCall(_module._default.FlattenNonEmpties$_T0, M#0)
           || (3 < $FunctionContextHeight
             && 
            $Is(M#0, 
              Tclass._module.Stream(Tclass._module.Stream(_module._default.FlattenNonEmpties$_T0)))
             && $IsAlloc(M#0, 
              Tclass._module.Stream(Tclass._module.Stream(_module._default.FlattenNonEmpties$_T0)), 
              $Heap)
             && _module.__default.StreamOfNonEmpties(_module._default.FlattenNonEmpties$_T0, $LS($LZ), M#0)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.FlattenNonEmpties(_module._default.FlattenNonEmpties$_T0, M#0), 
        Tclass._module.Stream(_module._default.FlattenNonEmpties$_T0), 
        $Heap));
// definition axiom for _module.__default.FlattenNonEmpties (revealed)
axiom {:id "id192"} 3 <= $FunctionContextHeight
   ==> (forall _module._default.FlattenNonEmpties$_T0: Ty, M#0: DatatypeType :: 
    { _module.__default.FlattenNonEmpties(_module._default.FlattenNonEmpties$_T0, M#0) } 
    _module.__default.FlattenNonEmpties#canCall(_module._default.FlattenNonEmpties$_T0, M#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(M#0, 
            Tclass._module.Stream(Tclass._module.Stream(_module._default.FlattenNonEmpties$_T0)))
           && _module.__default.StreamOfNonEmpties(_module._default.FlattenNonEmpties$_T0, $LS($LZ), M#0))
       ==> _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.FlattenNonEmpties$_T0, Lit(#_module.Stream.Nil()), M#0)
         && _module.__default.FlattenNonEmpties(_module._default.FlattenNonEmpties$_T0, M#0)
           == _module.__default.PrependThenFlattenNonEmpties(_module._default.FlattenNonEmpties$_T0, 
            $LS($LZ), 
            Lit(#_module.Stream.Nil()), 
            M#0));
// definition axiom for _module.__default.FlattenNonEmpties for all literals (revealed)
axiom {:id "id193"} 3 <= $FunctionContextHeight
   ==> (forall _module._default.FlattenNonEmpties$_T0: Ty, M#0: DatatypeType :: 
    {:weight 3} { _module.__default.FlattenNonEmpties(_module._default.FlattenNonEmpties$_T0, Lit(M#0)) } 
    _module.__default.FlattenNonEmpties#canCall(_module._default.FlattenNonEmpties$_T0, Lit(M#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(M#0, 
            Tclass._module.Stream(Tclass._module.Stream(_module._default.FlattenNonEmpties$_T0)))
           && Lit(_module.__default.StreamOfNonEmpties(_module._default.FlattenNonEmpties$_T0, $LS($LZ), Lit(M#0))))
       ==> _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.FlattenNonEmpties$_T0, Lit(#_module.Stream.Nil()), Lit(M#0))
         && _module.__default.FlattenNonEmpties(_module._default.FlattenNonEmpties$_T0, Lit(M#0))
           == Lit(_module.__default.PrependThenFlattenNonEmpties(_module._default.FlattenNonEmpties$_T0, 
              $LS($LZ), 
              Lit(#_module.Stream.Nil()), 
              Lit(M#0))));
}

function _module.__default.FlattenNonEmpties#canCall(_module._default.FlattenNonEmpties$_T0: Ty, M#0: DatatypeType) : bool;

function _module.__default.FlattenNonEmpties#requires(Ty, DatatypeType) : bool;

// #requires axiom for _module.__default.FlattenNonEmpties
axiom (forall _module._default.FlattenNonEmpties$_T0: Ty, M#0: DatatypeType :: 
  { _module.__default.FlattenNonEmpties#requires(_module._default.FlattenNonEmpties$_T0, M#0) } 
  $Is(M#0, 
      Tclass._module.Stream(Tclass._module.Stream(_module._default.FlattenNonEmpties$_T0)))
     ==> _module.__default.FlattenNonEmpties#requires(_module._default.FlattenNonEmpties$_T0, M#0)
       == _module.__default.StreamOfNonEmpties(_module._default.FlattenNonEmpties$_T0, $LS($LZ), M#0));

procedure {:verboseName "FlattenNonEmpties (well-formedness)"} CheckWellformed$$_module.__default.FlattenNonEmpties(_module._default.FlattenNonEmpties$_T0: Ty, 
    M#0: DatatypeType
       where $Is(M#0, 
        Tclass._module.Stream(Tclass._module.Stream(_module._default.FlattenNonEmpties$_T0))));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FlattenNonEmpties (well-formedness)"} CheckWellformed$$_module.__default.FlattenNonEmpties(_module._default.FlattenNonEmpties$_T0: Ty, M#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##M#0: DatatypeType;
  var ##prefix#0: DatatypeType;
  var ##M#1: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    ##M#0 := M#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##M#0, 
      Tclass._module.Stream(Tclass._module.Stream(_module._default.FlattenNonEmpties$_T0)), 
      $Heap);
    assume _module.__default.StreamOfNonEmpties#canCall(_module._default.FlattenNonEmpties$_T0, M#0);
    assume {:id "id194"} _module.__default.StreamOfNonEmpties(_module._default.FlattenNonEmpties$_T0, $LS($LZ), M#0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.FlattenNonEmpties(_module._default.FlattenNonEmpties$_T0, M#0), 
          Tclass._module.Stream(_module._default.FlattenNonEmpties$_T0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        ##prefix#0 := Lit(#_module.Stream.Nil());
        // assume allocatedness for argument to function
        assume $IsAlloc(##prefix#0, Tclass._module.Stream(_module._default.FlattenNonEmpties$_T0), $Heap);
        ##M#1 := M#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##M#1, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.FlattenNonEmpties$_T0)), 
          $Heap);
        assert {:id "id195"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.FlattenNonEmpties$_T0, ##M#1)
           ==> _module.__default.StreamOfNonEmpties(_module._default.FlattenNonEmpties$_T0, $LS($LZ), ##M#1)
             || (_module.Stream.Nil_q(##M#1) ==> Lit(true));
        assert {:id "id196"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.FlattenNonEmpties$_T0, ##M#1)
           ==> _module.__default.StreamOfNonEmpties(_module._default.FlattenNonEmpties$_T0, $LS($LZ), ##M#1)
             || (!_module.Stream.Nil_q(##M#1)
               ==> (var N#0 := _module.Stream.tail(##M#1); 
                (var s#0 := $Unbox(_module.Stream.head(##M#1)): DatatypeType; 
                  _module.Stream.Cons_q(s#0))));
        assert {:id "id197"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.FlattenNonEmpties$_T0, ##M#1)
           ==> _module.__default.StreamOfNonEmpties(_module._default.FlattenNonEmpties$_T0, $LS($LZ), ##M#1)
             || (!_module.Stream.Nil_q(##M#1)
               ==> (var N#0 := _module.Stream.tail(##M#1); 
                (var s#0 := $Unbox(_module.Stream.head(##M#1)): DatatypeType; 
                  _module.__default.StreamOfNonEmpties(_module._default.FlattenNonEmpties$_T0, $LS($LS($LZ)), N#0))));
        assume _module.__default.StreamOfNonEmpties(_module._default.FlattenNonEmpties$_T0, $LS($LZ), ##M#1);
        assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.FlattenNonEmpties$_T0, Lit(#_module.Stream.Nil()), M#0);
        assume {:id "id198"} _module.__default.FlattenNonEmpties(_module._default.FlattenNonEmpties$_T0, M#0)
           == _module.__default.PrependThenFlattenNonEmpties(_module._default.FlattenNonEmpties$_T0, 
            $LS($LZ), 
            Lit(#_module.Stream.Nil()), 
            M#0);
        assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.FlattenNonEmpties$_T0, Lit(#_module.Stream.Nil()), M#0);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.FlattenNonEmpties(_module._default.FlattenNonEmpties$_T0, M#0), 
          Tclass._module.Stream(_module._default.FlattenNonEmpties$_T0));
        return;

        assume false;
    }
}



// function declaration for _module._default.PrependThenFlattenNonEmpties
function _module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0: Ty, 
    $ly: LayerType, 
    prefix#0: DatatypeType, 
    M#0: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for _module.__default.PrependThenFlattenNonEmpties
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.PrependThenFlattenNonEmpties$_T0: Ty, 
      $ly: LayerType, 
      prefix#0: DatatypeType, 
      M#0: DatatypeType :: 
    { _module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $ly, prefix#0, M#0) } 
    _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.PrependThenFlattenNonEmpties$_T0, prefix#0, M#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(prefix#0, 
            Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0))
           && $Is(M#0, 
            Tclass._module.Stream(Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0)))
           && _module.__default.StreamOfNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LZ), M#0))
       ==> $Is(_module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $ly, prefix#0, M#0), 
        Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0)));
// alloc consequence axiom for _module.__default.PrependThenFlattenNonEmpties
axiom 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.PrependThenFlattenNonEmpties$_T0: Ty, 
      $ly: LayerType, 
      prefix#0: DatatypeType, 
      M#0: DatatypeType :: 
    { $IsAlloc(_module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $ly, prefix#0, M#0), 
        Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0), 
        $Heap) } 
    (_module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.PrependThenFlattenNonEmpties$_T0, prefix#0, M#0)
           || (2 < $FunctionContextHeight
             && 
            $Is(prefix#0, 
              Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0))
             && $IsAlloc(prefix#0, 
              Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0), 
              $Heap)
             && 
            $Is(M#0, 
              Tclass._module.Stream(Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0)))
             && $IsAlloc(M#0, 
              Tclass._module.Stream(Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0)), 
              $Heap)
             && _module.__default.StreamOfNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LZ), M#0)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $ly, prefix#0, M#0), 
        Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0), 
        $Heap));
// definition axiom for _module.__default.PrependThenFlattenNonEmpties (revealed)
axiom {:id "id199"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.PrependThenFlattenNonEmpties$_T0: Ty, 
      $ly: LayerType, 
      prefix#0: DatatypeType, 
      M#0: DatatypeType :: 
    { _module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($ly), prefix#0, M#0) } 
    _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.PrependThenFlattenNonEmpties$_T0, prefix#0, M#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(prefix#0, 
            Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0))
           && $Is(M#0, 
            Tclass._module.Stream(Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0)))
           && _module.__default.StreamOfNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LZ), M#0))
       ==> (_module.Stream.Nil_q(prefix#0)
           ==> 
          !_module.Stream.Nil_q(M#0)
           ==> (var N#1 := _module.Stream.tail(M#0); 
            (var s#1 := $Unbox(_module.Stream.head(M#0)): DatatypeType; 
              _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.PrependThenFlattenNonEmpties$_T0, _module.Stream.tail(s#1), N#1))))
         && (!_module.Stream.Nil_q(prefix#0)
           ==> (var tl#1 := _module.Stream.tail(prefix#0); 
            _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.PrependThenFlattenNonEmpties$_T0, tl#1, M#0)))
         && _module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($ly), prefix#0, M#0)
           == (if _module.Stream.Nil_q(prefix#0)
             then (if _module.Stream.Nil_q(M#0)
               then #_module.Stream.Nil()
               else (var N#0 := _module.Stream.tail(M#0); 
                (var s#0 := $Unbox(_module.Stream.head(M#0)): DatatypeType; 
                  #_module.Stream.Cons(_module.Stream.head(s#0), 
                    _module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, 
                      $ly, 
                      _module.Stream.tail(s#0), 
                      N#0)))))
             else (var tl#0 := _module.Stream.tail(prefix#0); 
              (var hd#0 := _module.Stream.head(prefix#0); 
                #_module.Stream.Cons(hd#0, 
                  _module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $ly, tl#0, M#0))))));
}

function _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.PrependThenFlattenNonEmpties$_T0: Ty, 
    prefix#0: DatatypeType, 
    M#0: DatatypeType)
   : bool;

// layer synonym axiom
axiom (forall _module._default.PrependThenFlattenNonEmpties$_T0: Ty, 
    $ly: LayerType, 
    prefix#0: DatatypeType, 
    M#0: DatatypeType :: 
  { _module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($ly), prefix#0, M#0) } 
  _module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($ly), prefix#0, M#0)
     == _module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $ly, prefix#0, M#0));

// fuel synonym axiom
axiom (forall _module._default.PrependThenFlattenNonEmpties$_T0: Ty, 
    $ly: LayerType, 
    prefix#0: DatatypeType, 
    M#0: DatatypeType :: 
  { _module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, 
      AsFuelBottom($ly), 
      prefix#0, 
      M#0) } 
  _module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $ly, prefix#0, M#0)
     == _module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LZ, prefix#0, M#0));

function _module.__default.PrependThenFlattenNonEmpties#requires(Ty, LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.PrependThenFlattenNonEmpties
axiom (forall _module._default.PrependThenFlattenNonEmpties$_T0: Ty, 
    $ly: LayerType, 
    prefix#0: DatatypeType, 
    M#0: DatatypeType :: 
  { _module.__default.PrependThenFlattenNonEmpties#requires(_module._default.PrependThenFlattenNonEmpties$_T0, $ly, prefix#0, M#0) } 
  $Is(prefix#0, 
        Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0))
       && $Is(M#0, 
        Tclass._module.Stream(Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0)))
     ==> _module.__default.PrependThenFlattenNonEmpties#requires(_module._default.PrependThenFlattenNonEmpties$_T0, $ly, prefix#0, M#0)
       == _module.__default.StreamOfNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LZ), M#0));

procedure {:verboseName "PrependThenFlattenNonEmpties (well-formedness)"} CheckWellformed$$_module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0: Ty, 
    prefix#0: DatatypeType
       where $Is(prefix#0, 
        Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0)), 
    M#0: DatatypeType
       where $Is(M#0, 
        Tclass._module.Stream(Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0))));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrependThenFlattenNonEmpties (well-formedness)"} CheckWellformed$$_module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0: Ty, 
    prefix#0: DatatypeType, 
    M#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##M#0: DatatypeType;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var tl#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var hd#Z#0: Box;
  var let#1#0#0: Box;
  var ##prefix#0: DatatypeType;
  var ##M#1: DatatypeType;
  var _mcc#2#0: DatatypeType;
  var _mcc#3#0: DatatypeType;
  var N#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var s#Z#0: DatatypeType;
  var let#3#0#0: DatatypeType;
  var ##prefix#1: DatatypeType;
  var ##M#2: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    ##M#0 := M#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##M#0, 
      Tclass._module.Stream(Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0)), 
      $Heap);
    assume _module.__default.StreamOfNonEmpties#canCall(_module._default.PrependThenFlattenNonEmpties$_T0, M#0);
    assume {:id "id200"} _module.__default.StreamOfNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LZ), M#0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LZ), prefix#0, M#0), 
          Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (prefix#0 == #_module.Stream.Nil())
        {
            if (M#0 == #_module.Stream.Nil())
            {
                assume {:id "id219"} _module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LZ), prefix#0, M#0)
                   == Lit(#_module.Stream.Nil());
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LZ), prefix#0, M#0), 
                  Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0));
                return;
            }
            else if (M#0 == #_module.Stream.Cons($Box(_mcc#2#0), _mcc#3#0))
            {
                assume $Is(_mcc#2#0, 
                  Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0));
                assume $Is(_mcc#3#0, 
                  Tclass._module.Stream(Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0)));
                havoc N#Z#0;
                assume {:id "id209"} let#2#0#0 == _mcc#3#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#2#0#0, 
                  Tclass._module.Stream(Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0)));
                assume {:id "id210"} N#Z#0 == let#2#0#0;
                havoc s#Z#0;
                assume {:id "id211"} let#3#0#0 == _mcc#2#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#3#0#0, 
                  Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0));
                assume {:id "id212"} s#Z#0 == let#3#0#0;
                assert {:id "id213"} _module.Stream.Cons_q(s#Z#0);
                assert {:id "id214"} _module.Stream.Cons_q(s#Z#0);
                ##prefix#1 := _module.Stream.tail(s#Z#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##prefix#1, 
                  Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0), 
                  $Heap);
                ##M#2 := N#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##M#2, 
                  Tclass._module.Stream(Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0)), 
                  $Heap);
                assert {:id "id215"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.PrependThenFlattenNonEmpties$_T0, ##M#2)
                   ==> _module.__default.StreamOfNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LZ), ##M#2)
                     || (_module.Stream.Nil_q(##M#2) ==> Lit(true));
                assert {:id "id216"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.PrependThenFlattenNonEmpties$_T0, ##M#2)
                   ==> _module.__default.StreamOfNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LZ), ##M#2)
                     || (!_module.Stream.Nil_q(##M#2)
                       ==> (var N#4 := _module.Stream.tail(##M#2); 
                        (var s#4 := $Unbox(_module.Stream.head(##M#2)): DatatypeType; 
                          _module.Stream.Cons_q(s#4))));
                assert {:id "id217"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.PrependThenFlattenNonEmpties$_T0, ##M#2)
                   ==> _module.__default.StreamOfNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LZ), ##M#2)
                     || (!_module.Stream.Nil_q(##M#2)
                       ==> (var N#4 := _module.Stream.tail(##M#2); 
                        (var s#4 := $Unbox(_module.Stream.head(##M#2)): DatatypeType; 
                          _module.__default.StreamOfNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LS($LZ)), N#4))));
                assume _module.__default.StreamOfNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LZ), ##M#2);
                assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.PrependThenFlattenNonEmpties$_T0, 
                  _module.Stream.tail(s#Z#0), 
                  N#Z#0);
                assume {:id "id218"} _module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LZ), prefix#0, M#0)
                   == #_module.Stream.Cons(_module.Stream.head(s#Z#0), 
                    _module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, 
                      $LS($LZ), 
                      _module.Stream.tail(s#Z#0), 
                      N#Z#0));
                assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.PrependThenFlattenNonEmpties$_T0, 
                  _module.Stream.tail(s#Z#0), 
                  N#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LZ), prefix#0, M#0), 
                  Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0));
                return;
            }
            else
            {
                assume false;
            }
        }
        else if (prefix#0 == #_module.Stream.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, _module._default.PrependThenFlattenNonEmpties$_T0);
            assume $Is(_mcc#1#0, 
              Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0));
            havoc tl#Z#0;
            assume {:id "id201"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, 
              Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0));
            assume {:id "id202"} tl#Z#0 == let#0#0#0;
            havoc hd#Z#0;
            assume {:id "id203"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#1#0#0, _module._default.PrependThenFlattenNonEmpties$_T0);
            assume {:id "id204"} hd#Z#0 == let#1#0#0;
            ##prefix#0 := tl#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##prefix#0, 
              Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0), 
              $Heap);
            ##M#1 := M#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#1, 
              Tclass._module.Stream(Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0)), 
              $Heap);
            assert {:id "id205"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.PrependThenFlattenNonEmpties$_T0, ##M#1)
               ==> _module.__default.StreamOfNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LZ), ##M#1)
                 || (_module.Stream.Nil_q(##M#1) ==> Lit(true));
            assert {:id "id206"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.PrependThenFlattenNonEmpties$_T0, ##M#1)
               ==> _module.__default.StreamOfNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LZ), ##M#1)
                 || (!_module.Stream.Nil_q(##M#1)
                   ==> (var N#2 := _module.Stream.tail(##M#1); 
                    (var s#2 := $Unbox(_module.Stream.head(##M#1)): DatatypeType; 
                      _module.Stream.Cons_q(s#2))));
            assert {:id "id207"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.PrependThenFlattenNonEmpties$_T0, ##M#1)
               ==> _module.__default.StreamOfNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LZ), ##M#1)
                 || (!_module.Stream.Nil_q(##M#1)
                   ==> (var N#2 := _module.Stream.tail(##M#1); 
                    (var s#2 := $Unbox(_module.Stream.head(##M#1)): DatatypeType; 
                      _module.__default.StreamOfNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LS($LZ)), N#2))));
            assume _module.__default.StreamOfNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LZ), ##M#1);
            assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.PrependThenFlattenNonEmpties$_T0, tl#Z#0, M#0);
            assume {:id "id208"} _module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LZ), prefix#0, M#0)
               == #_module.Stream.Cons(hd#Z#0, 
                _module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LZ), tl#Z#0, M#0));
            assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.PrependThenFlattenNonEmpties$_T0, tl#Z#0, M#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.PrependThenFlattenNonEmpties(_module._default.PrependThenFlattenNonEmpties$_T0, $LS($LZ), prefix#0, M#0), 
              Tclass._module.Stream(_module._default.PrependThenFlattenNonEmpties$_T0));
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.Prepend
function _module.__default.Prepend(_module._default.Prepend$T: Ty, $ly: LayerType, x#0: Box, M#0: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for _module.__default.Prepend
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.Prepend$T: Ty, $ly: LayerType, x#0: Box, M#0: DatatypeType :: 
    { _module.__default.Prepend(_module._default.Prepend$T, $ly, x#0, M#0) } 
    _module.__default.Prepend#canCall(_module._default.Prepend$T, x#0, M#0)
         || (1 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Prepend$T)
           && $Is(M#0, Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend$T))))
       ==> $Is(_module.__default.Prepend(_module._default.Prepend$T, $ly, x#0, M#0), 
        Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend$T))));
// alloc consequence axiom for _module.__default.Prepend
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.Prepend$T: Ty, 
      $ly: LayerType, 
      x#0: Box, 
      M#0: DatatypeType :: 
    { $IsAlloc(_module.__default.Prepend(_module._default.Prepend$T, $ly, x#0, M#0), 
        Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend$T)), 
        $Heap) } 
    (_module.__default.Prepend#canCall(_module._default.Prepend$T, x#0, M#0)
           || (1 < $FunctionContextHeight
             && 
            $IsBox(x#0, _module._default.Prepend$T)
             && $IsAllocBox(x#0, _module._default.Prepend$T, $Heap)
             && 
            $Is(M#0, Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend$T)))
             && $IsAlloc(M#0, 
              Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend$T)), 
              $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.Prepend(_module._default.Prepend$T, $ly, x#0, M#0), 
        Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend$T)), 
        $Heap));
// definition axiom for _module.__default.Prepend (revealed)
axiom {:id "id220"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Prepend$T: Ty, $ly: LayerType, x#0: Box, M#0: DatatypeType :: 
    { _module.__default.Prepend(_module._default.Prepend$T, $LS($ly), x#0, M#0) } 
    _module.__default.Prepend#canCall(_module._default.Prepend$T, x#0, M#0)
         || (1 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Prepend$T)
           && $Is(M#0, Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend$T))))
       ==> (!_module.Stream.Nil_q(M#0)
           ==> (var N#1 := _module.Stream.tail(M#0); 
            _module.__default.Prepend#canCall(_module._default.Prepend$T, x#0, N#1)))
         && _module.__default.Prepend(_module._default.Prepend$T, $LS($ly), x#0, M#0)
           == (if _module.Stream.Nil_q(M#0)
             then #_module.Stream.Nil()
             else (var N#0 := _module.Stream.tail(M#0); 
              (var s#0 := $Unbox(_module.Stream.head(M#0)): DatatypeType; 
                #_module.Stream.Cons($Box(#_module.Stream.Cons(x#0, s#0)), 
                  _module.__default.Prepend(_module._default.Prepend$T, $ly, x#0, N#0))))));
}

function _module.__default.Prepend#canCall(_module._default.Prepend$T: Ty, x#0: Box, M#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.Prepend$T: Ty, $ly: LayerType, x#0: Box, M#0: DatatypeType :: 
  { _module.__default.Prepend(_module._default.Prepend$T, $LS($ly), x#0, M#0) } 
  _module.__default.Prepend(_module._default.Prepend$T, $LS($ly), x#0, M#0)
     == _module.__default.Prepend(_module._default.Prepend$T, $ly, x#0, M#0));

// fuel synonym axiom
axiom (forall _module._default.Prepend$T: Ty, $ly: LayerType, x#0: Box, M#0: DatatypeType :: 
  { _module.__default.Prepend(_module._default.Prepend$T, AsFuelBottom($ly), x#0, M#0) } 
  _module.__default.Prepend(_module._default.Prepend$T, $ly, x#0, M#0)
     == _module.__default.Prepend(_module._default.Prepend$T, $LZ, x#0, M#0));

function _module.__default.Prepend#requires(Ty, LayerType, Box, DatatypeType) : bool;

// #requires axiom for _module.__default.Prepend
axiom (forall _module._default.Prepend$T: Ty, $ly: LayerType, x#0: Box, M#0: DatatypeType :: 
  { _module.__default.Prepend#requires(_module._default.Prepend$T, $ly, x#0, M#0) } 
  $IsBox(x#0, _module._default.Prepend$T)
       && $Is(M#0, Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend$T)))
     ==> _module.__default.Prepend#requires(_module._default.Prepend$T, $ly, x#0, M#0)
       == true);

procedure {:verboseName "Prepend (well-formedness)"} CheckWellformed$$_module.__default.Prepend(_module._default.Prepend$T: Ty, 
    x#0: Box where $IsBox(x#0, _module._default.Prepend$T), 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend$T))));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Prepend_Lemma (well-formedness)"} CheckWellFormed$$_module.__default.Prepend__Lemma(_module._default.Prepend_Lemma$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module._default.Prepend_Lemma$T)
         && $IsAllocBox(x#0, _module._default.Prepend_Lemma$T, $Heap), 
    M#0: DatatypeType
       where $Is(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend_Lemma$T)))
         && $IsAlloc(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend_Lemma$T)), 
          $Heap)
         && $IsA#_module.Stream(M#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Prepend_Lemma (call)"} Call$$_module.__default.Prepend__Lemma(_module._default.Prepend_Lemma$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module._default.Prepend_Lemma$T)
         && $IsAllocBox(x#0, _module._default.Prepend_Lemma$T, $Heap), 
    M#0: DatatypeType
       where $Is(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend_Lemma$T)))
         && $IsAlloc(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend_Lemma$T)), 
          $Heap)
         && $IsA#_module.Stream(M#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Prepend#canCall(_module._default.Prepend_Lemma$T, x#0, M#0)
     && _module.__default.StreamOfNonEmpties#canCall(_module._default.Prepend_Lemma$T, 
      _module.__default.Prepend(_module._default.Prepend_Lemma$T, $LS($LZ), x#0, M#0));
  free ensures {:id "id228"} _module.__default.StreamOfNonEmpties#canCall(_module._default.Prepend_Lemma$T, 
      _module.__default.Prepend(_module._default.Prepend_Lemma$T, $LS($LZ), x#0, M#0))
     && 
    _module.__default.StreamOfNonEmpties(_module._default.Prepend_Lemma$T, 
      $LS($LZ), 
      _module.__default.Prepend(_module._default.Prepend_Lemma$T, $LS($LZ), x#0, M#0))
     && (if _module.Stream.Nil_q(_module.__default.Prepend(_module._default.Prepend_Lemma$T, $LS($LZ), x#0, M#0))
       then true
       else (var N#1 := _module.Stream.tail(_module.__default.Prepend(_module._default.Prepend_Lemma$T, $LS($LZ), x#0, M#0)); 
        (var s#1 := $Unbox(_module.Stream.head(_module.__default.Prepend(_module._default.Prepend_Lemma$T, $LS($LZ), x#0, M#0))): DatatypeType; 
          _module.Stream.Cons_q(s#1)
             && _module.__default.StreamOfNonEmpties(_module._default.Prepend_Lemma$T, $LS($LZ), N#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Prepend_Lemma# (co-call)"} CoCall$$_module.__default.Prepend__Lemma_h(_module._default.Prepend_Lemma#$T: Ty, 
    _k#0: Box, 
    x#1: Box
       where $IsBox(x#1, _module._default.Prepend_Lemma#$T)
         && $IsAllocBox(x#1, _module._default.Prepend_Lemma#$T, $Heap), 
    M#1: DatatypeType
       where $Is(M#1, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend_Lemma#$T)))
         && $IsAlloc(M#1, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend_Lemma#$T)), 
          $Heap)
         && $IsA#_module.Stream(M#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Prepend#canCall(_module._default.Prepend_Lemma#$T, x#1, M#1)
     && _module.__default.StreamOfNonEmpties_h#canCall(_module._default.Prepend_Lemma#$T, 
      _k#0, 
      _module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#1, M#1));
  free ensures {:id "id229"} _module.__default.StreamOfNonEmpties_h#canCall(_module._default.Prepend_Lemma#$T, 
      _k#0, 
      _module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#1, M#1))
     && 
    _module.__default.StreamOfNonEmpties_h(_module._default.Prepend_Lemma#$T, 
      $LS($LZ), 
      _k#0, 
      _module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#1, M#1))
     && 
    (0 < ORD#Offset(_k#0)
       ==> (if _module.Stream.Nil_q(_module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#1, M#1))
         then true
         else (var N#3 := _module.Stream.tail(_module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#1, M#1)); 
          (var s#3 := $Unbox(_module.Stream.head(_module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#1, M#1))): DatatypeType; 
            _module.Stream.Cons_q(s#3)
               && _module.__default.StreamOfNonEmpties_h(_module._default.Prepend_Lemma#$T, 
                $LS($LZ), 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                N#3)))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#0: Box :: 
        { _module.__default.StreamOfNonEmpties_h(_module._default.Prepend_Lemma#$T, 
            $LS($LZ), 
            _k'#0, 
            _module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#1, M#1)) } 
        ORD#Less(_k'#0, _k#0)
           ==> _module.__default.StreamOfNonEmpties_h(_module._default.Prepend_Lemma#$T, 
            $LS($LZ), 
            _k'#0, 
            _module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#1, M#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Prepend_Lemma# (correctness)"} Impl$$_module.__default.Prepend__Lemma_h(_module._default.Prepend_Lemma#$T: Ty, 
    _k#0: Box, 
    x#1: Box
       where $IsBox(x#1, _module._default.Prepend_Lemma#$T)
         && $IsAllocBox(x#1, _module._default.Prepend_Lemma#$T, $Heap), 
    M#1: DatatypeType
       where $Is(M#1, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend_Lemma#$T)))
         && $IsAlloc(M#1, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend_Lemma#$T)), 
          $Heap)
         && $IsA#_module.Stream(M#1))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Prepend#canCall(_module._default.Prepend_Lemma#$T, x#1, M#1)
     && _module.__default.StreamOfNonEmpties_h#canCall(_module._default.Prepend_Lemma#$T, 
      _k#0, 
      _module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#1, M#1));
  ensures {:id "id230"} _module.__default.StreamOfNonEmpties_h#canCall(_module._default.Prepend_Lemma#$T, 
      _k#0, 
      _module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#1, M#1))
     ==> _module.__default.StreamOfNonEmpties_h(_module._default.Prepend_Lemma#$T, 
        $LS($LZ), 
        _k#0, 
        _module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#1, M#1))
       || (0 < ORD#Offset(_k#0)
         ==> 
        _module.Stream.Nil_q(_module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#1, M#1))
         ==> Lit(true));
  ensures {:id "id231"} _module.__default.StreamOfNonEmpties_h#canCall(_module._default.Prepend_Lemma#$T, 
      _k#0, 
      _module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#1, M#1))
     ==> _module.__default.StreamOfNonEmpties_h(_module._default.Prepend_Lemma#$T, 
        $LS($LZ), 
        _k#0, 
        _module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#1, M#1))
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.Stream.Nil_q(_module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#1, M#1))
         ==> (var N#4 := _module.Stream.tail(_module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LS($LZ)), x#1, M#1)); 
          (var s#4 := $Unbox(_module.Stream.head(_module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LS($LZ)), x#1, M#1))): DatatypeType; 
            _module.Stream.Cons_q(s#4))));
  ensures {:id "id232"} _module.__default.StreamOfNonEmpties_h#canCall(_module._default.Prepend_Lemma#$T, 
      _k#0, 
      _module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#1, M#1))
     ==> _module.__default.StreamOfNonEmpties_h(_module._default.Prepend_Lemma#$T, 
        $LS($LZ), 
        _k#0, 
        _module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#1, M#1))
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.Stream.Nil_q(_module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#1, M#1))
         ==> (var N#4 := _module.Stream.tail(_module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LS($LZ)), x#1, M#1)); 
          (var s#4 := $Unbox(_module.Stream.head(_module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LS($LZ)), x#1, M#1))): DatatypeType; 
            _module.__default.StreamOfNonEmpties_h(_module._default.Prepend_Lemma#$T, 
              $LS($LS($LZ)), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              N#4))));
  ensures {:id "id233"} _module.__default.StreamOfNonEmpties_h#canCall(_module._default.Prepend_Lemma#$T, 
      _k#0, 
      _module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#1, M#1))
     ==> _module.__default.StreamOfNonEmpties_h(_module._default.Prepend_Lemma#$T, 
        $LS($LZ), 
        _k#0, 
        _module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#1, M#1))
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#1: Box :: 
          { _module.__default.StreamOfNonEmpties_h(_module._default.Prepend_Lemma#$T, 
              $LS($LS($LZ)), 
              _k'#1, 
              _module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LS($LZ)), x#1, M#1)) } 
          ORD#Less(_k'#1, _k#0)
             ==> _module.__default.StreamOfNonEmpties_h(_module._default.Prepend_Lemma#$T, 
              $LS($LS($LZ)), 
              _k'#1, 
              _module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LS($LZ)), x#1, M#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Prepend_Lemma# (correctness)"} Impl$$_module.__default.Prepend__Lemma_h(_module._default.Prepend_Lemma#$T: Ty, _k#0: Box, x#1: Box, M#1: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var N#6: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var s#6: DatatypeType;
  var let#0_0_1#0#0: DatatypeType;
  var _k##0: Box;
  var x##0: Box;
  var M##0: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Prepend_Lemma#, Impl$$_module.__default.Prepend__Lemma_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(M#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#M0#0: DatatypeType :: 
      { _module.__default.StreamOfNonEmpties_h(_module._default.Prepend_Lemma#$T, 
          $LS($LZ), 
          $ih#_k0#0, 
          _module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#1, $ih#M0#0)) } 
      $Is($ih#M0#0, 
            Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend_Lemma#$T)))
           && Lit(true)
           && ORD#Less($ih#_k0#0, _k#0)
         ==> _module.__default.StreamOfNonEmpties_h(_module._default.Prepend_Lemma#$T, 
          $LS($LZ), 
          $ih#_k0#0, 
          _module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#1, $ih#M0#0)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(249,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        assume true;
        havoc _mcc#0#0, _mcc#1#0;
        if (M#1 == #_module.Stream.Nil())
        {
        }
        else if (M#1 == #_module.Stream.Cons($Box(_mcc#0#0), _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Stream(_module._default.Prepend_Lemma#$T))
               && $IsAlloc(_mcc#0#0, Tclass._module.Stream(_module._default.Prepend_Lemma#$T), $Heap);
            assume $Is(_mcc#1#0, 
                Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend_Lemma#$T)))
               && $IsAlloc(_mcc#1#0, 
                Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend_Lemma#$T)), 
                $Heap);
            havoc N#6;
            assume $Is(N#6, 
                Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend_Lemma#$T)))
               && $IsAlloc(N#6, 
                Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend_Lemma#$T)), 
                $Heap);
            assume {:id "id234"} let#0_0_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, 
              Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend_Lemma#$T)));
            assume {:id "id235"} N#6 == let#0_0_0#0#0;
            havoc s#6;
            assume $Is(s#6, Tclass._module.Stream(_module._default.Prepend_Lemma#$T))
               && $IsAlloc(s#6, Tclass._module.Stream(_module._default.Prepend_Lemma#$T), $Heap);
            assume {:id "id236"} let#0_0_1#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_1#0#0, Tclass._module.Stream(_module._default.Prepend_Lemma#$T));
            assume {:id "id237"} s#6 == let#0_0_1#0#0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(252,38)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id238"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id239"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##0 := x#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            M##0 := N#6;
            call {:id "id240"} CoCall$$_module.__default.Prepend__Lemma_h(_module._default.Prepend_Lemma#$T, _k##0, x##0, M##0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
            assume false;
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(249,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, x#2: Box, M#2: DatatypeType :: 
          { _module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#2, M#2), ORD#Less(_k'#2, _k#0) } 
          $IsBox(x#2, _module._default.Prepend_Lemma#$T)
               && $Is(M#2, 
                Tclass._module.Stream(Tclass._module.Stream(_module._default.Prepend_Lemma#$T)))
               && ORD#Less(_k'#2, _k#0)
             ==> _module.__default.StreamOfNonEmpties_h(_module._default.Prepend_Lemma#$T, 
              $LS($LZ), 
              _k'#2, 
              _module.__default.Prepend(_module._default.Prepend_Lemma#$T, $LS($LZ), x#2, M#2)));
    }
}



procedure {:verboseName "Theorem_Flatten (well-formedness)"} CheckWellFormed$$_module.__default.Theorem__Flatten(_module._default.Theorem_Flatten$T: Ty, 
    M#0: DatatypeType
       where $Is(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Theorem_Flatten$T)))
         && $IsAlloc(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Theorem_Flatten$T)), 
          $Heap)
         && $IsA#_module.Stream(M#0), 
    startMarker#0: Box
       where $IsBox(startMarker#0, _module._default.Theorem_Flatten$T)
         && $IsAllocBox(startMarker#0, _module._default.Theorem_Flatten$T, $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem_Flatten (well-formedness)"} CheckWellFormed$$_module.__default.Theorem__Flatten(_module._default.Theorem_Flatten$T: Ty, M#0: DatatypeType, startMarker#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##M#0: DatatypeType;
  var ##x#0: Box;
  var ##M#1: DatatypeType;
  var ##M#2: DatatypeType;
  var ##startMarker#0: Box;
  var ##M#3: DatatypeType;
  var ##x#1: Box;
  var ##M#4: DatatypeType;


    // AddMethodImpl: Theorem_Flatten, CheckWellFormed$$_module.__default.Theorem__Flatten
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    if (*)
    {
        ##x#0 := startMarker#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#0, _module._default.Theorem_Flatten$T, $Heap);
        ##M#1 := M#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##M#1, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Theorem_Flatten$T)), 
          $Heap);
        assume _module.__default.Prepend#canCall(_module._default.Theorem_Flatten$T, startMarker#0, M#0);
        ##M#0 := _module.__default.Prepend(_module._default.Theorem_Flatten$T, $LS($LZ), startMarker#0, M#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Theorem_Flatten$T)), 
          $Heap);
        assume _module.__default.StreamOfNonEmpties#canCall(_module._default.Theorem_Flatten$T, 
          _module.__default.Prepend(_module._default.Theorem_Flatten$T, $LS($LZ), startMarker#0, M#0));
        assume {:id "id241"} _module.__default.StreamOfNonEmpties(_module._default.Theorem_Flatten$T, 
          $LS($LZ), 
          _module.__default.Prepend(_module._default.Theorem_Flatten$T, $LS($LZ), startMarker#0, M#0));
        ##M#2 := M#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##M#2, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Theorem_Flatten$T)), 
          $Heap);
        ##startMarker#0 := startMarker#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##startMarker#0, _module._default.Theorem_Flatten$T, $Heap);
        assume _module.__default.FlattenStartMarker#canCall(_module._default.Theorem_Flatten$T, M#0, startMarker#0);
        ##x#1 := startMarker#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#1, _module._default.Theorem_Flatten$T, $Heap);
        ##M#4 := M#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##M#4, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Theorem_Flatten$T)), 
          $Heap);
        assume _module.__default.Prepend#canCall(_module._default.Theorem_Flatten$T, startMarker#0, M#0);
        ##M#3 := _module.__default.Prepend(_module._default.Theorem_Flatten$T, $LS($LZ), startMarker#0, M#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##M#3, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Theorem_Flatten$T)), 
          $Heap);
        assert {:id "id242"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Theorem_Flatten$T, ##M#3)
           ==> _module.__default.StreamOfNonEmpties(_module._default.Theorem_Flatten$T, $LS($LZ), ##M#3)
             || (_module.Stream.Nil_q(##M#3) ==> Lit(true));
        assert {:id "id243"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Theorem_Flatten$T, ##M#3)
           ==> _module.__default.StreamOfNonEmpties(_module._default.Theorem_Flatten$T, $LS($LZ), ##M#3)
             || (!_module.Stream.Nil_q(##M#3)
               ==> (var N#0 := _module.Stream.tail(##M#3); 
                (var s#0 := $Unbox(_module.Stream.head(##M#3)): DatatypeType; 
                  _module.Stream.Cons_q(s#0))));
        assert {:id "id244"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Theorem_Flatten$T, ##M#3)
           ==> _module.__default.StreamOfNonEmpties(_module._default.Theorem_Flatten$T, $LS($LZ), ##M#3)
             || (!_module.Stream.Nil_q(##M#3)
               ==> (var N#0 := _module.Stream.tail(##M#3); 
                (var s#0 := $Unbox(_module.Stream.head(##M#3)): DatatypeType; 
                  _module.__default.StreamOfNonEmpties(_module._default.Theorem_Flatten$T, $LS($LS($LZ)), N#0))));
        assume _module.__default.StreamOfNonEmpties(_module._default.Theorem_Flatten$T, $LS($LZ), ##M#3);
        assume _module.__default.FlattenNonEmpties#canCall(_module._default.Theorem_Flatten$T, 
          _module.__default.Prepend(_module._default.Theorem_Flatten$T, $LS($LZ), startMarker#0, M#0));
        assume {:id "id245"} $Eq#_module.Stream(_module._default.Theorem_Flatten$T, 
          _module._default.Theorem_Flatten$T, 
          $LS($LS($LZ)), 
          _module.__default.FlattenStartMarker(_module._default.Theorem_Flatten$T, M#0, startMarker#0), 
          _module.__default.FlattenNonEmpties(_module._default.Theorem_Flatten$T, 
            _module.__default.Prepend(_module._default.Theorem_Flatten$T, $LS($LZ), startMarker#0, M#0)));
    }
    else
    {
        assume {:id "id246"} _module.__default.StreamOfNonEmpties(_module._default.Theorem_Flatten$T, 
            $LS($LZ), 
            _module.__default.Prepend(_module._default.Theorem_Flatten$T, $LS($LZ), startMarker#0, M#0))
           ==> $Eq#_module.Stream(_module._default.Theorem_Flatten$T, 
            _module._default.Theorem_Flatten$T, 
            $LS($LS($LZ)), 
            _module.__default.FlattenStartMarker(_module._default.Theorem_Flatten$T, M#0, startMarker#0), 
            _module.__default.FlattenNonEmpties(_module._default.Theorem_Flatten$T, 
              _module.__default.Prepend(_module._default.Theorem_Flatten$T, $LS($LZ), startMarker#0, M#0)));
    }
}



procedure {:verboseName "Theorem_Flatten (call)"} Call$$_module.__default.Theorem__Flatten(_module._default.Theorem_Flatten$T: Ty, 
    M#0: DatatypeType
       where $Is(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Theorem_Flatten$T)))
         && $IsAlloc(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Theorem_Flatten$T)), 
          $Heap)
         && $IsA#_module.Stream(M#0), 
    startMarker#0: Box
       where $IsBox(startMarker#0, _module._default.Theorem_Flatten$T)
         && $IsAllocBox(startMarker#0, _module._default.Theorem_Flatten$T, $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Prepend#canCall(_module._default.Theorem_Flatten$T, startMarker#0, M#0)
     && _module.__default.StreamOfNonEmpties#canCall(_module._default.Theorem_Flatten$T, 
      _module.__default.Prepend(_module._default.Theorem_Flatten$T, $LS($LZ), startMarker#0, M#0))
     && (_module.__default.StreamOfNonEmpties(_module._default.Theorem_Flatten$T, 
        $LS($LZ), 
        _module.__default.Prepend(_module._default.Theorem_Flatten$T, $LS($LZ), startMarker#0, M#0))
       ==> $IsA#_module.Stream(_module.__default.FlattenStartMarker(_module._default.Theorem_Flatten$T, M#0, startMarker#0))
         && $IsA#_module.Stream(_module.__default.FlattenNonEmpties(_module._default.Theorem_Flatten$T, 
            _module.__default.Prepend(_module._default.Theorem_Flatten$T, $LS($LZ), startMarker#0, M#0)))
         && 
        _module.__default.FlattenStartMarker#canCall(_module._default.Theorem_Flatten$T, M#0, startMarker#0)
         && 
        _module.__default.Prepend#canCall(_module._default.Theorem_Flatten$T, startMarker#0, M#0)
         && _module.__default.FlattenNonEmpties#canCall(_module._default.Theorem_Flatten$T, 
          _module.__default.Prepend(_module._default.Theorem_Flatten$T, $LS($LZ), startMarker#0, M#0)));
  ensures {:id "id247"} _module.__default.StreamOfNonEmpties(_module._default.Theorem_Flatten$T, 
      $LS($LZ), 
      _module.__default.Prepend(_module._default.Theorem_Flatten$T, $LS($LZ), startMarker#0, M#0))
     ==> $Eq#_module.Stream(_module._default.Theorem_Flatten$T, 
      _module._default.Theorem_Flatten$T, 
      $LS($LS($LZ)), 
      _module.__default.FlattenStartMarker(_module._default.Theorem_Flatten$T, M#0, startMarker#0), 
      _module.__default.FlattenNonEmpties(_module._default.Theorem_Flatten$T, 
        _module.__default.Prepend(_module._default.Theorem_Flatten$T, $LS($LS($LZ)), startMarker#0, M#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem_Flatten (correctness)"} Impl$$_module.__default.Theorem__Flatten(_module._default.Theorem_Flatten$T: Ty, 
    M#0: DatatypeType
       where $Is(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Theorem_Flatten$T)))
         && $IsAlloc(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Theorem_Flatten$T)), 
          $Heap)
         && $IsA#_module.Stream(M#0), 
    startMarker#0: Box
       where $IsBox(startMarker#0, _module._default.Theorem_Flatten$T)
         && $IsAllocBox(startMarker#0, _module._default.Theorem_Flatten$T, $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Prepend#canCall(_module._default.Theorem_Flatten$T, startMarker#0, M#0)
     && _module.__default.StreamOfNonEmpties#canCall(_module._default.Theorem_Flatten$T, 
      _module.__default.Prepend(_module._default.Theorem_Flatten$T, $LS($LZ), startMarker#0, M#0))
     && (_module.__default.StreamOfNonEmpties(_module._default.Theorem_Flatten$T, 
        $LS($LZ), 
        _module.__default.Prepend(_module._default.Theorem_Flatten$T, $LS($LZ), startMarker#0, M#0))
       ==> $IsA#_module.Stream(_module.__default.FlattenStartMarker(_module._default.Theorem_Flatten$T, M#0, startMarker#0))
         && $IsA#_module.Stream(_module.__default.FlattenNonEmpties(_module._default.Theorem_Flatten$T, 
            _module.__default.Prepend(_module._default.Theorem_Flatten$T, $LS($LZ), startMarker#0, M#0)))
         && 
        _module.__default.FlattenStartMarker#canCall(_module._default.Theorem_Flatten$T, M#0, startMarker#0)
         && 
        _module.__default.Prepend#canCall(_module._default.Theorem_Flatten$T, startMarker#0, M#0)
         && _module.__default.FlattenNonEmpties#canCall(_module._default.Theorem_Flatten$T, 
          _module.__default.Prepend(_module._default.Theorem_Flatten$T, $LS($LZ), startMarker#0, M#0)));
  ensures {:id "id248"} _module.__default.StreamOfNonEmpties(_module._default.Theorem_Flatten$T, 
      $LS($LZ), 
      _module.__default.Prepend(_module._default.Theorem_Flatten$T, $LS($LZ), startMarker#0, M#0))
     ==> $Eq#_module.Stream(_module._default.Theorem_Flatten$T, 
      _module._default.Theorem_Flatten$T, 
      $LS($LS($LZ)), 
      _module.__default.FlattenStartMarker(_module._default.Theorem_Flatten$T, M#0, startMarker#0), 
      _module.__default.FlattenNonEmpties(_module._default.Theorem_Flatten$T, 
        _module.__default.Prepend(_module._default.Theorem_Flatten$T, $LS($LS($LZ)), startMarker#0, M#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem_Flatten (correctness)"} Impl$$_module.__default.Theorem__Flatten(_module._default.Theorem_Flatten$T: Ty, M#0: DatatypeType, startMarker#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var x##0: Box;
  var M##0: DatatypeType;
  var prefix##0: DatatypeType;
  var M##1: DatatypeType;
  var startMarker##0: Box;

    // AddMethodImpl: Theorem_Flatten, Impl$$_module.__default.Theorem__Flatten
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(M#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#M0#0: DatatypeType :: 
      { _module.__default.FlattenStartMarker(_module._default.Theorem_Flatten$T, $ih#M0#0, startMarker#0) } 
        { _module.__default.Prepend(_module._default.Theorem_Flatten$T, $LS($LZ), startMarker#0, $ih#M0#0) } 
      true);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(263,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := startMarker#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    M##0 := M#0;
    call {:id "id249"} Call$$_module.__default.Prepend__Lemma(_module._default.Theorem_Flatten$T, x##0, M##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(264,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##0 := Lit(#_module.Stream.Nil());
    assume true;
    // ProcessCallStmt: CheckSubrange
    M##1 := M#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    startMarker##0 := startMarker#0;
    call {:id "id250"} Call$$_module.__default.Lemma__Flatten(_module._default.Theorem_Flatten$T, prefix##0, M##1, startMarker##0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Lemma_Flatten (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__Flatten(_module._default.Lemma_Flatten$T: Ty, 
    prefix#0: DatatypeType
       where $Is(prefix#0, Tclass._module.Stream(_module._default.Lemma_Flatten$T))
         && $IsAlloc(prefix#0, Tclass._module.Stream(_module._default.Lemma_Flatten$T), $Heap)
         && $IsA#_module.Stream(prefix#0), 
    M#0: DatatypeType
       where $Is(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten$T)))
         && $IsAlloc(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten$T)), 
          $Heap)
         && $IsA#_module.Stream(M#0), 
    startMarker#0: Box
       where $IsBox(startMarker#0, _module._default.Lemma_Flatten$T)
         && $IsAllocBox(startMarker#0, _module._default.Lemma_Flatten$T, $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_Flatten (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__Flatten(_module._default.Lemma_Flatten$T: Ty, 
    prefix#0: DatatypeType, 
    M#0: DatatypeType, 
    startMarker#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##M#0: DatatypeType;
  var ##x#0: Box;
  var ##M#1: DatatypeType;
  var ##prefix#0: DatatypeType;
  var ##M#2: DatatypeType;
  var ##startMarker#0: Box;
  var ##prefix#1: DatatypeType;
  var ##M#3: DatatypeType;
  var ##x#1: Box;
  var ##M#4: DatatypeType;


    // AddMethodImpl: Lemma_Flatten, CheckWellFormed$$_module.__default.Lemma__Flatten
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    if (*)
    {
        ##x#0 := startMarker#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#0, _module._default.Lemma_Flatten$T, $Heap);
        ##M#1 := M#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##M#1, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten$T)), 
          $Heap);
        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten$T, startMarker#0, M#0);
        ##M#0 := _module.__default.Prepend(_module._default.Lemma_Flatten$T, $LS($LZ), startMarker#0, M#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten$T)), 
          $Heap);
        assume _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten$T, 
          _module.__default.Prepend(_module._default.Lemma_Flatten$T, $LS($LZ), startMarker#0, M#0));
        assume {:id "id251"} _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten$T, 
          $LS($LZ), 
          _module.__default.Prepend(_module._default.Lemma_Flatten$T, $LS($LZ), startMarker#0, M#0));
        ##prefix#0 := prefix#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##prefix#0, Tclass._module.Stream(_module._default.Lemma_Flatten$T), $Heap);
        ##M#2 := M#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##M#2, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten$T)), 
          $Heap);
        ##startMarker#0 := startMarker#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##startMarker#0, _module._default.Lemma_Flatten$T, $Heap);
        assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten$T, prefix#0, M#0, startMarker#0);
        ##prefix#1 := prefix#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##prefix#1, Tclass._module.Stream(_module._default.Lemma_Flatten$T), $Heap);
        ##x#1 := startMarker#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#1, _module._default.Lemma_Flatten$T, $Heap);
        ##M#4 := M#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##M#4, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten$T)), 
          $Heap);
        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten$T, startMarker#0, M#0);
        ##M#3 := _module.__default.Prepend(_module._default.Lemma_Flatten$T, $LS($LZ), startMarker#0, M#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##M#3, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten$T)), 
          $Heap);
        assert {:id "id252"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten$T, ##M#3)
           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten$T, $LS($LZ), ##M#3)
             || (_module.Stream.Nil_q(##M#3) ==> Lit(true));
        assert {:id "id253"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten$T, ##M#3)
           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten$T, $LS($LZ), ##M#3)
             || (!_module.Stream.Nil_q(##M#3)
               ==> (var N#0 := _module.Stream.tail(##M#3); 
                (var s#0 := $Unbox(_module.Stream.head(##M#3)): DatatypeType; 
                  _module.Stream.Cons_q(s#0))));
        assert {:id "id254"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten$T, ##M#3)
           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten$T, $LS($LZ), ##M#3)
             || (!_module.Stream.Nil_q(##M#3)
               ==> (var N#0 := _module.Stream.tail(##M#3); 
                (var s#0 := $Unbox(_module.Stream.head(##M#3)): DatatypeType; 
                  _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten$T, $LS($LS($LZ)), N#0))));
        assume _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten$T, $LS($LZ), ##M#3);
        assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten$T, 
          prefix#0, 
          _module.__default.Prepend(_module._default.Lemma_Flatten$T, $LS($LZ), startMarker#0, M#0));
        assume {:id "id255"} $Eq#_module.Stream(_module._default.Lemma_Flatten$T, 
          _module._default.Lemma_Flatten$T, 
          $LS($LS($LZ)), 
          _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten$T, $LS($LZ), prefix#0, M#0, startMarker#0), 
          _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten$T, 
            $LS($LZ), 
            prefix#0, 
            _module.__default.Prepend(_module._default.Lemma_Flatten$T, $LS($LZ), startMarker#0, M#0)));
    }
    else
    {
        assume {:id "id256"} _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten$T, 
            $LS($LZ), 
            _module.__default.Prepend(_module._default.Lemma_Flatten$T, $LS($LZ), startMarker#0, M#0))
           ==> $Eq#_module.Stream(_module._default.Lemma_Flatten$T, 
            _module._default.Lemma_Flatten$T, 
            $LS($LS($LZ)), 
            _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten$T, $LS($LZ), prefix#0, M#0, startMarker#0), 
            _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten$T, 
              $LS($LZ), 
              prefix#0, 
              _module.__default.Prepend(_module._default.Lemma_Flatten$T, $LS($LZ), startMarker#0, M#0)));
    }
}



procedure {:verboseName "Lemma_Flatten (call)"} Call$$_module.__default.Lemma__Flatten(_module._default.Lemma_Flatten$T: Ty, 
    prefix#0: DatatypeType
       where $Is(prefix#0, Tclass._module.Stream(_module._default.Lemma_Flatten$T))
         && $IsAlloc(prefix#0, Tclass._module.Stream(_module._default.Lemma_Flatten$T), $Heap)
         && $IsA#_module.Stream(prefix#0), 
    M#0: DatatypeType
       where $Is(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten$T)))
         && $IsAlloc(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten$T)), 
          $Heap)
         && $IsA#_module.Stream(M#0), 
    startMarker#0: Box
       where $IsBox(startMarker#0, _module._default.Lemma_Flatten$T)
         && $IsAllocBox(startMarker#0, _module._default.Lemma_Flatten$T, $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Prepend#canCall(_module._default.Lemma_Flatten$T, startMarker#0, M#0)
     && _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten$T, 
      _module.__default.Prepend(_module._default.Lemma_Flatten$T, $LS($LZ), startMarker#0, M#0))
     && (_module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten$T, 
        $LS($LZ), 
        _module.__default.Prepend(_module._default.Lemma_Flatten$T, $LS($LZ), startMarker#0, M#0))
       ==> $IsA#_module.Stream(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten$T, $LS($LZ), prefix#0, M#0, startMarker#0))
         && $IsA#_module.Stream(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten$T, 
            $LS($LZ), 
            prefix#0, 
            _module.__default.Prepend(_module._default.Lemma_Flatten$T, $LS($LZ), startMarker#0, M#0)))
         && 
        _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten$T, prefix#0, M#0, startMarker#0)
         && 
        _module.__default.Prepend#canCall(_module._default.Lemma_Flatten$T, startMarker#0, M#0)
         && _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten$T, 
          prefix#0, 
          _module.__default.Prepend(_module._default.Lemma_Flatten$T, $LS($LZ), startMarker#0, M#0)));
  ensures {:id "id257"} _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten$T, 
      $LS($LZ), 
      _module.__default.Prepend(_module._default.Lemma_Flatten$T, $LS($LZ), startMarker#0, M#0))
     ==> $Eq#_module.Stream(_module._default.Lemma_Flatten$T, 
      _module._default.Lemma_Flatten$T, 
      $LS($LS($LZ)), 
      _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten$T, $LS($LS($LZ)), prefix#0, M#0, startMarker#0), 
      _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten$T, 
        $LS($LS($LZ)), 
        prefix#0, 
        _module.__default.Prepend(_module._default.Lemma_Flatten$T, $LS($LS($LZ)), startMarker#0, M#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_Flatten# (co-call)"} CoCall$$_module.__default.Lemma__Flatten_h(_module._default.Lemma_Flatten#$T: Ty, 
    _k#0: Box, 
    prefix#1: DatatypeType
       where $Is(prefix#1, Tclass._module.Stream(_module._default.Lemma_Flatten#$T))
         && $IsAlloc(prefix#1, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap)
         && $IsA#_module.Stream(prefix#1), 
    M#1: DatatypeType
       where $Is(M#1, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)))
         && $IsAlloc(M#1, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
          $Heap)
         && $IsA#_module.Stream(M#1), 
    startMarker#1: Box
       where $IsBox(startMarker#1, _module._default.Lemma_Flatten#$T)
         && $IsAllocBox(startMarker#1, _module._default.Lemma_Flatten#$T, $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, M#1)
     && _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
      _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1))
     && (_module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, 
        $LS($LZ), 
        _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1))
       ==> _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, prefix#1, M#1, startMarker#1)
         && 
        _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, M#1)
         && _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
          prefix#1, 
          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)));
  free ensures {:id "id258"} _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, 
      $LS($LZ), 
      _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1))
     ==> $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
      _module._default.Lemma_Flatten#$T, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), prefix#1, M#1, startMarker#1), 
      _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
        $LS($LZ), 
        prefix#1, 
        _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_Flatten# (correctness)"} Impl$$_module.__default.Lemma__Flatten_h(_module._default.Lemma_Flatten#$T: Ty, 
    _k#0: Box, 
    prefix#1: DatatypeType
       where $Is(prefix#1, Tclass._module.Stream(_module._default.Lemma_Flatten#$T))
         && $IsAlloc(prefix#1, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap)
         && $IsA#_module.Stream(prefix#1), 
    M#1: DatatypeType
       where $Is(M#1, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)))
         && $IsAlloc(M#1, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
          $Heap)
         && $IsA#_module.Stream(M#1), 
    startMarker#1: Box
       where $IsBox(startMarker#1, _module._default.Lemma_Flatten#$T)
         && $IsAllocBox(startMarker#1, _module._default.Lemma_Flatten#$T, $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, M#1)
     && _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
      _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1))
     && (_module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, 
        $LS($LZ), 
        _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1))
       ==> _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, prefix#1, M#1, startMarker#1)
         && 
        _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, M#1)
         && _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
          prefix#1, 
          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)));
  ensures {:id "id259"} _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, 
      $LS($LZ), 
      _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1))
     ==> $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
        _module._default.Lemma_Flatten#$T, 
        _k#0, 
        $LS($LS($LZ)), 
        _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), prefix#1, M#1, startMarker#1), 
        _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
          $LS($LZ), 
          prefix#1, 
          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)))
       || (0 < ORD#Offset(_k#0)
         ==> 
        _module.Stream.Nil_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1))
         ==> _module.Stream.Nil_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
            $LS($LS($LZ)), 
            prefix#1, 
            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1))));
  ensures {:id "id260"} _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, 
      $LS($LZ), 
      _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1))
     ==> $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
        _module._default.Lemma_Flatten#$T, 
        _k#0, 
        $LS($LS($LZ)), 
        _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), prefix#1, M#1, startMarker#1), 
        _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
          $LS($LZ), 
          prefix#1, 
          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)))
       || (0 < ORD#Offset(_k#0)
         ==> 
        _module.Stream.Cons_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1))
         ==> _module.Stream.Cons_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
              $LS($LS($LZ)), 
              prefix#1, 
              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1)))
           && 
          _module.Stream.head(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1))
             == _module.Stream.head(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                $LS($LS($LZ)), 
                prefix#1, 
                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1)))
           && $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
            _module._default.Lemma_Flatten#$T, 
            ORD#Minus(_k#0, ORD#FromNat(1)), 
            $LS($LS($LZ)), 
            _module.Stream.tail(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1)), 
            _module.Stream.tail(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                $LS($LS($LZ)), 
                prefix#1, 
                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1)))));
  ensures {:id "id261"} _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, 
      $LS($LZ), 
      _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1))
     ==> $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
        _module._default.Lemma_Flatten#$T, 
        _k#0, 
        $LS($LS($LZ)), 
        _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), prefix#1, M#1, startMarker#1), 
        _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
          $LS($LZ), 
          prefix#1, 
          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)))
       || 
      (0 < ORD#Offset(_k#0)
         ==> (_module.Stream.Nil_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1))
             ==> _module.Stream.Nil_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                $LS($LS($LZ)), 
                prefix#1, 
                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1))))
           && (_module.Stream.Cons_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1))
             ==> _module.Stream.Cons_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                  $LS($LS($LZ)), 
                  prefix#1, 
                  _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1)))
               && 
              _module.Stream.head(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1))
                 == _module.Stream.head(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                    $LS($LS($LZ)), 
                    prefix#1, 
                    _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1)))
               && $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                _module._default.Lemma_Flatten#$T, 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                $LS($LS($LZ)), 
                _module.Stream.tail(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1)), 
                _module.Stream.tail(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                    $LS($LS($LZ)), 
                    prefix#1, 
                    _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1))))))
       || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
         ==> $Eq#_module.Stream(_module._default.Lemma_Flatten#$T, 
          _module._default.Lemma_Flatten#$T, 
          $LS($LS($LZ)), 
          _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), prefix#1, M#1, startMarker#1), 
          _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
            $LS($LZ), 
            prefix#1, 
            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_Flatten# (correctness)"} Impl$$_module.__default.Lemma__Flatten_h(_module._default.Lemma_Flatten#$T: Ty, 
    _k#0: Box, 
    prefix#1: DatatypeType, 
    M#1: DatatypeType, 
    startMarker#1: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var x##0: Box;
  var M##0: DatatypeType;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var tl#0: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var hd#0: Box;
  var let#0_0_1#0#0: Box;
  var _k##0: Box;
  var prefix##0: DatatypeType;
  var M##1: DatatypeType;
  var startMarker##0: Box;
  var _mcc#2#0: DatatypeType;
  var _mcc#3#0: DatatypeType;
  var N#2: DatatypeType;
  var let#0_1_0_0#0#0: DatatypeType;
  var s#2: DatatypeType;
  var let#0_1_0_1#0#0: DatatypeType;
  var _k##1: Box;
  var prefix##1: DatatypeType;
  var M##2: DatatypeType;
  var startMarker##1: Box;
  var ##prefix#2: DatatypeType;
  var ##M#5: DatatypeType;
  var ##startMarker#1: Box;
  var ##prefix#3: DatatypeType;
  var ##M#6: DatatypeType;
  var ##startMarker#2: Box;
  var ##prefix#4: DatatypeType;
  var ##M#7: DatatypeType;
  var ##startMarker#3: Box;
  var ##prefix#5: DatatypeType;
  var ##M#8: DatatypeType;
  var ##x#2: Box;
  var ##M#9: DatatypeType;
  var ##prefix#6: DatatypeType;
  var ##M#10: DatatypeType;
  var ##x#3: Box;
  var ##M#11: DatatypeType;
  var ##prefix#7: DatatypeType;
  var ##M#12: DatatypeType;
  var ##x#4: Box;
  var ##M#13: DatatypeType;
  var ##prefix#8: DatatypeType;
  var ##M#14: DatatypeType;
  var ##x#5: Box;
  var ##M#15: DatatypeType;
  var ##prefix#9: DatatypeType;
  var ##M#16: DatatypeType;
  var ##x#6: Box;
  var ##M#17: DatatypeType;
  var ##prefix#10: DatatypeType;
  var ##M#18: DatatypeType;
  var ##x#7: Box;
  var ##M#19: DatatypeType;
  var ##prefix#11: DatatypeType;
  var ##M#20: DatatypeType;
  var ##x#8: Box;
  var ##M#21: DatatypeType;
  var ##prefix#12: DatatypeType;
  var ##M#22: DatatypeType;
  var ##x#9: Box;
  var ##M#23: DatatypeType;
  var ##prefix#13: DatatypeType;
  var ##M#24: DatatypeType;
  var ##x#10: Box;
  var ##M#25: DatatypeType;
  var _k##2: Box;
  var prefix##2: DatatypeType;
  var M##3: DatatypeType;
  var startMarker##2: Box;
  var ##prefix#14: DatatypeType;
  var ##M#26: DatatypeType;
  var ##startMarker#4: Box;
  var ##prefix#15: DatatypeType;
  var ##M#27: DatatypeType;
  var ##x#11: Box;
  var ##M#28: DatatypeType;
  var ##prefix#16: DatatypeType;
  var ##M#29: DatatypeType;
  var ##startMarker#5: Box;
  var ##prefix#17: DatatypeType;
  var ##M#30: DatatypeType;
  var ##x#12: Box;
  var ##M#31: DatatypeType;
  var ##prefix#18: DatatypeType;
  var ##M#32: DatatypeType;
  var ##startMarker#6: Box;
  var ##prefix#19: DatatypeType;
  var ##M#33: DatatypeType;
  var ##x#13: Box;
  var ##M#34: DatatypeType;
  var ##prefix#20: DatatypeType;
  var ##M#35: DatatypeType;
  var ##startMarker#7: Box;
  var ##prefix#21: DatatypeType;
  var ##M#36: DatatypeType;
  var ##x#14: Box;
  var ##M#37: DatatypeType;
  var ##prefix#22: DatatypeType;
  var ##M#38: DatatypeType;
  var ##startMarker#8: Box;
  var ##prefix#23: DatatypeType;
  var ##M#39: DatatypeType;
  var ##x#15: Box;
  var ##M#40: DatatypeType;
  var ##prefix#24: DatatypeType;
  var ##M#41: DatatypeType;
  var ##x#16: Box;
  var ##M#42: DatatypeType;
  var ##prefix#25: DatatypeType;
  var ##M#43: DatatypeType;
  var ##x#17: Box;
  var ##M#44: DatatypeType;
  var ##prefix#26: DatatypeType;
  var ##M#45: DatatypeType;
  var ##startMarker#9: Box;
  var ##prefix#27: DatatypeType;
  var ##M#46: DatatypeType;
  var ##x#18: Box;
  var ##M#47: DatatypeType;
  var ##prefix#28: DatatypeType;
  var ##M#48: DatatypeType;
  var ##startMarker#10: Box;
  var ##prefix#29: DatatypeType;
  var ##M#49: DatatypeType;
  var ##x#19: Box;
  var ##M#50: DatatypeType;
  var ##prefix#30: DatatypeType;
  var ##M#51: DatatypeType;
  var ##startMarker#11: Box;
  var ##prefix#31: DatatypeType;
  var ##M#52: DatatypeType;
  var ##startMarker#12: Box;
  var ##prefix#32: DatatypeType;
  var ##M#53: DatatypeType;
  var ##startMarker#13: Box;
  var ##prefix#33: DatatypeType;
  var ##M#54: DatatypeType;
  var ##x#20: Box;
  var ##M#55: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Lemma_Flatten#, Impl$$_module.__default.Lemma__Flatten_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(prefix#1);
    assume $IsA#_module.Stream(M#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#prefix0#0: DatatypeType, $ih#M0#0: DatatypeType :: 
      { $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
          _module._default.Lemma_Flatten#$T, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, 
            $LS($LZ), 
            $ih#prefix0#0, 
            $ih#M0#0, 
            startMarker#1), 
          _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
            $LS($LZ), 
            $ih#prefix0#0, 
            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, $ih#M0#0))) } 
      $Is($ih#prefix0#0, Tclass._module.Stream(_module._default.Lemma_Flatten#$T))
           && $Is($ih#M0#0, 
            Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)))
           && Lit(true)
           && ORD#Less($ih#_k0#0, _k#0)
         ==> 
        _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, 
          $LS($LZ), 
          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, $ih#M0#0))
         ==> $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
          _module._default.Lemma_Flatten#$T, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, 
            $LS($LZ), 
            $ih#prefix0#0, 
            $ih#M0#0, 
            startMarker#1), 
          _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
            $LS($LZ), 
            $ih#prefix0#0, 
            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, $ih#M0#0))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(273,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(274,16)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##0 := startMarker#1;
        assume true;
        // ProcessCallStmt: CheckSubrange
        M##0 := M#1;
        call {:id "id262"} Call$$_module.__default.Prepend__Lemma(_module._default.Lemma_Flatten#$T, x##0, M##0);
        // TrCallStmt: After ProcessCallStmt
        assume true;
        havoc _mcc#0#0, _mcc#1#0;
        if (prefix#1 == #_module.Stream.Nil())
        {
            assume true;
            havoc _mcc#2#0, _mcc#3#0;
            if (M#1 == #_module.Stream.Nil())
            {
            }
            else if (M#1 == #_module.Stream.Cons($Box(_mcc#2#0), _mcc#3#0))
            {
                assume $Is(_mcc#2#0, Tclass._module.Stream(_module._default.Lemma_Flatten#$T));
                assume $Is(_mcc#3#0, 
                  Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)));
                havoc N#2;
                assume $Is(N#2, 
                    Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)))
                   && $IsAlloc(N#2, 
                    Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                    $Heap);
                assume {:id "id270"} let#0_1_0_0#0#0 == _mcc#3#0;
                assume true;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#0_1_0_0#0#0, 
                  Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)));
                assume {:id "id271"} N#2 == let#0_1_0_0#0#0;
                havoc s#2;
                assume $Is(s#2, Tclass._module.Stream(_module._default.Lemma_Flatten#$T))
                   && $IsAlloc(s#2, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                assume {:id "id272"} let#0_1_0_1#0#0 == _mcc#2#0;
                assume true;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#0_1_0_1#0#0, Tclass._module.Stream(_module._default.Lemma_Flatten#$T));
                assume {:id "id273"} s#2 == let#0_1_0_1#0#0;
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(282,11)
                if (*)
                {
                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(284,26)
                    // TrCallStmt: Before ProcessCallStmt
                    assert {:id "id274"} ORD#IsNat(Lit(ORD#FromNat(1)));
                    assert {:id "id275"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    _k##1 := ORD#Minus(_k#0, ORD#FromNat(1));
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    prefix##1 := s#2;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    M##2 := N#2;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    startMarker##1 := startMarker#1;
                    call {:id "id276"} CoCall$$_module.__default.Lemma__Flatten_h(_module._default.Lemma_Flatten#$T, _k##1, prefix##1, M##2, startMarker##1);
                    // TrCallStmt: After ProcessCallStmt
                }
                else
                {
                    // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(290,13)
                    // Assume Fuel Constant
                    if (*)
                    {
                        // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(290,13)
                        ##prefix#4 := prefix#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#4, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##M#7 := M#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#7, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        ##startMarker#3 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##startMarker#3, _module._default.Lemma_Flatten#$T, $Heap);
                        assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, prefix#1, M#1, startMarker#1);
                        assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, prefix#1, M#1, startMarker#1);
                        assume false;
                    }
                    else if (*)
                    {
                        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(290,13)
                        ##prefix#2 := prefix#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#2, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##M#5 := M#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#5, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        ##startMarker#1 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##startMarker#1, _module._default.Lemma_Flatten#$T, $Heap);
                        assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, prefix#1, M#1, startMarker#1);
                        assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, prefix#1, M#1, startMarker#1);
                        // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(290,13)
                        push;
                        pop;
                        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(290,13)
                        ##prefix#3 := s#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#3, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##M#6 := N#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#6, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        ##startMarker#2 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##startMarker#2, _module._default.Lemma_Flatten#$T, $Heap);
                        assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, s#2, N#2, startMarker#1);
                        assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, s#2, N#2, startMarker#1);
                        // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(290,13)
                        assert {:id "id277"} {:subsumption 0} $Eq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                          _module._default.Lemma_Flatten#$T, 
                          $LS($LS($LZ)), 
                          _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1), 
                          #_module.Stream.Cons(startMarker#1, 
                            _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1)));
                        assume false;
                    }

                    assume {:id "id278"} $Eq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                      _module._default.Lemma_Flatten#$T, 
                      $LS($LS($LZ)), 
                      _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), prefix#1, M#1, startMarker#1), 
                      #_module.Stream.Cons(startMarker#1, 
                        _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1)));
                    // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(296,13)
                    // Assume Fuel Constant
                    if (*)
                    {
                        // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(296,13)
                        ##prefix#13 := prefix#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#13, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##x#10 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#10, _module._default.Lemma_Flatten#$T, $Heap);
                        ##M#25 := M#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#25, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, M#1);
                        ##M#24 := _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#24, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assert {:id "id311"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#24)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#24)
                             || (_module.Stream.Nil_q(##M#24) ==> Lit(true));
                        assert {:id "id312"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#24)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#24)
                             || (!_module.Stream.Nil_q(##M#24)
                               ==> (var N#19 := _module.Stream.tail(##M#24); 
                                (var s#19 := $Unbox(_module.Stream.head(##M#24)): DatatypeType; 
                                  _module.Stream.Cons_q(s#19))));
                        assert {:id "id313"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#24)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#24)
                             || (!_module.Stream.Nil_q(##M#24)
                               ==> (var N#19 := _module.Stream.tail(##M#24); 
                                (var s#19 := $Unbox(_module.Stream.head(##M#24)): DatatypeType; 
                                  _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), N#19))));
                        assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                          prefix#1, 
                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1));
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, M#1)
                           && _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                            prefix#1, 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1));
                        assume false;
                    }
                    else if (*)
                    {
                        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(296,13)
                        ##prefix#11 := prefix#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#11, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##x#8 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#8, _module._default.Lemma_Flatten#$T, $Heap);
                        ##M#21 := M#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#21, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, M#1);
                        ##M#20 := _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#20, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume {:id "id304"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#20)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#20)
                             || (_module.Stream.Nil_q(##M#20) ==> Lit(true));
                        assume {:id "id305"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#20)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#20)
                             || (!_module.Stream.Nil_q(##M#20)
                               ==> (var N#15 := _module.Stream.tail(##M#20); 
                                (var s#15 := $Unbox(_module.Stream.head(##M#20)): DatatypeType; 
                                  _module.Stream.Cons_q(s#15))));
                        assume {:id "id306"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#20)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#20)
                             || (!_module.Stream.Nil_q(##M#20)
                               ==> (var N#15 := _module.Stream.tail(##M#20); 
                                (var s#15 := $Unbox(_module.Stream.head(##M#20)): DatatypeType; 
                                  _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), N#15))));
                        assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                          prefix#1, 
                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1));
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, M#1)
                           && _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                            prefix#1, 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1));
                        // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(296,13)
                        push;
                        pop;
                        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(296,13)
                        ##prefix#12 := prefix#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#12, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##x#9 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#9, _module._default.Lemma_Flatten#$T, $Heap);
                        ##M#23 := #_module.Stream.Cons($Box(s#2), N#2);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#23, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, 
                          startMarker#1, 
                          #_module.Stream.Cons($Box(s#2), N#2));
                        ##M#22 := _module.__default.Prepend(_module._default.Lemma_Flatten#$T, 
                          $LS($LZ), 
                          startMarker#1, 
                          #_module.Stream.Cons($Box(s#2), N#2));
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#22, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assert {:id "id307"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#22)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#22)
                             || (_module.Stream.Nil_q(##M#22) ==> Lit(true));
                        assert {:id "id308"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#22)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#22)
                             || (!_module.Stream.Nil_q(##M#22)
                               ==> (var N#17 := _module.Stream.tail(##M#22); 
                                (var s#17 := $Unbox(_module.Stream.head(##M#22)): DatatypeType; 
                                  _module.Stream.Cons_q(s#17))));
                        assert {:id "id309"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#22)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#22)
                             || (!_module.Stream.Nil_q(##M#22)
                               ==> (var N#17 := _module.Stream.tail(##M#22); 
                                (var s#17 := $Unbox(_module.Stream.head(##M#22)): DatatypeType; 
                                  _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), N#17))));
                        assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                          prefix#1, 
                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, 
                            $LS($LZ), 
                            startMarker#1, 
                            #_module.Stream.Cons($Box(s#2), N#2)));
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, 
                            startMarker#1, 
                            #_module.Stream.Cons($Box(s#2), N#2))
                           && _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                            prefix#1, 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, 
                              $LS($LZ), 
                              startMarker#1, 
                              #_module.Stream.Cons($Box(s#2), N#2)));
                        // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(296,13)
                        assert {:id "id310"} {:subsumption 0} $Eq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                          _module._default.Lemma_Flatten#$T, 
                          $LS($LS($LZ)), 
                          _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                            $LS($LS($LZ)), 
                            prefix#1, 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1)), 
                          _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                            $LS($LS($LZ)), 
                            prefix#1, 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, 
                              $LS($LS($LZ)), 
                              startMarker#1, 
                              #_module.Stream.Cons($Box(s#2), N#2))));
                        assume false;
                    }
                    else if (*)
                    {
                        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(296,13)
                        ##prefix#9 := prefix#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#9, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##x#6 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#6, _module._default.Lemma_Flatten#$T, $Heap);
                        ##M#17 := #_module.Stream.Cons($Box(s#2), N#2);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#17, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, 
                          startMarker#1, 
                          #_module.Stream.Cons($Box(s#2), N#2));
                        ##M#16 := _module.__default.Prepend(_module._default.Lemma_Flatten#$T, 
                          $LS($LZ), 
                          startMarker#1, 
                          #_module.Stream.Cons($Box(s#2), N#2));
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#16, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume {:id "id297"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#16)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#16)
                             || (_module.Stream.Nil_q(##M#16) ==> Lit(true));
                        assume {:id "id298"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#16)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#16)
                             || (!_module.Stream.Nil_q(##M#16)
                               ==> (var N#11 := _module.Stream.tail(##M#16); 
                                (var s#11 := $Unbox(_module.Stream.head(##M#16)): DatatypeType; 
                                  _module.Stream.Cons_q(s#11))));
                        assume {:id "id299"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#16)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#16)
                             || (!_module.Stream.Nil_q(##M#16)
                               ==> (var N#11 := _module.Stream.tail(##M#16); 
                                (var s#11 := $Unbox(_module.Stream.head(##M#16)): DatatypeType; 
                                  _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), N#11))));
                        assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                          prefix#1, 
                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, 
                            $LS($LZ), 
                            startMarker#1, 
                            #_module.Stream.Cons($Box(s#2), N#2)));
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, 
                            startMarker#1, 
                            #_module.Stream.Cons($Box(s#2), N#2))
                           && _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                            prefix#1, 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, 
                              $LS($LZ), 
                              startMarker#1, 
                              #_module.Stream.Cons($Box(s#2), N#2)));
                        // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(296,13)
                        push;
                        pop;
                        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(296,13)
                        ##prefix#10 := prefix#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#10, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##x#7 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#7, _module._default.Lemma_Flatten#$T, $Heap);
                        ##M#19 := N#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#19, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, N#2);
                        ##M#18 := #_module.Stream.Cons($Box(#_module.Stream.Cons(startMarker#1, s#2)), 
                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2));
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#18, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assert {:id "id300"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#18)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#18)
                             || (_module.Stream.Nil_q(##M#18) ==> Lit(true));
                        assert {:id "id301"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#18)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#18)
                             || (!_module.Stream.Nil_q(##M#18)
                               ==> (var N#13 := _module.Stream.tail(##M#18); 
                                (var s#13 := $Unbox(_module.Stream.head(##M#18)): DatatypeType; 
                                  _module.Stream.Cons_q(s#13))));
                        assert {:id "id302"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#18)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#18)
                             || (!_module.Stream.Nil_q(##M#18)
                               ==> (var N#13 := _module.Stream.tail(##M#18); 
                                (var s#13 := $Unbox(_module.Stream.head(##M#18)): DatatypeType; 
                                  _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), N#13))));
                        assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                          prefix#1, 
                          #_module.Stream.Cons($Box(#_module.Stream.Cons(startMarker#1, s#2)), 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2)));
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, N#2)
                           && _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                            prefix#1, 
                            #_module.Stream.Cons($Box(#_module.Stream.Cons(startMarker#1, s#2)), 
                              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2)));
                        // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(296,13)
                        assert {:id "id303"} {:subsumption 0} $Eq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                          _module._default.Lemma_Flatten#$T, 
                          $LS($LS($LZ)), 
                          _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                            $LS($LS($LZ)), 
                            prefix#1, 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, 
                              $LS($LS($LZ)), 
                              startMarker#1, 
                              #_module.Stream.Cons($Box(s#2), N#2))), 
                          _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                            $LS($LS($LZ)), 
                            prefix#1, 
                            #_module.Stream.Cons($Box(#_module.Stream.Cons(startMarker#1, s#2)), 
                              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2))));
                        assume false;
                    }
                    else if (*)
                    {
                        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(296,13)
                        ##prefix#7 := prefix#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#7, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##x#4 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#4, _module._default.Lemma_Flatten#$T, $Heap);
                        ##M#13 := N#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#13, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, N#2);
                        ##M#12 := #_module.Stream.Cons($Box(#_module.Stream.Cons(startMarker#1, s#2)), 
                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2));
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#12, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume {:id "id288"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#12)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#12)
                             || (_module.Stream.Nil_q(##M#12) ==> Lit(true));
                        assume {:id "id289"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#12)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#12)
                             || (!_module.Stream.Nil_q(##M#12)
                               ==> (var N#7 := _module.Stream.tail(##M#12); 
                                (var s#7 := $Unbox(_module.Stream.head(##M#12)): DatatypeType; 
                                  _module.Stream.Cons_q(s#7))));
                        assume {:id "id290"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#12)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#12)
                             || (!_module.Stream.Nil_q(##M#12)
                               ==> (var N#7 := _module.Stream.tail(##M#12); 
                                (var s#7 := $Unbox(_module.Stream.head(##M#12)): DatatypeType; 
                                  _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), N#7))));
                        assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                          prefix#1, 
                          #_module.Stream.Cons($Box(#_module.Stream.Cons(startMarker#1, s#2)), 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2)));
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, N#2)
                           && _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                            prefix#1, 
                            #_module.Stream.Cons($Box(#_module.Stream.Cons(startMarker#1, s#2)), 
                              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2)));
                        // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(296,13)
                        push;
                        pop;
                        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(296,13)
                        assert {:id "id291"} _module.Stream.Cons_q(#_module.Stream.Cons(startMarker#1, s#2));
                        assert {:id "id292"} _module.Stream.Cons_q(#_module.Stream.Cons(startMarker#1, s#2));
                        ##prefix#8 := _module.Stream.tail(#_module.Stream.Cons(startMarker#1, s#2));
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#8, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##x#5 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#5, _module._default.Lemma_Flatten#$T, $Heap);
                        ##M#15 := N#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#15, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, N#2);
                        ##M#14 := _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#14, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assert {:id "id293"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#14)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#14)
                             || (_module.Stream.Nil_q(##M#14) ==> Lit(true));
                        assert {:id "id294"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#14)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#14)
                             || (!_module.Stream.Nil_q(##M#14)
                               ==> (var N#9 := _module.Stream.tail(##M#14); 
                                (var s#9 := $Unbox(_module.Stream.head(##M#14)): DatatypeType; 
                                  _module.Stream.Cons_q(s#9))));
                        assert {:id "id295"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#14)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#14)
                             || (!_module.Stream.Nil_q(##M#14)
                               ==> (var N#9 := _module.Stream.tail(##M#14); 
                                (var s#9 := $Unbox(_module.Stream.head(##M#14)): DatatypeType; 
                                  _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), N#9))));
                        assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                          _module.Stream.tail(#_module.Stream.Cons(startMarker#1, s#2)), 
                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2));
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, N#2)
                           && _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                            _module.Stream.tail(#_module.Stream.Cons(startMarker#1, s#2)), 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2));
                        // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(296,13)
                        assert {:id "id296"} {:subsumption 0} $Eq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                          _module._default.Lemma_Flatten#$T, 
                          $LS($LS($LZ)), 
                          _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                            $LS($LS($LZ)), 
                            prefix#1, 
                            #_module.Stream.Cons($Box(#_module.Stream.Cons(startMarker#1, s#2)), 
                              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2))), 
                          #_module.Stream.Cons(_module.Stream.head(#_module.Stream.Cons(startMarker#1, s#2)), 
                            _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                              $LS($LS($LZ)), 
                              _module.Stream.tail(#_module.Stream.Cons(startMarker#1, s#2)), 
                              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2))));
                        assume false;
                    }
                    else if (*)
                    {
                        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(296,13)
                        assume {:id "id279"} _module.Stream.Cons_q(#_module.Stream.Cons(startMarker#1, s#2));
                        assume {:id "id280"} _module.Stream.Cons_q(#_module.Stream.Cons(startMarker#1, s#2));
                        ##prefix#5 := _module.Stream.tail(#_module.Stream.Cons(startMarker#1, s#2));
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#5, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##x#2 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#2, _module._default.Lemma_Flatten#$T, $Heap);
                        ##M#9 := N#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#9, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, N#2);
                        ##M#8 := _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#8, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume {:id "id281"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#8)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#8)
                             || (_module.Stream.Nil_q(##M#8) ==> Lit(true));
                        assume {:id "id282"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#8)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#8)
                             || (!_module.Stream.Nil_q(##M#8)
                               ==> (var N#3 := _module.Stream.tail(##M#8); 
                                (var s#3 := $Unbox(_module.Stream.head(##M#8)): DatatypeType; 
                                  _module.Stream.Cons_q(s#3))));
                        assume {:id "id283"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#8)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#8)
                             || (!_module.Stream.Nil_q(##M#8)
                               ==> (var N#3 := _module.Stream.tail(##M#8); 
                                (var s#3 := $Unbox(_module.Stream.head(##M#8)): DatatypeType; 
                                  _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), N#3))));
                        assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                          _module.Stream.tail(#_module.Stream.Cons(startMarker#1, s#2)), 
                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2));
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, N#2)
                           && _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                            _module.Stream.tail(#_module.Stream.Cons(startMarker#1, s#2)), 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2));
                        // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(296,13)
                        push;
                        pop;
                        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(296,13)
                        ##prefix#6 := s#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#6, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##x#3 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#3, _module._default.Lemma_Flatten#$T, $Heap);
                        ##M#11 := N#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#11, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, N#2);
                        ##M#10 := _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#10, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assert {:id "id284"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#10)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#10)
                             || (_module.Stream.Nil_q(##M#10) ==> Lit(true));
                        assert {:id "id285"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#10)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#10)
                             || (!_module.Stream.Nil_q(##M#10)
                               ==> (var N#5 := _module.Stream.tail(##M#10); 
                                (var s#5 := $Unbox(_module.Stream.head(##M#10)): DatatypeType; 
                                  _module.Stream.Cons_q(s#5))));
                        assert {:id "id286"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#10)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#10)
                             || (!_module.Stream.Nil_q(##M#10)
                               ==> (var N#5 := _module.Stream.tail(##M#10); 
                                (var s#5 := $Unbox(_module.Stream.head(##M#10)): DatatypeType; 
                                  _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), N#5))));
                        assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                          s#2, 
                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2));
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, N#2)
                           && _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                            s#2, 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2));
                        // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(296,13)
                        assert {:id "id287"} {:subsumption 0} $Eq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                          _module._default.Lemma_Flatten#$T, 
                          $LS($LS($LZ)), 
                          #_module.Stream.Cons(_module.Stream.head(#_module.Stream.Cons(startMarker#1, s#2)), 
                            _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                              $LS($LS($LZ)), 
                              _module.Stream.tail(#_module.Stream.Cons(startMarker#1, s#2)), 
                              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2))), 
                          #_module.Stream.Cons(startMarker#1, 
                            _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                              $LS($LS($LZ)), 
                              s#2, 
                              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2))));
                        assume false;
                    }

                    assume {:id "id314"} $Eq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                      _module._default.Lemma_Flatten#$T, 
                      $LS($LS($LZ)), 
                      _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                        $LS($LZ), 
                        prefix#1, 
                        _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)), 
                      #_module.Stream.Cons(startMarker#1, 
                        _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                          $LS($LZ), 
                          s#2, 
                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2))));
                    // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(309,13)
                    // Assume Fuel Constant
                    if (*)
                    {
                        // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(309,13)
                        assume true;
                        assume false;
                    }
                    else if (*)
                    {
                        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(309,13)
                        ##prefix#28 := s#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#28, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##M#48 := N#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#48, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        ##startMarker#10 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##startMarker#10, _module._default.Lemma_Flatten#$T, $Heap);
                        assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, s#2, N#2, startMarker#1);
                        ##prefix#29 := prefix#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#29, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##x#19 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#19, _module._default.Lemma_Flatten#$T, $Heap);
                        ##M#50 := M#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#50, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, M#1);
                        ##M#49 := _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#49, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume {:id "id368"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#49)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#49)
                             || (_module.Stream.Nil_q(##M#49) ==> Lit(true));
                        assume {:id "id369"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#49)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#49)
                             || (!_module.Stream.Nil_q(##M#49)
                               ==> (var N#37 := _module.Stream.tail(##M#49); 
                                (var s#37 := $Unbox(_module.Stream.head(##M#49)): DatatypeType; 
                                  _module.Stream.Cons_q(s#37))));
                        assume {:id "id370"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#49)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#49)
                             || (!_module.Stream.Nil_q(##M#49)
                               ==> (var N#37 := _module.Stream.tail(##M#49); 
                                (var s#37 := $Unbox(_module.Stream.head(##M#49)): DatatypeType; 
                                  _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), N#37))));
                        assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                          prefix#1, 
                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1));
                        assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, s#2, N#2, startMarker#1)
                           && 
                          _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, M#1)
                           && _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                            prefix#1, 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1));
                        // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(309,13)
                        assume {:id "id371"} $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                          _module._default.Lemma_Flatten#$T, 
                          _k#0, 
                          $LS($LS($LZ)), 
                          #_module.Stream.Cons(startMarker#1, 
                            _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1)), 
                          _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                            $LS($LZ), 
                            prefix#1, 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)));
                        // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(309,13)
                        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(312,17)
                        assert {:id "id372"} ORD#IsNat(Lit(ORD#FromNat(1)));
                        assert {:id "id373"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                        ##prefix#30 := prefix#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#30, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##M#51 := M#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#51, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        ##startMarker#11 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##startMarker#11, _module._default.Lemma_Flatten#$T, $Heap);
                        assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, prefix#1, M#1, startMarker#1);
                        ##prefix#31 := s#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#31, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##M#52 := N#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#52, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        ##startMarker#12 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##startMarker#12, _module._default.Lemma_Flatten#$T, $Heap);
                        assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, s#2, N#2, startMarker#1);
                        assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, prefix#1, M#1, startMarker#1)
                           && _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, s#2, N#2, startMarker#1);
                        assert {:id "id374"} {:subsumption 0} $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                            _module._default.Lemma_Flatten#$T, 
                            ORD#Minus(_k#0, ORD#FromNat(1)), 
                            $LS($LS($LZ)), 
                            _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), prefix#1, M#1, startMarker#1), 
                            #_module.Stream.Cons(startMarker#1, 
                              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1)))
                           || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                             ==> 
                            _module.Stream.Nil_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1))
                             ==> _module.Stream.Nil_q(#_module.Stream.Cons(startMarker#1, 
                                _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1))));
                        assert {:id "id375"} {:subsumption 0} $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                            _module._default.Lemma_Flatten#$T, 
                            ORD#Minus(_k#0, ORD#FromNat(1)), 
                            $LS($LS($LZ)), 
                            _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), prefix#1, M#1, startMarker#1), 
                            #_module.Stream.Cons(startMarker#1, 
                              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1)))
                           || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                             ==> 
                            _module.Stream.Cons_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1))
                             ==> _module.Stream.Cons_q(#_module.Stream.Cons(startMarker#1, 
                                  _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1)))
                               && 
                              _module.Stream.head(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1))
                                 == _module.Stream.head(#_module.Stream.Cons(startMarker#1, 
                                    _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1)))
                               && $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                                _module._default.Lemma_Flatten#$T, 
                                ORD#Minus(ORD#Minus(_k#0, ORD#FromNat(1)), ORD#FromNat(1)), 
                                $LS($LS($LZ)), 
                                _module.Stream.tail(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1)), 
                                _module.Stream.tail(#_module.Stream.Cons(startMarker#1, 
                                    _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1)))));
                        assert {:id "id376"} {:subsumption 0} $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                            _module._default.Lemma_Flatten#$T, 
                            ORD#Minus(_k#0, ORD#FromNat(1)), 
                            $LS($LS($LZ)), 
                            _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), prefix#1, M#1, startMarker#1), 
                            #_module.Stream.Cons(startMarker#1, 
                              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1)))
                           || 
                          (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                             ==> (_module.Stream.Nil_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1))
                                 ==> _module.Stream.Nil_q(#_module.Stream.Cons(startMarker#1, 
                                    _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1))))
                               && (_module.Stream.Cons_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1))
                                 ==> _module.Stream.Cons_q(#_module.Stream.Cons(startMarker#1, 
                                      _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1)))
                                   && 
                                  _module.Stream.head(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1))
                                     == _module.Stream.head(#_module.Stream.Cons(startMarker#1, 
                                        _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1)))
                                   && $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                                    _module._default.Lemma_Flatten#$T, 
                                    ORD#Minus(ORD#Minus(_k#0, ORD#FromNat(1)), ORD#FromNat(1)), 
                                    $LS($LS($LZ)), 
                                    _module.Stream.tail(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1)), 
                                    _module.Stream.tail(#_module.Stream.Cons(startMarker#1, 
                                        _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1))))))
                           || (ORD#Minus(_k#0, ORD#FromNat(1)) != ORD#FromNat(0)
                               && ORD#IsLimit(ORD#Minus(_k#0, ORD#FromNat(1)))
                             ==> $Eq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                              _module._default.Lemma_Flatten#$T, 
                              $LS($LS($LZ)), 
                              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), prefix#1, M#1, startMarker#1), 
                              #_module.Stream.Cons(startMarker#1, 
                                _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1))));
                        assume {:id "id377"} $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                          _module._default.Lemma_Flatten#$T, 
                          ORD#Minus(_k#0, ORD#FromNat(1)), 
                          $LS($LS($LZ)), 
                          _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), prefix#1, M#1, startMarker#1), 
                          #_module.Stream.Cons(startMarker#1, 
                            _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1)));
                        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(309,13)
                        ##prefix#32 := prefix#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#32, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##M#53 := M#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#53, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        ##startMarker#13 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##startMarker#13, _module._default.Lemma_Flatten#$T, $Heap);
                        assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, prefix#1, M#1, startMarker#1);
                        ##prefix#33 := prefix#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#33, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##x#20 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#20, _module._default.Lemma_Flatten#$T, $Heap);
                        ##M#55 := M#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#55, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, M#1);
                        ##M#54 := _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#54, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assert {:id "id378"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#54)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#54)
                             || (_module.Stream.Nil_q(##M#54) ==> Lit(true));
                        assert {:id "id379"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#54)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#54)
                             || (!_module.Stream.Nil_q(##M#54)
                               ==> (var N#39 := _module.Stream.tail(##M#54); 
                                (var s#39 := $Unbox(_module.Stream.head(##M#54)): DatatypeType; 
                                  _module.Stream.Cons_q(s#39))));
                        assert {:id "id380"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#54)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#54)
                             || (!_module.Stream.Nil_q(##M#54)
                               ==> (var N#39 := _module.Stream.tail(##M#54); 
                                (var s#39 := $Unbox(_module.Stream.head(##M#54)): DatatypeType; 
                                  _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), N#39))));
                        assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                          prefix#1, 
                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1));
                        assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, prefix#1, M#1, startMarker#1)
                           && 
                          _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, M#1)
                           && _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                            prefix#1, 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1));
                        // ----- assert line0 <== line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(309,13)
                        assert {:id "id381"} {:subsumption 0} $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                            _module._default.Lemma_Flatten#$T, 
                            _k#0, 
                            $LS($LS($LZ)), 
                            #_module.Stream.Cons(startMarker#1, 
                              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1)), 
                            _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                              $LS($LZ), 
                              prefix#1, 
                              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)))
                           ==> $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                              _module._default.Lemma_Flatten#$T, 
                              _k#0, 
                              $LS($LS($LZ)), 
                              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), prefix#1, M#1, startMarker#1), 
                              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                $LS($LZ), 
                                prefix#1, 
                                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)))
                             || (0 < ORD#Offset(_k#0)
                               ==> 
                              _module.Stream.Nil_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1))
                               ==> _module.Stream.Nil_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                  $LS($LS($LZ)), 
                                  prefix#1, 
                                  _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1))));
                        assert {:id "id382"} {:subsumption 0} $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                            _module._default.Lemma_Flatten#$T, 
                            _k#0, 
                            $LS($LS($LZ)), 
                            #_module.Stream.Cons(startMarker#1, 
                              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1)), 
                            _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                              $LS($LZ), 
                              prefix#1, 
                              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)))
                           ==> $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                              _module._default.Lemma_Flatten#$T, 
                              _k#0, 
                              $LS($LS($LZ)), 
                              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), prefix#1, M#1, startMarker#1), 
                              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                $LS($LZ), 
                                prefix#1, 
                                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)))
                             || (0 < ORD#Offset(_k#0)
                               ==> 
                              _module.Stream.Cons_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1))
                               ==> _module.Stream.Cons_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                    $LS($LS($LZ)), 
                                    prefix#1, 
                                    _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1)))
                                 && 
                                _module.Stream.head(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1))
                                   == _module.Stream.head(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                      $LS($LS($LZ)), 
                                      prefix#1, 
                                      _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1)))
                                 && $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                                  _module._default.Lemma_Flatten#$T, 
                                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                                  $LS($LS($LZ)), 
                                  _module.Stream.tail(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1)), 
                                  _module.Stream.tail(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                      $LS($LS($LZ)), 
                                      prefix#1, 
                                      _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1)))));
                        assert {:id "id383"} {:subsumption 0} $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                            _module._default.Lemma_Flatten#$T, 
                            _k#0, 
                            $LS($LS($LZ)), 
                            #_module.Stream.Cons(startMarker#1, 
                              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1)), 
                            _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                              $LS($LZ), 
                              prefix#1, 
                              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)))
                           ==> $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                              _module._default.Lemma_Flatten#$T, 
                              _k#0, 
                              $LS($LS($LZ)), 
                              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), prefix#1, M#1, startMarker#1), 
                              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                $LS($LZ), 
                                prefix#1, 
                                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)))
                             || 
                            (0 < ORD#Offset(_k#0)
                               ==> (_module.Stream.Nil_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1))
                                   ==> _module.Stream.Nil_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                      $LS($LS($LZ)), 
                                      prefix#1, 
                                      _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1))))
                                 && (_module.Stream.Cons_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1))
                                   ==> _module.Stream.Cons_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                        $LS($LS($LZ)), 
                                        prefix#1, 
                                        _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1)))
                                     && 
                                    _module.Stream.head(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1))
                                       == _module.Stream.head(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                          $LS($LS($LZ)), 
                                          prefix#1, 
                                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1)))
                                     && $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                                      _module._default.Lemma_Flatten#$T, 
                                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                                      $LS($LS($LZ)), 
                                      _module.Stream.tail(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), prefix#1, M#1, startMarker#1)), 
                                      _module.Stream.tail(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                          $LS($LS($LZ)), 
                                          prefix#1, 
                                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1))))))
                             || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
                               ==> $Eq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                                _module._default.Lemma_Flatten#$T, 
                                $LS($LS($LZ)), 
                                _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), prefix#1, M#1, startMarker#1), 
                                _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                  $LS($LZ), 
                                  prefix#1, 
                                  _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1))));
                        assume false;
                    }
                    else if (*)
                    {
                        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(309,13)
                        ##prefix#22 := s#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#22, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##M#38 := N#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#38, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        ##startMarker#8 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##startMarker#8, _module._default.Lemma_Flatten#$T, $Heap);
                        assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, s#2, N#2, startMarker#1);
                        ##prefix#23 := s#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#23, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##x#15 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#15, _module._default.Lemma_Flatten#$T, $Heap);
                        ##M#40 := N#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#40, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, N#2);
                        ##M#39 := _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#39, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume {:id "id346"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#39)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#39)
                             || (_module.Stream.Nil_q(##M#39) ==> Lit(true));
                        assume {:id "id347"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#39)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#39)
                             || (!_module.Stream.Nil_q(##M#39)
                               ==> (var N#29 := _module.Stream.tail(##M#39); 
                                (var s#29 := $Unbox(_module.Stream.head(##M#39)): DatatypeType; 
                                  _module.Stream.Cons_q(s#29))));
                        assume {:id "id348"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#39)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#39)
                             || (!_module.Stream.Nil_q(##M#39)
                               ==> (var N#29 := _module.Stream.tail(##M#39); 
                                (var s#29 := $Unbox(_module.Stream.head(##M#39)): DatatypeType; 
                                  _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), N#29))));
                        assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                          s#2, 
                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2));
                        assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, s#2, N#2, startMarker#1)
                           && 
                          _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, N#2)
                           && _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                            s#2, 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2));
                        // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(309,13)
                        assume {:id "id349"} $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                          _module._default.Lemma_Flatten#$T, 
                          _k#0, 
                          $LS($LS($LZ)), 
                          #_module.Stream.Cons(startMarker#1, 
                            _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1)), 
                          #_module.Stream.Cons(startMarker#1, 
                            _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                              $LS($LZ), 
                              s#2, 
                              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2))));
                        // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(309,13)
                        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(315,17)
                        assert {:id "id350"} ORD#IsNat(Lit(ORD#FromNat(1)));
                        assert {:id "id351"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                        ##prefix#24 := prefix#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#24, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##x#16 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#16, _module._default.Lemma_Flatten#$T, $Heap);
                        ##M#42 := M#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#42, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, M#1);
                        ##M#41 := _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#41, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assert {:id "id352"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#41)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#41)
                             || (_module.Stream.Nil_q(##M#41) ==> Lit(true));
                        assert {:id "id353"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#41)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#41)
                             || (!_module.Stream.Nil_q(##M#41)
                               ==> (var N#31 := _module.Stream.tail(##M#41); 
                                (var s#31 := $Unbox(_module.Stream.head(##M#41)): DatatypeType; 
                                  _module.Stream.Cons_q(s#31))));
                        assert {:id "id354"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#41)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#41)
                             || (!_module.Stream.Nil_q(##M#41)
                               ==> (var N#31 := _module.Stream.tail(##M#41); 
                                (var s#31 := $Unbox(_module.Stream.head(##M#41)): DatatypeType; 
                                  _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), N#31))));
                        assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                          prefix#1, 
                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1));
                        ##prefix#25 := s#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#25, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##x#17 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#17, _module._default.Lemma_Flatten#$T, $Heap);
                        ##M#44 := N#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#44, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, N#2);
                        ##M#43 := _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#43, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assert {:id "id355"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#43)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#43)
                             || (_module.Stream.Nil_q(##M#43) ==> Lit(true));
                        assert {:id "id356"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#43)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#43)
                             || (!_module.Stream.Nil_q(##M#43)
                               ==> (var N#33 := _module.Stream.tail(##M#43); 
                                (var s#33 := $Unbox(_module.Stream.head(##M#43)): DatatypeType; 
                                  _module.Stream.Cons_q(s#33))));
                        assert {:id "id357"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#43)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#43)
                             || (!_module.Stream.Nil_q(##M#43)
                               ==> (var N#33 := _module.Stream.tail(##M#43); 
                                (var s#33 := $Unbox(_module.Stream.head(##M#43)): DatatypeType; 
                                  _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), N#33))));
                        assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                          s#2, 
                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2));
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, M#1)
                           && _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                            prefix#1, 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1))
                           && 
                          _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, N#2)
                           && _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                            s#2, 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2));
                        assert {:id "id358"} {:subsumption 0} $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                            _module._default.Lemma_Flatten#$T, 
                            ORD#Minus(_k#0, ORD#FromNat(1)), 
                            $LS($LS($LZ)), 
                            _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                              $LS($LZ), 
                              prefix#1, 
                              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)), 
                            #_module.Stream.Cons(startMarker#1, 
                              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                $LS($LZ), 
                                s#2, 
                                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2))))
                           || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                             ==> 
                            _module.Stream.Nil_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                $LS($LS($LZ)), 
                                prefix#1, 
                                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1)))
                             ==> _module.Stream.Nil_q(#_module.Stream.Cons(startMarker#1, 
                                _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                  $LS($LS($LZ)), 
                                  s#2, 
                                  _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2)))));
                        assert {:id "id359"} {:subsumption 0} $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                            _module._default.Lemma_Flatten#$T, 
                            ORD#Minus(_k#0, ORD#FromNat(1)), 
                            $LS($LS($LZ)), 
                            _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                              $LS($LZ), 
                              prefix#1, 
                              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)), 
                            #_module.Stream.Cons(startMarker#1, 
                              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                $LS($LZ), 
                                s#2, 
                                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2))))
                           || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                             ==> 
                            _module.Stream.Cons_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                $LS($LS($LZ)), 
                                prefix#1, 
                                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1)))
                             ==> _module.Stream.Cons_q(#_module.Stream.Cons(startMarker#1, 
                                  _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                    $LS($LS($LZ)), 
                                    s#2, 
                                    _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2))))
                               && 
                              _module.Stream.head(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                    $LS($LS($LZ)), 
                                    prefix#1, 
                                    _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1)))
                                 == _module.Stream.head(#_module.Stream.Cons(startMarker#1, 
                                    _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                      $LS($LS($LZ)), 
                                      s#2, 
                                      _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2))))
                               && $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                                _module._default.Lemma_Flatten#$T, 
                                ORD#Minus(ORD#Minus(_k#0, ORD#FromNat(1)), ORD#FromNat(1)), 
                                $LS($LS($LZ)), 
                                _module.Stream.tail(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                    $LS($LS($LZ)), 
                                    prefix#1, 
                                    _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1))), 
                                _module.Stream.tail(#_module.Stream.Cons(startMarker#1, 
                                    _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                      $LS($LS($LZ)), 
                                      s#2, 
                                      _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2))))));
                        assert {:id "id360"} {:subsumption 0} $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                            _module._default.Lemma_Flatten#$T, 
                            ORD#Minus(_k#0, ORD#FromNat(1)), 
                            $LS($LS($LZ)), 
                            _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                              $LS($LZ), 
                              prefix#1, 
                              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)), 
                            #_module.Stream.Cons(startMarker#1, 
                              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                $LS($LZ), 
                                s#2, 
                                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2))))
                           || 
                          (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                             ==> (_module.Stream.Nil_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                    $LS($LS($LZ)), 
                                    prefix#1, 
                                    _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1)))
                                 ==> _module.Stream.Nil_q(#_module.Stream.Cons(startMarker#1, 
                                    _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                      $LS($LS($LZ)), 
                                      s#2, 
                                      _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2)))))
                               && (_module.Stream.Cons_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                    $LS($LS($LZ)), 
                                    prefix#1, 
                                    _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1)))
                                 ==> _module.Stream.Cons_q(#_module.Stream.Cons(startMarker#1, 
                                      _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                        $LS($LS($LZ)), 
                                        s#2, 
                                        _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2))))
                                   && 
                                  _module.Stream.head(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                        $LS($LS($LZ)), 
                                        prefix#1, 
                                        _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1)))
                                     == _module.Stream.head(#_module.Stream.Cons(startMarker#1, 
                                        _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                          $LS($LS($LZ)), 
                                          s#2, 
                                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2))))
                                   && $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                                    _module._default.Lemma_Flatten#$T, 
                                    ORD#Minus(ORD#Minus(_k#0, ORD#FromNat(1)), ORD#FromNat(1)), 
                                    $LS($LS($LZ)), 
                                    _module.Stream.tail(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                        $LS($LS($LZ)), 
                                        prefix#1, 
                                        _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1))), 
                                    _module.Stream.tail(#_module.Stream.Cons(startMarker#1, 
                                        _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                          $LS($LS($LZ)), 
                                          s#2, 
                                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2)))))))
                           || (ORD#Minus(_k#0, ORD#FromNat(1)) != ORD#FromNat(0)
                               && ORD#IsLimit(ORD#Minus(_k#0, ORD#FromNat(1)))
                             ==> $Eq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                              _module._default.Lemma_Flatten#$T, 
                              $LS($LS($LZ)), 
                              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                $LS($LZ), 
                                prefix#1, 
                                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)), 
                              #_module.Stream.Cons(startMarker#1, 
                                _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                  $LS($LZ), 
                                  s#2, 
                                  _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2)))));
                        assume {:id "id361"} $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                          _module._default.Lemma_Flatten#$T, 
                          ORD#Minus(_k#0, ORD#FromNat(1)), 
                          $LS($LS($LZ)), 
                          _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                            $LS($LZ), 
                            prefix#1, 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)), 
                          #_module.Stream.Cons(startMarker#1, 
                            _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                              $LS($LZ), 
                              s#2, 
                              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2))));
                        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(309,13)
                        ##prefix#26 := s#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#26, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##M#45 := N#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#45, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        ##startMarker#9 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##startMarker#9, _module._default.Lemma_Flatten#$T, $Heap);
                        assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, s#2, N#2, startMarker#1);
                        ##prefix#27 := prefix#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#27, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##x#18 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#18, _module._default.Lemma_Flatten#$T, $Heap);
                        ##M#47 := M#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#47, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, M#1);
                        ##M#46 := _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#46, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assert {:id "id362"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#46)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#46)
                             || (_module.Stream.Nil_q(##M#46) ==> Lit(true));
                        assert {:id "id363"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#46)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#46)
                             || (!_module.Stream.Nil_q(##M#46)
                               ==> (var N#35 := _module.Stream.tail(##M#46); 
                                (var s#35 := $Unbox(_module.Stream.head(##M#46)): DatatypeType; 
                                  _module.Stream.Cons_q(s#35))));
                        assert {:id "id364"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#46)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#46)
                             || (!_module.Stream.Nil_q(##M#46)
                               ==> (var N#35 := _module.Stream.tail(##M#46); 
                                (var s#35 := $Unbox(_module.Stream.head(##M#46)): DatatypeType; 
                                  _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), N#35))));
                        assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                          prefix#1, 
                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1));
                        assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, s#2, N#2, startMarker#1)
                           && 
                          _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, M#1)
                           && _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                            prefix#1, 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1));
                        // ----- assert line1 <== line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(309,13)
                        assert {:id "id365"} {:subsumption 0} $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                            _module._default.Lemma_Flatten#$T, 
                            _k#0, 
                            $LS($LS($LZ)), 
                            #_module.Stream.Cons(startMarker#1, 
                              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1)), 
                            #_module.Stream.Cons(startMarker#1, 
                              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                $LS($LZ), 
                                s#2, 
                                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2))))
                           ==> $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                              _module._default.Lemma_Flatten#$T, 
                              _k#0, 
                              $LS($LS($LZ)), 
                              #_module.Stream.Cons(startMarker#1, 
                                _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1)), 
                              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                $LS($LZ), 
                                prefix#1, 
                                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)))
                             || (0 < ORD#Offset(_k#0)
                               ==> 
                              _module.Stream.Nil_q(#_module.Stream.Cons(startMarker#1, 
                                  _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1)))
                               ==> _module.Stream.Nil_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                  $LS($LS($LZ)), 
                                  prefix#1, 
                                  _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1))));
                        assert {:id "id366"} {:subsumption 0} $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                            _module._default.Lemma_Flatten#$T, 
                            _k#0, 
                            $LS($LS($LZ)), 
                            #_module.Stream.Cons(startMarker#1, 
                              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1)), 
                            #_module.Stream.Cons(startMarker#1, 
                              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                $LS($LZ), 
                                s#2, 
                                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2))))
                           ==> $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                              _module._default.Lemma_Flatten#$T, 
                              _k#0, 
                              $LS($LS($LZ)), 
                              #_module.Stream.Cons(startMarker#1, 
                                _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1)), 
                              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                $LS($LZ), 
                                prefix#1, 
                                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)))
                             || (0 < ORD#Offset(_k#0)
                               ==> 
                              _module.Stream.Cons_q(#_module.Stream.Cons(startMarker#1, 
                                  _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1)))
                               ==> _module.Stream.Cons_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                    $LS($LS($LZ)), 
                                    prefix#1, 
                                    _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1)))
                                 && 
                                _module.Stream.head(#_module.Stream.Cons(startMarker#1, 
                                      _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1)))
                                   == _module.Stream.head(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                      $LS($LS($LZ)), 
                                      prefix#1, 
                                      _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1)))
                                 && $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                                  _module._default.Lemma_Flatten#$T, 
                                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                                  $LS($LS($LZ)), 
                                  _module.Stream.tail(#_module.Stream.Cons(startMarker#1, 
                                      _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1))), 
                                  _module.Stream.tail(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                      $LS($LS($LZ)), 
                                      prefix#1, 
                                      _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1)))));
                        assert {:id "id367"} {:subsumption 0} $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                            _module._default.Lemma_Flatten#$T, 
                            _k#0, 
                            $LS($LS($LZ)), 
                            #_module.Stream.Cons(startMarker#1, 
                              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1)), 
                            #_module.Stream.Cons(startMarker#1, 
                              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                $LS($LZ), 
                                s#2, 
                                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2))))
                           ==> $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                              _module._default.Lemma_Flatten#$T, 
                              _k#0, 
                              $LS($LS($LZ)), 
                              #_module.Stream.Cons(startMarker#1, 
                                _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1)), 
                              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                $LS($LZ), 
                                prefix#1, 
                                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)))
                             || 
                            (0 < ORD#Offset(_k#0)
                               ==> (_module.Stream.Nil_q(#_module.Stream.Cons(startMarker#1, 
                                      _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1)))
                                   ==> _module.Stream.Nil_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                      $LS($LS($LZ)), 
                                      prefix#1, 
                                      _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1))))
                                 && (_module.Stream.Cons_q(#_module.Stream.Cons(startMarker#1, 
                                      _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1)))
                                   ==> _module.Stream.Cons_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                        $LS($LS($LZ)), 
                                        prefix#1, 
                                        _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1)))
                                     && 
                                    _module.Stream.head(#_module.Stream.Cons(startMarker#1, 
                                          _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1)))
                                       == _module.Stream.head(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                          $LS($LS($LZ)), 
                                          prefix#1, 
                                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1)))
                                     && $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                                      _module._default.Lemma_Flatten#$T, 
                                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                                      $LS($LS($LZ)), 
                                      _module.Stream.tail(#_module.Stream.Cons(startMarker#1, 
                                          _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1))), 
                                      _module.Stream.tail(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                          $LS($LS($LZ)), 
                                          prefix#1, 
                                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, M#1))))))
                             || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
                               ==> $Eq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                                _module._default.Lemma_Flatten#$T, 
                                $LS($LS($LZ)), 
                                #_module.Stream.Cons(startMarker#1, 
                                  _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1)), 
                                _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                  $LS($LZ), 
                                  prefix#1, 
                                  _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1))));
                        assume false;
                    }
                    else if (*)
                    {
                        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(309,13)
                        ##prefix#18 := s#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#18, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##M#32 := N#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#32, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        ##startMarker#6 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##startMarker#6, _module._default.Lemma_Flatten#$T, $Heap);
                        assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, s#2, N#2, startMarker#1);
                        ##prefix#19 := s#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#19, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##x#13 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#13, _module._default.Lemma_Flatten#$T, $Heap);
                        ##M#34 := N#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#34, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, N#2);
                        ##M#33 := _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#33, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume {:id "id337"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#33)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#33)
                             || (_module.Stream.Nil_q(##M#33) ==> Lit(true));
                        assume {:id "id338"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#33)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#33)
                             || (!_module.Stream.Nil_q(##M#33)
                               ==> (var N#25 := _module.Stream.tail(##M#33); 
                                (var s#25 := $Unbox(_module.Stream.head(##M#33)): DatatypeType; 
                                  _module.Stream.Cons_q(s#25))));
                        assume {:id "id339"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#33)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#33)
                             || (!_module.Stream.Nil_q(##M#33)
                               ==> (var N#25 := _module.Stream.tail(##M#33); 
                                (var s#25 := $Unbox(_module.Stream.head(##M#33)): DatatypeType; 
                                  _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), N#25))));
                        assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                          s#2, 
                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2));
                        assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, s#2, N#2, startMarker#1)
                           && 
                          _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, N#2)
                           && _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                            s#2, 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2));
                        // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(309,13)
                        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(309,13)
                        if (startMarker#1 == startMarker#1)
                        {
                            assert {:id "id340"} ORD#IsNat(Lit(ORD#FromNat(1)));
                            assert {:id "id341"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                            ##prefix#20 := s#2;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##prefix#20, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                            ##M#35 := N#2;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##M#35, 
                              Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                              $Heap);
                            ##startMarker#7 := startMarker#1;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##startMarker#7, _module._default.Lemma_Flatten#$T, $Heap);
                            assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, s#2, N#2, startMarker#1);
                            ##prefix#21 := s#2;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##prefix#21, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                            ##x#14 := startMarker#1;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#14, _module._default.Lemma_Flatten#$T, $Heap);
                            ##M#37 := N#2;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##M#37, 
                              Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                              $Heap);
                            assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, N#2);
                            ##M#36 := _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2);
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##M#36, 
                              Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                              $Heap);
                            assert {:id "id342"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#36)
                               ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#36)
                                 || (_module.Stream.Nil_q(##M#36) ==> Lit(true));
                            assert {:id "id343"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#36)
                               ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#36)
                                 || (!_module.Stream.Nil_q(##M#36)
                                   ==> (var N#27 := _module.Stream.tail(##M#36); 
                                    (var s#27 := $Unbox(_module.Stream.head(##M#36)): DatatypeType; 
                                      _module.Stream.Cons_q(s#27))));
                            assert {:id "id344"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#36)
                               ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#36)
                                 || (!_module.Stream.Nil_q(##M#36)
                                   ==> (var N#27 := _module.Stream.tail(##M#36); 
                                    (var s#27 := $Unbox(_module.Stream.head(##M#36)): DatatypeType; 
                                      _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), N#27))));
                            assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                              s#2, 
                              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2));
                        }

                        assume startMarker#1 == startMarker#1
                           ==> _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, s#2, N#2, startMarker#1)
                             && 
                            _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, N#2)
                             && _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                              s#2, 
                              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2));
                        // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(309,13)
                        assert {:id "id345"} {:subsumption 0} $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                            _module._default.Lemma_Flatten#$T, 
                            _k#0, 
                            $LS($LS($LZ)), 
                            #_module.Stream.Cons(startMarker#1, 
                              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1)), 
                            #_module.Stream.Cons(startMarker#1, 
                              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                $LS($LS($LZ)), 
                                s#2, 
                                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2))))
                           == (startMarker#1 == startMarker#1
                             && $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                              _module._default.Lemma_Flatten#$T, 
                              ORD#Minus(_k#0, ORD#FromNat(1)), 
                              $LS($LS($LZ)), 
                              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1), 
                              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                $LS($LS($LZ)), 
                                s#2, 
                                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2))));
                        assume false;
                    }
                    else if (*)
                    {
                        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(309,13)
                        assume true;
                        // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(309,13)
                        assume {:id "id315"} true;
                        // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(309,13)
                        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(320,30)
                        // TrCallStmt: Before ProcessCallStmt
                        assert {:id "id316"} ORD#IsNat(Lit(ORD#FromNat(1)));
                        assert {:id "id317"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        _k##2 := ORD#Minus(_k#0, ORD#FromNat(1));
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        prefix##2 := s#2;
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        M##3 := N#2;
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        startMarker##2 := startMarker#1;
                        call {:id "id318"} CoCall$$_module.__default.Lemma__Flatten_h(_module._default.Lemma_Flatten#$T, _k##2, prefix##2, M##3, startMarker##2);
                        // TrCallStmt: After ProcessCallStmt
                        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(322,17)
                        assert {:id "id319"} ORD#IsNat(Lit(ORD#FromNat(1)));
                        assert {:id "id320"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                        ##prefix#14 := s#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#14, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##M#26 := N#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#26, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        ##startMarker#4 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##startMarker#4, _module._default.Lemma_Flatten#$T, $Heap);
                        assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, s#2, N#2, startMarker#1);
                        ##prefix#15 := s#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##prefix#15, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                        ##x#11 := startMarker#1;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##x#11, _module._default.Lemma_Flatten#$T, $Heap);
                        ##M#28 := N#2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#28, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, N#2);
                        ##M#27 := _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##M#27, 
                          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                          $Heap);
                        assert {:id "id321"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#27)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#27)
                             || (_module.Stream.Nil_q(##M#27) ==> Lit(true));
                        assert {:id "id322"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#27)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#27)
                             || (!_module.Stream.Nil_q(##M#27)
                               ==> (var N#21 := _module.Stream.tail(##M#27); 
                                (var s#21 := $Unbox(_module.Stream.head(##M#27)): DatatypeType; 
                                  _module.Stream.Cons_q(s#21))));
                        assert {:id "id323"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#27)
                           ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#27)
                             || (!_module.Stream.Nil_q(##M#27)
                               ==> (var N#21 := _module.Stream.tail(##M#27); 
                                (var s#21 := $Unbox(_module.Stream.head(##M#27)): DatatypeType; 
                                  _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), N#21))));
                        assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                          s#2, 
                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2));
                        assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, s#2, N#2, startMarker#1)
                           && 
                          _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, N#2)
                           && _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                            s#2, 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2));
                        assert {:id "id324"} {:subsumption 0} $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                            _module._default.Lemma_Flatten#$T, 
                            ORD#Minus(_k#0, ORD#FromNat(1)), 
                            $LS($LS($LZ)), 
                            _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1), 
                            _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                              $LS($LZ), 
                              s#2, 
                              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2)))
                           || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                             ==> 
                            _module.Stream.Nil_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1))
                             ==> _module.Stream.Nil_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                $LS($LS($LZ)), 
                                s#2, 
                                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2))));
                        assert {:id "id325"} {:subsumption 0} $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                            _module._default.Lemma_Flatten#$T, 
                            ORD#Minus(_k#0, ORD#FromNat(1)), 
                            $LS($LS($LZ)), 
                            _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1), 
                            _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                              $LS($LZ), 
                              s#2, 
                              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2)))
                           || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                             ==> 
                            _module.Stream.Cons_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1))
                             ==> _module.Stream.Cons_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                  $LS($LS($LZ)), 
                                  s#2, 
                                  _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2)))
                               && 
                              _module.Stream.head(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1))
                                 == _module.Stream.head(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                    $LS($LS($LZ)), 
                                    s#2, 
                                    _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2)))
                               && $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                                _module._default.Lemma_Flatten#$T, 
                                ORD#Minus(ORD#Minus(_k#0, ORD#FromNat(1)), ORD#FromNat(1)), 
                                $LS($LS($LZ)), 
                                _module.Stream.tail(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1)), 
                                _module.Stream.tail(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                    $LS($LS($LZ)), 
                                    s#2, 
                                    _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2)))));
                        assert {:id "id326"} {:subsumption 0} $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                            _module._default.Lemma_Flatten#$T, 
                            ORD#Minus(_k#0, ORD#FromNat(1)), 
                            $LS($LS($LZ)), 
                            _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1), 
                            _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                              $LS($LZ), 
                              s#2, 
                              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2)))
                           || 
                          (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                             ==> (_module.Stream.Nil_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1))
                                 ==> _module.Stream.Nil_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                    $LS($LS($LZ)), 
                                    s#2, 
                                    _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2))))
                               && (_module.Stream.Cons_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1))
                                 ==> _module.Stream.Cons_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                      $LS($LS($LZ)), 
                                      s#2, 
                                      _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2)))
                                   && 
                                  _module.Stream.head(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1))
                                     == _module.Stream.head(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                        $LS($LS($LZ)), 
                                        s#2, 
                                        _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2)))
                                   && $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                                    _module._default.Lemma_Flatten#$T, 
                                    ORD#Minus(ORD#Minus(_k#0, ORD#FromNat(1)), ORD#FromNat(1)), 
                                    $LS($LS($LZ)), 
                                    _module.Stream.tail(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1)), 
                                    _module.Stream.tail(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                        $LS($LS($LZ)), 
                                        s#2, 
                                        _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2))))))
                           || (ORD#Minus(_k#0, ORD#FromNat(1)) != ORD#FromNat(0)
                               && ORD#IsLimit(ORD#Minus(_k#0, ORD#FromNat(1)))
                             ==> $Eq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                              _module._default.Lemma_Flatten#$T, 
                              $LS($LS($LZ)), 
                              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1), 
                              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                $LS($LZ), 
                                s#2, 
                                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2))));
                        assume {:id "id327"} $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                          _module._default.Lemma_Flatten#$T, 
                          ORD#Minus(_k#0, ORD#FromNat(1)), 
                          $LS($LS($LZ)), 
                          _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1), 
                          _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                            $LS($LZ), 
                            s#2, 
                            _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2)));
                        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(309,13)
                        if (startMarker#1 == startMarker#1)
                        {
                            assert {:id "id328"} ORD#IsNat(Lit(ORD#FromNat(1)));
                            assert {:id "id329"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                            ##prefix#16 := s#2;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##prefix#16, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                            ##M#29 := N#2;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##M#29, 
                              Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                              $Heap);
                            ##startMarker#5 := startMarker#1;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##startMarker#5, _module._default.Lemma_Flatten#$T, $Heap);
                            assume _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, s#2, N#2, startMarker#1);
                            ##prefix#17 := s#2;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##prefix#17, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
                            ##x#12 := startMarker#1;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##x#12, _module._default.Lemma_Flatten#$T, $Heap);
                            ##M#31 := N#2;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##M#31, 
                              Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                              $Heap);
                            assume _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, N#2);
                            ##M#30 := _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2);
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##M#30, 
                              Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)), 
                              $Heap);
                            assert {:id "id330"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#30)
                               ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#30)
                                 || (_module.Stream.Nil_q(##M#30) ==> Lit(true));
                            assert {:id "id331"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#30)
                               ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#30)
                                 || (!_module.Stream.Nil_q(##M#30)
                                   ==> (var N#23 := _module.Stream.tail(##M#30); 
                                    (var s#23 := $Unbox(_module.Stream.head(##M#30)): DatatypeType; 
                                      _module.Stream.Cons_q(s#23))));
                            assert {:id "id332"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_Flatten#$T, ##M#30)
                               ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LZ), ##M#30)
                                 || (!_module.Stream.Nil_q(##M#30)
                                   ==> (var N#23 := _module.Stream.tail(##M#30); 
                                    (var s#23 := $Unbox(_module.Stream.head(##M#30)): DatatypeType; 
                                      _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), N#23))));
                            assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                              s#2, 
                              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2));
                        }

                        assume startMarker#1 == startMarker#1
                           ==> _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_Flatten#$T, s#2, N#2, startMarker#1)
                             && 
                            _module.__default.Prepend#canCall(_module._default.Lemma_Flatten#$T, startMarker#1, N#2)
                             && _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_Flatten#$T, 
                              s#2, 
                              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2));
                        // ----- assert line3 <== line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(309,13)
                        assert {:id "id333"} {:subsumption 0} Lit(true) ==> startMarker#1 == startMarker#1;
                        assert {:id "id334"} {:subsumption 0} Lit(true)
                           ==> $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                              _module._default.Lemma_Flatten#$T, 
                              ORD#Minus(_k#0, ORD#FromNat(1)), 
                              $LS($LS($LZ)), 
                              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1), 
                              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                $LS($LZ), 
                                s#2, 
                                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2)))
                             || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                               ==> 
                              _module.Stream.Nil_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1))
                               ==> _module.Stream.Nil_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                  $LS($LS($LZ)), 
                                  s#2, 
                                  _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2))));
                        assert {:id "id335"} {:subsumption 0} Lit(true)
                           ==> $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                              _module._default.Lemma_Flatten#$T, 
                              ORD#Minus(_k#0, ORD#FromNat(1)), 
                              $LS($LS($LZ)), 
                              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1), 
                              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                $LS($LZ), 
                                s#2, 
                                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2)))
                             || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                               ==> 
                              _module.Stream.Cons_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1))
                               ==> _module.Stream.Cons_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                    $LS($LS($LZ)), 
                                    s#2, 
                                    _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2)))
                                 && 
                                _module.Stream.head(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1))
                                   == _module.Stream.head(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                      $LS($LS($LZ)), 
                                      s#2, 
                                      _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2)))
                                 && $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                                  _module._default.Lemma_Flatten#$T, 
                                  ORD#Minus(ORD#Minus(_k#0, ORD#FromNat(1)), ORD#FromNat(1)), 
                                  $LS($LS($LZ)), 
                                  _module.Stream.tail(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1)), 
                                  _module.Stream.tail(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                      $LS($LS($LZ)), 
                                      s#2, 
                                      _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2)))));
                        assert {:id "id336"} {:subsumption 0} Lit(true)
                           ==> $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                              _module._default.Lemma_Flatten#$T, 
                              ORD#Minus(_k#0, ORD#FromNat(1)), 
                              $LS($LS($LZ)), 
                              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1), 
                              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                $LS($LZ), 
                                s#2, 
                                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2)))
                             || 
                            (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                               ==> (_module.Stream.Nil_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1))
                                   ==> _module.Stream.Nil_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                      $LS($LS($LZ)), 
                                      s#2, 
                                      _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2))))
                                 && (_module.Stream.Cons_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1))
                                   ==> _module.Stream.Cons_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                        $LS($LS($LZ)), 
                                        s#2, 
                                        _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2)))
                                     && 
                                    _module.Stream.head(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1))
                                       == _module.Stream.head(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                          $LS($LS($LZ)), 
                                          s#2, 
                                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2)))
                                     && $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                                      _module._default.Lemma_Flatten#$T, 
                                      ORD#Minus(ORD#Minus(_k#0, ORD#FromNat(1)), ORD#FromNat(1)), 
                                      $LS($LS($LZ)), 
                                      _module.Stream.tail(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), s#2, N#2, startMarker#1)), 
                                      _module.Stream.tail(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                          $LS($LS($LZ)), 
                                          s#2, 
                                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LS($LZ)), startMarker#1, N#2))))))
                             || (ORD#Minus(_k#0, ORD#FromNat(1)) != ORD#FromNat(0)
                                 && ORD#IsLimit(ORD#Minus(_k#0, ORD#FromNat(1)))
                               ==> $Eq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                                _module._default.Lemma_Flatten#$T, 
                                $LS($LS($LZ)), 
                                _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), s#2, N#2, startMarker#1), 
                                _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                                  $LS($LZ), 
                                  s#2, 
                                  _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, N#2))));
                        assume false;
                    }

                    assume {:id "id384"} true
                       ==> $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
                        _module._default.Lemma_Flatten#$T, 
                        _k#0, 
                        $LS($LS($LZ)), 
                        _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), prefix#1, M#1, startMarker#1), 
                        _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                          $LS($LZ), 
                          prefix#1, 
                          _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#1, M#1)));
                }
            }
            else
            {
                assume false;
            }
        }
        else if (prefix#1 == #_module.Stream.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, _module._default.Lemma_Flatten#$T)
               && $IsAllocBox(_mcc#0#0, _module._default.Lemma_Flatten#$T, $Heap);
            assume $Is(_mcc#1#0, Tclass._module.Stream(_module._default.Lemma_Flatten#$T))
               && $IsAlloc(_mcc#1#0, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
            havoc tl#0;
            assume $Is(tl#0, Tclass._module.Stream(_module._default.Lemma_Flatten#$T))
               && $IsAlloc(tl#0, Tclass._module.Stream(_module._default.Lemma_Flatten#$T), $Heap);
            assume {:id "id263"} let#0_0_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.Stream(_module._default.Lemma_Flatten#$T));
            assume {:id "id264"} tl#0 == let#0_0_0#0#0;
            havoc hd#0;
            assume $IsBox(hd#0, _module._default.Lemma_Flatten#$T)
               && $IsAllocBox(hd#0, _module._default.Lemma_Flatten#$T, $Heap);
            assume {:id "id265"} let#0_0_1#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#0_0_1#0#0, _module._default.Lemma_Flatten#$T);
            assume {:id "id266"} hd#0 == let#0_0_1#0#0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(277,18)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id267"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id268"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
            assume true;
            // ProcessCallStmt: CheckSubrange
            prefix##0 := tl#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            M##1 := M#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            startMarker##0 := startMarker#1;
            call {:id "id269"} CoCall$$_module.__default.Lemma__Flatten_h(_module._default.Lemma_Flatten#$T, _k##0, prefix##0, M##1, startMarker##0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
            assume false;
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(273,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box, prefix#2: DatatypeType, M#2: DatatypeType, startMarker#2: Box :: 
          { _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
              $LS($LZ), 
              prefix#2, 
              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#2, M#2)), ORD#Less(_k'#0, _k#0) } 
            { _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), prefix#2, M#2, startMarker#2), ORD#Less(_k'#0, _k#0) } 
          $Is(prefix#2, Tclass._module.Stream(_module._default.Lemma_Flatten#$T))
               && $Is(M#2, 
                Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_Flatten#$T)))
               && $IsBox(startMarker#2, _module._default.Lemma_Flatten#$T)
               && ORD#Less(_k'#0, _k#0)
             ==> 
            _module.__default.StreamOfNonEmpties(_module._default.Lemma_Flatten#$T, 
              $LS($LZ), 
              _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#2, M#2))
             ==> $PrefixEq#_module.Stream(_module._default.Lemma_Flatten#$T, 
              _module._default.Lemma_Flatten#$T, 
              _k'#0, 
              $LS($LS($LZ)), 
              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_Flatten#$T, $LS($LZ), prefix#2, M#2, startMarker#2), 
              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_Flatten#$T, 
                $LS($LZ), 
                prefix#2, 
                _module.__default.Prepend(_module._default.Lemma_Flatten#$T, $LS($LZ), startMarker#2, M#2))));
    }
}



procedure {:verboseName "Lemma_FlattenAppend0 (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__FlattenAppend0(_module._default.Lemma_FlattenAppend0$T: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_FlattenAppend0$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Lemma_FlattenAppend0$T), $Heap)
         && $IsA#_module.Stream(s#0), 
    M#0: DatatypeType
       where $Is(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend0$T)))
         && $IsAlloc(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend0$T)), 
          $Heap)
         && $IsA#_module.Stream(M#0), 
    startMarker#0: Box
       where $IsBox(startMarker#0, _module._default.Lemma_FlattenAppend0$T)
         && $IsAllocBox(startMarker#0, _module._default.Lemma_FlattenAppend0$T, $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Lemma_FlattenAppend0 (call)"} Call$$_module.__default.Lemma__FlattenAppend0(_module._default.Lemma_FlattenAppend0$T: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_FlattenAppend0$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Lemma_FlattenAppend0$T), $Heap)
         && $IsA#_module.Stream(s#0), 
    M#0: DatatypeType
       where $Is(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend0$T)))
         && $IsAlloc(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend0$T)), 
          $Heap)
         && $IsA#_module.Stream(M#0), 
    startMarker#0: Box
       where $IsBox(startMarker#0, _module._default.Lemma_FlattenAppend0$T)
         && $IsAllocBox(startMarker#0, _module._default.Lemma_FlattenAppend0$T, $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0$T, $LS($LZ), s#0, M#0, startMarker#0))
     && $IsA#_module.Stream(_module.__default.append(_module._default.Lemma_FlattenAppend0$T, 
        $LS($LZ), 
        s#0, 
        _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0$T, 
          $LS($LZ), 
          Lit(#_module.Stream.Nil()), 
          M#0, 
          startMarker#0)))
     && 
    _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_FlattenAppend0$T, s#0, M#0, startMarker#0)
     && 
    _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_FlattenAppend0$T, 
      Lit(#_module.Stream.Nil()), 
      M#0, 
      startMarker#0)
     && _module.__default.append#canCall(_module._default.Lemma_FlattenAppend0$T, 
      s#0, 
      _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0$T, 
        $LS($LZ), 
        Lit(#_module.Stream.Nil()), 
        M#0, 
        startMarker#0));
  ensures {:id "id386"} $Eq#_module.Stream(_module._default.Lemma_FlattenAppend0$T, 
    _module._default.Lemma_FlattenAppend0$T, 
    $LS($LS($LZ)), 
    _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0$T, $LS($LS($LZ)), s#0, M#0, startMarker#0), 
    _module.__default.append(_module._default.Lemma_FlattenAppend0$T, 
      $LS($LS($LZ)), 
      s#0, 
      _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0$T, 
        $LS($LS($LZ)), 
        Lit(#_module.Stream.Nil()), 
        M#0, 
        startMarker#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_FlattenAppend0# (co-call)"} CoCall$$_module.__default.Lemma__FlattenAppend0_h(_module._default.Lemma_FlattenAppend0#$T: Ty, 
    _k#0: Box, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(_module._default.Lemma_FlattenAppend0#$T))
         && $IsAlloc(s#1, Tclass._module.Stream(_module._default.Lemma_FlattenAppend0#$T), $Heap)
         && $IsA#_module.Stream(s#1), 
    M#1: DatatypeType
       where $Is(M#1, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend0#$T)))
         && $IsAlloc(M#1, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend0#$T)), 
          $Heap)
         && $IsA#_module.Stream(M#1), 
    startMarker#1: Box
       where $IsBox(startMarker#1, _module._default.Lemma_FlattenAppend0#$T)
         && $IsAllocBox(startMarker#1, _module._default.Lemma_FlattenAppend0#$T, $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_FlattenAppend0#$T, s#1, M#1, startMarker#1)
     && 
    _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_FlattenAppend0#$T, 
      Lit(#_module.Stream.Nil()), 
      M#1, 
      startMarker#1)
     && _module.__default.append#canCall(_module._default.Lemma_FlattenAppend0#$T, 
      s#1, 
      _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, 
        $LS($LZ), 
        Lit(#_module.Stream.Nil()), 
        M#1, 
        startMarker#1));
  free ensures {:id "id387"} $PrefixEq#_module.Stream(_module._default.Lemma_FlattenAppend0#$T, 
    _module._default.Lemma_FlattenAppend0#$T, 
    _k#0, 
    $LS($LS($LZ)), 
    _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, $LS($LZ), s#1, M#1, startMarker#1), 
    _module.__default.append(_module._default.Lemma_FlattenAppend0#$T, 
      $LS($LZ), 
      s#1, 
      _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, 
        $LS($LZ), 
        Lit(#_module.Stream.Nil()), 
        M#1, 
        startMarker#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_FlattenAppend0# (correctness)"} Impl$$_module.__default.Lemma__FlattenAppend0_h(_module._default.Lemma_FlattenAppend0#$T: Ty, 
    _k#0: Box, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(_module._default.Lemma_FlattenAppend0#$T))
         && $IsAlloc(s#1, Tclass._module.Stream(_module._default.Lemma_FlattenAppend0#$T), $Heap)
         && $IsA#_module.Stream(s#1), 
    M#1: DatatypeType
       where $Is(M#1, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend0#$T)))
         && $IsAlloc(M#1, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend0#$T)), 
          $Heap)
         && $IsA#_module.Stream(M#1), 
    startMarker#1: Box
       where $IsBox(startMarker#1, _module._default.Lemma_FlattenAppend0#$T)
         && $IsAllocBox(startMarker#1, _module._default.Lemma_FlattenAppend0#$T, $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_FlattenAppend0#$T, s#1, M#1, startMarker#1)
     && 
    _module.__default.PrependThenFlattenStartMarker#canCall(_module._default.Lemma_FlattenAppend0#$T, 
      Lit(#_module.Stream.Nil()), 
      M#1, 
      startMarker#1)
     && _module.__default.append#canCall(_module._default.Lemma_FlattenAppend0#$T, 
      s#1, 
      _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, 
        $LS($LZ), 
        Lit(#_module.Stream.Nil()), 
        M#1, 
        startMarker#1));
  ensures {:id "id388"} $PrefixEq#_module.Stream(_module._default.Lemma_FlattenAppend0#$T, 
      _module._default.Lemma_FlattenAppend0#$T, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, $LS($LZ), s#1, M#1, startMarker#1), 
      _module.__default.append(_module._default.Lemma_FlattenAppend0#$T, 
        $LS($LZ), 
        s#1, 
        _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, 
          $LS($LZ), 
          Lit(#_module.Stream.Nil()), 
          M#1, 
          startMarker#1)))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Nil_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, $LS($LS($LZ)), s#1, M#1, startMarker#1))
       ==> _module.Stream.Nil_q(_module.__default.append(_module._default.Lemma_FlattenAppend0#$T, 
          $LS($LS($LZ)), 
          s#1, 
          _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, 
            $LS($LS($LZ)), 
            Lit(#_module.Stream.Nil()), 
            M#1, 
            startMarker#1))));
  ensures {:id "id389"} $PrefixEq#_module.Stream(_module._default.Lemma_FlattenAppend0#$T, 
      _module._default.Lemma_FlattenAppend0#$T, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, $LS($LZ), s#1, M#1, startMarker#1), 
      _module.__default.append(_module._default.Lemma_FlattenAppend0#$T, 
        $LS($LZ), 
        s#1, 
        _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, 
          $LS($LZ), 
          Lit(#_module.Stream.Nil()), 
          M#1, 
          startMarker#1)))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Cons_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, $LS($LS($LZ)), s#1, M#1, startMarker#1))
       ==> _module.Stream.Cons_q(_module.__default.append(_module._default.Lemma_FlattenAppend0#$T, 
            $LS($LS($LZ)), 
            s#1, 
            _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, 
              $LS($LS($LZ)), 
              Lit(#_module.Stream.Nil()), 
              M#1, 
              startMarker#1)))
         && 
        _module.Stream.head(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, $LS($LS($LZ)), s#1, M#1, startMarker#1))
           == _module.Stream.head(_module.__default.append(_module._default.Lemma_FlattenAppend0#$T, 
              $LS($LS($LZ)), 
              s#1, 
              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, 
                $LS($LS($LZ)), 
                Lit(#_module.Stream.Nil()), 
                M#1, 
                startMarker#1)))
         && $PrefixEq#_module.Stream(_module._default.Lemma_FlattenAppend0#$T, 
          _module._default.Lemma_FlattenAppend0#$T, 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, $LS($LS($LZ)), s#1, M#1, startMarker#1)), 
          _module.Stream.tail(_module.__default.append(_module._default.Lemma_FlattenAppend0#$T, 
              $LS($LS($LZ)), 
              s#1, 
              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, 
                $LS($LS($LZ)), 
                Lit(#_module.Stream.Nil()), 
                M#1, 
                startMarker#1)))));
  ensures {:id "id390"} $PrefixEq#_module.Stream(_module._default.Lemma_FlattenAppend0#$T, 
      _module._default.Lemma_FlattenAppend0#$T, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, $LS($LZ), s#1, M#1, startMarker#1), 
      _module.__default.append(_module._default.Lemma_FlattenAppend0#$T, 
        $LS($LZ), 
        s#1, 
        _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, 
          $LS($LZ), 
          Lit(#_module.Stream.Nil()), 
          M#1, 
          startMarker#1)))
     || 
    (0 < ORD#Offset(_k#0)
       ==> (_module.Stream.Nil_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, $LS($LS($LZ)), s#1, M#1, startMarker#1))
           ==> _module.Stream.Nil_q(_module.__default.append(_module._default.Lemma_FlattenAppend0#$T, 
              $LS($LS($LZ)), 
              s#1, 
              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, 
                $LS($LS($LZ)), 
                Lit(#_module.Stream.Nil()), 
                M#1, 
                startMarker#1))))
         && (_module.Stream.Cons_q(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, $LS($LS($LZ)), s#1, M#1, startMarker#1))
           ==> _module.Stream.Cons_q(_module.__default.append(_module._default.Lemma_FlattenAppend0#$T, 
                $LS($LS($LZ)), 
                s#1, 
                _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, 
                  $LS($LS($LZ)), 
                  Lit(#_module.Stream.Nil()), 
                  M#1, 
                  startMarker#1)))
             && 
            _module.Stream.head(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, $LS($LS($LZ)), s#1, M#1, startMarker#1))
               == _module.Stream.head(_module.__default.append(_module._default.Lemma_FlattenAppend0#$T, 
                  $LS($LS($LZ)), 
                  s#1, 
                  _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, 
                    $LS($LS($LZ)), 
                    Lit(#_module.Stream.Nil()), 
                    M#1, 
                    startMarker#1)))
             && $PrefixEq#_module.Stream(_module._default.Lemma_FlattenAppend0#$T, 
              _module._default.Lemma_FlattenAppend0#$T, 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              $LS($LS($LZ)), 
              _module.Stream.tail(_module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, $LS($LS($LZ)), s#1, M#1, startMarker#1)), 
              _module.Stream.tail(_module.__default.append(_module._default.Lemma_FlattenAppend0#$T, 
                  $LS($LS($LZ)), 
                  s#1, 
                  _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, 
                    $LS($LS($LZ)), 
                    Lit(#_module.Stream.Nil()), 
                    M#1, 
                    startMarker#1))))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.Stream(_module._default.Lemma_FlattenAppend0#$T, 
        _module._default.Lemma_FlattenAppend0#$T, 
        $LS($LS($LZ)), 
        _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, $LS($LZ), s#1, M#1, startMarker#1), 
        _module.__default.append(_module._default.Lemma_FlattenAppend0#$T, 
          $LS($LZ), 
          s#1, 
          _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, 
            $LS($LZ), 
            Lit(#_module.Stream.Nil()), 
            M#1, 
            startMarker#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_FlattenAppend0# (correctness)"} Impl$$_module.__default.Lemma__FlattenAppend0_h(_module._default.Lemma_FlattenAppend0#$T: Ty, 
    _k#0: Box, 
    s#1: DatatypeType, 
    M#1: DatatypeType, 
    startMarker#1: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var tl#0: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var hd#0: Box;
  var let#0_0_1#0#0: Box;
  var _k##0: Box;
  var s##0: DatatypeType;
  var M##0: DatatypeType;
  var startMarker##0: Box;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Lemma_FlattenAppend0#, Impl$$_module.__default.Lemma__FlattenAppend0_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#1);
    assume $IsA#_module.Stream(M#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#s0#0: DatatypeType, $ih#M0#0: DatatypeType :: 
      { $PrefixEq#_module.Stream(_module._default.Lemma_FlattenAppend0#$T, 
          _module._default.Lemma_FlattenAppend0#$T, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, 
            $LS($LZ), 
            $ih#s0#0, 
            $ih#M0#0, 
            startMarker#1), 
          _module.__default.append(_module._default.Lemma_FlattenAppend0#$T, 
            $LS($LZ), 
            $ih#s0#0, 
            _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, 
              $LS($LZ), 
              Lit(#_module.Stream.Nil()), 
              $ih#M0#0, 
              startMarker#1))) } 
      $Is($ih#s0#0, Tclass._module.Stream(_module._default.Lemma_FlattenAppend0#$T))
           && $Is($ih#M0#0, 
            Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend0#$T)))
           && Lit(true)
           && ORD#Less($ih#_k0#0, _k#0)
         ==> $PrefixEq#_module.Stream(_module._default.Lemma_FlattenAppend0#$T, 
          _module._default.Lemma_FlattenAppend0#$T, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, 
            $LS($LZ), 
            $ih#s0#0, 
            $ih#M0#0, 
            startMarker#1), 
          _module.__default.append(_module._default.Lemma_FlattenAppend0#$T, 
            $LS($LZ), 
            $ih#s0#0, 
            _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, 
              $LS($LZ), 
              Lit(#_module.Stream.Nil()), 
              $ih#M0#0, 
              startMarker#1))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(333,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        assume true;
        havoc _mcc#0#0, _mcc#1#0;
        if (s#1 == #_module.Stream.Nil())
        {
        }
        else if (s#1 == #_module.Stream.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, _module._default.Lemma_FlattenAppend0#$T)
               && $IsAllocBox(_mcc#0#0, _module._default.Lemma_FlattenAppend0#$T, $Heap);
            assume $Is(_mcc#1#0, Tclass._module.Stream(_module._default.Lemma_FlattenAppend0#$T))
               && $IsAlloc(_mcc#1#0, Tclass._module.Stream(_module._default.Lemma_FlattenAppend0#$T), $Heap);
            havoc tl#0;
            assume $Is(tl#0, Tclass._module.Stream(_module._default.Lemma_FlattenAppend0#$T))
               && $IsAlloc(tl#0, Tclass._module.Stream(_module._default.Lemma_FlattenAppend0#$T), $Heap);
            assume {:id "id391"} let#0_0_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.Stream(_module._default.Lemma_FlattenAppend0#$T));
            assume {:id "id392"} tl#0 == let#0_0_0#0#0;
            havoc hd#0;
            assume $IsBox(hd#0, _module._default.Lemma_FlattenAppend0#$T)
               && $IsAllocBox(hd#0, _module._default.Lemma_FlattenAppend0#$T, $Heap);
            assume {:id "id393"} let#0_0_1#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#0_0_1#0#0, _module._default.Lemma_FlattenAppend0#$T);
            assume {:id "id394"} hd#0 == let#0_0_1#0#0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(337,27)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id395"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id396"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##0 := tl#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            M##0 := M#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            startMarker##0 := startMarker#1;
            call {:id "id397"} CoCall$$_module.__default.Lemma__FlattenAppend0_h(_module._default.Lemma_FlattenAppend0#$T, _k##0, s##0, M##0, startMarker##0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
            assume false;
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(333,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box, s#2: DatatypeType, M#2: DatatypeType, startMarker#2: Box :: 
          { _module.__default.append(_module._default.Lemma_FlattenAppend0#$T, 
              $LS($LZ), 
              s#2, 
              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, 
                $LS($LZ), 
                #_module.Stream.Nil(), 
                M#2, 
                startMarker#2)), ORD#Less(_k'#0, _k#0) } 
            { _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, $LS($LZ), s#2, M#2, startMarker#2), ORD#Less(_k'#0, _k#0) } 
          $Is(s#2, Tclass._module.Stream(_module._default.Lemma_FlattenAppend0#$T))
               && $Is(M#2, 
                Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend0#$T)))
               && $IsBox(startMarker#2, _module._default.Lemma_FlattenAppend0#$T)
               && ORD#Less(_k'#0, _k#0)
             ==> $PrefixEq#_module.Stream(_module._default.Lemma_FlattenAppend0#$T, 
              _module._default.Lemma_FlattenAppend0#$T, 
              _k'#0, 
              $LS($LS($LZ)), 
              _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, $LS($LZ), s#2, M#2, startMarker#2), 
              _module.__default.append(_module._default.Lemma_FlattenAppend0#$T, 
                $LS($LZ), 
                s#2, 
                _module.__default.PrependThenFlattenStartMarker(_module._default.Lemma_FlattenAppend0#$T, 
                  $LS($LZ), 
                  Lit(#_module.Stream.Nil()), 
                  M#2, 
                  startMarker#2))));
    }
}



procedure {:verboseName "Lemma_FlattenAppend1 (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__FlattenAppend1(_module._default.Lemma_FlattenAppend1$T: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_FlattenAppend1$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Lemma_FlattenAppend1$T), $Heap)
         && $IsA#_module.Stream(s#0), 
    M#0: DatatypeType
       where $Is(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend1$T)))
         && $IsAlloc(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend1$T)), 
          $Heap)
         && $IsA#_module.Stream(M#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_FlattenAppend1 (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__FlattenAppend1(_module._default.Lemma_FlattenAppend1$T: Ty, 
    s#0: DatatypeType, 
    M#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##M#0: DatatypeType;
  var ##prefix#0: DatatypeType;
  var ##M#1: DatatypeType;
  var ##M#2: DatatypeType;
  var ##N#0: DatatypeType;
  var ##prefix#1: DatatypeType;
  var ##M#3: DatatypeType;


    // AddMethodImpl: Lemma_FlattenAppend1, CheckWellFormed$$_module.__default.Lemma__FlattenAppend1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##M#0 := M#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##M#0, 
      Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend1$T)), 
      $Heap);
    assume _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_FlattenAppend1$T, M#0);
    assume {:id "id398"} _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1$T, $LS($LZ), M#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##prefix#0 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##prefix#0, 
      Tclass._module.Stream(_module._default.Lemma_FlattenAppend1$T), 
      $Heap);
    ##M#1 := M#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##M#1, 
      Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend1$T)), 
      $Heap);
    assert {:id "id399"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_FlattenAppend1$T, ##M#1)
       ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1$T, $LS($LZ), ##M#1)
         || (_module.Stream.Nil_q(##M#1) ==> Lit(true));
    assert {:id "id400"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_FlattenAppend1$T, ##M#1)
       ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1$T, $LS($LZ), ##M#1)
         || (!_module.Stream.Nil_q(##M#1)
           ==> (var N#0 := _module.Stream.tail(##M#1); 
            (var s#1 := $Unbox(_module.Stream.head(##M#1)): DatatypeType; 
              _module.Stream.Cons_q(s#1))));
    assert {:id "id401"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_FlattenAppend1$T, ##M#1)
       ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1$T, $LS($LZ), ##M#1)
         || (!_module.Stream.Nil_q(##M#1)
           ==> (var N#0 := _module.Stream.tail(##M#1); 
            (var s#1 := $Unbox(_module.Stream.head(##M#1)): DatatypeType; 
              _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1$T, $LS($LS($LZ)), N#0))));
    assume _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1$T, $LS($LZ), ##M#1);
    assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_FlattenAppend1$T, s#0, M#0);
    ##M#2 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##M#2, Tclass._module.Stream(_module._default.Lemma_FlattenAppend1$T), $Heap);
    ##prefix#1 := Lit(#_module.Stream.Nil());
    // assume allocatedness for argument to function
    assume $IsAlloc(##prefix#1, 
      Tclass._module.Stream(_module._default.Lemma_FlattenAppend1$T), 
      $Heap);
    ##M#3 := M#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##M#3, 
      Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend1$T)), 
      $Heap);
    assert {:id "id402"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_FlattenAppend1$T, ##M#3)
       ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1$T, $LS($LZ), ##M#3)
         || (_module.Stream.Nil_q(##M#3) ==> Lit(true));
    assert {:id "id403"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_FlattenAppend1$T, ##M#3)
       ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1$T, $LS($LZ), ##M#3)
         || (!_module.Stream.Nil_q(##M#3)
           ==> (var N#2 := _module.Stream.tail(##M#3); 
            (var s#3 := $Unbox(_module.Stream.head(##M#3)): DatatypeType; 
              _module.Stream.Cons_q(s#3))));
    assert {:id "id404"} {:subsumption 0} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_FlattenAppend1$T, ##M#3)
       ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1$T, $LS($LZ), ##M#3)
         || (!_module.Stream.Nil_q(##M#3)
           ==> (var N#2 := _module.Stream.tail(##M#3); 
            (var s#3 := $Unbox(_module.Stream.head(##M#3)): DatatypeType; 
              _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1$T, $LS($LS($LZ)), N#2))));
    assume _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1$T, $LS($LZ), ##M#3);
    assume _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_FlattenAppend1$T, Lit(#_module.Stream.Nil()), M#0);
    ##N#0 := _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1$T, 
      $LS($LZ), 
      Lit(#_module.Stream.Nil()), 
      M#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##N#0, Tclass._module.Stream(_module._default.Lemma_FlattenAppend1$T), $Heap);
    assume _module.__default.append#canCall(_module._default.Lemma_FlattenAppend1$T, 
      s#0, 
      _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1$T, 
        $LS($LZ), 
        Lit(#_module.Stream.Nil()), 
        M#0));
    assume {:id "id405"} $Eq#_module.Stream(_module._default.Lemma_FlattenAppend1$T, 
      _module._default.Lemma_FlattenAppend1$T, 
      $LS($LS($LZ)), 
      _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1$T, $LS($LZ), s#0, M#0), 
      _module.__default.append(_module._default.Lemma_FlattenAppend1$T, 
        $LS($LZ), 
        s#0, 
        _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1$T, 
          $LS($LZ), 
          Lit(#_module.Stream.Nil()), 
          M#0)));
}



procedure {:verboseName "Lemma_FlattenAppend1 (call)"} Call$$_module.__default.Lemma__FlattenAppend1(_module._default.Lemma_FlattenAppend1$T: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_FlattenAppend1$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Lemma_FlattenAppend1$T), $Heap)
         && $IsA#_module.Stream(s#0), 
    M#0: DatatypeType
       where $Is(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend1$T)))
         && $IsAlloc(M#0, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend1$T)), 
          $Heap)
         && $IsA#_module.Stream(M#0));
  // user-defined preconditions
  requires {:id "id406"} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_FlattenAppend1$T, M#0)
     ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1$T, $LS($LZ), M#0)
       || (_module.Stream.Nil_q(M#0) ==> Lit(true));
  requires {:id "id407"} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_FlattenAppend1$T, M#0)
     ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1$T, $LS($LZ), M#0)
       || (!_module.Stream.Nil_q(M#0)
         ==> (var N#4 := _module.Stream.tail(M#0); 
          (var s#5 := $Unbox(_module.Stream.head(M#0)): DatatypeType; 
            _module.Stream.Cons_q(s#5))));
  requires {:id "id408"} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_FlattenAppend1$T, M#0)
     ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1$T, $LS($LZ), M#0)
       || (!_module.Stream.Nil_q(M#0)
         ==> (var N#4 := _module.Stream.tail(M#0); 
          (var s#5 := $Unbox(_module.Stream.head(M#0)): DatatypeType; 
            _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1$T, $LS($LS($LZ)), N#4))));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1$T, $LS($LZ), s#0, M#0))
     && $IsA#_module.Stream(_module.__default.append(_module._default.Lemma_FlattenAppend1$T, 
        $LS($LZ), 
        s#0, 
        _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1$T, 
          $LS($LZ), 
          Lit(#_module.Stream.Nil()), 
          M#0)))
     && 
    _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_FlattenAppend1$T, s#0, M#0)
     && 
    _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_FlattenAppend1$T, Lit(#_module.Stream.Nil()), M#0)
     && _module.__default.append#canCall(_module._default.Lemma_FlattenAppend1$T, 
      s#0, 
      _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1$T, 
        $LS($LZ), 
        Lit(#_module.Stream.Nil()), 
        M#0));
  ensures {:id "id409"} $Eq#_module.Stream(_module._default.Lemma_FlattenAppend1$T, 
    _module._default.Lemma_FlattenAppend1$T, 
    $LS($LS($LZ)), 
    _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1$T, $LS($LS($LZ)), s#0, M#0), 
    _module.__default.append(_module._default.Lemma_FlattenAppend1$T, 
      $LS($LS($LZ)), 
      s#0, 
      _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1$T, 
        $LS($LS($LZ)), 
        Lit(#_module.Stream.Nil()), 
        M#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_FlattenAppend1# (co-call)"} CoCall$$_module.__default.Lemma__FlattenAppend1_h(_module._default.Lemma_FlattenAppend1#$T: Ty, 
    _k#0: Box, 
    s#7: DatatypeType
       where $Is(s#7, Tclass._module.Stream(_module._default.Lemma_FlattenAppend1#$T))
         && $IsAlloc(s#7, Tclass._module.Stream(_module._default.Lemma_FlattenAppend1#$T), $Heap)
         && $IsA#_module.Stream(s#7), 
    M#1: DatatypeType
       where $Is(M#1, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend1#$T)))
         && $IsAlloc(M#1, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend1#$T)), 
          $Heap)
         && $IsA#_module.Stream(M#1));
  // user-defined preconditions
  requires {:id "id410"} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_FlattenAppend1#$T, M#1)
     ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LZ), M#1)
       || (_module.Stream.Nil_q(M#1) ==> Lit(true));
  requires {:id "id411"} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_FlattenAppend1#$T, M#1)
     ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LZ), M#1)
       || (!_module.Stream.Nil_q(M#1)
         ==> (var N#6 := _module.Stream.tail(M#1); 
          (var s#8 := $Unbox(_module.Stream.head(M#1)): DatatypeType; 
            _module.Stream.Cons_q(s#8))));
  requires {:id "id412"} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_FlattenAppend1#$T, M#1)
     ==> _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LZ), M#1)
       || (!_module.Stream.Nil_q(M#1)
         ==> (var N#6 := _module.Stream.tail(M#1); 
          (var s#8 := $Unbox(_module.Stream.head(M#1)): DatatypeType; 
            _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LS($LZ)), N#6))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_FlattenAppend1#$T, s#7, M#1)
     && 
    _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_FlattenAppend1#$T, Lit(#_module.Stream.Nil()), M#1)
     && _module.__default.append#canCall(_module._default.Lemma_FlattenAppend1#$T, 
      s#7, 
      _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, 
        $LS($LZ), 
        Lit(#_module.Stream.Nil()), 
        M#1));
  free ensures {:id "id413"} $PrefixEq#_module.Stream(_module._default.Lemma_FlattenAppend1#$T, 
    _module._default.Lemma_FlattenAppend1#$T, 
    _k#0, 
    $LS($LS($LZ)), 
    _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LZ), s#7, M#1), 
    _module.__default.append(_module._default.Lemma_FlattenAppend1#$T, 
      $LS($LZ), 
      s#7, 
      _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, 
        $LS($LZ), 
        Lit(#_module.Stream.Nil()), 
        M#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_FlattenAppend1# (correctness)"} Impl$$_module.__default.Lemma__FlattenAppend1_h(_module._default.Lemma_FlattenAppend1#$T: Ty, 
    _k#0: Box, 
    s#7: DatatypeType
       where $Is(s#7, Tclass._module.Stream(_module._default.Lemma_FlattenAppend1#$T))
         && $IsAlloc(s#7, Tclass._module.Stream(_module._default.Lemma_FlattenAppend1#$T), $Heap)
         && $IsA#_module.Stream(s#7), 
    M#1: DatatypeType
       where $Is(M#1, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend1#$T)))
         && $IsAlloc(M#1, 
          Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend1#$T)), 
          $Heap)
         && $IsA#_module.Stream(M#1))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id414"} _module.__default.StreamOfNonEmpties#canCall(_module._default.Lemma_FlattenAppend1#$T, M#1)
     && 
    _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LZ), M#1)
     && (if _module.Stream.Nil_q(M#1)
       then true
       else (var N#9 := _module.Stream.tail(M#1); 
        (var s#11 := $Unbox(_module.Stream.head(M#1)): DatatypeType; 
          _module.Stream.Cons_q(s#11)
             && _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LZ), N#9))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_FlattenAppend1#$T, s#7, M#1)
     && 
    _module.__default.PrependThenFlattenNonEmpties#canCall(_module._default.Lemma_FlattenAppend1#$T, Lit(#_module.Stream.Nil()), M#1)
     && _module.__default.append#canCall(_module._default.Lemma_FlattenAppend1#$T, 
      s#7, 
      _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, 
        $LS($LZ), 
        Lit(#_module.Stream.Nil()), 
        M#1));
  ensures {:id "id415"} $PrefixEq#_module.Stream(_module._default.Lemma_FlattenAppend1#$T, 
      _module._default.Lemma_FlattenAppend1#$T, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LZ), s#7, M#1), 
      _module.__default.append(_module._default.Lemma_FlattenAppend1#$T, 
        $LS($LZ), 
        s#7, 
        _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, 
          $LS($LZ), 
          Lit(#_module.Stream.Nil()), 
          M#1)))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Nil_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LS($LZ)), s#7, M#1))
       ==> _module.Stream.Nil_q(_module.__default.append(_module._default.Lemma_FlattenAppend1#$T, 
          $LS($LS($LZ)), 
          s#7, 
          _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, 
            $LS($LS($LZ)), 
            Lit(#_module.Stream.Nil()), 
            M#1))));
  ensures {:id "id416"} $PrefixEq#_module.Stream(_module._default.Lemma_FlattenAppend1#$T, 
      _module._default.Lemma_FlattenAppend1#$T, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LZ), s#7, M#1), 
      _module.__default.append(_module._default.Lemma_FlattenAppend1#$T, 
        $LS($LZ), 
        s#7, 
        _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, 
          $LS($LZ), 
          Lit(#_module.Stream.Nil()), 
          M#1)))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Cons_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LS($LZ)), s#7, M#1))
       ==> _module.Stream.Cons_q(_module.__default.append(_module._default.Lemma_FlattenAppend1#$T, 
            $LS($LS($LZ)), 
            s#7, 
            _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, 
              $LS($LS($LZ)), 
              Lit(#_module.Stream.Nil()), 
              M#1)))
         && 
        _module.Stream.head(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LS($LZ)), s#7, M#1))
           == _module.Stream.head(_module.__default.append(_module._default.Lemma_FlattenAppend1#$T, 
              $LS($LS($LZ)), 
              s#7, 
              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, 
                $LS($LS($LZ)), 
                Lit(#_module.Stream.Nil()), 
                M#1)))
         && $PrefixEq#_module.Stream(_module._default.Lemma_FlattenAppend1#$T, 
          _module._default.Lemma_FlattenAppend1#$T, 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LS($LZ)), s#7, M#1)), 
          _module.Stream.tail(_module.__default.append(_module._default.Lemma_FlattenAppend1#$T, 
              $LS($LS($LZ)), 
              s#7, 
              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, 
                $LS($LS($LZ)), 
                Lit(#_module.Stream.Nil()), 
                M#1)))));
  ensures {:id "id417"} $PrefixEq#_module.Stream(_module._default.Lemma_FlattenAppend1#$T, 
      _module._default.Lemma_FlattenAppend1#$T, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LZ), s#7, M#1), 
      _module.__default.append(_module._default.Lemma_FlattenAppend1#$T, 
        $LS($LZ), 
        s#7, 
        _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, 
          $LS($LZ), 
          Lit(#_module.Stream.Nil()), 
          M#1)))
     || 
    (0 < ORD#Offset(_k#0)
       ==> (_module.Stream.Nil_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LS($LZ)), s#7, M#1))
           ==> _module.Stream.Nil_q(_module.__default.append(_module._default.Lemma_FlattenAppend1#$T, 
              $LS($LS($LZ)), 
              s#7, 
              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, 
                $LS($LS($LZ)), 
                Lit(#_module.Stream.Nil()), 
                M#1))))
         && (_module.Stream.Cons_q(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LS($LZ)), s#7, M#1))
           ==> _module.Stream.Cons_q(_module.__default.append(_module._default.Lemma_FlattenAppend1#$T, 
                $LS($LS($LZ)), 
                s#7, 
                _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, 
                  $LS($LS($LZ)), 
                  Lit(#_module.Stream.Nil()), 
                  M#1)))
             && 
            _module.Stream.head(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LS($LZ)), s#7, M#1))
               == _module.Stream.head(_module.__default.append(_module._default.Lemma_FlattenAppend1#$T, 
                  $LS($LS($LZ)), 
                  s#7, 
                  _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, 
                    $LS($LS($LZ)), 
                    Lit(#_module.Stream.Nil()), 
                    M#1)))
             && $PrefixEq#_module.Stream(_module._default.Lemma_FlattenAppend1#$T, 
              _module._default.Lemma_FlattenAppend1#$T, 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              $LS($LS($LZ)), 
              _module.Stream.tail(_module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LS($LZ)), s#7, M#1)), 
              _module.Stream.tail(_module.__default.append(_module._default.Lemma_FlattenAppend1#$T, 
                  $LS($LS($LZ)), 
                  s#7, 
                  _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, 
                    $LS($LS($LZ)), 
                    Lit(#_module.Stream.Nil()), 
                    M#1))))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.Stream(_module._default.Lemma_FlattenAppend1#$T, 
        _module._default.Lemma_FlattenAppend1#$T, 
        $LS($LS($LZ)), 
        _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LZ), s#7, M#1), 
        _module.__default.append(_module._default.Lemma_FlattenAppend1#$T, 
          $LS($LZ), 
          s#7, 
          _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, 
            $LS($LZ), 
            Lit(#_module.Stream.Nil()), 
            M#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_FlattenAppend1# (correctness)"} Impl$$_module.__default.Lemma__FlattenAppend1_h(_module._default.Lemma_FlattenAppend1#$T: Ty, 
    _k#0: Box, 
    s#7: DatatypeType, 
    M#1: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var tl#0: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var hd#0: Box;
  var let#0_0_1#0#0: Box;
  var _k##0: Box;
  var s##0: DatatypeType;
  var M##0: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Lemma_FlattenAppend1#, Impl$$_module.__default.Lemma__FlattenAppend1_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#7);
    assume $IsA#_module.Stream(M#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#s0#0: DatatypeType, $ih#M0#0: DatatypeType :: 
      { $PrefixEq#_module.Stream(_module._default.Lemma_FlattenAppend1#$T, 
          _module._default.Lemma_FlattenAppend1#$T, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LZ), $ih#s0#0, $ih#M0#0), 
          _module.__default.append(_module._default.Lemma_FlattenAppend1#$T, 
            $LS($LZ), 
            $ih#s0#0, 
            _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, 
              $LS($LZ), 
              Lit(#_module.Stream.Nil()), 
              $ih#M0#0))) } 
      $Is($ih#s0#0, Tclass._module.Stream(_module._default.Lemma_FlattenAppend1#$T))
           && $Is($ih#M0#0, 
            Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend1#$T)))
           && _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LZ), $ih#M0#0)
           && ORD#Less($ih#_k0#0, _k#0)
         ==> $PrefixEq#_module.Stream(_module._default.Lemma_FlattenAppend1#$T, 
          _module._default.Lemma_FlattenAppend1#$T, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LZ), $ih#s0#0, $ih#M0#0), 
          _module.__default.append(_module._default.Lemma_FlattenAppend1#$T, 
            $LS($LZ), 
            $ih#s0#0, 
            _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, 
              $LS($LZ), 
              Lit(#_module.Stream.Nil()), 
              $ih#M0#0))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(344,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        assume true;
        havoc _mcc#0#0, _mcc#1#0;
        if (s#7 == #_module.Stream.Nil())
        {
        }
        else if (s#7 == #_module.Stream.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, _module._default.Lemma_FlattenAppend1#$T)
               && $IsAllocBox(_mcc#0#0, _module._default.Lemma_FlattenAppend1#$T, $Heap);
            assume $Is(_mcc#1#0, Tclass._module.Stream(_module._default.Lemma_FlattenAppend1#$T))
               && $IsAlloc(_mcc#1#0, Tclass._module.Stream(_module._default.Lemma_FlattenAppend1#$T), $Heap);
            havoc tl#0;
            assume $Is(tl#0, Tclass._module.Stream(_module._default.Lemma_FlattenAppend1#$T))
               && $IsAlloc(tl#0, Tclass._module.Stream(_module._default.Lemma_FlattenAppend1#$T), $Heap);
            assume {:id "id418"} let#0_0_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.Stream(_module._default.Lemma_FlattenAppend1#$T));
            assume {:id "id419"} tl#0 == let#0_0_0#0#0;
            havoc hd#0;
            assume $IsBox(hd#0, _module._default.Lemma_FlattenAppend1#$T)
               && $IsAllocBox(hd#0, _module._default.Lemma_FlattenAppend1#$T, $Heap);
            assume {:id "id420"} let#0_0_1#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#0_0_1#0#0, _module._default.Lemma_FlattenAppend1#$T);
            assume {:id "id421"} hd#0 == let#0_0_1#0#0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(348,27)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id422"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id423"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##0 := tl#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            M##0 := M#1;
            call {:id "id424"} CoCall$$_module.__default.Lemma__FlattenAppend1_h(_module._default.Lemma_FlattenAppend1#$T, _k##0, s##0, M##0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
            assume false;
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Streams.dfy(344,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box, s#12: DatatypeType, M#2: DatatypeType :: 
          { _module.__default.append(_module._default.Lemma_FlattenAppend1#$T, 
              $LS($LZ), 
              s#12, 
              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LZ), #_module.Stream.Nil(), M#2)), ORD#Less(_k'#0, _k#0) } 
            { _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LZ), s#12, M#2), ORD#Less(_k'#0, _k#0) } 
          $Is(s#12, Tclass._module.Stream(_module._default.Lemma_FlattenAppend1#$T))
               && $Is(M#2, 
                Tclass._module.Stream(Tclass._module.Stream(_module._default.Lemma_FlattenAppend1#$T)))
               && 
              ORD#Less(_k'#0, _k#0)
               && _module.__default.StreamOfNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LZ), M#2)
             ==> $PrefixEq#_module.Stream(_module._default.Lemma_FlattenAppend1#$T, 
              _module._default.Lemma_FlattenAppend1#$T, 
              _k'#0, 
              $LS($LS($LZ)), 
              _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, $LS($LZ), s#12, M#2), 
              _module.__default.append(_module._default.Lemma_FlattenAppend1#$T, 
                $LS($LZ), 
                s#12, 
                _module.__default.PrependThenFlattenNonEmpties(_module._default.Lemma_FlattenAppend1#$T, 
                  $LS($LZ), 
                  Lit(#_module.Stream.Nil()), 
                  M#2))));
    }
}



// Constructor function declaration
function #_module.Stream.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Stream.Nil()) == ##_module.Stream.Nil;
}

const unique ##_module.Stream.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Stream.Nil()) == ##_module.Stream.Nil;
}

function _module.Stream.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Stream.Nil_q(d) } 
  _module.Stream.Nil_q(d) <==> DatatypeCtorId(d) == ##_module.Stream.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Stream.Nil_q(d) } 
  _module.Stream.Nil_q(d) ==> d == #_module.Stream.Nil());

// Constructor $Is
axiom (forall _module.Stream$T: Ty :: 
  { $Is(#_module.Stream.Nil(), Tclass._module.Stream(_module.Stream$T)) } 
  $Is(#_module.Stream.Nil(), Tclass._module.Stream(_module.Stream$T)));

// Constructor $IsAlloc
axiom (forall _module.Stream$T: Ty, $h: Heap :: 
  { $IsAlloc(#_module.Stream.Nil(), Tclass._module.Stream(_module.Stream$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.Stream.Nil(), Tclass._module.Stream(_module.Stream$T), $h));

// Constructor function declaration
function #_module.Stream.Cons(Box, DatatypeType) : DatatypeType;

const unique ##_module.Stream.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#3#0#0: Box, a#3#1#0: DatatypeType :: 
  { #_module.Stream.Cons(a#3#0#0, a#3#1#0) } 
  DatatypeCtorId(#_module.Stream.Cons(a#3#0#0, a#3#1#0)) == ##_module.Stream.Cons);
}

function _module.Stream.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Stream.Cons_q(d) } 
  _module.Stream.Cons_q(d) <==> DatatypeCtorId(d) == ##_module.Stream.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Stream.Cons_q(d) } 
  _module.Stream.Cons_q(d)
     ==> (exists a#4#0#0: Box, a#4#1#0: DatatypeType :: 
      d == #_module.Stream.Cons(a#4#0#0, a#4#1#0)));

// Constructor $Is
axiom (forall _module.Stream$T: Ty, a#5#0#0: Box, a#5#1#0: DatatypeType :: 
  { $Is(#_module.Stream.Cons(a#5#0#0, a#5#1#0), Tclass._module.Stream(_module.Stream$T)) } 
  $Is(#_module.Stream.Cons(a#5#0#0, a#5#1#0), Tclass._module.Stream(_module.Stream$T))
     <==> $IsBox(a#5#0#0, _module.Stream$T)
       && $Is(a#5#1#0, Tclass._module.Stream(_module.Stream$T)));

// Constructor $IsAlloc
axiom (forall _module.Stream$T: Ty, a#5#0#0: Box, a#5#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.Stream.Cons(a#5#0#0, a#5#1#0), 
      Tclass._module.Stream(_module.Stream$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Stream.Cons(a#5#0#0, a#5#1#0), 
        Tclass._module.Stream(_module.Stream$T), 
        $h)
       <==> $IsAllocBox(a#5#0#0, _module.Stream$T, $h)
         && $IsAlloc(a#5#1#0, Tclass._module.Stream(_module.Stream$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Stream$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Stream.head(d), _module.Stream$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Stream.Cons_q(d)
       && $IsAlloc(d, Tclass._module.Stream(_module.Stream$T), $h)
     ==> $IsAllocBox(_module.Stream.head(d), _module.Stream$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Stream$T: Ty, $h: Heap :: 
  { $IsAlloc(_module.Stream.tail(d), Tclass._module.Stream(_module.Stream$T), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Stream.Cons_q(d)
       && $IsAlloc(d, Tclass._module.Stream(_module.Stream$T), $h)
     ==> $IsAlloc(_module.Stream.tail(d), Tclass._module.Stream(_module.Stream$T), $h));

function _module.Stream.head(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#6#0#0: Box, a#6#1#0: DatatypeType :: 
  { #_module.Stream.Cons(a#6#0#0, a#6#1#0) } 
  _module.Stream.head(#_module.Stream.Cons(a#6#0#0, a#6#1#0)) == a#6#0#0);

function _module.Stream.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { #_module.Stream.Cons(a#7#0#0, a#7#1#0) } 
  _module.Stream.tail(#_module.Stream.Cons(a#7#0#0, a#7#1#0)) == a#7#1#0);

// Depth-one case-split function
function $IsA#_module.Stream(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Stream(d) } 
  $IsA#_module.Stream(d) ==> _module.Stream.Nil_q(d) || _module.Stream.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Stream$T: Ty, d: DatatypeType :: 
  { _module.Stream.Cons_q(d), $Is(d, Tclass._module.Stream(_module.Stream$T)) } 
    { _module.Stream.Nil_q(d), $Is(d, Tclass._module.Stream(_module.Stream$T)) } 
  $Is(d, Tclass._module.Stream(_module.Stream$T))
     ==> _module.Stream.Nil_q(d) || _module.Stream.Cons_q(d));

function $Eq#_module.Stream(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Stream(_module.Stream$T#l))
       && $Is(d1, Tclass._module.Stream(_module.Stream$T#r))
     ==> ($Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1)
       <==> (_module.Stream.Nil_q(d0) && _module.Stream.Nil_q(d1))
         || (
          _module.Stream.Cons_q(d0)
           && _module.Stream.Cons_q(d1)
           && (_module.Stream.Cons_q(d0) && _module.Stream.Cons_q(d1)
             ==> _module.Stream.head(d0) == _module.Stream.head(d1)
               && $Eq#_module.Stream(_module.Stream$T#l, 
                _module.Stream$T#r, 
                ly, 
                _module.Stream.tail(d0), 
                _module.Stream.tail(d1))))));

// Unbump layer co-equality axiom
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1)
     <==> $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1)
     <==> d0 == d1);

function $PrefixEq#_module.Stream(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Stream(_module.Stream$T#l))
       && $Is(d1, Tclass._module.Stream(_module.Stream$T#r))
     ==> ($PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> (_module.Stream.Nil_q(d0) && _module.Stream.Nil_q(d1))
             || (
              _module.Stream.Cons_q(d0)
               && _module.Stream.Cons_q(d1)
               && (_module.Stream.Cons_q(d0) && _module.Stream.Cons_q(d1)
                 ==> _module.Stream.head(d0) == _module.Stream.head(d1)
                   && $PrefixEq#_module.Stream(_module.Stream$T#l, 
                    _module.Stream$T#r, 
                    ORD#Minus(k, ORD#FromNat(1)), 
                    ly, 
                    _module.Stream.tail(d0), 
                    _module.Stream.tail(d1)))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1), $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1));

const unique class._module.Stream: ClassName;

const unique class._module.X: ClassName;

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

const unique tytagFamily$_#Func2: TyTagFamily;

const unique tytagFamily$_#PartialFunc2: TyTagFamily;

const unique tytagFamily$_#TotalFunc2: TyTagFamily;

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;

const unique tytagFamily$Stream: TyTagFamily;
