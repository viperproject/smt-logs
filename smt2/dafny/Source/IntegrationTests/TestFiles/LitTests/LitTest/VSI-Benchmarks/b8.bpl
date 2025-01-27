// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy

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
axiom (forall a#16#0#0: Box :: 
  { #_module.Maybe.Some(a#16#0#0) } 
  DatatypeCtorId(#_module.Maybe.Some(a#16#0#0)) == ##_module.Maybe.Some);
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
     ==> (exists a#17#0#0: Box :: d == #_module.Maybe.Some(a#17#0#0)));

// Constructor $Is
axiom (forall _module.Maybe$T: Ty, a#18#0#0: Box :: 
  { $Is(#_module.Maybe.Some(a#18#0#0), Tclass._module.Maybe(_module.Maybe$T)) } 
  $Is(#_module.Maybe.Some(a#18#0#0), Tclass._module.Maybe(_module.Maybe$T))
     <==> $IsBox(a#18#0#0, _module.Maybe$T));

// Constructor $IsAlloc
axiom (forall _module.Maybe$T: Ty, a#18#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.Maybe.Some(a#18#0#0), Tclass._module.Maybe(_module.Maybe$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Maybe.Some(a#18#0#0), Tclass._module.Maybe(_module.Maybe$T), $h)
       <==> $IsAllocBox(a#18#0#0, _module.Maybe$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Maybe$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Maybe.get(d), _module.Maybe$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Maybe.Some_q(d)
       && $IsAlloc(d, Tclass._module.Maybe(_module.Maybe$T), $h)
     ==> $IsAllocBox(_module.Maybe.get(d), _module.Maybe$T, $h));

// Constructor literal
axiom (forall a#19#0#0: Box :: 
  { #_module.Maybe.Some(Lit(a#19#0#0)) } 
  #_module.Maybe.Some(Lit(a#19#0#0)) == Lit(#_module.Maybe.Some(a#19#0#0)));

function _module.Maybe.get(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#20#0#0: Box :: 
  { #_module.Maybe.Some(a#20#0#0) } 
  _module.Maybe.get(#_module.Maybe.Some(a#20#0#0)) == a#20#0#0);

// Inductive rank
axiom (forall a#21#0#0: Box :: 
  { #_module.Maybe.Some(a#21#0#0) } 
  BoxRank(a#21#0#0) < DtRank(#_module.Maybe.Some(a#21#0#0)));

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

procedure {:verboseName "Queue.Init (well-formedness)"} CheckWellFormed$$_module.Queue.Init(_module.Queue$T: Ty) returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



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

procedure {:verboseName "Queue.Init (call)"} Call$$_module.Queue.Init(_module.Queue$T: Ty)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Queue(_module.Queue$T))
         && $IsAlloc(this, Tclass._module.Queue(_module.Queue$T), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1"} Seq#Length($Unbox(read($Heap, this, _module.Queue.contents)): Seq) == LitInt(0);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
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

const unique class._module.Glossary?: ClassName;

function Tclass._module.Glossary?() : Ty
uses {
// Tclass._module.Glossary? Tag
axiom Tag(Tclass._module.Glossary?()) == Tagclass._module.Glossary?
   && TagFamily(Tclass._module.Glossary?()) == tytagFamily$Glossary;
}

const unique Tagclass._module.Glossary?: TyTag;

// Box/unbox axiom for Tclass._module.Glossary?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Glossary?()) } 
  $IsBox(bx, Tclass._module.Glossary?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Glossary?()));

// $Is axiom for class Glossary
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Glossary?()) } 
  $Is($o, Tclass._module.Glossary?())
     <==> $o == null || dtype($o) == Tclass._module.Glossary?());

// $IsAlloc axiom for class Glossary
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Glossary?(), $h) } 
  $IsAlloc($o, Tclass._module.Glossary?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass._module.Glossary() : Ty
uses {
// Tclass._module.Glossary Tag
axiom Tag(Tclass._module.Glossary()) == Tagclass._module.Glossary
   && TagFamily(Tclass._module.Glossary()) == tytagFamily$Glossary;
}

const unique Tagclass._module.Glossary: TyTag;

// Box/unbox axiom for Tclass._module.Glossary
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Glossary()) } 
  $IsBox(bx, Tclass._module.Glossary())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Glossary()));

function Tclass._module.Word() : Ty
uses {
// Tclass._module.Word Tag
axiom Tag(Tclass._module.Word()) == Tagclass._module.Word
   && TagFamily(Tclass._module.Word()) == tytagFamily$Word;
}

const unique Tagclass._module.Word: TyTag;

// Box/unbox axiom for Tclass._module.Word
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Word()) } 
  $IsBox(bx, Tclass._module.Word())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Word()));

procedure {:verboseName "Glossary.Sort (well-formedness)"} CheckWellFormed$$_module.Glossary.Sort(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Glossary())
         && $IsAlloc(this, Tclass._module.Glossary(), $Heap), 
    q#0: ref
       where $Is(q#0, Tclass._module.Queue(Tclass._module.Word()))
         && $IsAlloc(q#0, Tclass._module.Queue(Tclass._module.Word()), $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass._module.Queue(Tclass._module.Word()))
         && $IsAlloc(r#0, Tclass._module.Queue(Tclass._module.Word()), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.Word?() : Ty
uses {
// Tclass._module.Word? Tag
axiom Tag(Tclass._module.Word?()) == Tagclass._module.Word?
   && TagFamily(Tclass._module.Word?()) == tytagFamily$Word;
}

const unique Tagclass._module.Word?: TyTag;

// Box/unbox axiom for Tclass._module.Word?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Word?()) } 
  $IsBox(bx, Tclass._module.Word?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Word?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Glossary.Sort (well-formedness)"} CheckWellFormed$$_module.Glossary.Sort(this: ref, q#0: ref) returns (r#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var j#0: int;
  var ##i#0: int;
  var ##w#0: ref;
  var ##i#1: int;


    // AddMethodImpl: Sort, CheckWellFormed$$_module.Glossary.Sort
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
    assert {:id "id30"} $IsAlloc(q#0, Tclass._module.Queue(Tclass._module.Word()), old($Heap));
    assume {:id "id31"} Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq)
       == Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
    havoc i#0;
    havoc j#0;
    assume true;
    if (*)
    {
        assume {:id "id32"} LitInt(0) <= i#0;
        assume {:id "id33"} i#0 < j#0;
        assert {:id "id34"} r#0 != null;
        assume {:id "id35"} j#0 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq);
        assert {:id "id36"} r#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(r#0), Tclass._module.Queue?(Tclass._module.Word()), $Heap);
        ##i#0 := i#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##i#0, TInt, $Heap);
        assert {:id "id37"} {:subsumption 0} LitInt(0) <= ##i#0;
        assert {:id "id38"} {:subsumption 0} ##i#0 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq);
        assume LitInt(0) <= ##i#0
           && ##i#0 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq);
        assume _module.Queue.Get#canCall(Tclass._module.Word(), $Heap, r#0, i#0);
        assert {:id "id39"} $Unbox(_module.Queue.Get(Tclass._module.Word(), $Heap, r#0, i#0)): ref != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox(_module.Queue.Get(Tclass._module.Word(), $Heap, r#0, i#0), 
          Tclass._module.Word?(), 
          $Heap);
        assert {:id "id40"} r#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(r#0), Tclass._module.Queue?(Tclass._module.Word()), $Heap);
        ##i#1 := j#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##i#1, TInt, $Heap);
        assert {:id "id41"} {:subsumption 0} LitInt(0) <= ##i#1;
        assert {:id "id42"} {:subsumption 0} ##i#1 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq);
        assume LitInt(0) <= ##i#1
           && ##i#1 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq);
        assume _module.Queue.Get#canCall(Tclass._module.Word(), $Heap, r#0, j#0);
        ##w#0 := $Unbox(_module.Queue.Get(Tclass._module.Word(), $Heap, r#0, j#0)): ref;
        // assume allocatedness for argument to function
        assume $IsAlloc(##w#0, Tclass._module.Word(), $Heap);
        assume _module.Word.AtMost#canCall($Unbox(_module.Queue.Get(Tclass._module.Word(), $Heap, r#0, i#0)): ref, 
          $Unbox(_module.Queue.Get(Tclass._module.Word(), $Heap, r#0, j#0)): ref);
        assume {:id "id43"} _module.Word.AtMost($Unbox(_module.Queue.Get(Tclass._module.Word(), $Heap, r#0, i#0)): ref, 
          $Unbox(_module.Queue.Get(Tclass._module.Word(), $Heap, r#0, j#0)): ref);
    }
    else
    {
        assume {:id "id44"} LitInt(0) <= i#0
             && i#0 < j#0
             && j#0 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq)
           ==> _module.Word.AtMost($Unbox(_module.Queue.Get(Tclass._module.Word(), $Heap, r#0, i#0)): ref, 
            $Unbox(_module.Queue.Get(Tclass._module.Word(), $Heap, r#0, j#0)): ref);
    }

    assume {:id "id45"} (forall i#1: int, j#1: int :: 
      { $Unbox(_module.Queue.Get(Tclass._module.Word(), $Heap, r#0, j#1)): ref, $Unbox(_module.Queue.Get(Tclass._module.Word(), $Heap, r#0, i#1)): ref } 
      LitInt(0) <= i#1
           && i#1 < j#1
           && j#1 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq)
         ==> _module.Word.AtMost($Unbox(_module.Queue.Get(Tclass._module.Word(), $Heap, r#0, i#1)): ref, 
          $Unbox(_module.Queue.Get(Tclass._module.Word(), $Heap, r#0, j#1)): ref));
    assert {:id "id46"} r#0 != null;
    assert {:id "id47"} q#0 != null;
    assert {:id "id48"} $IsAlloc(q#0, Tclass._module.Queue(Tclass._module.Word()), old($Heap));
    assume {:id "id49"} MultiSet#Equal(MultiSet#FromSeq($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq), 
      MultiSet#FromSeq($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq));
}



procedure {:verboseName "Glossary.Sort (call)"} Call$$_module.Glossary.Sort(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Glossary())
         && $IsAlloc(this, Tclass._module.Glossary(), $Heap), 
    q#0: ref
       where $Is(q#0, Tclass._module.Queue(Tclass._module.Word()))
         && $IsAlloc(q#0, Tclass._module.Queue(Tclass._module.Word()), $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass._module.Queue(Tclass._module.Word()))
         && $IsAlloc(r#0, Tclass._module.Queue(Tclass._module.Word()), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id50"} r#0 != null && !$Unbox(read(old($Heap), r#0, alloc)): bool;
  free ensures true;
  ensures {:id "id51"} Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq)
     == Seq#Length($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq);
  free ensures (forall i#1: int, j#1: int :: 
    { $Unbox(_module.Queue.Get(Tclass._module.Word(), $Heap, r#0, j#1)): ref, $Unbox(_module.Queue.Get(Tclass._module.Word(), $Heap, r#0, i#1)): ref } 
    LitInt(0) <= i#1
       ==> 
      i#1 < j#1
       ==> 
      j#1 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq)
       ==> _module.Queue.Get#canCall(Tclass._module.Word(), $Heap, r#0, i#1)
         && _module.Queue.Get#canCall(Tclass._module.Word(), $Heap, r#0, j#1)
         && _module.Word.AtMost#canCall($Unbox(_module.Queue.Get(Tclass._module.Word(), $Heap, r#0, i#1)): ref, 
          $Unbox(_module.Queue.Get(Tclass._module.Word(), $Heap, r#0, j#1)): ref));
  ensures {:id "id52"} (forall i#1: int, j#1: int :: 
    { $Unbox(_module.Queue.Get(Tclass._module.Word(), $Heap, r#0, j#1)): ref, $Unbox(_module.Queue.Get(Tclass._module.Word(), $Heap, r#0, i#1)): ref } 
    LitInt(0) <= i#1
         && i#1 < j#1
         && j#1 < Seq#Length($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq)
       ==> _module.Word.AtMost($Unbox(_module.Queue.Get(Tclass._module.Word(), $Heap, r#0, i#1)): ref, 
        $Unbox(_module.Queue.Get(Tclass._module.Word(), $Heap, r#0, j#1)): ref));
  free ensures true;
  ensures {:id "id53"} MultiSet#Equal(MultiSet#FromSeq($Unbox(read($Heap, r#0, _module.Queue.contents)): Seq), 
    MultiSet#FromSeq($Unbox(read(old($Heap), q#0, _module.Queue.contents)): Seq));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == q#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Glossary.Main (well-formedness)"} CheckWellFormed$$_module.Glossary.Main(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Glossary())
         && $IsAlloc(this, Tclass._module.Glossary(), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Glossary.Main (call)"} Call$$_module.Glossary.Main(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Glossary())
         && $IsAlloc(this, Tclass._module.Glossary(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Glossary.Main (correctness)"} Impl$$_module.Glossary.Main(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Glossary())
         && $IsAlloc(this, Tclass._module.Glossary(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.ReaderStream() : Ty
uses {
// Tclass._module.ReaderStream Tag
axiom Tag(Tclass._module.ReaderStream()) == Tagclass._module.ReaderStream
   && TagFamily(Tclass._module.ReaderStream()) == tytagFamily$ReaderStream;
}

const unique Tagclass._module.ReaderStream: TyTag;

// Box/unbox axiom for Tclass._module.ReaderStream
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ReaderStream()) } 
  $IsBox(bx, Tclass._module.ReaderStream())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.ReaderStream()));

function Tclass._module.ReaderStream?() : Ty
uses {
// Tclass._module.ReaderStream? Tag
axiom Tag(Tclass._module.ReaderStream?()) == Tagclass._module.ReaderStream?
   && TagFamily(Tclass._module.ReaderStream?()) == tytagFamily$ReaderStream;
}

const unique Tagclass._module.ReaderStream?: TyTag;

// Box/unbox axiom for Tclass._module.ReaderStream?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ReaderStream?()) } 
  $IsBox(bx, Tclass._module.ReaderStream?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.ReaderStream?()));

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

function Tclass._module.WriterStream() : Ty
uses {
// Tclass._module.WriterStream Tag
axiom Tag(Tclass._module.WriterStream()) == Tagclass._module.WriterStream
   && TagFamily(Tclass._module.WriterStream()) == tytagFamily$WriterStream;
}

const unique Tagclass._module.WriterStream: TyTag;

// Box/unbox axiom for Tclass._module.WriterStream
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.WriterStream()) } 
  $IsBox(bx, Tclass._module.WriterStream())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.WriterStream()));

function Tclass._module.WriterStream?() : Ty
uses {
// Tclass._module.WriterStream? Tag
axiom Tag(Tclass._module.WriterStream?()) == Tagclass._module.WriterStream?
   && TagFamily(Tclass._module.WriterStream?()) == tytagFamily$WriterStream;
}

const unique Tagclass._module.WriterStream?: TyTag;

// Box/unbox axiom for Tclass._module.WriterStream?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.WriterStream?()) } 
  $IsBox(bx, Tclass._module.WriterStream?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.WriterStream?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Glossary.Main (correctness)"} Impl$$_module.Glossary.Main(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#rs#0: bool;
  var rs#0: ref
     where defass#rs#0
       ==> $Is(rs#0, Tclass._module.ReaderStream())
         && $IsAlloc(rs#0, Tclass._module.ReaderStream(), $Heap);
  var $nw: ref;
  var defass#glossary#0: bool;
  var glossary#0: ref
     where defass#glossary#0
       ==> $Is(glossary#0, 
          Tclass._module.Map(Tclass._module.Word(), TSeq(Tclass._module.Word())))
         && $IsAlloc(glossary#0, 
          Tclass._module.Map(Tclass._module.Word(), TSeq(Tclass._module.Word())), 
          $Heap);
  var defass#q#0: bool;
  var q#0: ref
     where defass#q#0
       ==> $Is(q#0, Tclass._module.Queue(Tclass._module.Word()))
         && $IsAlloc(q#0, Tclass._module.Queue(Tclass._module.Word()), $Heap);
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $w$loop#0: bool;
  var term#0_0: ref
     where $Is(term#0_0, Tclass._module.Word?())
       && $IsAlloc(term#0_0, Tclass._module.Word?(), $Heap);
  var definition#0_0: Seq
     where $Is(definition#0_0, TSeq(Tclass._module.Word?()))
       && $IsAlloc(definition#0_0, TSeq(Tclass._module.Word?()), $Heap);
  var $rhs##0_0: ref;
  var $rhs##0_1: Seq;
  var rs##0_0: ref;
  var newtype$check#0_0: ref;
  var r#0_0: DatatypeType
     where $Is(r#0_0, Tclass._module.Maybe(TSeq(Tclass._module.Word())))
       && $IsAlloc(r#0_0, Tclass._module.Maybe(TSeq(Tclass._module.Word())), $Heap);
  var $rhs##0_2: DatatypeType;
  var key##0_0: ref;
  var key##0_1_0: ref;
  var val##0_1_0: Seq;
  var x##0_1_0: ref;
  var qc#0: Seq
     where $Is(qc#0, TSeq(Tclass._module.Word()))
       && $IsAlloc(qc#0, TSeq(Tclass._module.Word()), $Heap);
  var $rhs##0: ref;
  var q##0: ref;
  var k#0: ref;
  var defass#wr#0: bool;
  var wr#0: ref
     where defass#wr#0
       ==> $Is(wr#0, Tclass._module.WriterStream())
         && $IsAlloc(wr#0, Tclass._module.WriterStream(), $Heap);
  var $PreLoopHeap$loop#1: Heap;
  var $decr_init$loop#10: int;
  var $w$loop#1: bool;
  var k#2: ref;
  var $decr$loop#10: int;
  var defass#term#1_0: bool;
  var term#1_0: ref
     where defass#term#1_0
       ==> $Is(term#1_0, Tclass._module.Word())
         && $IsAlloc(term#1_0, Tclass._module.Word(), $Heap);
  var $rhs##1_0: ref;
  var $tmp##1_0: Box;
  var r#1_0: DatatypeType
     where $Is(r#1_0, Tclass._module.Maybe(TSeq(Tclass._module.Word())))
       && $IsAlloc(r#1_0, Tclass._module.Maybe(TSeq(Tclass._module.Word())), $Heap);
  var $rhs##1_1: DatatypeType;
  var key##1_0: ref;
  var definition#1_0: Seq
     where $Is(definition#1_0, TSeq(Tclass._module.Word()))
       && $IsAlloc(definition#1_0, TSeq(Tclass._module.Word()), $Heap);
  var tag##1_0: ref;
  var w##1_0: ref;
  var i#1_0: int;
  var qcon#1_0: Seq
     where $Is(qcon#1_0, TSeq(Tclass._module.Word()))
       && $IsAlloc(qcon#1_0, TSeq(Tclass._module.Word()), $Heap);
  var $PreLoopHeap$loop#1_0: Heap;
  var $decr_init$loop#1_00: int;
  var $w$loop#1_0: bool;
  var k#1_0: ref;
  var $decr$loop#1_00: int;
  var defass#w#1_0_0: bool;
  var w#1_0_0: ref
     where defass#w#1_0_0
       ==> $Is(w#1_0_0, Tclass._module.Word())
         && $IsAlloc(w#1_0_0, Tclass._module.Word(), $Heap);
  var r#1_0_0: DatatypeType
     where $Is(r#1_0_0, Tclass._module.Maybe(TSeq(Tclass._module.Word())))
       && $IsAlloc(r#1_0_0, Tclass._module.Maybe(TSeq(Tclass._module.Word())), $Heap);
  var $rhs##1_0_0: DatatypeType;
  var key##1_0_0: ref;
  var tag##1_0_0_0: ref;
  var w##1_0_0_0: ref;
  var w##1_0_1_0: ref;

    // AddMethodImpl: Main, Impl$$_module.Glossary.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(47,11)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ReaderStream?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    rs#0 := $nw;
    defass#rs#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(48,12)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id55"} defass#rs#0;
    assume true;
    assert {:id "id56"} rs#0 != null;
    assert {:id "id57"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == rs#0
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id58"} Call$$_module.ReaderStream.Open(rs#0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(49,18)
    assume true;
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._module.Map?(Tclass._module.Word(), TSeq(Tclass._module.Word())));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(49,45)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id59"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == $nw
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id60"} Call$$_module.Map.Init(Tclass._module.Word(), TSeq(Tclass._module.Word()), $nw);
    // TrCallStmt: After ProcessCallStmt
    glossary#0 := $nw;
    defass#glossary#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(50,23)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(50,42)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id62"} $nw := Call$$_module.Queue.Init(Tclass._module.Word());
    // TrCallStmt: After ProcessCallStmt
    q#0 := $nw;
    defass#q#0 := true;
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(52,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    havoc $w$loop#0;
    while (true)
      free invariant $w$loop#0 ==> _module.ReaderStream.Valid#canCall($Heap, rs#0);
      invariant {:id "id69"} $w$loop#0
         ==> 
        _module.ReaderStream.Valid#canCall($Heap, rs#0)
         ==> _module.ReaderStream.Valid($Heap, rs#0)
           || Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box(rs#0));
      invariant {:id "id70"} $w$loop#0
         ==> 
        _module.ReaderStream.Valid#canCall($Heap, rs#0)
         ==> _module.ReaderStream.Valid($Heap, rs#0)
           || $Unbox(read($Heap, rs#0, _module.ReaderStream.isOpen)): bool;
      free invariant {:id "id71"} $w$loop#0
         ==> _module.ReaderStream.Valid#canCall($Heap, rs#0)
           && 
          _module.ReaderStream.Valid($Heap, rs#0)
           && 
          Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box(rs#0))
           && $Unbox(read($Heap, rs#0, _module.ReaderStream.isOpen)): bool;
      invariant {:id "id72"} $w$loop#0
         ==> (forall $o: ref :: 
            { $o != null } 
            Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o)) } 
            Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
      free invariant $w$loop#0
         ==> _module.Map.Valid#canCall(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0);
      invariant {:id "id76"} $w$loop#0
         ==> 
        _module.Map.Valid#canCall(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0)
         ==> _module.Map.Valid(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0)
           || Seq#Length($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq)
             == Seq#Length($Unbox(read($Heap, glossary#0, _module.Map.values)): Seq);
      invariant {:id "id77"} $w$loop#0
         ==> 
        _module.Map.Valid#canCall(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0)
         ==> _module.Map.Valid(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0)
           || (forall i#0: int, j#0: int :: 
            { $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, j#0)): ref, $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, i#0)): ref } 
            LitInt(0) <= i#0
                 && i#0 < j#0
                 && j#0 < Seq#Length($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq)
               ==> $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, i#0)): ref
                 != $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, j#0)): ref);
      free invariant {:id "id78"} $w$loop#0
         ==> _module.Map.Valid#canCall(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0)
           && 
          _module.Map.Valid(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0)
           && 
          Seq#Length($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq)
             == Seq#Length($Unbox(read($Heap, glossary#0, _module.Map.values)): Seq)
           && (forall i#0: int, j#0: int :: 
            { $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, j#0)): ref, $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, i#0)): ref } 
            LitInt(0) <= i#0
                 && i#0 < j#0
                 && j#0 < Seq#Length($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq)
               ==> $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, i#0)): ref
                 != $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, j#0)): ref);
      free invariant true;
      invariant {:id "id83"} $w$loop#0
         ==> !Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box(glossary#0));
      free invariant true;
      invariant {:id "id88"} $w$loop#0
         ==> !Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box(q#0));
      free invariant true;
      invariant {:id "id94"} $w$loop#0
         ==> Seq#Equal($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, 
          $Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq);
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
    {
        if (!$w$loop#0)
        {
            assert {:id "id64"} defass#rs#0;
            assert {:id "id65"} {:subsumption 0} rs#0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(rs#0), Tclass._module.ReaderStream?(), $Heap);
            assume _module.ReaderStream.Valid#canCall($Heap, rs#0);
            if (_module.ReaderStream.Valid($Heap, rs#0))
            {
                assert {:id "id66"} defass#rs#0;
                assert {:id "id67"} {:subsumption 0} rs#0 != null;
            }

            assume _module.ReaderStream.Valid#canCall($Heap, rs#0);
            assume {:id "id68"} _module.ReaderStream.Valid($Heap, rs#0)
               && 
              (forall $o: ref :: 
                { $o != null } 
                Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
                   ==> $o != null)
               && (forall $o: ref :: 
                { Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o)) } 
                Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
                   ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
            assert {:id "id73"} defass#glossary#0;
            assert {:id "id74"} {:subsumption 0} glossary#0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(glossary#0), 
              Tclass._module.Map?(Tclass._module.Word(), TSeq(Tclass._module.Word())), 
              $Heap);
            assume _module.Map.Valid#canCall(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0);
            assume _module.Map.Valid#canCall(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0);
            assume {:id "id75"} _module.Map.Valid(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0);
            assert {:id "id79"} defass#glossary#0;
            assert {:id "id80"} defass#rs#0;
            assert {:id "id81"} {:subsumption 0} rs#0 != null;
            assume true;
            assume {:id "id82"} !Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box(glossary#0));
            assert {:id "id84"} defass#q#0;
            assert {:id "id85"} defass#rs#0;
            assert {:id "id86"} {:subsumption 0} rs#0 != null;
            assume true;
            assume {:id "id87"} !Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box(q#0));
            assert {:id "id89"} defass#q#0;
            assert {:id "id90"} {:subsumption 0} q#0 != null;
            assert {:id "id91"} defass#glossary#0;
            assert {:id "id92"} {:subsumption 0} glossary#0 != null;
            assume true;
            assume {:id "id93"} Seq#Equal($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, 
              $Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq);
            assume true;
            assume false;
        }

        assume true;
        if (!Lit(true))
        {
            break;
        }

        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(60,45)
        assume true;
        assume true;
        // TrCallStmt: Adding lhs with type Word?
        // TrCallStmt: Adding lhs with type seq<Word?>
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id95"} defass#rs#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        rs##0_0 := rs#0;
        assert {:id "id96"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember($Unbox(read($Heap, rs##0_0, _module.ReaderStream.footprint)): Set, $Box($o))
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id97"} $rhs##0_0, $rhs##0_1 := Call$$_module.Glossary.readDefinition(this, rs##0_0);
        // TrCallStmt: After ProcessCallStmt
        term#0_0 := $rhs##0_0;
        definition#0_0 := $rhs##0_1;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(61,7)
        newtype$check#0_0 := null;
        assume true;
        if (term#0_0 == null)
        {
            push;
            // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(62,9)
            pop;
            pop;
            goto after_0;

            pop;
        }
        else
        {
        }

        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(64,29)
        assume true;
        // TrCallStmt: Adding lhs with type Maybe<seq<Word>>
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id100"} defass#glossary#0;
        assume true;
        assert {:id "id101"} glossary#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id102"} $Is(term#0_0, Tclass._module.Word());
        key##0_0 := term#0_0;
        call {:id "id103"} $rhs##0_2 := Call$$_module.Map.Find(Tclass._module.Word(), TSeq(Tclass._module.Word()), glossary#0, $Box(key##0_0));
        // TrCallStmt: After ProcessCallStmt
        r#0_0 := $rhs##0_2;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(65,7)
        assume $IsA#_module.Maybe(r#0_0);
        if (_module.Maybe#Equal(r#0_0, #_module.Maybe.None()))
        {
            push;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(66,21)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id105"} defass#glossary#0;
            assume true;
            assert {:id "id106"} glossary#0 != null;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id107"} $Is(term#0_0, Tclass._module.Word());
            key##0_1_0 := term#0_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id108"} $Is(definition#0_0, TSeq(Tclass._module.Word()));
            val##0_1_0 := definition#0_0;
            assert {:id "id109"} (forall $o: ref, $f: Field :: 
              $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == glossary#0
                 ==> $_ModifiesFrame[$o, $f]);
            call {:id "id110"} Call$$_module.Map.Add(Tclass._module.Word(), TSeq(Tclass._module.Word()), glossary#0, $Box(key##0_1_0), $Box(val##0_1_0));
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(67,18)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id111"} defass#q#0;
            assume true;
            assert {:id "id112"} q#0 != null;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id113"} $Is(term#0_0, Tclass._module.Word());
            x##0_1_0 := term#0_0;
            assert {:id "id114"} (forall $o: ref, $f: Field :: 
              $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == q#0
                 ==> $_ModifiesFrame[$o, $f]);
            call {:id "id115"} Call$$_module.Queue.Enqueue(Tclass._module.Word(), q#0, $Box(x##0_1_0));
            // TrCallStmt: After ProcessCallStmt
            pop;
        }
        else
        {
        }

        pop;

      continue_0:
        assume _module.ReaderStream.Valid#canCall($Heap, rs#0)
           && (_module.ReaderStream.Valid($Heap, rs#0)
             ==> 
            (forall $o: ref :: 
                { $o != null } 
                Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
                   ==> $o != null)
               && (forall $o: ref :: 
                { Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o)) } 
                Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
                   ==> !$Unbox(read(old($Heap), $o, alloc)): bool)
             ==> _module.Map.Valid#canCall(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0));
    }

  after_0:
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(71,13)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id116"} defass#rs#0;
    assume true;
    assert {:id "id117"} rs#0 != null;
    assert {:id "id118"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id119"} Call$$_module.ReaderStream.Close(rs#0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(72,18)
    assume true;
    assert {:id "id120"} defass#q#0;
    assert {:id "id121"} q#0 != null;
    assume true;
    qc#0 := $Unbox(read($Heap, q#0, _module.Queue.contents)): Seq;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(73,14)
    assume true;
    // TrCallStmt: Adding lhs with type Queue<Word>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id123"} defass#q#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    q##0 := q#0;
    assert {:id "id124"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == q##0
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id125"} $rhs##0 := Call$$_module.Glossary.Sort(this, q##0);
    // TrCallStmt: After ProcessCallStmt
    q#0 := $rhs##0;
    defass#q#0 := true;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(74,5)
    // Begin Comprehension WF check
    havoc k#0;
    if ($Is(k#0, Tclass._module.Word()) && $IsAlloc(k#0, Tclass._module.Word(), $Heap))
    {
        assert {:id "id127"} defass#q#0;
        assert {:id "id128"} {:subsumption 0} q#0 != null;
        if (Seq#Contains($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, $Box(k#0)))
        {
            assert {:id "id129"} defass#q#0;
            assert {:id "id130"} {:subsumption 0} q#0 != null;
        }
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id131"} (forall k#1: ref :: 
      { MultiSet#Multiplicity(MultiSet#FromSeq($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq), 
          $Box(k#1)) } 
        { Seq#Contains($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, $Box(k#1)) } 
      $Is(k#1, Tclass._module.Word())
         ==> 
        Seq#Contains($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, $Box(k#1))
         ==> MultiSet#Multiplicity(MultiSet#FromSeq($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq), 
            $Box(k#1))
           > 0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(75,12)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.WriterStream?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    wr#0 := $nw;
    defass#wr#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(76,14)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id133"} defass#wr#0;
    assume true;
    assert {:id "id134"} wr#0 != null;
    assert {:id "id135"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == wr#0
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id136"} Call$$_module.WriterStream.Create(wr#0);
    // TrCallStmt: After ProcessCallStmt
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(78,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#1 := $Heap;
    $decr_init$loop#10 := Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) - 0;
    havoc $w$loop#1;
    while (true)
      free invariant $w$loop#1 ==> _module.WriterStream.Valid#canCall($Heap, wr#0);
      invariant {:id "id142"} $w$loop#1
         ==> 
        _module.WriterStream.Valid#canCall($Heap, wr#0)
         ==> _module.WriterStream.Valid($Heap, wr#0)
           || Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box(wr#0));
      invariant {:id "id143"} $w$loop#1
         ==> 
        _module.WriterStream.Valid#canCall($Heap, wr#0)
         ==> _module.WriterStream.Valid($Heap, wr#0)
           || $Unbox(read($Heap, wr#0, _module.WriterStream.isOpen)): bool;
      free invariant {:id "id144"} $w$loop#1
         ==> _module.WriterStream.Valid#canCall($Heap, wr#0)
           && 
          _module.WriterStream.Valid($Heap, wr#0)
           && 
          Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box(wr#0))
           && $Unbox(read($Heap, wr#0, _module.WriterStream.isOpen)): bool;
      invariant {:id "id145"} $w$loop#1
         ==> (forall $o: ref :: 
            { $o != null } 
            Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box($o)) } 
            Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
      free invariant $w$loop#1
         ==> _module.Map.Valid#canCall(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0);
      invariant {:id "id149"} $w$loop#1
         ==> 
        _module.Map.Valid#canCall(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0)
         ==> _module.Map.Valid(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0)
           || Seq#Length($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq)
             == Seq#Length($Unbox(read($Heap, glossary#0, _module.Map.values)): Seq);
      invariant {:id "id150"} $w$loop#1
         ==> 
        _module.Map.Valid#canCall(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0)
         ==> _module.Map.Valid(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0)
           || (forall i#1: int, j#1: int :: 
            { $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, j#1)): ref, $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, i#1)): ref } 
            LitInt(0) <= i#1
                 && i#1 < j#1
                 && j#1 < Seq#Length($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq)
               ==> $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, i#1)): ref
                 != $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, j#1)): ref);
      free invariant {:id "id151"} $w$loop#1
         ==> _module.Map.Valid#canCall(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0)
           && 
          _module.Map.Valid(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0)
           && 
          Seq#Length($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq)
             == Seq#Length($Unbox(read($Heap, glossary#0, _module.Map.values)): Seq)
           && (forall i#1: int, j#1: int :: 
            { $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, j#1)): ref, $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, i#1)): ref } 
            LitInt(0) <= i#1
                 && i#1 < j#1
                 && j#1 < Seq#Length($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq)
               ==> $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, i#1)): ref
                 != $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, j#1)): ref);
      free invariant true;
      invariant {:id "id156"} $w$loop#1
         ==> !Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box(glossary#0));
      free invariant true;
      invariant {:id "id161"} $w$loop#1
         ==> !Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box(q#0));
      free invariant true;
      invariant {:id "id167"} $w$loop#1
         ==> (forall k#3: ref :: 
          { Seq#Contains($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, $Box(k#3)) } 
            { Seq#Contains($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, $Box(k#3)) } 
          $Is(k#3, Tclass._module.Word())
             ==> 
            Seq#Contains($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, $Box(k#3))
             ==> Seq#Contains($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, $Box(k#3)));
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#1[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#1, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#1, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#1, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) - 0
         <= $decr_init$loop#10;
    {
        if (!$w$loop#1)
        {
            assert {:id "id137"} defass#wr#0;
            assert {:id "id138"} {:subsumption 0} wr#0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(wr#0), Tclass._module.WriterStream?(), $Heap);
            assume _module.WriterStream.Valid#canCall($Heap, wr#0);
            if (_module.WriterStream.Valid($Heap, wr#0))
            {
                assert {:id "id139"} defass#wr#0;
                assert {:id "id140"} {:subsumption 0} wr#0 != null;
            }

            assume _module.WriterStream.Valid#canCall($Heap, wr#0);
            assume {:id "id141"} _module.WriterStream.Valid($Heap, wr#0)
               && 
              (forall $o: ref :: 
                { $o != null } 
                Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box($o))
                   ==> $o != null)
               && (forall $o: ref :: 
                { Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box($o)) } 
                Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box($o))
                   ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
            assert {:id "id146"} defass#glossary#0;
            assert {:id "id147"} {:subsumption 0} glossary#0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(glossary#0), 
              Tclass._module.Map?(Tclass._module.Word(), TSeq(Tclass._module.Word())), 
              $Heap);
            assume _module.Map.Valid#canCall(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0);
            assume _module.Map.Valid#canCall(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0);
            assume {:id "id148"} _module.Map.Valid(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0);
            assert {:id "id152"} defass#glossary#0;
            assert {:id "id153"} defass#wr#0;
            assert {:id "id154"} {:subsumption 0} wr#0 != null;
            assume true;
            assume {:id "id155"} !Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box(glossary#0));
            assert {:id "id157"} defass#q#0;
            assert {:id "id158"} defass#wr#0;
            assert {:id "id159"} {:subsumption 0} wr#0 != null;
            assume true;
            assume {:id "id160"} !Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box(q#0));
            // Begin Comprehension WF check
            havoc k#2;
            if ($Is(k#2, Tclass._module.Word()) && $IsAlloc(k#2, Tclass._module.Word(), $Heap))
            {
                assert {:id "id162"} defass#q#0;
                assert {:id "id163"} {:subsumption 0} q#0 != null;
                if (Seq#Contains($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, $Box(k#2)))
                {
                    assert {:id "id164"} defass#glossary#0;
                    assert {:id "id165"} {:subsumption 0} glossary#0 != null;
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id166"} (forall k#3: ref :: 
              { Seq#Contains($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, $Box(k#3)) } 
                { Seq#Contains($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, $Box(k#3)) } 
              $Is(k#3, Tclass._module.Word())
                 ==> 
                Seq#Contains($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, $Box(k#3))
                 ==> Seq#Contains($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, $Box(k#3)));
            assert {:id "id168"} defass#q#0;
            assert {:id "id169"} q#0 != null;
            assume true;
            assume false;
        }

        assert {:id "id170"} defass#q#0;
        assert {:id "id171"} q#0 != null;
        assume true;
        if (Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) <= 0)
        {
            break;
        }

        $decr$loop#10 := Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) - 0;
        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(85,28)
        assume true;
        // TrCallStmt: Adding lhs with type Word
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id172"} defass#q#0;
        assume true;
        assert {:id "id173"} q#0 != null;
        assert {:id "id174"} (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == q#0
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id175"} $tmp##1_0 := Call$$_module.Queue.Dequeue(Tclass._module.Word(), q#0);
        havoc $rhs##1_0;
        assume $rhs##1_0 == $Unbox($tmp##1_0): ref;
        // TrCallStmt: After ProcessCallStmt
        term#1_0 := $rhs##1_0;
        defass#term#1_0 := true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(86,29)
        assume true;
        // TrCallStmt: Adding lhs with type Maybe<seq<Word>>
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id177"} defass#glossary#0;
        assume true;
        assert {:id "id178"} glossary#0 != null;
        assert {:id "id179"} defass#term#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        key##1_0 := term#1_0;
        call {:id "id180"} $rhs##1_1 := Call$$_module.Map.Find(Tclass._module.Word(), TSeq(Tclass._module.Word()), glossary#0, $Box(key##1_0));
        // TrCallStmt: After ProcessCallStmt
        r#1_0 := $rhs##1_1;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(87,7)
        assume true;
        assert {:id "id182"} _module.Maybe.Some_q(r#1_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(88,22)
        assume true;
        assert {:id "id183"} _module.Maybe.Some_q(r#1_0);
        assume true;
        definition#1_0 := $Unbox(_module.Maybe.get(r#1_0)): Seq;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(91,26)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id185"} defass#wr#0;
        assume true;
        assert {:id "id186"} wr#0 != null;
        assert {:id "id187"} defass#term#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        tag##1_0 := term#1_0;
        assert {:id "id188"} defass#term#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        w##1_0 := term#1_0;
        assert {:id "id189"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box($o))
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id190"} Call$$_module.WriterStream.PutWordInsideTag(wr#0, tag##1_0, w##1_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(92,13)
        assume true;
        assume true;
        i#1_0 := LitInt(0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(94,16)
        assume true;
        assert {:id "id192"} defass#q#0;
        assert {:id "id193"} q#0 != null;
        assume true;
        qcon#1_0 := $Unbox(read($Heap, q#0, _module.Queue.contents)): Seq;
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(95,7)
        // Assume Fuel Constant
        $PreLoopHeap$loop#1_0 := $Heap;
        $decr_init$loop#1_00 := Seq#Length(definition#1_0) - i#1_0;
        havoc $w$loop#1_0;
        while (true)
          free invariant $w$loop#1_0 ==> _module.WriterStream.Valid#canCall($Heap, wr#0);
          invariant {:id "id200"} $w$loop#1_0
             ==> 
            _module.WriterStream.Valid#canCall($Heap, wr#0)
             ==> _module.WriterStream.Valid($Heap, wr#0)
               || Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box(wr#0));
          invariant {:id "id201"} $w$loop#1_0
             ==> 
            _module.WriterStream.Valid#canCall($Heap, wr#0)
             ==> _module.WriterStream.Valid($Heap, wr#0)
               || $Unbox(read($Heap, wr#0, _module.WriterStream.isOpen)): bool;
          free invariant {:id "id202"} $w$loop#1_0
             ==> _module.WriterStream.Valid#canCall($Heap, wr#0)
               && 
              _module.WriterStream.Valid($Heap, wr#0)
               && 
              Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box(wr#0))
               && $Unbox(read($Heap, wr#0, _module.WriterStream.isOpen)): bool;
          invariant {:id "id203"} $w$loop#1_0
             ==> (forall $o: ref :: 
                { $o != null } 
                Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box($o))
                   ==> $o != null)
               && (forall $o: ref :: 
                { Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box($o)) } 
                Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box($o))
                   ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
          free invariant $w$loop#1_0
             ==> _module.Map.Valid#canCall(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0);
          invariant {:id "id207"} $w$loop#1_0
             ==> 
            _module.Map.Valid#canCall(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0)
             ==> _module.Map.Valid(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0)
               || Seq#Length($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq)
                 == Seq#Length($Unbox(read($Heap, glossary#0, _module.Map.values)): Seq);
          invariant {:id "id208"} $w$loop#1_0
             ==> 
            _module.Map.Valid#canCall(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0)
             ==> _module.Map.Valid(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0)
               || (forall i#1_1: int, j#1_0: int :: 
                { $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, j#1_0)): ref, $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, i#1_1)): ref } 
                LitInt(0) <= i#1_1
                     && i#1_1 < j#1_0
                     && j#1_0 < Seq#Length($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq)
                   ==> $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, i#1_1)): ref
                     != $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, j#1_0)): ref);
          free invariant {:id "id209"} $w$loop#1_0
             ==> _module.Map.Valid#canCall(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0)
               && 
              _module.Map.Valid(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0)
               && 
              Seq#Length($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq)
                 == Seq#Length($Unbox(read($Heap, glossary#0, _module.Map.values)): Seq)
               && (forall i#1_1: int, j#1_0: int :: 
                { $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, j#1_0)): ref, $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, i#1_1)): ref } 
                LitInt(0) <= i#1_1
                     && i#1_1 < j#1_0
                     && j#1_0 < Seq#Length($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq)
                   ==> $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, i#1_1)): ref
                     != $Unbox(Seq#Index($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, j#1_0)): ref);
          free invariant true;
          invariant {:id "id214"} $w$loop#1_0
             ==> !Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box(glossary#0));
          free invariant true;
          invariant {:id "id219"} $w$loop#1_0
             ==> !Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box(q#0));
          free invariant true;
          invariant {:id "id223"} $w$loop#1_0
             ==> Seq#Equal(qcon#1_0, $Unbox(read($Heap, q#0, _module.Queue.contents)): Seq);
          free invariant true;
          invariant {:id "id229"} $w$loop#1_0
             ==> (forall k#1_1: ref :: 
              { Seq#Contains($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, $Box(k#1_1)) } 
                { Seq#Contains($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, $Box(k#1_1)) } 
              $Is(k#1_1, Tclass._module.Word())
                 ==> 
                Seq#Contains($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, $Box(k#1_1))
                 ==> Seq#Contains($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, $Box(k#1_1)));
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#1_0[$o]);
          free invariant $HeapSucc($PreLoopHeap$loop#1_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#1_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#1_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant Seq#Length(definition#1_0) - i#1_0 <= $decr_init$loop#1_00;
        {
            if (!$w$loop#1_0)
            {
                assert {:id "id195"} defass#wr#0;
                assert {:id "id196"} {:subsumption 0} wr#0 != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(wr#0), Tclass._module.WriterStream?(), $Heap);
                assume _module.WriterStream.Valid#canCall($Heap, wr#0);
                if (_module.WriterStream.Valid($Heap, wr#0))
                {
                    assert {:id "id197"} defass#wr#0;
                    assert {:id "id198"} {:subsumption 0} wr#0 != null;
                }

                assume _module.WriterStream.Valid#canCall($Heap, wr#0);
                assume {:id "id199"} _module.WriterStream.Valid($Heap, wr#0)
                   && 
                  (forall $o: ref :: 
                    { $o != null } 
                    Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box($o))
                       ==> $o != null)
                   && (forall $o: ref :: 
                    { Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box($o)) } 
                    Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box($o))
                       ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
                assert {:id "id204"} defass#glossary#0;
                assert {:id "id205"} {:subsumption 0} glossary#0 != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(glossary#0), 
                  Tclass._module.Map?(Tclass._module.Word(), TSeq(Tclass._module.Word())), 
                  $Heap);
                assume _module.Map.Valid#canCall(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0);
                assume _module.Map.Valid#canCall(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0);
                assume {:id "id206"} _module.Map.Valid(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0);
                assert {:id "id210"} defass#glossary#0;
                assert {:id "id211"} defass#wr#0;
                assert {:id "id212"} {:subsumption 0} wr#0 != null;
                assume true;
                assume {:id "id213"} !Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box(glossary#0));
                assert {:id "id215"} defass#q#0;
                assert {:id "id216"} defass#wr#0;
                assert {:id "id217"} {:subsumption 0} wr#0 != null;
                assume true;
                assume {:id "id218"} !Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box(q#0));
                assert {:id "id220"} defass#q#0;
                assert {:id "id221"} {:subsumption 0} q#0 != null;
                assume true;
                assume {:id "id222"} Seq#Equal(qcon#1_0, $Unbox(read($Heap, q#0, _module.Queue.contents)): Seq);
                // Begin Comprehension WF check
                havoc k#1_0;
                if ($Is(k#1_0, Tclass._module.Word())
                   && $IsAlloc(k#1_0, Tclass._module.Word(), $Heap))
                {
                    assert {:id "id224"} defass#q#0;
                    assert {:id "id225"} {:subsumption 0} q#0 != null;
                    if (Seq#Contains($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, $Box(k#1_0)))
                    {
                        assert {:id "id226"} defass#glossary#0;
                        assert {:id "id227"} {:subsumption 0} glossary#0 != null;
                    }
                }

                // End Comprehension WF check
                assume true;
                assume {:id "id228"} (forall k#1_1: ref :: 
                  { Seq#Contains($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, $Box(k#1_1)) } 
                    { Seq#Contains($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, $Box(k#1_1)) } 
                  $Is(k#1_1, Tclass._module.Word())
                     ==> 
                    Seq#Contains($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq, $Box(k#1_1))
                     ==> Seq#Contains($Unbox(read($Heap, glossary#0, _module.Map.keys)): Seq, $Box(k#1_1)));
                assume true;
                assume false;
            }

            assume true;
            if (Seq#Length(definition#1_0) <= i#1_0)
            {
                break;
            }

            $decr$loop#1_00 := Seq#Length(definition#1_0) - i#1_0;
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(103,15)
            assume true;
            assert {:id "id230"} 0 <= i#1_0 && i#1_0 < Seq#Length(definition#1_0);
            assume true;
            w#1_0_0 := $Unbox(Seq#Index(definition#1_0, i#1_0)): ref;
            defass#w#1_0_0 := true;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(104,31)
            assume true;
            // TrCallStmt: Adding lhs with type Maybe<seq<Word>>
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id232"} defass#glossary#0;
            assume true;
            assert {:id "id233"} glossary#0 != null;
            assert {:id "id234"} defass#w#1_0_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            key##1_0_0 := w#1_0_0;
            call {:id "id235"} $rhs##1_0_0 := Call$$_module.Map.Find(Tclass._module.Word(), TSeq(Tclass._module.Word()), glossary#0, $Box(key##1_0_0));
            // TrCallStmt: After ProcessCallStmt
            r#1_0_0 := $rhs##1_0_0;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(105,9)
            assume $IsA#_module.Maybe(r#1_0_0);
            if (_module.Maybe#Equal(r#1_0_0, #_module.Maybe.None()))
            {
                push;
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(106,36)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id237"} defass#wr#0;
                assume true;
                assert {:id "id238"} wr#0 != null;
                assert {:id "id239"} defass#w#1_0_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                tag##1_0_0_0 := w#1_0_0;
                assert {:id "id240"} defass#w#1_0_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                w##1_0_0_0 := w#1_0_0;
                assert {:id "id241"} (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box($o))
                     ==> $_ModifiesFrame[$o, $f]);
                call {:id "id242"} Call$$_module.WriterStream.PutWordInsideHyperlink(wr#0, tag##1_0_0_0, w##1_0_0_0);
                // TrCallStmt: After ProcessCallStmt
                pop;
            }
            else
            {
                push;
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(108,21)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id243"} defass#wr#0;
                assume true;
                assert {:id "id244"} wr#0 != null;
                assert {:id "id245"} defass#w#1_0_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                w##1_0_1_0 := w#1_0_0;
                assert {:id "id246"} (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box($o))
                     ==> $_ModifiesFrame[$o, $f]);
                call {:id "id247"} Call$$_module.WriterStream.PutWord(wr#0, w##1_0_1_0);
                // TrCallStmt: After ProcessCallStmt
                pop;
            }

            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(110,10)
            assume true;
            assume true;
            i#1_0 := i#1_0 + 1;
            pop;
            // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(95,7)
            assert {:id "id249"} 0 <= $decr$loop#1_00 || Seq#Length(definition#1_0) - i#1_0 == $decr$loop#1_00;
            assert {:id "id250"} Seq#Length(definition#1_0) - i#1_0 < $decr$loop#1_00;
            assume _module.WriterStream.Valid#canCall($Heap, wr#0)
               && (_module.WriterStream.Valid($Heap, wr#0)
                 ==> 
                (forall $o: ref :: 
                    { $o != null } 
                    Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box($o))
                       ==> $o != null)
                   && (forall $o: ref :: 
                    { Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box($o)) } 
                    Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box($o))
                       ==> !$Unbox(read(old($Heap), $o, alloc)): bool)
                 ==> _module.Map.Valid#canCall(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0));
        }

        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(78,5)
        assert {:id "id251"} 0 <= $decr$loop#10
           || Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) - 0
             == $decr$loop#10;
        assert {:id "id252"} Seq#Length($Unbox(read($Heap, q#0, _module.Queue.contents)): Seq) - 0
           < $decr$loop#10;
        assume _module.WriterStream.Valid#canCall($Heap, wr#0)
           && (_module.WriterStream.Valid($Heap, wr#0)
             ==> 
            (forall $o: ref :: 
                { $o != null } 
                Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box($o))
                   ==> $o != null)
               && (forall $o: ref :: 
                { Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box($o)) } 
                Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box($o))
                   ==> !$Unbox(read(old($Heap), $o, alloc)): bool)
             ==> _module.Map.Valid#canCall(Tclass._module.Word(), TSeq(Tclass._module.Word()), $Heap, glossary#0));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(113,13)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id253"} defass#wr#0;
    assume true;
    assert {:id "id254"} wr#0 != null;
    assert {:id "id255"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, wr#0, _module.WriterStream.footprint)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id256"} Call$$_module.WriterStream.Close(wr#0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Glossary.readDefinition (well-formedness)"} CheckWellFormed$$_module.Glossary.readDefinition(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Glossary())
         && $IsAlloc(this, Tclass._module.Glossary(), $Heap), 
    rs#0: ref
       where $Is(rs#0, Tclass._module.ReaderStream())
         && $IsAlloc(rs#0, Tclass._module.ReaderStream(), $Heap))
   returns (term#0: ref
       where $Is(term#0, Tclass._module.Word?())
         && $IsAlloc(term#0, Tclass._module.Word?(), $Heap), 
    definition#0: Seq
       where $Is(definition#0, TSeq(Tclass._module.Word?()))
         && $IsAlloc(definition#0, TSeq(Tclass._module.Word?()), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Glossary.readDefinition (well-formedness)"} CheckWellFormed$$_module.Glossary.readDefinition(this: ref, rs#0: ref) returns (term#0: ref, definition#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;


    // AddMethodImpl: readDefinition, CheckWellFormed$$_module.Glossary.readDefinition
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o)));
    assert {:id "id257"} rs#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(rs#0), Tclass._module.ReaderStream?(), $Heap);
    assume _module.ReaderStream.Valid#canCall($Heap, rs#0);
    assume {:id "id258"} _module.ReaderStream.Valid($Heap, rs#0);
    assert {:id "id259"} rs#0 != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), rs#0, _module.ReaderStream.footprint)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    havoc term#0, definition#0;
    assert {:id "id260"} rs#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(rs#0), Tclass._module.ReaderStream?(), $Heap);
    assume _module.ReaderStream.Valid#canCall($Heap, rs#0);
    assume {:id "id261"} _module.ReaderStream.Valid($Heap, rs#0);
    assert {:id "id262"} rs#0 != null;
    assert {:id "id263"} rs#0 != null;
    assert {:id "id264"} $IsAlloc(rs#0, Tclass._module.ReaderStream(), old($Heap));
    assume {:id "id265"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    if (*)
    {
        newtype$check#0 := null;
        assume {:id "id266"} term#0 != null;
        newtype$check#1 := null;
        assume {:id "id267"} !Seq#Contains(definition#0, $Box(null));
    }
    else
    {
        assume {:id "id268"} term#0 != null ==> !Seq#Contains(definition#0, $Box(null));
    }
}



procedure {:verboseName "Glossary.readDefinition (call)"} Call$$_module.Glossary.readDefinition(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Glossary())
         && $IsAlloc(this, Tclass._module.Glossary(), $Heap), 
    rs#0: ref
       where $Is(rs#0, Tclass._module.ReaderStream())
         && $IsAlloc(rs#0, Tclass._module.ReaderStream(), $Heap))
   returns (term#0: ref
       where $Is(term#0, Tclass._module.Word?())
         && $IsAlloc(term#0, Tclass._module.Word?(), $Heap), 
    definition#0: Seq
       where $Is(definition#0, TSeq(Tclass._module.Word?()))
         && $IsAlloc(definition#0, TSeq(Tclass._module.Word?()), $Heap));
  // user-defined preconditions
  requires {:id "id269"} _module.ReaderStream.Valid#canCall($Heap, rs#0)
     ==> _module.ReaderStream.Valid($Heap, rs#0)
       || Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box(rs#0));
  requires {:id "id270"} _module.ReaderStream.Valid#canCall($Heap, rs#0)
     ==> _module.ReaderStream.Valid($Heap, rs#0)
       || $Unbox(read($Heap, rs#0, _module.ReaderStream.isOpen)): bool;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ReaderStream.Valid#canCall($Heap, rs#0);
  free ensures {:id "id271"} _module.ReaderStream.Valid#canCall($Heap, rs#0)
     && 
    _module.ReaderStream.Valid($Heap, rs#0)
     && 
    Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box(rs#0))
     && $Unbox(read($Heap, rs#0, _module.ReaderStream.isOpen)): bool;
  ensures {:id "id272"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id273"} term#0 != null ==> !Seq#Contains(definition#0, $Box(null));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), rs#0, _module.ReaderStream.footprint)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Glossary.readDefinition (correctness)"} Impl$$_module.Glossary.readDefinition(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Glossary())
         && $IsAlloc(this, Tclass._module.Glossary(), $Heap), 
    rs#0: ref
       where $Is(rs#0, Tclass._module.ReaderStream())
         && $IsAlloc(rs#0, Tclass._module.ReaderStream(), $Heap))
   returns (term#0: ref
       where $Is(term#0, Tclass._module.Word?())
         && $IsAlloc(term#0, Tclass._module.Word?(), $Heap), 
    definition#0: Seq
       where $Is(definition#0, TSeq(Tclass._module.Word?()))
         && $IsAlloc(definition#0, TSeq(Tclass._module.Word?()), $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id274"} _module.ReaderStream.Valid#canCall($Heap, rs#0)
     && 
    _module.ReaderStream.Valid($Heap, rs#0)
     && 
    Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box(rs#0))
     && $Unbox(read($Heap, rs#0, _module.ReaderStream.isOpen)): bool;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ReaderStream.Valid#canCall($Heap, rs#0);
  ensures {:id "id275"} _module.ReaderStream.Valid#canCall($Heap, rs#0)
     ==> _module.ReaderStream.Valid($Heap, rs#0)
       || Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box(rs#0));
  ensures {:id "id276"} _module.ReaderStream.Valid#canCall($Heap, rs#0)
     ==> _module.ReaderStream.Valid($Heap, rs#0)
       || $Unbox(read($Heap, rs#0, _module.ReaderStream.isOpen)): bool;
  ensures {:id "id277"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id278"} term#0 != null ==> !Seq#Contains(definition#0, $Box(null));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), rs#0, _module.ReaderStream.footprint)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Glossary.readDefinition (correctness)"} Impl$$_module.Glossary.readDefinition(this: ref, rs#0: ref)
   returns (term#0: ref, definition#0: Seq, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##0: ref;
  var newtype$check#2: ref;
  var $Heap_at_0_0: Heap;
  var $PreLoopHeap$loop#0_0: Heap;
  var $w$loop#0_0: bool;
  var newtype$check#0_0: ref;
  var w#0_0_0: ref
     where $Is(w#0_0_0, Tclass._module.Word?())
       && $IsAlloc(w#0_0_0, Tclass._module.Word?(), $Heap);
  var $rhs##0_0_0: ref;
  var newtype$check#0_0_0: ref;

    // AddMethodImpl: readDefinition, Impl$$_module.Glossary.readDefinition
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(124,23)
    assume true;
    // TrCallStmt: Adding lhs with type Word?
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id279"} rs#0 != null;
    assert {:id "id280"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id281"} $rhs##0 := Call$$_module.ReaderStream.GetWord(rs#0);
    // TrCallStmt: After ProcessCallStmt
    term#0 := $rhs##0;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(125,5)
    newtype$check#2 := null;
    assume true;
    if (term#0 != null)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(126,18)
        assume true;
        assume true;
        definition#0 := Lit(Seq#Empty(): Seq);
        $Heap_at_0_0 := $Heap;
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(127,7)
        // Assume Fuel Constant
        $PreLoopHeap$loop#0_0 := $Heap;
        havoc $w$loop#0_0;
        while (true)
          free invariant $w$loop#0_0 ==> _module.ReaderStream.Valid#canCall($Heap, rs#0);
          invariant {:id "id289"} $w$loop#0_0
             ==> 
            _module.ReaderStream.Valid#canCall($Heap, rs#0)
             ==> _module.ReaderStream.Valid($Heap, rs#0)
               || Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box(rs#0));
          invariant {:id "id290"} $w$loop#0_0
             ==> 
            _module.ReaderStream.Valid#canCall($Heap, rs#0)
             ==> _module.ReaderStream.Valid($Heap, rs#0)
               || $Unbox(read($Heap, rs#0, _module.ReaderStream.isOpen)): bool;
          free invariant {:id "id291"} $w$loop#0_0
             ==> _module.ReaderStream.Valid#canCall($Heap, rs#0)
               && 
              _module.ReaderStream.Valid($Heap, rs#0)
               && 
              Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box(rs#0))
               && $Unbox(read($Heap, rs#0, _module.ReaderStream.isOpen)): bool;
          invariant {:id "id292"} $w$loop#0_0
             ==> (forall $o: ref :: 
                { $o != null } 
                Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
                     && !Set#IsMember($Unbox(read(old($Heap), rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
                   ==> $o != null)
               && (forall $o: ref :: 
                { $Unbox(read(old($Heap), $o, alloc)): bool } 
                Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
                     && !Set#IsMember($Unbox(read(old($Heap), rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
                   ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
          free invariant true;
          invariant {:id "id294"} $w$loop#0_0 ==> !Seq#Contains(definition#0, $Box(null));
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#0_0[$o]
                 || Set#IsMember($Unbox(read(old($Heap), rs#0, _module.ReaderStream.footprint)): Set, $Box($o)));
          free invariant $HeapSucc($PreLoopHeap$loop#0_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#0_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
        {
            if (!$w$loop#0_0)
            {
                assert {:id "id284"} {:subsumption 0} rs#0 != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(rs#0), Tclass._module.ReaderStream?(), $Heap);
                assume _module.ReaderStream.Valid#canCall($Heap, rs#0);
                if (_module.ReaderStream.Valid($Heap, rs#0))
                {
                    assert {:id "id285"} {:subsumption 0} rs#0 != null;
                    assert {:id "id286"} {:subsumption 0} rs#0 != null;
                    assert {:id "id287"} $IsAlloc(rs#0, Tclass._module.ReaderStream(), old($Heap));
                }

                assume _module.ReaderStream.Valid#canCall($Heap, rs#0);
                assume {:id "id288"} _module.ReaderStream.Valid($Heap, rs#0)
                   && 
                  (forall $o: ref :: 
                    { $o != null } 
                    Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
                         && !Set#IsMember($Unbox(read(old($Heap), rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
                       ==> $o != null)
                   && (forall $o: ref :: 
                    { $Unbox(read(old($Heap), $o, alloc)): bool } 
                    Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
                         && !Set#IsMember($Unbox(read(old($Heap), rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
                       ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
                newtype$check#0_0 := null;
                assume true;
                assume {:id "id293"} !Seq#Contains(definition#0, $Box(null));
                assume true;
                assume false;
            }

            assume true;
            if (!Lit(true))
            {
                break;
            }

            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(132,28)
            assume true;
            // TrCallStmt: Adding lhs with type Word?
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assert {:id "id295"} rs#0 != null;
            assert {:id "id296"} (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember($Unbox(read($Heap, rs#0, _module.ReaderStream.footprint)): Set, $Box($o))
                 ==> $_ModifiesFrame[$o, $f]);
            call {:id "id297"} $rhs##0_0_0 := Call$$_module.ReaderStream.GetWord(rs#0);
            // TrCallStmt: After ProcessCallStmt
            w#0_0_0 := $rhs##0_0_0;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(133,9)
            newtype$check#0_0_0 := null;
            assume true;
            if (w#0_0_0 == null)
            {
                push;
                // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(134,11)
                pop;
                goto after_0_0;

                pop;
            }
            else
            {
            }

            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(136,20)
            assume true;
            assume true;
            definition#0 := Seq#Append(definition#0, Seq#Build(Seq#Empty(): Seq, $Box(w#0_0_0)));

          continue_0_0:
            assume _module.ReaderStream.Valid#canCall($Heap, rs#0);
        }

      after_0_0:
    }
    else
    {
    }
}



// $Is axiom for non-null type _module.Glossary
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Glossary()) } 
    { $Is(c#0, Tclass._module.Glossary?()) } 
  $Is(c#0, Tclass._module.Glossary())
     <==> $Is(c#0, Tclass._module.Glossary?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Glossary
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Glossary(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Glossary?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Glossary(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Glossary?(), $h));

const unique class._module.Word?: ClassName;

// $Is axiom for class Word
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Word?()) } 
  $Is($o, Tclass._module.Word?())
     <==> $o == null || dtype($o) == Tclass._module.Word?());

// $IsAlloc axiom for class Word
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Word?(), $h) } 
  $IsAlloc($o, Tclass._module.Word?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for _module.Word.AtMost
function _module.Word.AtMost(this: ref, w#0: ref) : bool;

function _module.Word.AtMost#canCall(this: ref, w#0: ref) : bool;

function _module.Word.AtMost#requires(ref, ref) : bool;

// #requires axiom for _module.Word.AtMost
axiom (forall this: ref, w#0: ref :: 
  { _module.Word.AtMost#requires(this, w#0) } 
  this != null
       && $Is(this, Tclass._module.Word())
       && $Is(w#0, Tclass._module.Word())
     ==> _module.Word.AtMost#requires(this, w#0) == true);

procedure {:verboseName "Word.AtMost (well-formedness)"} CheckWellformed$$_module.Word.AtMost(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Word())
         && $IsAlloc(this, Tclass._module.Word(), $Heap), 
    w#0: ref where $Is(w#0, Tclass._module.Word()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// $Is axiom for non-null type _module.Word
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Word()) } { $Is(c#0, Tclass._module.Word?()) } 
  $Is(c#0, Tclass._module.Word())
     <==> $Is(c#0, Tclass._module.Word?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Word
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Word(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Word?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Word(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Word?(), $h));

const unique class._module.ReaderStream?: ClassName;

// $Is axiom for class ReaderStream
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.ReaderStream?()) } 
  $Is($o, Tclass._module.ReaderStream?())
     <==> $o == null || dtype($o) == Tclass._module.ReaderStream?());

// $IsAlloc axiom for class ReaderStream
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.ReaderStream?(), $h) } 
  $IsAlloc($o, Tclass._module.ReaderStream?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.ReaderStream.footprint: Field
uses {
axiom FDim(_module.ReaderStream.footprint) == 0
   && FieldOfDecl(class._module.ReaderStream?, field$footprint)
     == _module.ReaderStream.footprint
   && $IsGhostField(_module.ReaderStream.footprint);
}

// ReaderStream.footprint: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ReaderStream.footprint)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.ReaderStream?()
     ==> $Is($Unbox(read($h, $o, _module.ReaderStream.footprint)): Set, 
      TSet(Tclass._System.object())));

// ReaderStream.footprint: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ReaderStream.footprint)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.ReaderStream?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.ReaderStream.footprint)): Set, 
      TSet(Tclass._System.object()), 
      $h));

const _module.ReaderStream.isOpen: Field
uses {
axiom FDim(_module.ReaderStream.isOpen) == 0
   && FieldOfDecl(class._module.ReaderStream?, field$isOpen)
     == _module.ReaderStream.isOpen
   && !$IsGhostField(_module.ReaderStream.isOpen);
}

// ReaderStream.isOpen: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ReaderStream.isOpen)): bool } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.ReaderStream?()
     ==> $Is($Unbox(read($h, $o, _module.ReaderStream.isOpen)): bool, TBool));

// ReaderStream.isOpen: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ReaderStream.isOpen)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.ReaderStream?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.ReaderStream.isOpen)): bool, TBool, $h));

// function declaration for _module.ReaderStream.Valid
function _module.ReaderStream.Valid($heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.ReaderStream.Valid (revealed)
axiom {:id "id300"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.ReaderStream.Valid($Heap, this), $IsGoodHeap($Heap) } 
    _module.ReaderStream.Valid#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.ReaderStream())
           && $IsAlloc(this, Tclass._module.ReaderStream(), $Heap))
       ==> _module.ReaderStream.Valid($Heap, this)
         == (Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box(this))
           && $Unbox(read($Heap, this, _module.ReaderStream.isOpen)): bool));
}

function _module.ReaderStream.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.ReaderStream.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.ReaderStream.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.ReaderStream())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.ReaderStream.footprint)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.ReaderStream.Valid($h0, this) == _module.ReaderStream.Valid($h1, this));

function _module.ReaderStream.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.ReaderStream.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.ReaderStream.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.ReaderStream())
       && $IsAlloc(this, Tclass._module.ReaderStream(), $Heap)
     ==> _module.ReaderStream.Valid#requires($Heap, this) == true);

procedure {:verboseName "ReaderStream.Valid (well-formedness)"} CheckWellformed$$_module.ReaderStream.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ReaderStream())
         && $IsAlloc(this, Tclass._module.ReaderStream(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ReaderStream.Valid (well-formedness)"} CheckWellformed$$_module.ReaderStream.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.ReaderStream.footprint];
    assert {:id "id301"} b$reqreads#0;
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
        b$reqreads#1 := $_ReadsFrame[this, _module.ReaderStream.footprint];
        if (Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box(this)))
        {
            b$reqreads#2 := $_ReadsFrame[this, _module.ReaderStream.isOpen];
        }

        assume {:id "id302"} _module.ReaderStream.Valid($Heap, this)
           == (Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box(this))
             && $Unbox(read($Heap, this, _module.ReaderStream.isOpen)): bool);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.ReaderStream.Valid($Heap, this), TBool);
        assert {:id "id303"} b$reqreads#1;
        assert {:id "id304"} b$reqreads#2;
        return;

        assume false;
    }
}



procedure {:verboseName "ReaderStream.Open (well-formedness)"} CheckWellFormed$$_module.ReaderStream.Open(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ReaderStream())
         && $IsAlloc(this, Tclass._module.ReaderStream(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ReaderStream.Open (call)"} Call$$_module.ReaderStream.Open(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ReaderStream())
         && $IsAlloc(this, Tclass._module.ReaderStream(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ReaderStream.Valid#canCall($Heap, this);
  free ensures {:id "id307"} _module.ReaderStream.Valid#canCall($Heap, this)
     && 
    _module.ReaderStream.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box(this))
     && $Unbox(read($Heap, this, _module.ReaderStream.isOpen)): bool;
  ensures {:id "id308"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box($o))
           && $o != this
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box($o))
           && $o != this
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ReaderStream.Open (correctness)"} Impl$$_module.ReaderStream.Open(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ReaderStream())
         && $IsAlloc(this, Tclass._module.ReaderStream(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ReaderStream.Valid#canCall($Heap, this);
  ensures {:id "id309"} _module.ReaderStream.Valid#canCall($Heap, this)
     ==> _module.ReaderStream.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box(this));
  ensures {:id "id310"} _module.ReaderStream.Valid#canCall($Heap, this)
     ==> _module.ReaderStream.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ReaderStream.isOpen)): bool;
  ensures {:id "id311"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box($o))
           && $o != this
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box($o))
           && $o != this
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ReaderStream.Open (correctness)"} Impl$$_module.ReaderStream.Open(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: Set;
  var $rhs#1: bool;

    // AddMethodImpl: Open, Impl$$_module.ReaderStream.Open
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(161,15)
    assume true;
    assert {:id "id312"} $_ModifiesFrame[this, _module.ReaderStream.footprint];
    assume true;
    $rhs#0 := Set#UnionOne(Set#Empty(): Set, $Box(this));
    $Heap := update($Heap, this, _module.ReaderStream.footprint, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(162,12)
    assume true;
    assert {:id "id315"} $_ModifiesFrame[this, _module.ReaderStream.isOpen];
    assume true;
    $rhs#1 := Lit(true);
    $Heap := update($Heap, this, _module.ReaderStream.isOpen, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "ReaderStream.GetWord (well-formedness)"} CheckWellFormed$$_module.ReaderStream.GetWord(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ReaderStream())
         && $IsAlloc(this, Tclass._module.ReaderStream(), $Heap))
   returns (x#0: ref
       where $Is(x#0, Tclass._module.Word?()) && $IsAlloc(x#0, Tclass._module.Word?(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ReaderStream.GetWord (well-formedness)"} CheckWellFormed$$_module.ReaderStream.GetWord(this: ref) returns (x#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: GetWord, CheckWellFormed$$_module.ReaderStream.GetWord
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.ReaderStream?(), $Heap);
    assume _module.ReaderStream.Valid#canCall($Heap, this);
    assume {:id "id318"} _module.ReaderStream.Valid($Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, _module.ReaderStream.footprint)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    havoc x#0;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.ReaderStream?(), $Heap);
    assume _module.ReaderStream.Valid#canCall($Heap, this);
    assume {:id "id319"} _module.ReaderStream.Valid($Heap, this);
    assert {:id "id320"} $IsAlloc(this, Tclass._module.ReaderStream(), old($Heap));
    assume {:id "id321"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.ReaderStream.footprint)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.ReaderStream.footprint)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
}



procedure {:verboseName "ReaderStream.GetWord (call)"} Call$$_module.ReaderStream.GetWord(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ReaderStream())
         && $IsAlloc(this, Tclass._module.ReaderStream(), $Heap))
   returns (x#0: ref
       where $Is(x#0, Tclass._module.Word?()) && $IsAlloc(x#0, Tclass._module.Word?(), $Heap));
  // user-defined preconditions
  requires {:id "id322"} _module.ReaderStream.Valid#canCall($Heap, this)
     ==> _module.ReaderStream.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box(this));
  requires {:id "id323"} _module.ReaderStream.Valid#canCall($Heap, this)
     ==> _module.ReaderStream.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ReaderStream.isOpen)): bool;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ReaderStream.Valid#canCall($Heap, this);
  free ensures {:id "id324"} _module.ReaderStream.Valid#canCall($Heap, this)
     && 
    _module.ReaderStream.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box(this))
     && $Unbox(read($Heap, this, _module.ReaderStream.isOpen)): bool;
  ensures {:id "id325"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.ReaderStream.footprint)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.ReaderStream.footprint)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.ReaderStream.footprint)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ReaderStream.GetWord (correctness)"} Impl$$_module.ReaderStream.GetWord(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ReaderStream())
         && $IsAlloc(this, Tclass._module.ReaderStream(), $Heap))
   returns (x#0: ref
       where $Is(x#0, Tclass._module.Word?()) && $IsAlloc(x#0, Tclass._module.Word?(), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id326"} _module.ReaderStream.Valid#canCall($Heap, this)
     && 
    _module.ReaderStream.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box(this))
     && $Unbox(read($Heap, this, _module.ReaderStream.isOpen)): bool;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ReaderStream.Valid#canCall($Heap, this);
  ensures {:id "id327"} _module.ReaderStream.Valid#canCall($Heap, this)
     ==> _module.ReaderStream.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box(this));
  ensures {:id "id328"} _module.ReaderStream.Valid#canCall($Heap, this)
     ==> _module.ReaderStream.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ReaderStream.isOpen)): bool;
  ensures {:id "id329"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.ReaderStream.footprint)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.ReaderStream.footprint)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.ReaderStream.footprint)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ReaderStream.GetWord (correctness)"} Impl$$_module.ReaderStream.GetWord(this: ref) returns (x#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: GetWord, Impl$$_module.ReaderStream.GetWord
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box($o)));
    $_reverifyPost := false;
}



procedure {:verboseName "ReaderStream.Close (well-formedness)"} CheckWellFormed$$_module.ReaderStream.Close(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ReaderStream())
         && $IsAlloc(this, Tclass._module.ReaderStream(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ReaderStream.Close (call)"} Call$$_module.ReaderStream.Close(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ReaderStream())
         && $IsAlloc(this, Tclass._module.ReaderStream(), $Heap));
  // user-defined preconditions
  requires {:id "id331"} _module.ReaderStream.Valid#canCall($Heap, this)
     ==> _module.ReaderStream.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box(this));
  requires {:id "id332"} _module.ReaderStream.Valid#canCall($Heap, this)
     ==> _module.ReaderStream.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.ReaderStream.isOpen)): bool;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.ReaderStream.footprint)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ReaderStream.Close (correctness)"} Impl$$_module.ReaderStream.Close(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ReaderStream())
         && $IsAlloc(this, Tclass._module.ReaderStream(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id333"} _module.ReaderStream.Valid#canCall($Heap, this)
     && 
    _module.ReaderStream.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box(this))
     && $Unbox(read($Heap, this, _module.ReaderStream.isOpen)): bool;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.ReaderStream.footprint)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ReaderStream.Close (correctness)"} Impl$$_module.ReaderStream.Close(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: bool;

    // AddMethodImpl: Close, Impl$$_module.ReaderStream.Close
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.ReaderStream.footprint)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(176,12)
    assume true;
    assert {:id "id334"} $_ModifiesFrame[this, _module.ReaderStream.isOpen];
    assume true;
    $rhs#0 := Lit(false);
    $Heap := update($Heap, this, _module.ReaderStream.isOpen, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
}



// $Is axiom for non-null type _module.ReaderStream
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.ReaderStream()) } 
    { $Is(c#0, Tclass._module.ReaderStream?()) } 
  $Is(c#0, Tclass._module.ReaderStream())
     <==> $Is(c#0, Tclass._module.ReaderStream?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.ReaderStream
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.ReaderStream(), $h) } 
    { $IsAlloc(c#0, Tclass._module.ReaderStream?(), $h) } 
  $IsAlloc(c#0, Tclass._module.ReaderStream(), $h)
     <==> $IsAlloc(c#0, Tclass._module.ReaderStream?(), $h));

const unique class._module.WriterStream?: ClassName;

// $Is axiom for class WriterStream
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.WriterStream?()) } 
  $Is($o, Tclass._module.WriterStream?())
     <==> $o == null || dtype($o) == Tclass._module.WriterStream?());

// $IsAlloc axiom for class WriterStream
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.WriterStream?(), $h) } 
  $IsAlloc($o, Tclass._module.WriterStream?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.WriterStream.footprint: Field
uses {
axiom FDim(_module.WriterStream.footprint) == 0
   && FieldOfDecl(class._module.WriterStream?, field$footprint)
     == _module.WriterStream.footprint
   && $IsGhostField(_module.WriterStream.footprint);
}

// WriterStream.footprint: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.WriterStream.footprint)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.WriterStream?()
     ==> $Is($Unbox(read($h, $o, _module.WriterStream.footprint)): Set, 
      TSet(Tclass._System.object())));

// WriterStream.footprint: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.WriterStream.footprint)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.WriterStream?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.WriterStream.footprint)): Set, 
      TSet(Tclass._System.object()), 
      $h));

const _module.WriterStream.stream: Field
uses {
axiom FDim(_module.WriterStream.stream) == 0
   && FieldOfDecl(class._module.WriterStream?, field$stream)
     == _module.WriterStream.stream
   && !$IsGhostField(_module.WriterStream.stream);
}

// WriterStream.stream: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.WriterStream.stream)): Seq } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.WriterStream?()
     ==> $Is($Unbox(read($h, $o, _module.WriterStream.stream)): Seq, TSeq(TInt)));

// WriterStream.stream: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.WriterStream.stream)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.WriterStream?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.WriterStream.stream)): Seq, TSeq(TInt), $h));

const _module.WriterStream.isOpen: Field
uses {
axiom FDim(_module.WriterStream.isOpen) == 0
   && FieldOfDecl(class._module.WriterStream?, field$isOpen)
     == _module.WriterStream.isOpen
   && !$IsGhostField(_module.WriterStream.isOpen);
}

// WriterStream.isOpen: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.WriterStream.isOpen)): bool } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.WriterStream?()
     ==> $Is($Unbox(read($h, $o, _module.WriterStream.isOpen)): bool, TBool));

// WriterStream.isOpen: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.WriterStream.isOpen)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.WriterStream?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.WriterStream.isOpen)): bool, TBool, $h));

// function declaration for _module.WriterStream.Valid
function _module.WriterStream.Valid($heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.WriterStream.Valid (revealed)
axiom {:id "id337"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.WriterStream.Valid($Heap, this), $IsGoodHeap($Heap) } 
    _module.WriterStream.Valid#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.WriterStream())
           && $IsAlloc(this, Tclass._module.WriterStream(), $Heap))
       ==> _module.WriterStream.Valid($Heap, this)
         == (Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box(this))
           && $Unbox(read($Heap, this, _module.WriterStream.isOpen)): bool));
}

function _module.WriterStream.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.WriterStream.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.WriterStream.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.WriterStream())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.WriterStream.footprint)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.WriterStream.Valid($h0, this) == _module.WriterStream.Valid($h1, this));

function _module.WriterStream.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.WriterStream.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.WriterStream.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.WriterStream())
       && $IsAlloc(this, Tclass._module.WriterStream(), $Heap)
     ==> _module.WriterStream.Valid#requires($Heap, this) == true);

procedure {:verboseName "WriterStream.Valid (well-formedness)"} CheckWellformed$$_module.WriterStream.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WriterStream())
         && $IsAlloc(this, Tclass._module.WriterStream(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WriterStream.Valid (well-formedness)"} CheckWellformed$$_module.WriterStream.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.WriterStream.footprint];
    assert {:id "id338"} b$reqreads#0;
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
        b$reqreads#1 := $_ReadsFrame[this, _module.WriterStream.footprint];
        if (Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box(this)))
        {
            b$reqreads#2 := $_ReadsFrame[this, _module.WriterStream.isOpen];
        }

        assume {:id "id339"} _module.WriterStream.Valid($Heap, this)
           == (Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box(this))
             && $Unbox(read($Heap, this, _module.WriterStream.isOpen)): bool);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.WriterStream.Valid($Heap, this), TBool);
        assert {:id "id340"} b$reqreads#1;
        assert {:id "id341"} b$reqreads#2;
        return;

        assume false;
    }
}



procedure {:verboseName "WriterStream.Create (well-formedness)"} CheckWellFormed$$_module.WriterStream.Create(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WriterStream())
         && $IsAlloc(this, Tclass._module.WriterStream(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "WriterStream.Create (call)"} Call$$_module.WriterStream.Create(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WriterStream())
         && $IsAlloc(this, Tclass._module.WriterStream(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.WriterStream.Valid#canCall($Heap, this);
  free ensures {:id "id345"} _module.WriterStream.Valid#canCall($Heap, this)
     && 
    _module.WriterStream.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box(this))
     && $Unbox(read($Heap, this, _module.WriterStream.isOpen)): bool;
  ensures {:id "id346"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o))
           && $o != this
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o))
           && $o != this
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id347"} Seq#Equal($Unbox(read($Heap, this, _module.WriterStream.stream)): Seq, Seq#Empty(): Seq);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "WriterStream.Create (correctness)"} Impl$$_module.WriterStream.Create(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WriterStream())
         && $IsAlloc(this, Tclass._module.WriterStream(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.WriterStream.Valid#canCall($Heap, this);
  ensures {:id "id348"} _module.WriterStream.Valid#canCall($Heap, this)
     ==> _module.WriterStream.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box(this));
  ensures {:id "id349"} _module.WriterStream.Valid#canCall($Heap, this)
     ==> _module.WriterStream.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.WriterStream.isOpen)): bool;
  ensures {:id "id350"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o))
           && $o != this
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o))
           && $o != this
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id351"} Seq#Equal($Unbox(read($Heap, this, _module.WriterStream.stream)): Seq, Seq#Empty(): Seq);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WriterStream.Create (correctness)"} Impl$$_module.WriterStream.Create(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: Seq;
  var $rhs#1: Set;
  var $rhs#2: bool;

    // AddMethodImpl: Create, Impl$$_module.WriterStream.Create
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(196,12)
    assume true;
    assert {:id "id352"} $_ModifiesFrame[this, _module.WriterStream.stream];
    assume true;
    $rhs#0 := Lit(Seq#Empty(): Seq);
    $Heap := update($Heap, this, _module.WriterStream.stream, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(197,15)
    assume true;
    assert {:id "id355"} $_ModifiesFrame[this, _module.WriterStream.footprint];
    assume true;
    $rhs#1 := Set#UnionOne(Set#Empty(): Set, $Box(this));
    $Heap := update($Heap, this, _module.WriterStream.footprint, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(198,11)
    assume true;
    assert {:id "id358"} $_ModifiesFrame[this, _module.WriterStream.isOpen];
    assume true;
    $rhs#2 := Lit(true);
    $Heap := update($Heap, this, _module.WriterStream.isOpen, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "WriterStream.GetCount (well-formedness)"} CheckWellFormed$$_module.WriterStream.GetCount(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WriterStream())
         && $IsAlloc(this, Tclass._module.WriterStream(), $Heap))
   returns (c#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "WriterStream.GetCount (call)"} Call$$_module.WriterStream.GetCount(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WriterStream())
         && $IsAlloc(this, Tclass._module.WriterStream(), $Heap))
   returns (c#0: int);
  // user-defined preconditions
  requires {:id "id363"} _module.WriterStream.Valid#canCall($Heap, this)
     ==> _module.WriterStream.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box(this));
  requires {:id "id364"} _module.WriterStream.Valid#canCall($Heap, this)
     ==> _module.WriterStream.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.WriterStream.isOpen)): bool;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id365"} LitInt(0) <= c#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "WriterStream.GetCount (correctness)"} Impl$$_module.WriterStream.GetCount(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WriterStream())
         && $IsAlloc(this, Tclass._module.WriterStream(), $Heap))
   returns (c#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id366"} _module.WriterStream.Valid#canCall($Heap, this)
     && 
    _module.WriterStream.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box(this))
     && $Unbox(read($Heap, this, _module.WriterStream.isOpen)): bool;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id367"} LitInt(0) <= c#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WriterStream.GetCount (correctness)"} Impl$$_module.WriterStream.GetCount(this: ref) returns (c#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: GetCount, Impl$$_module.WriterStream.GetCount
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(204,6)
    assume true;
    assume true;
    c#0 := Seq#Length($Unbox(read($Heap, this, _module.WriterStream.stream)): Seq);
}



procedure {:verboseName "WriterStream.PutWord (well-formedness)"} CheckWellFormed$$_module.WriterStream.PutWord(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WriterStream())
         && $IsAlloc(this, Tclass._module.WriterStream(), $Heap), 
    w#0: ref
       where $Is(w#0, Tclass._module.Word()) && $IsAlloc(w#0, Tclass._module.Word(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WriterStream.PutWord (well-formedness)"} CheckWellFormed$$_module.WriterStream.PutWord(this: ref, w#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: PutWord, CheckWellFormed$$_module.WriterStream.PutWord
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.WriterStream?(), $Heap);
    assume _module.WriterStream.Valid#canCall($Heap, this);
    assume {:id "id369"} _module.WriterStream.Valid($Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.WriterStream?(), $Heap);
    assume _module.WriterStream.Valid#canCall($Heap, this);
    assume {:id "id370"} _module.WriterStream.Valid($Heap, this);
    assert {:id "id371"} $IsAlloc(this, Tclass._module.WriterStream(), old($Heap));
    assume {:id "id372"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    assert {:id "id373"} $IsAlloc(this, Tclass._module.WriterStream(), old($Heap));
    assume {:id "id374"} Seq#Length($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq)
         <= Seq#Length($Unbox(read($Heap, this, _module.WriterStream.stream)): Seq)
       && Seq#SameUntil($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq, 
        $Unbox(read($Heap, this, _module.WriterStream.stream)): Seq, 
        Seq#Length($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq));
}



procedure {:verboseName "WriterStream.PutWord (call)"} Call$$_module.WriterStream.PutWord(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WriterStream())
         && $IsAlloc(this, Tclass._module.WriterStream(), $Heap), 
    w#0: ref
       where $Is(w#0, Tclass._module.Word()) && $IsAlloc(w#0, Tclass._module.Word(), $Heap));
  // user-defined preconditions
  requires {:id "id375"} _module.WriterStream.Valid#canCall($Heap, this)
     ==> _module.WriterStream.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box(this));
  requires {:id "id376"} _module.WriterStream.Valid#canCall($Heap, this)
     ==> _module.WriterStream.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.WriterStream.isOpen)): bool;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.WriterStream.Valid#canCall($Heap, this);
  free ensures {:id "id377"} _module.WriterStream.Valid#canCall($Heap, this)
     && 
    _module.WriterStream.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box(this))
     && $Unbox(read($Heap, this, _module.WriterStream.isOpen)): bool;
  ensures {:id "id378"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id379"} Seq#Length($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq)
       <= Seq#Length($Unbox(read($Heap, this, _module.WriterStream.stream)): Seq)
     && Seq#SameUntil($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq, 
      $Unbox(read($Heap, this, _module.WriterStream.stream)): Seq, 
      Seq#Length($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "WriterStream.PutWord (correctness)"} Impl$$_module.WriterStream.PutWord(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WriterStream())
         && $IsAlloc(this, Tclass._module.WriterStream(), $Heap), 
    w#0: ref
       where $Is(w#0, Tclass._module.Word()) && $IsAlloc(w#0, Tclass._module.Word(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id380"} _module.WriterStream.Valid#canCall($Heap, this)
     && 
    _module.WriterStream.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box(this))
     && $Unbox(read($Heap, this, _module.WriterStream.isOpen)): bool;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.WriterStream.Valid#canCall($Heap, this);
  ensures {:id "id381"} _module.WriterStream.Valid#canCall($Heap, this)
     ==> _module.WriterStream.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box(this));
  ensures {:id "id382"} _module.WriterStream.Valid#canCall($Heap, this)
     ==> _module.WriterStream.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.WriterStream.isOpen)): bool;
  ensures {:id "id383"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id384"} Seq#Length($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq)
       <= Seq#Length($Unbox(read($Heap, this, _module.WriterStream.stream)): Seq)
     && Seq#SameUntil($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq, 
      $Unbox(read($Heap, this, _module.WriterStream.stream)): Seq, 
      Seq#Length($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WriterStream.PutWord (correctness)"} Impl$$_module.WriterStream.PutWord(this: ref, w#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: PutWord, Impl$$_module.WriterStream.PutWord
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o)));
    $_reverifyPost := false;
}



procedure {:verboseName "WriterStream.PutWordInsideTag (well-formedness)"} CheckWellFormed$$_module.WriterStream.PutWordInsideTag(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WriterStream())
         && $IsAlloc(this, Tclass._module.WriterStream(), $Heap), 
    tag#0: ref
       where $Is(tag#0, Tclass._module.Word())
         && $IsAlloc(tag#0, Tclass._module.Word(), $Heap), 
    w#0: ref
       where $Is(w#0, Tclass._module.Word()) && $IsAlloc(w#0, Tclass._module.Word(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WriterStream.PutWordInsideTag (well-formedness)"} CheckWellFormed$$_module.WriterStream.PutWordInsideTag(this: ref, tag#0: ref, w#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: PutWordInsideTag, CheckWellFormed$$_module.WriterStream.PutWordInsideTag
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.WriterStream?(), $Heap);
    assume _module.WriterStream.Valid#canCall($Heap, this);
    assume {:id "id385"} _module.WriterStream.Valid($Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.WriterStream?(), $Heap);
    assume _module.WriterStream.Valid#canCall($Heap, this);
    assume {:id "id386"} _module.WriterStream.Valid($Heap, this);
    assert {:id "id387"} $IsAlloc(this, Tclass._module.WriterStream(), old($Heap));
    assume {:id "id388"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    assert {:id "id389"} $IsAlloc(this, Tclass._module.WriterStream(), old($Heap));
    assume {:id "id390"} Seq#Length($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq)
         <= Seq#Length($Unbox(read($Heap, this, _module.WriterStream.stream)): Seq)
       && Seq#SameUntil($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq, 
        $Unbox(read($Heap, this, _module.WriterStream.stream)): Seq, 
        Seq#Length($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq));
}



procedure {:verboseName "WriterStream.PutWordInsideTag (call)"} Call$$_module.WriterStream.PutWordInsideTag(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WriterStream())
         && $IsAlloc(this, Tclass._module.WriterStream(), $Heap), 
    tag#0: ref
       where $Is(tag#0, Tclass._module.Word())
         && $IsAlloc(tag#0, Tclass._module.Word(), $Heap), 
    w#0: ref
       where $Is(w#0, Tclass._module.Word()) && $IsAlloc(w#0, Tclass._module.Word(), $Heap));
  // user-defined preconditions
  requires {:id "id391"} _module.WriterStream.Valid#canCall($Heap, this)
     ==> _module.WriterStream.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box(this));
  requires {:id "id392"} _module.WriterStream.Valid#canCall($Heap, this)
     ==> _module.WriterStream.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.WriterStream.isOpen)): bool;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.WriterStream.Valid#canCall($Heap, this);
  free ensures {:id "id393"} _module.WriterStream.Valid#canCall($Heap, this)
     && 
    _module.WriterStream.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box(this))
     && $Unbox(read($Heap, this, _module.WriterStream.isOpen)): bool;
  ensures {:id "id394"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id395"} Seq#Length($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq)
       <= Seq#Length($Unbox(read($Heap, this, _module.WriterStream.stream)): Seq)
     && Seq#SameUntil($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq, 
      $Unbox(read($Heap, this, _module.WriterStream.stream)): Seq, 
      Seq#Length($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "WriterStream.PutWordInsideTag (correctness)"} Impl$$_module.WriterStream.PutWordInsideTag(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WriterStream())
         && $IsAlloc(this, Tclass._module.WriterStream(), $Heap), 
    tag#0: ref
       where $Is(tag#0, Tclass._module.Word())
         && $IsAlloc(tag#0, Tclass._module.Word(), $Heap), 
    w#0: ref
       where $Is(w#0, Tclass._module.Word()) && $IsAlloc(w#0, Tclass._module.Word(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id396"} _module.WriterStream.Valid#canCall($Heap, this)
     && 
    _module.WriterStream.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box(this))
     && $Unbox(read($Heap, this, _module.WriterStream.isOpen)): bool;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.WriterStream.Valid#canCall($Heap, this);
  ensures {:id "id397"} _module.WriterStream.Valid#canCall($Heap, this)
     ==> _module.WriterStream.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box(this));
  ensures {:id "id398"} _module.WriterStream.Valid#canCall($Heap, this)
     ==> _module.WriterStream.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.WriterStream.isOpen)): bool;
  ensures {:id "id399"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id400"} Seq#Length($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq)
       <= Seq#Length($Unbox(read($Heap, this, _module.WriterStream.stream)): Seq)
     && Seq#SameUntil($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq, 
      $Unbox(read($Heap, this, _module.WriterStream.stream)): Seq, 
      Seq#Length($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WriterStream.PutWordInsideTag (correctness)"} Impl$$_module.WriterStream.PutWordInsideTag(this: ref, tag#0: ref, w#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: PutWordInsideTag, Impl$$_module.WriterStream.PutWordInsideTag
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o)));
    $_reverifyPost := false;
}



procedure {:verboseName "WriterStream.PutWordInsideHyperlink (well-formedness)"} CheckWellFormed$$_module.WriterStream.PutWordInsideHyperlink(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WriterStream())
         && $IsAlloc(this, Tclass._module.WriterStream(), $Heap), 
    tag#0: ref
       where $Is(tag#0, Tclass._module.Word())
         && $IsAlloc(tag#0, Tclass._module.Word(), $Heap), 
    w#0: ref
       where $Is(w#0, Tclass._module.Word()) && $IsAlloc(w#0, Tclass._module.Word(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WriterStream.PutWordInsideHyperlink (well-formedness)"} CheckWellFormed$$_module.WriterStream.PutWordInsideHyperlink(this: ref, tag#0: ref, w#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: PutWordInsideHyperlink, CheckWellFormed$$_module.WriterStream.PutWordInsideHyperlink
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.WriterStream?(), $Heap);
    assume _module.WriterStream.Valid#canCall($Heap, this);
    assume {:id "id401"} _module.WriterStream.Valid($Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.WriterStream?(), $Heap);
    assume _module.WriterStream.Valid#canCall($Heap, this);
    assume {:id "id402"} _module.WriterStream.Valid($Heap, this);
    assert {:id "id403"} $IsAlloc(this, Tclass._module.WriterStream(), old($Heap));
    assume {:id "id404"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    assert {:id "id405"} $IsAlloc(this, Tclass._module.WriterStream(), old($Heap));
    assume {:id "id406"} Seq#Length($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq)
         <= Seq#Length($Unbox(read($Heap, this, _module.WriterStream.stream)): Seq)
       && Seq#SameUntil($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq, 
        $Unbox(read($Heap, this, _module.WriterStream.stream)): Seq, 
        Seq#Length($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq));
}



procedure {:verboseName "WriterStream.PutWordInsideHyperlink (call)"} Call$$_module.WriterStream.PutWordInsideHyperlink(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WriterStream())
         && $IsAlloc(this, Tclass._module.WriterStream(), $Heap), 
    tag#0: ref
       where $Is(tag#0, Tclass._module.Word())
         && $IsAlloc(tag#0, Tclass._module.Word(), $Heap), 
    w#0: ref
       where $Is(w#0, Tclass._module.Word()) && $IsAlloc(w#0, Tclass._module.Word(), $Heap));
  // user-defined preconditions
  requires {:id "id407"} _module.WriterStream.Valid#canCall($Heap, this)
     ==> _module.WriterStream.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box(this));
  requires {:id "id408"} _module.WriterStream.Valid#canCall($Heap, this)
     ==> _module.WriterStream.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.WriterStream.isOpen)): bool;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.WriterStream.Valid#canCall($Heap, this);
  free ensures {:id "id409"} _module.WriterStream.Valid#canCall($Heap, this)
     && 
    _module.WriterStream.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box(this))
     && $Unbox(read($Heap, this, _module.WriterStream.isOpen)): bool;
  ensures {:id "id410"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id411"} Seq#Length($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq)
       <= Seq#Length($Unbox(read($Heap, this, _module.WriterStream.stream)): Seq)
     && Seq#SameUntil($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq, 
      $Unbox(read($Heap, this, _module.WriterStream.stream)): Seq, 
      Seq#Length($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "WriterStream.PutWordInsideHyperlink (correctness)"} Impl$$_module.WriterStream.PutWordInsideHyperlink(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WriterStream())
         && $IsAlloc(this, Tclass._module.WriterStream(), $Heap), 
    tag#0: ref
       where $Is(tag#0, Tclass._module.Word())
         && $IsAlloc(tag#0, Tclass._module.Word(), $Heap), 
    w#0: ref
       where $Is(w#0, Tclass._module.Word()) && $IsAlloc(w#0, Tclass._module.Word(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id412"} _module.WriterStream.Valid#canCall($Heap, this)
     && 
    _module.WriterStream.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box(this))
     && $Unbox(read($Heap, this, _module.WriterStream.isOpen)): bool;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.WriterStream.Valid#canCall($Heap, this);
  ensures {:id "id413"} _module.WriterStream.Valid#canCall($Heap, this)
     ==> _module.WriterStream.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box(this));
  ensures {:id "id414"} _module.WriterStream.Valid#canCall($Heap, this)
     ==> _module.WriterStream.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.WriterStream.isOpen)): bool;
  ensures {:id "id415"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id416"} Seq#Length($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq)
       <= Seq#Length($Unbox(read($Heap, this, _module.WriterStream.stream)): Seq)
     && Seq#SameUntil($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq, 
      $Unbox(read($Heap, this, _module.WriterStream.stream)): Seq, 
      Seq#Length($Unbox(read(old($Heap), this, _module.WriterStream.stream)): Seq));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WriterStream.PutWordInsideHyperlink (correctness)"} Impl$$_module.WriterStream.PutWordInsideHyperlink(this: ref, tag#0: ref, w#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: PutWordInsideHyperlink, Impl$$_module.WriterStream.PutWordInsideHyperlink
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o)));
    $_reverifyPost := false;
}



procedure {:verboseName "WriterStream.Close (well-formedness)"} CheckWellFormed$$_module.WriterStream.Close(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WriterStream())
         && $IsAlloc(this, Tclass._module.WriterStream(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "WriterStream.Close (call)"} Call$$_module.WriterStream.Close(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WriterStream())
         && $IsAlloc(this, Tclass._module.WriterStream(), $Heap));
  // user-defined preconditions
  requires {:id "id418"} _module.WriterStream.Valid#canCall($Heap, this)
     ==> _module.WriterStream.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box(this));
  requires {:id "id419"} _module.WriterStream.Valid#canCall($Heap, this)
     ==> _module.WriterStream.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.WriterStream.isOpen)): bool;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "WriterStream.Close (correctness)"} Impl$$_module.WriterStream.Close(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WriterStream())
         && $IsAlloc(this, Tclass._module.WriterStream(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id420"} _module.WriterStream.Valid#canCall($Heap, this)
     && 
    _module.WriterStream.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box(this))
     && $Unbox(read($Heap, this, _module.WriterStream.isOpen)): bool;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.WriterStream.footprint)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WriterStream.Close (correctness)"} Impl$$_module.WriterStream.Close(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: bool;

    // AddMethodImpl: Close, Impl$$_module.WriterStream.Close
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.WriterStream.footprint)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(235,12)
    assume true;
    assert {:id "id421"} $_ModifiesFrame[this, _module.WriterStream.isOpen];
    assume true;
    $rhs#0 := Lit(false);
    $Heap := update($Heap, this, _module.WriterStream.isOpen, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
}



// $Is axiom for non-null type _module.WriterStream
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.WriterStream()) } 
    { $Is(c#0, Tclass._module.WriterStream?()) } 
  $Is(c#0, Tclass._module.WriterStream())
     <==> $Is(c#0, Tclass._module.WriterStream?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.WriterStream
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.WriterStream(), $h) } 
    { $IsAlloc(c#0, Tclass._module.WriterStream?(), $h) } 
  $IsAlloc(c#0, Tclass._module.WriterStream(), $h)
     <==> $IsAlloc(c#0, Tclass._module.WriterStream?(), $h));

const unique class._module.Map?: ClassName;

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

const _module.Map.keys: Field
uses {
axiom FDim(_module.Map.keys) == 0
   && FieldOfDecl(class._module.Map?, field$keys) == _module.Map.keys
   && !$IsGhostField(_module.Map.keys);
}

// Map.keys: Type axiom
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Map.keys)): Seq, Tclass._module.Map?(_module.Map$Key, _module.Map$Value) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Map?(_module.Map$Key, _module.Map$Value)
     ==> $Is($Unbox(read($h, $o, _module.Map.keys)): Seq, TSeq(_module.Map$Key)));

// Map.keys: Allocation axiom
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Map.keys)): Seq, Tclass._module.Map?(_module.Map$Key, _module.Map$Value) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Map?(_module.Map$Key, _module.Map$Value)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Map.keys)): Seq, TSeq(_module.Map$Key), $h));

const _module.Map.values: Field
uses {
axiom FDim(_module.Map.values) == 0
   && FieldOfDecl(class._module.Map?, field$values) == _module.Map.values
   && !$IsGhostField(_module.Map.values);
}

// Map.values: Type axiom
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Map.values)): Seq, Tclass._module.Map?(_module.Map$Key, _module.Map$Value) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Map?(_module.Map$Key, _module.Map$Value)
     ==> $Is($Unbox(read($h, $o, _module.Map.values)): Seq, TSeq(_module.Map$Value)));

// Map.values: Allocation axiom
axiom (forall _module.Map$Key: Ty, _module.Map$Value: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Map.values)): Seq, Tclass._module.Map?(_module.Map$Key, _module.Map$Value) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Map?(_module.Map$Key, _module.Map$Value)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Map.values)): Seq, TSeq(_module.Map$Value), $h));

// function declaration for _module.Map.Valid
function _module.Map.Valid(_module.Map$Key: Ty, _module.Map$Value: Ty, $heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Map.Valid (revealed)
axiom {:id "id424"} 0 <= $FunctionContextHeight
   ==> (forall _module.Map$Key: Ty, _module.Map$Value: Ty, $Heap: Heap, this: ref :: 
    { _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this), $IsGoodHeap($Heap) } 
    _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
           && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap))
       ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
         == (Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq)
           && (forall i#0: int, j#0: int :: 
            { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#0), Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#0) } 
            LitInt(0) <= i#0
                 && i#0 < j#0
                 && j#0 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
               ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#0)
                 != Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#0))));
}

function _module.Map.Valid#canCall(_module.Map$Key: Ty, _module.Map$Value: Ty, $heap: Heap, this: ref) : bool;

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
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
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
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.Valid (well-formedness)"} CheckWellformed$$_module.Map.Valid(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var i#1: int;
  var j#1: int;
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
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
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
        b$reqreads#0 := $_ReadsFrame[this, _module.Map.keys];
        b$reqreads#1 := $_ReadsFrame[this, _module.Map.values];
        if (Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
           == Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq))
        {
            // Begin Comprehension WF check
            havoc i#1;
            havoc j#1;
            if (true)
            {
                if (LitInt(0) <= i#1)
                {
                }

                if (LitInt(0) <= i#1 && i#1 < j#1)
                {
                    b$reqreads#2 := $_ReadsFrame[this, _module.Map.keys];
                }

                if (LitInt(0) <= i#1
                   && i#1 < j#1
                   && j#1 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq))
                {
                    b$reqreads#3 := $_ReadsFrame[this, _module.Map.keys];
                    assert {:id "id425"} 0 <= i#1 && i#1 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq);
                    b$reqreads#4 := $_ReadsFrame[this, _module.Map.keys];
                    assert {:id "id426"} 0 <= j#1 && j#1 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq);
                }
            }

            // End Comprehension WF check
        }

        assume {:id "id427"} _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
           == (Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
               == Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq)
             && (forall i#2: int, j#2: int :: 
              { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#2), Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#2) } 
              LitInt(0) <= i#2
                   && i#2 < j#2
                   && j#2 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
                 ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#2)
                   != Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#2)));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this), TBool);
        assert {:id "id428"} b$reqreads#0;
        assert {:id "id429"} b$reqreads#1;
        assert {:id "id430"} b$reqreads#2;
        assert {:id "id431"} b$reqreads#3;
        assert {:id "id432"} b$reqreads#4;
        return;

        assume false;
    }
}



procedure {:verboseName "Map.Init (well-formedness)"} CheckWellFormed$$_module.Map.Init(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Map.Init (call)"} Call$$_module.Map.Init(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
  free ensures {:id "id435"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq)
     && (forall i#0: int, j#0: int :: 
      { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#0), Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#0) } 
      LitInt(0) <= i#0
           && i#0 < j#0
           && j#0 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
         ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#0)
           != Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#0));
  ensures {:id "id436"} Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq) == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Map.Init (correctness)"} Impl$$_module.Map.Init(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
  ensures {:id "id437"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq);
  ensures {:id "id438"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall i#1: int, j#1: int :: 
        { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#1), Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#1) } 
        LitInt(0) <= i#1
             && i#1 < j#1
             && j#1 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
           ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#1)
             != Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#1));
  ensures {:id "id439"} Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq) == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.Init (correctness)"} Impl$$_module.Map.Init(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: Seq;
  var $rhs#1: Seq;

    // AddMethodImpl: Init, Impl$$_module.Map.Init
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(257,10)
    assume true;
    assert {:id "id440"} $_ModifiesFrame[this, _module.Map.keys];
    assume true;
    $rhs#0 := Lit(Seq#Empty(): Seq);
    $Heap := update($Heap, this, _module.Map.keys, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(258,12)
    assume true;
    assert {:id "id443"} $_ModifiesFrame[this, _module.Map.values];
    assume true;
    $rhs#1 := Lit(Seq#Empty(): Seq);
    $Heap := update($Heap, this, _module.Map.values, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
}



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
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.Find (well-formedness)"} CheckWellFormed$$_module.Map.Find(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref, key#0: Box)
   returns (result#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;


    // AddMethodImpl: Find, CheckWellFormed$$_module.Map.Find
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Map?(_module.Map$Key, _module.Map$Value), $Heap);
    assume _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
    assume {:id "id446"} _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc result#0;
    if (*)
    {
        assume {:id "id447"} _module.Maybe#Equal(result#0, #_module.Maybe.None());
        assume {:id "id448"} !Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, key#0);
    }
    else
    {
        assume {:id "id449"} _module.Maybe#Equal(result#0, #_module.Maybe.None())
           ==> !Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, key#0);
    }

    if (*)
    {
        assume {:id "id450"} _module.Maybe.Some_q(result#0);
        havoc i#0;
        assume true;
        if (LitInt(0) <= i#0)
        {
        }

        assume {:id "id451"} LitInt(0) <= i#0
           && i#0 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq);
        assert {:id "id452"} 0 <= i#0 && i#0 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq);
        assume {:id "id453"} Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#0) == key#0;
        assert {:id "id454"} 0 <= i#0 && i#0 < Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq);
        assert {:id "id455"} _module.Maybe.Some_q(result#0);
        assume {:id "id456"} Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, i#0)
           == _module.Maybe.get(result#0);
    }
    else
    {
        assume {:id "id457"} _module.Maybe.Some_q(result#0)
           ==> (exists i#1: int :: 
            { Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, i#1) } 
              { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#1) } 
            LitInt(0) <= i#1
               && i#1 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
               && Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#1) == key#0
               && Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, i#1)
                 == _module.Maybe.get(result#0));
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
  requires {:id "id458"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq);
  requires {:id "id459"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall i#2: int, j#0: int :: 
        { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#0), Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#2) } 
        LitInt(0) <= i#2
             && i#2 < j#0
             && j#0 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
           ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#2)
             != Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Maybe(result#0);
  ensures {:id "id460"} _module.Maybe#Equal(result#0, #_module.Maybe.None())
     ==> !Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, key#0);
  free ensures true;
  ensures {:id "id461"} _module.Maybe.Some_q(result#0)
     ==> (exists i#1: int :: 
      { Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, i#1) } 
        { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#1) } 
      LitInt(0) <= i#1
         && i#1 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
         && Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#1) == key#0
         && Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, i#1)
           == _module.Maybe.get(result#0));
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
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id462"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq)
     && (forall i#3: int, j#1: int :: 
      { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#1), Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#3) } 
      LitInt(0) <= i#3
           && i#3 < j#1
           && j#1 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
         ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#3)
           != Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Maybe(result#0);
  ensures {:id "id463"} _module.Maybe#Equal(result#0, #_module.Maybe.None())
     ==> !Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, key#0);
  free ensures true;
  ensures {:id "id464"} _module.Maybe.Some_q(result#0)
     ==> (exists i#1: int :: 
      { Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, i#1) } 
        { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#1) } 
      LitInt(0) <= i#1
         && i#1 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
         && Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#1) == key#0
         && Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, i#1)
           == _module.Maybe.get(result#0));
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
  var j#2: int;
  var $rhs##0: int;
  var key##0: Box;

    // AddMethodImpl: Find, Impl$$_module.Map.Find
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(266,23)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    key##0 := key#0;
    call {:id "id465"} $rhs##0 := Call$$_module.Map.FindIndex(_module.Map$Key, _module.Map$Value, this, key##0);
    // TrCallStmt: After ProcessCallStmt
    j#2 := $rhs##0;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(267,5)
    assume true;
    if (j#2 == LitInt(-1))
    {
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(268,7)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(268,7)
        assume true;
        assume true;
        result#0 := Lit(#_module.Maybe.None());
        return;
    }
    else
    {
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(270,7)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(270,7)
        assume true;
        assert {:id "id468"} 0 <= j#2 && j#2 < Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq);
        assume true;
        result#0 := #_module.Maybe.Some(Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, j#2));
        return;
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
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.Add (well-formedness)"} CheckWellFormed$$_module.Map.Add(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref, key#0: Box, val#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var j#0: int;


    // AddMethodImpl: Add, CheckWellFormed$$_module.Map.Add
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Map?(_module.Map$Key, _module.Map$Value), $Heap);
    assume _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
    assume {:id "id470"} _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this);
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Map?(_module.Map$Key, _module.Map$Value), $Heap);
    assume _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
    assume {:id "id471"} _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this);
    havoc i#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#0)
        {
            assert {:id "id472"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
        }

        assume {:id "id473"} LitInt(0) <= i#0
           && i#0 < Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq);
        assert {:id "id474"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
        assert {:id "id475"} 0 <= i#0
           && i#0 < Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq);
        assume {:id "id476"} Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, i#0) == key#0;
        assert {:id "id477"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
        assume {:id "id478"} Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
           == Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq);
        assert {:id "id479"} 0 <= i#0 && i#0 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq);
        assume {:id "id480"} Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#0) == key#0;
        assert {:id "id481"} 0 <= i#0 && i#0 < Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq);
        assume {:id "id482"} Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, i#0) == val#0;
        havoc j#0;
        assume true;
        if (*)
        {
            if (LitInt(0) <= j#0)
            {
            }

            assume {:id "id483"} LitInt(0) <= j#0
               && j#0 < Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq);
            assume {:id "id484"} i#0 != j#0;
            assert {:id "id485"} 0 <= j#0 && j#0 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq);
            assert {:id "id486"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
            assert {:id "id487"} 0 <= j#0
               && j#0 < Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq);
            assume {:id "id488"} Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#0)
               == Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, j#0);
        }
        else
        {
            assume {:id "id489"} LitInt(0) <= j#0
                 && j#0 < Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq)
                 && i#0 != j#0
               ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#0)
                 == Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, j#0);
        }

        if (*)
        {
            if (LitInt(0) <= j#0)
            {
            }

            assume {:id "id490"} LitInt(0) <= j#0
               && j#0 < Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq);
            assume {:id "id491"} i#0 != j#0;
            assert {:id "id492"} 0 <= j#0 && j#0 < Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq);
            assert {:id "id493"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
            assert {:id "id494"} 0 <= j#0
               && j#0 < Seq#Length($Unbox(read(old($Heap), this, _module.Map.values)): Seq);
            assume {:id "id495"} Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, j#0)
               == Seq#Index($Unbox(read(old($Heap), this, _module.Map.values)): Seq, j#0);
        }
        else
        {
            assume {:id "id496"} LitInt(0) <= j#0
                 && j#0 < Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq)
                 && i#0 != j#0
               ==> Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, j#0)
                 == Seq#Index($Unbox(read(old($Heap), this, _module.Map.values)): Seq, j#0);
        }

        assume {:id "id497"} (forall j#1: int :: 
          { Seq#Index($Unbox(read(old($Heap), this, _module.Map.values)): Seq, j#1) } 
            { Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, j#1) } 
            { Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, j#1) } 
            { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#1) } 
          (LitInt(0) <= j#1
                 && j#1 < Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq)
                 && i#0 != j#1
               ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#1)
                 == Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, j#1))
             && (LitInt(0) <= j#1
                 && j#1 < Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq)
                 && i#0 != j#1
               ==> Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, j#1)
                 == Seq#Index($Unbox(read(old($Heap), this, _module.Map.values)): Seq, j#1)));
    }
    else
    {
        assume {:id "id498"} LitInt(0) <= i#0
             && i#0 < Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq)
             && Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, i#0) == key#0
           ==> Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
               == Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq)
             && Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#0) == key#0
             && Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, i#0) == val#0
             && (forall j#1: int :: 
              { Seq#Index($Unbox(read(old($Heap), this, _module.Map.values)): Seq, j#1) } 
                { Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, j#1) } 
                { Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, j#1) } 
                { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#1) } 
              (LitInt(0) <= j#1
                     && j#1 < Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq)
                     && i#0 != j#1
                   ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#1)
                     == Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, j#1))
                 && (LitInt(0) <= j#1
                     && j#1 < Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq)
                     && i#0 != j#1
                   ==> Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, j#1)
                     == Seq#Index($Unbox(read(old($Heap), this, _module.Map.values)): Seq, j#1)));
    }

    assume {:id "id499"} (forall i#1: int :: 
      { Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, i#1) } 
        { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#1) } 
        { Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, i#1) } 
      (LitInt(0) <= i#1
             && i#1 < Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq)
             && Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, i#1) == key#0
           ==> Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
             == Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq))
         && (LitInt(0) <= i#1
             && i#1 < Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq)
             && Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, i#1) == key#0
           ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#1) == key#0)
         && (LitInt(0) <= i#1
             && i#1 < Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq)
             && Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, i#1) == key#0
           ==> Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, i#1) == val#0)
         && (LitInt(0) <= i#1
             && i#1 < Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq)
             && Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, i#1) == key#0
           ==> (forall j#2: int :: 
            { Seq#Index($Unbox(read(old($Heap), this, _module.Map.values)): Seq, j#2) } 
              { Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, j#2) } 
              { Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, j#2) } 
              { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#2) } 
            (LitInt(0) <= j#2
                   && j#2 < Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq)
                   && i#1 != j#2
                 ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#2)
                   == Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, j#2))
               && (LitInt(0) <= j#2
                   && j#2 < Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq)
                   && i#1 != j#2
                 ==> Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, j#2)
                   == Seq#Index($Unbox(read(old($Heap), this, _module.Map.values)): Seq, j#2)))));
    if (*)
    {
        assert {:id "id500"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
        assume {:id "id501"} !Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, key#0);
        assert {:id "id502"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
        assume {:id "id503"} Seq#Equal($Unbox(read($Heap, this, _module.Map.keys)): Seq, 
          Seq#Append($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, 
            Seq#Build(Seq#Empty(): Seq, key#0)));
        assert {:id "id504"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
        assume {:id "id505"} Seq#Equal($Unbox(read($Heap, this, _module.Map.values)): Seq, 
          Seq#Append($Unbox(read(old($Heap), this, _module.Map.values)): Seq, 
            Seq#Build(Seq#Empty(): Seq, val#0)));
    }
    else
    {
        assume {:id "id506"} !Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, key#0)
           ==> Seq#Equal($Unbox(read($Heap, this, _module.Map.keys)): Seq, 
              Seq#Append($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, 
                Seq#Build(Seq#Empty(): Seq, key#0)))
             && Seq#Equal($Unbox(read($Heap, this, _module.Map.values)): Seq, 
              Seq#Append($Unbox(read(old($Heap), this, _module.Map.values)): Seq, 
                Seq#Build(Seq#Empty(): Seq, val#0)));
    }
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
  requires {:id "id507"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq);
  requires {:id "id508"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall i#2: int, j#3: int :: 
        { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#3), Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#2) } 
        LitInt(0) <= i#2
             && i#2 < j#3
             && j#3 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
           ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#2)
             != Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#3));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
  free ensures {:id "id509"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq)
     && (forall i#3: int, j#4: int :: 
      { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#4), Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#3) } 
      LitInt(0) <= i#3
           && i#3 < j#4
           && j#4 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
         ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#3)
           != Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#4));
  free ensures true;
  ensures {:id "id510"} (forall i#1: int :: 
    { Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, i#1) } 
      { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#1) } 
      { Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, i#1) } 
    (LitInt(0) <= i#1
           && i#1 < Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq)
           && Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, i#1) == key#0
         ==> Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
           == Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq))
       && (LitInt(0) <= i#1
           && i#1 < Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq)
           && Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, i#1) == key#0
         ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#1) == key#0)
       && (LitInt(0) <= i#1
           && i#1 < Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq)
           && Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, i#1) == key#0
         ==> Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, i#1) == val#0)
       && (LitInt(0) <= i#1
           && i#1 < Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq)
           && Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, i#1) == key#0
         ==> (forall j#2: int :: 
          { Seq#Index($Unbox(read(old($Heap), this, _module.Map.values)): Seq, j#2) } 
            { Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, j#2) } 
            { Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, j#2) } 
            { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#2) } 
          (LitInt(0) <= j#2
                 && j#2 < Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq)
                 && i#1 != j#2
               ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#2)
                 == Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, j#2))
             && (LitInt(0) <= j#2
                 && j#2 < Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq)
                 && i#1 != j#2
               ==> Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, j#2)
                 == Seq#Index($Unbox(read(old($Heap), this, _module.Map.values)): Seq, j#2)))));
  free ensures true;
  ensures {:id "id511"} !Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, key#0)
     ==> Seq#Equal($Unbox(read($Heap, this, _module.Map.keys)): Seq, 
      Seq#Append($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, 
        Seq#Build(Seq#Empty(): Seq, key#0)));
  ensures {:id "id512"} !Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, key#0)
     ==> Seq#Equal($Unbox(read($Heap, this, _module.Map.values)): Seq, 
      Seq#Append($Unbox(read(old($Heap), this, _module.Map.values)): Seq, 
        Seq#Build(Seq#Empty(): Seq, val#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
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
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id513"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq)
     && (forall i#4: int, j#5: int :: 
      { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#5), Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#4) } 
      LitInt(0) <= i#4
           && i#4 < j#5
           && j#5 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
         ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#4)
           != Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#5));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
  ensures {:id "id514"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq);
  ensures {:id "id515"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall i#5: int, j#6: int :: 
        { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#6), Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#5) } 
        LitInt(0) <= i#5
             && i#5 < j#6
             && j#6 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
           ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#5)
             != Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#6));
  free ensures true;
  ensures {:id "id516"} (forall i#1: int :: 
    { Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, i#1) } 
      { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#1) } 
      { Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, i#1) } 
    (LitInt(0) <= i#1
           && i#1 < Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq)
           && Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, i#1) == key#0
         ==> Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
           == Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq))
       && (LitInt(0) <= i#1
           && i#1 < Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq)
           && Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, i#1) == key#0
         ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#1) == key#0)
       && (LitInt(0) <= i#1
           && i#1 < Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq)
           && Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, i#1) == key#0
         ==> Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, i#1) == val#0)
       && (LitInt(0) <= i#1
           && i#1 < Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq)
           && Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, i#1) == key#0
         ==> (forall j#2: int :: 
          { Seq#Index($Unbox(read(old($Heap), this, _module.Map.values)): Seq, j#2) } 
            { Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, j#2) } 
            { Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, j#2) } 
            { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#2) } 
          (LitInt(0) <= j#2
                 && j#2 < Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq)
                 && i#1 != j#2
               ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#2)
                 == Seq#Index($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, j#2))
             && (LitInt(0) <= j#2
                 && j#2 < Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq)
                 && i#1 != j#2
               ==> Seq#Index($Unbox(read($Heap, this, _module.Map.values)): Seq, j#2)
                 == Seq#Index($Unbox(read(old($Heap), this, _module.Map.values)): Seq, j#2)))));
  free ensures true;
  ensures {:id "id517"} !Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, key#0)
     ==> Seq#Equal($Unbox(read($Heap, this, _module.Map.keys)): Seq, 
      Seq#Append($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, 
        Seq#Build(Seq#Empty(): Seq, key#0)));
  ensures {:id "id518"} !Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, key#0)
     ==> Seq#Equal($Unbox(read($Heap, this, _module.Map.values)): Seq, 
      Seq#Append($Unbox(read(old($Heap), this, _module.Map.values)): Seq, 
        Seq#Build(Seq#Empty(): Seq, val#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.Add (correctness)"} Impl$$_module.Map.Add(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref, key#0: Box, val#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var j#7: int;
  var $rhs##0: int;
  var key##0: Box;
  var $rhs#0_0: Seq;
  var $rhs#0_1: Seq;
  var $rhs#1_0: Seq;

    // AddMethodImpl: Add, Impl$$_module.Map.Add
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(284,23)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    key##0 := key#0;
    call {:id "id519"} $rhs##0 := Call$$_module.Map.FindIndex(_module.Map$Key, _module.Map$Value, this, key##0);
    // TrCallStmt: After ProcessCallStmt
    j#7 := $rhs##0;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(285,5)
    assume true;
    if (j#7 == LitInt(-1))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(286,12)
        assume true;
        assert {:id "id521"} $_ModifiesFrame[this, _module.Map.keys];
        assume true;
        $rhs#0_0 := Seq#Append($Unbox(read($Heap, this, _module.Map.keys)): Seq, 
          Seq#Build(Seq#Empty(): Seq, key#0));
        $Heap := update($Heap, this, _module.Map.keys, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(287,14)
        assume true;
        assert {:id "id524"} $_ModifiesFrame[this, _module.Map.values];
        assume true;
        $rhs#0_1 := Seq#Append($Unbox(read($Heap, this, _module.Map.values)): Seq, 
          Seq#Build(Seq#Empty(): Seq, val#0));
        $Heap := update($Heap, this, _module.Map.values, $Box($rhs#0_1));
        assume $IsGoodHeap($Heap);
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(289,14)
        assume true;
        assert {:id "id527"} $_ModifiesFrame[this, _module.Map.values];
        assert {:id "id528"} 0 <= j#7 && j#7 < Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq);
        assume true;
        $rhs#1_0 := Seq#Update($Unbox(read($Heap, this, _module.Map.values)): Seq, j#7, val#0);
        $Heap := update($Heap, this, _module.Map.values, $Box($rhs#1_0));
        assume $IsGoodHeap($Heap);
    }
}



procedure {:verboseName "Map.Remove (well-formedness)"} CheckWellFormed$$_module.Map.Remove(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    key#0: Box
       where $IsBox(key#0, _module.Map$Key) && $IsAllocBox(key#0, _module.Map$Key, $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.Remove (well-formedness)"} CheckWellFormed$$_module.Map.Remove(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref, key#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: Box;
  var k#2: Box;
  var h#0: int;


    // AddMethodImpl: Remove, CheckWellFormed$$_module.Map.Remove
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Map?(_module.Map$Key, _module.Map$Value), $Heap);
    assume _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
    assume {:id "id531"} _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this);
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Map?(_module.Map$Key, _module.Map$Value), $Heap);
    assume _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
    assume {:id "id532"} _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this);
    // Begin Comprehension WF check
    havoc k#0;
    if ($IsBox(k#0, _module.Map$Key) && $IsAllocBox(k#0, _module.Map$Key, $Heap))
    {
        if (Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, k#0))
        {
            assert {:id "id533"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
        }
    }

    // End Comprehension WF check
    assume {:id "id534"} (forall k#1: Box :: 
      { Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, k#1) } 
        { Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, k#1) } 
      $IsBox(k#1, _module.Map$Key)
         ==> 
        Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, k#1)
         ==> Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, k#1));
    havoc k#2;
    assume $IsBox(k#2, _module.Map$Key) && $IsAllocBox(k#2, _module.Map$Key, $Heap);
    if (*)
    {
        assert {:id "id535"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
        assume {:id "id536"} Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, k#2);
        if (*)
        {
            assume {:id "id537"} Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, k#2);
        }
        else
        {
            assume {:id "id538"} !Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, k#2);
            assume {:id "id539"} k#2 == key#0;
        }
    }
    else
    {
        assume {:id "id540"} Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, k#2)
           ==> Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, k#2)
             || k#2 == key#0;
    }

    assume {:id "id541"} (forall k#3: Box :: 
      { Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, k#3) } 
        { Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, k#3) } 
      $IsBox(k#3, _module.Map$Key)
         ==> 
        Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, k#3)
         ==> Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, k#3)
           || k#3 == key#0);
    if (*)
    {
        assert {:id "id542"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
        assume {:id "id543"} !Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, key#0);
        assert {:id "id544"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
        assume {:id "id545"} Seq#Equal($Unbox(read($Heap, this, _module.Map.keys)): Seq, 
          $Unbox(read(old($Heap), this, _module.Map.keys)): Seq);
        assert {:id "id546"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
        assume {:id "id547"} Seq#Equal($Unbox(read($Heap, this, _module.Map.values)): Seq, 
          $Unbox(read(old($Heap), this, _module.Map.values)): Seq);
    }
    else
    {
        assume {:id "id548"} !Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, key#0)
           ==> Seq#Equal($Unbox(read($Heap, this, _module.Map.keys)): Seq, 
              $Unbox(read(old($Heap), this, _module.Map.keys)): Seq)
             && Seq#Equal($Unbox(read($Heap, this, _module.Map.values)): Seq, 
              $Unbox(read(old($Heap), this, _module.Map.values)): Seq);
    }

    if (*)
    {
        assert {:id "id549"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
        assume {:id "id550"} Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, key#0);
        assert {:id "id551"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
        assume {:id "id552"} Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
           == Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq) - 1;
        assume {:id "id553"} !Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, key#0);
        havoc h#0;
        assume true;
        if (LitInt(0) <= h#0)
        {
        }

        assume {:id "id554"} LitInt(0) <= h#0
           && h#0 <= Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq);
        assert {:id "id555"} 0 <= h#0 && h#0 <= Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq);
        assert {:id "id556"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
        assert {:id "id557"} 0 <= h#0
           && h#0 <= Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq);
        assume {:id "id558"} Seq#Equal(Seq#Take($Unbox(read($Heap, this, _module.Map.keys)): Seq, h#0), 
          Seq#Take($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, h#0));
        assert {:id "id559"} 0 <= h#0
           && h#0 <= Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq);
        assert {:id "id560"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
        assert {:id "id561"} 0 <= h#0
           && h#0 <= Seq#Length($Unbox(read(old($Heap), this, _module.Map.values)): Seq);
        assume {:id "id562"} Seq#Equal(Seq#Take($Unbox(read($Heap, this, _module.Map.values)): Seq, h#0), 
          Seq#Take($Unbox(read(old($Heap), this, _module.Map.values)): Seq, h#0));
        assert {:id "id563"} 0 <= h#0 && h#0 <= Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq);
        assert {:id "id564"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
        assert {:id "id565"} 0 <= h#0 + 1
           && h#0 + 1 <= Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq);
        assume {:id "id566"} Seq#Equal(Seq#Drop($Unbox(read($Heap, this, _module.Map.keys)): Seq, h#0), 
          Seq#Drop($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, h#0 + 1));
        assert {:id "id567"} 0 <= h#0
           && h#0 <= Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq);
        assert {:id "id568"} $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), old($Heap));
        assert {:id "id569"} 0 <= h#0 + 1
           && h#0 + 1 <= Seq#Length($Unbox(read(old($Heap), this, _module.Map.values)): Seq);
        assume {:id "id570"} Seq#Equal(Seq#Drop($Unbox(read($Heap, this, _module.Map.values)): Seq, h#0), 
          Seq#Drop($Unbox(read(old($Heap), this, _module.Map.values)): Seq, h#0 + 1));
    }
    else
    {
        assume {:id "id571"} Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, key#0)
           ==> Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
               == Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq) - 1
             && !Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, key#0)
             && (exists h#1: int :: 
              { Seq#Drop($Unbox(read($Heap, this, _module.Map.values)): Seq, h#1) } 
                { Seq#Drop($Unbox(read($Heap, this, _module.Map.keys)): Seq, h#1) } 
                { Seq#Take($Unbox(read(old($Heap), this, _module.Map.values)): Seq, h#1) } 
                { Seq#Take($Unbox(read($Heap, this, _module.Map.values)): Seq, h#1) } 
                { Seq#Take($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, h#1) } 
                { Seq#Take($Unbox(read($Heap, this, _module.Map.keys)): Seq, h#1) } 
              LitInt(0) <= h#1
                 && h#1 <= Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
                 && Seq#Equal(Seq#Take($Unbox(read($Heap, this, _module.Map.keys)): Seq, h#1), 
                  Seq#Take($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, h#1))
                 && Seq#Equal(Seq#Take($Unbox(read($Heap, this, _module.Map.values)): Seq, h#1), 
                  Seq#Take($Unbox(read(old($Heap), this, _module.Map.values)): Seq, h#1))
                 && Seq#Equal(Seq#Drop($Unbox(read($Heap, this, _module.Map.keys)): Seq, h#1), 
                  Seq#Drop($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, h#1 + 1))
                 && Seq#Equal(Seq#Drop($Unbox(read($Heap, this, _module.Map.values)): Seq, h#1), 
                  Seq#Drop($Unbox(read(old($Heap), this, _module.Map.values)): Seq, h#1 + 1)));
    }
}



procedure {:verboseName "Map.Remove (call)"} Call$$_module.Map.Remove(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    key#0: Box
       where $IsBox(key#0, _module.Map$Key) && $IsAllocBox(key#0, _module.Map$Key, $Heap));
  // user-defined preconditions
  requires {:id "id572"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq);
  requires {:id "id573"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall i#0: int, j#0: int :: 
        { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#0), Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#0) } 
        LitInt(0) <= i#0
             && i#0 < j#0
             && j#0 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
           ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#0)
             != Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
  free ensures {:id "id574"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq)
     && (forall i#1: int, j#1: int :: 
      { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#1), Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#1) } 
      LitInt(0) <= i#1
           && i#1 < j#1
           && j#1 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
         ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#1)
           != Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#1));
  free ensures true;
  ensures {:id "id575"} (forall k#1: Box :: 
    { Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, k#1) } 
      { Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, k#1) } 
    $IsBox(k#1, _module.Map$Key)
       ==> 
      Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, k#1)
       ==> Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, k#1));
  free ensures true;
  ensures {:id "id576"} (forall k#3: Box :: 
    { Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, k#3) } 
      { Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, k#3) } 
    $IsBox(k#3, _module.Map$Key)
       ==> 
      Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, k#3)
       ==> Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, k#3)
         || k#3 == key#0);
  free ensures true;
  ensures {:id "id577"} !Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, key#0)
     ==> Seq#Equal($Unbox(read($Heap, this, _module.Map.keys)): Seq, 
      $Unbox(read(old($Heap), this, _module.Map.keys)): Seq);
  ensures {:id "id578"} !Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, key#0)
     ==> Seq#Equal($Unbox(read($Heap, this, _module.Map.values)): Seq, 
      $Unbox(read(old($Heap), this, _module.Map.values)): Seq);
  free ensures true;
  ensures {:id "id579"} Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, key#0)
     ==> Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
       == Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq) - 1;
  ensures {:id "id580"} Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, key#0)
     ==> !Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, key#0);
  ensures {:id "id581"} Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, key#0)
     ==> (exists h#1: int :: 
      { Seq#Drop($Unbox(read($Heap, this, _module.Map.values)): Seq, h#1) } 
        { Seq#Drop($Unbox(read($Heap, this, _module.Map.keys)): Seq, h#1) } 
        { Seq#Take($Unbox(read(old($Heap), this, _module.Map.values)): Seq, h#1) } 
        { Seq#Take($Unbox(read($Heap, this, _module.Map.values)): Seq, h#1) } 
        { Seq#Take($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, h#1) } 
        { Seq#Take($Unbox(read($Heap, this, _module.Map.keys)): Seq, h#1) } 
      LitInt(0) <= h#1
         && h#1 <= Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
         && Seq#Equal(Seq#Take($Unbox(read($Heap, this, _module.Map.keys)): Seq, h#1), 
          Seq#Take($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, h#1))
         && Seq#Equal(Seq#Take($Unbox(read($Heap, this, _module.Map.values)): Seq, h#1), 
          Seq#Take($Unbox(read(old($Heap), this, _module.Map.values)): Seq, h#1))
         && Seq#Equal(Seq#Drop($Unbox(read($Heap, this, _module.Map.keys)): Seq, h#1), 
          Seq#Drop($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, h#1 + 1))
         && Seq#Equal(Seq#Drop($Unbox(read($Heap, this, _module.Map.values)): Seq, h#1), 
          Seq#Drop($Unbox(read(old($Heap), this, _module.Map.values)): Seq, h#1 + 1)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Map.Remove (correctness)"} Impl$$_module.Map.Remove(_module.Map$Key: Ty, 
    _module.Map$Value: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value))
         && $IsAlloc(this, Tclass._module.Map(_module.Map$Key, _module.Map$Value), $Heap), 
    key#0: Box
       where $IsBox(key#0, _module.Map$Key) && $IsAllocBox(key#0, _module.Map$Key, $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id582"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq)
     && (forall i#2: int, j#2: int :: 
      { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#2), Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#2) } 
      LitInt(0) <= i#2
           && i#2 < j#2
           && j#2 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
         ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#2)
           != Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#2));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
  ensures {:id "id583"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq);
  ensures {:id "id584"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall i#3: int, j#3: int :: 
        { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#3), Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#3) } 
        LitInt(0) <= i#3
             && i#3 < j#3
             && j#3 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
           ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#3)
             != Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#3));
  free ensures true;
  ensures {:id "id585"} (forall k#1: Box :: 
    { Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, k#1) } 
      { Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, k#1) } 
    $IsBox(k#1, _module.Map$Key)
       ==> 
      Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, k#1)
       ==> Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, k#1));
  free ensures true;
  ensures {:id "id586"} (forall k#3: Box :: 
    { Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, k#3) } 
      { Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, k#3) } 
    $IsBox(k#3, _module.Map$Key)
       ==> 
      Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, k#3)
       ==> Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, k#3)
         || k#3 == key#0);
  free ensures true;
  ensures {:id "id587"} !Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, key#0)
     ==> Seq#Equal($Unbox(read($Heap, this, _module.Map.keys)): Seq, 
      $Unbox(read(old($Heap), this, _module.Map.keys)): Seq);
  ensures {:id "id588"} !Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, key#0)
     ==> Seq#Equal($Unbox(read($Heap, this, _module.Map.values)): Seq, 
      $Unbox(read(old($Heap), this, _module.Map.values)): Seq);
  free ensures true;
  ensures {:id "id589"} Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, key#0)
     ==> Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
       == Seq#Length($Unbox(read(old($Heap), this, _module.Map.keys)): Seq) - 1;
  ensures {:id "id590"} Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, key#0)
     ==> !Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, key#0);
  ensures {:id "id591"} Seq#Contains($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, key#0)
     ==> (exists h#1: int :: 
      { Seq#Drop($Unbox(read($Heap, this, _module.Map.values)): Seq, h#1) } 
        { Seq#Drop($Unbox(read($Heap, this, _module.Map.keys)): Seq, h#1) } 
        { Seq#Take($Unbox(read(old($Heap), this, _module.Map.values)): Seq, h#1) } 
        { Seq#Take($Unbox(read($Heap, this, _module.Map.values)): Seq, h#1) } 
        { Seq#Take($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, h#1) } 
        { Seq#Take($Unbox(read($Heap, this, _module.Map.keys)): Seq, h#1) } 
      LitInt(0) <= h#1
         && h#1 <= Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
         && Seq#Equal(Seq#Take($Unbox(read($Heap, this, _module.Map.keys)): Seq, h#1), 
          Seq#Take($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, h#1))
         && Seq#Equal(Seq#Take($Unbox(read($Heap, this, _module.Map.values)): Seq, h#1), 
          Seq#Take($Unbox(read(old($Heap), this, _module.Map.values)): Seq, h#1))
         && Seq#Equal(Seq#Drop($Unbox(read($Heap, this, _module.Map.keys)): Seq, h#1), 
          Seq#Drop($Unbox(read(old($Heap), this, _module.Map.keys)): Seq, h#1 + 1))
         && Seq#Equal(Seq#Drop($Unbox(read($Heap, this, _module.Map.values)): Seq, h#1), 
          Seq#Drop($Unbox(read(old($Heap), this, _module.Map.values)): Seq, h#1 + 1)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.Remove (correctness)"} Impl$$_module.Map.Remove(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref, key#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var j#4: int;
  var $rhs##0: int;
  var key##0: Box;
  var $rhs#0_0: Seq;
  var $rhs#0_1: Seq;

    // AddMethodImpl: Remove, Impl$$_module.Map.Remove
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(313,23)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    key##0 := key#0;
    call {:id "id592"} $rhs##0 := Call$$_module.Map.FindIndex(_module.Map$Key, _module.Map$Value, this, key##0);
    // TrCallStmt: After ProcessCallStmt
    j#4 := $rhs##0;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(314,5)
    assume true;
    if (LitInt(0) <= j#4)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(315,12)
        assume true;
        assert {:id "id594"} $_ModifiesFrame[this, _module.Map.keys];
        assert {:id "id595"} 0 <= j#4 && j#4 <= Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq);
        assert {:id "id596"} 0 <= j#4 + 1
           && j#4 + 1 <= Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq);
        assume true;
        $rhs#0_0 := Seq#Append(Seq#Take($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#4), 
          Seq#Drop($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#4 + 1));
        $Heap := update($Heap, this, _module.Map.keys, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(316,14)
        assume true;
        assert {:id "id599"} $_ModifiesFrame[this, _module.Map.values];
        assert {:id "id600"} 0 <= j#4
           && j#4 <= Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq);
        assert {:id "id601"} 0 <= j#4 + 1
           && j#4 + 1 <= Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq);
        assume true;
        $rhs#0_1 := Seq#Append(Seq#Take($Unbox(read($Heap, this, _module.Map.values)): Seq, j#4), 
          Seq#Drop($Unbox(read($Heap, this, _module.Map.values)): Seq, j#4 + 1));
        $Heap := update($Heap, this, _module.Map.values, $Box($rhs#0_1));
        assume $IsGoodHeap($Heap);
    }
    else
    {
    }
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
   returns (idx#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.FindIndex (well-formedness)"} CheckWellFormed$$_module.Map.FindIndex(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref, key#0: Box)
   returns (idx#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: FindIndex, CheckWellFormed$$_module.Map.FindIndex
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Map?(_module.Map$Key, _module.Map$Value), $Heap);
    assume _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this);
    assume {:id "id604"} _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc idx#0;
    assume {:id "id605"} LitInt(-1) <= idx#0;
    assume {:id "id606"} idx#0 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq);
    if (*)
    {
        assume {:id "id607"} idx#0 == LitInt(-1);
        assume {:id "id608"} !Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, key#0);
    }
    else
    {
        assume {:id "id609"} idx#0 == LitInt(-1)
           ==> !Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, key#0);
    }

    if (*)
    {
        assume {:id "id610"} LitInt(0) <= idx#0;
        assert {:id "id611"} 0 <= idx#0
           && idx#0 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq);
        assume {:id "id612"} Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, idx#0) == key#0;
    }
    else
    {
        assume {:id "id613"} LitInt(0) <= idx#0
           ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, idx#0) == key#0;
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
   returns (idx#0: int);
  // user-defined preconditions
  requires {:id "id614"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq);
  requires {:id "id615"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     ==> _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
       || (forall i#0: int, j#0: int :: 
        { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#0), Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#0) } 
        LitInt(0) <= i#0
             && i#0 < j#0
             && j#0 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
           ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#0)
             != Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id616"} LitInt(-1) <= idx#0;
  ensures {:id "id617"} idx#0 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq);
  free ensures true;
  ensures {:id "id618"} idx#0 == LitInt(-1)
     ==> !Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, key#0);
  free ensures true;
  ensures {:id "id619"} LitInt(0) <= idx#0
     ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, idx#0) == key#0;
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
   returns (idx#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id620"} _module.Map.Valid#canCall(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    _module.Map.Valid(_module.Map$Key, _module.Map$Value, $Heap, this)
     && 
    Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.Map.values)): Seq)
     && (forall i#1: int, j#1: int :: 
      { Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#1), Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#1) } 
      LitInt(0) <= i#1
           && i#1 < j#1
           && j#1 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq)
         ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, i#1)
           != Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id621"} LitInt(-1) <= idx#0;
  ensures {:id "id622"} idx#0 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq);
  free ensures true;
  ensures {:id "id623"} idx#0 == LitInt(-1)
     ==> !Seq#Contains($Unbox(read($Heap, this, _module.Map.keys)): Seq, key#0);
  free ensures true;
  ensures {:id "id624"} LitInt(0) <= idx#0
     ==> Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, idx#0) == key#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Map.FindIndex (correctness)"} Impl$$_module.Map.FindIndex(_module.Map$Key: Ty, _module.Map$Value: Ty, this: ref, key#0: Box)
   returns (idx#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var j#2: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: FindIndex, Impl$$_module.Map.FindIndex
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(326,11)
    assume true;
    assume true;
    j#2 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(327,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq) - j#2;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id627"} $w$loop#0
         ==> j#2 <= Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq);
      free invariant true;
      invariant {:id "id630"} $w$loop#0
         ==> !Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#2), key#0);
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
      free invariant Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq) - j#2
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id626"} j#2 <= Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq);
            assert {:id "id628"} {:subsumption 0} 0 <= j#2 && j#2 <= Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq);
            assume true;
            assume {:id "id629"} !Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#2), key#0);
            assume true;
            assume false;
        }

        assume true;
        if (Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq) <= j#2)
        {
            break;
        }

        $decr$loop#00 := Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq) - j#2;
        push;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(331,7)
        assert {:id "id631"} 0 <= j#2 && j#2 < Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq);
        assume true;
        if (Seq#Index($Unbox(read($Heap, this, _module.Map.keys)): Seq, j#2) == key#0)
        {
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(332,13)
            assume true;
            assume true;
            idx#0 := j#2;
            // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(333,9)
            pop;
            pop;
            return;

            pop;
        }
        else
        {
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(335,9)
        assume true;
        assume true;
        j#2 := j#2 + 1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(327,5)
        assert {:id "id634"} 0 <= $decr$loop#00
           || Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq) - j#2
             == $decr$loop#00;
        assert {:id "id635"} Seq#Length($Unbox(read($Heap, this, _module.Map.keys)): Seq) - j#2
           < $decr$loop#00;
        assume true;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSI-Benchmarks/b8.dfy(337,9)
    assume true;
    assume true;
    idx#0 := LitInt(-1);
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

const unique tytagFamily$Maybe: TyTagFamily;

const unique tytagFamily$Queue: TyTagFamily;

const unique tytagFamily$Glossary: TyTagFamily;

const unique tytagFamily$Word: TyTagFamily;

const unique tytagFamily$ReaderStream: TyTagFamily;

const unique tytagFamily$Map: TyTagFamily;

const unique tytagFamily$WriterStream: TyTagFamily;

const unique field$contents: NameFamily;

const unique field$footprint: NameFamily;

const unique field$isOpen: NameFamily;

const unique field$keys: NameFamily;

const unique field$values: NameFamily;

const unique field$stream: NameFamily;
