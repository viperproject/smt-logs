// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy

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

procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Main (call)"} Call$$_module.__default.Main();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.NonEmptyIntSet() : Ty
uses {
// Tclass._module.NonEmptyIntSet Tag
axiom Tag(Tclass._module.NonEmptyIntSet()) == Tagclass._module.NonEmptyIntSet
   && TagFamily(Tclass._module.NonEmptyIntSet()) == tytagFamily$NonEmptyIntSet;
}

const unique Tagclass._module.NonEmptyIntSet: TyTag;

// Box/unbox axiom for Tclass._module.NonEmptyIntSet
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NonEmptyIntSet()) } 
  $IsBox(bx, Tclass._module.NonEmptyIntSet())
     ==> $Box($Unbox(bx): Set) == bx
       && $Is($Unbox(bx): Set, Tclass._module.NonEmptyIntSet()));

function Tclass._module.WithTypeParameters(Ty, Ty) : Ty;

const unique Tagclass._module.WithTypeParameters: TyTag;

// Tclass._module.WithTypeParameters Tag
axiom (forall _module.WithTypeParameters$A: Ty, _module.WithTypeParameters$B: Ty :: 
  { Tclass._module.WithTypeParameters(_module.WithTypeParameters$A, _module.WithTypeParameters$B) } 
  Tag(Tclass._module.WithTypeParameters(_module.WithTypeParameters$A, _module.WithTypeParameters$B))
       == Tagclass._module.WithTypeParameters
     && TagFamily(Tclass._module.WithTypeParameters(_module.WithTypeParameters$A, _module.WithTypeParameters$B))
       == tytagFamily$WithTypeParameters);

function Tclass._module.WithTypeParameters_0(Ty) : Ty;

// Tclass._module.WithTypeParameters injectivity 0
axiom (forall _module.WithTypeParameters$A: Ty, _module.WithTypeParameters$B: Ty :: 
  { Tclass._module.WithTypeParameters(_module.WithTypeParameters$A, _module.WithTypeParameters$B) } 
  Tclass._module.WithTypeParameters_0(Tclass._module.WithTypeParameters(_module.WithTypeParameters$A, _module.WithTypeParameters$B))
     == _module.WithTypeParameters$A);

function Tclass._module.WithTypeParameters_1(Ty) : Ty;

// Tclass._module.WithTypeParameters injectivity 1
axiom (forall _module.WithTypeParameters$A: Ty, _module.WithTypeParameters$B: Ty :: 
  { Tclass._module.WithTypeParameters(_module.WithTypeParameters$A, _module.WithTypeParameters$B) } 
  Tclass._module.WithTypeParameters_1(Tclass._module.WithTypeParameters(_module.WithTypeParameters$A, _module.WithTypeParameters$B))
     == _module.WithTypeParameters$B);

// Box/unbox axiom for Tclass._module.WithTypeParameters
axiom (forall _module.WithTypeParameters$A: Ty, _module.WithTypeParameters$B: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass._module.WithTypeParameters(_module.WithTypeParameters$A, _module.WithTypeParameters$B)) } 
  $IsBox(bx, 
      Tclass._module.WithTypeParameters(_module.WithTypeParameters$A, _module.WithTypeParameters$B))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._module.WithTypeParameters(_module.WithTypeParameters$A, _module.WithTypeParameters$B)));

function Tclass._module.Dt() : Ty
uses {
// Tclass._module.Dt Tag
axiom Tag(Tclass._module.Dt()) == Tagclass._module.Dt
   && TagFamily(Tclass._module.Dt()) == tytagFamily$Dt;
}

const unique Tagclass._module.Dt: TyTag;

// Box/unbox axiom for Tclass._module.Dt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Dt()) } 
  $IsBox(bx, Tclass._module.Dt())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Dt()));

function Tclass._module.MyClass() : Ty
uses {
// Tclass._module.MyClass Tag
axiom Tag(Tclass._module.MyClass()) == Tagclass._module.MyClass
   && TagFamily(Tclass._module.MyClass()) == tytagFamily$MyClass;
}

const unique Tagclass._module.MyClass: TyTag;

// Box/unbox axiom for Tclass._module.MyClass
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyClass()) } 
  $IsBox(bx, Tclass._module.MyClass())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.MyClass()));

function Tclass._module.MyClass?() : Ty
uses {
// Tclass._module.MyClass? Tag
axiom Tag(Tclass._module.MyClass?()) == Tagclass._module.MyClass?
   && TagFamily(Tclass._module.MyClass?()) == tytagFamily$MyClass;
axiom implements$_module.Tr(Tclass._module.MyClass?());
}

const unique Tagclass._module.MyClass?: TyTag;

// Box/unbox axiom for Tclass._module.MyClass?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyClass?()) } 
  $IsBox(bx, Tclass._module.MyClass?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.MyClass?()));

function Tclass._module.MyClassWithCtor() : Ty
uses {
// Tclass._module.MyClassWithCtor Tag
axiom Tag(Tclass._module.MyClassWithCtor()) == Tagclass._module.MyClassWithCtor
   && TagFamily(Tclass._module.MyClassWithCtor()) == tytagFamily$MyClassWithCtor;
}

const unique Tagclass._module.MyClassWithCtor: TyTag;

