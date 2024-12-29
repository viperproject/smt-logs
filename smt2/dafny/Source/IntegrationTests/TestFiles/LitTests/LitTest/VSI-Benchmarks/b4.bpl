// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy

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

const unique class._module.__default: ClassName;

const unique class._module.Map?: ClassName;

function Tclass._module.Map?(Ty, Ty) : Ty;

const unique Tagclass._module.Map?: TyTag;

// Tclass._module.Map? Tag
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty :: 
  { Tclass._module.Map?(_module.Map$Key, _module.Map$Value) } 
  Tag(Tclass._module.Map?(_module.Map$Key, _module.Map$Value))
       == Tagclass._module.Map?
     && TagFamily(Tclass._module.Map?(_module.Map$Key, _module.Map$Value))
       == tytagFamily$Map);

function Tclass._module.Map?_0(Ty) : Ty;

// Tclass._module.Map? injectivity 0
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty :: 
  { Tclass._module.Map?(_module.Map$Key, _module.Map$Value) } 
  Tclass._module.Map?_0(Tclass._module.Map?(_module.Map$Key, _module.Map$Value))
     == _module.Map$Key);

function Tclass._module.Map?_1(Ty) : Ty;

// Tclass._module.Map? injectivity 1
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty :: 
  { Tclass._module.Map?(_module.Map$Key, _module.Map$Value) } 
  Tclass._module.Map?_1(Tclass._module.Map?(_module.Map$Key, _module.Map$Value))
     == _module.Map$Value);

// Box/unbox axiom for Tclass._module.Map?
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Map?(_module.Map$Key, _module.Map$Value)) } 
  $IsBox(bx, Tclass._module.Map?(_module.Map$Key, _module.Map$Value))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Map?(_module.Map$Key, _module.Map$Value)));

// $Is axiom for class Map
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty, $o: ref :: 
  { $Is($o, Tclass._module.Map?(_module.Map$Key, _module.Map$Value)) } 
  $Is($o, Tclass._module.Map?(_module.Map$Key, _module.Map$Value))
     <==> $o == null
       || dtype($o) == Tclass._module.Map?(_module.Map$Key, _module.Map$Value));

// $IsAlloc axiom for class Map
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Map?(_module.Map$Key, _module.Map$Value), $h) } 
  $IsAlloc($o, Tclass._module.Map?(_module.Map$Key, _module.Map$Value), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Map.M: Field
uses {
axiom FDim(_module.Map.M) == 0
   && FieldOfDecl(class._module.Map?, field$M) == _module.Map.M
   && $IsGhostField(_module.Map.M);
}

// Map.M: Type axiom
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Map.M)): Map, Tclass._module.Map?(_module.Map$Key, _module.Map$Value) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Map?(_module.Map$Key, _module.Map$Value)
     ==> $Is($Unbox(read($h, $o, _module.Map.M)): Map, 
      TMap(_module.Map$Key, _module.Map$Value)));

// Map.M: Allocation axiom
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Map.M)): Map, Tclass._module.Map?(_module.Map$Key, _module.Map$Value) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Map?(_module.Map$Key, _module.Map$Value)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Map.M)): Map, 
      TMap(_module.Map$Key, _module.Map$Value), 
      $h));

const _module.Map.Repr: Field
uses {
axiom FDim(_module.Map.Repr) == 0
   && FieldOfDecl(class._module.Map?, field$Repr) == _module.Map.Repr
   && $IsGhostField(_module.Map.Repr);
}

// Map.Repr: Type axiom
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Map.Repr)): Set, Tclass._module.Map?(_module.Map$Key, _module.Map$Value) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Map?(_module.Map$Key, _module.Map$Value)
     ==> $Is($Unbox(read($h, $o, _module.Map.Repr)): Set, TSet(Tclass._System.object())));

// Map.Repr: Allocation axiom
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Map.Repr)): Set, Tclass._module.Map?(_module.Map$Key, _module.Map$Value) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Map?(_module.Map$Key, _module.Map$Value)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Map.Repr)): Set, TSet(Tclass._System.object()), $h));

const _module.Map.head: Field
uses {
axiom FDim(_module.Map.head) == 0
   && FieldOfDecl(class._module.Map?, field$head) == _module.Map.head
   && !$IsGhostField(_module.Map.head);
}

function Tclass._module.Node?(Ty, Ty) : Ty;

const unique Tagclass._module.Node?: TyTag;

// Tclass._module.Node? Tag
axiom (forall _module.Node$Key: Ty, _module.Node$Value: Ty :: 
  { Tclass._module.Node?(_module.Node$Key, _module.Node$Value) } 
  Tag(Tclass._module.Node?(_module.Node$Key, _module.Node$Value))
       == Tagclass._module.Node?
     && TagFamily(Tclass._module.Node?(_module.Node$Key, _module.Node$Value))
       == tytagFamily$Node);

function Tclass._module.Node?_0(Ty) : Ty;

// Tclass._module.Node? injectivity 0
axiom (forall _module.Node$Key: Ty, _module.Node$Value: Ty :: 
  { Tclass._module.Node?(_module.Node$Key, _module.Node$Value) } 
  Tclass._module.Node?_0(Tclass._module.Node?(_module.Node$Key, _module.Node$Value))
     == _module.Node$Key);

function Tclass._module.Node?_1(Ty) : Ty;

// Tclass._module.Node? injectivity 1
axiom (forall _module.Node$Key: Ty, _module.Node$Value: Ty :: 
  { Tclass._module.Node?(_module.Node$Key, _module.Node$Value) } 
  Tclass._module.Node?_1(Tclass._module.Node?(_module.Node$Key, _module.Node$Value))
     == _module.Node$Value);

// Box/unbox axiom for Tclass._module.Node?
axiom (forall _module.Node$Key: Ty, _module.Node$Value: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Node?(_module.Node$Key, _module.Node$Value)) } 
  $IsBox(bx, Tclass._module.Node?(_module.Node$Key, _module.Node$Value))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Node?(_module.Node$Key, _module.Node$Value)));

// Map.head: Type axiom
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Map.head)): ref, Tclass._module.Map?(_module.Map$Key, _module.Map$Value) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Map?(_module.Map$Key, _module.Map$Value)
     ==> $Is($Unbox(read($h, $o, _module.Map.head)): ref, 
      Tclass._module.Node?(_module.Map$Key, _module.Map$Value)));

// Map.head: Allocation axiom
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Map.head)): ref, Tclass._module.Map?(_module.Map$Key, _module.Map$Value) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Map?(_module.Map$Key, _module.Map$Value)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Map.head)): ref, 
      Tclass._module.Node?(_module.Map$Key, _module.Map$Value), 
      $h));

const _module.Map.Spine: Field
uses {
axiom FDim(_module.Map.Spine) == 0
   && FieldOfDecl(class._module.Map?, field$Spine) == _module.Map.Spine
   && $IsGhostField(_module.Map.Spine);
}

function Tclass._module.Node(Ty, Ty) : Ty;

const unique Tagclass._module.Node: TyTag;

// Tclass._module.Node Tag
axiom (forall _module.Node$Key: Ty, _module.Node$Value: Ty :: 
  { Tclass._module.Node(_module.Node$Key, _module.Node$Value) } 
  Tag(Tclass._module.Node(_module.Node$Key, _module.Node$Value))
       == Tagclass._module.Node
     && TagFamily(Tclass._module.Node(_module.Node$Key, _module.Node$Value))
       == tytagFamily$Node);

function Tclass._module.Node_0(Ty) : Ty;

// Tclass._module.Node injectivity 0
axiom (forall _module.Node$Key: Ty, _module.Node$Value: Ty :: 
  { Tclass._module.Node(_module.Node$Key, _module.Node$Value) } 
  Tclass._module.Node_0(Tclass._module.Node(_module.Node$Key, _module.Node$Value))
     == _module.Node$Key);

function Tclass._module.Node_1(Ty) : Ty;

// Tclass._module.Node injectivity 1
axiom (forall _module.Node$Key: Ty, _module.Node$Value: Ty :: 
  { Tclass._module.Node(_module.Node$Key, _module.Node$Value) } 
  Tclass._module.Node_1(Tclass._module.Node(_module.Node$Key, _module.Node$Value))
     == _module.Node$Value);

// Box/unbox axiom for Tclass._module.Node
axiom (forall _module.Node$Key: Ty, _module.Node$Value: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Node(_module.Node$Key, _module.Node$Value)) } 
  $IsBox(bx, Tclass._module.Node(_module.Node$Key, _module.Node$Value))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Node(_module.Node$Key, _module.Node$Value)));

// Map.Spine: Type axiom
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Map.Spine)): Set, Tclass._module.Map?(_module.Map$Key, _module.Map$Value) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Map?(_module.Map$Key, _module.Map$Value)
     ==> $Is($Unbox(read($h, $o, _module.Map.Spine)): Set, 
      TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value))));

// Map.Spine: Allocation axiom
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Map.Spine)): Set, Tclass._module.Map?(_module.Map$Key, _module.Map$Value) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Map?(_module.Map$Key, _module.Map$Value)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Map.Spine)): Set, 
      TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), 
      $h));

// function declaration for _module.Map.Valid
function _module.Map.Valid(_module.Map$Key: Ty, _module.Map$Value: Ty, $heap: Heap, this: ref) : bool
uses {
// consequence axiom for _module.Map.Valid
axiom 2 <= $FunctionContextHeight
   ==> (forall _module.Map$Key: Ty, _module.Map$Value: Ty, $Heap: Heap, this: ref :: 
    { _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this) } 
    _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
           && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap))
       ==> 
      _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       ==> Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this)));
