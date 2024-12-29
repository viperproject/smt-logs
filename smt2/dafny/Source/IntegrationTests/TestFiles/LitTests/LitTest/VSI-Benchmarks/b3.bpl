// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy

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

const unique class._module.Queue?: ClassName;

function Tclass._module.Queue?(Ty) : Ty;

const unique Tagclass._module.Queue?: TyTag;

// Tclass._module.Queue? Tag
axiom (forall _module.Queue$T: Ty :: 
  { Tclass._module.Queue?(_module.Queue$T) } 
  Tag(Tclass._module.Queue?(_module.Queue$T)) == Tagclass._module.Queue?
     && TagFamily(Tclass._module.Queue?(_module.Queue$T)) == tytagFamily$Queue);

function Tclass._module.Queue?_0(Ty) : Ty;

// Tclass._module.Queue? injectivity 0
axiom (forall _module.Queue$T: Ty :: 
  { Tclass._module.Queue?(_module.Queue$T) } 
  Tclass._module.Queue?_0(Tclass._module.Queue?(_module.Queue$T))
     == _module.Queue$T);

// Box/unbox axiom for Tclass._module.Queue?
axiom (forall _module.Queue$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Queue?(_module.Queue$T)) } 
  $IsBox(bx, Tclass._module.Queue?(_module.Queue$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Queue?(_module.Queue$T)));

// $Is axiom for class Queue
axiom (forall _module.Queue$T: Ty, $o: ref :: 
  { $Is($o, Tclass._module.Queue?(_module.Queue$T)) } 
  $Is($o, Tclass._module.Queue?(_module.Queue$T))
     <==> $o == null || dtype($o) == Tclass._module.Queue?(_module.Queue$T));

// $IsAlloc axiom for class Queue
axiom (forall _module.Queue$T: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Queue?(_module.Queue$T), $h) } 
  $IsAlloc($o, Tclass._module.Queue?(_module.Queue$T), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Queue.contents: Field
uses {
axiom FDim(_module.Queue.contents) == 0
   && FieldOfDecl(class._module.Queue?, field$contents) == _module.Queue.contents
   && !$IsGhostField(_module.Queue.contents);
}

// Queue.contents: Type axiom
axiom (forall _module.Queue$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Queue.contents)): Seq, Tclass._module.Queue?(_module.Queue$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Queue?(_module.Queue$T)
     ==> $Is($Unbox(read($h, $o, _module.Queue.contents)): Seq, TSeq(_module.Queue$T)));

// Queue.contents: Allocation axiom
axiom (forall _module.Queue$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Queue.contents)): Seq, Tclass._module.Queue?(_module.Queue$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Queue?(_module.Queue$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Queue.contents)): Seq, TSeq(_module.Queue$T), $h));

function Tclass._module.Queue(Ty) : Ty;

const unique Tagclass._module.Queue: TyTag;

// Tclass._module.Queue Tag
axiom (forall _module.Queue$T: Ty :: 
  { Tclass._module.Queue(_module.Queue$T) } 
  Tag(Tclass._module.Queue(_module.Queue$T)) == Tagclass._module.Queue
     && TagFamily(Tclass._module.Queue(_module.Queue$T)) == tytagFamily$Queue);

function Tclass._module.Queue_0(Ty) : Ty;

// Tclass._module.Queue injectivity 0
axiom (forall _module.Queue$T: Ty :: 
  { Tclass._module.Queue(_module.Queue$T) } 
  Tclass._module.Queue_0(Tclass._module.Queue(_module.Queue$T)) == _module.Queue$T);

// Box/unbox axiom for Tclass._module.Queue
axiom (forall _module.Queue$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Queue(_module.Queue$T)) } 
  $IsBox(bx, Tclass._module.Queue(_module.Queue$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Queue(_module.Queue$T)));