// Box/unbox axiom for Tclass._module.MyClassWithCtor
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyClassWithCtor()) } 
  $IsBox(bx, Tclass._module.MyClassWithCtor())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.MyClassWithCtor()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#0: int where LitInt(6) <= m#0;
  var n#0: int where LitInt(6) <= n#0;
  var newtype$check#0: int;
  var s#0: int where LitInt(-32768) <= s#0 && s#0 < 32768;
  var s'#0: int where LitInt(-32768) <= s'#0 && s'#0 < 32768;
  var nes#0: Set
     where $Is(nes#0, Tclass._module.NonEmptyIntSet())
       && $IsAlloc(nes#0, Tclass._module.NonEmptyIntSet(), $Heap);
  var S##0: Set;
  var f0#0: DatatypeType
     where $Is(f0#0, Tclass._System.Tuple2(TInt, TBool))
       && $IsAlloc(f0#0, Tclass._System.Tuple2(TInt, TBool), $Heap);
  var f1#0: DatatypeType
     where $Is(f1#0, Tclass._module.WithTypeParameters(TInt, TBool))
       && $IsAlloc(f1#0, Tclass._module.WithTypeParameters(TInt, TBool), $Heap);
  var dt#0: DatatypeType
     where $Is(dt#0, Tclass._module.Dt()) && $IsAlloc(dt#0, Tclass._module.Dt(), $Heap);
  var defass#cl#0: bool;
  var cl#0: ref
     where defass#cl#0
       ==> $Is(cl#0, Tclass._module.MyClass())
         && $IsAlloc(cl#0, Tclass._module.MyClass(), $Heap);
  var $nw: ref;
  var S##1: Set;
  var defass#cl'#0: bool;
  var cl'#0: ref
     where defass#cl'#0
       ==> $Is(cl'#0, Tclass._module.MyClassWithCtor())
         && $IsAlloc(cl'#0, Tclass._module.MyClassWithCtor(), $Heap);
  var y##0: int;
  var S##2: Set;
  var which##0: int;
  var which##1: int;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc m#0 /* where LitInt(6) <= m#0 */;
    havoc n#0 /* where LitInt(6) <= n#0 */;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(44,3)
    if (LitInt(6) <= m#0)
    {
        newtype$check#0 := LitInt(6);
        assert {:id "id42"} LitInt(6) <= newtype$check#0;
    }

    assume true;
    assert {:id "id43"} {:subsumption 0} LitInt(6) <= m#0;
    assert {:id "id44"} {:subsumption 0} LitInt(6) <= n#0;
    assume {:id "id45"} LitInt(6) <= m#0 && LitInt(6) <= n#0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(45,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    havoc s#0 /* where LitInt(-32768) <= s#0 && s#0 < 32768 */, s'#0 /* where LitInt(-32768) <= s'#0 && s'#0 < 32768 */;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(47,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    havoc nes#0 /* where $Is(nes#0, Tclass._module.NonEmptyIntSet())
       && $IsAlloc(nes#0, Tclass._module.NonEmptyIntSet(), $Heap) */;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(49,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(49,26)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##0 := nes#0;
    call {:id "id46"} Call$$_module.__default.PrintSet(S##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(49,33)
    assume true;
    havoc f0#0 /* where $Is(f0#0, Tclass._System.Tuple2(TInt, TBool))
       && $IsAlloc(f0#0, Tclass._System.Tuple2(TInt, TBool), $Heap) */, f1#0 /* where $Is(f1#0, Tclass._module.WithTypeParameters(TInt, TBool))
       && $IsAlloc(f1#0, Tclass._module.WithTypeParameters(TInt, TBool), $Heap) */;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(51,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    havoc dt#0 /* where $Is(dt#0, Tclass._module.Dt()) && $IsAlloc(dt#0, Tclass._module.Dt(), $Heap) */;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(53,3)
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(54,10)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.MyClass?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    cl#0 := $nw;
    defass#cl#0 := true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(55,3)
    assume true;
    assert {:id "id48"} defass#cl#0;
    assert {:id "id49"} {:subsumption 0} cl#0 != null;
    assume true;
    assume true;
    assert {:id "id50"} defass#cl#0;
    assert {:id "id51"} {:subsumption 0} cl#0 != null;
    assume true;
    assume true;
    assert {:id "id52"} defass#cl#0;
    assert {:id "id53"} {:subsumption 0} cl#0 != null;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(55,76)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id54"} defass#cl#0;
    assert {:id "id55"} cl#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##1 := $Unbox(read($Heap, cl#0, _module.MyClass.nes)): Set;
    call {:id "id56"} Call$$_module.__default.PrintSet(S##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(55,86)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(56,11)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(56,34)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := LitInt(20);
    call {:id "id57"} $nw := Call$$_module.MyClassWithCtor.Init(y##0);
    // TrCallStmt: After ProcessCallStmt
    cl'#0 := $nw;
    defass#cl'#0 := true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(57,3)
    assume true;
    assert {:id "id59"} defass#cl'#0;
    assert {:id "id60"} {:subsumption 0} cl'#0 != null;
    assume true;
    assume true;
    assert {:id "id61"} defass#cl'#0;
    assert {:id "id62"} {:subsumption 0} cl'#0 != null;
    assume true;
    assume true;
    assert {:id "id63"} defass#cl'#0;
    assert {:id "id64"} {:subsumption 0} cl'#0 != null;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(57,80)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id65"} defass#cl'#0;
    assert {:id "id66"} cl'#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##2 := $Unbox(read($Heap, cl'#0, _module.MyClassWithCtor.nes)): Set;
    call {:id "id67"} Call$$_module.__default.PrintSet(S##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(57,91)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(58,34)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    which##0 := LitInt(0);
    call {:id "id68"} Call$$AdvancedZeroInitialization.__default.Test(which##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(59,34)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    which##1 := LitInt(1);
    call {:id "id69"} Call$$AdvancedZeroInitialization.__default.Test(which##1);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "PrintSet (well-formedness)"} CheckWellFormed$$_module.__default.PrintSet(S#0: Set where $Is(S#0, TSet(TInt)) && $IsAlloc(S#0, TSet(TInt), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintSet (call)"} Call$$_module.__default.PrintSet(S#0: Set where $Is(S#0, TSet(TInt)) && $IsAlloc(S#0, TSet(TInt), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintSet (correctness)"} Impl$$_module.__default.PrintSet(S#0: Set where $Is(S#0, TSet(TInt)) && $IsAlloc(S#0, TSet(TInt), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintSet (correctness)"} Impl$$_module.__default.PrintSet(S#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap);
  var sep#0: Seq where $Is(sep#0, TSeq(TChar)) && $IsAlloc(sep#0, TSeq(TChar), $Heap);
  var $rhs#0: Set;
  var $rhs#1: Seq;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var m#0_0: int;
  var $rhs##0_0: int;
  var s##0_0: Set;
  var x#0_0: int;
  var x#0_1: int;
  var y#0_0: int;
  var $rhs#0_0: Set;
  var $rhs#0_1: Seq;

    // AddMethodImpl: PrintSet, Impl$$_module.__default.PrintSet
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(124,3)
    assume true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(125,24)
    assume true;
    assume true;
    assume true;
    $rhs#0 := S#0;
    assume true;
    $rhs#1 := Lit(Seq#Empty(): Seq);
    s#0 := $rhs#0;
    sep#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(126,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0);
    havoc $w$loop#0;
    while (true)
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
      free invariant (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0)
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (Set#Card(s#0) <= LitInt(0))
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        assume true;
        if (Set#Card(s#0) == 0)
        {
            break;
        }

        $decr$loop#00 := (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0);
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(127,5)
        assume true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(129,36)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##0_0 := s#0;
        call {:id "id74"} $rhs##0_0 := Call$$_module.__default.ThereIsASmallest(s##0_0);
        // TrCallStmt: After ProcessCallStmt
        m#0_0 := $rhs##0_0;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(130,11)
        havoc x#0_1;
        if (true)
        {
            if (Set#IsMember(s#0, $Box(x#0_1)))
            {
                // Begin Comprehension WF check
                havoc y#0_0;
                if (true)
                {
                    if (Set#IsMember(s#0, $Box(y#0_0)))
                    {
                    }
                }

                // End Comprehension WF check
            }

            assume true;
        }

        assert {:id "id76"} ($Is(LitInt(0), TInt)
             && 
            Set#IsMember(s#0, $Box(LitInt(0)))
             && (forall y#0_3: int :: 
              { Set#IsMember(s#0, $Box(y#0_3)) } 
              Set#IsMember(s#0, $Box(y#0_3)) ==> LitInt(0) <= y#0_3))
           || (exists $as#x0_0#0_0: int :: 
            Set#IsMember(s#0, $Box($as#x0_0#0_0))
               && (forall y#0_2: int :: 
                { Set#IsMember(s#0, $Box(y#0_2)) } 
                Set#IsMember(s#0, $Box(y#0_2)) ==> $as#x0_0#0_0 <= y#0_2));
        havoc x#0_0;
        assume {:id "id77"} Set#IsMember(s#0, $Box(x#0_0))
           && (forall y#0_4: int :: 
            { Set#IsMember(s#0, $Box(y#0_4)) } 
            Set#IsMember(s#0, $Box(y#0_4)) ==> x#0_0 <= y#0_4);
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(131,5)
        assume true;
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(132,12)
        assume true;
        assume true;
        assume true;
        $rhs#0_0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, $Box(x#0_0)));
        assume true;
        $rhs#0_1 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(44))), $Box(char#FromInt(32))));
        s#0 := $rhs#0_0;
        sep#0 := $rhs#0_1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(126,3)
        assert {:id "id82"} 0 <= $decr$loop#00
           || (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0)
             == $decr$loop#00;
        assert {:id "id83"} (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0)
           < $decr$loop#00;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(134,3)
    assume true;
}



procedure {:verboseName "ThereIsASmallest (well-formedness)"} CheckWellFormed$$_module.__default.ThereIsASmallest(s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap))
   returns (m#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ThereIsASmallest (call)"} Call$$_module.__default.ThereIsASmallest(s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap))
   returns (m#0: int);
  // user-defined preconditions
  requires {:id "id90"} !Set#Equal(s#0, Set#Empty(): Set);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id91"} Set#IsMember(s#0, $Box(m#0));
  ensures {:id "id92"} (forall y#1: int :: 
    { Set#IsMember(s#0, $Box(y#1)) } 
    Set#IsMember(s#0, $Box(y#1)) ==> m#0 <= y#1);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ThereIsASmallest (correctness)"} Impl$$_module.__default.ThereIsASmallest(s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap))
   returns (m#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id93"} !Set#Equal(s#0, Set#Empty(): Set);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id94"} Set#IsMember(s#0, $Box(m#0));
  ensures {:id "id95"} (forall y#1: int :: 
    { Set#IsMember(s#0, $Box(y#1)) } 
    Set#IsMember(s#0, $Box(y#1)) ==> m#0 <= y#1);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ThereIsASmallest (correctness)"} Impl$$_module.__default.ThereIsASmallest(s#0: Set) returns (m#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#1: int;
  var eg$y#0: int;
  var y#0_0: int;
  var s'#1_0: Set where $Is(s'#1_0, TSet(TInt)) && $IsAlloc(s'#1_0, TSet(TInt), $Heap);
  var $rhs##1_0: int;
  var s##1_0: Set;

    // AddMethodImpl: ThereIsASmallest, Impl$$_module.__default.ThereIsASmallest
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(141,5)
    havoc m#1;
    if (true)
    {
        assume true;
    }

    assert {:id "id96"} ($Is(LitInt(0), TInt) && Set#IsMember(s#0, $Box(LitInt(0))))
       || (exists $as#m0#0: int :: Set#IsMember(s#0, $Box($as#m0#0)));
    havoc m#0;
    assume {:id "id97"} Set#IsMember(s#0, $Box(m#0));
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(142,3)
    // Begin Comprehension WF check
    havoc eg$y#0;
    if (true)
    {
        if (Set#IsMember(s#0, $Box(eg$y#0)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    havoc y#0_0;
    if (*)
    {
        assume Set#IsMember(s#0, $Box(y#0_0)) && y#0_0 < m#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(143,12)
        assume true;
        assume true;
        s'#1_0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, $Box(m#0)));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(144,5)
        assume true;
        assert {:id "id99"} Set#Equal(s#0, Set#Union(s'#1_0, Set#UnionOne(Set#Empty(): Set, $Box(m#0))));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(145,5)
        assume true;
        assert {:id "id100"} Set#IsMember(s'#1_0, $Box(y#0_0));
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(146,26)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##1_0 := s'#1_0;
        assert {:id "id101"} Set#Subset(s##1_0, s#0) && !Set#Subset(s#0, s##1_0);
        call {:id "id102"} $rhs##1_0 := Call$$_module.__default.ThereIsASmallest(s##1_0);
        // TrCallStmt: After ProcessCallStmt
        m#0 := $rhs##1_0;
    }
    else
    {
        assume {:id "id104"} !(exists eg$y#1: int :: 
          { Set#IsMember(s#0, $Box(eg$y#1)) } 
          Set#IsMember(s#0, $Box(eg$y#1)) && eg$y#1 < m#0);
    }
}



procedure {:verboseName "MyInt (well-formedness)"} CheckWellFormed$$_module.MyInt(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MyInt (well-formedness)"} CheckWellFormed$$_module.MyInt(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type MyInt
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume {:id "id105"} LitInt(6) <= x#0;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id106"} LitInt(6) <= LitInt(6);
        assume false;
    }
}



function Tclass._module.MyInt() : Ty
uses {
// Tclass._module.MyInt Tag
axiom Tag(Tclass._module.MyInt()) == Tagclass._module.MyInt
   && TagFamily(Tclass._module.MyInt()) == tytagFamily$MyInt;
}

const unique Tagclass._module.MyInt: TyTag;

// Box/unbox axiom for Tclass._module.MyInt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyInt()) } 
  $IsBox(bx, Tclass._module.MyInt())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.MyInt()));

// $Is axiom for subset type _module.MyInt
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.MyInt()) } 
  $Is(x#0, Tclass._module.MyInt()) <==> LitInt(6) <= x#0);

// $IsAlloc axiom for subset type _module.MyInt
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.MyInt(), $h) } 
  $IsAlloc(x#0, Tclass._module.MyInt(), $h));

procedure {:verboseName "MyNewInt (well-formedness)"} CheckWellFormed$$_module.MyNewInt(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MyNewInt (well-formedness)"} CheckWellFormed$$_module.MyNewInt(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype MyNewInt
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        assume {:id "id107"} LitInt(6) <= x#0;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id108"} LitInt(6) <= LitInt(12);
        assume false;
    }
}



function Tclass._module.MyNewInt() : Ty
uses {
// Tclass._module.MyNewInt Tag
axiom Tag(Tclass._module.MyNewInt()) == Tagclass._module.MyNewInt
   && TagFamily(Tclass._module.MyNewInt()) == tytagFamily$MyNewInt;
}

const unique Tagclass._module.MyNewInt: TyTag;

// Box/unbox axiom for Tclass._module.MyNewInt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyNewInt()) } 
  $IsBox(bx, Tclass._module.MyNewInt())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.MyNewInt()));

// $Is axiom for newtype _module.MyNewInt
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.MyNewInt()) } 
  $Is(x#0, Tclass._module.MyNewInt()) <==> LitInt(6) <= x#0);

// $IsAlloc axiom for newtype _module.MyNewInt
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.MyNewInt(), $h) } 
  $IsAlloc(x#0, Tclass._module.MyNewInt(), $h));

const unique class._module.MyNewInt: ClassName;

procedure {:verboseName "short (well-formedness)"} CheckWellFormed$$_module.short(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "short (well-formedness)"} CheckWellFormed$$_module.short(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype short
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(-32768) <= x#0)
        {
        }

        assume {:id "id109"} LitInt(-32768) <= x#0 && x#0 < 32768;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id110"} {:subsumption 0} LitInt(-32768) <= LitInt(0);
        assert {:id "id111"} {:subsumption 0} Lit(0 < 32768);
        assume false;
    }
}



function Tclass._module.short() : Ty
uses {
// Tclass._module.short Tag
axiom Tag(Tclass._module.short()) == Tagclass._module.short
   && TagFamily(Tclass._module.short()) == tytagFamily$short;
}

const unique Tagclass._module.short: TyTag;

// Box/unbox axiom for Tclass._module.short
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.short()) } 
  $IsBox(bx, Tclass._module.short())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.short()));

// $Is axiom for newtype _module.short
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.short()) } 
  $Is(x#0, Tclass._module.short()) <==> LitInt(-32768) <= x#0 && x#0 < 32768);

// $IsAlloc axiom for newtype _module.short
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.short(), $h) } 
  $IsAlloc(x#0, Tclass._module.short(), $h));

const unique class._module.short: ClassName;

procedure {:verboseName "short' (well-formedness)"} CheckWellFormed$$_module.short_k(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "short' (well-formedness)"} CheckWellFormed$$_module.short_k(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype short'
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(-32768) <= x#0)
        {
        }

        assume {:id "id112"} LitInt(-32768) <= x#0 && x#0 < 32768;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id113"} {:subsumption 0} LitInt(-32768) <= LitInt(-35);
        assert {:id "id114"} {:subsumption 0} Lit(-35 < 32768);
        assume false;
    }
}



function Tclass._module.short_k() : Ty
uses {
// Tclass._module.short_k Tag
axiom Tag(Tclass._module.short_k()) == Tagclass._module.short_k
   && TagFamily(Tclass._module.short_k()) == tytagFamily$short';
}

const unique Tagclass._module.short_k: TyTag;

// Box/unbox axiom for Tclass._module.short_k
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.short_k()) } 
  $IsBox(bx, Tclass._module.short_k())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.short_k()));

// $Is axiom for newtype _module.short'
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.short_k()) } 
  $Is(x#0, Tclass._module.short_k()) <==> LitInt(-32768) <= x#0 && x#0 < 32768);

// $IsAlloc axiom for newtype _module.short'
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.short_k(), $h) } 
  $IsAlloc(x#0, Tclass._module.short_k(), $h));

const unique class._module.short_k: ClassName;

procedure {:verboseName "FavoriateReals (well-formedness)"} CheckWellFormed$$_module.FavoriateReals(r#0: real);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FavoriateReals (well-formedness)"} CheckWellFormed$$_module.FavoriateReals(r#0: real)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype FavoriateReals
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (*)
        {
            assume {:id "id115"} r#0 == LitReal(314e-2);
        }
        else
        {
            assume {:id "id116"} r#0 != LitReal(314e-2);
            assume {:id "id117"} r#0 == LitReal(27e-1);
        }

        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id118"} LitReal(314e-2) == LitReal(314e-2) || LitReal(314e-2) == LitReal(27e-1);
        assume false;
    }
}



function Tclass._module.FavoriateReals() : Ty
uses {
// Tclass._module.FavoriateReals Tag
axiom Tag(Tclass._module.FavoriateReals()) == Tagclass._module.FavoriateReals
   && TagFamily(Tclass._module.FavoriateReals()) == tytagFamily$FavoriateReals;
}

const unique Tagclass._module.FavoriateReals: TyTag;

// Box/unbox axiom for Tclass._module.FavoriateReals
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.FavoriateReals()) } 
  $IsBox(bx, Tclass._module.FavoriateReals())
     ==> $Box($Unbox(bx): real) == bx
       && $Is($Unbox(bx): real, Tclass._module.FavoriateReals()));

// $Is axiom for newtype _module.FavoriateReals
axiom (forall r#0: real :: 
  { $Is(r#0, Tclass._module.FavoriateReals()) } 
  $Is(r#0, Tclass._module.FavoriateReals())
     <==> r#0 == LitReal(314e-2) || r#0 == LitReal(27e-1));

// $IsAlloc axiom for newtype _module.FavoriateReals
axiom (forall r#0: real, $h: Heap :: 
  { $IsAlloc(r#0, Tclass._module.FavoriateReals(), $h) } 
  $IsAlloc(r#0, Tclass._module.FavoriateReals(), $h));

const unique class._module.FavoriateReals: ClassName;

procedure {:verboseName "NonEmptyIntSet (well-formedness)"} CheckWellFormed$$_module.NonEmptyIntSet(s#0: Set);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NonEmptyIntSet (well-formedness)"} CheckWellFormed$$_module.NonEmptyIntSet(s#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type NonEmptyIntSet
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume $Is(s#0, TSet(TInt));
        assume {:id "id119"} Set#Card(s#0) != 0;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id120"} Set#Card(Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(57))))) != 0;
        assume false;
    }
}



// $Is axiom for subset type _module.NonEmptyIntSet
axiom (forall s#0: Set :: 
  { $Is(s#0, Tclass._module.NonEmptyIntSet()) } 
  $Is(s#0, Tclass._module.NonEmptyIntSet())
     <==> $Is(s#0, TSet(TInt)) && Set#Card(s#0) != 0);

// $IsAlloc axiom for subset type _module.NonEmptyIntSet
axiom (forall s#0: Set, $h: Heap :: 
  { $IsAlloc(s#0, Tclass._module.NonEmptyIntSet(), $h) } 
  $IsAlloc(s#0, Tclass._module.NonEmptyIntSet(), $h)
     <==> $IsAlloc(s#0, TSet(TInt), $h));

procedure {:verboseName "WithTypeParameters (well-formedness)"} CheckWellFormed$$_module.WithTypeParameters(_module.WithTypeParameters$A: Ty, 
    _module.WithTypeParameters$B: Ty, 
    ignoreTypeParams#0: DatatypeType);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WithTypeParameters (well-formedness)"} CheckWellFormed$$_module.WithTypeParameters(_module.WithTypeParameters$A: Ty, 
    _module.WithTypeParameters$B: Ty, 
    ignoreTypeParams#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var m#Z#0: Map;
  var let#0#0#0: Map;


    // AddWellformednessCheck for subset type WithTypeParameters
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume $Is(ignoreTypeParams#0, Tclass._System.Tuple2(TInt, TBool));
        assume {:id "id121"} true;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        havoc m#Z#0;
        assume {:id "id122"} let#0#0#0 == Lit(Map#Empty(): Map);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TMap(_module.WithTypeParameters$A, _module.WithTypeParameters$B));
        assume {:id "id123"} m#Z#0 == let#0#0#0;
        if ((var m#0 := Lit(Map#Empty(): Map); Map#Card(m#0) > 0))
        {
            assume true;
            assert {:id "id124"} Lit(true);
        }
        else
        {
            assume true;
            assert {:id "id125"} Lit(true);
        }

        assume false;
    }
}



// $Is axiom for subset type _module.WithTypeParameters
axiom (forall _module.WithTypeParameters$A: Ty, 
    _module.WithTypeParameters$B: Ty, 
    ignoreTypeParams#0: DatatypeType :: 
  { $Is(ignoreTypeParams#0, 
      Tclass._module.WithTypeParameters(_module.WithTypeParameters$A, _module.WithTypeParameters$B)) } 
  $Is(ignoreTypeParams#0, 
      Tclass._module.WithTypeParameters(_module.WithTypeParameters$A, _module.WithTypeParameters$B))
     <==> $Is(ignoreTypeParams#0, Tclass._System.Tuple2(TInt, TBool)) && Lit(true));

// $IsAlloc axiom for subset type _module.WithTypeParameters
axiom (forall _module.WithTypeParameters$A: Ty, 
    _module.WithTypeParameters$B: Ty, 
    ignoreTypeParams#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(ignoreTypeParams#0, 
      Tclass._module.WithTypeParameters(_module.WithTypeParameters$A, _module.WithTypeParameters$B), 
      $h) } 
  $IsAlloc(ignoreTypeParams#0, 
      Tclass._module.WithTypeParameters(_module.WithTypeParameters$A, _module.WithTypeParameters$B), 
      $h)
     <==> $IsAlloc(ignoreTypeParams#0, Tclass._System.Tuple2(TInt, TBool), $h));

// Constructor function declaration
function #_module.Dt.Atom(int) : DatatypeType;

const unique ##_module.Dt.Atom: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int :: 
  { #_module.Dt.Atom(a#0#0#0) } 
  DatatypeCtorId(#_module.Dt.Atom(a#0#0#0)) == ##_module.Dt.Atom);
}

function _module.Dt.Atom_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Dt.Atom_q(d) } 
  _module.Dt.Atom_q(d) <==> DatatypeCtorId(d) == ##_module.Dt.Atom);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Dt.Atom_q(d) } 
  _module.Dt.Atom_q(d) ==> (exists a#1#0#0: int :: d == #_module.Dt.Atom(a#1#0#0)));

// Constructor $Is
axiom (forall a#2#0#0: int :: 
  { $Is(#_module.Dt.Atom(a#2#0#0), Tclass._module.Dt()) } 
  $Is(#_module.Dt.Atom(a#2#0#0), Tclass._module.Dt())
     <==> $Is(a#2#0#0, Tclass._module.short_k()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Dt._h0(d), Tclass._module.short_k(), $h) } 
  $IsGoodHeap($h) && _module.Dt.Atom_q(d) && $IsAlloc(d, Tclass._module.Dt(), $h)
     ==> $IsAlloc(_module.Dt._h0(d), Tclass._module.short_k(), $h));

// Constructor literal
axiom (forall a#3#0#0: int :: 
  { #_module.Dt.Atom(LitInt(a#3#0#0)) } 
  #_module.Dt.Atom(LitInt(a#3#0#0)) == Lit(#_module.Dt.Atom(a#3#0#0)));

function _module.Dt._h0(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int :: 
  { #_module.Dt.Atom(a#4#0#0) } 
  _module.Dt._h0(#_module.Dt.Atom(a#4#0#0)) == a#4#0#0);

// Constructor function declaration
function #_module.Dt.More(DatatypeType) : DatatypeType;

const unique ##_module.Dt.More: DtCtorId
uses {
// Constructor identifier
axiom (forall a#5#0#0: DatatypeType :: 
  { #_module.Dt.More(a#5#0#0) } 
  DatatypeCtorId(#_module.Dt.More(a#5#0#0)) == ##_module.Dt.More);
}

function _module.Dt.More_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Dt.More_q(d) } 
  _module.Dt.More_q(d) <==> DatatypeCtorId(d) == ##_module.Dt.More);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Dt.More_q(d) } 
  _module.Dt.More_q(d)
     ==> (exists a#6#0#0: DatatypeType :: d == #_module.Dt.More(a#6#0#0)));

// Constructor $Is
axiom (forall a#7#0#0: DatatypeType :: 
  { $Is(#_module.Dt.More(a#7#0#0), Tclass._module.Dt()) } 
  $Is(#_module.Dt.More(a#7#0#0), Tclass._module.Dt())
     <==> $Is(a#7#0#0, Tclass._module.Dt()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Dt._h1(d), Tclass._module.Dt(), $h) } 
  $IsGoodHeap($h) && _module.Dt.More_q(d) && $IsAlloc(d, Tclass._module.Dt(), $h)
     ==> $IsAlloc(_module.Dt._h1(d), Tclass._module.Dt(), $h));

// Constructor literal
axiom (forall a#8#0#0: DatatypeType :: 
  { #_module.Dt.More(Lit(a#8#0#0)) } 
  #_module.Dt.More(Lit(a#8#0#0)) == Lit(#_module.Dt.More(a#8#0#0)));

function _module.Dt._h1(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#9#0#0: DatatypeType :: 
  { #_module.Dt.More(a#9#0#0) } 
  _module.Dt._h1(#_module.Dt.More(a#9#0#0)) == a#9#0#0);

// Inductive rank
axiom (forall a#10#0#0: DatatypeType :: 
  { #_module.Dt.More(a#10#0#0) } 
  DtRank(a#10#0#0) < DtRank(#_module.Dt.More(a#10#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Dt(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Dt())
     ==> $IsAlloc(d, Tclass._module.Dt(), $h));

// Depth-one case-split function
function $IsA#_module.Dt(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Dt(d) } 
  $IsA#_module.Dt(d) ==> _module.Dt.Atom_q(d) || _module.Dt.More_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Dt.More_q(d), $Is(d, Tclass._module.Dt()) } 
    { _module.Dt.Atom_q(d), $Is(d, Tclass._module.Dt()) } 
  $Is(d, Tclass._module.Dt()) ==> _module.Dt.Atom_q(d) || _module.Dt.More_q(d));

// Datatype extensional equality declaration
function _module.Dt#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Dt.Atom
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Dt#Equal(a, b), _module.Dt.Atom_q(a) } 
    { _module.Dt#Equal(a, b), _module.Dt.Atom_q(b) } 
  _module.Dt.Atom_q(a) && _module.Dt.Atom_q(b)
     ==> (_module.Dt#Equal(a, b) <==> _module.Dt._h0(a) == _module.Dt._h0(b)));

// Datatype extensional equality definition: #_module.Dt.More
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Dt#Equal(a, b), _module.Dt.More_q(a) } 
    { _module.Dt#Equal(a, b), _module.Dt.More_q(b) } 
  _module.Dt.More_q(a) && _module.Dt.More_q(b)
     ==> (_module.Dt#Equal(a, b)
       <==> _module.Dt#Equal(_module.Dt._h1(a), _module.Dt._h1(b))));

// Datatype extensionality axiom: _module.Dt
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Dt#Equal(a, b) } 
  _module.Dt#Equal(a, b) <==> a == b);

const unique class._module.Dt: ClassName;

const unique class._module.Tr?: ClassName;

function Tclass._module.Tr?() : Ty
uses {
// Tclass._module.Tr? Tag
axiom Tag(Tclass._module.Tr?()) == Tagclass._module.Tr?
   && TagFamily(Tclass._module.Tr?()) == tytagFamily$Tr;
}

const unique Tagclass._module.Tr?: TyTag;

// Box/unbox axiom for Tclass._module.Tr?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Tr?()) } 
  $IsBox(bx, Tclass._module.Tr?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Tr?()));

// $Is axiom for trait Tr
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Tr?()) } 
  $Is($o, Tclass._module.Tr?())
     <==> $o == null || implements$_module.Tr(dtype($o)));

// $IsAlloc axiom for trait Tr
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Tr?(), $h) } 
  $IsAlloc($o, Tclass._module.Tr?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.Tr(ty: Ty) : bool;

const _module.Tr.u: Field
uses {
axiom FDim(_module.Tr.u) == 0
   && FieldOfDecl(class._module.Tr?, field$u) == _module.Tr.u
   && !$IsGhostField(_module.Tr.u);
}

// Tr.u: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Tr.u)): int } 
  $IsGoodHeap($h) && $o != null && $Is($o, Tclass._module.Tr?())
     ==> $Is($Unbox(read($h, $o, _module.Tr.u)): int, Tclass._module.MyNewInt()));

// Tr.u: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Tr.u)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass._module.Tr?())
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Tr.u)): int, Tclass._module.MyNewInt(), $h));

function Tclass._module.Tr() : Ty
uses {
// Tclass._module.Tr Tag
axiom Tag(Tclass._module.Tr()) == Tagclass._module.Tr
   && TagFamily(Tclass._module.Tr()) == tytagFamily$Tr;
}

const unique Tagclass._module.Tr: TyTag;

// Box/unbox axiom for Tclass._module.Tr
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Tr()) } 
  $IsBox(bx, Tclass._module.Tr())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Tr()));

// $Is axiom for non-null type _module.Tr
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Tr()) } { $Is(c#0, Tclass._module.Tr?()) } 
  $Is(c#0, Tclass._module.Tr()) <==> $Is(c#0, Tclass._module.Tr?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Tr
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Tr(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Tr?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Tr(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Tr?(), $h));

const unique class._module.MyClass?: ClassName;

// $Is axiom for class MyClass
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.MyClass?()) } 
  $Is($o, Tclass._module.MyClass?())
     <==> $o == null || dtype($o) == Tclass._module.MyClass?());

// $IsAlloc axiom for class MyClass
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.MyClass?(), $h) } 
  $IsAlloc($o, Tclass._module.MyClass?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.MyClass.x: Field
uses {
axiom FDim(_module.MyClass.x) == 0
   && FieldOfDecl(class._module.MyClass?, field$x) == _module.MyClass.x
   && !$IsGhostField(_module.MyClass.x);
}

// MyClass.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyClass.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.MyClass?()
     ==> $Is($Unbox(read($h, $o, _module.MyClass.x)): int, TInt));

// MyClass.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyClass.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyClass?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.MyClass.x)): int, TInt, $h));

const _module.MyClass.r: Field
uses {
axiom FDim(_module.MyClass.r) == 0
   && FieldOfDecl(class._module.MyClass?, field$r) == _module.MyClass.r
   && !$IsGhostField(_module.MyClass.r);
}

// MyClass.r: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyClass.r)): real } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.MyClass?()
     ==> $Is($Unbox(read($h, $o, _module.MyClass.r)): real, Tclass._module.FavoriateReals()));

// MyClass.r: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyClass.r)): real } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyClass?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.MyClass.r)): real, 
      Tclass._module.FavoriateReals(), 
      $h));

const _module.MyClass.nes: Field
uses {
axiom FDim(_module.MyClass.nes) == 0
   && FieldOfDecl(class._module.MyClass?, field$nes) == _module.MyClass.nes
   && !$IsGhostField(_module.MyClass.nes);
}

// MyClass.nes: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyClass.nes)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.MyClass?()
     ==> $Is($Unbox(read($h, $o, _module.MyClass.nes)): Set, Tclass._module.NonEmptyIntSet()));

// MyClass.nes: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyClass.nes)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyClass?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.MyClass.nes)): Set, 
      Tclass._module.NonEmptyIntSet(), 
      $h));

// $Is axiom for non-null type _module.MyClass
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.MyClass()) } { $Is(c#0, Tclass._module.MyClass?()) } 
  $Is(c#0, Tclass._module.MyClass())
     <==> $Is(c#0, Tclass._module.MyClass?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.MyClass
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.MyClass(), $h) } 
    { $IsAlloc(c#0, Tclass._module.MyClass?(), $h) } 
  $IsAlloc(c#0, Tclass._module.MyClass(), $h)
     <==> $IsAlloc(c#0, Tclass._module.MyClass?(), $h));

const unique class._module.MyClassWithCtor?: ClassName;

function Tclass._module.MyClassWithCtor?() : Ty
uses {
// Tclass._module.MyClassWithCtor? Tag
axiom Tag(Tclass._module.MyClassWithCtor?()) == Tagclass._module.MyClassWithCtor?
   && TagFamily(Tclass._module.MyClassWithCtor?()) == tytagFamily$MyClassWithCtor;
axiom implements$_module.Tr(Tclass._module.MyClassWithCtor?());
}

const unique Tagclass._module.MyClassWithCtor?: TyTag;

// Box/unbox axiom for Tclass._module.MyClassWithCtor?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyClassWithCtor?()) } 
  $IsBox(bx, Tclass._module.MyClassWithCtor?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.MyClassWithCtor?()));

// $Is axiom for class MyClassWithCtor
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.MyClassWithCtor?()) } 
  $Is($o, Tclass._module.MyClassWithCtor?())
     <==> $o == null || dtype($o) == Tclass._module.MyClassWithCtor?());

// $IsAlloc axiom for class MyClassWithCtor
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.MyClassWithCtor?(), $h) } 
  $IsAlloc($o, Tclass._module.MyClassWithCtor?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.MyClassWithCtor.x: Field
uses {
axiom FDim(_module.MyClassWithCtor.x) == 0
   && FieldOfDecl(class._module.MyClassWithCtor?, field$x)
     == _module.MyClassWithCtor.x
   && !$IsGhostField(_module.MyClassWithCtor.x);
}

// MyClassWithCtor.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyClassWithCtor.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.MyClassWithCtor?()
     ==> $Is($Unbox(read($h, $o, _module.MyClassWithCtor.x)): int, TInt));

// MyClassWithCtor.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyClassWithCtor.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyClassWithCtor?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.MyClassWithCtor.x)): int, TInt, $h));

const _module.MyClassWithCtor.r: Field
uses {
axiom FDim(_module.MyClassWithCtor.r) == 0
   && FieldOfDecl(class._module.MyClassWithCtor?, field$r)
     == _module.MyClassWithCtor.r
   && !$IsGhostField(_module.MyClassWithCtor.r);
}

// MyClassWithCtor.r: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyClassWithCtor.r)): real } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.MyClassWithCtor?()
     ==> $Is($Unbox(read($h, $o, _module.MyClassWithCtor.r)): real, 
      Tclass._module.FavoriateReals()));

// MyClassWithCtor.r: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyClassWithCtor.r)): real } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyClassWithCtor?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.MyClassWithCtor.r)): real, 
      Tclass._module.FavoriateReals(), 
      $h));

const _module.MyClassWithCtor.nes: Field
uses {
axiom FDim(_module.MyClassWithCtor.nes) == 0
   && FieldOfDecl(class._module.MyClassWithCtor?, field$nes)
     == _module.MyClassWithCtor.nes
   && !$IsGhostField(_module.MyClassWithCtor.nes);
}

// MyClassWithCtor.nes: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyClassWithCtor.nes)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.MyClassWithCtor?()
     ==> $Is($Unbox(read($h, $o, _module.MyClassWithCtor.nes)): Set, 
      Tclass._module.NonEmptyIntSet()));

// MyClassWithCtor.nes: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyClassWithCtor.nes)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyClassWithCtor?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.MyClassWithCtor.nes)): Set, 
      Tclass._module.NonEmptyIntSet(), 
      $h));

procedure {:verboseName "MyClassWithCtor.Init (well-formedness)"} CheckWellFormed$$_module.MyClassWithCtor.Init(y#0: int) returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MyClassWithCtor.Init (call)"} Call$$_module.MyClassWithCtor.Init(y#0: int)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MyClassWithCtor())
         && $IsAlloc(this, Tclass._module.MyClassWithCtor(), $Heap));
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



procedure {:verboseName "MyClassWithCtor.Init (correctness)"} Impl$$_module.MyClassWithCtor.Init(y#0: int) returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MyClassWithCtor.Init (correctness)"} Impl$$_module.MyClassWithCtor.Init(y#0: int) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.u: int;
  var this.x: int;
  var this.r: real;
  var this.nes: Set;
  var $rhs#0: Set;

    // AddMethodImpl: Init, Impl$$_module.MyClassWithCtor.Init
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(34,3)
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(34,3)
    assume this != null && $Is(this, Tclass._module.MyClassWithCtor?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.Tr.u)): int == this.u;
    assume $Unbox(read($Heap, this, _module.MyClassWithCtor.x)): int == this.x;
    assume $Unbox(read($Heap, this, _module.MyClassWithCtor.r)): real == this.r;
    assume $Unbox(read($Heap, this, _module.MyClassWithCtor.nes)): Set == this.nes;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(34,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/NonZeroInitializationCompile.dfy(36,9)
    assume true;
    assert {:id "id126"} $_ModifiesFrame[this, _module.MyClassWithCtor.nes];
    assert {:id "id127"} $Is(Set#Union($Unbox(read($Heap, this, _module.MyClassWithCtor.nes)): Set, 
        Set#UnionOne(Set#Empty(): Set, $Box(y#0))), 
      Tclass._module.NonEmptyIntSet());
    assume true;
    $rhs#0 := Set#Union($Unbox(read($Heap, this, _module.MyClassWithCtor.nes)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(y#0)));
    $Heap := update($Heap, this, _module.MyClassWithCtor.nes, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
}



// $Is axiom for non-null type _module.MyClassWithCtor
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.MyClassWithCtor()) } 
    { $Is(c#0, Tclass._module.MyClassWithCtor?()) } 
  $Is(c#0, Tclass._module.MyClassWithCtor())
     <==> $Is(c#0, Tclass._module.MyClassWithCtor?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.MyClassWithCtor
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.MyClassWithCtor(), $h) } 
    { $IsAlloc(c#0, Tclass._module.MyClassWithCtor?(), $h) } 
  $IsAlloc(c#0, Tclass._module.MyClassWithCtor(), $h)
     <==> $IsAlloc(c#0, Tclass._module.MyClassWithCtor?(), $h));

const unique class.AdvancedZeroInitialization.__default: ClassName;

procedure {:verboseName "AdvancedZeroInitialization.Test (well-formedness)"} CheckWellFormed$$AdvancedZeroInitialization.__default.Test(which#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AdvancedZeroInitialization.Test (call)"} Call$$AdvancedZeroInitialization.__default.Test(which#0: int);
  // user-defined preconditions
  requires {:id "id130"} which#0 == LitInt(0) || which#0 == LitInt(1);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for AdvancedZeroInitialization._default.PrCh
function AdvancedZeroInitialization.__default.PrCh(ch#0: char) : Seq;

function AdvancedZeroInitialization.__default.PrCh#canCall(ch#0: char) : bool;

// consequence axiom for AdvancedZeroInitialization.__default.PrCh
axiom (forall ch#0: char :: 
  { AdvancedZeroInitialization.__default.PrCh(ch#0) } 
  AdvancedZeroInitialization.__default.PrCh#canCall(ch#0) || $Is(ch#0, TChar)
     ==> $Is(AdvancedZeroInitialization.__default.PrCh(ch#0), TSeq(TChar)));

function AdvancedZeroInitialization.__default.PrCh#requires(char) : bool;

// #requires axiom for AdvancedZeroInitialization.__default.PrCh
axiom (forall ch#0: char :: 
  { AdvancedZeroInitialization.__default.PrCh#requires(ch#0) } 
  $Is(ch#0, TChar)
     ==> AdvancedZeroInitialization.__default.PrCh#requires(ch#0) == true);

// definition axiom for AdvancedZeroInitialization.__default.PrCh (revealed)
axiom {:id "id131"} (forall ch#0: char :: 
  { AdvancedZeroInitialization.__default.PrCh(ch#0) } 
  AdvancedZeroInitialization.__default.PrCh#canCall(ch#0) || $Is(ch#0, TChar)
     ==> AdvancedZeroInitialization.__default.PrCh(ch#0)
       == (if ch#0 == Lit(char#FromInt(0))
         then Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(39))), $Box(char#FromInt(92))), 
            $Box(char#FromInt(48))), 
          $Box(char#FromInt(39)))
         else (if ch#0 == Lit(char#FromInt(68))
           then Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(39))), $Box(char#FromInt(68))), 
            $Box(char#FromInt(39)))
           else Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(39))), $Box(char#FromInt(40))), 
                                  $Box(char#FromInt(111))), 
                                $Box(char#FromInt(116))), 
                              $Box(char#FromInt(104))), 
                            $Box(char#FromInt(101))), 
                          $Box(char#FromInt(114))), 
                        $Box(char#FromInt(32))), 
                      $Box(char#FromInt(99))), 
                    $Box(char#FromInt(104))), 
                  $Box(char#FromInt(97))), 
                $Box(char#FromInt(114))), 
              $Box(char#FromInt(41))), 
            $Box(char#FromInt(39))))));

// definition axiom for AdvancedZeroInitialization.__default.PrCh for all literals (revealed)
axiom {:id "id132"} (forall ch#0: char :: 
  {:weight 3} { AdvancedZeroInitialization.__default.PrCh(Lit(ch#0)) } 
  AdvancedZeroInitialization.__default.PrCh#canCall(Lit(ch#0)) || $Is(ch#0, TChar)
     ==> AdvancedZeroInitialization.__default.PrCh(Lit(ch#0))
       == (if Lit(ch#0) == Lit(char#FromInt(0))
         then Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(39))), $Box(char#FromInt(92))), 
            $Box(char#FromInt(48))), 
          $Box(char#FromInt(39)))
         else (if Lit(ch#0) == Lit(char#FromInt(68))
           then Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(39))), $Box(char#FromInt(68))), 
            $Box(char#FromInt(39)))
           else Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(39))), $Box(char#FromInt(40))), 
                                  $Box(char#FromInt(111))), 
                                $Box(char#FromInt(116))), 
                              $Box(char#FromInt(104))), 
                            $Box(char#FromInt(101))), 
                          $Box(char#FromInt(114))), 
                        $Box(char#FromInt(32))), 
                      $Box(char#FromInt(99))), 
                    $Box(char#FromInt(104))), 
                  $Box(char#FromInt(97))), 
                $Box(char#FromInt(114))), 
              $Box(char#FromInt(41))), 
            $Box(char#FromInt(39))))));

// Constructor function declaration
function #AdvancedZeroInitialization.Xt.MakeXt(int, Seq) : DatatypeType;

const unique ##AdvancedZeroInitialization.Xt.MakeXt: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int, a#0#1#0: Seq :: 
  { #AdvancedZeroInitialization.Xt.MakeXt(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#AdvancedZeroInitialization.Xt.MakeXt(a#0#0#0, a#0#1#0))
     == ##AdvancedZeroInitialization.Xt.MakeXt);
}

function AdvancedZeroInitialization.Xt.MakeXt_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { AdvancedZeroInitialization.Xt.MakeXt_q(d) } 
  AdvancedZeroInitialization.Xt.MakeXt_q(d)
     <==> DatatypeCtorId(d) == ##AdvancedZeroInitialization.Xt.MakeXt);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { AdvancedZeroInitialization.Xt.MakeXt_q(d) } 
  AdvancedZeroInitialization.Xt.MakeXt_q(d)
     ==> (exists a#1#0#0: int, a#1#1#0: Seq :: 
      d == #AdvancedZeroInitialization.Xt.MakeXt(a#1#0#0, a#1#1#0)));

function Tclass.AdvancedZeroInitialization.Xt() : Ty
uses {
// Tclass.AdvancedZeroInitialization.Xt Tag
axiom Tag(Tclass.AdvancedZeroInitialization.Xt())
     == Tagclass.AdvancedZeroInitialization.Xt
   && TagFamily(Tclass.AdvancedZeroInitialization.Xt()) == tytagFamily$Xt;
}

const unique Tagclass.AdvancedZeroInitialization.Xt: TyTag;

// Box/unbox axiom for Tclass.AdvancedZeroInitialization.Xt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.AdvancedZeroInitialization.Xt()) } 
  $IsBox(bx, Tclass.AdvancedZeroInitialization.Xt())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.AdvancedZeroInitialization.Xt()));

// Constructor $Is
axiom (forall a#2#0#0: int, a#2#1#0: Seq :: 
  { $Is(#AdvancedZeroInitialization.Xt.MakeXt(a#2#0#0, a#2#1#0), 
      Tclass.AdvancedZeroInitialization.Xt()) } 
  $Is(#AdvancedZeroInitialization.Xt.MakeXt(a#2#0#0, a#2#1#0), 
      Tclass.AdvancedZeroInitialization.Xt())
     <==> $Is(a#2#0#0, TInt) && $Is(a#2#1#0, TSeq(TInt)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(AdvancedZeroInitialization.Xt.x(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      AdvancedZeroInitialization.Xt.MakeXt_q(d)
       && $IsAlloc(d, Tclass.AdvancedZeroInitialization.Xt(), $h)
     ==> $IsAlloc(AdvancedZeroInitialization.Xt.x(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(AdvancedZeroInitialization.Xt.s(d), TSeq(TInt), $h) } 
  $IsGoodHeap($h)
       && 
      AdvancedZeroInitialization.Xt.MakeXt_q(d)
       && $IsAlloc(d, Tclass.AdvancedZeroInitialization.Xt(), $h)
     ==> $IsAlloc(AdvancedZeroInitialization.Xt.s(d), TSeq(TInt), $h));

// Constructor literal
axiom (forall a#3#0#0: int, a#3#1#0: Seq :: 
  { #AdvancedZeroInitialization.Xt.MakeXt(LitInt(a#3#0#0), Lit(a#3#1#0)) } 
  #AdvancedZeroInitialization.Xt.MakeXt(LitInt(a#3#0#0), Lit(a#3#1#0))
     == Lit(#AdvancedZeroInitialization.Xt.MakeXt(a#3#0#0, a#3#1#0)));

function AdvancedZeroInitialization.Xt.x(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int, a#4#1#0: Seq :: 
  { #AdvancedZeroInitialization.Xt.MakeXt(a#4#0#0, a#4#1#0) } 
  AdvancedZeroInitialization.Xt.x(#AdvancedZeroInitialization.Xt.MakeXt(a#4#0#0, a#4#1#0))
     == a#4#0#0);

function AdvancedZeroInitialization.Xt.s(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#5#0#0: int, a#5#1#0: Seq :: 
  { #AdvancedZeroInitialization.Xt.MakeXt(a#5#0#0, a#5#1#0) } 
  AdvancedZeroInitialization.Xt.s(#AdvancedZeroInitialization.Xt.MakeXt(a#5#0#0, a#5#1#0))
     == a#5#1#0);

// Inductive seq element rank
axiom (forall a#6#0#0: int, a#6#1#0: Seq, i: int :: 
  { Seq#Index(a#6#1#0, i), #AdvancedZeroInitialization.Xt.MakeXt(a#6#0#0, a#6#1#0) } 
  0 <= i && i < Seq#Length(a#6#1#0)
     ==> DtRank($Unbox(Seq#Index(a#6#1#0, i)): DatatypeType)
       < DtRank(#AdvancedZeroInitialization.Xt.MakeXt(a#6#0#0, a#6#1#0)));

// Inductive seq rank
axiom (forall a#7#0#0: int, a#7#1#0: Seq :: 
  { #AdvancedZeroInitialization.Xt.MakeXt(a#7#0#0, a#7#1#0) } 
  Seq#Rank(a#7#1#0)
     < DtRank(#AdvancedZeroInitialization.Xt.MakeXt(a#7#0#0, a#7#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.AdvancedZeroInitialization.Xt(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.AdvancedZeroInitialization.Xt())
     ==> $IsAlloc(d, Tclass.AdvancedZeroInitialization.Xt(), $h));

// Depth-one case-split function
function $IsA#AdvancedZeroInitialization.Xt(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#AdvancedZeroInitialization.Xt(d) } 
  $IsA#AdvancedZeroInitialization.Xt(d)
     ==> AdvancedZeroInitialization.Xt.MakeXt_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { AdvancedZeroInitialization.Xt.MakeXt_q(d), $Is(d, Tclass.AdvancedZeroInitialization.Xt()) } 
  $Is(d, Tclass.AdvancedZeroInitialization.Xt())
     ==> AdvancedZeroInitialization.Xt.MakeXt_q(d));

// Datatype extensional equality declaration
function AdvancedZeroInitialization.Xt#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #AdvancedZeroInitialization.Xt.MakeXt
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { AdvancedZeroInitialization.Xt#Equal(a, b) } 
  AdvancedZeroInitialization.Xt#Equal(a, b)
     <==> AdvancedZeroInitialization.Xt.x(a) == AdvancedZeroInitialization.Xt.x(b)
       && Seq#Equal(AdvancedZeroInitialization.Xt.s(a), AdvancedZeroInitialization.Xt.s(b)));

// Datatype extensionality axiom: AdvancedZeroInitialization.Xt
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { AdvancedZeroInitialization.Xt#Equal(a, b) } 
  AdvancedZeroInitialization.Xt#Equal(a, b) <==> a == b);

const unique class.AdvancedZeroInitialization.Xt: ClassName;

// Constructor function declaration
function #AdvancedZeroInitialization.Yt.MakeYt(int, Box) : DatatypeType;

const unique ##AdvancedZeroInitialization.Yt.MakeYt: DtCtorId
uses {
// Constructor identifier
axiom (forall a#8#0#0: int, a#8#1#0: Box :: 
  { #AdvancedZeroInitialization.Yt.MakeYt(a#8#0#0, a#8#1#0) } 
  DatatypeCtorId(#AdvancedZeroInitialization.Yt.MakeYt(a#8#0#0, a#8#1#0))
     == ##AdvancedZeroInitialization.Yt.MakeYt);
}

function AdvancedZeroInitialization.Yt.MakeYt_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { AdvancedZeroInitialization.Yt.MakeYt_q(d) } 
  AdvancedZeroInitialization.Yt.MakeYt_q(d)
     <==> DatatypeCtorId(d) == ##AdvancedZeroInitialization.Yt.MakeYt);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { AdvancedZeroInitialization.Yt.MakeYt_q(d) } 
  AdvancedZeroInitialization.Yt.MakeYt_q(d)
     ==> (exists a#9#0#0: int, a#9#1#0: Box :: 
      d == #AdvancedZeroInitialization.Yt.MakeYt(a#9#0#0, a#9#1#0)));

function Tclass.AdvancedZeroInitialization.Yt(Ty) : Ty;

const unique Tagclass.AdvancedZeroInitialization.Yt: TyTag;

// Tclass.AdvancedZeroInitialization.Yt Tag
axiom (forall AdvancedZeroInitialization.Yt$Y: Ty :: 
  { Tclass.AdvancedZeroInitialization.Yt(AdvancedZeroInitialization.Yt$Y) } 
  Tag(Tclass.AdvancedZeroInitialization.Yt(AdvancedZeroInitialization.Yt$Y))
       == Tagclass.AdvancedZeroInitialization.Yt
     && TagFamily(Tclass.AdvancedZeroInitialization.Yt(AdvancedZeroInitialization.Yt$Y))
       == tytagFamily$Yt);

function Tclass.AdvancedZeroInitialization.Yt_0(Ty) : Ty;

// Tclass.AdvancedZeroInitialization.Yt injectivity 0
axiom (forall AdvancedZeroInitialization.Yt$Y: Ty :: 
  { Tclass.AdvancedZeroInitialization.Yt(AdvancedZeroInitialization.Yt$Y) } 
  Tclass.AdvancedZeroInitialization.Yt_0(Tclass.AdvancedZeroInitialization.Yt(AdvancedZeroInitialization.Yt$Y))
     == AdvancedZeroInitialization.Yt$Y);

// Box/unbox axiom for Tclass.AdvancedZeroInitialization.Yt
axiom (forall AdvancedZeroInitialization.Yt$Y: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.AdvancedZeroInitialization.Yt(AdvancedZeroInitialization.Yt$Y)) } 
  $IsBox(bx, Tclass.AdvancedZeroInitialization.Yt(AdvancedZeroInitialization.Yt$Y))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.AdvancedZeroInitialization.Yt(AdvancedZeroInitialization.Yt$Y)));

// Constructor $Is
axiom (forall AdvancedZeroInitialization.Yt$Y: Ty, a#10#0#0: int, a#10#1#0: Box :: 
  { $Is(#AdvancedZeroInitialization.Yt.MakeYt(a#10#0#0, a#10#1#0), 
      Tclass.AdvancedZeroInitialization.Yt(AdvancedZeroInitialization.Yt$Y)) } 
  $Is(#AdvancedZeroInitialization.Yt.MakeYt(a#10#0#0, a#10#1#0), 
      Tclass.AdvancedZeroInitialization.Yt(AdvancedZeroInitialization.Yt$Y))
     <==> $Is(a#10#0#0, TInt) && $IsBox(a#10#1#0, AdvancedZeroInitialization.Yt$Y));

// Constructor $IsAlloc
axiom (forall AdvancedZeroInitialization.Yt$Y: Ty, a#10#0#0: int, a#10#1#0: Box, $h: Heap :: 
  { $IsAlloc(#AdvancedZeroInitialization.Yt.MakeYt(a#10#0#0, a#10#1#0), 
      Tclass.AdvancedZeroInitialization.Yt(AdvancedZeroInitialization.Yt$Y), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#AdvancedZeroInitialization.Yt.MakeYt(a#10#0#0, a#10#1#0), 
        Tclass.AdvancedZeroInitialization.Yt(AdvancedZeroInitialization.Yt$Y), 
        $h)
       <==> $IsAlloc(a#10#0#0, TInt, $h)
         && $IsAllocBox(a#10#1#0, AdvancedZeroInitialization.Yt$Y, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(AdvancedZeroInitialization.Yt.x(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      AdvancedZeroInitialization.Yt.MakeYt_q(d)
       && (exists AdvancedZeroInitialization.Yt$Y: Ty :: 
        { $IsAlloc(d, Tclass.AdvancedZeroInitialization.Yt(AdvancedZeroInitialization.Yt$Y), $h) } 
        $IsAlloc(d, Tclass.AdvancedZeroInitialization.Yt(AdvancedZeroInitialization.Yt$Y), $h))
     ==> $IsAlloc(AdvancedZeroInitialization.Yt.x(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, AdvancedZeroInitialization.Yt$Y: Ty, $h: Heap :: 
  { $IsAllocBox(AdvancedZeroInitialization.Yt.y(d), AdvancedZeroInitialization.Yt$Y, $h) } 
  $IsGoodHeap($h)
       && 
      AdvancedZeroInitialization.Yt.MakeYt_q(d)
       && $IsAlloc(d, Tclass.AdvancedZeroInitialization.Yt(AdvancedZeroInitialization.Yt$Y), $h)
     ==> $IsAllocBox(AdvancedZeroInitialization.Yt.y(d), AdvancedZeroInitialization.Yt$Y, $h));

// Constructor literal
axiom (forall a#11#0#0: int, a#11#1#0: Box :: 
  { #AdvancedZeroInitialization.Yt.MakeYt(LitInt(a#11#0#0), Lit(a#11#1#0)) } 
  #AdvancedZeroInitialization.Yt.MakeYt(LitInt(a#11#0#0), Lit(a#11#1#0))
     == Lit(#AdvancedZeroInitialization.Yt.MakeYt(a#11#0#0, a#11#1#0)));

function AdvancedZeroInitialization.Yt.x(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#12#0#0: int, a#12#1#0: Box :: 
  { #AdvancedZeroInitialization.Yt.MakeYt(a#12#0#0, a#12#1#0) } 
  AdvancedZeroInitialization.Yt.x(#AdvancedZeroInitialization.Yt.MakeYt(a#12#0#0, a#12#1#0))
     == a#12#0#0);

function AdvancedZeroInitialization.Yt.y(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#13#0#0: int, a#13#1#0: Box :: 
  { #AdvancedZeroInitialization.Yt.MakeYt(a#13#0#0, a#13#1#0) } 
  AdvancedZeroInitialization.Yt.y(#AdvancedZeroInitialization.Yt.MakeYt(a#13#0#0, a#13#1#0))
     == a#13#1#0);

// Inductive rank
axiom (forall a#14#0#0: int, a#14#1#0: Box :: 
  { #AdvancedZeroInitialization.Yt.MakeYt(a#14#0#0, a#14#1#0) } 
  BoxRank(a#14#1#0)
     < DtRank(#AdvancedZeroInitialization.Yt.MakeYt(a#14#0#0, a#14#1#0)));

// Depth-one case-split function
function $IsA#AdvancedZeroInitialization.Yt(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#AdvancedZeroInitialization.Yt(d) } 
  $IsA#AdvancedZeroInitialization.Yt(d)
     ==> AdvancedZeroInitialization.Yt.MakeYt_q(d));

// Questionmark data type disjunctivity
axiom (forall AdvancedZeroInitialization.Yt$Y: Ty, d: DatatypeType :: 
  { AdvancedZeroInitialization.Yt.MakeYt_q(d), $Is(d, Tclass.AdvancedZeroInitialization.Yt(AdvancedZeroInitialization.Yt$Y)) } 
  $Is(d, Tclass.AdvancedZeroInitialization.Yt(AdvancedZeroInitialization.Yt$Y))
     ==> AdvancedZeroInitialization.Yt.MakeYt_q(d));

// Datatype extensional equality declaration
function AdvancedZeroInitialization.Yt#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #AdvancedZeroInitialization.Yt.MakeYt
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { AdvancedZeroInitialization.Yt#Equal(a, b) } 
  AdvancedZeroInitialization.Yt#Equal(a, b)
     <==> AdvancedZeroInitialization.Yt.x(a) == AdvancedZeroInitialization.Yt.x(b)
       && AdvancedZeroInitialization.Yt.y(a) == AdvancedZeroInitialization.Yt.y(b));

// Datatype extensionality axiom: AdvancedZeroInitialization.Yt
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { AdvancedZeroInitialization.Yt#Equal(a, b) } 
  AdvancedZeroInitialization.Yt#Equal(a, b) <==> a == b);

const unique class.AdvancedZeroInitialization.Yt: ClassName;

function Tclass.AdvancedZeroInitialization.Even() : Ty
uses {
// Tclass.AdvancedZeroInitialization.Even Tag
axiom Tag(Tclass.AdvancedZeroInitialization.Even())
     == Tagclass.AdvancedZeroInitialization.Even
   && TagFamily(Tclass.AdvancedZeroInitialization.Even()) == tytagFamily$Even;
}

const unique Tagclass.AdvancedZeroInitialization.Even: TyTag;

// Box/unbox axiom for Tclass.AdvancedZeroInitialization.Even
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.AdvancedZeroInitialization.Even()) } 
  $IsBox(bx, Tclass.AdvancedZeroInitialization.Even())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.AdvancedZeroInitialization.Even()));

// $Is axiom for subset type AdvancedZeroInitialization.Even
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.AdvancedZeroInitialization.Even()) } 
  $Is(x#0, Tclass.AdvancedZeroInitialization.Even())
     <==> Mod(x#0, LitInt(2)) == LitInt(0));

// $IsAlloc axiom for subset type AdvancedZeroInitialization.Even
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.AdvancedZeroInitialization.Even(), $h) } 
  $IsAlloc(x#0, Tclass.AdvancedZeroInitialization.Even(), $h));

// type axiom for trait parent: MyClass? extends Tr?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.MyClass?()) } 
  $Is($o, Tclass._module.MyClass?()) ==> $Is($o, Tclass._module.Tr?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyClass?()) } 
  $IsBox(bx, Tclass._module.MyClass?()) ==> $IsBox(bx, Tclass._module.Tr?()));

// allocation axiom for trait parent: MyClass? extends Tr?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.MyClass?(), $heap) } 
  $IsAlloc($o, Tclass._module.MyClass?(), $heap)
     ==> $IsAlloc($o, Tclass._module.Tr?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.MyClass?(), $h) } 
  $IsAllocBox(bx, Tclass._module.MyClass?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.Tr?(), $h));

// type axiom for trait parent: MyClassWithCtor? extends Tr?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.MyClassWithCtor?()) } 
  $Is($o, Tclass._module.MyClassWithCtor?()) ==> $Is($o, Tclass._module.Tr?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyClassWithCtor?()) } 
  $IsBox(bx, Tclass._module.MyClassWithCtor?())
     ==> $IsBox(bx, Tclass._module.Tr?()));

// allocation axiom for trait parent: MyClassWithCtor? extends Tr?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.MyClassWithCtor?(), $heap) } 
  $IsAlloc($o, Tclass._module.MyClassWithCtor?(), $heap)
     ==> $IsAlloc($o, Tclass._module.Tr?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.MyClassWithCtor?(), $h) } 
  $IsAllocBox(bx, Tclass._module.MyClassWithCtor?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.Tr?(), $h));

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

const unique tytagFamily$NonEmptyIntSet: TyTagFamily;

const unique tytagFamily$WithTypeParameters: TyTagFamily;

const unique tytagFamily$Dt: TyTagFamily;

const unique tytagFamily$MyClass: TyTagFamily;

const unique tytagFamily$MyClassWithCtor: TyTagFamily;

const unique tytagFamily$MyInt: TyTagFamily;

const unique tytagFamily$MyNewInt: TyTagFamily;

const unique tytagFamily$short: TyTagFamily;

const unique tytagFamily$short': TyTagFamily;

const unique tytagFamily$FavoriateReals: TyTagFamily;

const unique tytagFamily$Tr: TyTagFamily;

const unique tytagFamily$Xt: TyTagFamily;

const unique tytagFamily$Yt: TyTagFamily;

const unique tytagFamily$Even: TyTagFamily;

const unique field$nes: NameFamily;

const unique field$u: NameFamily;

const unique field$x: NameFamily;

const unique field$r: NameFamily;