// definition axiom for _module.Map.Valid (revealed)
axiom {:id "id0"} 2 <= $FunctionContextHeight
   ==> (forall _module.Map$Key: Ty, _module.Map$Value: Ty, $Heap: Heap, this: ref :: 
    { _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this), $IsGoodHeap($Heap) } 
    _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
           && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap))
       ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this))
           ==> 
          Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.Repr)): Set)
           ==> _module.Map.SpineValid#canCall(_module.Map$Key, 
            _module.Map$Value, 
            $Heap, 
            $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.head)): ref))
         && _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this))
             && Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
              $Unbox(read($Heap, this, _module.Map.Repr)): Set)
             && _module.Map.SpineValid(_module.Map$Key, 
              _module.Map$Value, 
              $LS($LZ), 
              $Heap, 
              $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
              $Unbox(read($Heap, this, _module.Map.head)): ref)
             && (forall k#0: Box :: 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#0) } 
              $IsBox(k#0, _module.Map$Key)
                 ==> 
                Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#0)
                 ==> (exists n#0: ref :: 
                  { read($Heap, n#0, _module.Node.key) } 
                    { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0)) } 
                  $Is(n#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                     && 
                    Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0))
                     && read($Heap, n#0, _module.Node.key) == k#0))
             && (forall n#1: ref :: 
              { read($Heap, n#1, _module.Node.val) } 
                { read($Heap, n#1, _module.Node.key) } 
                { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1)) } 
              $Is(n#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                 ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1))
                     ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
                      read($Heap, n#1, _module.Node.key)))
                   && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1))
                     ==> read($Heap, n#1, _module.Node.val)
                       == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#1, _module.Node.key)]))
             && (forall n#2: ref, n'#0: ref :: 
              { read($Heap, n'#0, _module.Node.key), read($Heap, n#2, _module.Node.key) } 
                { read($Heap, n'#0, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2)) } 
                { read($Heap, n#2, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0)) } 
                { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2)) } 
              $Is(n#2, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                   && $Is(n'#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                 ==> 
                Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2))
                   && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0))
                   && n#2 != n'#0
                 ==> read($Heap, n#2, _module.Node.key) != read($Heap, n'#0, _module.Node.key))
             && (forall n#3: ref :: 
              { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
                { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#3)) } 
              $Is(n#3, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                 ==> 
                Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#3))
                 ==> $Unbox(read($Heap, n#3, _module.Node.next)): ref
                   != $Unbox(read($Heap, this, _module.Map.head)): ref)
             && (forall n#4: ref, n'#1: ref :: 
              { $Unbox(read($Heap, n'#1, _module.Node.next)): ref, $Unbox(read($Heap, n#4, _module.Node.next)): ref } 
                { $Unbox(read($Heap, n'#1, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4)) } 
                { $Unbox(read($Heap, n#4, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1)) } 
                { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4)) } 
              $Is(n#4, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                   && $Is(n'#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                 ==> 
                Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4))
                   && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1))
                   && $Unbox(read($Heap, n#4, _module.Node.next)): ref
                     == $Unbox(read($Heap, n'#1, _module.Node.next)): ref
                 ==> n#4 == n'#1)));
}

function _module.Map.Valid#canCall(_module.Map$Key: Ty, _module.Map$Value: Ty, $heap: Heap, this: ref) : bool;

function Tclass._module.Map(Ty, Ty) : Ty;

const unique Tagclass._module.Map: TyTag;

// Tclass._module.Map Tag
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty :: 
  { Tclass._module.Map(_module.Map$Key, _module.Map$Value) } 
  Tag(Tclass._module.Map(_module.Map$Key, _module.Map$Value))
       == Tagclass._module.Map
     && TagFamily(Tclass._module.Map(_module.Map$Key, _module.Map$Value))
       == tytagFamily$Map);

function Tclass._module.Map_0(Ty) : Ty;

// Tclass._module.Map injectivity 0
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty :: 
  { Tclass._module.Map(_module.Map$Key, _module.Map$Value) } 
  Tclass._module.Map_0(Tclass._module.Map(_module.Map$Key, _module.Map$Value))
     == _module.Map$Key);

function Tclass._module.Map_1(Ty) : Ty;

// Tclass._module.Map injectivity 1
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty :: 
  { Tclass._module.Map(_module.Map$Key, _module.Map$Value) } 
  Tclass._module.Map_1(Tclass._module.Map(_module.Map$Key, _module.Map$Value))
     == _module.Map$Value);

// Box/unbox axiom for Tclass._module.Map
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Map(_module.Map$Key, _module.Map$Value)) } 
  $IsBox(bx, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Map(_module.Map$Key, _module.Map$Value)));

// frame axiom for _module.Map.Valid
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Map.Valid(_module.Map$Key, _module.Map$Value, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.Map.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $h0, this)
       == _module.Map.Valid(_module.Map$Key, _module.Map$Value, $h1, this));

function _module.Map.Valid#requires(Ty, Ty, Heap, ref) : bool;

// #requires axiom for _module.Map.Valid
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty, $Heap: Heap, this: ref :: 
  { _module.Map.Valid#requires(_module.Map$Key, _module.Map$Value, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
       && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap)
     ==> _module.Map.Valid#requires(_module.Map$Key, _module.Map$Value, $Heap, this)
       == true);

procedure {:verboseName "Map.Valid (well-formedness)"} CheckWellformed$$_module.Map.Valid(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id1"} _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.Valid (well-formedness)"} CheckWellformed$$_module.Map.Valid(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var ##spine#0: Set;
  var ##n#0: ref;
  var k#1: Box;
  var n#5: ref;
  var n#6: ref;
  var n#8: ref;
  var n'#2: ref;
  var n#10: ref;
  var n#12: ref;
  var n'#4: ref;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;
  var b$reqreads#8: bool;
  var b$reqreads#9: bool;
  var b$reqreads#10: bool;
  var b$reqreads#11: bool;
  var b$reqreads#12: bool;
  var b$reqreads#13: bool;
  var b$reqreads#14: bool;
  var b$reqreads#15: bool;
  var b$reqreads#16: bool;
  var b$reqreads#17: bool;
  var b$reqreads#18: bool;
  var b$reqreads#19: bool;
  var b$reqreads#20: bool;
  var b$reqreads#21: bool;
  var b$reqreads#22: bool;
  var b$reqreads#23: bool;
  var b$reqreads#24: bool;
  var b$reqreads#25: bool;
  var b$reqreads#26: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;
    b$reqreads#7 := true;
    b$reqreads#8 := true;
    b$reqreads#9 := true;
    b$reqreads#10 := true;
    b$reqreads#11 := true;
    b$reqreads#12 := true;
    b$reqreads#13 := true;
    b$reqreads#14 := true;
    b$reqreads#15 := true;
    b$reqreads#16 := true;
    b$reqreads#17 := true;
    b$reqreads#18 := true;
    b$reqreads#19 := true;
    b$reqreads#20 := true;
    b$reqreads#21 := true;
    b$reqreads#22 := true;
    b$reqreads#23 := true;
    b$reqreads#24 := true;
    b$reqreads#25 := true;
    b$reqreads#26 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.Map.Repr];
    assert {:id "id2"} b$reqreads#0;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Map?(_module.Map$Key, _module.Map$Value), $Heap);
            assert {:id "id3"} this == this
               || (Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Map.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.Map.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))))
                 && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Map.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.Map.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this)))));
            assume this == this
               || _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
            assume {:id "id4"} _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this);
            assume {:id "id5"} Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this));
        }
        else
        {
            assume {:id "id6"} _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this));
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#1 := $_ReadsFrame[this, _module.Map.Repr];
        if (Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this)))
        {
            b$reqreads#2 := $_ReadsFrame[this, _module.Map.Spine];
            b$reqreads#3 := $_ReadsFrame[this, _module.Map.Repr];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this))
           && Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.Repr)): Set))
        {
            b$reqreads#4 := $_ReadsFrame[this, _module.Map.Spine];
            ##spine#0 := $Unbox(read($Heap, this, _module.Map.Spine)): Set;
            // assume allocatedness for argument to function
            assume $IsAlloc(##spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), $Heap);
            b$reqreads#5 := $_ReadsFrame[this, _module.Map.head];
            ##n#0 := $Unbox(read($Heap, this, _module.Map.head)): ref;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap);
            b$reqreads#6 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(##spine#0, $Box($o))
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.Map.SpineValid#canCall(_module.Map$Key, 
              _module.Map$Value, 
              $Heap, 
              $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
              $Unbox(read($Heap, this, _module.Map.head)): ref);
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this))
           && Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.Repr)): Set)
           && _module.Map.SpineValid(_module.Map$Key, 
            _module.Map$Value, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.head)): ref))
        {
            // Begin Comprehension WF check
            havoc k#1;
            if ($IsBox(k#1, _module.Map$Key) && $IsAllocBox(k#1, _module.Map$Key, $Heap))
            {
                b$reqreads#7 := $_ReadsFrame[this, _module.Map.M];
                if (Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#1))
                {
                    // Begin Comprehension WF check
                    havoc n#5;
                    if ($Is(n#5, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                       && $IsAlloc(n#5, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap))
                    {
                        b$reqreads#8 := $_ReadsFrame[this, _module.Map.Spine];
                        if (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#5)))
                        {
                            assert {:id "id7"} n#5 != null;
                            b$reqreads#9 := $_ReadsFrame[n#5, _module.Node.key];
                        }
                    }

                    // End Comprehension WF check
                }
            }

            // End Comprehension WF check
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this))
           && Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.Repr)): Set)
           && _module.Map.SpineValid(_module.Map$Key, 
            _module.Map$Value, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.head)): ref)
           && (forall k#2: Box :: 
            { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#2) } 
            $IsBox(k#2, _module.Map$Key)
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#2)
               ==> (exists n#7: ref :: 
                { read($Heap, n#7, _module.Node.key) } 
                  { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7)) } 
                $Is(n#7, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                   && 
                  Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7))
                   && read($Heap, n#7, _module.Node.key) == k#2)))
        {
            // Begin Comprehension WF check
            havoc n#6;
            if ($Is(n#6, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               && $IsAlloc(n#6, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap))
            {
                b$reqreads#10 := $_ReadsFrame[this, _module.Map.Spine];
                if (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#6)))
                {
                    assert {:id "id8"} n#6 != null;
                    b$reqreads#11 := $_ReadsFrame[n#6, _module.Node.key];
                    b$reqreads#12 := $_ReadsFrame[this, _module.Map.M];
                    if (Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
                      read($Heap, n#6, _module.Node.key)))
                    {
                        assert {:id "id9"} n#6 != null;
                        b$reqreads#13 := $_ReadsFrame[n#6, _module.Node.val];
                        b$reqreads#14 := $_ReadsFrame[this, _module.Map.M];
                        assert {:id "id10"} n#6 != null;
                        b$reqreads#15 := $_ReadsFrame[n#6, _module.Node.key];
                        assert {:id "id11"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
                          read($Heap, n#6, _module.Node.key));
                    }
                }
            }

            // End Comprehension WF check
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this))
           && Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.Repr)): Set)
           && _module.Map.SpineValid(_module.Map$Key, 
            _module.Map$Value, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.head)): ref)
           && (forall k#2: Box :: 
            { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#2) } 
            $IsBox(k#2, _module.Map$Key)
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#2)
               ==> (exists n#7: ref :: 
                { read($Heap, n#7, _module.Node.key) } 
                  { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7)) } 
                $Is(n#7, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                   && 
                  Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7))
                   && read($Heap, n#7, _module.Node.key) == k#2))
           && (forall n#9: ref :: 
            { read($Heap, n#9, _module.Node.val) } 
              { read($Heap, n#9, _module.Node.key) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9)) } 
            $Is(n#9, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9))
                   ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
                    read($Heap, n#9, _module.Node.key)))
                 && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9))
                   ==> read($Heap, n#9, _module.Node.val)
                     == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#9, _module.Node.key)])))
        {
            // Begin Comprehension WF check
            havoc n#8;
            havoc n'#2;
            if ($Is(n#8, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               && $IsAlloc(n#8, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap)
               && 
              $Is(n'#2, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               && $IsAlloc(n'#2, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap))
            {
                b$reqreads#16 := $_ReadsFrame[this, _module.Map.Spine];
                if (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#8)))
                {
                    b$reqreads#17 := $_ReadsFrame[this, _module.Map.Spine];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#8))
                   && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2)))
                {
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#8))
                   && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2))
                   && n#8 != n'#2)
                {
                    assert {:id "id12"} n#8 != null;
                    b$reqreads#18 := $_ReadsFrame[n#8, _module.Node.key];
                    assert {:id "id13"} n'#2 != null;
                    b$reqreads#19 := $_ReadsFrame[n'#2, _module.Node.key];
                }
            }

            // End Comprehension WF check
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this))
           && Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.Repr)): Set)
           && _module.Map.SpineValid(_module.Map$Key, 
            _module.Map$Value, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.head)): ref)
           && (forall k#2: Box :: 
            { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#2) } 
            $IsBox(k#2, _module.Map$Key)
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#2)
               ==> (exists n#7: ref :: 
                { read($Heap, n#7, _module.Node.key) } 
                  { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7)) } 
                $Is(n#7, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                   && 
                  Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7))
                   && read($Heap, n#7, _module.Node.key) == k#2))
           && (forall n#9: ref :: 
            { read($Heap, n#9, _module.Node.val) } 
              { read($Heap, n#9, _module.Node.key) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9)) } 
            $Is(n#9, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9))
                   ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
                    read($Heap, n#9, _module.Node.key)))
                 && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9))
                   ==> read($Heap, n#9, _module.Node.val)
                     == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#9, _module.Node.key)]))
           && (forall n#11: ref, n'#3: ref :: 
            { read($Heap, n'#3, _module.Node.key), read($Heap, n#11, _module.Node.key) } 
              { read($Heap, n'#3, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#11)) } 
              { read($Heap, n#11, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3)) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#11)) } 
            $Is(n#11, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                 && $Is(n'#3, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               ==> 
              Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#11))
                 && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3))
                 && n#11 != n'#3
               ==> read($Heap, n#11, _module.Node.key) != read($Heap, n'#3, _module.Node.key)))
        {
            // Begin Comprehension WF check
            havoc n#10;
            if ($Is(n#10, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               && $IsAlloc(n#10, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap))
            {
                b$reqreads#20 := $_ReadsFrame[this, _module.Map.Spine];
                if (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#10)))
                {
                    assert {:id "id14"} n#10 != null;
                    b$reqreads#21 := $_ReadsFrame[n#10, _module.Node.next];
                    b$reqreads#22 := $_ReadsFrame[this, _module.Map.head];
                }
            }

            // End Comprehension WF check
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this))
           && Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.Repr)): Set)
           && _module.Map.SpineValid(_module.Map$Key, 
            _module.Map$Value, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.head)): ref)
           && (forall k#2: Box :: 
            { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#2) } 
            $IsBox(k#2, _module.Map$Key)
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#2)
               ==> (exists n#7: ref :: 
                { read($Heap, n#7, _module.Node.key) } 
                  { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7)) } 
                $Is(n#7, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                   && 
                  Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7))
                   && read($Heap, n#7, _module.Node.key) == k#2))
           && (forall n#9: ref :: 
            { read($Heap, n#9, _module.Node.val) } 
              { read($Heap, n#9, _module.Node.key) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9)) } 
            $Is(n#9, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9))
                   ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
                    read($Heap, n#9, _module.Node.key)))
                 && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9))
                   ==> read($Heap, n#9, _module.Node.val)
                     == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#9, _module.Node.key)]))
           && (forall n#11: ref, n'#3: ref :: 
            { read($Heap, n'#3, _module.Node.key), read($Heap, n#11, _module.Node.key) } 
              { read($Heap, n'#3, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#11)) } 
              { read($Heap, n#11, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3)) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#11)) } 
            $Is(n#11, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                 && $Is(n'#3, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               ==> 
              Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#11))
                 && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3))
                 && n#11 != n'#3
               ==> read($Heap, n#11, _module.Node.key) != read($Heap, n'#3, _module.Node.key))
           && (forall n#13: ref :: 
            { $Unbox(read($Heap, n#13, _module.Node.next)): ref } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#13)) } 
            $Is(n#13, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               ==> 
              Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#13))
               ==> $Unbox(read($Heap, n#13, _module.Node.next)): ref
                 != $Unbox(read($Heap, this, _module.Map.head)): ref))
        {
            // Begin Comprehension WF check
            havoc n#12;
            havoc n'#4;
            if ($Is(n#12, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               && $IsAlloc(n#12, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap)
               && 
              $Is(n'#4, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               && $IsAlloc(n'#4, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap))
            {
                b$reqreads#23 := $_ReadsFrame[this, _module.Map.Spine];
                if (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#12)))
                {
                    b$reqreads#24 := $_ReadsFrame[this, _module.Map.Spine];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#12))
                   && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#4)))
                {
                    assert {:id "id15"} n#12 != null;
                    b$reqreads#25 := $_ReadsFrame[n#12, _module.Node.next];
                    assert {:id "id16"} n'#4 != null;
                    b$reqreads#26 := $_ReadsFrame[n'#4, _module.Node.next];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#12))
                   && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#4))
                   && $Unbox(read($Heap, n#12, _module.Node.next)): ref
                     == $Unbox(read($Heap, n'#4, _module.Node.next)): ref)
                {
                }
            }

            // End Comprehension WF check
        }

        assume {:id "id17"} _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this))
             && Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
              $Unbox(read($Heap, this, _module.Map.Repr)): Set)
             && _module.Map.SpineValid(_module.Map$Key, 
              _module.Map$Value, 
              $LS($LZ), 
              $Heap, 
              $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
              $Unbox(read($Heap, this, _module.Map.head)): ref)
             && (forall k#2: Box :: 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#2) } 
              $IsBox(k#2, _module.Map$Key)
                 ==> 
                Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#2)
                 ==> (exists n#7: ref :: 
                  { read($Heap, n#7, _module.Node.key) } 
                    { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7)) } 
                  $Is(n#7, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                     && 
                    Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7))
                     && read($Heap, n#7, _module.Node.key) == k#2))
             && (forall n#9: ref :: 
              { read($Heap, n#9, _module.Node.val) } 
                { read($Heap, n#9, _module.Node.key) } 
                { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9)) } 
              $Is(n#9, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                 ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9))
                     ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
                      read($Heap, n#9, _module.Node.key)))
                   && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9))
                     ==> read($Heap, n#9, _module.Node.val)
                       == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#9, _module.Node.key)]))
             && (forall n#11: ref, n'#3: ref :: 
              { read($Heap, n'#3, _module.Node.key), read($Heap, n#11, _module.Node.key) } 
                { read($Heap, n'#3, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#11)) } 
                { read($Heap, n#11, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3)) } 
                { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#11)) } 
              $Is(n#11, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                   && $Is(n'#3, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                 ==> 
                Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#11))
                   && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3))
                   && n#11 != n'#3
                 ==> read($Heap, n#11, _module.Node.key) != read($Heap, n'#3, _module.Node.key))
             && (forall n#13: ref :: 
              { $Unbox(read($Heap, n#13, _module.Node.next)): ref } 
                { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#13)) } 
              $Is(n#13, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                 ==> 
                Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#13))
                 ==> $Unbox(read($Heap, n#13, _module.Node.next)): ref
                   != $Unbox(read($Heap, this, _module.Map.head)): ref)
             && (forall n#14: ref, n'#5: ref :: 
              { $Unbox(read($Heap, n'#5, _module.Node.next)): ref, $Unbox(read($Heap, n#14, _module.Node.next)): ref } 
                { $Unbox(read($Heap, n'#5, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#14)) } 
                { $Unbox(read($Heap, n#14, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#5)) } 
                { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#5)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#14)) } 
              $Is(n#14, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                   && $Is(n'#5, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                 ==> 
                Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#14))
                   && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#5))
                   && $Unbox(read($Heap, n#14, _module.Node.next)): ref
                     == $Unbox(read($Heap, n'#5, _module.Node.next)): ref
                 ==> n#14 == n'#5));
        assume Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this))
           ==> 
          Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.Repr)): Set)
           ==> _module.Map.SpineValid#canCall(_module.Map$Key, 
            _module.Map$Value, 
            $Heap, 
            $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.head)): ref);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this), TBool);
        assert {:id "id18"} b$reqreads#1;
        assert {:id "id19"} b$reqreads#2;
        assert {:id "id20"} b$reqreads#3;
        assert {:id "id21"} b$reqreads#4;
        assert {:id "id22"} b$reqreads#5;
        assert {:id "id23"} b$reqreads#6;
        assert {:id "id24"} b$reqreads#7;
        assert {:id "id25"} b$reqreads#8;
        assert {:id "id26"} b$reqreads#9;
        assert {:id "id27"} b$reqreads#10;
        assert {:id "id28"} b$reqreads#11;
        assert {:id "id29"} b$reqreads#12;
        assert {:id "id30"} b$reqreads#13;
        assert {:id "id31"} b$reqreads#14;
        assert {:id "id32"} b$reqreads#15;
        assert {:id "id33"} b$reqreads#16;
        assert {:id "id34"} b$reqreads#17;
        assert {:id "id35"} b$reqreads#18;
        assert {:id "id36"} b$reqreads#19;
        assert {:id "id37"} b$reqreads#20;
        assert {:id "id38"} b$reqreads#21;
        assert {:id "id39"} b$reqreads#22;
        assert {:id "id40"} b$reqreads#23;
        assert {:id "id41"} b$reqreads#24;
        assert {:id "id42"} b$reqreads#25;
        assert {:id "id43"} b$reqreads#26;
        return;

        assume false;
    }
}



// function declaration for _module.Map.SpineValid
function _module.Map.SpineValid(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    $ly: LayerType, 
    $heap: Heap, 
    spine#0: Set, 
    n#0: ref)
   : bool
uses {
// definition axiom for _module.Map.SpineValid (revealed)
axiom {:id "id44"} 1 <= $FunctionContextHeight
   ==> (forall _module.Map$Key: Ty, 
      _module.Map$Value: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      spine#0: Set, 
      n#0: ref :: 
    { _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($ly), $Heap, spine#0, n#0), $IsGoodHeap($Heap) } 
    _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, n#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)))
           && $Is(n#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value)))
       ==> (!(n#0 == null && Set#Equal(spine#0, Set#Empty(): Set))
           ==> 
          n#0 != null
           ==> 
          Set#IsMember(spine#0, $Box(n#0))
           ==> 
          Set#Equal($Unbox(read($Heap, n#0, _module.Node.Spine)): Set, 
            Set#Difference(spine#0, Set#UnionOne(Set#Empty(): Set, $Box(n#0))))
           ==> _module.Map.SpineValid#canCall(_module.Map$Key, 
            _module.Map$Value, 
            $Heap, 
            $Unbox(read($Heap, n#0, _module.Node.Spine)): Set, 
            $Unbox(read($Heap, n#0, _module.Node.next)): ref))
         && _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($ly), $Heap, spine#0, n#0)
           == ((n#0 == null && Set#Equal(spine#0, Set#Empty(): Set))
             || (
              n#0 != null
               && Set#IsMember(spine#0, $Box(n#0))
               && Set#Equal($Unbox(read($Heap, n#0, _module.Node.Spine)): Set, 
                Set#Difference(spine#0, Set#UnionOne(Set#Empty(): Set, $Box(n#0))))
               && _module.Map.SpineValid(_module.Map$Key, 
                _module.Map$Value, 
                $ly, 
                $Heap, 
                $Unbox(read($Heap, n#0, _module.Node.Spine)): Set, 
                $Unbox(read($Heap, n#0, _module.Node.next)): ref))));
}

function _module.Map.SpineValid#canCall(_module.Map$Key: Ty, _module.Map$Value: Ty, $heap: Heap, spine#0: Set, n#0: ref)
   : bool;

// layer synonym axiom
axiom (forall _module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    spine#0: Set, 
    n#0: ref :: 
  { _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($ly), $Heap, spine#0, n#0) } 
  _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($ly), $Heap, spine#0, n#0)
     == _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $ly, $Heap, spine#0, n#0));

// fuel synonym axiom
axiom (forall _module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    spine#0: Set, 
    n#0: ref :: 
  { _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, AsFuelBottom($ly), $Heap, spine#0, n#0) } 
  _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $ly, $Heap, spine#0, n#0)
     == _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LZ, $Heap, spine#0, n#0));

// frame axiom for _module.Map.SpineValid
axiom (forall _module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    $ly: LayerType, 
    $h0: Heap, 
    $h1: Heap, 
    spine#0: Set, 
    n#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $ly, $h1, spine#0, n#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, $h0, spine#0, n#0)
         || ($Is(spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)))
           && $Is(n#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(spine#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $ly, $h0, spine#0, n#0)
       == _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $ly, $h1, spine#0, n#0));

function _module.Map.SpineValid#requires(Ty, Ty, LayerType, Heap, Set, ref) : bool;

// #requires axiom for _module.Map.SpineValid
axiom (forall _module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    spine#0: Set, 
    n#0: ref :: 
  { _module.Map.SpineValid#requires(_module.Map$Key, _module.Map$Value, $ly, $Heap, spine#0, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)))
       && $Is(n#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
     ==> _module.Map.SpineValid#requires(_module.Map$Key, _module.Map$Value, $ly, $Heap, spine#0, n#0)
       == true);

procedure {:verboseName "Map.SpineValid (well-formedness)"} CheckWellformed$$_module.Map.SpineValid(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    spine#0: Set
       where $Is(spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value))), 
    n#0: ref
       where $Is(n#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.SpineValid (well-formedness)"} CheckWellformed$$_module.Map.SpineValid(_module.Map$Key: Ty, _module.Map$Value: Ty, spine#0: Set, n#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var ##spine#0: Set;
  var ##n#0: ref;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(spine#0, $Box($o)));
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
        newtype$check#0 := null;
        if (n#0 == null)
        {
        }

        if (!(n#0 == null && Set#Equal(spine#0, Set#Empty(): Set)))
        {
            newtype$check#1 := null;
            if (n#0 != null)
            {
            }

            if (n#0 != null && Set#IsMember(spine#0, $Box(n#0)))
            {
                assert {:id "id45"} n#0 != null;
                b$reqreads#0 := $_ReadsFrame[n#0, _module.Node.Spine];
            }

            if (n#0 != null
               && Set#IsMember(spine#0, $Box(n#0))
               && Set#Equal($Unbox(read($Heap, n#0, _module.Node.Spine)): Set, 
                Set#Difference(spine#0, Set#UnionOne(Set#Empty(): Set, $Box(n#0)))))
            {
                assert {:id "id46"} n#0 != null;
                b$reqreads#1 := $_ReadsFrame[n#0, _module.Node.Spine];
                ##spine#0 := $Unbox(read($Heap, n#0, _module.Node.Spine)): Set;
                // assume allocatedness for argument to function
                assume $IsAlloc(##spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), $Heap);
                assert {:id "id47"} n#0 != null;
                b$reqreads#2 := $_ReadsFrame[n#0, _module.Node.next];
                ##n#0 := $Unbox(read($Heap, n#0, _module.Node.next)): ref;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap);
                b$reqreads#3 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && Set#IsMember(##spine#0, $Box($o))
                     ==> $_ReadsFrame[$o, $f]);
                assert {:id "id48"} (Set#Subset(##spine#0, spine#0) && !Set#Subset(spine#0, ##spine#0))
                   || (Set#Equal(##spine#0, spine#0)
                     && ((Set#Subset(##spine#0, spine#0) && !Set#Subset(spine#0, ##spine#0))
                       || (Set#Equal(##spine#0, spine#0) && ##n#0 == null && n#0 != null)));
                assume _module.Map.SpineValid#canCall(_module.Map$Key, 
                  _module.Map$Value, 
                  $Heap, 
                  $Unbox(read($Heap, n#0, _module.Node.Spine)): Set, 
                  $Unbox(read($Heap, n#0, _module.Node.next)): ref);
            }
        }

        assume {:id "id49"} _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($LZ), $Heap, spine#0, n#0)
           == ((n#0 == null && Set#Equal(spine#0, Set#Empty(): Set))
             || (
              n#0 != null
               && Set#IsMember(spine#0, $Box(n#0))
               && Set#Equal($Unbox(read($Heap, n#0, _module.Node.Spine)): Set, 
                Set#Difference(spine#0, Set#UnionOne(Set#Empty(): Set, $Box(n#0))))
               && _module.Map.SpineValid(_module.Map$Key, 
                _module.Map$Value, 
                $LS($LZ), 
                $Heap, 
                $Unbox(read($Heap, n#0, _module.Node.Spine)): Set, 
                $Unbox(read($Heap, n#0, _module.Node.next)): ref)));
        assume !(n#0 == null && Set#Equal(spine#0, Set#Empty(): Set))
           ==> 
          n#0 != null
           ==> 
          Set#IsMember(spine#0, $Box(n#0))
           ==> 
          Set#Equal($Unbox(read($Heap, n#0, _module.Node.Spine)): Set, 
            Set#Difference(spine#0, Set#UnionOne(Set#Empty(): Set, $Box(n#0))))
           ==> _module.Map.SpineValid#canCall(_module.Map$Key, 
            _module.Map$Value, 
            $Heap, 
            $Unbox(read($Heap, n#0, _module.Node.Spine)): Set, 
            $Unbox(read($Heap, n#0, _module.Node.next)): ref);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($LZ), $Heap, spine#0, n#0), 
          TBool);
        assert {:id "id50"} b$reqreads#0;
        assert {:id "id51"} b$reqreads#1;
        assert {:id "id52"} b$reqreads#2;
        assert {:id "id53"} b$reqreads#3;
        return;

        assume false;
    }
}



// function declaration for _module.Map.SpineValid_One
function _module.Map.SpineValid__One(_module.Map$Key: Ty, _module.Map$Value: Ty, $heap: Heap, spine#0: Set, n#0: ref)
   : bool
uses {
// definition axiom for _module.Map.SpineValid__One (revealed)
axiom {:id "id54"} 1 <= $FunctionContextHeight
   ==> (forall _module.Map$Key: Ty, _module.Map$Value: Ty, $Heap: Heap, spine#0: Set, n#0: ref :: 
    { _module.Map.SpineValid__One(_module.Map$Key, _module.Map$Value, $Heap, spine#0, n#0), $IsGoodHeap($Heap) } 
    _module.Map.SpineValid__One#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, n#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)))
           && $Is(n#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value)))
       ==> _module.Map.SpineValid__One(_module.Map$Key, _module.Map$Value, $Heap, spine#0, n#0)
         == ((n#0 == null && Set#Equal(spine#0, Set#Empty(): Set))
           || (
            n#0 != null
             && Set#IsMember(spine#0, $Box(n#0))
             && Set#Equal($Unbox(read($Heap, n#0, _module.Node.Spine)): Set, 
              Set#Difference(spine#0, Set#UnionOne(Set#Empty(): Set, $Box(n#0)))))));
}

function _module.Map.SpineValid__One#canCall(_module.Map$Key: Ty, _module.Map$Value: Ty, $heap: Heap, spine#0: Set, n#0: ref)
   : bool;

// frame axiom for _module.Map.SpineValid__One
axiom (forall _module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    $h0: Heap, 
    $h1: Heap, 
    spine#0: Set, 
    n#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Map.SpineValid__One(_module.Map$Key, _module.Map$Value, $h1, spine#0, n#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.Map.SpineValid__One#canCall(_module.Map$Key, _module.Map$Value, $h0, spine#0, n#0)
         || ($Is(spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)))
           && $Is(n#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(spine#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Map.SpineValid__One(_module.Map$Key, _module.Map$Value, $h0, spine#0, n#0)
       == _module.Map.SpineValid__One(_module.Map$Key, _module.Map$Value, $h1, spine#0, n#0));

function _module.Map.SpineValid__One#requires(Ty, Ty, Heap, Set, ref) : bool;

// #requires axiom for _module.Map.SpineValid__One
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty, $Heap: Heap, spine#0: Set, n#0: ref :: 
  { _module.Map.SpineValid__One#requires(_module.Map$Key, _module.Map$Value, $Heap, spine#0, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)))
       && $Is(n#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
     ==> _module.Map.SpineValid__One#requires(_module.Map$Key, _module.Map$Value, $Heap, spine#0, n#0)
       == true);

procedure {:verboseName "Map.SpineValid_One (well-formedness)"} CheckWellformed$$_module.Map.SpineValid__One(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    spine#0: Set
       where $Is(spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value))), 
    n#0: ref
       where $Is(n#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.SpineValid_One (well-formedness)"} CheckWellformed$$_module.Map.SpineValid__One(_module.Map$Key: Ty, _module.Map$Value: Ty, spine#0: Set, n#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(spine#0, $Box($o)));
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
        newtype$check#0 := null;
        if (n#0 == null)
        {
        }

        if (!(n#0 == null && Set#Equal(spine#0, Set#Empty(): Set)))
        {
            newtype$check#1 := null;
            if (n#0 != null)
            {
            }

            if (n#0 != null && Set#IsMember(spine#0, $Box(n#0)))
            {
                assert {:id "id55"} n#0 != null;
                b$reqreads#0 := $_ReadsFrame[n#0, _module.Node.Spine];
            }
        }

        assume {:id "id56"} _module.Map.SpineValid__One(_module.Map$Key, _module.Map$Value, $Heap, spine#0, n#0)
           == ((n#0 == null && Set#Equal(spine#0, Set#Empty(): Set))
             || (
              n#0 != null
               && Set#IsMember(spine#0, $Box(n#0))
               && Set#Equal($Unbox(read($Heap, n#0, _module.Node.Spine)): Set, 
                Set#Difference(spine#0, Set#UnionOne(Set#Empty(): Set, $Box(n#0))))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Map.SpineValid__One(_module.Map$Key, _module.Map$Value, $Heap, spine#0, n#0), 
          TBool);
        assert {:id "id57"} b$reqreads#0;
        return;

        assume false;
    }
}



procedure {:verboseName "Map.SpineValidSplit (well-formedness)"} CheckWellFormed$$_module.Map.SpineValidSplit(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    spine#0: Set
       where $Is(spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)))
         && $IsAlloc(spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.SpineValidSplit (well-formedness)"} CheckWellFormed$$_module.Map.SpineValidSplit(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref, spine#0: Set, p#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##spine#0: Set;
  var ##n#0: ref;
  var ##spine#1: Set;
  var ##n#1: ref;
  var n#0: ref;
  var ##spine#2: Set;
  var ##n#2: ref;
  var n#2: ref;
  var newtype$check#0: ref;


    // AddMethodImpl: SpineValidSplit, CheckWellFormed$$_module.Map.SpineValidSplit
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##spine#0 := spine#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), $Heap);
    ##n#0 := p#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap);
    assume _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0);
    assume {:id "id58"} _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($LZ), $Heap, spine#0, p#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##spine#1 := spine#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##spine#1, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), $Heap);
    ##n#1 := p#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap);
    assume _module.Map.SpineValid__One#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0);
    assume {:id "id59"} _module.Map.SpineValid__One(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0);
    havoc n#0;
    assume $Is(n#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
       && $IsAlloc(n#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap);
    if (*)
    {
        assume {:id "id60"} Set#IsMember(spine#0, $Box(n#0));
        assert {:id "id61"} n#0 != null;
        ##spine#2 := $Unbox(read($Heap, n#0, _module.Node.Spine)): Set;
        // assume allocatedness for argument to function
        assume $IsAlloc(##spine#2, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), $Heap);
        assert {:id "id62"} n#0 != null;
        ##n#2 := $Unbox(read($Heap, n#0, _module.Node.next)): ref;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#2, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap);
        assume _module.Map.SpineValid__One#canCall(_module.Map$Key, 
          _module.Map$Value, 
          $Heap, 
          $Unbox(read($Heap, n#0, _module.Node.Spine)): Set, 
          $Unbox(read($Heap, n#0, _module.Node.next)): ref);
        assume {:id "id63"} _module.Map.SpineValid__One(_module.Map$Key, 
          _module.Map$Value, 
          $Heap, 
          $Unbox(read($Heap, n#0, _module.Node.Spine)): Set, 
          $Unbox(read($Heap, n#0, _module.Node.next)): ref);
    }
    else
    {
        assume {:id "id64"} Set#IsMember(spine#0, $Box(n#0))
           ==> _module.Map.SpineValid__One(_module.Map$Key, 
            _module.Map$Value, 
            $Heap, 
            $Unbox(read($Heap, n#0, _module.Node.Spine)): Set, 
            $Unbox(read($Heap, n#0, _module.Node.next)): ref);
    }

    assume {:id "id65"} (forall n#1: ref :: 
      { $Unbox(read($Heap, n#1, _module.Node.next)): ref } 
        { $Unbox(read($Heap, n#1, _module.Node.Spine)): Set } 
        { Set#IsMember(spine#0, $Box(n#1)) } 
      $Is(n#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember(spine#0, $Box(n#1))
         ==> _module.Map.SpineValid__One(_module.Map$Key, 
          _module.Map$Value, 
          $Heap, 
          $Unbox(read($Heap, n#1, _module.Node.Spine)): Set, 
          $Unbox(read($Heap, n#1, _module.Node.next)): ref));
    havoc n#2;
    assume $Is(n#2, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
       && $IsAlloc(n#2, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap);
    if (*)
    {
        assume {:id "id66"} Set#IsMember(spine#0, $Box(n#2));
        if (*)
        {
            assert {:id "id67"} n#2 != null;
            newtype$check#0 := null;
            assume {:id "id68"} $Unbox(read($Heap, n#2, _module.Node.next)): ref == null;
        }
        else
        {
            assume {:id "id69"} $Unbox(read($Heap, n#2, _module.Node.next)): ref != null;
            assert {:id "id70"} n#2 != null;
            assume {:id "id71"} Set#IsMember(spine#0, read($Heap, n#2, _module.Node.next));
        }
    }
    else
    {
        assume {:id "id72"} Set#IsMember(spine#0, $Box(n#2))
           ==> $Unbox(read($Heap, n#2, _module.Node.next)): ref == null
             || Set#IsMember(spine#0, read($Heap, n#2, _module.Node.next));
    }

    assume {:id "id73"} (forall n#3: ref :: 
      { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
      $Is(n#3, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember(spine#0, $Box(n#3))
         ==> $Unbox(read($Heap, n#3, _module.Node.next)): ref == null
           || Set#IsMember(spine#0, read($Heap, n#3, _module.Node.next)));
}



procedure {:verboseName "Map.SpineValidSplit (call)"} Call$$_module.Map.SpineValidSplit(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    spine#0: Set
       where $Is(spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)))
         && $IsAlloc(spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap));
  // user-defined preconditions
  requires {:id "id74"} _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0)
     ==> _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($LZ), $Heap, spine#0, p#0)
       || 
      (p#0 == null && Set#Equal(spine#0, Set#Empty(): Set))
       || (
        p#0 != null
         && Set#IsMember(spine#0, $Box(p#0))
         && Set#Equal($Unbox(read($Heap, p#0, _module.Node.Spine)): Set, 
          Set#Difference(spine#0, Set#UnionOne(Set#Empty(): Set, $Box(p#0))))
         && _module.Map.SpineValid(_module.Map$Key, 
          _module.Map$Value, 
          $LS($LS($LZ)), 
          $Heap, 
          $Unbox(read($Heap, p#0, _module.Node.Spine)): Set, 
          $Unbox(read($Heap, p#0, _module.Node.next)): ref));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Map.SpineValid__One#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0);
  free ensures {:id "id75"} _module.Map.SpineValid__One#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0)
     && 
    _module.Map.SpineValid__One(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0)
     && ((p#0 == null && Set#Equal(spine#0, Set#Empty(): Set))
       || (
        p#0 != null
         && Set#IsMember(spine#0, $Box(p#0))
         && Set#Equal($Unbox(read($Heap, p#0, _module.Node.Spine)): Set, 
          Set#Difference(spine#0, Set#UnionOne(Set#Empty(): Set, $Box(p#0))))));
  free ensures (forall n#1: ref :: 
    { $Unbox(read($Heap, n#1, _module.Node.next)): ref } 
      { $Unbox(read($Heap, n#1, _module.Node.Spine)): Set } 
      { Set#IsMember(spine#0, $Box(n#1)) } 
    $Is(n#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
       ==> 
      Set#IsMember(spine#0, $Box(n#1))
       ==> _module.Map.SpineValid__One#canCall(_module.Map$Key, 
        _module.Map$Value, 
        $Heap, 
        $Unbox(read($Heap, n#1, _module.Node.Spine)): Set, 
        $Unbox(read($Heap, n#1, _module.Node.next)): ref));
  ensures {:id "id76"} (forall n#1: ref :: 
    { $Unbox(read($Heap, n#1, _module.Node.next)): ref } 
      { $Unbox(read($Heap, n#1, _module.Node.Spine)): Set } 
      { Set#IsMember(spine#0, $Box(n#1)) } 
    $Is(n#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
       ==> 
      Set#IsMember(spine#0, $Box(n#1))
       ==> _module.Map.SpineValid__One(_module.Map$Key, 
        _module.Map$Value, 
        $Heap, 
        $Unbox(read($Heap, n#1, _module.Node.Spine)): Set, 
        $Unbox(read($Heap, n#1, _module.Node.next)): ref));
  free ensures true;
  ensures {:id "id77"} (forall n#3: ref :: 
    { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
    $Is(n#3, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
       ==> 
      Set#IsMember(spine#0, $Box(n#3))
       ==> $Unbox(read($Heap, n#3, _module.Node.next)): ref == null
         || Set#IsMember(spine#0, read($Heap, n#3, _module.Node.next)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Map.SpineValidSplit (correctness)"} Impl$$_module.Map.SpineValidSplit(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    spine#0: Set
       where $Is(spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)))
         && $IsAlloc(spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id78"} _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0)
     && 
    _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($LZ), $Heap, spine#0, p#0)
     && ((p#0 == null && Set#Equal(spine#0, Set#Empty(): Set))
       || (
        p#0 != null
         && Set#IsMember(spine#0, $Box(p#0))
         && Set#Equal($Unbox(read($Heap, p#0, _module.Node.Spine)): Set, 
          Set#Difference(spine#0, Set#UnionOne(Set#Empty(): Set, $Box(p#0))))
         && _module.Map.SpineValid(_module.Map$Key, 
          _module.Map$Value, 
          $LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, p#0, _module.Node.Spine)): Set, 
          $Unbox(read($Heap, p#0, _module.Node.next)): ref)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Map.SpineValid__One#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0);
  ensures {:id "id79"} _module.Map.SpineValid__One#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0)
     ==> _module.Map.SpineValid__One(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0)
       || 
      (p#0 == null && Set#Equal(spine#0, Set#Empty(): Set))
       || (
        p#0 != null
         && Set#IsMember(spine#0, $Box(p#0))
         && Set#Equal($Unbox(read($Heap, p#0, _module.Node.Spine)): Set, 
          Set#Difference(spine#0, Set#UnionOne(Set#Empty(): Set, $Box(p#0)))));
  free ensures (forall n#1: ref :: 
    { $Unbox(read($Heap, n#1, _module.Node.next)): ref } 
      { $Unbox(read($Heap, n#1, _module.Node.Spine)): Set } 
      { Set#IsMember(spine#0, $Box(n#1)) } 
    $Is(n#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
       ==> 
      Set#IsMember(spine#0, $Box(n#1))
       ==> _module.Map.SpineValid__One#canCall(_module.Map$Key, 
        _module.Map$Value, 
        $Heap, 
        $Unbox(read($Heap, n#1, _module.Node.Spine)): Set, 
        $Unbox(read($Heap, n#1, _module.Node.next)): ref));
  ensures {:id "id80"} (forall n#1: ref :: 
    { $Unbox(read($Heap, n#1, _module.Node.next)): ref } 
      { $Unbox(read($Heap, n#1, _module.Node.Spine)): Set } 
      { Set#IsMember(spine#0, $Box(n#1)) } 
    $Is(n#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
       ==> 
      Set#IsMember(spine#0, $Box(n#1))
       ==> _module.Map.SpineValid__One(_module.Map$Key, 
        _module.Map$Value, 
        $Heap, 
        $Unbox(read($Heap, n#1, _module.Node.Spine)): Set, 
        $Unbox(read($Heap, n#1, _module.Node.next)): ref));
  free ensures true;
  ensures {:id "id81"} (forall n#3: ref :: 
    { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
    $Is(n#3, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
       ==> 
      Set#IsMember(spine#0, $Box(n#3))
       ==> $Unbox(read($Heap, n#3, _module.Node.next)): ref == null
         || Set#IsMember(spine#0, read($Heap, n#3, _module.Node.next)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.SpineValidSplit (correctness)"} Impl$$_module.Map.SpineValidSplit(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref, spine#0: Set, p#0: ref)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: SpineValidSplit, Impl$$_module.Map.SpineValidSplit
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#spine0#0: Set, $ih#p0#0: ref :: 
      { _module.Map.SpineValid__One(_module.Map$Key, _module.Map$Value, $Heap, $ih#spine0#0, $ih#p0#0) } 
        { _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($LZ), $Heap, $ih#spine0#0, $ih#p0#0) } 
      $Is($ih#spine0#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)))
           && $Is($ih#p0#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
           && _module.Map.SpineValid(_module.Map$Key, 
            _module.Map$Value, 
            $LS($LZ), 
            $initHeapForallStmt#0, 
            $ih#spine0#0, 
            $ih#p0#0)
           && ((Set#Subset($ih#spine0#0, spine#0) && !Set#Subset(spine#0, $ih#spine0#0))
             || (Set#Equal($ih#spine0#0, spine#0) && $ih#p0#0 == null && p#0 != null))
         ==> _module.Map.SpineValid__One(_module.Map$Key, _module.Map$Value, $Heap, $ih#spine0#0, $ih#p0#0)
           && (forall n#4: ref :: 
            { $Unbox(read($Heap, n#4, _module.Node.next)): ref } 
              { $Unbox(read($Heap, n#4, _module.Node.Spine)): Set } 
              { Set#IsMember($ih#spine0#0, $Box(n#4)) } 
            $Is(n#4, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               ==> 
              Set#IsMember($ih#spine0#0, $Box(n#4))
               ==> _module.Map.SpineValid__One(_module.Map$Key, 
                _module.Map$Value, 
                $Heap, 
                $Unbox(read($Heap, n#4, _module.Node.Spine)): Set, 
                $Unbox(read($Heap, n#4, _module.Node.next)): ref))
           && (forall n#5: ref :: 
            { $Unbox(read($Heap, n#5, _module.Node.next)): ref } 
            $Is(n#5, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               ==> 
              Set#IsMember($ih#spine0#0, $Box(n#5))
               ==> $Unbox(read($Heap, n#5, _module.Node.next)): ref == null
                 || Set#IsMember($ih#spine0#0, read($Heap, n#5, _module.Node.next))));
    $_reverifyPost := false;
}



procedure {:verboseName "Map.SpineValidCombine (well-formedness)"} CheckWellFormed$$_module.Map.SpineValidCombine(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    spine#0: Set
       where $Is(spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)))
         && $IsAlloc(spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.SpineValidCombine (well-formedness)"} CheckWellFormed$$_module.Map.SpineValidCombine(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref, spine#0: Set, p#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##spine#0: Set;
  var ##n#0: ref;
  var n#0: ref;
  var ##spine#1: Set;
  var ##n#1: ref;
  var ##spine#2: Set;
  var ##n#2: ref;


    // AddMethodImpl: SpineValidCombine, CheckWellFormed$$_module.Map.SpineValidCombine
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##spine#0 := spine#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), $Heap);
    ##n#0 := p#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap);
    assume _module.Map.SpineValid__One#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0);
    assume {:id "id82"} _module.Map.SpineValid__One(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0);
    havoc n#0;
    assume $Is(n#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
       && $IsAlloc(n#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap);
    if (*)
    {
        assume {:id "id83"} Set#IsMember(spine#0, $Box(n#0));
        assert {:id "id84"} n#0 != null;
        ##spine#1 := $Unbox(read($Heap, n#0, _module.Node.Spine)): Set;
        // assume allocatedness for argument to function
        assume $IsAlloc(##spine#1, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), $Heap);
        assert {:id "id85"} n#0 != null;
        ##n#1 := $Unbox(read($Heap, n#0, _module.Node.next)): ref;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#1, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap);
        assume _module.Map.SpineValid__One#canCall(_module.Map$Key, 
          _module.Map$Value, 
          $Heap, 
          $Unbox(read($Heap, n#0, _module.Node.Spine)): Set, 
          $Unbox(read($Heap, n#0, _module.Node.next)): ref);
        assume {:id "id86"} _module.Map.SpineValid__One(_module.Map$Key, 
          _module.Map$Value, 
          $Heap, 
          $Unbox(read($Heap, n#0, _module.Node.Spine)): Set, 
          $Unbox(read($Heap, n#0, _module.Node.next)): ref);
    }
    else
    {
        assume {:id "id87"} Set#IsMember(spine#0, $Box(n#0))
           ==> _module.Map.SpineValid__One(_module.Map$Key, 
            _module.Map$Value, 
            $Heap, 
            $Unbox(read($Heap, n#0, _module.Node.Spine)): Set, 
            $Unbox(read($Heap, n#0, _module.Node.next)): ref);
    }

    assume {:id "id88"} (forall n#1: ref :: 
      { $Unbox(read($Heap, n#1, _module.Node.next)): ref } 
        { $Unbox(read($Heap, n#1, _module.Node.Spine)): Set } 
        { Set#IsMember(spine#0, $Box(n#1)) } 
      $Is(n#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember(spine#0, $Box(n#1))
         ==> _module.Map.SpineValid__One(_module.Map$Key, 
          _module.Map$Value, 
          $Heap, 
          $Unbox(read($Heap, n#1, _module.Node.Spine)): Set, 
          $Unbox(read($Heap, n#1, _module.Node.next)): ref));
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##spine#2 := spine#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##spine#2, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), $Heap);
    ##n#2 := p#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#2, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap);
    assume _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0);
    assume {:id "id89"} _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($LZ), $Heap, spine#0, p#0);
}



procedure {:verboseName "Map.SpineValidCombine (call)"} Call$$_module.Map.SpineValidCombine(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    spine#0: Set
       where $Is(spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)))
         && $IsAlloc(spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap));
  // user-defined preconditions
  requires {:id "id90"} _module.Map.SpineValid__One#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0)
     ==> _module.Map.SpineValid__One(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0)
       || 
      (p#0 == null && Set#Equal(spine#0, Set#Empty(): Set))
       || (
        p#0 != null
         && Set#IsMember(spine#0, $Box(p#0))
         && Set#Equal($Unbox(read($Heap, p#0, _module.Node.Spine)): Set, 
          Set#Difference(spine#0, Set#UnionOne(Set#Empty(): Set, $Box(p#0)))));
  requires {:id "id91"} (forall n#1: ref :: 
    { $Unbox(read($Heap, n#1, _module.Node.next)): ref } 
      { $Unbox(read($Heap, n#1, _module.Node.Spine)): Set } 
      { Set#IsMember(spine#0, $Box(n#1)) } 
    $Is(n#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
       ==> 
      Set#IsMember(spine#0, $Box(n#1))
       ==> _module.Map.SpineValid__One(_module.Map$Key, 
        _module.Map$Value, 
        $Heap, 
        $Unbox(read($Heap, n#1, _module.Node.Spine)): Set, 
        $Unbox(read($Heap, n#1, _module.Node.next)): ref));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0);
  free ensures {:id "id92"} _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0)
     && 
    _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($LZ), $Heap, spine#0, p#0)
     && ((p#0 == null && Set#Equal(spine#0, Set#Empty(): Set))
       || (
        p#0 != null
         && Set#IsMember(spine#0, $Box(p#0))
         && Set#Equal($Unbox(read($Heap, p#0, _module.Node.Spine)): Set, 
          Set#Difference(spine#0, Set#UnionOne(Set#Empty(): Set, $Box(p#0))))
         && _module.Map.SpineValid(_module.Map$Key, 
          _module.Map$Value, 
          $LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, p#0, _module.Node.Spine)): Set, 
          $Unbox(read($Heap, p#0, _module.Node.next)): ref)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Map.SpineValidCombine (correctness)"} Impl$$_module.Map.SpineValidCombine(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    spine#0: Set
       where $Is(spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)))
         && $IsAlloc(spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id93"} _module.Map.SpineValid__One#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0)
     && 
    _module.Map.SpineValid__One(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0)
     && ((p#0 == null && Set#Equal(spine#0, Set#Empty(): Set))
       || (
        p#0 != null
         && Set#IsMember(spine#0, $Box(p#0))
         && Set#Equal($Unbox(read($Heap, p#0, _module.Node.Spine)): Set, 
          Set#Difference(spine#0, Set#UnionOne(Set#Empty(): Set, $Box(p#0))))));
  requires {:id "id94"} (forall n#1: ref :: 
    { $Unbox(read($Heap, n#1, _module.Node.next)): ref } 
      { $Unbox(read($Heap, n#1, _module.Node.Spine)): Set } 
      { Set#IsMember(spine#0, $Box(n#1)) } 
    $Is(n#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
       ==> 
      Set#IsMember(spine#0, $Box(n#1))
       ==> _module.Map.SpineValid__One(_module.Map$Key, 
        _module.Map$Value, 
        $Heap, 
        $Unbox(read($Heap, n#1, _module.Node.Spine)): Set, 
        $Unbox(read($Heap, n#1, _module.Node.next)): ref));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0);
  ensures {:id "id95"} _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0)
     ==> _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($LZ), $Heap, spine#0, p#0)
       || 
      (p#0 == null && Set#Equal(spine#0, Set#Empty(): Set))
       || (
        p#0 != null
         && Set#IsMember(spine#0, $Box(p#0))
         && Set#Equal($Unbox(read($Heap, p#0, _module.Node.Spine)): Set, 
          Set#Difference(spine#0, Set#UnionOne(Set#Empty(): Set, $Box(p#0))))
         && _module.Map.SpineValid(_module.Map$Key, 
          _module.Map$Value, 
          $LS($LS($LZ)), 
          $Heap, 
          $Unbox(read($Heap, p#0, _module.Node.Spine)): Set, 
          $Unbox(read($Heap, p#0, _module.Node.next)): ref));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.SpineValidCombine (correctness)"} Impl$$_module.Map.SpineValidCombine(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref, spine#0: Set, p#0: ref)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: SpineValidCombine, Impl$$_module.Map.SpineValidCombine
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#spine0#0: Set, $ih#p0#0: ref :: 
      { _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($LZ), $Heap, $ih#spine0#0, $ih#p0#0) } 
        { _module.Map.SpineValid__One(_module.Map$Key, _module.Map$Value, $Heap, $ih#spine0#0, $ih#p0#0) } 
      $Is($ih#spine0#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)))
           && $Is($ih#p0#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
           && 
          _module.Map.SpineValid__One(_module.Map$Key, 
            _module.Map$Value, 
            $initHeapForallStmt#0, 
            $ih#spine0#0, 
            $ih#p0#0)
           && (forall n#2: ref :: 
            { $Unbox(read($initHeapForallStmt#0, n#2, _module.Node.next)): ref } 
              { $Unbox(read($initHeapForallStmt#0, n#2, _module.Node.Spine)): Set } 
              { Set#IsMember($ih#spine0#0, $Box(n#2)) } 
            $Is(n#2, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               ==> 
              Set#IsMember($ih#spine0#0, $Box(n#2))
               ==> _module.Map.SpineValid__One(_module.Map$Key, 
                _module.Map$Value, 
                $initHeapForallStmt#0, 
                $Unbox(read($initHeapForallStmt#0, n#2, _module.Node.Spine)): Set, 
                $Unbox(read($initHeapForallStmt#0, n#2, _module.Node.next)): ref))
           && ((Set#Subset($ih#spine0#0, spine#0) && !Set#Subset(spine#0, $ih#spine0#0))
             || (Set#Equal($ih#spine0#0, spine#0) && $ih#p0#0 == null && p#0 != null))
         ==> _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($LZ), $Heap, $ih#spine0#0, $ih#p0#0));
    $_reverifyPost := false;
}



procedure {:verboseName "Map.Init (well-formedness)"} CheckWellFormed$$_module.Map.Init(_module.Map$Key: Ty, _module.Map$Value: Ty) returns (this: ref);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Map.Init (call)"} Call$$_module.Map.Init(_module.Map$Key: Ty, _module.Map$Value: Ty)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
  free ensures {:id "id99"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this))
     && Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.Repr)): Set)
     && _module.Map.SpineValid(_module.Map$Key, 
      _module.Map$Value, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.head)): ref)
     && (forall k#0: Box :: 
      { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#0) } 
      $IsBox(k#0, _module.Map$Key)
         ==> 
        Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#0)
         ==> (exists n#0: ref :: 
          { read($Heap, n#0, _module.Node.key) } 
            { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0)) } 
          $Is(n#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && 
            Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0))
             && read($Heap, n#0, _module.Node.key) == k#0))
     && (forall n#1: ref :: 
      { read($Heap, n#1, _module.Node.val) } 
        { read($Heap, n#1, _module.Node.key) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1)) } 
      $Is(n#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1))
             ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
              read($Heap, n#1, _module.Node.key)))
           && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1))
             ==> read($Heap, n#1, _module.Node.val)
               == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#1, _module.Node.key)]))
     && (forall n#2: ref, n'#0: ref :: 
      { read($Heap, n'#0, _module.Node.key), read($Heap, n#2, _module.Node.key) } 
        { read($Heap, n'#0, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2)) } 
        { read($Heap, n#2, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0)) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2)) } 
      $Is(n#2, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $Is(n'#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2))
           && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0))
           && n#2 != n'#0
         ==> read($Heap, n#2, _module.Node.key) != read($Heap, n'#0, _module.Node.key))
     && (forall n#3: ref :: 
      { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#3)) } 
      $Is(n#3, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#3))
         ==> $Unbox(read($Heap, n#3, _module.Node.next)): ref
           != $Unbox(read($Heap, this, _module.Map.head)): ref)
     && (forall n#4: ref, n'#1: ref :: 
      { $Unbox(read($Heap, n'#1, _module.Node.next)): ref, $Unbox(read($Heap, n#4, _module.Node.next)): ref } 
        { $Unbox(read($Heap, n'#1, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4)) } 
        { $Unbox(read($Heap, n#4, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1)) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4)) } 
      $Is(n#4, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $Is(n'#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4))
           && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1))
           && $Unbox(read($Heap, n#4, _module.Node.next)): ref
             == $Unbox(read($Heap, n'#1, _module.Node.next)): ref
         ==> n#4 == n'#1);
  ensures {:id "id100"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id101"} Map#Equal($Unbox(read($Heap, this, _module.Map.M)): Map, Map#Empty(): Map);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Map.Init (correctness)"} Impl$$_module.Map.Init(_module.Map$Key: Ty, _module.Map$Value: Ty)
   returns (this: ref, $_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
  ensures {:id "id102"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this));
  ensures {:id "id103"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
        $Unbox(read($Heap, this, _module.Map.Repr)): Set);
  ensures {:id "id104"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (_module.Map.SpineValid#canCall(_module.Map$Key, 
          _module.Map$Value, 
          $Heap, 
          $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
          $Unbox(read($Heap, this, _module.Map.head)): ref)
         ==> _module.Map.SpineValid(_module.Map$Key, 
            _module.Map$Value, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.head)): ref)
           || 
          ($Unbox(read($Heap, this, _module.Map.head)): ref == null
             && Set#Equal($Unbox(read($Heap, this, _module.Map.Spine)): Set, Set#Empty(): Set))
           || (
            $Unbox(read($Heap, this, _module.Map.head)): ref != null
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
              read($Heap, this, _module.Map.head))
             && Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
              Set#Difference($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Map.head))))
             && _module.Map.SpineValid(_module.Map$Key, 
              _module.Map$Value, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.next)): ref)));
  ensures {:id "id105"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall k#1: Box :: 
        { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#1) } 
        $IsBox(k#1, _module.Map$Key)
           ==> 
          Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#1)
           ==> (exists n#5: ref :: 
            { read($Heap, n#5, _module.Node.key) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#5)) } 
            $Is(n#5, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               && 
              Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#5))
               && read($Heap, n#5, _module.Node.key) == k#1));
  ensures {:id "id106"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#6: ref :: 
        { read($Heap, n#6, _module.Node.val) } 
          { read($Heap, n#6, _module.Node.key) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#6)) } 
        $Is(n#6, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#6))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
                read($Heap, n#6, _module.Node.key)))
             && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#6))
               ==> read($Heap, n#6, _module.Node.val)
                 == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#6, _module.Node.key)]));
  ensures {:id "id107"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#7: ref, n'#2: ref :: 
        { read($Heap, n'#2, _module.Node.key), read($Heap, n#7, _module.Node.key) } 
          { read($Heap, n'#2, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7)) } 
          { read($Heap, n#7, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2)) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7)) } 
        $Is(n#7, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && $Is(n'#2, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7))
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2))
             && n#7 != n'#2
           ==> read($Heap, n#7, _module.Node.key) != read($Heap, n'#2, _module.Node.key));
  ensures {:id "id108"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#8: ref :: 
        { $Unbox(read($Heap, n#8, _module.Node.next)): ref } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#8)) } 
        $Is(n#8, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#8))
           ==> $Unbox(read($Heap, n#8, _module.Node.next)): ref
             != $Unbox(read($Heap, this, _module.Map.head)): ref);
  ensures {:id "id109"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#9: ref, n'#3: ref :: 
        { $Unbox(read($Heap, n'#3, _module.Node.next)): ref, $Unbox(read($Heap, n#9, _module.Node.next)): ref } 
          { $Unbox(read($Heap, n'#3, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9)) } 
          { $Unbox(read($Heap, n#9, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3)) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9)) } 
        $Is(n#9, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && $Is(n'#3, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9))
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3))
             && $Unbox(read($Heap, n#9, _module.Node.next)): ref
               == $Unbox(read($Heap, n'#3, _module.Node.next)): ref
           ==> n#9 == n'#3);
  ensures {:id "id110"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id111"} Map#Equal($Unbox(read($Heap, this, _module.Map.M)): Map, Map#Empty(): Map);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.Init (correctness)"} Impl$$_module.Map.Init(_module.Map$Key: Ty, _module.Map$Value: Ty)
   returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.M: Map;
  var this.Repr: Set;
  var this.head: ref;
  var this.Spine: Set;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0: ref;
  var newtype$check#0: ref;
  var $rhs#1: Set;
  var $rhs#2: Map;
  var $rhs#3: Set;

    // AddMethodImpl: Init, Impl$$_module.Map.Init
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(60,3)
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(61,17)
    assume true;
    $obj0 := this;
    assume true;
    $obj1 := this;
    newtype$check#0 := null;
    assume true;
    $rhs#0 := null;
    assume true;
    $rhs#1 := Lit(Set#Empty(): Set);
    this.head := $rhs#0;
    this.Spine := $rhs#1;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(62,13)
    assume true;
    $obj0 := this;
    assume true;
    $obj1 := this;
    assume true;
    $rhs#2 := Lit(Map#Empty(): Map);
    assume true;
    $rhs#3 := Set#UnionOne(Set#Empty(): Set, $Box(this));
    this.M := $rhs#2;
    this.Repr := $rhs#3;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(60,3)
    assume this != null
       && $Is(this, Tclass._module.Map?(_module.Map$Key, _module.Map$Value));
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.Map.M)): Map == this.M;
    assume $Unbox(read($Heap, this, _module.Map.Repr)): Set == this.Repr;
    assume $Unbox(read($Heap, this, _module.Map.head)): ref == this.head;
    assume $Unbox(read($Heap, this, _module.Map.Spine)): Set == this.Spine;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(60,3)
}



procedure {:verboseName "Map.FindIndex (well-formedness)"} CheckWellFormed$$_module.Map.FindIndex(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    key#0: Box
       where $IsBox(key#0, _module.Map$Key) && $IsAllocBox(key#0, _module.Map$Key, $Heap))
   returns (prev#0: ref
       where $Is(prev#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(prev#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.FindIndex (well-formedness)"} CheckWellFormed$$_module.Map.FindIndex(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref, key#0: Box)
   returns (prev#0: ref, p#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var newtype$check#2: ref;


    // AddMethodImpl: FindIndex, CheckWellFormed$$_module.Map.FindIndex
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Map?(_module.Map$Key, _module.Map$Value), $Heap);
    assume _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
    assume {:id "id120"} _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc prev#0, p#0;
    if (*)
    {
        newtype$check#0 := null;
        assume {:id "id121"} p#0 == null;
        assume {:id "id122"} !Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0);
    }
    else
    {
        assume {:id "id123"} p#0 == null
           ==> !Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0);
    }

    if (*)
    {
        newtype$check#1 := null;
        assume {:id "id124"} p#0 != null;
        assume {:id "id125"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0);
        assume {:id "id126"} Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(p#0));
        assert {:id "id127"} p#0 != null;
        assume {:id "id128"} read($Heap, p#0, _module.Node.key) == key#0;
        if (p#0 == $Unbox(read($Heap, this, _module.Map.head)): ref)
        {
            newtype$check#2 := null;
        }

        assume {:id "id129"} p#0 == $Unbox(read($Heap, this, _module.Map.head)): ref ==> prev#0 == null;
        if (p#0 != $Unbox(read($Heap, this, _module.Map.head)): ref)
        {
            if (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(prev#0)))
            {
                assert {:id "id130"} prev#0 != null;
            }
        }

        assume {:id "id131"} p#0 != $Unbox(read($Heap, this, _module.Map.head)): ref
           ==> Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(prev#0))
             && $Unbox(read($Heap, prev#0, _module.Node.next)): ref == p#0;
    }
    else
    {
        assume {:id "id132"} p#0 != null
           ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0)
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(p#0))
             && read($Heap, p#0, _module.Node.key) == key#0
             && (p#0 == $Unbox(read($Heap, this, _module.Map.head)): ref ==> prev#0 == null)
             && (p#0 != $Unbox(read($Heap, this, _module.Map.head)): ref
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(prev#0))
                 && $Unbox(read($Heap, prev#0, _module.Node.next)): ref == p#0);
    }
}



procedure {:verboseName "Map.FindIndex (call)"} Call$$_module.Map.FindIndex(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    key#0: Box
       where $IsBox(key#0, _module.Map$Key) && $IsAllocBox(key#0, _module.Map$Key, $Heap))
   returns (prev#0: ref
       where $Is(prev#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(prev#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap));
  // user-defined preconditions
  requires {:id "id133"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this));
  requires {:id "id134"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
        $Unbox(read($Heap, this, _module.Map.Repr)): Set);
  requires {:id "id135"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (_module.Map.SpineValid#canCall(_module.Map$Key, 
          _module.Map$Value, 
          $Heap, 
          $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
          $Unbox(read($Heap, this, _module.Map.head)): ref)
         ==> _module.Map.SpineValid(_module.Map$Key, 
            _module.Map$Value, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.head)): ref)
           || 
          ($Unbox(read($Heap, this, _module.Map.head)): ref == null
             && Set#Equal($Unbox(read($Heap, this, _module.Map.Spine)): Set, Set#Empty(): Set))
           || (
            $Unbox(read($Heap, this, _module.Map.head)): ref != null
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
              read($Heap, this, _module.Map.head))
             && Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
              Set#Difference($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Map.head))))
             && _module.Map.SpineValid(_module.Map$Key, 
              _module.Map$Value, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.next)): ref)));
  requires {:id "id136"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall k#0: Box :: 
        { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#0) } 
        $IsBox(k#0, _module.Map$Key)
           ==> 
          Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#0)
           ==> (exists n#0: ref :: 
            { read($Heap, n#0, _module.Node.key) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0)) } 
            $Is(n#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               && 
              Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0))
               && read($Heap, n#0, _module.Node.key) == k#0));
  requires {:id "id137"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#1: ref :: 
        { read($Heap, n#1, _module.Node.val) } 
          { read($Heap, n#1, _module.Node.key) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1)) } 
        $Is(n#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
                read($Heap, n#1, _module.Node.key)))
             && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1))
               ==> read($Heap, n#1, _module.Node.val)
                 == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#1, _module.Node.key)]));
  requires {:id "id138"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#2: ref, n'#0: ref :: 
        { read($Heap, n'#0, _module.Node.key), read($Heap, n#2, _module.Node.key) } 
          { read($Heap, n'#0, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2)) } 
          { read($Heap, n#2, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0)) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2)) } 
        $Is(n#2, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && $Is(n'#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2))
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0))
             && n#2 != n'#0
           ==> read($Heap, n#2, _module.Node.key) != read($Heap, n'#0, _module.Node.key));
  requires {:id "id139"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#3: ref :: 
        { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#3)) } 
        $Is(n#3, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#3))
           ==> $Unbox(read($Heap, n#3, _module.Node.next)): ref
             != $Unbox(read($Heap, this, _module.Map.head)): ref);
  requires {:id "id140"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#4: ref, n'#1: ref :: 
        { $Unbox(read($Heap, n'#1, _module.Node.next)): ref, $Unbox(read($Heap, n#4, _module.Node.next)): ref } 
          { $Unbox(read($Heap, n'#1, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4)) } 
          { $Unbox(read($Heap, n#4, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1)) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4)) } 
        $Is(n#4, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && $Is(n'#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4))
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1))
             && $Unbox(read($Heap, n#4, _module.Node.next)): ref
               == $Unbox(read($Heap, n'#1, _module.Node.next)): ref
           ==> n#4 == n'#1);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id141"} p#0 == null
     ==> !Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0);
  free ensures true;
  ensures {:id "id142"} p#0 != null
     ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0);
  ensures {:id "id143"} p#0 != null
     ==> Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(p#0));
  ensures {:id "id144"} p#0 != null ==> read($Heap, p#0, _module.Node.key) == key#0;
  ensures {:id "id145"} p#0 != null
     ==> 
    p#0 == $Unbox(read($Heap, this, _module.Map.head)): ref
     ==> prev#0 == null;
  ensures {:id "id146"} p#0 != null
     ==> 
    p#0 != $Unbox(read($Heap, this, _module.Map.head)): ref
     ==> Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(prev#0));
  ensures {:id "id147"} p#0 != null
     ==> 
    p#0 != $Unbox(read($Heap, this, _module.Map.head)): ref
     ==> $Unbox(read($Heap, prev#0, _module.Node.next)): ref == p#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Map.FindIndex (correctness)"} Impl$$_module.Map.FindIndex(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    key#0: Box
       where $IsBox(key#0, _module.Map$Key) && $IsAllocBox(key#0, _module.Map$Key, $Heap))
   returns (prev#0: ref
       where $Is(prev#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(prev#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap), 
    $_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id148"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this))
     && Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.Repr)): Set)
     && _module.Map.SpineValid(_module.Map$Key, 
      _module.Map$Value, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.head)): ref)
     && (forall k#1: Box :: 
      { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#1) } 
      $IsBox(k#1, _module.Map$Key)
         ==> 
        Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#1)
         ==> (exists n#5: ref :: 
          { read($Heap, n#5, _module.Node.key) } 
            { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#5)) } 
          $Is(n#5, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && 
            Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#5))
             && read($Heap, n#5, _module.Node.key) == k#1))
     && (forall n#6: ref :: 
      { read($Heap, n#6, _module.Node.val) } 
        { read($Heap, n#6, _module.Node.key) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#6)) } 
      $Is(n#6, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#6))
             ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
              read($Heap, n#6, _module.Node.key)))
           && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#6))
             ==> read($Heap, n#6, _module.Node.val)
               == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#6, _module.Node.key)]))
     && (forall n#7: ref, n'#2: ref :: 
      { read($Heap, n'#2, _module.Node.key), read($Heap, n#7, _module.Node.key) } 
        { read($Heap, n'#2, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7)) } 
        { read($Heap, n#7, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2)) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7)) } 
      $Is(n#7, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $Is(n'#2, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7))
           && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2))
           && n#7 != n'#2
         ==> read($Heap, n#7, _module.Node.key) != read($Heap, n'#2, _module.Node.key))
     && (forall n#8: ref :: 
      { $Unbox(read($Heap, n#8, _module.Node.next)): ref } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#8)) } 
      $Is(n#8, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#8))
         ==> $Unbox(read($Heap, n#8, _module.Node.next)): ref
           != $Unbox(read($Heap, this, _module.Map.head)): ref)
     && (forall n#9: ref, n'#3: ref :: 
      { $Unbox(read($Heap, n'#3, _module.Node.next)): ref, $Unbox(read($Heap, n#9, _module.Node.next)): ref } 
        { $Unbox(read($Heap, n'#3, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9)) } 
        { $Unbox(read($Heap, n#9, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3)) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9)) } 
      $Is(n#9, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $Is(n'#3, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9))
           && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3))
           && $Unbox(read($Heap, n#9, _module.Node.next)): ref
             == $Unbox(read($Heap, n'#3, _module.Node.next)): ref
         ==> n#9 == n'#3);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id149"} p#0 == null
     ==> !Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0);
  free ensures true;
  ensures {:id "id150"} p#0 != null
     ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0);
  ensures {:id "id151"} p#0 != null
     ==> Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(p#0));
  ensures {:id "id152"} p#0 != null ==> read($Heap, p#0, _module.Node.key) == key#0;
  ensures {:id "id153"} p#0 != null
     ==> 
    p#0 == $Unbox(read($Heap, this, _module.Map.head)): ref
     ==> prev#0 == null;
  ensures {:id "id154"} p#0 != null
     ==> 
    p#0 != $Unbox(read($Heap, this, _module.Map.head)): ref
     ==> Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(prev#0));
  ensures {:id "id155"} p#0 != null
     ==> 
    p#0 != $Unbox(read($Heap, this, _module.Map.head)): ref
     ==> $Unbox(read($Heap, prev#0, _module.Node.next)): ref == p#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.FindIndex (correctness)"} Impl$$_module.Map.FindIndex(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref, key#0: Box)
   returns (prev#0: ref, p#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: ref;
  var newtype$check#3: ref;
  var $rhs#1: ref;
  var spine#0: Set
     where $Is(spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)))
       && $IsAlloc(spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Set;
  var $w$loop#0: bool;
  var ##spine#0: Set;
  var ##n#0: ref;
  var newtype$check#4: ref;
  var newtype$check#5: ref;
  var n#10: ref;
  var newtype$check#6: ref;
  var $decr$loop#00: Set;
  var $rhs#0_1_0: ref;
  var $rhs#0_1_1: ref;

    // AddMethodImpl: FindIndex, Impl$$_module.Map.FindIndex
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(74,13)
    assume true;
    assume true;
    newtype$check#3 := null;
    assume true;
    $rhs#0 := null;
    assume true;
    $rhs#1 := $Unbox(read($Heap, this, _module.Map.head)): ref;
    prev#0 := $rhs#0;
    p#0 := $rhs#1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(75,21)
    assume true;
    assume true;
    spine#0 := $Unbox(read($Heap, this, _module.Map.Spine)): Set;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(76,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := spine#0;
    havoc $w$loop#0;
    while (true)
      free invariant $w$loop#0
         ==> _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0);
      invariant {:id "id162"} $w$loop#0
         ==> 
        _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0)
         ==> _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($LZ), $Heap, spine#0, p#0)
           || 
          (p#0 == null && Set#Equal(spine#0, Set#Empty(): Set))
           || (
            p#0 != null
             && Set#IsMember(spine#0, $Box(p#0))
             && Set#Equal($Unbox(read($Heap, p#0, _module.Node.Spine)): Set, 
              Set#Difference(spine#0, Set#UnionOne(Set#Empty(): Set, $Box(p#0))))
             && _module.Map.SpineValid(_module.Map$Key, 
              _module.Map$Value, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, p#0, _module.Node.Spine)): Set, 
              $Unbox(read($Heap, p#0, _module.Node.next)): ref));
      free invariant {:id "id163"} $w$loop#0
         ==> _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0)
           && 
          _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($LZ), $Heap, spine#0, p#0)
           && ((p#0 == null && Set#Equal(spine#0, Set#Empty(): Set))
             || (
              p#0 != null
               && Set#IsMember(spine#0, $Box(p#0))
               && Set#Equal($Unbox(read($Heap, p#0, _module.Node.Spine)): Set, 
                Set#Difference(spine#0, Set#UnionOne(Set#Empty(): Set, $Box(p#0))))
               && _module.Map.SpineValid(_module.Map$Key, 
                _module.Map$Value, 
                $LS($LZ), 
                $Heap, 
                $Unbox(read($Heap, p#0, _module.Node.Spine)): Set, 
                $Unbox(read($Heap, p#0, _module.Node.next)): ref)));
      free invariant true;
      invariant {:id "id165"} $w$loop#0 ==> p#0 != null ==> Set#IsMember(spine#0, $Box(p#0));
      free invariant true;
      invariant {:id "id167"} $w$loop#0
         ==> 
        p#0 == $Unbox(read($Heap, this, _module.Map.head)): ref
         ==> prev#0 == null;
      free invariant true;
      invariant {:id "id170"} $w$loop#0
         ==> 
        p#0 != $Unbox(read($Heap, this, _module.Map.head)): ref
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(prev#0));
      invariant {:id "id171"} $w$loop#0
         ==> 
        p#0 != $Unbox(read($Heap, this, _module.Map.head)): ref
         ==> $Unbox(read($Heap, prev#0, _module.Node.next)): ref == p#0;
      invariant {:id "id172"} $w$loop#0
         ==> 
        p#0 != $Unbox(read($Heap, this, _module.Map.head)): ref
         ==> !Set#IsMember(spine#0, read($Heap, this, _module.Map.head));
      free invariant true;
      invariant {:id "id175"} $w$loop#0
         ==> 
        Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0)
         ==> (exists n#11: ref :: 
          { read($Heap, n#11, _module.Node.key) } { Set#IsMember(spine#0, $Box(n#11)) } 
          $Is(n#11, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && 
            Set#IsMember(spine#0, $Box(n#11))
             && read($Heap, n#11, _module.Node.key) == key#0);
      free invariant {:id "id176"} $w$loop#0
         ==> 
        Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0)
         ==> (exists n#11: ref :: 
          { read($Heap, n#11, _module.Node.key) } { Set#IsMember(spine#0, $Box(n#11)) } 
          $Is(n#11, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && 
            Set#IsMember(spine#0, $Box(n#11))
             && read($Heap, n#11, _module.Node.key) == key#0);
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
      free invariant Set#Subset(spine#0, $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            ##spine#0 := spine#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), $Heap);
            ##n#0 := p#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap);
            assume _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0);
            assume _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0);
            assume {:id "id161"} _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($LZ), $Heap, spine#0, p#0);
            newtype$check#4 := null;
            if (p#0 != null)
            {
            }

            assume true;
            assume {:id "id164"} p#0 != null ==> Set#IsMember(spine#0, $Box(p#0));
            if (p#0 == $Unbox(read($Heap, this, _module.Map.head)): ref)
            {
                newtype$check#5 := null;
            }

            assume true;
            assume {:id "id166"} p#0 == $Unbox(read($Heap, this, _module.Map.head)): ref ==> prev#0 == null;
            if (p#0 != $Unbox(read($Heap, this, _module.Map.head)): ref)
            {
                if (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(prev#0)))
                {
                    assert {:id "id168"} {:subsumption 0} prev#0 != null;
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(prev#0))
                   && $Unbox(read($Heap, prev#0, _module.Node.next)): ref == p#0)
                {
                }
            }

            assume true;
            assume {:id "id169"} p#0 != $Unbox(read($Heap, this, _module.Map.head)): ref
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(prev#0))
                 && $Unbox(read($Heap, prev#0, _module.Node.next)): ref == p#0
                 && !Set#IsMember(spine#0, read($Heap, this, _module.Map.head));
            if (Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0))
            {
                // Begin Comprehension WF check
                havoc n#10;
                if ($Is(n#10, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                   && $IsAlloc(n#10, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap))
                {
                    if (Set#IsMember(spine#0, $Box(n#10)))
                    {
                        assert {:id "id173"} {:subsumption 0} n#10 != null;
                    }
                }

                // End Comprehension WF check
            }

            assume true;
            assume {:id "id174"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0)
               ==> (exists n#11: ref :: 
                { read($Heap, n#11, _module.Node.key) } { Set#IsMember(spine#0, $Box(n#11)) } 
                $Is(n#11, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                   && 
                  Set#IsMember(spine#0, $Box(n#11))
                   && read($Heap, n#11, _module.Node.key) == key#0);
            assume true;
            assume false;
        }

        newtype$check#6 := null;
        assume true;
        if (p#0 == null)
        {
            break;
        }

        $decr$loop#00 := spine#0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(84,7)
        assert {:id "id177"} p#0 != null;
        assume true;
        if (read($Heap, p#0, _module.Node.key) == key#0)
        {
            // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(85,9)
            return;
        }
        else
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(87,15)
            assume true;
            assert {:id "id178"} p#0 != null;
            assume true;
            spine#0 := $Unbox(read($Heap, p#0, _module.Node.Spine)): Set;
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(88,17)
            assume true;
            assume true;
            assume true;
            $rhs#0_1_0 := p#0;
            assert {:id "id181"} p#0 != null;
            assume true;
            $rhs#0_1_1 := $Unbox(read($Heap, p#0, _module.Node.next)): ref;
            prev#0 := $rhs#0_1_0;
            p#0 := $rhs#0_1_1;
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(76,5)
        assert {:id "id185"} Set#Subset(spine#0, $decr$loop#00) && !Set#Subset($decr$loop#00, spine#0);
        assume _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, $Heap, spine#0, p#0);
    }
}



function Tclass._module.Maybe(Ty) : Ty;

const unique Tagclass._module.Maybe: TyTag;

// Tclass._module.Maybe Tag
axiom (forall _module.Maybe$T: Ty :: 
  { Tclass._module.Maybe(_module.Maybe$T) } 
  Tag(Tclass._module.Maybe(_module.Maybe$T)) == Tagclass._module.Maybe
     && TagFamily(Tclass._module.Maybe(_module.Maybe$T)) == tytagFamily$Maybe);

function Tclass._module.Maybe_0(Ty) : Ty;

// Tclass._module.Maybe injectivity 0
axiom (forall _module.Maybe$T: Ty :: 
  { Tclass._module.Maybe(_module.Maybe$T) } 
  Tclass._module.Maybe_0(Tclass._module.Maybe(_module.Maybe$T)) == _module.Maybe$T);

// Box/unbox axiom for Tclass._module.Maybe
axiom (forall _module.Maybe$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Maybe(_module.Maybe$T)) } 
  $IsBox(bx, Tclass._module.Maybe(_module.Maybe$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Maybe(_module.Maybe$T)));

procedure {:verboseName "Map.Find (well-formedness)"} CheckWellFormed$$_module.Map.Find(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    key#0: Box
       where $IsBox(key#0, _module.Map$Key) && $IsAllocBox(key#0, _module.Map$Key, $Heap))
   returns (result#0: DatatypeType
       where $Is(result#0, Tclass._module.Maybe(_module.Map$Value))
         && $IsAlloc(result#0, Tclass._module.Maybe(_module.Map$Value), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.Find (well-formedness)"} CheckWellFormed$$_module.Map.Find(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref, key#0: Box)
   returns (result#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Find, CheckWellFormed$$_module.Map.Find
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Map?(_module.Map$Key, _module.Map$Value), $Heap);
    assume _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
    assume {:id "id186"} _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc result#0;
    if (*)
    {
        assume {:id "id187"} _module.Maybe#Equal(result#0, #_module.Maybe.None());
        assume {:id "id188"} !Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0);
    }
    else
    {
        assume {:id "id189"} _module.Maybe#Equal(result#0, #_module.Maybe.None())
           ==> !Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0);
    }

    if (*)
    {
        assume {:id "id190"} _module.Maybe.Some_q(result#0);
        assume {:id "id191"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0);
        assert {:id "id192"} _module.Maybe.Some_q(result#0);
        assert {:id "id193"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0);
        assume {:id "id194"} _module.Maybe.get(result#0)
           == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[key#0];
    }
    else
    {
        assume {:id "id195"} _module.Maybe.Some_q(result#0)
           ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0)
             && _module.Maybe.get(result#0)
               == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[key#0];
    }
}



procedure {:verboseName "Map.Find (call)"} Call$$_module.Map.Find(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    key#0: Box
       where $IsBox(key#0, _module.Map$Key) && $IsAllocBox(key#0, _module.Map$Key, $Heap))
   returns (result#0: DatatypeType
       where $Is(result#0, Tclass._module.Maybe(_module.Map$Value))
         && $IsAlloc(result#0, Tclass._module.Maybe(_module.Map$Value), $Heap));
  // user-defined preconditions
  requires {:id "id196"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this));
  requires {:id "id197"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
        $Unbox(read($Heap, this, _module.Map.Repr)): Set);
  requires {:id "id198"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (_module.Map.SpineValid#canCall(_module.Map$Key, 
          _module.Map$Value, 
          $Heap, 
          $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
          $Unbox(read($Heap, this, _module.Map.head)): ref)
         ==> _module.Map.SpineValid(_module.Map$Key, 
            _module.Map$Value, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.head)): ref)
           || 
          ($Unbox(read($Heap, this, _module.Map.head)): ref == null
             && Set#Equal($Unbox(read($Heap, this, _module.Map.Spine)): Set, Set#Empty(): Set))
           || (
            $Unbox(read($Heap, this, _module.Map.head)): ref != null
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
              read($Heap, this, _module.Map.head))
             && Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
              Set#Difference($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Map.head))))
             && _module.Map.SpineValid(_module.Map$Key, 
              _module.Map$Value, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.next)): ref)));
  requires {:id "id199"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall k#0: Box :: 
        { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#0) } 
        $IsBox(k#0, _module.Map$Key)
           ==> 
          Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#0)
           ==> (exists n#0: ref :: 
            { read($Heap, n#0, _module.Node.key) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0)) } 
            $Is(n#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               && 
              Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0))
               && read($Heap, n#0, _module.Node.key) == k#0));
  requires {:id "id200"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#1: ref :: 
        { read($Heap, n#1, _module.Node.val) } 
          { read($Heap, n#1, _module.Node.key) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1)) } 
        $Is(n#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
                read($Heap, n#1, _module.Node.key)))
             && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1))
               ==> read($Heap, n#1, _module.Node.val)
                 == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#1, _module.Node.key)]));
  requires {:id "id201"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#2: ref, n'#0: ref :: 
        { read($Heap, n'#0, _module.Node.key), read($Heap, n#2, _module.Node.key) } 
          { read($Heap, n'#0, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2)) } 
          { read($Heap, n#2, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0)) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2)) } 
        $Is(n#2, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && $Is(n'#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2))
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0))
             && n#2 != n'#0
           ==> read($Heap, n#2, _module.Node.key) != read($Heap, n'#0, _module.Node.key));
  requires {:id "id202"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#3: ref :: 
        { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#3)) } 
        $Is(n#3, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#3))
           ==> $Unbox(read($Heap, n#3, _module.Node.next)): ref
             != $Unbox(read($Heap, this, _module.Map.head)): ref);
  requires {:id "id203"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#4: ref, n'#1: ref :: 
        { $Unbox(read($Heap, n'#1, _module.Node.next)): ref, $Unbox(read($Heap, n#4, _module.Node.next)): ref } 
          { $Unbox(read($Heap, n'#1, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4)) } 
          { $Unbox(read($Heap, n#4, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1)) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4)) } 
        $Is(n#4, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && $Is(n'#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4))
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1))
             && $Unbox(read($Heap, n#4, _module.Node.next)): ref
               == $Unbox(read($Heap, n'#1, _module.Node.next)): ref
           ==> n#4 == n'#1);
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Maybe(result#0);
  ensures {:id "id204"} _module.Maybe#Equal(result#0, #_module.Maybe.None())
     ==> !Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0);
  free ensures true;
  ensures {:id "id205"} _module.Maybe.Some_q(result#0)
     ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0);
  ensures {:id "id206"} _module.Maybe.Some_q(result#0)
     ==> _module.Maybe.get(result#0)
       == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[key#0];
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Map.Find (correctness)"} Impl$$_module.Map.Find(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    key#0: Box
       where $IsBox(key#0, _module.Map$Key) && $IsAllocBox(key#0, _module.Map$Key, $Heap))
   returns (result#0: DatatypeType
       where $Is(result#0, Tclass._module.Maybe(_module.Map$Value))
         && $IsAlloc(result#0, Tclass._module.Maybe(_module.Map$Value), $Heap), 
    $_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id207"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this))
     && Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.Repr)): Set)
     && _module.Map.SpineValid(_module.Map$Key, 
      _module.Map$Value, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.head)): ref)
     && (forall k#1: Box :: 
      { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#1) } 
      $IsBox(k#1, _module.Map$Key)
         ==> 
        Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#1)
         ==> (exists n#5: ref :: 
          { read($Heap, n#5, _module.Node.key) } 
            { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#5)) } 
          $Is(n#5, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && 
            Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#5))
             && read($Heap, n#5, _module.Node.key) == k#1))
     && (forall n#6: ref :: 
      { read($Heap, n#6, _module.Node.val) } 
        { read($Heap, n#6, _module.Node.key) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#6)) } 
      $Is(n#6, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#6))
             ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
              read($Heap, n#6, _module.Node.key)))
           && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#6))
             ==> read($Heap, n#6, _module.Node.val)
               == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#6, _module.Node.key)]))
     && (forall n#7: ref, n'#2: ref :: 
      { read($Heap, n'#2, _module.Node.key), read($Heap, n#7, _module.Node.key) } 
        { read($Heap, n'#2, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7)) } 
        { read($Heap, n#7, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2)) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7)) } 
      $Is(n#7, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $Is(n'#2, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7))
           && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2))
           && n#7 != n'#2
         ==> read($Heap, n#7, _module.Node.key) != read($Heap, n'#2, _module.Node.key))
     && (forall n#8: ref :: 
      { $Unbox(read($Heap, n#8, _module.Node.next)): ref } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#8)) } 
      $Is(n#8, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#8))
         ==> $Unbox(read($Heap, n#8, _module.Node.next)): ref
           != $Unbox(read($Heap, this, _module.Map.head)): ref)
     && (forall n#9: ref, n'#3: ref :: 
      { $Unbox(read($Heap, n'#3, _module.Node.next)): ref, $Unbox(read($Heap, n#9, _module.Node.next)): ref } 
        { $Unbox(read($Heap, n'#3, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9)) } 
        { $Unbox(read($Heap, n#9, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3)) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9)) } 
      $Is(n#9, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $Is(n'#3, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9))
           && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3))
           && $Unbox(read($Heap, n#9, _module.Node.next)): ref
             == $Unbox(read($Heap, n'#3, _module.Node.next)): ref
         ==> n#9 == n'#3);
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Maybe(result#0);
  ensures {:id "id208"} _module.Maybe#Equal(result#0, #_module.Maybe.None())
     ==> !Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0);
  free ensures true;
  ensures {:id "id209"} _module.Maybe.Some_q(result#0)
     ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0);
  ensures {:id "id210"} _module.Maybe.Some_q(result#0)
     ==> _module.Maybe.get(result#0)
       == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[key#0];
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.Find (correctness)"} Impl$$_module.Map.Find(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref, key#0: Box)
   returns (result#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var prev#0: ref
     where $Is(prev#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
       && $IsAlloc(prev#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap);
  var p#0: ref
     where $Is(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
       && $IsAlloc(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap);
  var $rhs##0: ref;
  var $rhs##1: ref;
  var key##0: Box;
  var newtype$check#0: ref;

    // AddMethodImpl: Find, Impl$$_module.Map.Find
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(98,29)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type Node?<Key, Value>
    // TrCallStmt: Adding lhs with type Node?<Key, Value>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    key##0 := key#0;
    call {:id "id211"} $rhs##0, $rhs##1 := Call$$_module.Map.FindIndex(_module.Map$Key, _module.Map$Value, this, key##0);
    // TrCallStmt: After ProcessCallStmt
    prev#0 := $rhs##0;
    p#0 := $rhs##1;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(99,5)
    newtype$check#0 := null;
    assume true;
    if (p#0 == null)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(100,14)
        assume true;
        assume true;
        result#0 := Lit(#_module.Maybe.None());
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(102,14)
        assume true;
        assert {:id "id215"} p#0 != null;
        assume true;
        result#0 := #_module.Maybe.Some(read($Heap, p#0, _module.Node.val));
    }
}



procedure {:verboseName "Map.Add (well-formedness)"} CheckWellFormed$$_module.Map.Add(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    key#0: Box
       where $IsBox(key#0, _module.Map$Key) && $IsAllocBox(key#0, _module.Map$Key, $Heap), 
    val#0: Box
       where $IsBox(val#0, _module.Map$Value) && $IsAllocBox(val#0, _module.Map$Value, $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.Add (well-formedness)"} CheckWellFormed$$_module.Map.Add(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref, key#0: Box, val#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Add, CheckWellFormed$$_module.Map.Add
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Map?(_module.Map$Key, _module.Map$Value), $Heap);
    assume _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
    assume {:id "id217"} _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Map?(_module.Map$Key, _module.Map$Value), $Heap);
    assume _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
    assume {:id "id218"} _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this);
    assert {:id "id219"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
    assume {:id "id220"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    assert {:id "id221"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
    assume {:id "id222"} Map#Equal($Unbox(read($Heap, this, _module.Map.M)): Map, 
      Map#Build($Unbox(read(old($Heap), this, _module.Map.M)): Map, key#0, val#0));
}



procedure {:verboseName "Map.Add (call)"} Call$$_module.Map.Add(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    key#0: Box
       where $IsBox(key#0, _module.Map$Key) && $IsAllocBox(key#0, _module.Map$Key, $Heap), 
    val#0: Box
       where $IsBox(val#0, _module.Map$Value) && $IsAllocBox(val#0, _module.Map$Value, $Heap));
  // user-defined preconditions
  requires {:id "id223"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this));
  requires {:id "id224"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
        $Unbox(read($Heap, this, _module.Map.Repr)): Set);
  requires {:id "id225"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (_module.Map.SpineValid#canCall(_module.Map$Key, 
          _module.Map$Value, 
          $Heap, 
          $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
          $Unbox(read($Heap, this, _module.Map.head)): ref)
         ==> _module.Map.SpineValid(_module.Map$Key, 
            _module.Map$Value, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.head)): ref)
           || 
          ($Unbox(read($Heap, this, _module.Map.head)): ref == null
             && Set#Equal($Unbox(read($Heap, this, _module.Map.Spine)): Set, Set#Empty(): Set))
           || (
            $Unbox(read($Heap, this, _module.Map.head)): ref != null
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
              read($Heap, this, _module.Map.head))
             && Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
              Set#Difference($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Map.head))))
             && _module.Map.SpineValid(_module.Map$Key, 
              _module.Map$Value, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.next)): ref)));
  requires {:id "id226"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall k#0: Box :: 
        { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#0) } 
        $IsBox(k#0, _module.Map$Key)
           ==> 
          Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#0)
           ==> (exists n#0: ref :: 
            { read($Heap, n#0, _module.Node.key) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0)) } 
            $Is(n#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               && 
              Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0))
               && read($Heap, n#0, _module.Node.key) == k#0));
  requires {:id "id227"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#1: ref :: 
        { read($Heap, n#1, _module.Node.val) } 
          { read($Heap, n#1, _module.Node.key) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1)) } 
        $Is(n#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
                read($Heap, n#1, _module.Node.key)))
             && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1))
               ==> read($Heap, n#1, _module.Node.val)
                 == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#1, _module.Node.key)]));
  requires {:id "id228"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#2: ref, n'#0: ref :: 
        { read($Heap, n'#0, _module.Node.key), read($Heap, n#2, _module.Node.key) } 
          { read($Heap, n'#0, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2)) } 
          { read($Heap, n#2, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0)) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2)) } 
        $Is(n#2, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && $Is(n'#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2))
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0))
             && n#2 != n'#0
           ==> read($Heap, n#2, _module.Node.key) != read($Heap, n'#0, _module.Node.key));
  requires {:id "id229"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#3: ref :: 
        { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#3)) } 
        $Is(n#3, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#3))
           ==> $Unbox(read($Heap, n#3, _module.Node.next)): ref
             != $Unbox(read($Heap, this, _module.Map.head)): ref);
  requires {:id "id230"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#4: ref, n'#1: ref :: 
        { $Unbox(read($Heap, n'#1, _module.Node.next)): ref, $Unbox(read($Heap, n#4, _module.Node.next)): ref } 
          { $Unbox(read($Heap, n'#1, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4)) } 
          { $Unbox(read($Heap, n#4, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1)) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4)) } 
        $Is(n#4, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && $Is(n'#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4))
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1))
             && $Unbox(read($Heap, n#4, _module.Node.next)): ref
               == $Unbox(read($Heap, n'#1, _module.Node.next)): ref
           ==> n#4 == n'#1);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
  free ensures {:id "id231"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this))
     && Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.Repr)): Set)
     && _module.Map.SpineValid(_module.Map$Key, 
      _module.Map$Value, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.head)): ref)
     && (forall k#1: Box :: 
      { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#1) } 
      $IsBox(k#1, _module.Map$Key)
         ==> 
        Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#1)
         ==> (exists n#5: ref :: 
          { read($Heap, n#5, _module.Node.key) } 
            { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#5)) } 
          $Is(n#5, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && 
            Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#5))
             && read($Heap, n#5, _module.Node.key) == k#1))
     && (forall n#6: ref :: 
      { read($Heap, n#6, _module.Node.val) } 
        { read($Heap, n#6, _module.Node.key) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#6)) } 
      $Is(n#6, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#6))
             ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
              read($Heap, n#6, _module.Node.key)))
           && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#6))
             ==> read($Heap, n#6, _module.Node.val)
               == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#6, _module.Node.key)]))
     && (forall n#7: ref, n'#2: ref :: 
      { read($Heap, n'#2, _module.Node.key), read($Heap, n#7, _module.Node.key) } 
        { read($Heap, n'#2, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7)) } 
        { read($Heap, n#7, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2)) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7)) } 
      $Is(n#7, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $Is(n'#2, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7))
           && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2))
           && n#7 != n'#2
         ==> read($Heap, n#7, _module.Node.key) != read($Heap, n'#2, _module.Node.key))
     && (forall n#8: ref :: 
      { $Unbox(read($Heap, n#8, _module.Node.next)): ref } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#8)) } 
      $Is(n#8, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#8))
         ==> $Unbox(read($Heap, n#8, _module.Node.next)): ref
           != $Unbox(read($Heap, this, _module.Map.head)): ref)
     && (forall n#9: ref, n'#3: ref :: 
      { $Unbox(read($Heap, n'#3, _module.Node.next)): ref, $Unbox(read($Heap, n#9, _module.Node.next)): ref } 
        { $Unbox(read($Heap, n'#3, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9)) } 
        { $Unbox(read($Heap, n#9, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3)) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9)) } 
      $Is(n#9, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $Is(n'#3, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9))
           && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3))
           && $Unbox(read($Heap, n#9, _module.Node.next)): ref
             == $Unbox(read($Heap, n'#3, _module.Node.next)): ref
         ==> n#9 == n'#3);
  ensures {:id "id232"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id233"} Map#Equal($Unbox(read($Heap, this, _module.Map.M)): Map, 
    Map#Build($Unbox(read(old($Heap), this, _module.Map.M)): Map, key#0, val#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Map.Add (correctness)"} Impl$$_module.Map.Add(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    key#0: Box
       where $IsBox(key#0, _module.Map$Key) && $IsAllocBox(key#0, _module.Map$Key, $Heap), 
    val#0: Box
       where $IsBox(val#0, _module.Map$Value) && $IsAllocBox(val#0, _module.Map$Value, $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id234"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this))
     && Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.Repr)): Set)
     && _module.Map.SpineValid(_module.Map$Key, 
      _module.Map$Value, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.head)): ref)
     && (forall k#2: Box :: 
      { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#2) } 
      $IsBox(k#2, _module.Map$Key)
         ==> 
        Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#2)
         ==> (exists n#10: ref :: 
          { read($Heap, n#10, _module.Node.key) } 
            { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#10)) } 
          $Is(n#10, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && 
            Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#10))
             && read($Heap, n#10, _module.Node.key) == k#2))
     && (forall n#11: ref :: 
      { read($Heap, n#11, _module.Node.val) } 
        { read($Heap, n#11, _module.Node.key) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#11)) } 
      $Is(n#11, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#11))
             ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
              read($Heap, n#11, _module.Node.key)))
           && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#11))
             ==> read($Heap, n#11, _module.Node.val)
               == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#11, _module.Node.key)]))
     && (forall n#12: ref, n'#4: ref :: 
      { read($Heap, n'#4, _module.Node.key), read($Heap, n#12, _module.Node.key) } 
        { read($Heap, n'#4, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#12)) } 
        { read($Heap, n#12, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#4)) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#4)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#12)) } 
      $Is(n#12, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $Is(n'#4, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#12))
           && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#4))
           && n#12 != n'#4
         ==> read($Heap, n#12, _module.Node.key) != read($Heap, n'#4, _module.Node.key))
     && (forall n#13: ref :: 
      { $Unbox(read($Heap, n#13, _module.Node.next)): ref } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#13)) } 
      $Is(n#13, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#13))
         ==> $Unbox(read($Heap, n#13, _module.Node.next)): ref
           != $Unbox(read($Heap, this, _module.Map.head)): ref)
     && (forall n#14: ref, n'#5: ref :: 
      { $Unbox(read($Heap, n'#5, _module.Node.next)): ref, $Unbox(read($Heap, n#14, _module.Node.next)): ref } 
        { $Unbox(read($Heap, n'#5, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#14)) } 
        { $Unbox(read($Heap, n#14, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#5)) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#5)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#14)) } 
      $Is(n#14, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $Is(n'#5, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#14))
           && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#5))
           && $Unbox(read($Heap, n#14, _module.Node.next)): ref
             == $Unbox(read($Heap, n'#5, _module.Node.next)): ref
         ==> n#14 == n'#5);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
  ensures {:id "id235"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this));
  ensures {:id "id236"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
        $Unbox(read($Heap, this, _module.Map.Repr)): Set);
  ensures {:id "id237"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (_module.Map.SpineValid#canCall(_module.Map$Key, 
          _module.Map$Value, 
          $Heap, 
          $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
          $Unbox(read($Heap, this, _module.Map.head)): ref)
         ==> _module.Map.SpineValid(_module.Map$Key, 
            _module.Map$Value, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.head)): ref)
           || 
          ($Unbox(read($Heap, this, _module.Map.head)): ref == null
             && Set#Equal($Unbox(read($Heap, this, _module.Map.Spine)): Set, Set#Empty(): Set))
           || (
            $Unbox(read($Heap, this, _module.Map.head)): ref != null
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
              read($Heap, this, _module.Map.head))
             && Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
              Set#Difference($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Map.head))))
             && _module.Map.SpineValid(_module.Map$Key, 
              _module.Map$Value, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.next)): ref)));
  ensures {:id "id238"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall k#3: Box :: 
        { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#3) } 
        $IsBox(k#3, _module.Map$Key)
           ==> 
          Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#3)
           ==> (exists n#15: ref :: 
            { read($Heap, n#15, _module.Node.key) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#15)) } 
            $Is(n#15, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               && 
              Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#15))
               && read($Heap, n#15, _module.Node.key) == k#3));
  ensures {:id "id239"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#16: ref :: 
        { read($Heap, n#16, _module.Node.val) } 
          { read($Heap, n#16, _module.Node.key) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#16)) } 
        $Is(n#16, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#16))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
                read($Heap, n#16, _module.Node.key)))
             && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#16))
               ==> read($Heap, n#16, _module.Node.val)
                 == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#16, _module.Node.key)]));
  ensures {:id "id240"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#17: ref, n'#6: ref :: 
        { read($Heap, n'#6, _module.Node.key), read($Heap, n#17, _module.Node.key) } 
          { read($Heap, n'#6, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#17)) } 
          { read($Heap, n#17, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#6)) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#6)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#17)) } 
        $Is(n#17, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && $Is(n'#6, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#17))
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#6))
             && n#17 != n'#6
           ==> read($Heap, n#17, _module.Node.key) != read($Heap, n'#6, _module.Node.key));
  ensures {:id "id241"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#18: ref :: 
        { $Unbox(read($Heap, n#18, _module.Node.next)): ref } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#18)) } 
        $Is(n#18, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#18))
           ==> $Unbox(read($Heap, n#18, _module.Node.next)): ref
             != $Unbox(read($Heap, this, _module.Map.head)): ref);
  ensures {:id "id242"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#19: ref, n'#7: ref :: 
        { $Unbox(read($Heap, n'#7, _module.Node.next)): ref, $Unbox(read($Heap, n#19, _module.Node.next)): ref } 
          { $Unbox(read($Heap, n'#7, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#19)) } 
          { $Unbox(read($Heap, n#19, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#7)) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#7)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#19)) } 
        $Is(n#19, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && $Is(n'#7, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#19))
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#7))
             && $Unbox(read($Heap, n#19, _module.Node.next)): ref
               == $Unbox(read($Heap, n'#7, _module.Node.next)): ref
           ==> n#19 == n'#7);
  ensures {:id "id243"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id244"} Map#Equal($Unbox(read($Heap, this, _module.Map.M)): Map, 
    Map#Build($Unbox(read(old($Heap), this, _module.Map.M)): Map, key#0, val#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.Add (correctness)"} Impl$$_module.Map.Add(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref, key#0: Box, val#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var prev#0: ref
     where $Is(prev#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
       && $IsAlloc(prev#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap);
  var p#0: ref
     where $Is(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
       && $IsAlloc(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap);
  var $rhs##0: ref;
  var $rhs##1: ref;
  var key##0: Box;
  var newtype$check#0: ref;
  var defass#h#0_0: bool;
  var h#0_0: ref
     where defass#h#0_0
       ==> $Is(h#0_0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(h#0_0, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap);
  var $nw: ref;
  var key##0_0: Box;
  var val##0_0: Box;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0_0: ref;
  var $rhs#0_1: Set;
  var $obj2: ref;
  var $rhs#0_2: ref;
  var $rhs#0_3: Set;
  var $rhs#0_4: Set;
  var $rhs#0_5: Map;
  var $rhs#1_0: Box;
  var $rhs#1_1: Map;
  var s'#1_0: Set
     where $Is(s'#1_0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)))
       && $IsAlloc(s'#1_0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), $Heap);
  var p'#1_0: ref
     where $Is(p'#1_0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
       && $IsAlloc(p'#1_0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap);
  var $rhs#1_2: Set;
  var $rhs#1_3: ref;
  var $PreLoopHeap$loop#1_0: Heap;
  var $decr_init$loop#1_00: Set;
  var $w$loop#1_0: bool;
  var ##spine#1_0: Set;
  var ##n#1_0: ref;
  var ##spine#1_1: Set;
  var ##n#1_1: ref;
  var ##spine#1_2: Set;
  var ##n#1_2: ref;
  var ##spine#1_3: Set;
  var ##n#1_3: ref;
  var newtype$check#1_0: ref;
  var $decr$loop#1_00: Set;
  var $rhs#1_0_0: Set;
  var $rhs#1_0_1: ref;

    // AddMethodImpl: Add, Impl$$_module.Map.Add
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(114,29)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type Node?<Key, Value>
    // TrCallStmt: Adding lhs with type Node?<Key, Value>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    key##0 := key#0;
    call {:id "id245"} $rhs##0, $rhs##1 := Call$$_module.Map.FindIndex(_module.Map$Key, _module.Map$Value, this, key##0);
    // TrCallStmt: After ProcessCallStmt
    prev#0 := $rhs##0;
    p#0 := $rhs##1;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(115,5)
    newtype$check#0 := null;
    assume true;
    if (p#0 == null)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(116,13)
        assume true;
        // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(116,16)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        key##0_0 := key#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        val##0_0 := val#0;
        call {:id "id248"} $nw := Call$$_module.Node.__ctor(_module.Map$Key, _module.Map$Value, key##0_0, val##0_0);
        // TrCallStmt: After ProcessCallStmt
        h#0_0 := $nw;
        defass#h#0_0 := true;
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(117,23)
        assert {:id "id250"} defass#h#0_0;
        assert {:id "id251"} h#0_0 != null;
        assume true;
        $obj0 := h#0_0;
        assert {:id "id252"} $_ModifiesFrame[$obj0, _module.Node.next];
        assert {:id "id253"} defass#h#0_0;
        assert {:id "id254"} h#0_0 != null;
        assume true;
        $obj1 := h#0_0;
        assert {:id "id255"} $_ModifiesFrame[$obj1, _module.Node.Spine];
        assume true;
        $rhs#0_0 := $Unbox(read($Heap, this, _module.Map.head)): ref;
        assume true;
        $rhs#0_1 := $Unbox(read($Heap, this, _module.Map.Spine)): Set;
        $Heap := update($Heap, $obj0, _module.Node.next, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        $Heap := update($Heap, $obj1, _module.Node.Spine, $Box($rhs#0_1));
        assume $IsGoodHeap($Heap);
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(118,25)
        assume true;
        $obj0 := this;
        assert {:id "id260"} $_ModifiesFrame[$obj0, _module.Map.head];
        assume true;
        $obj1 := this;
        assert {:id "id261"} $_ModifiesFrame[$obj1, _module.Map.Spine];
        assume true;
        $obj2 := this;
        assert {:id "id262"} $_ModifiesFrame[$obj2, _module.Map.Repr];
        assert {:id "id263"} defass#h#0_0;
        assume true;
        $rhs#0_2 := h#0_0;
        assert {:id "id265"} defass#h#0_0;
        assume true;
        $rhs#0_3 := Set#Union($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(h#0_0)));
        assert {:id "id267"} defass#h#0_0;
        assume true;
        $rhs#0_4 := Set#Union($Unbox(read($Heap, this, _module.Map.Repr)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(h#0_0)));
        $Heap := update($Heap, $obj0, _module.Map.head, $Box($rhs#0_2));
        assume $IsGoodHeap($Heap);
        $Heap := update($Heap, $obj1, _module.Map.Spine, $Box($rhs#0_3));
        assume $IsGoodHeap($Heap);
        $Heap := update($Heap, $obj2, _module.Map.Repr, $Box($rhs#0_4));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(119,9)
        assume true;
        assert {:id "id272"} $_ModifiesFrame[this, _module.Map.M];
        assume true;
        $rhs#0_5 := Map#Build($Unbox(read($Heap, this, _module.Map.M)): Map, key#0, val#0);
        $Heap := update($Heap, this, _module.Map.M, $Box($rhs#0_5));
        assume $IsGoodHeap($Heap);
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(121,13)
        assert {:id "id275"} p#0 != null;
        assume true;
        assert {:id "id276"} $_ModifiesFrame[p#0, _module.Node.val];
        assume true;
        $rhs#1_0 := val#0;
        $Heap := update($Heap, p#0, _module.Node.val, $rhs#1_0);
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(122,9)
        assume true;
        assert {:id "id279"} $_ModifiesFrame[this, _module.Map.M];
        assume true;
        $rhs#1_1 := Map#Build($Unbox(read($Heap, this, _module.Map.M)): Map, key#0, val#0);
        $Heap := update($Heap, this, _module.Map.M, $Box($rhs#1_1));
        assume $IsGoodHeap($Heap);
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(126,24)
        assume true;
        assume true;
        assume true;
        $rhs#1_2 := $Unbox(read($Heap, this, _module.Map.Spine)): Set;
        assume true;
        $rhs#1_3 := $Unbox(read($Heap, this, _module.Map.head)): ref;
        s'#1_0 := $rhs#1_2;
        p'#1_0 := $rhs#1_3;
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(127,7)
        // Assume Fuel Constant
        $PreLoopHeap$loop#1_0 := $Heap;
        $decr_init$loop#1_00 := s'#1_0;
        havoc $w$loop#1_0;
        while (true)
          free invariant true;
          invariant {:id "id287"} $w$loop#1_0
             ==> $IsAllocBox($Box(p'#1_0), 
              Tclass._module.Node?(_module.Map$Key, _module.Map$Value), 
              old($Heap));
          free invariant $w$loop#1_0
             ==> _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, old($Heap), s'#1_0, p'#1_0);
          invariant {:id "id291"} $w$loop#1_0
             ==> 
            _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, old($Heap), s'#1_0, p'#1_0)
             ==> _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($LZ), old($Heap), s'#1_0, p'#1_0)
               || 
              (p'#1_0 == null && Set#Equal(s'#1_0, Set#Empty(): Set))
               || (
                p'#1_0 != null
                 && Set#IsMember(s'#1_0, $Box(p'#1_0))
                 && Set#Equal($Unbox(read(old($Heap), p'#1_0, _module.Node.Spine)): Set, 
                  Set#Difference(s'#1_0, Set#UnionOne(Set#Empty(): Set, $Box(p'#1_0))))
                 && _module.Map.SpineValid(_module.Map$Key, 
                  _module.Map$Value, 
                  $LS($LS($LZ)), 
                  old($Heap), 
                  $Unbox(read(old($Heap), p'#1_0, _module.Node.Spine)): Set, 
                  $Unbox(read(old($Heap), p'#1_0, _module.Node.next)): ref));
          free invariant {:id "id292"} $w$loop#1_0
             ==> _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, old($Heap), s'#1_0, p'#1_0)
               && 
              _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($LZ), old($Heap), s'#1_0, p'#1_0)
               && ((p'#1_0 == null && Set#Equal(s'#1_0, Set#Empty(): Set))
                 || (
                  p'#1_0 != null
                   && Set#IsMember(s'#1_0, $Box(p'#1_0))
                   && Set#Equal($Unbox(read(old($Heap), p'#1_0, _module.Node.Spine)): Set, 
                    Set#Difference(s'#1_0, Set#UnionOne(Set#Empty(): Set, $Box(p'#1_0))))
                   && _module.Map.SpineValid(_module.Map$Key, 
                    _module.Map$Value, 
                    $LS($LZ), 
                    old($Heap), 
                    $Unbox(read(old($Heap), p'#1_0, _module.Node.Spine)): Set, 
                    $Unbox(read(old($Heap), p'#1_0, _module.Node.next)): ref)));
          free invariant $w$loop#1_0
             ==> _module.Map.SpineValid#canCall(_module.Map$Key, 
                _module.Map$Value, 
                old($Heap), 
                $Unbox(read(old($Heap), this, _module.Map.Spine)): Set, 
                $Unbox(read(old($Heap), this, _module.Map.head)): ref)
               && (_module.Map.SpineValid(_module.Map$Key, 
                  _module.Map$Value, 
                  $LS($LZ), 
                  old($Heap), 
                  $Unbox(read(old($Heap), this, _module.Map.Spine)): Set, 
                  $Unbox(read(old($Heap), this, _module.Map.head)): ref)
                 ==> _module.Map.SpineValid#canCall(_module.Map$Key, 
                    _module.Map$Value, 
                    $Heap, 
                    $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                    $Unbox(read($Heap, this, _module.Map.head)): ref)
                   && (!_module.Map.SpineValid(_module.Map$Key, 
                      _module.Map$Value, 
                      $LS($LZ), 
                      $Heap, 
                      $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                      $Unbox(read($Heap, this, _module.Map.head)): ref)
                     ==> _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, $Heap, s'#1_0, p'#1_0)));
          invariant {:id "id298"} $w$loop#1_0
             ==> 
            _module.Map.SpineValid(_module.Map$Key, 
              _module.Map$Value, 
              $LS($LZ), 
              old($Heap), 
              $Unbox(read(old($Heap), this, _module.Map.Spine)): Set, 
              $Unbox(read(old($Heap), this, _module.Map.head)): ref)
             ==> _module.Map.SpineValid(_module.Map$Key, 
                _module.Map$Value, 
                $LS($LS($LZ)), 
                $Heap, 
                $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                $Unbox(read($Heap, this, _module.Map.head)): ref)
               || !_module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($LS($LZ)), $Heap, s'#1_0, p'#1_0);
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#1_0[$o]
                 || Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o)));
          free invariant $HeapSuccGhost($PreLoopHeap$loop#1_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#1_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#1_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant Set#Subset(s'#1_0, $decr_init$loop#1_00);
        {
            if (!$w$loop#1_0)
            {
                assume true;
                assume {:id "id286"} $IsAllocBox($Box(p'#1_0), 
                  Tclass._module.Node?(_module.Map$Key, _module.Map$Value), 
                  old($Heap));
                ##spine#1_0 := s'#1_0;
                ##n#1_0 := p'#1_0;
                assert {:id "id288"} $IsAlloc(s'#1_0, 
                  TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), 
                  old($Heap));
                assert {:id "id289"} $IsAlloc(p'#1_0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), old($Heap));
                assume _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, old($Heap), s'#1_0, p'#1_0);
                assume _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, old($Heap), s'#1_0, p'#1_0);
                assume {:id "id290"} _module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($LZ), old($Heap), s'#1_0, p'#1_0);
                assert {:id "id293"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
                ##spine#1_1 := $Unbox(read(old($Heap), this, _module.Map.Spine)): Set;
                assert {:id "id294"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
                ##n#1_1 := $Unbox(read(old($Heap), this, _module.Map.head)): ref;
                assert {:id "id295"} $IsAlloc($Unbox(read(old($Heap), this, _module.Map.Spine)): Set, 
                  TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), 
                  old($Heap));
                assert {:id "id296"} $IsAlloc($Unbox(read(old($Heap), this, _module.Map.head)): ref, 
                  Tclass._module.Node?(_module.Map$Key, _module.Map$Value), 
                  old($Heap));
                assume _module.Map.SpineValid#canCall(_module.Map$Key, 
                  _module.Map$Value, 
                  old($Heap), 
                  $Unbox(read(old($Heap), this, _module.Map.Spine)): Set, 
                  $Unbox(read(old($Heap), this, _module.Map.head)): ref);
                if (_module.Map.SpineValid(_module.Map$Key, 
                  _module.Map$Value, 
                  $LS($LZ), 
                  old($Heap), 
                  $Unbox(read(old($Heap), this, _module.Map.Spine)): Set, 
                  $Unbox(read(old($Heap), this, _module.Map.head)): ref))
                {
                    ##spine#1_2 := $Unbox(read($Heap, this, _module.Map.Spine)): Set;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##spine#1_2, 
                      TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), 
                      $Heap);
                    ##n#1_2 := $Unbox(read($Heap, this, _module.Map.head)): ref;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#1_2, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap);
                    assume _module.Map.SpineValid#canCall(_module.Map$Key, 
                      _module.Map$Value, 
                      $Heap, 
                      $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                      $Unbox(read($Heap, this, _module.Map.head)): ref);
                    if (!_module.Map.SpineValid(_module.Map$Key, 
                      _module.Map$Value, 
                      $LS($LZ), 
                      $Heap, 
                      $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                      $Unbox(read($Heap, this, _module.Map.head)): ref))
                    {
                        ##spine#1_3 := s'#1_0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##spine#1_3, 
                          TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), 
                          $Heap);
                        ##n#1_3 := p'#1_0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##n#1_3, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap);
                        assume _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, $Heap, s'#1_0, p'#1_0);
                    }
                }

                assume _module.Map.SpineValid#canCall(_module.Map$Key, 
                    _module.Map$Value, 
                    old($Heap), 
                    $Unbox(read(old($Heap), this, _module.Map.Spine)): Set, 
                    $Unbox(read(old($Heap), this, _module.Map.head)): ref)
                   && (_module.Map.SpineValid(_module.Map$Key, 
                      _module.Map$Value, 
                      $LS($LZ), 
                      old($Heap), 
                      $Unbox(read(old($Heap), this, _module.Map.Spine)): Set, 
                      $Unbox(read(old($Heap), this, _module.Map.head)): ref)
                     ==> _module.Map.SpineValid#canCall(_module.Map$Key, 
                        _module.Map$Value, 
                        $Heap, 
                        $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                        $Unbox(read($Heap, this, _module.Map.head)): ref)
                       && (!_module.Map.SpineValid(_module.Map$Key, 
                          _module.Map$Value, 
                          $LS($LZ), 
                          $Heap, 
                          $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                          $Unbox(read($Heap, this, _module.Map.head)): ref)
                         ==> _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, $Heap, s'#1_0, p'#1_0)));
                assume {:id "id297"} _module.Map.SpineValid(_module.Map$Key, 
                    _module.Map$Value, 
                    $LS($LZ), 
                    old($Heap), 
                    $Unbox(read(old($Heap), this, _module.Map.Spine)): Set, 
                    $Unbox(read(old($Heap), this, _module.Map.head)): ref)
                   ==> _module.Map.SpineValid(_module.Map$Key, 
                      _module.Map$Value, 
                      $LS($LZ), 
                      $Heap, 
                      $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                      $Unbox(read($Heap, this, _module.Map.head)): ref)
                     || !_module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($LZ), $Heap, s'#1_0, p'#1_0);
                assume true;
                assume false;
            }

            newtype$check#1_0 := null;
            assume true;
            if (p'#1_0 == null)
            {
                break;
            }

            $decr$loop#1_00 := s'#1_0;
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(133,16)
            assume true;
            assume true;
            assert {:id "id299"} p'#1_0 != null;
            assume true;
            $rhs#1_0_0 := $Unbox(read($Heap, p'#1_0, _module.Node.Spine)): Set;
            assert {:id "id301"} p'#1_0 != null;
            assume true;
            $rhs#1_0_1 := $Unbox(read($Heap, p'#1_0, _module.Node.next)): ref;
            s'#1_0 := $rhs#1_0_0;
            p'#1_0 := $rhs#1_0_1;
            // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(127,7)
            assert {:id "id305"} Set#Subset(s'#1_0, $decr$loop#1_00) && !Set#Subset($decr$loop#1_00, s'#1_0);
            assume $IsAllocBox($Box(p'#1_0), 
                Tclass._module.Node?(_module.Map$Key, _module.Map$Value), 
                old($Heap))
               ==> _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, old($Heap), s'#1_0, p'#1_0)
                 && (_module.Map.SpineValid(_module.Map$Key, _module.Map$Value, $LS($LZ), old($Heap), s'#1_0, p'#1_0)
                   ==> _module.Map.SpineValid#canCall(_module.Map$Key, 
                      _module.Map$Value, 
                      old($Heap), 
                      $Unbox(read(old($Heap), this, _module.Map.Spine)): Set, 
                      $Unbox(read(old($Heap), this, _module.Map.head)): ref)
                     && (_module.Map.SpineValid(_module.Map$Key, 
                        _module.Map$Value, 
                        $LS($LZ), 
                        old($Heap), 
                        $Unbox(read(old($Heap), this, _module.Map.Spine)): Set, 
                        $Unbox(read(old($Heap), this, _module.Map.head)): ref)
                       ==> _module.Map.SpineValid#canCall(_module.Map$Key, 
                          _module.Map$Value, 
                          $Heap, 
                          $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                          $Unbox(read($Heap, this, _module.Map.head)): ref)
                         && (!_module.Map.SpineValid(_module.Map$Key, 
                            _module.Map$Value, 
                            $LS($LZ), 
                            $Heap, 
                            $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                            $Unbox(read($Heap, this, _module.Map.head)): ref)
                           ==> _module.Map.SpineValid#canCall(_module.Map$Key, _module.Map$Value, $Heap, s'#1_0, p'#1_0))));
        }
    }
}



procedure {:verboseName "Map.Remove (well-formedness)"} {:rlimit 3000000} {:vcs_split_on_every_assert} CheckWellFormed$$_module.Map.Remove(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    key#0: Box
       where $IsBox(key#0, _module.Map$Key) && $IsAllocBox(key#0, _module.Map$Key, $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.Remove (well-formedness)"} {:rlimit 3000000} {:vcs_split_on_every_assert} CheckWellFormed$$_module.Map.Remove(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref, key#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: Box;


    // AddMethodImpl: Remove, CheckWellFormed$$_module.Map.Remove
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Map?(_module.Map$Key, _module.Map$Value), $Heap);
    assume _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
    assume {:id "id306"} _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Map?(_module.Map$Key, _module.Map$Value), $Heap);
    assume _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
    assume {:id "id307"} _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this);
    assert {:id "id308"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
    assume {:id "id309"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    // Begin Comprehension WF check
    havoc k#0;
    if ($IsBox(k#0, _module.Map$Key) && $IsAllocBox(k#0, _module.Map$Key, $Heap))
    {
        assert {:id "id310"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
        if (Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, _module.Map.M)): Map), k#0))
        {
        }

        if (Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, _module.Map.M)): Map), k#0)
           && k#0 != key#0)
        {
            assert {:id "id311"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
            assert {:id "id312"} Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, _module.Map.M)): Map), k#0);
        }
    }

    // End Comprehension WF check
    assume {:id "id313"} Map#Equal($Unbox(read($Heap, this, _module.Map.M)): Map, 
      Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
            $IsBox($w#0, _module.Map$Key)
               && 
              Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, _module.Map.M)): Map), $w#0)
               && $w#0 != key#0)), 
        (lambda $w#0: Box :: 
          Map#Elements($Unbox(read(old($Heap), this, _module.Map.M)): Map)[$w#0]), 
        TMap(_module.Map$Key, _module.Map$Value)));
}



procedure {:verboseName "Map.Remove (call)"} {:rlimit 3000000} {:vcs_split_on_every_assert} Call$$_module.Map.Remove(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    key#0: Box
       where $IsBox(key#0, _module.Map$Key) && $IsAllocBox(key#0, _module.Map$Key, $Heap));
  // user-defined preconditions
  requires {:id "id314"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this));
  requires {:id "id315"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
        $Unbox(read($Heap, this, _module.Map.Repr)): Set);
  requires {:id "id316"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (_module.Map.SpineValid#canCall(_module.Map$Key, 
          _module.Map$Value, 
          $Heap, 
          $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
          $Unbox(read($Heap, this, _module.Map.head)): ref)
         ==> _module.Map.SpineValid(_module.Map$Key, 
            _module.Map$Value, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.head)): ref)
           || 
          ($Unbox(read($Heap, this, _module.Map.head)): ref == null
             && Set#Equal($Unbox(read($Heap, this, _module.Map.Spine)): Set, Set#Empty(): Set))
           || (
            $Unbox(read($Heap, this, _module.Map.head)): ref != null
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
              read($Heap, this, _module.Map.head))
             && Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
              Set#Difference($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Map.head))))
             && _module.Map.SpineValid(_module.Map$Key, 
              _module.Map$Value, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.next)): ref)));
  requires {:id "id317"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall k#1: Box :: 
        { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#1) } 
        $IsBox(k#1, _module.Map$Key)
           ==> 
          Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#1)
           ==> (exists n#0: ref :: 
            { read($Heap, n#0, _module.Node.key) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0)) } 
            $Is(n#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               && 
              Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0))
               && read($Heap, n#0, _module.Node.key) == k#1));
  requires {:id "id318"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#1: ref :: 
        { read($Heap, n#1, _module.Node.val) } 
          { read($Heap, n#1, _module.Node.key) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1)) } 
        $Is(n#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
                read($Heap, n#1, _module.Node.key)))
             && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1))
               ==> read($Heap, n#1, _module.Node.val)
                 == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#1, _module.Node.key)]));
  requires {:id "id319"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#2: ref, n'#0: ref :: 
        { read($Heap, n'#0, _module.Node.key), read($Heap, n#2, _module.Node.key) } 
          { read($Heap, n'#0, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2)) } 
          { read($Heap, n#2, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0)) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2)) } 
        $Is(n#2, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && $Is(n'#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2))
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0))
             && n#2 != n'#0
           ==> read($Heap, n#2, _module.Node.key) != read($Heap, n'#0, _module.Node.key));
  requires {:id "id320"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#3: ref :: 
        { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#3)) } 
        $Is(n#3, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#3))
           ==> $Unbox(read($Heap, n#3, _module.Node.next)): ref
             != $Unbox(read($Heap, this, _module.Map.head)): ref);
  requires {:id "id321"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#4: ref, n'#1: ref :: 
        { $Unbox(read($Heap, n'#1, _module.Node.next)): ref, $Unbox(read($Heap, n#4, _module.Node.next)): ref } 
          { $Unbox(read($Heap, n'#1, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4)) } 
          { $Unbox(read($Heap, n#4, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1)) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4)) } 
        $Is(n#4, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && $Is(n'#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4))
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1))
             && $Unbox(read($Heap, n#4, _module.Node.next)): ref
               == $Unbox(read($Heap, n'#1, _module.Node.next)): ref
           ==> n#4 == n'#1);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
  free ensures {:id "id322"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this))
     && Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.Repr)): Set)
     && _module.Map.SpineValid(_module.Map$Key, 
      _module.Map$Value, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.head)): ref)
     && (forall k#2: Box :: 
      { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#2) } 
      $IsBox(k#2, _module.Map$Key)
         ==> 
        Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#2)
         ==> (exists n#5: ref :: 
          { read($Heap, n#5, _module.Node.key) } 
            { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#5)) } 
          $Is(n#5, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && 
            Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#5))
             && read($Heap, n#5, _module.Node.key) == k#2))
     && (forall n#6: ref :: 
      { read($Heap, n#6, _module.Node.val) } 
        { read($Heap, n#6, _module.Node.key) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#6)) } 
      $Is(n#6, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#6))
             ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
              read($Heap, n#6, _module.Node.key)))
           && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#6))
             ==> read($Heap, n#6, _module.Node.val)
               == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#6, _module.Node.key)]))
     && (forall n#7: ref, n'#2: ref :: 
      { read($Heap, n'#2, _module.Node.key), read($Heap, n#7, _module.Node.key) } 
        { read($Heap, n'#2, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7)) } 
        { read($Heap, n#7, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2)) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7)) } 
      $Is(n#7, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $Is(n'#2, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7))
           && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2))
           && n#7 != n'#2
         ==> read($Heap, n#7, _module.Node.key) != read($Heap, n'#2, _module.Node.key))
     && (forall n#8: ref :: 
      { $Unbox(read($Heap, n#8, _module.Node.next)): ref } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#8)) } 
      $Is(n#8, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#8))
         ==> $Unbox(read($Heap, n#8, _module.Node.next)): ref
           != $Unbox(read($Heap, this, _module.Map.head)): ref)
     && (forall n#9: ref, n'#3: ref :: 
      { $Unbox(read($Heap, n'#3, _module.Node.next)): ref, $Unbox(read($Heap, n#9, _module.Node.next)): ref } 
        { $Unbox(read($Heap, n'#3, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9)) } 
        { $Unbox(read($Heap, n#9, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3)) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9)) } 
      $Is(n#9, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $Is(n'#3, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9))
           && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3))
           && $Unbox(read($Heap, n#9, _module.Node.next)): ref
             == $Unbox(read($Heap, n'#3, _module.Node.next)): ref
         ==> n#9 == n'#3);
  ensures {:id "id323"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id324"} Map#Equal($Unbox(read($Heap, this, _module.Map.M)): Map, 
    Map#Glue(Set#FromBoogieMap((lambda $w#1: Box :: 
          $IsBox($w#1, _module.Map$Key)
             && 
            Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, _module.Map.M)): Map), $w#1)
             && $w#1 != key#0)), 
      (lambda $w#1: Box :: 
        Map#Elements($Unbox(read(old($Heap), this, _module.Map.M)): Map)[$w#1]), 
      TMap(_module.Map$Key, _module.Map$Value)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Map.Remove (correctness)"} {:rlimit 3000000} {:vcs_split_on_every_assert} Impl$$_module.Map.Remove(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    key#0: Box
       where $IsBox(key#0, _module.Map$Key) && $IsAllocBox(key#0, _module.Map$Key, $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id325"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this))
     && Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.Repr)): Set)
     && _module.Map.SpineValid(_module.Map$Key, 
      _module.Map$Value, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.head)): ref)
     && (forall k#4: Box :: 
      { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#4) } 
      $IsBox(k#4, _module.Map$Key)
         ==> 
        Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#4)
         ==> (exists n#10: ref :: 
          { read($Heap, n#10, _module.Node.key) } 
            { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#10)) } 
          $Is(n#10, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && 
            Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#10))
             && read($Heap, n#10, _module.Node.key) == k#4))
     && (forall n#11: ref :: 
      { read($Heap, n#11, _module.Node.val) } 
        { read($Heap, n#11, _module.Node.key) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#11)) } 
      $Is(n#11, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#11))
             ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
              read($Heap, n#11, _module.Node.key)))
           && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#11))
             ==> read($Heap, n#11, _module.Node.val)
               == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#11, _module.Node.key)]))
     && (forall n#12: ref, n'#4: ref :: 
      { read($Heap, n'#4, _module.Node.key), read($Heap, n#12, _module.Node.key) } 
        { read($Heap, n'#4, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#12)) } 
        { read($Heap, n#12, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#4)) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#4)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#12)) } 
      $Is(n#12, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $Is(n'#4, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#12))
           && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#4))
           && n#12 != n'#4
         ==> read($Heap, n#12, _module.Node.key) != read($Heap, n'#4, _module.Node.key))
     && (forall n#13: ref :: 
      { $Unbox(read($Heap, n#13, _module.Node.next)): ref } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#13)) } 
      $Is(n#13, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#13))
         ==> $Unbox(read($Heap, n#13, _module.Node.next)): ref
           != $Unbox(read($Heap, this, _module.Map.head)): ref)
     && (forall n#14: ref, n'#5: ref :: 
      { $Unbox(read($Heap, n'#5, _module.Node.next)): ref, $Unbox(read($Heap, n#14, _module.Node.next)): ref } 
        { $Unbox(read($Heap, n'#5, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#14)) } 
        { $Unbox(read($Heap, n#14, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#5)) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#5)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#14)) } 
      $Is(n#14, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $Is(n'#5, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#14))
           && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#5))
           && $Unbox(read($Heap, n#14, _module.Node.next)): ref
             == $Unbox(read($Heap, n'#5, _module.Node.next)): ref
         ==> n#14 == n'#5);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
  ensures {:id "id326"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this));
  ensures {:id "id327"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
        $Unbox(read($Heap, this, _module.Map.Repr)): Set);
  ensures {:id "id328"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (_module.Map.SpineValid#canCall(_module.Map$Key, 
          _module.Map$Value, 
          $Heap, 
          $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
          $Unbox(read($Heap, this, _module.Map.head)): ref)
         ==> _module.Map.SpineValid(_module.Map$Key, 
            _module.Map$Value, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.head)): ref)
           || 
          ($Unbox(read($Heap, this, _module.Map.head)): ref == null
             && Set#Equal($Unbox(read($Heap, this, _module.Map.Spine)): Set, Set#Empty(): Set))
           || (
            $Unbox(read($Heap, this, _module.Map.head)): ref != null
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
              read($Heap, this, _module.Map.head))
             && Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
              Set#Difference($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Map.head))))
             && _module.Map.SpineValid(_module.Map$Key, 
              _module.Map$Value, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.next)): ref)));
  ensures {:id "id329"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall k#5: Box :: 
        { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#5) } 
        $IsBox(k#5, _module.Map$Key)
           ==> 
          Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#5)
           ==> (exists n#15: ref :: 
            { read($Heap, n#15, _module.Node.key) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#15)) } 
            $Is(n#15, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               && 
              Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#15))
               && read($Heap, n#15, _module.Node.key) == k#5));
  ensures {:id "id330"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#16: ref :: 
        { read($Heap, n#16, _module.Node.val) } 
          { read($Heap, n#16, _module.Node.key) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#16)) } 
        $Is(n#16, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#16))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
                read($Heap, n#16, _module.Node.key)))
             && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#16))
               ==> read($Heap, n#16, _module.Node.val)
                 == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#16, _module.Node.key)]));
  ensures {:id "id331"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#17: ref, n'#6: ref :: 
        { read($Heap, n'#6, _module.Node.key), read($Heap, n#17, _module.Node.key) } 
          { read($Heap, n'#6, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#17)) } 
          { read($Heap, n#17, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#6)) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#6)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#17)) } 
        $Is(n#17, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && $Is(n'#6, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#17))
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#6))
             && n#17 != n'#6
           ==> read($Heap, n#17, _module.Node.key) != read($Heap, n'#6, _module.Node.key));
  ensures {:id "id332"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#18: ref :: 
        { $Unbox(read($Heap, n#18, _module.Node.next)): ref } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#18)) } 
        $Is(n#18, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#18))
           ==> $Unbox(read($Heap, n#18, _module.Node.next)): ref
             != $Unbox(read($Heap, this, _module.Map.head)): ref);
  ensures {:id "id333"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#19: ref, n'#7: ref :: 
        { $Unbox(read($Heap, n'#7, _module.Node.next)): ref, $Unbox(read($Heap, n#19, _module.Node.next)): ref } 
          { $Unbox(read($Heap, n'#7, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#19)) } 
          { $Unbox(read($Heap, n#19, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#7)) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#7)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#19)) } 
        $Is(n#19, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && $Is(n'#7, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#19))
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#7))
             && $Unbox(read($Heap, n#19, _module.Node.next)): ref
               == $Unbox(read($Heap, n'#7, _module.Node.next)): ref
           ==> n#19 == n'#7);
  ensures {:id "id334"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id335"} Map#Equal($Unbox(read($Heap, this, _module.Map.M)): Map, 
    Map#Glue(Set#FromBoogieMap((lambda $w#2: Box :: 
          $IsBox($w#2, _module.Map$Key)
             && 
            Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, _module.Map.M)): Map), $w#2)
             && $w#2 != key#0)), 
      (lambda $w#2: Box :: 
        Map#Elements($Unbox(read(old($Heap), this, _module.Map.M)): Map)[$w#2]), 
      TMap(_module.Map$Key, _module.Map$Value)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.Remove (correctness)"} {:rlimit 3000000} {:vcs_split_on_every_assert} Impl$$_module.Map.Remove(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref, key#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var prev#0: ref
     where $Is(prev#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
       && $IsAlloc(prev#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap);
  var p#0: ref
     where $Is(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value))
       && $IsAlloc(p#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap);
  var $rhs##0: ref;
  var $rhs##1: ref;
  var key##0: Box;
  var newtype$check#0: ref;
  var newtype$check#0_0: ref;
  var key##0_0_0: Box;
  var p##0_0_0: ref;
  var key##0_1_0: Box;
  var prev##0_1_0: ref;
  var p##0_1_0: ref;

    // AddMethodImpl: Remove, Impl$$_module.Map.Remove
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(145,29)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type Node?<Key, Value>
    // TrCallStmt: Adding lhs with type Node?<Key, Value>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    key##0 := key#0;
    call {:id "id336"} $rhs##0, $rhs##1 := Call$$_module.Map.FindIndex(_module.Map$Key, _module.Map$Value, this, key##0);
    // TrCallStmt: After ProcessCallStmt
    prev#0 := $rhs##0;
    p#0 := $rhs##1;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(146,5)
    newtype$check#0 := null;
    assume true;
    if (p#0 != null)
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(147,7)
        newtype$check#0_0 := null;
        assume true;
        if (prev#0 == null)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(148,20)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assume true;
            // ProcessCallStmt: CheckSubrange
            key##0_0_0 := key#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id339"} $Is(p#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value));
            p##0_0_0 := p#0;
            assert {:id "id340"} (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
                 ==> $_ModifiesFrame[$o, $f]);
            call {:id "id341"} Call$$_module.Map.RemoveFirst(_module.Map$Key, _module.Map$Value, this, key##0_0_0, p##0_0_0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(150,23)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assume true;
            // ProcessCallStmt: CheckSubrange
            key##0_1_0 := key#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id342"} $Is(prev#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value));
            prev##0_1_0 := prev#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id343"} $Is(p#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value));
            p##0_1_0 := p#0;
            assert {:id "id344"} (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
                 ==> $_ModifiesFrame[$o, $f]);
            call {:id "id345"} Call$$_module.Map.RemoveNonFirst(_module.Map$Key, _module.Map$Value, this, key##0_1_0, prev##0_1_0, p##0_1_0);
            // TrCallStmt: After ProcessCallStmt
        }
    }
    else
    {
    }
}



procedure {:verboseName "Map.RemoveFirst (well-formedness)"} CheckWellFormed$$_module.Map.RemoveFirst(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    key#0: Box
       where $IsBox(key#0, _module.Map$Key) && $IsAllocBox(key#0, _module.Map$Key, $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(p#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.RemoveFirst (well-formedness)"} CheckWellFormed$$_module.Map.RemoveFirst(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref, key#0: Box, p#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: Box;


    // AddMethodImpl: RemoveFirst, CheckWellFormed$$_module.Map.RemoveFirst
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Map?(_module.Map$Key, _module.Map$Value), $Heap);
    assume _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
    assume {:id "id346"} _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this);
    assume {:id "id347"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0);
    assume {:id "id348"} p#0 == $Unbox(read($Heap, this, _module.Map.head)): ref;
    assume {:id "id349"} Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(p#0));
    assert {:id "id350"} p#0 != null;
    assume {:id "id351"} read($Heap, p#0, _module.Node.key) == key#0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Map?(_module.Map$Key, _module.Map$Value), $Heap);
    assume _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
    assume {:id "id352"} _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this);
    assert {:id "id353"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
    assume {:id "id354"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    // Begin Comprehension WF check
    havoc k#0;
    if ($IsBox(k#0, _module.Map$Key) && $IsAllocBox(k#0, _module.Map$Key, $Heap))
    {
        assert {:id "id355"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
        if (Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, _module.Map.M)): Map), k#0))
        {
        }

        if (Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, _module.Map.M)): Map), k#0)
           && k#0 != key#0)
        {
            assert {:id "id356"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
            assert {:id "id357"} Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, _module.Map.M)): Map), k#0);
        }
    }

    // End Comprehension WF check
    assume {:id "id358"} Map#Equal($Unbox(read($Heap, this, _module.Map.M)): Map, 
      Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
            $IsBox($w#0, _module.Map$Key)
               && 
              Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, _module.Map.M)): Map), $w#0)
               && $w#0 != key#0)), 
        (lambda $w#0: Box :: 
          Map#Elements($Unbox(read(old($Heap), this, _module.Map.M)): Map)[$w#0]), 
        TMap(_module.Map$Key, _module.Map$Value)));
}



procedure {:verboseName "Map.RemoveFirst (call)"} Call$$_module.Map.RemoveFirst(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    key#0: Box
       where $IsBox(key#0, _module.Map$Key) && $IsAllocBox(key#0, _module.Map$Key, $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(p#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap));
  // user-defined preconditions
  requires {:id "id359"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this));
  requires {:id "id360"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
        $Unbox(read($Heap, this, _module.Map.Repr)): Set);
  requires {:id "id361"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (_module.Map.SpineValid#canCall(_module.Map$Key, 
          _module.Map$Value, 
          $Heap, 
          $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
          $Unbox(read($Heap, this, _module.Map.head)): ref)
         ==> _module.Map.SpineValid(_module.Map$Key, 
            _module.Map$Value, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.head)): ref)
           || 
          ($Unbox(read($Heap, this, _module.Map.head)): ref == null
             && Set#Equal($Unbox(read($Heap, this, _module.Map.Spine)): Set, Set#Empty(): Set))
           || (
            $Unbox(read($Heap, this, _module.Map.head)): ref != null
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
              read($Heap, this, _module.Map.head))
             && Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
              Set#Difference($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Map.head))))
             && _module.Map.SpineValid(_module.Map$Key, 
              _module.Map$Value, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.next)): ref)));
  requires {:id "id362"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall k#1: Box :: 
        { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#1) } 
        $IsBox(k#1, _module.Map$Key)
           ==> 
          Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#1)
           ==> (exists n#0: ref :: 
            { read($Heap, n#0, _module.Node.key) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0)) } 
            $Is(n#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               && 
              Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0))
               && read($Heap, n#0, _module.Node.key) == k#1));
  requires {:id "id363"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#1: ref :: 
        { read($Heap, n#1, _module.Node.val) } 
          { read($Heap, n#1, _module.Node.key) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1)) } 
        $Is(n#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
                read($Heap, n#1, _module.Node.key)))
             && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1))
               ==> read($Heap, n#1, _module.Node.val)
                 == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#1, _module.Node.key)]));
  requires {:id "id364"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#2: ref, n'#0: ref :: 
        { read($Heap, n'#0, _module.Node.key), read($Heap, n#2, _module.Node.key) } 
          { read($Heap, n'#0, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2)) } 
          { read($Heap, n#2, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0)) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2)) } 
        $Is(n#2, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && $Is(n'#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2))
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0))
             && n#2 != n'#0
           ==> read($Heap, n#2, _module.Node.key) != read($Heap, n'#0, _module.Node.key));
  requires {:id "id365"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#3: ref :: 
        { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#3)) } 
        $Is(n#3, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#3))
           ==> $Unbox(read($Heap, n#3, _module.Node.next)): ref
             != $Unbox(read($Heap, this, _module.Map.head)): ref);
  requires {:id "id366"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#4: ref, n'#1: ref :: 
        { $Unbox(read($Heap, n'#1, _module.Node.next)): ref, $Unbox(read($Heap, n#4, _module.Node.next)): ref } 
          { $Unbox(read($Heap, n'#1, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4)) } 
          { $Unbox(read($Heap, n#4, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1)) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4)) } 
        $Is(n#4, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && $Is(n'#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4))
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1))
             && $Unbox(read($Heap, n#4, _module.Node.next)): ref
               == $Unbox(read($Heap, n'#1, _module.Node.next)): ref
           ==> n#4 == n'#1);
  requires {:id "id367"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0);
  requires {:id "id368"} p#0 == $Unbox(read($Heap, this, _module.Map.head)): ref;
  requires {:id "id369"} Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(p#0));
  requires {:id "id370"} read($Heap, p#0, _module.Node.key) == key#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
  free ensures {:id "id371"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this))
     && Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.Repr)): Set)
     && _module.Map.SpineValid(_module.Map$Key, 
      _module.Map$Value, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.head)): ref)
     && (forall k#2: Box :: 
      { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#2) } 
      $IsBox(k#2, _module.Map$Key)
         ==> 
        Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#2)
         ==> (exists n#5: ref :: 
          { read($Heap, n#5, _module.Node.key) } 
            { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#5)) } 
          $Is(n#5, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && 
            Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#5))
             && read($Heap, n#5, _module.Node.key) == k#2))
     && (forall n#6: ref :: 
      { read($Heap, n#6, _module.Node.val) } 
        { read($Heap, n#6, _module.Node.key) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#6)) } 
      $Is(n#6, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#6))
             ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
              read($Heap, n#6, _module.Node.key)))
           && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#6))
             ==> read($Heap, n#6, _module.Node.val)
               == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#6, _module.Node.key)]))
     && (forall n#7: ref, n'#2: ref :: 
      { read($Heap, n'#2, _module.Node.key), read($Heap, n#7, _module.Node.key) } 
        { read($Heap, n'#2, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7)) } 
        { read($Heap, n#7, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2)) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7)) } 
      $Is(n#7, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $Is(n'#2, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7))
           && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2))
           && n#7 != n'#2
         ==> read($Heap, n#7, _module.Node.key) != read($Heap, n'#2, _module.Node.key))
     && (forall n#8: ref :: 
      { $Unbox(read($Heap, n#8, _module.Node.next)): ref } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#8)) } 
      $Is(n#8, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#8))
         ==> $Unbox(read($Heap, n#8, _module.Node.next)): ref
           != $Unbox(read($Heap, this, _module.Map.head)): ref)
     && (forall n#9: ref, n'#3: ref :: 
      { $Unbox(read($Heap, n'#3, _module.Node.next)): ref, $Unbox(read($Heap, n#9, _module.Node.next)): ref } 
        { $Unbox(read($Heap, n'#3, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9)) } 
        { $Unbox(read($Heap, n#9, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3)) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9)) } 
      $Is(n#9, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $Is(n'#3, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9))
           && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3))
           && $Unbox(read($Heap, n#9, _module.Node.next)): ref
             == $Unbox(read($Heap, n'#3, _module.Node.next)): ref
         ==> n#9 == n'#3);
  ensures {:id "id372"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id373"} Map#Equal($Unbox(read($Heap, this, _module.Map.M)): Map, 
    Map#Glue(Set#FromBoogieMap((lambda $w#1: Box :: 
          $IsBox($w#1, _module.Map$Key)
             && 
            Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, _module.Map.M)): Map), $w#1)
             && $w#1 != key#0)), 
      (lambda $w#1: Box :: 
        Map#Elements($Unbox(read(old($Heap), this, _module.Map.M)): Map)[$w#1]), 
      TMap(_module.Map$Key, _module.Map$Value)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Map.RemoveFirst (correctness)"} Impl$$_module.Map.RemoveFirst(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    key#0: Box
       where $IsBox(key#0, _module.Map$Key) && $IsAllocBox(key#0, _module.Map$Key, $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(p#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id374"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this))
     && Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.Repr)): Set)
     && _module.Map.SpineValid(_module.Map$Key, 
      _module.Map$Value, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.head)): ref)
     && (forall k#4: Box :: 
      { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#4) } 
      $IsBox(k#4, _module.Map$Key)
         ==> 
        Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#4)
         ==> (exists n#10: ref :: 
          { read($Heap, n#10, _module.Node.key) } 
            { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#10)) } 
          $Is(n#10, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && 
            Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#10))
             && read($Heap, n#10, _module.Node.key) == k#4))
     && (forall n#11: ref :: 
      { read($Heap, n#11, _module.Node.val) } 
        { read($Heap, n#11, _module.Node.key) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#11)) } 
      $Is(n#11, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#11))
             ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
              read($Heap, n#11, _module.Node.key)))
           && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#11))
             ==> read($Heap, n#11, _module.Node.val)
               == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#11, _module.Node.key)]))
     && (forall n#12: ref, n'#4: ref :: 
      { read($Heap, n'#4, _module.Node.key), read($Heap, n#12, _module.Node.key) } 
        { read($Heap, n'#4, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#12)) } 
        { read($Heap, n#12, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#4)) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#4)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#12)) } 
      $Is(n#12, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $Is(n'#4, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#12))
           && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#4))
           && n#12 != n'#4
         ==> read($Heap, n#12, _module.Node.key) != read($Heap, n'#4, _module.Node.key))
     && (forall n#13: ref :: 
      { $Unbox(read($Heap, n#13, _module.Node.next)): ref } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#13)) } 
      $Is(n#13, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#13))
         ==> $Unbox(read($Heap, n#13, _module.Node.next)): ref
           != $Unbox(read($Heap, this, _module.Map.head)): ref)
     && (forall n#14: ref, n'#5: ref :: 
      { $Unbox(read($Heap, n'#5, _module.Node.next)): ref, $Unbox(read($Heap, n#14, _module.Node.next)): ref } 
        { $Unbox(read($Heap, n'#5, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#14)) } 
        { $Unbox(read($Heap, n#14, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#5)) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#5)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#14)) } 
      $Is(n#14, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $Is(n'#5, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#14))
           && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#5))
           && $Unbox(read($Heap, n#14, _module.Node.next)): ref
             == $Unbox(read($Heap, n'#5, _module.Node.next)): ref
         ==> n#14 == n'#5);
  requires {:id "id375"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0);
  requires {:id "id376"} p#0 == $Unbox(read($Heap, this, _module.Map.head)): ref;
  requires {:id "id377"} Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(p#0));
  requires {:id "id378"} read($Heap, p#0, _module.Node.key) == key#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
  ensures {:id "id379"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this));
  ensures {:id "id380"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
        $Unbox(read($Heap, this, _module.Map.Repr)): Set);
  ensures {:id "id381"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (_module.Map.SpineValid#canCall(_module.Map$Key, 
          _module.Map$Value, 
          $Heap, 
          $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
          $Unbox(read($Heap, this, _module.Map.head)): ref)
         ==> _module.Map.SpineValid(_module.Map$Key, 
            _module.Map$Value, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.head)): ref)
           || 
          ($Unbox(read($Heap, this, _module.Map.head)): ref == null
             && Set#Equal($Unbox(read($Heap, this, _module.Map.Spine)): Set, Set#Empty(): Set))
           || (
            $Unbox(read($Heap, this, _module.Map.head)): ref != null
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
              read($Heap, this, _module.Map.head))
             && Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
              Set#Difference($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Map.head))))
             && _module.Map.SpineValid(_module.Map$Key, 
              _module.Map$Value, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.next)): ref)));
  ensures {:id "id382"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall k#5: Box :: 
        { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#5) } 
        $IsBox(k#5, _module.Map$Key)
           ==> 
          Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#5)
           ==> (exists n#15: ref :: 
            { read($Heap, n#15, _module.Node.key) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#15)) } 
            $Is(n#15, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               && 
              Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#15))
               && read($Heap, n#15, _module.Node.key) == k#5));
  ensures {:id "id383"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#16: ref :: 
        { read($Heap, n#16, _module.Node.val) } 
          { read($Heap, n#16, _module.Node.key) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#16)) } 
        $Is(n#16, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#16))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
                read($Heap, n#16, _module.Node.key)))
             && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#16))
               ==> read($Heap, n#16, _module.Node.val)
                 == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#16, _module.Node.key)]));
  ensures {:id "id384"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#17: ref, n'#6: ref :: 
        { read($Heap, n'#6, _module.Node.key), read($Heap, n#17, _module.Node.key) } 
          { read($Heap, n'#6, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#17)) } 
          { read($Heap, n#17, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#6)) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#6)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#17)) } 
        $Is(n#17, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && $Is(n'#6, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#17))
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#6))
             && n#17 != n'#6
           ==> read($Heap, n#17, _module.Node.key) != read($Heap, n'#6, _module.Node.key));
  ensures {:id "id385"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#18: ref :: 
        { $Unbox(read($Heap, n#18, _module.Node.next)): ref } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#18)) } 
        $Is(n#18, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#18))
           ==> $Unbox(read($Heap, n#18, _module.Node.next)): ref
             != $Unbox(read($Heap, this, _module.Map.head)): ref);
  ensures {:id "id386"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#19: ref, n'#7: ref :: 
        { $Unbox(read($Heap, n'#7, _module.Node.next)): ref, $Unbox(read($Heap, n#19, _module.Node.next)): ref } 
          { $Unbox(read($Heap, n'#7, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#19)) } 
          { $Unbox(read($Heap, n#19, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#7)) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#7)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#19)) } 
        $Is(n#19, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && $Is(n'#7, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#19))
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#7))
             && $Unbox(read($Heap, n#19, _module.Node.next)): ref
               == $Unbox(read($Heap, n'#7, _module.Node.next)): ref
           ==> n#19 == n'#7);
  ensures {:id "id387"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id388"} Map#Equal($Unbox(read($Heap, this, _module.Map.M)): Map, 
    Map#Glue(Set#FromBoogieMap((lambda $w#2: Box :: 
          $IsBox($w#2, _module.Map$Key)
             && 
            Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, _module.Map.M)): Map), $w#2)
             && $w#2 != key#0)), 
      (lambda $w#2: Box :: 
        Map#Elements($Unbox(read(old($Heap), this, _module.Map.M)): Map)[$w#2]), 
      TMap(_module.Map$Key, _module.Map$Value)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.RemoveFirst (correctness)"} Impl$$_module.Map.RemoveFirst(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref, key#0: Box, p#0: ref)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0: Set;
  var $rhs#1: ref;
  var $rhs#2: Map;
  var k#6: Box;
  var k#0_0: Box;
  var n#0_0: ref;
  var defass#n#0_0_0: bool;
  var n#0_0_0: ref
     where defass#n#0_0_0
       ==> $Is(n#0_0_0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(n#0_0_0, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap);
  var n#0_0_1: ref;

    // AddMethodImpl: RemoveFirst, Impl$$_module.Map.RemoveFirst
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(163,17)
    assume true;
    $obj0 := this;
    assert {:id "id389"} $_ModifiesFrame[$obj0, _module.Map.Spine];
    assume true;
    $obj1 := this;
    assert {:id "id390"} $_ModifiesFrame[$obj1, _module.Map.head];
    assert {:id "id391"} $Unbox(read($Heap, this, _module.Map.head)): ref != null;
    assume true;
    $rhs#0 := $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set;
    assert {:id "id393"} $Unbox(read($Heap, this, _module.Map.head)): ref != null;
    assume true;
    $rhs#1 := $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.next)): ref;
    $Heap := update($Heap, $obj0, _module.Map.Spine, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.Map.head, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(164,7)
    assume true;
    assert {:id "id397"} $_ModifiesFrame[this, _module.Map.M];
    // Begin Comprehension WF check
    havoc k#6;
    if ($IsBox(k#6, _module.Map$Key) && $IsAllocBox(k#6, _module.Map$Key, $Heap))
    {
        if (Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#6))
        {
        }

        if (Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#6)
           && k#6 != key#0)
        {
            assert {:id "id398"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#6);
        }
    }

    // End Comprehension WF check
    assume true;
    $rhs#2 := Map#Glue(Set#FromBoogieMap((lambda $w#3: Box :: 
          $IsBox($w#3, _module.Map$Key)
             && 
            Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), $w#3)
             && $w#3 != key#0)), 
      (lambda $w#3: Box :: 
        Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[$w#3]), 
      TMap(_module.Map$Key, _module.Map$Value));
    $Heap := update($Heap, this, _module.Map.M, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(165,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc k#0_0;
        assume $IsBox(k#0_0, _module.Map$Key);
        assume true;
        assume {:id "id401"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#0_0);
        if (*)
        {
            // Begin Comprehension WF check
            havoc n#0_0;
            if ($Is(n#0_0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               && $IsAlloc(n#0_0, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap))
            {
                if (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0_0)))
                {
                    assert {:id "id402"} {:subsumption 0} n#0_0 != null;
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id403"} (exists n#0_1: ref :: 
              { read($Heap, n#0_1, _module.Node.key) } 
                { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0_1)) } 
              $Is(n#0_1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                 && 
                Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0_1))
                 && read($Heap, n#0_1, _module.Node.key) == k#0_0);
            assume false;
        }

        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(168,7)
        assume true;
        if (k#0_0 != key#0)
        {
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(169,9)
            assert {:id "id404"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
            assume true;
            assert {:id "id405"} Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, _module.Map.M)): Map), k#0_0);
            // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(170,15)
            havoc n#0_0_1;
            if ($Is(n#0_0_1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               && $IsAlloc(n#0_0_1, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap))
            {
                assert {:id "id406"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
                if (Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Spine)): Set, $Box(n#0_0_1)))
                {
                    assert {:id "id407"} {:subsumption 0} n#0_0_1 != null;
                    assert {:id "id408"} $IsAlloc(n#0_0_1, Tclass._module.Node(_module.Map$Key, _module.Map$Value), old($Heap));
                }

                assume true;
            }

            assert {:id "id409"} ($Is(null, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                 && 
                Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Spine)): Set, $Box(null))
                 && read(old($Heap), null, _module.Node.key) == k#0_0)
               || (exists $as#n0_0_0#0_0_0: ref :: 
                $Is($as#n0_0_0#0_0_0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                   && 
                  Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Spine)): Set, $Box($as#n0_0_0#0_0_0))
                   && read(old($Heap), $as#n0_0_0#0_0_0, _module.Node.key) == k#0_0);
            defass#n#0_0_0 := true;
            havoc n#0_0_0;
            assume {:id "id410"} Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Spine)): Set, $Box(n#0_0_0))
               && read(old($Heap), n#0_0_0, _module.Node.key) == k#0_0;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(171,9)
            assert {:id "id411"} defass#n#0_0_0;
            assert {:id "id412"} {:subsumption 0} n#0_0_0 != null;
            assert {:id "id413"} defass#n#0_0_0;
            assert {:id "id414"} {:subsumption 0} n#0_0_0 != null;
            assert {:id "id415"} $IsAlloc(n#0_0_0, Tclass._module.Node(_module.Map$Key, _module.Map$Value), old($Heap));
            assume true;
            assert {:id "id416"} read($Heap, n#0_0_0, _module.Node.key)
               == read(old($Heap), n#0_0_0, _module.Node.key);
        }
        else
        {
        }

        assert {:id "id417"} (exists n#0_1: ref :: 
          { read($Heap, n#0_1, _module.Node.key) } 
            { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0_1)) } 
          $Is(n#0_1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && 
            Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0_1))
             && read($Heap, n#0_1, _module.Node.key) == k#0_0);
        assume false;
    }
    else
    {
        assume (forall k#0_1: Box :: 
          { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#0_1) } 
          $IsBox(k#0_1, _module.Map$Key)
               && Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#0_1)
             ==> (exists n#0_2: ref :: 
              { read($Heap, n#0_2, _module.Node.key) } 
                { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0_2)) } 
              $Is(n#0_2, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                 && 
                Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0_2))
                 && read($Heap, n#0_2, _module.Node.key) == k#0_1));
    }
}



procedure {:verboseName "Map.RemoveNonFirst (well-formedness)"} CheckWellFormed$$_module.Map.RemoveNonFirst(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    key#0: Box
       where $IsBox(key#0, _module.Map$Key) && $IsAllocBox(key#0, _module.Map$Key, $Heap), 
    prev#0: ref
       where $Is(prev#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(prev#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(p#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.RemoveNonFirst (well-formedness)"} CheckWellFormed$$_module.Map.RemoveNonFirst(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref, 
    key#0: Box, 
    prev#0: ref, 
    p#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: Box;


    // AddMethodImpl: RemoveNonFirst, CheckWellFormed$$_module.Map.RemoveNonFirst
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Map?(_module.Map$Key, _module.Map$Value), $Heap);
    assume _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
    assume {:id "id418"} _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this);
    assume {:id "id419"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0);
    assume {:id "id420"} p#0 != $Unbox(read($Heap, this, _module.Map.head)): ref;
    assume {:id "id421"} Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(p#0));
    assert {:id "id422"} p#0 != null;
    assume {:id "id423"} read($Heap, p#0, _module.Node.key) == key#0;
    assume {:id "id424"} Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(prev#0));
    assert {:id "id425"} prev#0 != null;
    assume {:id "id426"} $Unbox(read($Heap, prev#0, _module.Node.next)): ref == p#0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Map?(_module.Map$Key, _module.Map$Value), $Heap);
    assume _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
    assume {:id "id427"} _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this);
    assert {:id "id428"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
    assume {:id "id429"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    // Begin Comprehension WF check
    havoc k#0;
    if ($IsBox(k#0, _module.Map$Key) && $IsAllocBox(k#0, _module.Map$Key, $Heap))
    {
        assert {:id "id430"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
        if (Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, _module.Map.M)): Map), k#0))
        {
        }

        if (Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, _module.Map.M)): Map), k#0)
           && k#0 != key#0)
        {
            assert {:id "id431"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
            assert {:id "id432"} Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, _module.Map.M)): Map), k#0);
        }
    }

    // End Comprehension WF check
    assume {:id "id433"} Map#Equal($Unbox(read($Heap, this, _module.Map.M)): Map, 
      Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
            $IsBox($w#0, _module.Map$Key)
               && 
              Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, _module.Map.M)): Map), $w#0)
               && $w#0 != key#0)), 
        (lambda $w#0: Box :: 
          Map#Elements($Unbox(read(old($Heap), this, _module.Map.M)): Map)[$w#0]), 
        TMap(_module.Map$Key, _module.Map$Value)));
}



procedure {:verboseName "Map.RemoveNonFirst (call)"} Call$$_module.Map.RemoveNonFirst(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    key#0: Box
       where $IsBox(key#0, _module.Map$Key) && $IsAllocBox(key#0, _module.Map$Key, $Heap), 
    prev#0: ref
       where $Is(prev#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(prev#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(p#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap));
  // user-defined preconditions
  requires {:id "id434"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this));
  requires {:id "id435"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
        $Unbox(read($Heap, this, _module.Map.Repr)): Set);
  requires {:id "id436"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (_module.Map.SpineValid#canCall(_module.Map$Key, 
          _module.Map$Value, 
          $Heap, 
          $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
          $Unbox(read($Heap, this, _module.Map.head)): ref)
         ==> _module.Map.SpineValid(_module.Map$Key, 
            _module.Map$Value, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.head)): ref)
           || 
          ($Unbox(read($Heap, this, _module.Map.head)): ref == null
             && Set#Equal($Unbox(read($Heap, this, _module.Map.Spine)): Set, Set#Empty(): Set))
           || (
            $Unbox(read($Heap, this, _module.Map.head)): ref != null
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
              read($Heap, this, _module.Map.head))
             && Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
              Set#Difference($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Map.head))))
             && _module.Map.SpineValid(_module.Map$Key, 
              _module.Map$Value, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.next)): ref)));
  requires {:id "id437"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall k#1: Box :: 
        { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#1) } 
        $IsBox(k#1, _module.Map$Key)
           ==> 
          Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#1)
           ==> (exists n#0: ref :: 
            { read($Heap, n#0, _module.Node.key) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0)) } 
            $Is(n#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               && 
              Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0))
               && read($Heap, n#0, _module.Node.key) == k#1));
  requires {:id "id438"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#1: ref :: 
        { read($Heap, n#1, _module.Node.val) } 
          { read($Heap, n#1, _module.Node.key) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1)) } 
        $Is(n#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
                read($Heap, n#1, _module.Node.key)))
             && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1))
               ==> read($Heap, n#1, _module.Node.val)
                 == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#1, _module.Node.key)]));
  requires {:id "id439"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#2: ref, n'#0: ref :: 
        { read($Heap, n'#0, _module.Node.key), read($Heap, n#2, _module.Node.key) } 
          { read($Heap, n'#0, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2)) } 
          { read($Heap, n#2, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0)) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2)) } 
        $Is(n#2, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && $Is(n'#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#2))
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#0))
             && n#2 != n'#0
           ==> read($Heap, n#2, _module.Node.key) != read($Heap, n'#0, _module.Node.key));
  requires {:id "id440"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#3: ref :: 
        { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#3)) } 
        $Is(n#3, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#3))
           ==> $Unbox(read($Heap, n#3, _module.Node.next)): ref
             != $Unbox(read($Heap, this, _module.Map.head)): ref);
  requires {:id "id441"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#4: ref, n'#1: ref :: 
        { $Unbox(read($Heap, n'#1, _module.Node.next)): ref, $Unbox(read($Heap, n#4, _module.Node.next)): ref } 
          { $Unbox(read($Heap, n'#1, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4)) } 
          { $Unbox(read($Heap, n#4, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1)) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4)) } 
        $Is(n#4, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && $Is(n'#1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#4))
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#1))
             && $Unbox(read($Heap, n#4, _module.Node.next)): ref
               == $Unbox(read($Heap, n'#1, _module.Node.next)): ref
           ==> n#4 == n'#1);
  requires {:id "id442"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0);
  requires {:id "id443"} p#0 != $Unbox(read($Heap, this, _module.Map.head)): ref;
  requires {:id "id444"} Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(p#0));
  requires {:id "id445"} read($Heap, p#0, _module.Node.key) == key#0;
  requires {:id "id446"} Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(prev#0));
  requires {:id "id447"} $Unbox(read($Heap, prev#0, _module.Node.next)): ref == p#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
  free ensures {:id "id448"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this))
     && Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.Repr)): Set)
     && _module.Map.SpineValid(_module.Map$Key, 
      _module.Map$Value, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.head)): ref)
     && (forall k#2: Box :: 
      { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#2) } 
      $IsBox(k#2, _module.Map$Key)
         ==> 
        Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#2)
         ==> (exists n#5: ref :: 
          { read($Heap, n#5, _module.Node.key) } 
            { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#5)) } 
          $Is(n#5, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && 
            Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#5))
             && read($Heap, n#5, _module.Node.key) == k#2))
     && (forall n#6: ref :: 
      { read($Heap, n#6, _module.Node.val) } 
        { read($Heap, n#6, _module.Node.key) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#6)) } 
      $Is(n#6, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#6))
             ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
              read($Heap, n#6, _module.Node.key)))
           && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#6))
             ==> read($Heap, n#6, _module.Node.val)
               == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#6, _module.Node.key)]))
     && (forall n#7: ref, n'#2: ref :: 
      { read($Heap, n'#2, _module.Node.key), read($Heap, n#7, _module.Node.key) } 
        { read($Heap, n'#2, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7)) } 
        { read($Heap, n#7, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2)) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7)) } 
      $Is(n#7, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $Is(n'#2, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#7))
           && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#2))
           && n#7 != n'#2
         ==> read($Heap, n#7, _module.Node.key) != read($Heap, n'#2, _module.Node.key))
     && (forall n#8: ref :: 
      { $Unbox(read($Heap, n#8, _module.Node.next)): ref } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#8)) } 
      $Is(n#8, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#8))
         ==> $Unbox(read($Heap, n#8, _module.Node.next)): ref
           != $Unbox(read($Heap, this, _module.Map.head)): ref)
     && (forall n#9: ref, n'#3: ref :: 
      { $Unbox(read($Heap, n'#3, _module.Node.next)): ref, $Unbox(read($Heap, n#9, _module.Node.next)): ref } 
        { $Unbox(read($Heap, n'#3, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9)) } 
        { $Unbox(read($Heap, n#9, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3)) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9)) } 
      $Is(n#9, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $Is(n'#3, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#9))
           && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#3))
           && $Unbox(read($Heap, n#9, _module.Node.next)): ref
             == $Unbox(read($Heap, n'#3, _module.Node.next)): ref
         ==> n#9 == n'#3);
  ensures {:id "id449"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id450"} Map#Equal($Unbox(read($Heap, this, _module.Map.M)): Map, 
    Map#Glue(Set#FromBoogieMap((lambda $w#1: Box :: 
          $IsBox($w#1, _module.Map$Key)
             && 
            Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, _module.Map.M)): Map), $w#1)
             && $w#1 != key#0)), 
      (lambda $w#1: Box :: 
        Map#Elements($Unbox(read(old($Heap), this, _module.Map.M)): Map)[$w#1]), 
      TMap(_module.Map$Key, _module.Map$Value)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Map.RemoveNonFirst (correctness)"} Impl$$_module.Map.RemoveNonFirst(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    key#0: Box
       where $IsBox(key#0, _module.Map$Key) && $IsAllocBox(key#0, _module.Map$Key, $Heap), 
    prev#0: ref
       where $Is(prev#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(prev#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(p#0, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id451"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this))
     && Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.Repr)): Set)
     && _module.Map.SpineValid(_module.Map$Key, 
      _module.Map$Value, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.head)): ref)
     && (forall k#4: Box :: 
      { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#4) } 
      $IsBox(k#4, _module.Map$Key)
         ==> 
        Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#4)
         ==> (exists n#10: ref :: 
          { read($Heap, n#10, _module.Node.key) } 
            { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#10)) } 
          $Is(n#10, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && 
            Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#10))
             && read($Heap, n#10, _module.Node.key) == k#4))
     && (forall n#11: ref :: 
      { read($Heap, n#11, _module.Node.val) } 
        { read($Heap, n#11, _module.Node.key) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#11)) } 
      $Is(n#11, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#11))
             ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
              read($Heap, n#11, _module.Node.key)))
           && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#11))
             ==> read($Heap, n#11, _module.Node.val)
               == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#11, _module.Node.key)]))
     && (forall n#12: ref, n'#4: ref :: 
      { read($Heap, n'#4, _module.Node.key), read($Heap, n#12, _module.Node.key) } 
        { read($Heap, n'#4, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#12)) } 
        { read($Heap, n#12, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#4)) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#4)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#12)) } 
      $Is(n#12, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $Is(n'#4, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#12))
           && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#4))
           && n#12 != n'#4
         ==> read($Heap, n#12, _module.Node.key) != read($Heap, n'#4, _module.Node.key))
     && (forall n#13: ref :: 
      { $Unbox(read($Heap, n#13, _module.Node.next)): ref } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#13)) } 
      $Is(n#13, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#13))
         ==> $Unbox(read($Heap, n#13, _module.Node.next)): ref
           != $Unbox(read($Heap, this, _module.Map.head)): ref)
     && (forall n#14: ref, n'#5: ref :: 
      { $Unbox(read($Heap, n'#5, _module.Node.next)): ref, $Unbox(read($Heap, n#14, _module.Node.next)): ref } 
        { $Unbox(read($Heap, n'#5, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#14)) } 
        { $Unbox(read($Heap, n#14, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#5)) } 
        { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#5)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#14)) } 
      $Is(n#14, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $Is(n'#5, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#14))
           && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#5))
           && $Unbox(read($Heap, n#14, _module.Node.next)): ref
             == $Unbox(read($Heap, n'#5, _module.Node.next)): ref
         ==> n#14 == n'#5);
  requires {:id "id452"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), key#0);
  requires {:id "id453"} p#0 != $Unbox(read($Heap, this, _module.Map.head)): ref;
  requires {:id "id454"} Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(p#0));
  requires {:id "id455"} read($Heap, p#0, _module.Node.key) == key#0;
  requires {:id "id456"} Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(prev#0));
  requires {:id "id457"} $Unbox(read($Heap, prev#0, _module.Node.next)): ref == p#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
  ensures {:id "id458"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box(this));
  ensures {:id "id459"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Set#Subset($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
        $Unbox(read($Heap, this, _module.Map.Repr)): Set);
  ensures {:id "id460"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (_module.Map.SpineValid#canCall(_module.Map$Key, 
          _module.Map$Value, 
          $Heap, 
          $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
          $Unbox(read($Heap, this, _module.Map.head)): ref)
         ==> _module.Map.SpineValid(_module.Map$Key, 
            _module.Map$Value, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.head)): ref)
           || 
          ($Unbox(read($Heap, this, _module.Map.head)): ref == null
             && Set#Equal($Unbox(read($Heap, this, _module.Map.Spine)): Set, Set#Empty(): Set))
           || (
            $Unbox(read($Heap, this, _module.Map.head)): ref != null
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
              read($Heap, this, _module.Map.head))
             && Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
              Set#Difference($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Map.head))))
             && _module.Map.SpineValid(_module.Map$Key, 
              _module.Map$Value, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.next)): ref)));
  ensures {:id "id461"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall k#5: Box :: 
        { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#5) } 
        $IsBox(k#5, _module.Map$Key)
           ==> 
          Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#5)
           ==> (exists n#15: ref :: 
            { read($Heap, n#15, _module.Node.key) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#15)) } 
            $Is(n#15, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               && 
              Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#15))
               && read($Heap, n#15, _module.Node.key) == k#5));
  ensures {:id "id462"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#16: ref :: 
        { read($Heap, n#16, _module.Node.val) } 
          { read($Heap, n#16, _module.Node.key) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#16)) } 
        $Is(n#16, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#16))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), 
                read($Heap, n#16, _module.Node.key)))
             && (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#16))
               ==> read($Heap, n#16, _module.Node.val)
                 == Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[read($Heap, n#16, _module.Node.key)]));
  ensures {:id "id463"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#17: ref, n'#6: ref :: 
        { read($Heap, n'#6, _module.Node.key), read($Heap, n#17, _module.Node.key) } 
          { read($Heap, n'#6, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#17)) } 
          { read($Heap, n#17, _module.Node.key), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#6)) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#6)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#17)) } 
        $Is(n#17, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && $Is(n'#6, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#17))
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#6))
             && n#17 != n'#6
           ==> read($Heap, n#17, _module.Node.key) != read($Heap, n'#6, _module.Node.key));
  ensures {:id "id464"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#18: ref :: 
        { $Unbox(read($Heap, n#18, _module.Node.next)): ref } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#18)) } 
        $Is(n#18, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#18))
           ==> $Unbox(read($Heap, n#18, _module.Node.next)): ref
             != $Unbox(read($Heap, this, _module.Map.head)): ref);
  ensures {:id "id465"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall n#19: ref, n'#7: ref :: 
        { $Unbox(read($Heap, n'#7, _module.Node.next)): ref, $Unbox(read($Heap, n#19, _module.Node.next)): ref } 
          { $Unbox(read($Heap, n'#7, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#19)) } 
          { $Unbox(read($Heap, n#19, _module.Node.next)): ref, Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#7)) } 
          { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#7)), Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#19)) } 
        $Is(n#19, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && $Is(n'#7, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#19))
             && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n'#7))
             && $Unbox(read($Heap, n#19, _module.Node.next)): ref
               == $Unbox(read($Heap, n'#7, _module.Node.next)): ref
           ==> n#19 == n'#7);
  ensures {:id "id466"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id467"} Map#Equal($Unbox(read($Heap, this, _module.Map.M)): Map, 
    Map#Glue(Set#FromBoogieMap((lambda $w#2: Box :: 
          $IsBox($w#2, _module.Map$Key)
             && 
            Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, _module.Map.M)): Map), $w#2)
             && $w#2 != key#0)), 
      (lambda $w#2: Box :: 
        Map#Elements($Unbox(read(old($Heap), this, _module.Map.M)): Map)[$w#2]), 
      TMap(_module.Map$Key, _module.Map$Value)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.RemoveNonFirst (correctness)"} Impl$$_module.Map.RemoveNonFirst(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref, 
    key#0: Box, 
    prev#0: ref, 
    p#0: ref)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var spine##0: Set;
  var p##0: ref;
  var $rhs#0: ref;
  var n#0_0: ref;
  var n#0_1: ref;
  var $prevHeap: Heap;
  var $rhs#1: Set;
  var $rhs#2: Map;
  var k#6: Box;
  var k#1_0: Box;
  var n#1_0: ref;
  var defass#n#1_2: bool;
  var n#1_2: ref
     where defass#n#1_2
       ==> $Is(n#1_2, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(n#1_2, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap);
  var n#1_3: ref;
  var spine##2_0: Set;
  var p##2_0: ref;
  var ##spine#0: Set;
  var ##n#0: ref;
  var ##spine#1: Set;
  var ##n#1: ref;

    // AddMethodImpl: RemoveNonFirst, Impl$$_module.Map.RemoveNonFirst
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Map.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(186,20)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    spine##0 := $Unbox(read($Heap, this, _module.Map.Spine)): Set;
    assume true;
    // ProcessCallStmt: CheckSubrange
    p##0 := $Unbox(read($Heap, this, _module.Map.head)): ref;
    call {:id "id468"} Call$$_module.Map.SpineValidSplit(_module.Map$Key, _module.Map$Value, this, spine##0, p##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(188,15)
    assert {:id "id469"} prev#0 != null;
    assume true;
    assert {:id "id470"} $_ModifiesFrame[prev#0, _module.Node.next];
    assert {:id "id471"} p#0 != null;
    assume true;
    $rhs#0 := $Unbox(read($Heap, p#0, _module.Node.next)): ref;
    $Heap := update($Heap, prev#0, _module.Node.next, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(189,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc n#0_0;
        assume $Is(n#0_0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $IsAlloc(n#0_0, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap);
        assume true;
        assume Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0_0));
        assert {:id "id474"} {:subsumption 0} n#0_0 != null;
        assume true;
        assert {:id "id475"} $_ModifiesFrame[n#0_0, _module.Node.Spine];
        assert {:id "id476"} {:subsumption 0} n#0_0 != null;
        assume true;
        havoc n#0_1;
        assume $Is(n#0_1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $IsAlloc(n#0_1, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap);
        assume Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#0_1));
        assume n#0_0 != n#0_1;
        assert {:id "id477"} n#0_0 != n#0_1
           || _module.Node.Spine != _module.Node.Spine
           || Set#Difference($Unbox(read($Heap, n#0_0, _module.Node.Spine)): Set, 
              Set#UnionOne(Set#Empty(): Set, $Box(p#0)))
             == Set#Difference($Unbox(read($Heap, n#0_1, _module.Node.Spine)): Set, 
              Set#UnionOne(Set#Empty(): Set, $Box(p#0)));
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
              $Is(n#0_2, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                 && Set#IsMember($Unbox(read($prevHeap, this, _module.Map.Spine)): Set, $Box(n#0_2))
                 && $o == n#0_2
                 && $f == _module.Node.Spine));
        assume (forall n#inv#0_0: ref :: 
          { read($Heap, n#inv#0_0, _module.Node.Spine) } 
          $Is(n#inv#0_0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               && 
              n#inv#0_0 != null
               && Set#IsMember($Unbox(read($prevHeap, this, _module.Map.Spine)): Set, $Box(n#inv#0_0))
             ==> read($Heap, n#inv#0_0, _module.Node.Spine)
               == $Box(Set#Difference($Unbox(read($prevHeap, n#inv#0_0, _module.Node.Spine)): Set, 
                  Set#UnionOne(Set#Empty(): Set, $Box(p#0)))));
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(192,11)
    assume true;
    assert {:id "id478"} $_ModifiesFrame[this, _module.Map.Spine];
    assume true;
    $rhs#1 := Set#Difference($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(p#0)));
    $Heap := update($Heap, this, _module.Map.Spine, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(193,7)
    assume true;
    assert {:id "id481"} $_ModifiesFrame[this, _module.Map.M];
    // Begin Comprehension WF check
    havoc k#6;
    if ($IsBox(k#6, _module.Map$Key) && $IsAllocBox(k#6, _module.Map$Key, $Heap))
    {
        if (Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#6))
        {
        }

        if (Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#6)
           && k#6 != key#0)
        {
            assert {:id "id482"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#6);
        }
    }

    // End Comprehension WF check
    assume true;
    $rhs#2 := Map#Glue(Set#FromBoogieMap((lambda $w#3: Box :: 
          $IsBox($w#3, _module.Map$Key)
             && 
            Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), $w#3)
             && $w#3 != key#0)), 
      (lambda $w#3: Box :: 
        Map#Elements($Unbox(read($Heap, this, _module.Map.M)): Map)[$w#3]), 
      TMap(_module.Map$Key, _module.Map$Value));
    $Heap := update($Heap, this, _module.Map.M, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(195,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc k#1_0;
        assume $IsBox(k#1_0, _module.Map$Key);
        assume true;
        assume {:id "id485"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#1_0);
        if (*)
        {
            // Begin Comprehension WF check
            havoc n#1_0;
            if ($Is(n#1_0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               && $IsAlloc(n#1_0, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap))
            {
                if (Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1_0)))
                {
                    assert {:id "id486"} {:subsumption 0} n#1_0 != null;
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id487"} (exists n#1_1: ref :: 
              { read($Heap, n#1_1, _module.Node.key) } 
                { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1_1)) } 
              $Is(n#1_1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                 && 
                Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1_1))
                 && read($Heap, n#1_1, _module.Node.key) == k#1_0);
            assume false;
        }

        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(198,7)
        assert {:id "id488"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
        if (Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, _module.Map.M)): Map), k#1_0))
        {
        }

        assume true;
        assert {:id "id489"} {:subsumption 0} Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, _module.Map.M)): Map), k#1_0);
        assert {:id "id490"} {:subsumption 0} k#1_0 != key#0;
        assume {:id "id491"} Set#IsMember(Map#Domain($Unbox(read(old($Heap), this, _module.Map.M)): Map), k#1_0)
           && k#1_0 != key#0;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(199,13)
        havoc n#1_3;
        if ($Is(n#1_3, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
           && $IsAlloc(n#1_3, Tclass._module.Node(_module.Map$Key, _module.Map$Value), $Heap))
        {
            assert {:id "id492"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
            if (Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Spine)): Set, $Box(n#1_3)))
            {
                assert {:id "id493"} {:subsumption 0} n#1_3 != null;
                assert {:id "id494"} $IsAlloc(n#1_3, Tclass._module.Node(_module.Map$Key, _module.Map$Value), old($Heap));
            }

            assume true;
        }

        assert {:id "id495"} ($Is(null, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && 
            Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Spine)): Set, $Box(null))
             && read(old($Heap), null, _module.Node.key) == k#1_0)
           || (exists $as#n1_0#1_0: ref :: 
            $Is($as#n1_0#1_0, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
               && 
              Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Spine)): Set, $Box($as#n1_0#1_0))
               && read(old($Heap), $as#n1_0#1_0, _module.Node.key) == k#1_0);
        defass#n#1_2 := true;
        havoc n#1_2;
        assume {:id "id496"} Set#IsMember($Unbox(read(old($Heap), this, _module.Map.Spine)): Set, $Box(n#1_2))
           && read(old($Heap), n#1_2, _module.Node.key) == k#1_0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(200,7)
        assert {:id "id497"} defass#n#1_2;
        assert {:id "id498"} {:subsumption 0} n#1_2 != null;
        assert {:id "id499"} defass#n#1_2;
        assert {:id "id500"} {:subsumption 0} n#1_2 != null;
        assert {:id "id501"} $IsAlloc(n#1_2, Tclass._module.Node(_module.Map$Key, _module.Map$Value), old($Heap));
        assume true;
        assert {:id "id502"} read($Heap, n#1_2, _module.Node.key)
           == read(old($Heap), n#1_2, _module.Node.key);
        pop;
        assert {:id "id503"} (exists n#1_1: ref :: 
          { read($Heap, n#1_1, _module.Node.key) } 
            { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1_1)) } 
          $Is(n#1_1, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
             && 
            Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1_1))
             && read($Heap, n#1_1, _module.Node.key) == k#1_0);
        assume false;
    }
    else
    {
        assume (forall k#1_1: Box :: 
          { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#1_1) } 
          $IsBox(k#1_1, _module.Map$Key)
               && Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Map.M)): Map), k#1_1)
             ==> (exists n#1_4: ref :: 
              { read($Heap, n#1_4, _module.Node.key) } 
                { Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1_4)) } 
              $Is(n#1_4, Tclass._module.Node(_module.Map$Key, _module.Map$Value))
                 && 
                Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, $Box(n#1_4))
                 && read($Heap, n#1_4, _module.Node.key) == k#1_1));
    }

    if (*)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(204,24)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        spine##2_0 := $Unbox(read($Heap, this, _module.Map.Spine)): Set;
        assume true;
        // ProcessCallStmt: CheckSubrange
        p##2_0 := $Unbox(read($Heap, this, _module.Map.head)): ref;
        call {:id "id504"} Call$$_module.Map.SpineValidCombine(_module.Map$Key, _module.Map$Value, this, spine##2_0, p##2_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(203,5)
        ##spine#0 := $Unbox(read($Heap, this, _module.Map.Spine)): Set;
        // assume allocatedness for argument to function
        assume $IsAlloc(##spine#0, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), $Heap);
        ##n#0 := $Unbox(read($Heap, this, _module.Map.head)): ref;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap);
        assume _module.Map.SpineValid#canCall(_module.Map$Key, 
          _module.Map$Value, 
          $Heap, 
          $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
          $Unbox(read($Heap, this, _module.Map.head)): ref);
        assume _module.Map.SpineValid#canCall(_module.Map$Key, 
          _module.Map$Value, 
          $Heap, 
          $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
          $Unbox(read($Heap, this, _module.Map.head)): ref);
        assert {:id "id505"} {:subsumption 0} _module.Map.SpineValid#canCall(_module.Map$Key, 
            _module.Map$Value, 
            $Heap, 
            $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
            $Unbox(read($Heap, this, _module.Map.head)): ref)
           ==> _module.Map.SpineValid(_module.Map$Key, 
              _module.Map$Value, 
              $LS($LZ), 
              $Heap, 
              $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
              $Unbox(read($Heap, this, _module.Map.head)): ref)
             || 
            ($Unbox(read($Heap, this, _module.Map.head)): ref == null
               && Set#Equal($Unbox(read($Heap, this, _module.Map.Spine)): Set, Set#Empty(): Set))
             || (
              $Unbox(read($Heap, this, _module.Map.head)): ref != null
               && Set#IsMember($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                read($Heap, this, _module.Map.head))
               && Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
                Set#Difference($Unbox(read($Heap, this, _module.Map.Spine)): Set, 
                  Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Map.head))))
               && _module.Map.SpineValid(_module.Map$Key, 
                _module.Map$Value, 
                $LS($LS($LZ)), 
                $Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.Spine)): Set, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Map.head)): ref, _module.Node.next)): ref));
        assume {:id "id506"} _module.Map.SpineValid(_module.Map$Key, 
          _module.Map$Value, 
          $LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
          $Unbox(read($Heap, this, _module.Map.head)): ref);
        assume false;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(203,5)
    ##spine#1 := $Unbox(read($Heap, this, _module.Map.Spine)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##spine#1, TSet(Tclass._module.Node(_module.Map$Key, _module.Map$Value)), $Heap);
    ##n#1 := $Unbox(read($Heap, this, _module.Map.head)): ref;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._module.Node?(_module.Map$Key, _module.Map$Value), $Heap);
    assume _module.Map.SpineValid#canCall(_module.Map$Key, 
      _module.Map$Value, 
      $Heap, 
      $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.head)): ref);
    assume _module.Map.SpineValid#canCall(_module.Map$Key, 
      _module.Map$Value, 
      $Heap, 
      $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.head)): ref);
    assume true;
    assume {:id "id507"} _module.Map.SpineValid(_module.Map$Key, 
      _module.Map$Value, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.Map.Spine)): Set, 
      $Unbox(read($Heap, this, _module.Map.head)): ref);
}



// $Is axiom for non-null type _module.Map
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.Map(_module.Map$Key, _module.Map$Value)) } 
    { $Is(c#0, Tclass._module.Map?(_module.Map$Key, _module.Map$Value)) } 
  $Is(c#0, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
     <==> $Is(c#0, Tclass._module.Map?(_module.Map$Key, _module.Map$Value)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Map
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $h) } 
    { $IsAlloc(c#0, Tclass._module.Map?(_module.Map$Key, _module.Map$Value), $h) } 
  $IsAlloc(c#0, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $h)
     <==> $IsAlloc(c#0, Tclass._module.Map?(_module.Map$Key, _module.Map$Value), $h));

const unique class._module.Node?: ClassName;

// $Is axiom for class Node
axiom (forall _module.Node$Key: Ty, _module.Node$Value: Ty, $o: ref :: 
  { $Is($o, Tclass._module.Node?(_module.Node$Key, _module.Node$Value)) } 
  $Is($o, Tclass._module.Node?(_module.Node$Key, _module.Node$Value))
     <==> $o == null
       || dtype($o) == Tclass._module.Node?(_module.Node$Key, _module.Node$Value));

// $IsAlloc axiom for class Node
axiom (forall _module.Node$Key: Ty, _module.Node$Value: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Node?(_module.Node$Key, _module.Node$Value), $h) } 
  $IsAlloc($o, Tclass._module.Node?(_module.Node$Key, _module.Node$Value), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Node.key: Field
uses {
axiom FDim(_module.Node.key) == 0
   && FieldOfDecl(class._module.Node?, field$key) == _module.Node.key
   && !$IsGhostField(_module.Node.key);
}

// Node.key: Type axiom
axiom (forall _module.Node$Key: Ty, _module.Node$Value: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Node.key), Tclass._module.Node?(_module.Node$Key, _module.Node$Value) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?(_module.Node$Key, _module.Node$Value)
     ==> $IsBox(read($h, $o, _module.Node.key), _module.Node$Key));

// Node.key: Allocation axiom
axiom (forall _module.Node$Key: Ty, _module.Node$Value: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Node.key), Tclass._module.Node?(_module.Node$Key, _module.Node$Value) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?(_module.Node$Key, _module.Node$Value)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.Node.key), _module.Node$Key, $h));

const _module.Node.val: Field
uses {
axiom FDim(_module.Node.val) == 0
   && FieldOfDecl(class._module.Node?, field$val) == _module.Node.val
   && !$IsGhostField(_module.Node.val);
}

// Node.val: Type axiom
axiom (forall _module.Node$Key: Ty, _module.Node$Value: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Node.val), Tclass._module.Node?(_module.Node$Key, _module.Node$Value) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?(_module.Node$Key, _module.Node$Value)
     ==> $IsBox(read($h, $o, _module.Node.val), _module.Node$Value));

// Node.val: Allocation axiom
axiom (forall _module.Node$Key: Ty, _module.Node$Value: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Node.val), Tclass._module.Node?(_module.Node$Key, _module.Node$Value) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?(_module.Node$Key, _module.Node$Value)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.Node.val), _module.Node$Value, $h));

const _module.Node.next: Field
uses {
axiom FDim(_module.Node.next) == 0
   && FieldOfDecl(class._module.Node?, field$next) == _module.Node.next
   && !$IsGhostField(_module.Node.next);
}

// Node.next: Type axiom
axiom (forall _module.Node$Key: Ty, _module.Node$Value: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.next)): ref, Tclass._module.Node?(_module.Node$Key, _module.Node$Value) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?(_module.Node$Key, _module.Node$Value)
     ==> $Is($Unbox(read($h, $o, _module.Node.next)): ref, 
      Tclass._module.Node?(_module.Node$Key, _module.Node$Value)));

// Node.next: Allocation axiom
axiom (forall _module.Node$Key: Ty, _module.Node$Value: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.next)): ref, Tclass._module.Node?(_module.Node$Key, _module.Node$Value) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?(_module.Node$Key, _module.Node$Value)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Node.next)): ref, 
      Tclass._module.Node?(_module.Node$Key, _module.Node$Value), 
      $h));

const _module.Node.Spine: Field
uses {
axiom FDim(_module.Node.Spine) == 0
   && FieldOfDecl(class._module.Node?, field$Spine) == _module.Node.Spine
   && $IsGhostField(_module.Node.Spine);
}

// Node.Spine: Type axiom
axiom (forall _module.Node$Key: Ty, _module.Node$Value: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.Spine)): Set, Tclass._module.Node?(_module.Node$Key, _module.Node$Value) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?(_module.Node$Key, _module.Node$Value)
     ==> $Is($Unbox(read($h, $o, _module.Node.Spine)): Set, 
      TSet(Tclass._module.Node(_module.Node$Key, _module.Node$Value))));

// Node.Spine: Allocation axiom
axiom (forall _module.Node$Key: Ty, _module.Node$Value: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.Spine)): Set, Tclass._module.Node?(_module.Node$Key, _module.Node$Value) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?(_module.Node$Key, _module.Node$Value)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Node.Spine)): Set, 
      TSet(Tclass._module.Node(_module.Node$Key, _module.Node$Value)), 
      $h));

procedure {:verboseName "Node._ctor (well-formedness)"} CheckWellFormed$$_module.Node.__ctor(_module.Node$Key: Ty, 
    _module.Node$Value: Ty, 
    key#0: Box
       where $IsBox(key#0, _module.Node$Key) && $IsAllocBox(key#0, _module.Node$Key, $Heap), 
    val#0: Box
       where $IsBox(val#0, _module.Node$Value)
         && $IsAllocBox(val#0, _module.Node$Value, $Heap))
   returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Node._ctor (call)"} Call$$_module.Node.__ctor(_module.Node$Key: Ty, 
    _module.Node$Value: Ty, 
    key#0: Box
       where $IsBox(key#0, _module.Node$Key) && $IsAllocBox(key#0, _module.Node$Key, $Heap), 
    val#0: Box
       where $IsBox(val#0, _module.Node$Value)
         && $IsAllocBox(val#0, _module.Node$Value, $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node(_module.Node$Key, _module.Node$Value))
         && $IsAlloc(this, Tclass._module.Node(_module.Node$Key, _module.Node$Value), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id510"} read($Heap, this, _module.Node.key) == key#0;
  ensures {:id "id511"} read($Heap, this, _module.Node.val) == val#0;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Node._ctor (correctness)"} Impl$$_module.Node.__ctor(_module.Node$Key: Ty, 
    _module.Node$Value: Ty, 
    key#0: Box
       where $IsBox(key#0, _module.Node$Key) && $IsAllocBox(key#0, _module.Node$Key, $Heap), 
    val#0: Box
       where $IsBox(val#0, _module.Node$Value)
         && $IsAllocBox(val#0, _module.Node$Value, $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id512"} read($Heap, this, _module.Node.key) == key#0;
  ensures {:id "id513"} read($Heap, this, _module.Node.val) == val#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node._ctor (correctness)"} Impl$$_module.Node.__ctor(_module.Node$Key: Ty, _module.Node$Value: Ty, key#0: Box, val#0: Box)
   returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.key: Box;
  var this.val: Box;
  var this.next: ref;
  var this.Spine: Set;
  var defass#this.key: bool;
  var defass#this.val: bool;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0: Box;
  var $rhs#1: Box;

    // AddMethodImpl: _ctor, Impl$$_module.Node.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(218,3)
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(219,24)
    assume true;
    $obj0 := this;
    assume true;
    $obj1 := this;
    assume true;
    $rhs#0 := key#0;
    assume true;
    $rhs#1 := val#0;
    this.key := $rhs#0;
    defass#this.key := true;
    this.val := $rhs#1;
    defass#this.val := true;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(218,3)
    assert {:id "id518"} defass#this.key;
    assert {:id "id519"} defass#this.val;
    assume this != null
       && $Is(this, Tclass._module.Node?(_module.Node$Key, _module.Node$Value));
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume read($Heap, this, _module.Node.key) == this.key;
    assume read($Heap, this, _module.Node.val) == this.val;
    assume $Unbox(read($Heap, this, _module.Node.next)): ref == this.next;
    assume $Unbox(read($Heap, this, _module.Node.Spine)): Set == this.Spine;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b4.dfy(218,3)
}



// $Is axiom for non-null type _module.Node
axiom (forall _module.Node$Key: Ty, _module.Node$Value: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.Node(_module.Node$Key, _module.Node$Value)) } 
    { $Is(c#0, Tclass._module.Node?(_module.Node$Key, _module.Node$Value)) } 
  $Is(c#0, Tclass._module.Node(_module.Node$Key, _module.Node$Value))
     <==> $Is(c#0, Tclass._module.Node?(_module.Node$Key, _module.Node$Value))
       && c#0 != null);

// $IsAlloc axiom for non-null type _module.Node
axiom (forall _module.Node$Key: Ty, _module.Node$Value: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Node(_module.Node$Key, _module.Node$Value), $h) } 
    { $IsAlloc(c#0, Tclass._module.Node?(_module.Node$Key, _module.Node$Value), $h) } 
  $IsAlloc(c#0, Tclass._module.Node(_module.Node$Key, _module.Node$Value), $h)
     <==> $IsAlloc(c#0, Tclass._module.Node?(_module.Node$Key, _module.Node$Value), $h));

// Constructor function declaration
function #_module.Maybe.None() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Maybe.None()) == ##_module.Maybe.None;
// Constructor literal
axiom #_module.Maybe.None() == Lit(#_module.Maybe.None());
}

const unique ##_module.Maybe.None: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Maybe.None()) == ##_module.Maybe.None;
}

function _module.Maybe.None_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Maybe.None_q(d) } 
  _module.Maybe.None_q(d) <==> DatatypeCtorId(d) == ##_module.Maybe.None);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Maybe.None_q(d) } 
  _module.Maybe.None_q(d) ==> d == #_module.Maybe.None());

// Constructor $Is
axiom (forall _module.Maybe$T: Ty :: 
  { $Is(#_module.Maybe.None(), Tclass._module.Maybe(_module.Maybe$T)) } 
  $Is(#_module.Maybe.None(), Tclass._module.Maybe(_module.Maybe$T)));

// Constructor $IsAlloc
axiom (forall _module.Maybe$T: Ty, $h: Heap :: 
  { $IsAlloc(#_module.Maybe.None(), Tclass._module.Maybe(_module.Maybe$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.Maybe.None(), Tclass._module.Maybe(_module.Maybe$T), $h));

// Constructor function declaration
function #_module.Maybe.Some(Box) : DatatypeType;

const unique ##_module.Maybe.Some: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box :: 
  { #_module.Maybe.Some(a#4#0#0) } 
  DatatypeCtorId(#_module.Maybe.Some(a#4#0#0)) == ##_module.Maybe.Some);
}

function _module.Maybe.Some_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Maybe.Some_q(d) } 
  _module.Maybe.Some_q(d) <==> DatatypeCtorId(d) == ##_module.Maybe.Some);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Maybe.Some_q(d) } 
  _module.Maybe.Some_q(d)
     ==> (exists a#5#0#0: Box :: d == #_module.Maybe.Some(a#5#0#0)));

// Constructor $Is
axiom (forall _module.Maybe$T: Ty, a#6#0#0: Box :: 
  { $Is(#_module.Maybe.Some(a#6#0#0), Tclass._module.Maybe(_module.Maybe$T)) } 
  $Is(#_module.Maybe.Some(a#6#0#0), Tclass._module.Maybe(_module.Maybe$T))
     <==> $IsBox(a#6#0#0, _module.Maybe$T));

// Constructor $IsAlloc
axiom (forall _module.Maybe$T: Ty, a#6#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.Maybe.Some(a#6#0#0), Tclass._module.Maybe(_module.Maybe$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Maybe.Some(a#6#0#0), Tclass._module.Maybe(_module.Maybe$T), $h)
       <==> $IsAllocBox(a#6#0#0, _module.Maybe$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Maybe$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Maybe.get(d), _module.Maybe$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Maybe.Some_q(d)
       && $IsAlloc(d, Tclass._module.Maybe(_module.Maybe$T), $h)
     ==> $IsAllocBox(_module.Maybe.get(d), _module.Maybe$T, $h));

// Constructor literal
axiom (forall a#7#0#0: Box :: 
  { #_module.Maybe.Some(Lit(a#7#0#0)) } 
  #_module.Maybe.Some(Lit(a#7#0#0)) == Lit(#_module.Maybe.Some(a#7#0#0)));

function _module.Maybe.get(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box :: 
  { #_module.Maybe.Some(a#8#0#0) } 
  _module.Maybe.get(#_module.Maybe.Some(a#8#0#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box :: 
  { #_module.Maybe.Some(a#9#0#0) } 
  BoxRank(a#9#0#0) < DtRank(#_module.Maybe.Some(a#9#0#0)));

// Depth-one case-split function
function $IsA#_module.Maybe(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Maybe(d) } 
  $IsA#_module.Maybe(d) ==> _module.Maybe.None_q(d) || _module.Maybe.Some_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Maybe$T: Ty, d: DatatypeType :: 
  { _module.Maybe.Some_q(d), $Is(d, Tclass._module.Maybe(_module.Maybe$T)) } 
    { _module.Maybe.None_q(d), $Is(d, Tclass._module.Maybe(_module.Maybe$T)) } 
  $Is(d, Tclass._module.Maybe(_module.Maybe$T))
     ==> _module.Maybe.None_q(d) || _module.Maybe.Some_q(d));

// Datatype extensional equality declaration
function _module.Maybe#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Maybe.None
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Maybe#Equal(a, b), _module.Maybe.None_q(a) } 
    { _module.Maybe#Equal(a, b), _module.Maybe.None_q(b) } 
  _module.Maybe.None_q(a) && _module.Maybe.None_q(b) ==> _module.Maybe#Equal(a, b));

// Datatype extensional equality definition: #_module.Maybe.Some
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Maybe#Equal(a, b), _module.Maybe.Some_q(a) } 
    { _module.Maybe#Equal(a, b), _module.Maybe.Some_q(b) } 
  _module.Maybe.Some_q(a) && _module.Maybe.Some_q(b)
     ==> (_module.Maybe#Equal(a, b) <==> _module.Maybe.get(a) == _module.Maybe.get(b)));

// Datatype extensionality axiom: _module.Maybe
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Maybe#Equal(a, b) } 
  _module.Maybe#Equal(a, b) <==> a == b);

const unique class._module.Maybe: ClassName;

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

const unique tytagFamily$Map: TyTagFamily;

const unique tytagFamily$Node: TyTagFamily;

const unique tytagFamily$Maybe: TyTagFamily;

const unique field$M: NameFamily;

const unique field$Repr: NameFamily;

const unique field$head: NameFamily;

const unique field$Spine: NameFamily;

const unique field$key: NameFamily;

const unique field$val: NameFamily;

const unique field$next: NameFamily;