procedure {:verboseName "Queue.Init (well-formedness)"} CheckWellFormed$$_module.Queue.Init(_module.Queue$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Queue(_module.Queue$T))
         && $IsAlloc(this, Tclass._module.Queue(_module.Queue$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Queue.Init (call)"} Call$$_module.Queue.Init(_module.Queue$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Queue(_module.Queue$T))
         && $IsAlloc(this, Tclass._module.Queue(_module.Queue$T), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1"} Seq#Length($Unbox(read($Heap, this, _module.Queue.contents)): Seq) == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Queue.Enqueue (well-formedness)"} CheckWellFormed$$_module.Queue.Enqueue(_module.Queue$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Queue(_module.Queue$T))
         && $IsAlloc(this, Tclass._module.Queue(_module.Queue$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Queue$T) && $IsAllocBox(x#0, _module.Queue$T, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Queue.Enqueue (well-formedness)"} CheckWellFormed$$_module.Queue.Enqueue(_module.Queue$T: Ty, this: ref, x#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Enqueue, CheckWellFormed$$_module.Queue.Enqueue
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this);
    assume $HeapSucc(old($Heap), $Heap);
    assert {:id "id2"} $IsAlloc(this, Tclass._module.Queue(_module.Queue$T), old($Heap));
    assume {:id "id3"} Seq#Equal($Unbox(read($Heap, this, _module.Queue.contents)): Seq, 
      Seq#Append($Unbox(read(old($Heap), this, _module.Queue.contents)): Seq, 
        Seq#Build(Seq#Empty(): Seq, x#0)));
}



procedure {:verboseName "Queue.Enqueue (call)"} Call$$_module.Queue.Enqueue(_module.Queue$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Queue(_module.Queue$T))
         && $IsAlloc(this, Tclass._module.Queue(_module.Queue$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Queue$T) && $IsAllocBox(x#0, _module.Queue$T, $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id4"} Seq#Equal($Unbox(read($Heap, this, _module.Queue.contents)): Seq, 
    Seq#Append($Unbox(read(old($Heap), this, _module.Queue.contents)): Seq, 
      Seq#Build(Seq#Empty(): Seq, x#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Queue.Dequeue (well-formedness)"} CheckWellFormed$$_module.Queue.Dequeue(_module.Queue$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Queue(_module.Queue$T))
         && $IsAlloc(this, Tclass._module.Queue(_module.Queue$T), $Heap))
   returns (x#0: Box
       where $IsBox(x#0, _module.Queue$T) && $IsAllocBox(x#0, _module.Queue$T, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Queue.Dequeue (well-formedness)"} CheckWellFormed$$_module.Queue.Dequeue(_module.Queue$T: Ty, this: ref) returns (x#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Dequeue, CheckWellFormed$$_module.Queue.Dequeue
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    assume {:id "id5"} 0 < Seq#Length($Unbox(read($Heap, this, _module.Queue.contents)): Seq);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this);
    assume $HeapSucc(old($Heap), $Heap);
    havoc x#0;
    assert {:id "id6"} $IsAlloc(this, Tclass._module.Queue(_module.Queue$T), old($Heap));
    assert {:id "id7"} 0 <= LitInt(1)
       && LitInt(1)
         <= Seq#Length($Unbox(read(old($Heap), this, _module.Queue.contents)): Seq);
    assume {:id "id8"} Seq#Equal($Unbox(read($Heap, this, _module.Queue.contents)): Seq, 
      Seq#Drop($Unbox(read(old($Heap), this, _module.Queue.contents)): Seq, LitInt(1)));
    assert {:id "id9"} $IsAlloc(this, Tclass._module.Queue(_module.Queue$T), old($Heap));
    assert {:id "id10"} 0 <= LitInt(0)
       && LitInt(0)
         < Seq#Length($Unbox(read(old($Heap), this, _module.Queue.contents)): Seq);
    assume {:id "id11"} x#0
       == Seq#Index($Unbox(read(old($Heap), this, _module.Queue.contents)): Seq, LitInt(0));
}



procedure {:verboseName "Queue.Dequeue (call)"} Call$$_module.Queue.Dequeue(_module.Queue$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Queue(_module.Queue$T))
         && $IsAlloc(this, Tclass._module.Queue(_module.Queue$T), $Heap))
   returns (x#0: Box
       where $IsBox(x#0, _module.Queue$T) && $IsAllocBox(x#0, _module.Queue$T, $Heap));
  // user-defined preconditions
  requires {:id "id12"} 0 < Seq#Length($Unbox(read($Heap, this, _module.Queue.contents)): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id13"} Seq#Equal($Unbox(read($Heap, this, _module.Queue.contents)): Seq, 
    Seq#Drop($Unbox(read(old($Heap), this, _module.Queue.contents)): Seq, LitInt(1)));
  ensures {:id "id14"} x#0
     == Seq#Index($Unbox(read(old($Heap), this, _module.Queue.contents)): Seq, LitInt(0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module.Queue.Head
function _module.Queue.Head(_module.Queue$T: Ty, $heap: Heap, this: ref) : Box
uses {
// consequence axiom for _module.Queue.Head
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.Queue$T: Ty, $Heap: Heap, this: ref :: 
    { _module.Queue.Head(_module.Queue$T, $Heap, this) } 
    _module.Queue.Head#canCall(_module.Queue$T, $Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Queue(_module.Queue$T))
           && $IsAlloc(this, Tclass._module.Queue(_module.Queue$T), $Heap)
           && 0 < Seq#Length($Unbox(read($Heap, this, _module.Queue.contents)): Seq))
       ==> $IsBox(_module.Queue.Head(_module.Queue$T, $Heap, this), _module.Queue$T));
// alloc consequence axiom for _module.Queue.Head
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.Queue$T: Ty, $Heap: Heap, this: ref :: 
    { $IsAllocBox(_module.Queue.Head(_module.Queue$T, $Heap, this), _module.Queue$T, $Heap) } 
    _module.Queue.Head#canCall(_module.Queue$T, $Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && this != null
           && $IsAlloc(this, Tclass._module.Queue(_module.Queue$T), $Heap)
           && 0 < Seq#Length($Unbox(read($Heap, this, _module.Queue.contents)): Seq))
       ==> $IsAllocBox(_module.Queue.Head(_module.Queue$T, $Heap, this), _module.Queue$T, $Heap));
// definition axiom for _module.Queue.Head (revealed)
axiom {:id "id15"} 0 <= $FunctionContextHeight
   ==> (forall _module.Queue$T: Ty, $Heap: Heap, this: ref :: 
    { _module.Queue.Head(_module.Queue$T, $Heap, this), $IsGoodHeap($Heap) } 
    _module.Queue.Head#canCall(_module.Queue$T, $Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Queue(_module.Queue$T))
           && $IsAlloc(this, Tclass._module.Queue(_module.Queue$T), $Heap)
           && 0 < Seq#Length($Unbox(read($Heap, this, _module.Queue.contents)): Seq))
       ==> _module.Queue.Head(_module.Queue$T, $Heap, this)
         == Seq#Index($Unbox(read($Heap, this, _module.Queue.contents)): Seq, LitInt(0)));
}

function _module.Queue.Head#canCall(_module.Queue$T: Ty, $heap: Heap, this: ref) : bool;

// frame axiom for _module.Queue.Head
axiom (forall _module.Queue$T: Ty, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Queue.Head(_module.Queue$T, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Queue(_module.Queue$T))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Queue.Head(_module.Queue$T, $h0, this)
       == _module.Queue.Head(_module.Queue$T, $h1, this));

function _module.Queue.Head#requires(Ty, Heap, ref) : bool;

// #requires axiom for _module.Queue.Head
axiom (forall _module.Queue$T: Ty, $Heap: Heap, this: ref :: 
  { _module.Queue.Head#requires(_module.Queue$T, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Queue(_module.Queue$T))
       && $IsAlloc(this, Tclass._module.Queue(_module.Queue$T), $Heap)
     ==> _module.Queue.Head#requires(_module.Queue$T, $Heap, this)
       == (0 < Seq#Length($Unbox(read($Heap, this, _module.Queue.contents)): Seq)));

procedure {:verboseName "Queue.Head (well-formedness)"} CheckWellformed$$_module.Queue.Head(_module.Queue$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Queue(_module.Queue$T))
         && $IsAlloc(this, Tclass._module.Queue(_module.Queue$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Queue.Head (well-formedness)"} CheckWellformed$$_module.Queue.Head(_module.Queue$T: Ty, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    // Check well-formedness of preconditions, and then assume them
    b$reqreads#0 := $_ReadsFrame[this, _module.Queue.contents];
    assume {:id "id16"} 0 < Seq#Length($Unbox(read($Heap, this, _module.Queue.contents)): Seq);
    assert {:id "id17"} b$reqreads#0;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $IsBox(_module.Queue.Head(_module.Queue$T, $Heap, this), _module.Queue$T);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#1 := $_ReadsFrame[this, _module.Queue.contents];
        assert {:id "id18"} 0 <= LitInt(0)
           && LitInt(0) < Seq#Length($Unbox(read($Heap, this, _module.Queue.contents)): Seq);
        assume {:id "id19"} _module.Queue.Head(_module.Queue$T, $Heap, this)
           == Seq#Index($Unbox(read($Heap, this, _module.Queue.contents)): Seq, LitInt(0));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $IsBox(_module.Queue.Head(_module.Queue$T, $Heap, this), _module.Queue$T);
        assert {:id "id20"} b$reqreads#1;
        return;

        assume false;
    }
}



// function declaration for _module.Queue.Get
function _module.Queue.Get(_module.Queue$T: Ty, $heap: Heap, this: ref, i#0: int) : Box
uses {
// consequence axiom for _module.Queue.Get
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.Queue$T: Ty, $Heap: Heap, this: ref, i#0: int :: 
    { _module.Queue.Get(_module.Queue$T, $Heap, this, i#0) } 
    _module.Queue.Get#canCall(_module.Queue$T, $Heap, this, i#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Queue(_module.Queue$T))
           && $IsAlloc(this, Tclass._module.Queue(_module.Queue$T), $Heap)
           && 
          LitInt(0) <= i#0
           && i#0 < Seq#Length($Unbox(read($Heap, this, _module.Queue.contents)): Seq))
       ==> $IsBox(_module.Queue.Get(_module.Queue$T, $Heap, this, i#0), _module.Queue$T));
// alloc consequence axiom for _module.Queue.Get
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.Queue$T: Ty, $Heap: Heap, this: ref, i#0: int :: 
    { $IsAllocBox(_module.Queue.Get(_module.Queue$T, $Heap, this, i#0), _module.Queue$T, $Heap) } 
    _module.Queue.Get#canCall(_module.Queue$T, $Heap, this, i#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && this != null
           && $IsAlloc(this, Tclass._module.Queue(_module.Queue$T), $Heap)
           && 
          LitInt(0) <= i#0
           && i#0 < Seq#Length($Unbox(read($Heap, this, _module.Queue.contents)): Seq))
       ==> $IsAllocBox(_module.Queue.Get(_module.Queue$T, $Heap, this, i#0), _module.Queue$T, $Heap));
// definition axiom for _module.Queue.Get (revealed)
axiom {:id "id21"} 0 <= $FunctionContextHeight
   ==> (forall _module.Queue$T: Ty, $Heap: Heap, this: ref, i#0: int :: 
    { _module.Queue.Get(_module.Queue$T, $Heap, this, i#0), $IsGoodHeap($Heap) } 
    _module.Queue.Get#canCall(_module.Queue$T, $Heap, this, i#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Queue(_module.Queue$T))
           && $IsAlloc(this, Tclass._module.Queue(_module.Queue$T), $Heap)
           && 
          LitInt(0) <= i#0
           && i#0 < Seq#Length($Unbox(read($Heap, this, _module.Queue.contents)): Seq))
       ==> _module.Queue.Get(_module.Queue$T, $Heap, this, i#0)
         == Seq#Index($Unbox(read($Heap, this, _module.Queue.contents)): Seq, i#0));
}

function _module.Queue.Get#canCall(_module.Queue$T: Ty, $heap: Heap, this: ref, i#0: int) : bool;

// frame axiom for _module.Queue.Get
axiom (forall _module.Queue$T: Ty, $h0: Heap, $h1: Heap, this: ref, i#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Queue.Get(_module.Queue$T, $h1, this, i#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Queue(_module.Queue$T))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Queue.Get(_module.Queue$T, $h0, this, i#0)
       == _module.Queue.Get(_module.Queue$T, $h1, this, i#0));

function _module.Queue.Get#requires(Ty, Heap, ref, int) : bool;

// #requires axiom for _module.Queue.Get
axiom (forall _module.Queue$T: Ty, $Heap: Heap, this: ref, i#0: int :: 
  { _module.Queue.Get#requires(_module.Queue$T, $Heap, this, i#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Queue(_module.Queue$T))
       && $IsAlloc(this, Tclass._module.Queue(_module.Queue$T), $Heap)
     ==> _module.Queue.Get#requires(_module.Queue$T, $Heap, this, i#0)
       == (LitInt(0) <= i#0
         && i#0 < Seq#Length($Unbox(read($Heap, this, _module.Queue.contents)): Seq)));

procedure {:verboseName "Queue.Get (well-formedness)"} CheckWellformed$$_module.Queue.Get(_module.Queue$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Queue(_module.Queue$T))
         && $IsAlloc(this, Tclass._module.Queue(_module.Queue$T), $Heap), 
    i#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Queue.Get (well-formedness)"} CheckWellformed$$_module.Queue.Get(_module.Queue$T: Ty, this: ref, i#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    // Check well-formedness of preconditions, and then assume them
    if (LitInt(0) <= i#0)
    {
        b$reqreads#0 := $_ReadsFrame[this, _module.Queue.contents];
    }

    assume {:id "id22"} LitInt(0) <= i#0
       && i#0 < Seq#Length($Unbox(read($Heap, this, _module.Queue.contents)): Seq);
    assert {:id "id23"} b$reqreads#0;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $IsBox(_module.Queue.Get(_module.Queue$T, $Heap, this, i#0), _module.Queue$T);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#1 := $_ReadsFrame[this, _module.Queue.contents];
        assert {:id "id24"} 0 <= i#0
           && i#0 < Seq#Length($Unbox(read($Heap, this, _module.Queue.contents)): Seq);
        assume {:id "id25"} _module.Queue.Get(_module.Queue$T, $Heap, this, i#0)
           == Seq#Index($Unbox(read($Heap, this, _module.Queue.contents)): Seq, i#0);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $IsBox(_module.Queue.Get(_module.Queue$T, $Heap, this, i#0), _module.Queue$T);
        assert {:id "id26"} b$reqreads#1;
        return;

        assume false;
    }
}



// $Is axiom for non-null type _module.Queue
axiom (forall _module.Queue$T: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.Queue(_module.Queue$T)) } 
    { $Is(c#0, Tclass._module.Queue?(_module.Queue$T)) } 
  $Is(c#0, Tclass._module.Queue(_module.Queue$T))
     <==> $Is(c#0, Tclass._module.Queue?(_module.Queue$T)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Queue
axiom (forall _module.Queue$T: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Queue(_module.Queue$T), $h) } 
    { $IsAlloc(c#0, Tclass._module.Queue?(_module.Queue$T), $h) } 
  $IsAlloc(c#0, Tclass._module.Queue(_module.Queue$T), $h)
     <==> $IsAlloc(c#0, Tclass._module.Queue?(_module.Queue$T), $h));

const unique class._module.Comparable?: ClassName;

function Tclass._module.Comparable?() : Ty
uses {
// Tclass._module.Comparable? Tag
axiom Tag(Tclass._module.Comparable?()) == Tagclass._module.Comparable?
   && TagFamily(Tclass._module.Comparable?()) == tytagFamily$Comparable;
}

const unique Tagclass._module.Comparable?: TyTag;

// Box/unbox axiom for Tclass._module.Comparable?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Comparable?()) } 
  $IsBox(bx, Tclass._module.Comparable?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Comparable?()));

// $Is axiom for class Comparable
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Comparable?()) } 
  $Is($o, Tclass._module.Comparable?())
     <==> $o == null || dtype($o) == Tclass._module.Comparable?());

// $IsAlloc axiom for class Comparable
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Comparable?(), $h) } 
  $IsAlloc($o, Tclass._module.Comparable?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for _module.Comparable.AtMost
function _module.Comparable.AtMost($heap: Heap, this: ref, c#0: ref) : bool;

function _module.Comparable.AtMost#canCall($heap: Heap, this: ref, c#0: ref) : bool;

function Tclass._module.Comparable() : Ty
uses {
// Tclass._module.Comparable Tag
axiom Tag(Tclass._module.Comparable()) == Tagclass._module.Comparable
   && TagFamily(Tclass._module.Comparable()) == tytagFamily$Comparable;
}

const unique Tagclass._module.Comparable: TyTag;

// Box/unbox axiom for Tclass._module.Comparable
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Comparable()) } 
  $IsBox(bx, Tclass._module.Comparable())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Comparable()));

// frame axiom for _module.Comparable.AtMost
axiom (forall $h0: Heap, $h1: Heap, this: ref, c#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Comparable.AtMost($h1, this, c#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Comparable())
       && (_module.Comparable.AtMost#canCall($h0, this, c#0)
         || $Is(c#0, Tclass._module.Comparable()))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && ($o == this || $o == c#0)
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Comparable.AtMost($h0, this, c#0)
       == _module.Comparable.AtMost($h1, this, c#0));

function _module.Comparable.AtMost#requires(Heap, ref, ref) : bool;

// #requires axiom for _module.Comparable.AtMost
axiom (forall $Heap: Heap, this: ref, c#0: ref :: 
  { _module.Comparable.AtMost#requires($Heap, this, c#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Comparable())
       && $IsAlloc(this, Tclass._module.Comparable(), $Heap)
       && $Is(c#0, Tclass._module.Comparable())
     ==> _module.Comparable.AtMost#requires($Heap, this, c#0) == true);

procedure {:verboseName "Comparable.AtMost (well-formedness)"} CheckWellformed$$_module.Comparable.AtMost(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Comparable())
         && $IsAlloc(this, Tclass._module.Comparable(), $Heap), 
    c#0: ref where $Is(c#0, Tclass._module.Comparable()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// $Is axiom for non-null type _module.Comparable
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Comparable()) } 
    { $Is(c#0, Tclass._module.Comparable?()) } 
  $Is(c#0, Tclass._module.Comparable())
     <==> $Is(c#0, Tclass._module.Comparable?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Comparable
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Comparable(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Comparable?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Comparable(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Comparable?(), $h));

const unique class._module.Benchmark3?: ClassName;

function Tclass._module.Benchmark3?() : Ty
uses {
// Tclass._module.Benchmark3? Tag
axiom Tag(Tclass._module.Benchmark3?()) == Tagclass._module.Benchmark3?
   && TagFamily(Tclass._module.Benchmark3?()) == tytagFamily$Benchmark3;
}

const unique Tagclass._module.Benchmark3?: TyTag;

// Box/unbox axiom for Tclass._module.Benchmark3?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Benchmark3?()) } 
  $IsBox(bx, Tclass._module.Benchmark3?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Benchmark3?()));

// $Is axiom for class Benchmark3
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Benchmark3?()) } 
  $Is($o, Tclass._module.Benchmark3?())
     <==> $o == null || dtype($o) == Tclass._module.Benchmark3?());

// $IsAlloc axiom for class Benchmark3
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Benchmark3?(), $h) } 
  $IsAlloc($o, Tclass._module.Benchmark3?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass._module.Benchmark3() : Ty
uses {
// Tclass._module.Benchmark3 Tag
axiom Tag(Tclass._module.Benchmark3()) == Tagclass._module.Benchmark3
   && TagFamily(Tclass._module.Benchmark3()) == tytagFamily$Benchmark3;
}

const unique Tagclass._module.Benchmark3: TyTag;

// Box/unbox axiom for Tclass._module.Benchmark3
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Benchmark3()) } 
  $IsBox(bx, Tclass._module.Benchmark3())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Benchmark3()));

procedure {:verboseName "Benchmark3.Sort (well-formedness)"} CheckWellFormed$$_module.Benchmark3.Sort(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Benchmark3())
         && $IsAlloc(this, Tclass._module.Benchmark3(), $Heap), 
    q#0: ref
       where $Is(q#0, Tclass._module.Queue(TInt))
         && $IsAlloc(q#0, Tclass._module.Queue(TInt), $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass._module.Queue(TInt))
         && $IsAlloc(r#0, Tclass._module.Queue(TInt), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Benchmark3.Sort (well-formedness)"} CheckWellFormed$$_module.Benchmark3.Sort(this: ref, q#0: ref) returns (r#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var j#0: int;
  var ##i#0: int;
  var ##i#1: int;


    // AddMethodImpl: Sort, CheckWellFormed$$_module.Benchmark3.Sort
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == q#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == q#0);
    assume $HeapSucc(old($Heap), $Heap);
    havoc r#0;
    assume {:id "id27"} r#0 != null && !$Unbox(read(old($Heap), r#0, alloc)): bool;
    assert {:id "id28"} r#0 != null;
    assert {:id "id29"} q#0 != null;
    assert {:id "id30"} $IsAlloc(q#0, Tclass._module.Queue(TInt), old($Heap));
    assume {:id "id31"} Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq)
       == Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
    havoc i#0;
    havoc j#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#0)
        {
        }

        if (LitInt(0) <= i#0 && i#0 < j#0)
        {
            assert {:id "id32"} r#0 != null;
        }

        assume {:id "id33"} LitInt(0) <= i#0
           && i#0 < j#0
           && j#0 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq);
        assert {:id "id34"} r#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(r#0), Tclass._module.Queue?(TInt), $Heap);
        ##i#0 := i#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##i#0, TInt, $Heap);
        assert {:id "id35"} {:subsumption 0} LitInt(0) <= ##i#0;
        assert {:id "id36"} {:subsumption 0} ##i#0 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq);
        assume LitInt(0) <= ##i#0
           && ##i#0 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq);
        assume _module.Queue.Get#canCall(TInt, $Heap, r#0, i#0);
        assert {:id "id37"} r#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(r#0), Tclass._module.Queue?(TInt), $Heap);
        ##i#1 := j#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##i#1, TInt, $Heap);
        assert {:id "id38"} {:subsumption 0} LitInt(0) <= ##i#1;
        assert {:id "id39"} {:subsumption 0} ##i#1 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq);
        assume LitInt(0) <= ##i#1
           && ##i#1 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq);
        assume _module.Queue.Get#canCall(TInt, $Heap, r#0, j#0);
        assume {:id "id40"} $Unbox(_module.Queue.Get(TInt, $Heap, r#0, i#0)): int
           <= $Unbox(_module.Queue.Get(TInt, $Heap, r#0, j#0)): int;
    }
    else
    {
        assume {:id "id41"} LitInt(0) <= i#0
             && i#0 < j#0
             && j#0 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq)
           ==> $Unbox(_module.Queue.Get(TInt, $Heap, r#0, i#0)): int
             <= $Unbox(_module.Queue.Get(TInt, $Heap, r#0, j#0)): int;
    }

    assume {:id "id42"} (forall i#1: int, j#1: int :: 
      { $Unbox(_module.Queue.Get(TInt, $Heap, r#0, j#1)): int, $Unbox(_module.Queue.Get(TInt, $Heap, r#0, i#1)): int } 
      LitInt(0) <= i#1
           && i#1 < j#1
           && j#1 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq)
         ==> $Unbox(_module.Queue.Get(TInt, $Heap, r#0, i#1)): int
           <= $Unbox(_module.Queue.Get(TInt, $Heap, r#0, j#1)): int);
    assert {:id "id43"} r#0 != null;
    assert {:id "id44"} q#0 != null;
    assert {:id "id45"} $IsAlloc(q#0, Tclass._module.Queue(TInt), old($Heap));
    assume {:id "id46"} MultiSet#Equal(MultiSet#FromSeq($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq), 
      MultiSet#FromSeq($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq));
}



procedure {:verboseName "Benchmark3.Sort (call)"} Call$$_module.Benchmark3.Sort(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Benchmark3())
         && $IsAlloc(this, Tclass._module.Benchmark3(), $Heap), 
    q#0: ref
       where $Is(q#0, Tclass._module.Queue(TInt))
         && $IsAlloc(q#0, Tclass._module.Queue(TInt), $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass._module.Queue(TInt))
         && $IsAlloc(r#0, Tclass._module.Queue(TInt), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id47"} r#0 != null && !$Unbox(read(old($Heap), r#0, alloc)): bool;
  free ensures true;
  ensures {:id "id48"} Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq)
     == Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
  free ensures (forall i#1: int, j#1: int :: 
    { $Unbox(_module.Queue.Get(TInt, $Heap, r#0, j#1)): int, $Unbox(_module.Queue.Get(TInt, $Heap, r#0, i#1)): int } 
    LitInt(0) <= i#1
         && i#1 < j#1
         && j#1 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq)
       ==> _module.Queue.Get#canCall(TInt, $Heap, r#0, i#1)
         && _module.Queue.Get#canCall(TInt, $Heap, r#0, j#1));
  ensures {:id "id49"} (forall i#1: int, j#1: int :: 
    { $Unbox(_module.Queue.Get(TInt, $Heap, r#0, j#1)): int, $Unbox(_module.Queue.Get(TInt, $Heap, r#0, i#1)): int } 
    LitInt(0) <= i#1
         && i#1 < j#1
         && j#1 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq)
       ==> $Unbox(_module.Queue.Get(TInt, $Heap, r#0, i#1)): int
         <= $Unbox(_module.Queue.Get(TInt, $Heap, r#0, j#1)): int);
  free ensures true;
  ensures {:id "id50"} MultiSet#Equal(MultiSet#FromSeq($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq), 
    MultiSet#FromSeq($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == q#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Benchmark3.Sort (correctness)"} Impl$$_module.Benchmark3.Sort(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Benchmark3())
         && $IsAlloc(this, Tclass._module.Benchmark3(), $Heap), 
    q#0: ref
       where $Is(q#0, Tclass._module.Queue(TInt))
         && $IsAlloc(q#0, Tclass._module.Queue(TInt), $Heap))
   returns (defass#r#0: bool, 
    r#0: ref
       where defass#r#0
         ==> $Is(r#0, Tclass._module.Queue(TInt))
           && $IsAlloc(r#0, Tclass._module.Queue(TInt), $Heap), 
    $_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id51"} r#0 != null && !$Unbox(read(old($Heap), r#0, alloc)): bool;
  free ensures true;
  ensures {:id "id52"} Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq)
     == Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
  free ensures (forall i#1: int, j#1: int :: 
    { $Unbox(_module.Queue.Get(TInt, $Heap, r#0, j#1)): int, $Unbox(_module.Queue.Get(TInt, $Heap, r#0, i#1)): int } 
    LitInt(0) <= i#1
         && i#1 < j#1
         && j#1 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq)
       ==> _module.Queue.Get#canCall(TInt, $Heap, r#0, i#1)
         && _module.Queue.Get#canCall(TInt, $Heap, r#0, j#1));
  ensures {:id "id53"} (forall i#1: int, j#1: int :: 
    { $Unbox(_module.Queue.Get(TInt, $Heap, r#0, j#1)): int, $Unbox(_module.Queue.Get(TInt, $Heap, r#0, i#1)): int } 
    LitInt(0) <= i#1
         && i#1 < j#1
         && j#1 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq)
       ==> $Unbox(_module.Queue.Get(TInt, $Heap, r#0, i#1)): int
         <= $Unbox(_module.Queue.Get(TInt, $Heap, r#0, j#1)): int);
  free ensures true;
  ensures {:id "id54"} MultiSet#Equal(MultiSet#FromSeq($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq), 
    MultiSet#FromSeq($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == q#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Benchmark3.Sort (correctness)"} Impl$$_module.Benchmark3.Sort(this: ref, q#0: ref) returns (defass#r#0: bool, r#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $nw: ref;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var i#2: int;
  var j#2: int;
  var i#4: int;
  var j#4: int;
  var $decr$loop#00: int;
  var qc#0_0: Seq where $Is(qc#0_0, TSeq(TInt)) && $IsAlloc(qc#0_0, TSeq(TInt), $Heap);
  var m#0_0: int;
  var k#0_0: int;
  var $rhs##0_0: int;
  var $rhs##0_1: int;
  var q##0_0: ref;
  var x##0_0: int;

    // AddMethodImpl: Sort, Impl$$_module.Benchmark3.Sort
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == q#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(53,7)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Queue?(TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(53,25)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id55"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == $nw
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id56"} Call$$_module.Queue.Init(TInt, $nw);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $nw;
    defass#r#0 := true;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(54,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) <= LitInt(0)
       then 0 - Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq)
       else Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) - 0);
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id64"} $w$loop#0
         ==> Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq)
             + Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq)
           == Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
      free invariant true;
      invariant {:id "id74"} $w$loop#0
         ==> (forall i#3: int, j#3: int :: 
          { $Unbox(Seq#Index($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq, j#3)): int, $Unbox(Seq#Index($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq, i#3)): int } 
          LitInt(0) <= i#3
               && i#3 < j#3
               && j#3 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq)
             ==> $Unbox(Seq#Index($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq, i#3)): int
               <= $Unbox(Seq#Index($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq, j#3)): int);
      free invariant true;
      invariant {:id "id84"} $w$loop#0
         ==> (forall i#5: int, j#5: int :: 
          { $Unbox(Seq#Index($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, j#5)): int, $Unbox(Seq#Index($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq, i#5)): int } 
          LitInt(0) <= i#5
               && i#5 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq)
               && 
              LitInt(0) <= j#5
               && j#5 < Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq)
             ==> $Unbox(Seq#Index($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq, i#5)): int
               <= $Unbox(Seq#Index($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, j#5)): int);
      free invariant true;
      invariant {:id "id91"} $w$loop#0
         ==> MultiSet#Equal(MultiSet#FromSeq(Seq#Append($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq, 
              $Unbox(read($Heap, q#0, _module.Queue.contents)): Seq)), 
          MultiSet#FromSeq($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq));
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == q#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant (if Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) <= LitInt(0)
           then 0 - Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq)
           else Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) - 0)
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id58"} defass#r#0;
            assert {:id "id59"} {:subsumption 0} r#0 != null;
            assert {:id "id60"} {:subsumption 0} q#0 != null;
            assert {:id "id61"} {:subsumption 0} q#0 != null;
            assert {:id "id62"} $IsAlloc(q#0, Tclass._module.Queue(TInt), old($Heap));
            assume true;
            assume {:id "id63"} Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq)
                 + Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq)
               == Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
            // Begin Comprehension WF check
            havoc i#2;
            havoc j#2;
            if (true)
            {
                if (LitInt(0) <= i#2)
                {
                }

                if (LitInt(0) <= i#2 && i#2 < j#2)
                {
                    assert {:id "id65"} defass#r#0;
                    assert {:id "id66"} {:subsumption 0} r#0 != null;
                }

                if (LitInt(0) <= i#2
                   && i#2 < j#2
                   && j#2 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq))
                {
                    assert {:id "id67"} defass#r#0;
                    assert {:id "id68"} {:subsumption 0} r#0 != null;
                    assert {:id "id69"} {:subsumption 0} 0 <= i#2
                       && i#2 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq);
                    assert {:id "id70"} defass#r#0;
                    assert {:id "id71"} {:subsumption 0} r#0 != null;
                    assert {:id "id72"} {:subsumption 0} 0 <= j#2
                       && j#2 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq);
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id73"} (forall i#3: int, j#3: int :: 
              { $Unbox(Seq#Index($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq, j#3)): int, $Unbox(Seq#Index($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq, i#3)): int } 
              LitInt(0) <= i#3
                   && i#3 < j#3
                   && j#3 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq)
                 ==> $Unbox(Seq#Index($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq, i#3)): int
                   <= $Unbox(Seq#Index($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq, j#3)): int);
            // Begin Comprehension WF check
            havoc i#4;
            havoc j#4;
            if (true)
            {
                if (LitInt(0) <= i#4)
                {
                    assert {:id "id75"} defass#r#0;
                    assert {:id "id76"} {:subsumption 0} r#0 != null;
                }

                if (LitInt(0) <= i#4
                   && i#4 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq))
                {
                    if (LitInt(0) <= j#4)
                    {
                        assert {:id "id77"} {:subsumption 0} q#0 != null;
                    }
                }

                if (LitInt(0) <= i#4
                   && i#4 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq)
                   && 
                  LitInt(0) <= j#4
                   && j#4 < Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq))
                {
                    assert {:id "id78"} defass#r#0;
                    assert {:id "id79"} {:subsumption 0} r#0 != null;
                    assert {:id "id80"} {:subsumption 0} 0 <= i#4
                       && i#4 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq);
                    assert {:id "id81"} {:subsumption 0} q#0 != null;
                    assert {:id "id82"} {:subsumption 0} 0 <= j#4
                       && j#4 < Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq);
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id83"} (forall i#5: int, j#5: int :: 
              { $Unbox(Seq#Index($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, j#5)): int, $Unbox(Seq#Index($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq, i#5)): int } 
              LitInt(0) <= i#5
                   && i#5 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq)
                   && 
                  LitInt(0) <= j#5
                   && j#5 < Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq)
                 ==> $Unbox(Seq#Index($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq, i#5)): int
                   <= $Unbox(Seq#Index($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, j#5)): int);
            assert {:id "id85"} defass#r#0;
            assert {:id "id86"} {:subsumption 0} r#0 != null;
            assert {:id "id87"} {:subsumption 0} q#0 != null;
            assert {:id "id88"} {:subsumption 0} q#0 != null;
            assert {:id "id89"} $IsAlloc(q#0, Tclass._module.Queue(TInt), old($Heap));
            assume true;
            assume {:id "id90"} MultiSet#Equal(MultiSet#FromSeq(Seq#Append($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq, 
                  $Unbox(read($Heap, q#0, _module.Queue.contents)): Seq)), 
              MultiSet#FromSeq($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq));
            assert {:id "id92"} q#0 != null;
            if (Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) <= LitInt(0))
            {
                assert {:id "id93"} q#0 != null;
            }
            else
            {
                assert {:id "id94"} q#0 != null;
            }

            assume true;
            assume false;
        }

        assert {:id "id95"} q#0 != null;
        assume true;
        if (Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) == 0)
        {
            break;
        }

        $decr$loop#00 := (if Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) <= LitInt(0)
           then 0 - Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq)
           else Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) - 0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(64,20)
        assume true;
        assert {:id "id96"} q#0 != null;
        assume true;
        qc#0_0 := $Unbox(read($Heap, q#0, _module.Queue.contents)): Seq;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(65,27)
        assume true;
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        q##0_0 := q#0;
        assert {:id "id98"} (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == q##0_0
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id99"} $rhs##0_0, $rhs##0_1 := Call$$_module.Benchmark3.RemoveMin(this, q##0_0);
        // TrCallStmt: After ProcessCallStmt
        m#0_0 := $rhs##0_0;
        k#0_0 := $rhs##0_1;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(66,7)
        assert {:id "id102"} {:subsumption 0} 0 <= k#0_0 && k#0_0 <= Seq#Length(qc#0_0);
        assert {:id "id103"} {:subsumption 0} 0 <= k#0_0 + 1 && k#0_0 + 1 <= Seq#Length(qc#0_0);
        assume true;
        assert {:id "id104"} Seq#Equal(qc#0_0, 
          Seq#Append(Seq#Append(Seq#Take(qc#0_0, k#0_0), Seq#Build(Seq#Empty(): Seq, $Box(m#0_0))), 
            Seq#Drop(qc#0_0, k#0_0 + 1)));
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(67,16)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id105"} defass#r#0;
        assume true;
        assert {:id "id106"} r#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##0_0 := m#0_0;
        assert {:id "id107"} (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == r#0
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id108"} Call$$_module.Queue.Enqueue(TInt, r#0, $Box(x##0_0));
        // TrCallStmt: After ProcessCallStmt
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(54,5)
        assert {:id "id109"} 0 <= $decr$loop#00
           || (if Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) <= LitInt(0)
               then 0 - Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq)
               else Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) - 0)
             == $decr$loop#00;
        assert {:id "id110"} (if Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) <= LitInt(0)
             then 0 - Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq)
             else Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) - 0)
           < $decr$loop#00;
        assume true;
    }

    assert {:id "id111"} defass#r#0;
}



procedure {:verboseName "Benchmark3.RemoveMin (well-formedness)"} CheckWellFormed$$_module.Benchmark3.RemoveMin(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Benchmark3())
         && $IsAlloc(this, Tclass._module.Benchmark3(), $Heap), 
    q#0: ref
       where $Is(q#0, Tclass._module.Queue(TInt))
         && $IsAlloc(q#0, Tclass._module.Queue(TInt), $Heap))
   returns (m#0: int, k#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Benchmark3.RemoveMin (well-formedness)"} CheckWellFormed$$_module.Benchmark3.RemoveMin(this: ref, q#0: ref) returns (m#0: int, k#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;


    // AddMethodImpl: RemoveMin, CheckWellFormed$$_module.Benchmark3.RemoveMin
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == q#0);
    assert {:id "id112"} q#0 != null;
    assume {:id "id113"} Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) != 0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == q#0);
    assume $HeapSucc(old($Heap), $Heap);
    havoc m#0, k#0;
    assert {:id "id114"} q#0 != null;
    assert {:id "id115"} $IsAlloc(q#0, Tclass._module.Queue(TInt), old($Heap));
    assert {:id "id116"} q#0 != null;
    assume {:id "id117"} Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq)
       == Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) + 1;
    if (LitInt(0) <= k#0)
    {
        assert {:id "id118"} q#0 != null;
        assert {:id "id119"} $IsAlloc(q#0, Tclass._module.Queue(TInt), old($Heap));
    }

    assume {:id "id120"} LitInt(0) <= k#0
       && k#0 < Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
    assert {:id "id121"} q#0 != null;
    assert {:id "id122"} $IsAlloc(q#0, Tclass._module.Queue(TInt), old($Heap));
    assert {:id "id123"} 0 <= k#0
       && k#0 < Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
    assume {:id "id124"} $Unbox(Seq#Index($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, k#0)): int
       == m#0;
    havoc i#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#0)
        {
            assert {:id "id125"} q#0 != null;
        }

        assume {:id "id126"} LitInt(0) <= i#0
           && i#0 < Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq);
        assert {:id "id127"} q#0 != null;
        assert {:id "id128"} 0 <= i#0
           && i#0 < Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq);
        assume {:id "id129"} m#0
           <= $Unbox(Seq#Index($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, i#0)): int;
    }
    else
    {
        assume {:id "id130"} LitInt(0) <= i#0
             && i#0 < Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq)
           ==> m#0
             <= $Unbox(Seq#Index($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, i#0)): int;
    }

    assume {:id "id131"} (forall i#1: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, i#1)): int } 
      LitInt(0) <= i#1
           && i#1 < Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq)
         ==> m#0
           <= $Unbox(Seq#Index($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, i#1)): int);
    assert {:id "id132"} q#0 != null;
    assert {:id "id133"} q#0 != null;
    assert {:id "id134"} $IsAlloc(q#0, Tclass._module.Queue(TInt), old($Heap));
    assert {:id "id135"} 0 <= k#0 + 1
       && k#0 + 1
         <= Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
    assert {:id "id136"} q#0 != null;
    assert {:id "id137"} $IsAlloc(q#0, Tclass._module.Queue(TInt), old($Heap));
    assert {:id "id138"} 0 <= k#0
       && k#0 <= Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
    assume {:id "id139"} Seq#Equal($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, 
      Seq#Append(Seq#Drop($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, k#0 + 1), 
        Seq#Take($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, k#0)));
}



procedure {:verboseName "Benchmark3.RemoveMin (call)"} Call$$_module.Benchmark3.RemoveMin(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Benchmark3())
         && $IsAlloc(this, Tclass._module.Benchmark3(), $Heap), 
    q#0: ref
       where $Is(q#0, Tclass._module.Queue(TInt))
         && $IsAlloc(q#0, Tclass._module.Queue(TInt), $Heap))
   returns (m#0: int, k#0: int);
  // user-defined preconditions
  requires {:id "id140"} Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) != 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id141"} Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq)
     == Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) + 1;
  free ensures true;
  ensures {:id "id142"} LitInt(0) <= k#0;
  ensures {:id "id143"} k#0 < Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
  ensures {:id "id144"} $Unbox(Seq#Index($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, k#0)): int
     == m#0;
  free ensures true;
  ensures {:id "id145"} (forall i#1: int :: 
    { $Unbox(Seq#Index($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, i#1)): int } 
    LitInt(0) <= i#1
         && i#1 < Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq)
       ==> m#0
         <= $Unbox(Seq#Index($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, i#1)): int);
  free ensures true;
  ensures {:id "id146"} Seq#Equal($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, 
    Seq#Append(Seq#Drop($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, k#0 + 1), 
      Seq#Take($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, k#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == q#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Benchmark3.RemoveMin (correctness)"} Impl$$_module.Benchmark3.RemoveMin(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Benchmark3())
         && $IsAlloc(this, Tclass._module.Benchmark3(), $Heap), 
    q#0: ref
       where $Is(q#0, Tclass._module.Queue(TInt))
         && $IsAlloc(q#0, Tclass._module.Queue(TInt), $Heap))
   returns (m#0: int, k#0: int, $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id147"} Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) != 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id148"} Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq)
     == Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) + 1;
  free ensures true;
  ensures {:id "id149"} LitInt(0) <= k#0;
  ensures {:id "id150"} k#0 < Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
  ensures {:id "id151"} $Unbox(Seq#Index($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, k#0)): int
     == m#0;
  free ensures true;
  ensures {:id "id152"} (forall i#1: int :: 
    { $Unbox(Seq#Index($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, i#1)): int } 
    LitInt(0) <= i#1
         && i#1 < Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq)
       ==> m#0
         <= $Unbox(Seq#Index($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, i#1)): int);
  free ensures true;
  ensures {:id "id153"} Seq#Equal($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, 
    Seq#Append(Seq#Drop($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, k#0 + 1), 
      Seq#Take($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, k#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == q#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Benchmark3.RemoveMin (correctness)"} Impl$$_module.Benchmark3.RemoveMin(this: ref, q#0: ref) returns (m#0: int, k#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: int;
  var j#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var i#2: int;
  var $decr$loop#00: int;
  var qc0#0_0: Seq
     where $Is(qc0#0_0, TSeq(TInt)) && $IsAlloc(qc0#0_0, TSeq(TInt), $Heap);
  var x#0_0: int;
  var $rhs##0_0: int;
  var $tmp##0_0: Box;
  var x##0_0: int;
  var O##0_0: Seq;
  var j##0_0: int;
  var A##0_0: Seq;
  var C##0_0: Seq;
  var q##0: ref;
  var k##0: int;
  var qq#0: Seq where $Is(qq#0, TSeq(TInt)) && $IsAlloc(qq#0, TSeq(TInt), $Heap);
  var $rhs##0: int;
  var $tmp##0: Box;

    // AddMethodImpl: RemoveMin, Impl$$_module.Benchmark3.RemoveMin
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == q#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(79,11)
    assume true;
    assert {:id "id154"} q#0 != null;
    assume true;
    n#0 := Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(80,7)
    assume true;
    assume true;
    k#0 := LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(81,7)
    assume true;
    assert {:id "id157"} q#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(q#0), Tclass._module.Queue?(TInt), $Heap);
    assert {:id "id158"} {:subsumption 0} 0 < Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq);
    assume 0 < Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq);
    assume _module.Queue.Head#canCall(TInt, $Heap, q#0);
    assume _module.Queue.Head#canCall(TInt, $Heap, q#0);
    m#0 := $Unbox(_module.Queue.Head(TInt, $Heap, q#0)): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(82,11)
    assume true;
    assume true;
    j#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(83,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 - j#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id162"} $w$loop#0 ==> j#0 <= n#0;
      free invariant true;
      invariant {:id "id167"} $w$loop#0 ==> LitInt(0) <= k#0;
      invariant {:id "id168"} $w$loop#0 ==> k#0 < n#0;
      invariant {:id "id169"} $w$loop#0
         ==> $Unbox(Seq#Index($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, k#0)): int
           == m#0;
      free invariant true;
      invariant {:id "id178"} $w$loop#0
         ==> Seq#Equal($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, 
          Seq#Append(Seq#Drop($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, j#0), 
            Seq#Take($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, j#0)));
      free invariant true;
      invariant {:id "id183"} $w$loop#0
         ==> (forall i#3: int :: 
          { $Unbox(Seq#Index($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, i#3)): int } 
          LitInt(0) <= i#3 && i#3 < j#0
             ==> m#0
               <= $Unbox(Seq#Index($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, i#3)): int);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == q#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant n#0 - j#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id161"} j#0 <= n#0;
            if (LitInt(0) <= k#0)
            {
            }

            if (LitInt(0) <= k#0 && k#0 < n#0)
            {
                assert {:id "id163"} {:subsumption 0} q#0 != null;
                assert {:id "id164"} $IsAlloc(q#0, Tclass._module.Queue(TInt), old($Heap));
                assert {:id "id165"} {:subsumption 0} 0 <= k#0
                   && k#0 < Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
            }

            assume true;
            assume {:id "id166"} LitInt(0) <= k#0
               && k#0 < n#0
               && $Unbox(Seq#Index($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, k#0)): int
                 == m#0;
            assert {:id "id170"} {:subsumption 0} q#0 != null;
            assert {:id "id171"} {:subsumption 0} q#0 != null;
            assert {:id "id172"} $IsAlloc(q#0, Tclass._module.Queue(TInt), old($Heap));
            assert {:id "id173"} {:subsumption 0} 0 <= j#0
               && j#0 <= Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
            assert {:id "id174"} {:subsumption 0} q#0 != null;
            assert {:id "id175"} $IsAlloc(q#0, Tclass._module.Queue(TInt), old($Heap));
            assert {:id "id176"} {:subsumption 0} 0 <= j#0
               && j#0 <= Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
            assume true;
            assume {:id "id177"} Seq#Equal($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, 
              Seq#Append(Seq#Drop($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, j#0), 
                Seq#Take($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, j#0)));
            // Begin Comprehension WF check
            havoc i#2;
            if (true)
            {
                if (LitInt(0) <= i#2)
                {
                }

                if (LitInt(0) <= i#2 && i#2 < j#0)
                {
                    assert {:id "id179"} {:subsumption 0} q#0 != null;
                    assert {:id "id180"} $IsAlloc(q#0, Tclass._module.Queue(TInt), old($Heap));
                    assert {:id "id181"} {:subsumption 0} 0 <= i#2
                       && i#2 < Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id182"} (forall i#3: int :: 
              { $Unbox(Seq#Index($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, i#3)): int } 
              LitInt(0) <= i#3 && i#3 < j#0
                 ==> m#0
                   <= $Unbox(Seq#Index($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, i#3)): int);
            assume true;
            assume false;
        }

        assume true;
        if (n#0 <= j#0)
        {
            break;
        }

        $decr$loop#00 := n#0 - j#0;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(89,21)
        assume true;
        assert {:id "id184"} q#0 != null;
        assume true;
        qc0#0_0 := $Unbox(read($Heap, q#0, _module.Queue.contents)): Seq;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(90,25)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id186"} q#0 != null;
        assert {:id "id187"} (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == q#0
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id188"} $tmp##0_0 := Call$$_module.Queue.Dequeue(TInt, q#0);
        havoc $rhs##0_0;
        assume $rhs##0_0 == $Unbox($tmp##0_0): int;
        // TrCallStmt: After ProcessCallStmt
        x#0_0 := $rhs##0_0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(91,16)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id190"} q#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##0_0 := x#0_0;
        assert {:id "id191"} (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == q#0
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id192"} Call$$_module.Queue.Enqueue(TInt, q#0, $Box(x##0_0));
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(92,20)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id193"} q#0 != null;
        assert {:id "id194"} $IsAlloc(q#0, Tclass._module.Queue(TInt), old($Heap));
        assume true;
        // ProcessCallStmt: CheckSubrange
        O##0_0 := $Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id195"} $Is(j#0, Tclass._System.nat());
        j##0_0 := j#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        A##0_0 := qc0#0_0;
        assert {:id "id196"} q#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        C##0_0 := $Unbox(read($Heap, q#0, _module.Queue.contents)): Seq;
        call {:id "id197"} Call$$_module.Benchmark3.RotationLemma(TInt, this, O##0_0, j##0_0, A##0_0, C##0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(93,7)
        assume true;
        if (x#0_0 < m#0)
        {
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(93,20)
            assume true;
            assume true;
            k#0 := j#0;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(93,28)
            assume true;
            assume true;
            m#0 := x#0_0;
            pop;
        }
        else
        {
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(94,9)
        assume true;
        assume true;
        j#0 := j#0 + 1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(83,5)
        assert {:id "id201"} 0 <= $decr$loop#00 || n#0 - j#0 == $decr$loop#00;
        assert {:id "id202"} n#0 - j#0 < $decr$loop#00;
        assume true;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(97,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    q##0 := q#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id203"} $Is(k#0, Tclass._System.nat());
    k##0 := k#0;
    assert {:id "id204"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == q##0
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id205"} Call$$_module.Benchmark3.Rotate(this, q##0, k##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(99,5)
    assert {:id "id206"} {:subsumption 0} q#0 != null;
    assert {:id "id207"} {:subsumption 0} q#0 != null;
    assert {:id "id208"} $IsAlloc(q#0, Tclass._module.Queue(TInt), old($Heap));
    assert {:id "id209"} {:subsumption 0} 0 <= k#0
       && k#0 <= Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
    assert {:id "id210"} {:subsumption 0} q#0 != null;
    assert {:id "id211"} $IsAlloc(q#0, Tclass._module.Queue(TInt), old($Heap));
    assert {:id "id212"} {:subsumption 0} 0 <= k#0
       && k#0 <= Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
    assume true;
    assert {:id "id213"} Seq#Equal($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, 
      Seq#Append(Seq#Drop($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, k#0), 
        Seq#Take($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, k#0)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(100,18)
    assume true;
    assert {:id "id214"} q#0 != null;
    assume true;
    qq#0 := $Unbox(read($Heap, q#0, _module.Queue.contents)): Seq;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(101,19)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id216"} q#0 != null;
    assert {:id "id217"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == q#0
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id218"} $tmp##0 := Call$$_module.Queue.Dequeue(TInt, q#0);
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): int;
    // TrCallStmt: After ProcessCallStmt
    m#0 := $rhs##0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(102,5)
    assert {:id "id220"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(qq#0);
    assume true;
    assert {:id "id221"} m#0 == $Unbox(Seq#Index(qq#0, LitInt(0))): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(103,5)
    assert {:id "id222"} {:subsumption 0} q#0 != null;
    if (Seq#Equal(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(m#0)), 
        $Unbox(read($Heap, q#0, _module.Queue.contents)): Seq), 
      qq#0))
    {
        assert {:id "id223"} {:subsumption 0} q#0 != null;
        assert {:id "id224"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(qq#0);
    }

    assume true;
    assert {:id "id225"} {:subsumption 0} Seq#Equal(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(m#0)), 
        $Unbox(read($Heap, q#0, _module.Queue.contents)): Seq), 
      qq#0);
    assert {:id "id226"} {:subsumption 0} Seq#Equal($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, Seq#Drop(qq#0, LitInt(1)));
    assume {:id "id227"} Seq#Equal(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(m#0)), 
          $Unbox(read($Heap, q#0, _module.Queue.contents)): Seq), 
        qq#0)
       && Seq#Equal($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, Seq#Drop(qq#0, LitInt(1)));
}



procedure {:verboseName "Benchmark3.Rotate (well-formedness)"} CheckWellFormed$$_module.Benchmark3.Rotate(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Benchmark3())
         && $IsAlloc(this, Tclass._module.Benchmark3(), $Heap), 
    q#0: ref
       where $Is(q#0, Tclass._module.Queue(TInt))
         && $IsAlloc(q#0, Tclass._module.Queue(TInt), $Heap), 
    k#0: int where LitInt(0) <= k#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Benchmark3.Rotate (well-formedness)"} CheckWellFormed$$_module.Benchmark3.Rotate(this: ref, q#0: ref, k#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Rotate, CheckWellFormed$$_module.Benchmark3.Rotate
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == q#0);
    assert {:id "id228"} q#0 != null;
    assume {:id "id229"} k#0 <= Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == q#0);
    assume $HeapSucc(old($Heap), $Heap);
    assert {:id "id230"} q#0 != null;
    assert {:id "id231"} q#0 != null;
    assert {:id "id232"} $IsAlloc(q#0, Tclass._module.Queue(TInt), old($Heap));
    assert {:id "id233"} 0 <= k#0
       && k#0 <= Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
    assert {:id "id234"} q#0 != null;
    assert {:id "id235"} $IsAlloc(q#0, Tclass._module.Queue(TInt), old($Heap));
    assert {:id "id236"} 0 <= k#0
       && k#0 <= Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
    assume {:id "id237"} Seq#Equal($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, 
      Seq#Append(Seq#Drop($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, k#0), 
        Seq#Take($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, k#0)));
}



procedure {:verboseName "Benchmark3.Rotate (call)"} Call$$_module.Benchmark3.Rotate(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Benchmark3())
         && $IsAlloc(this, Tclass._module.Benchmark3(), $Heap), 
    q#0: ref
       where $Is(q#0, Tclass._module.Queue(TInt))
         && $IsAlloc(q#0, Tclass._module.Queue(TInt), $Heap), 
    k#0: int where LitInt(0) <= k#0);
  // user-defined preconditions
  requires {:id "id238"} k#0 <= Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id239"} Seq#Equal($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, 
    Seq#Append(Seq#Drop($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, k#0), 
      Seq#Take($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, k#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == q#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Benchmark3.Rotate (correctness)"} Impl$$_module.Benchmark3.Rotate(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Benchmark3())
         && $IsAlloc(this, Tclass._module.Benchmark3(), $Heap), 
    q#0: ref
       where $Is(q#0, Tclass._module.Queue(TInt))
         && $IsAlloc(q#0, Tclass._module.Queue(TInt), $Heap), 
    k#0: int where LitInt(0) <= k#0)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id240"} k#0 <= Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id241"} Seq#Equal($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, 
    Seq#Append(Seq#Drop($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, k#0), 
      Seq#Take($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, k#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == q#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Benchmark3.Rotate (correctness)"} Impl$$_module.Benchmark3.Rotate(this: ref, q#0: ref, k#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var j#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var qc0#0_0: Seq
     where $Is(qc0#0_0, TSeq(TInt)) && $IsAlloc(qc0#0_0, TSeq(TInt), $Heap);
  var x#0_0: int;
  var $rhs##0_0: int;
  var $tmp##0_0: Box;
  var x##0_0: int;
  var O##0_0: Seq;
  var j##0_0: int;
  var A##0_0: Seq;
  var C##0_0: Seq;

    // AddMethodImpl: Rotate, Impl$$_module.Benchmark3.Rotate
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == q#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(111,11)
    assume true;
    assume true;
    j#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(112,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := k#0 - j#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id244"} $w$loop#0 ==> j#0 <= k#0;
      free invariant true;
      invariant {:id "id253"} $w$loop#0
         ==> Seq#Equal($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, 
          Seq#Append(Seq#Drop($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, j#0), 
            Seq#Take($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, j#0)));
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == q#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant k#0 - j#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id243"} j#0 <= k#0;
            assert {:id "id245"} {:subsumption 0} q#0 != null;
            assert {:id "id246"} {:subsumption 0} q#0 != null;
            assert {:id "id247"} $IsAlloc(q#0, Tclass._module.Queue(TInt), old($Heap));
            assert {:id "id248"} {:subsumption 0} 0 <= j#0
               && j#0 <= Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
            assert {:id "id249"} {:subsumption 0} q#0 != null;
            assert {:id "id250"} $IsAlloc(q#0, Tclass._module.Queue(TInt), old($Heap));
            assert {:id "id251"} {:subsumption 0} 0 <= j#0
               && j#0 <= Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
            assume true;
            assume {:id "id252"} Seq#Equal($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, 
              Seq#Append(Seq#Drop($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, j#0), 
                Seq#Take($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq, j#0)));
            assume true;
            assume false;
        }

        assume true;
        if (k#0 <= j#0)
        {
            break;
        }

        $decr$loop#00 := k#0 - j#0;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(116,21)
        assume true;
        assert {:id "id254"} q#0 != null;
        assume true;
        qc0#0_0 := $Unbox(read($Heap, q#0, _module.Queue.contents)): Seq;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(117,25)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id256"} q#0 != null;
        assert {:id "id257"} (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == q#0
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id258"} $tmp##0_0 := Call$$_module.Queue.Dequeue(TInt, q#0);
        havoc $rhs##0_0;
        assume $rhs##0_0 == $Unbox($tmp##0_0): int;
        // TrCallStmt: After ProcessCallStmt
        x#0_0 := $rhs##0_0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(118,16)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id260"} q#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##0_0 := x#0_0;
        assert {:id "id261"} (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == q#0
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id262"} Call$$_module.Queue.Enqueue(TInt, q#0, $Box(x##0_0));
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(119,20)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id263"} q#0 != null;
        assert {:id "id264"} $IsAlloc(q#0, Tclass._module.Queue(TInt), old($Heap));
        assume true;
        // ProcessCallStmt: CheckSubrange
        O##0_0 := $Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id265"} $Is(j#0, Tclass._System.nat());
        j##0_0 := j#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        A##0_0 := qc0#0_0;
        assert {:id "id266"} q#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        C##0_0 := $Unbox(read($Heap, q#0, _module.Queue.contents)): Seq;
        call {:id "id267"} Call$$_module.Benchmark3.RotationLemma(TInt, this, O##0_0, j##0_0, A##0_0, C##0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(120,9)
        assume true;
        assume true;
        j#0 := j#0 + 1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(112,5)
        assert {:id "id269"} 0 <= $decr$loop#00 || k#0 - j#0 == $decr$loop#00;
        assert {:id "id270"} k#0 - j#0 < $decr$loop#00;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(122,5)
    assume true;
    assert {:id "id271"} j#0 == k#0;
}



procedure {:verboseName "Benchmark3.RotationLemma (well-formedness)"} CheckWellFormed$$_module.Benchmark3.RotationLemma(_module.Benchmark3.RotationLemma$_T0: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Benchmark3())
         && $IsAlloc(this, Tclass._module.Benchmark3(), $Heap), 
    O#0: Seq
       where $Is(O#0, TSeq(_module.Benchmark3.RotationLemma$_T0))
         && $IsAlloc(O#0, TSeq(_module.Benchmark3.RotationLemma$_T0), $Heap), 
    j#0: int where LitInt(0) <= j#0, 
    A#0: Seq
       where $Is(A#0, TSeq(_module.Benchmark3.RotationLemma$_T0))
         && $IsAlloc(A#0, TSeq(_module.Benchmark3.RotationLemma$_T0), $Heap), 
    C#0: Seq
       where $Is(C#0, TSeq(_module.Benchmark3.RotationLemma$_T0))
         && $IsAlloc(C#0, TSeq(_module.Benchmark3.RotationLemma$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Benchmark3.RotationLemma (well-formedness)"} CheckWellFormed$$_module.Benchmark3.RotationLemma(_module.Benchmark3.RotationLemma$_T0: Ty, 
    this: ref, 
    O#0: Seq, 
    j#0: int, 
    A#0: Seq, 
    C#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: RotationLemma, CheckWellFormed$$_module.Benchmark3.RotationLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id272"} j#0 < Seq#Length(O#0);
    assert {:id "id273"} 0 <= j#0 && j#0 <= Seq#Length(O#0);
    assert {:id "id274"} 0 <= j#0 && j#0 <= Seq#Length(O#0);
    assume {:id "id275"} Seq#Equal(A#0, Seq#Append(Seq#Drop(O#0, j#0), Seq#Take(O#0, j#0)));
    assert {:id "id276"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(A#0);
    assert {:id "id277"} 0 <= j#0 && j#0 < Seq#Length(O#0);
    assume {:id "id278"} Seq#Equal(C#0, 
      Seq#Append(Seq#Drop(A#0, LitInt(1)), Seq#Build(Seq#Empty(): Seq, Seq#Index(O#0, j#0))));
    havoc $Heap;
    assume old($Heap) == $Heap;
    assert {:id "id279"} 0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
    assert {:id "id280"} 0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
    assume {:id "id281"} Seq#Equal(C#0, Seq#Append(Seq#Drop(O#0, j#0 + 1), Seq#Take(O#0, j#0 + 1)));
}



procedure {:verboseName "Benchmark3.RotationLemma (call)"} Call$$_module.Benchmark3.RotationLemma(_module.Benchmark3.RotationLemma$_T0: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Benchmark3())
         && $IsAlloc(this, Tclass._module.Benchmark3(), $Heap), 
    O#0: Seq
       where $Is(O#0, TSeq(_module.Benchmark3.RotationLemma$_T0))
         && $IsAlloc(O#0, TSeq(_module.Benchmark3.RotationLemma$_T0), $Heap), 
    j#0: int where LitInt(0) <= j#0, 
    A#0: Seq
       where $Is(A#0, TSeq(_module.Benchmark3.RotationLemma$_T0))
         && $IsAlloc(A#0, TSeq(_module.Benchmark3.RotationLemma$_T0), $Heap), 
    C#0: Seq
       where $Is(C#0, TSeq(_module.Benchmark3.RotationLemma$_T0))
         && $IsAlloc(C#0, TSeq(_module.Benchmark3.RotationLemma$_T0), $Heap));
  // user-defined preconditions
  requires {:id "id282"} j#0 < Seq#Length(O#0);
  requires {:id "id283"} Seq#Equal(A#0, Seq#Append(Seq#Drop(O#0, j#0), Seq#Take(O#0, j#0)));
  requires {:id "id284"} Seq#Equal(C#0, 
    Seq#Append(Seq#Drop(A#0, LitInt(1)), Seq#Build(Seq#Empty(): Seq, Seq#Index(O#0, j#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id285"} Seq#Equal(C#0, Seq#Append(Seq#Drop(O#0, j#0 + 1), Seq#Take(O#0, j#0 + 1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Benchmark3.RotationLemma (correctness)"} Impl$$_module.Benchmark3.RotationLemma(_module.Benchmark3.RotationLemma$_T0: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Benchmark3())
         && $IsAlloc(this, Tclass._module.Benchmark3(), $Heap), 
    O#0: Seq
       where $Is(O#0, TSeq(_module.Benchmark3.RotationLemma$_T0))
         && $IsAlloc(O#0, TSeq(_module.Benchmark3.RotationLemma$_T0), $Heap), 
    j#0: int where LitInt(0) <= j#0, 
    A#0: Seq
       where $Is(A#0, TSeq(_module.Benchmark3.RotationLemma$_T0))
         && $IsAlloc(A#0, TSeq(_module.Benchmark3.RotationLemma$_T0), $Heap), 
    C#0: Seq
       where $Is(C#0, TSeq(_module.Benchmark3.RotationLemma$_T0))
         && $IsAlloc(C#0, TSeq(_module.Benchmark3.RotationLemma$_T0), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id286"} j#0 < Seq#Length(O#0);
  requires {:id "id287"} Seq#Equal(A#0, Seq#Append(Seq#Drop(O#0, j#0), Seq#Take(O#0, j#0)));
  requires {:id "id288"} Seq#Equal(C#0, 
    Seq#Append(Seq#Drop(A#0, LitInt(1)), Seq#Build(Seq#Empty(): Seq, Seq#Index(O#0, j#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id289"} Seq#Equal(C#0, Seq#Append(Seq#Drop(O#0, j#0 + 1), Seq#Take(O#0, j#0 + 1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Benchmark3.RotationLemma (correctness)"} Impl$$_module.Benchmark3.RotationLemma(_module.Benchmark3.RotationLemma$_T0: Ty, 
    this: ref, 
    O#0: Seq, 
    j#0: int, 
    A#0: Seq, 
    C#0: Seq)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: RotationLemma, Impl$$_module.Benchmark3.RotationLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(131,5)
    // Assume Fuel Constant
    if (*)
    {
        // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(131,5)
        assume true;
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(131,5)
        assume true;
        // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(131,5)
        push;
        pop;
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(131,5)
        assert {:id "id306"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assert {:id "id307"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assume true;
        // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(131,5)
        assert {:id "id308"} {:subsumption 0} Seq#Equal(A#0, Seq#Append(Seq#Drop(O#0, j#0), Seq#Take(O#0, j#0)));
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(131,5)
        assume {:id "id299"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assume {:id "id300"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assume true;
        // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(131,5)
        push;
        pop;
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(131,5)
        assert {:id "id301"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assert {:id "id302"} {:subsumption 0} j#0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
        assert {:id "id303"} {:subsumption 0} 0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
        assert {:id "id304"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assume true;
        // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(131,5)
        assert {:id "id305"} {:subsumption 0} Seq#Equal(Seq#Append(Seq#Drop(O#0, j#0), Seq#Take(O#0, j#0)), 
          Seq#Append(Seq#Append(Seq#Drop(Seq#Take(O#0, j#0 + 1), j#0), Seq#Drop(O#0, j#0 + 1)), 
            Seq#Take(O#0, j#0)));
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(131,5)
        assume {:id "id290"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assume {:id "id291"} {:subsumption 0} j#0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
        assume {:id "id292"} {:subsumption 0} 0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
        assume {:id "id293"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assume true;
        // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(131,5)
        push;
        pop;
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(131,5)
        assert {:id "id294"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assert {:id "id295"} {:subsumption 0} j#0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
        assert {:id "id296"} {:subsumption 0} 0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
        assert {:id "id297"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assume true;
        // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(131,5)
        assert {:id "id298"} {:subsumption 0} Seq#Equal(Seq#Append(Seq#Append(Seq#Drop(Seq#Take(O#0, j#0 + 1), j#0), Seq#Drop(O#0, j#0 + 1)), 
            Seq#Take(O#0, j#0)), 
          Seq#Append(Seq#Drop(Seq#Take(O#0, j#0 + 1), j#0), 
            Seq#Append(Seq#Drop(O#0, j#0 + 1), Seq#Take(O#0, j#0))));
        assume false;
    }

    assume {:id "id309"} Seq#Equal(A#0, 
      Seq#Append(Seq#Drop(Seq#Take(O#0, j#0 + 1), j#0), 
        Seq#Append(Seq#Drop(O#0, j#0 + 1), Seq#Take(O#0, j#0))));
    // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(137,5)
    // Assume Fuel Constant
    if (*)
    {
        // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(137,5)
        assume true;
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(137,5)
        assume true;
        // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(137,5)
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(137,5)
        assert {:id "id357"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(A#0);
        assert {:id "id358"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(A#0);
        assume true;
        // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(137,5)
        assert {:id "id359"} {:subsumption 0} Seq#Equal(C#0, 
          Seq#Append(Seq#Drop(A#0, LitInt(1)), Seq#Build(Seq#Empty(): Seq, Seq#Index(A#0, LitInt(0)))));
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(137,5)
        assume {:id "id343"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(A#0);
        assume {:id "id344"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(A#0);
        assume true;
        // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(137,5)
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(140,9)
        assert {:id "id345"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(A#0);
        assert {:id "id346"} {:subsumption 0} 0 <= j#0 && j#0 < Seq#Length(O#0);
        if (Seq#Index(A#0, LitInt(0)) == Seq#Index(O#0, j#0))
        {
            assert {:id "id347"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(A#0);
            assert {:id "id348"} {:subsumption 0} 0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
            assert {:id "id349"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        }

        assume true;
        assert {:id "id350"} {:subsumption 0} Seq#Index(A#0, LitInt(0)) == Seq#Index(O#0, j#0);
        assert {:id "id351"} {:subsumption 0} Seq#Equal(Seq#Drop(A#0, LitInt(1)), Seq#Append(Seq#Drop(O#0, j#0 + 1), Seq#Take(O#0, j#0)));
        assume {:id "id352"} Seq#Index(A#0, LitInt(0)) == Seq#Index(O#0, j#0)
           && Seq#Equal(Seq#Drop(A#0, LitInt(1)), Seq#Append(Seq#Drop(O#0, j#0 + 1), Seq#Take(O#0, j#0)));
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(137,5)
        assert {:id "id353"} {:subsumption 0} 0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
        assert {:id "id354"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assert {:id "id355"} {:subsumption 0} 0 <= j#0 && j#0 < Seq#Length(O#0);
        assume true;
        // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(137,5)
        assert {:id "id356"} {:subsumption 0} Seq#Equal(Seq#Append(Seq#Drop(A#0, LitInt(1)), Seq#Build(Seq#Empty(): Seq, Seq#Index(A#0, LitInt(0)))), 
          Seq#Append(Seq#Append(Seq#Drop(O#0, j#0 + 1), Seq#Take(O#0, j#0)), 
            Seq#Build(Seq#Empty(): Seq, Seq#Index(O#0, j#0))));
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(137,5)
        assume {:id "id331"} {:subsumption 0} 0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
        assume {:id "id332"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assume {:id "id333"} {:subsumption 0} 0 <= j#0 && j#0 < Seq#Length(O#0);
        assume true;
        // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(137,5)
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(142,9)
        assert {:id "id334"} {:subsumption 0} 0 <= j#0 && j#0 < Seq#Length(O#0);
        assert {:id "id335"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assert {:id "id336"} {:subsumption 0} j#0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
        assume true;
        assert {:id "id337"} Seq#Equal(Seq#Build(Seq#Empty(): Seq, Seq#Index(O#0, j#0)), 
          Seq#Drop(Seq#Take(O#0, j#0 + 1), j#0));
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(137,5)
        assert {:id "id338"} {:subsumption 0} 0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
        assert {:id "id339"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assert {:id "id340"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assert {:id "id341"} {:subsumption 0} j#0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
        assume true;
        // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(137,5)
        assert {:id "id342"} {:subsumption 0} Seq#Equal(Seq#Append(Seq#Append(Seq#Drop(O#0, j#0 + 1), Seq#Take(O#0, j#0)), 
            Seq#Build(Seq#Empty(): Seq, Seq#Index(O#0, j#0))), 
          Seq#Append(Seq#Append(Seq#Drop(O#0, j#0 + 1), Seq#Take(O#0, j#0)), 
            Seq#Drop(Seq#Take(O#0, j#0 + 1), j#0)));
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(137,5)
        assume {:id "id322"} {:subsumption 0} 0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
        assume {:id "id323"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assume {:id "id324"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assume {:id "id325"} {:subsumption 0} j#0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
        assume true;
        // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(137,5)
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(137,5)
        assert {:id "id326"} {:subsumption 0} 0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
        assert {:id "id327"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assert {:id "id328"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assert {:id "id329"} {:subsumption 0} j#0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
        assume true;
        // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(137,5)
        assert {:id "id330"} {:subsumption 0} Seq#Equal(Seq#Append(Seq#Append(Seq#Drop(O#0, j#0 + 1), Seq#Take(O#0, j#0)), 
            Seq#Drop(Seq#Take(O#0, j#0 + 1), j#0)), 
          Seq#Append(Seq#Drop(O#0, j#0 + 1), 
            Seq#Append(Seq#Take(O#0, j#0), Seq#Drop(Seq#Take(O#0, j#0 + 1), j#0))));
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(137,5)
        assume {:id "id310"} {:subsumption 0} 0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
        assume {:id "id311"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assume {:id "id312"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assume {:id "id313"} {:subsumption 0} j#0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
        assume true;
        // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(137,5)
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(145,9)
        assert {:id "id314"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assert {:id "id315"} {:subsumption 0} 0 <= j#0 && j#0 <= Seq#Length(O#0);
        assert {:id "id316"} {:subsumption 0} j#0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
        assert {:id "id317"} {:subsumption 0} 0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
        assume true;
        assert {:id "id318"} Seq#Equal(Seq#Append(Seq#Take(O#0, j#0), Seq#Drop(Seq#Take(O#0, j#0 + 1), j#0)), 
          Seq#Take(O#0, j#0 + 1));
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(137,5)
        assert {:id "id319"} {:subsumption 0} 0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
        assert {:id "id320"} {:subsumption 0} 0 <= j#0 + 1 && j#0 + 1 <= Seq#Length(O#0);
        assume true;
        // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b3.dfy(137,5)
        assert {:id "id321"} {:subsumption 0} Seq#Equal(Seq#Append(Seq#Drop(O#0, j#0 + 1), 
            Seq#Append(Seq#Take(O#0, j#0), Seq#Drop(Seq#Take(O#0, j#0 + 1), j#0))), 
          Seq#Append(Seq#Drop(O#0, j#0 + 1), Seq#Take(O#0, j#0 + 1)));
        assume false;
    }

    assume {:id "id360"} Seq#Equal(C#0, Seq#Append(Seq#Drop(O#0, j#0 + 1), Seq#Take(O#0, j#0 + 1)));
}



// $Is axiom for non-null type _module.Benchmark3
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Benchmark3()) } 
    { $Is(c#0, Tclass._module.Benchmark3?()) } 
  $Is(c#0, Tclass._module.Benchmark3())
     <==> $Is(c#0, Tclass._module.Benchmark3?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Benchmark3
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Benchmark3(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Benchmark3?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Benchmark3(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Benchmark3?(), $h));

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

const unique tytagFamily$Queue: TyTagFamily;

const unique tytagFamily$Comparable: TyTagFamily;

const unique tytagFamily$Benchmark3: TyTagFamily;

const unique field$contents: NameFamily;
