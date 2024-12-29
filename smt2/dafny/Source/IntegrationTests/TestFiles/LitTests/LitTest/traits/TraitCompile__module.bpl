// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy

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

// Box/unbox axiom for bv9
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(9)) } 
  $IsBox(bx, TBitvector(9))
     ==> $Box($Unbox(bx): bv9) == bx && $Is($Unbox(bx): bv9, TBitvector(9)));

axiom (forall v: bv9 :: { $Is(v, TBitvector(9)) } $Is(v, TBitvector(9)));

axiom (forall v: bv9, heap: Heap :: 
  { $IsAlloc(v, TBitvector(9), heap) } 
  $IsAlloc(v, TBitvector(9), heap));

function {:bvbuiltin "bvand"} and_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "bvor"} or_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "bvxor"} xor_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "bvnot"} not_bv9(bv9) : bv9;

function {:bvbuiltin "bvadd"} add_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "bvsub"} sub_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "bvmul"} mul_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "bvudiv"} div_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "bvurem"} mod_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "bvult"} lt_bv9(bv9, bv9) : bool;

function {:bvbuiltin "bvule"} le_bv9(bv9, bv9) : bool;

function {:bvbuiltin "bvuge"} ge_bv9(bv9, bv9) : bool;

function {:bvbuiltin "bvugt"} gt_bv9(bv9, bv9) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "bvlshr"} RightShift_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv9(bv9, bv9) : bv9;

function {:bvbuiltin "(_ int2bv 9)"} nat_to_bv9(int) : bv9;

function {:bvbuiltin "bv2int"} smt_nat_from_bv9(bv9) : int;

function nat_from_bv9(bv9) : int;

axiom (forall b: bv9 :: 
  { nat_from_bv9(b) } 
  0 <= nat_from_bv9(b)
     && nat_from_bv9(b) < 512
     && nat_from_bv9(b) == smt_nat_from_bv9(b));

// Box/unbox axiom for bv2
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(2)) } 
  $IsBox(bx, TBitvector(2))
     ==> $Box($Unbox(bx): bv2) == bx && $Is($Unbox(bx): bv2, TBitvector(2)));

axiom (forall v: bv2 :: { $Is(v, TBitvector(2)) } $Is(v, TBitvector(2)));

axiom (forall v: bv2, heap: Heap :: 
  { $IsAlloc(v, TBitvector(2), heap) } 
  $IsAlloc(v, TBitvector(2), heap));

function {:bvbuiltin "bvand"} and_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvor"} or_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvxor"} xor_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvnot"} not_bv2(bv2) : bv2;

function {:bvbuiltin "bvadd"} add_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvsub"} sub_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvmul"} mul_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvudiv"} div_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvurem"} mod_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvult"} lt_bv2(bv2, bv2) : bool;

function {:bvbuiltin "bvule"} le_bv2(bv2, bv2) : bool;

function {:bvbuiltin "bvuge"} ge_bv2(bv2, bv2) : bool;

function {:bvbuiltin "bvugt"} gt_bv2(bv2, bv2) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvlshr"} RightShift_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "(_ int2bv 2)"} nat_to_bv2(int) : bv2;

function {:bvbuiltin "bv2int"} smt_nat_from_bv2(bv2) : int;

function nat_from_bv2(bv2) : int;

axiom (forall b: bv2 :: 
  { nat_from_bv2(b) } 
  0 <= nat_from_bv2(b)
     && nat_from_bv2(b) < 4
     && nat_from_bv2(b) == smt_nat_from_bv2(b));

// Box/unbox axiom for bv3
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(3)) } 
  $IsBox(bx, TBitvector(3))
     ==> $Box($Unbox(bx): bv3) == bx && $Is($Unbox(bx): bv3, TBitvector(3)));

axiom (forall v: bv3 :: { $Is(v, TBitvector(3)) } $Is(v, TBitvector(3)));

axiom (forall v: bv3, heap: Heap :: 
  { $IsAlloc(v, TBitvector(3), heap) } 
  $IsAlloc(v, TBitvector(3), heap));

function {:bvbuiltin "bvand"} and_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvor"} or_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvxor"} xor_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvnot"} not_bv3(bv3) : bv3;

function {:bvbuiltin "bvadd"} add_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvsub"} sub_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvmul"} mul_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvudiv"} div_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvurem"} mod_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvult"} lt_bv3(bv3, bv3) : bool;

function {:bvbuiltin "bvule"} le_bv3(bv3, bv3) : bool;

function {:bvbuiltin "bvuge"} ge_bv3(bv3, bv3) : bool;

function {:bvbuiltin "bvugt"} gt_bv3(bv3, bv3) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvlshr"} RightShift_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "(_ int2bv 3)"} nat_to_bv3(int) : bv3;

function {:bvbuiltin "bv2int"} smt_nat_from_bv3(bv3) : int;

function nat_from_bv3(bv3) : int;

axiom (forall b: bv3 :: 
  { nat_from_bv3(b) } 
  0 <= nat_from_bv3(b)
     && nat_from_bv3(b) < 8
     && nat_from_bv3(b) == smt_nat_from_bv3(b));

// Box/unbox axiom for bv7
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(7)) } 
  $IsBox(bx, TBitvector(7))
     ==> $Box($Unbox(bx): bv7) == bx && $Is($Unbox(bx): bv7, TBitvector(7)));

axiom (forall v: bv7 :: { $Is(v, TBitvector(7)) } $Is(v, TBitvector(7)));

axiom (forall v: bv7, heap: Heap :: 
  { $IsAlloc(v, TBitvector(7), heap) } 
  $IsAlloc(v, TBitvector(7), heap));

function {:bvbuiltin "bvand"} and_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvor"} or_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvxor"} xor_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvnot"} not_bv7(bv7) : bv7;

function {:bvbuiltin "bvadd"} add_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvsub"} sub_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvmul"} mul_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvudiv"} div_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvurem"} mod_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvult"} lt_bv7(bv7, bv7) : bool;

function {:bvbuiltin "bvule"} le_bv7(bv7, bv7) : bool;

function {:bvbuiltin "bvuge"} ge_bv7(bv7, bv7) : bool;

function {:bvbuiltin "bvugt"} gt_bv7(bv7, bv7) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvlshr"} RightShift_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "(_ int2bv 7)"} nat_to_bv7(int) : bv7;

function {:bvbuiltin "bv2int"} smt_nat_from_bv7(bv7) : int;

function nat_from_bv7(bv7) : int;

axiom (forall b: bv7 :: 
  { nat_from_bv7(b) } 
  0 <= nat_from_bv7(b)
     && nat_from_bv7(b) < 128
     && nat_from_bv7(b) == smt_nat_from_bv7(b));

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

function Tclass._module.TT() : Ty
uses {
// Tclass._module.TT Tag
axiom Tag(Tclass._module.TT()) == Tagclass._module.TT
   && TagFamily(Tclass._module.TT()) == tytagFamily$TT;
}

const unique Tagclass._module.TT: TyTag;

// Box/unbox axiom for Tclass._module.TT
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.TT()) } 
  $IsBox(bx, Tclass._module.TT())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.TT()));

procedure {:verboseName "Client (well-formedness)"} CheckWellFormed$$_module.__default.Client(t#0: ref
       where $Is(t#0, Tclass._module.TT()) && $IsAlloc(t#0, Tclass._module.TT(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Client (call)"} Call$$_module.__default.Client(t#0: ref
       where $Is(t#0, Tclass._module.TT()) && $IsAlloc(t#0, Tclass._module.TT(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Client (correctness)"} Impl$$_module.__default.Client(t#0: ref
       where $Is(t#0, Tclass._module.TT()) && $IsAlloc(t#0, Tclass._module.TT(), $Heap))
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



function Tclass._module.TT?() : Ty
uses {
// Tclass._module.TT? Tag
axiom Tag(Tclass._module.TT?()) == Tagclass._module.TT?
   && TagFamily(Tclass._module.TT?()) == tytagFamily$TT;
}

const unique Tagclass._module.TT?: TyTag;

// Box/unbox axiom for Tclass._module.TT?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.TT?()) } 
  $IsBox(bx, Tclass._module.TT?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.TT?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Client (correctness)"} Impl$$_module.__default.Client(t#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int;
  var ##x#0: int;
  var ##y#0: int;
  var x##0: int;
  var x##1: int;
  var x##2: int;

    // AddMethodImpl: Client, Impl$$_module.__default.Client
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(44,9)
    assume true;
    assert {:id "id976"} t#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(t#0), Tclass._module.TT?(), $Heap);
    ##x#0 := LitInt(10);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TInt, $Heap);
    ##y#0 := LitInt(2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##y#0, TInt, $Heap);
    assert {:id "id977"} {:subsumption 0} ##x#0 > ##y#0;
    assume ##x#0 > ##y#0;
    assume _module.TT.Plus#canCall(t#0, LitInt(10), LitInt(2));
    assume _module.TT.Plus#canCall(t#0, LitInt(10), LitInt(2));
    x#0 := _module.TT.Plus(t#0, LitInt(10), LitInt(2));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(45,3)
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(46,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id979"} t#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(400);
    call {:id "id980"} Call$$_module.TT.Double(t#0, x##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(47,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id981"} t#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := LitInt(402);
    call {:id "id982"} Call$$_module.TT.AddFive(t#0, x##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(48,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##2 := LitInt(404);
    call {:id "id983"} Call$$_module.TT.StaticTriple(x##2);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 3 == $FunctionContextHeight;
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
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.CC() : Ty
uses {
// Tclass._module.CC Tag
axiom Tag(Tclass._module.CC()) == Tagclass._module.CC
   && TagFamily(Tclass._module.CC()) == tytagFamily$CC;
}

const unique Tagclass._module.CC: TyTag;

// Box/unbox axiom for Tclass._module.CC
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.CC()) } 
  $IsBox(bx, Tclass._module.CC())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.CC()));

function Tclass._module.CC?() : Ty
uses {
// Tclass._module.CC? Tag
axiom Tag(Tclass._module.CC?()) == Tagclass._module.CC?
   && TagFamily(Tclass._module.CC?()) == tytagFamily$CC;
axiom implements$_module.TT(Tclass._module.CC?());
}

const unique Tagclass._module.CC?: TyTag;

// Box/unbox axiom for Tclass._module.CC?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.CC?()) } 
  $IsBox(bx, Tclass._module.CC?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.CC?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.CC()) && $IsAlloc(c#0, Tclass._module.CC(), $Heap);
  var $nw: ref;
  var y#0: int;
  var ##x#0: int;
  var ##y#0: int;
  var t##0: ref;
  var z#0: int;
  var ##x#1: int;
  var ##y#1: int;
  var z'#0: int;
  var ##x#2: int;
  var ##y#2: int;
  var w#0: int;
  var ##x#3: int;
  var ##y#3: int;
  var x##0: int;
  var defass#cc#0: bool;
  var cc#0: ref
     where defass#cc#0
       ==> $Is(cc#0, Tclass._module.CC()) && $IsAlloc(cc#0, Tclass._module.CC(), $Heap);
  var x##1: int;
  var x##2: int;
  var x##3: int;
  var x##4: int;
  var seven#0: int;
  var ##x#4: int;
  var b#0: bool;
  var $rhs##0: bool;
  var t##1: real;
  var ##x#5: int;
  var $rhs##1: bool;
  var t##2: real;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(53,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.CC?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    c#0 := $nw;
    defass#c#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(54,9)
    assume true;
    assert {:id "id985"} defass#c#0;
    assert {:id "id986"} c#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(c#0), Tclass._module.TT?(), $Heap);
    ##x#0 := LitInt(100);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TInt, $Heap);
    ##y#0 := LitInt(20);
    // assume allocatedness for argument to function
    assume $IsAlloc(##y#0, TInt, $Heap);
    assert {:id "id987"} {:subsumption 0} ##x#0 > ##y#0;
    assume ##x#0 > ##y#0;
    assume _module.TT.Plus#canCall(c#0, LitInt(100), LitInt(20));
    assume _module.TT.Plus#canCall(c#0, LitInt(100), LitInt(20));
    y#0 := _module.TT.Plus(c#0, LitInt(100), LitInt(20));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(55,3)
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(56,9)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id989"} defass#c#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##0 := c#0;
    call {:id "id990"} Call$$_module.__default.Client(t##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(57,9)
    assume true;
    ##x#1 := LitInt(50);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#1, TInt, $Heap);
    ##y#1 := LitInt(20);
    // assume allocatedness for argument to function
    assume $IsAlloc(##y#1, TInt, $Heap);
    assert {:id "id991"} {:subsumption 0} ##x#1 > ##y#1;
    assume ##x#1 > ##y#1;
    assume _module.TT.StaticMinus#canCall(LitInt(50), LitInt(20));
    assume _module.TT.StaticMinus#canCall(LitInt(50), LitInt(20));
    z#0 := LitInt(_module.TT.StaticMinus(LitInt(50), LitInt(20)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(58,3)
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(59,10)
    assume true;
    ##x#2 := LitInt(50);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#2, TInt, $Heap);
    ##y#2 := LitInt(20);
    // assume allocatedness for argument to function
    assume $IsAlloc(##y#2, TInt, $Heap);
    assert {:id "id993"} {:subsumption 0} ##x#2 > ##y#2;
    assume ##x#2 > ##y#2;
    assume _module.TT.StaticMinus#canCall(LitInt(50), LitInt(20));
    assume _module.TT.StaticMinus#canCall(LitInt(50), LitInt(20));
    z'#0 := LitInt(_module.TT.StaticMinus(LitInt(50), LitInt(20)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(60,3)
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(61,9)
    assume true;
    assert {:id "id995"} defass#c#0;
    ##x#3 := LitInt(50);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#3, TInt, $Heap);
    ##y#3 := LitInt(20);
    // assume allocatedness for argument to function
    assume $IsAlloc(##y#3, TInt, $Heap);
    assert {:id "id996"} {:subsumption 0} ##x#3 > ##y#3;
    assume ##x#3 > ##y#3;
    assume _module.TT.StaticMinus#canCall(LitInt(50), LitInt(20));
    assume _module.TT.StaticMinus#canCall(LitInt(50), LitInt(20));
    w#0 := LitInt(_module.TT.StaticMinus(LitInt(50), LitInt(20)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(62,3)
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(64,11)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id998"} defass#c#0;
    assume true;
    assert {:id "id999"} c#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(500);
    call {:id "id1000"} Call$$_module.TT.Double(c#0, x##0);
    // TrCallStmt: After ProcessCallStmt
    push;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(65,16)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.CC?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    cc#0 := $nw;
    defass#cc#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(65,37)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id1002"} defass#cc#0;
    assume true;
    assert {:id "id1003"} cc#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := LitInt(502);
    call {:id "id1004"} Call$$_module.CC.AddFive(cc#0, x##1);
    // TrCallStmt: After ProcessCallStmt
    pop;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(66,17)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id1005"} defass#c#0;
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##2 := LitInt(504);
    call {:id "id1006"} Call$$_module.TT.StaticTriple(x##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(67,18)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##3 := LitInt(504);
    call {:id "id1007"} Call$$_module.TT.StaticTriple(x##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(68,18)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##4 := LitInt(505);
    call {:id "id1008"} Call$$_module.TT.StaticTriple(x##4);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(70,13)
    assume true;
    ##x#4 := LitInt(15);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#4, TInt, $Heap);
    assume OtherModule.Y.F#canCall(LitInt(15));
    assume OtherModule.Y.F#canCall(LitInt(15));
    seven#0 := LitInt(OtherModule.Y.F(LitInt(15)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(71,3)
    assume true;
    assert {:id "id1010"} seven#0 == LitInt(7);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(72,27)
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##1 := Real(seven#0);
    call {:id "id1011"} $rhs##0 := Call$$OtherModule.Y.P(t##1);
    // TrCallStmt: After ProcessCallStmt
    b#0 := $rhs##0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(73,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(74,9)
    assume true;
    ##x#5 := LitInt(15);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#5, TInt, $Heap);
    assume OtherModule.Y.F#canCall(LitInt(15));
    assume OtherModule.Y.F#canCall(LitInt(15));
    seven#0 := LitInt(OtherModule.Y.F(LitInt(15)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(75,3)
    assume true;
    assert {:id "id1014"} seven#0 == LitInt(7);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(76,23)
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##2 := Real(seven#0);
    call {:id "id1015"} $rhs##1 := Call$$OtherModule.Y.P(t##2);
    // TrCallStmt: After ProcessCallStmt
    b#0 := $rhs##1;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(77,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(79,18)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1017"} Call$$TestFields.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(81,21)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1018"} Call$$GenericBasics.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(82,16)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1019"} Call$$Generics.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(84,29)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1020"} Call$$TraitsExtendingTraits.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(85,27)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1021"} Call$$TypeDescriptorTests.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(86,29)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1022"} Call$$DiamondInitialization.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(88,37)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1023"} Call$$NonCapturingFunctionCoercions.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(89,21)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1024"} Call$$TailRecursion.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(91,22)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1025"} Call$$ObjectEquality.__default.Test();
    // TrCallStmt: After ProcessCallStmt
}



const unique class._module.TT?: ClassName;

// $Is axiom for trait TT
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.TT?()) } 
  $Is($o, Tclass._module.TT?())
     <==> $o == null || implements$_module.TT(dtype($o)));

// $IsAlloc axiom for trait TT
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.TT?(), $h) } 
  $IsAlloc($o, Tclass._module.TT?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.TT(ty: Ty) : bool;

// function declaration for _module.TT.Plus
function _module.TT.Plus(this: ref, x#0: int, y#0: int) : int
uses {
// definition axiom for _module.TT.Plus (revealed)
axiom {:id "id1026"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int, y#0: int :: 
    { _module.TT.Plus(this, x#0, y#0) } 
    _module.TT.Plus#canCall(this, x#0, y#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.TT())
           && x#0 > y#0)
       ==> _module.TT.Plus(this, x#0, y#0) == x#0 + y#0);
// definition axiom for _module.TT.Plus for decreasing-related literals (revealed)
axiom {:id "id1027"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int, y#0: int :: 
    {:weight 3} { _module.TT.Plus(this, LitInt(x#0), LitInt(y#0)) } 
    _module.TT.Plus#canCall(this, LitInt(x#0), LitInt(y#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.TT())
           && Lit(x#0 > y#0))
       ==> _module.TT.Plus(this, LitInt(x#0), LitInt(y#0)) == LitInt(x#0 + y#0));
// definition axiom for _module.TT.Plus for all literals (revealed)
axiom {:id "id1028"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int, y#0: int :: 
    {:weight 3} { _module.TT.Plus(Lit(this), LitInt(x#0), LitInt(y#0)) } 
    _module.TT.Plus#canCall(Lit(this), LitInt(x#0), LitInt(y#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.TT())
           && Lit(x#0 > y#0))
       ==> _module.TT.Plus(Lit(this), LitInt(x#0), LitInt(y#0)) == LitInt(x#0 + y#0));
}

function _module.TT.Plus#canCall(this: ref, x#0: int, y#0: int) : bool;

function _module.TT.Plus#requires(ref, int, int) : bool;

// #requires axiom for _module.TT.Plus
axiom (forall this: ref, x#0: int, y#0: int :: 
  { _module.TT.Plus#requires(this, x#0, y#0) } 
  this != null && $Is(this, Tclass._module.TT())
     ==> _module.TT.Plus#requires(this, x#0, y#0) == (x#0 > y#0));

procedure {:verboseName "TT.Plus (well-formedness)"} CheckWellformed$$_module.TT.Plus(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TT())
         && $IsAlloc(this, Tclass._module.TT(), $Heap), 
    x#0: int, 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.TT.Times
function _module.TT.Times(this: ref, x#0: int, y#0: int) : int;

function _module.TT.Times#canCall(this: ref, x#0: int, y#0: int) : bool;

function _module.TT.Times#requires(ref, int, int) : bool;

// #requires axiom for _module.TT.Times
axiom (forall this: ref, x#0: int, y#0: int :: 
  { _module.TT.Times#requires(this, x#0, y#0) } 
  this != null && $Is(this, Tclass._module.TT())
     ==> _module.TT.Times#requires(this, x#0, y#0) == (x#0 > y#0));

procedure {:verboseName "TT.Times (well-formedness)"} CheckWellformed$$_module.TT.Times(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TT())
         && $IsAlloc(this, Tclass._module.TT(), $Heap), 
    x#0: int, 
    y#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.TT.StaticMinus
function _module.TT.StaticMinus(x#0: int, y#0: int) : int
uses {
// definition axiom for _module.TT.StaticMinus (revealed)
axiom {:id "id1032"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int, y#0: int :: 
    { _module.TT.StaticMinus(x#0, y#0) } 
    _module.TT.StaticMinus#canCall(x#0, y#0)
         || (0 < $FunctionContextHeight && x#0 > y#0)
       ==> _module.TT.StaticMinus(x#0, y#0) == x#0 - y#0);
// definition axiom for _module.TT.StaticMinus for all literals (revealed)
axiom {:id "id1033"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int, y#0: int :: 
    {:weight 3} { _module.TT.StaticMinus(LitInt(x#0), LitInt(y#0)) } 
    _module.TT.StaticMinus#canCall(LitInt(x#0), LitInt(y#0))
         || (0 < $FunctionContextHeight && Lit(x#0 > y#0))
       ==> _module.TT.StaticMinus(LitInt(x#0), LitInt(y#0)) == LitInt(x#0 - y#0));
}

function _module.TT.StaticMinus#canCall(x#0: int, y#0: int) : bool;

function _module.TT.StaticMinus#requires(int, int) : bool;

// #requires axiom for _module.TT.StaticMinus
axiom (forall x#0: int, y#0: int :: 
  { _module.TT.StaticMinus#requires(x#0, y#0) } 
  _module.TT.StaticMinus#requires(x#0, y#0) == (x#0 > y#0));

procedure {:verboseName "TT.StaticMinus (well-formedness)"} CheckWellformed$$_module.TT.StaticMinus(x#0: int, y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TT.Double (well-formedness)"} CheckWellFormed$$_module.TT.Double(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TT())
         && $IsAlloc(this, Tclass._module.TT(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TT.Double (call)"} Call$$_module.TT.Double(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TT())
         && $IsAlloc(this, Tclass._module.TT(), $Heap), 
    x#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TT.Double (correctness)"} Impl$$_module.TT.Double(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TT())
         && $IsAlloc(this, Tclass._module.TT(), $Heap), 
    x#0: int)
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



procedure {:verboseName "TT.AddFive (well-formedness)"} CheckWellFormed$$_module.TT.AddFive(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TT())
         && $IsAlloc(this, Tclass._module.TT(), $Heap), 
    x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TT.AddFive (call)"} Call$$_module.TT.AddFive(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TT())
         && $IsAlloc(this, Tclass._module.TT(), $Heap), 
    x#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TT.StaticTriple (well-formedness)"} CheckWellFormed$$_module.TT.StaticTriple(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TT.StaticTriple (call)"} Call$$_module.TT.StaticTriple(x#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TT.StaticTriple (correctness)"} Impl$$_module.TT.StaticTriple(x#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.TT
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.TT()) } { $Is(c#0, Tclass._module.TT?()) } 
  $Is(c#0, Tclass._module.TT()) <==> $Is(c#0, Tclass._module.TT?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.TT
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.TT(), $h) } 
    { $IsAlloc(c#0, Tclass._module.TT?(), $h) } 
  $IsAlloc(c#0, Tclass._module.TT(), $h)
     <==> $IsAlloc(c#0, Tclass._module.TT?(), $h));

const unique class._module.CC?: ClassName;

// $Is axiom for class CC
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.CC?()) } 
  $Is($o, Tclass._module.CC?())
     <==> $o == null || dtype($o) == Tclass._module.CC?());

// $IsAlloc axiom for class CC
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.CC?(), $h) } 
  $IsAlloc($o, Tclass._module.CC?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for _module.CC.Times
function _module.CC.Times(this: ref, x#0: int, y#0: int) : int
uses {
// definition axiom for _module.CC.Times (revealed)
axiom {:id "id1036"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int, y#0: int :: 
    { _module.CC.Times(this, x#0, y#0) } 
    _module.CC.Times#canCall(this, x#0, y#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.CC())
           && x#0 > y#0)
       ==> _module.CC.Times(this, x#0, y#0) == Mul(x#0, y#0));
// definition axiom for _module.CC.Times for decreasing-related literals (revealed)
axiom {:id "id1037"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int, y#0: int :: 
    {:weight 3} { _module.CC.Times(this, LitInt(x#0), LitInt(y#0)) } 
    _module.CC.Times#canCall(this, LitInt(x#0), LitInt(y#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.CC())
           && Lit(x#0 > y#0))
       ==> _module.CC.Times(this, LitInt(x#0), LitInt(y#0))
         == LitInt(Mul(LitInt(x#0), LitInt(y#0))));
// definition axiom for _module.CC.Times for all literals (revealed)
axiom {:id "id1038"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int, y#0: int :: 
    {:weight 3} { _module.CC.Times(Lit(this), LitInt(x#0), LitInt(y#0)) } 
    _module.CC.Times#canCall(Lit(this), LitInt(x#0), LitInt(y#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.CC())
           && Lit(x#0 > y#0))
       ==> _module.CC.Times(Lit(this), LitInt(x#0), LitInt(y#0))
         == LitInt(Mul(LitInt(x#0), LitInt(y#0))));
}

function _module.CC.Times#canCall(this: ref, x#0: int, y#0: int) : bool;

function _module.CC.Times#requires(ref, int, int) : bool;

// #requires axiom for _module.CC.Times
axiom (forall this: ref, x#0: int, y#0: int :: 
  { _module.CC.Times#requires(this, x#0, y#0) } 
  this != null && $Is(this, Tclass._module.CC())
     ==> _module.CC.Times#requires(this, x#0, y#0) == (x#0 > y#0));

// override axiom for _module.TT.Times in class _module.CC
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int, y#0: int :: 
    { _module.TT.Times(this, x#0, y#0), $Is(this, Tclass._module.CC()) } 
      { _module.TT.Times(this, x#0, y#0), _module.CC.Times(this, x#0, y#0) } 
    _module.CC.Times#canCall(this, x#0, y#0)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.CC()))
       ==> _module.TT.Times(this, x#0, y#0) == _module.CC.Times(this, x#0, y#0));

procedure {:verboseName "CC.Times (well-formedness)"} CheckWellformed$$_module.CC.Times(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.CC())
         && $IsAlloc(this, Tclass._module.CC(), $Heap), 
    x#0: int, 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CC.Times (override check)"} OverrideCheck$$_module.CC.Times(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.CC())
         && $IsAlloc(this, Tclass._module.CC(), $Heap), 
    x#0: int, 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CC.Times (override check)"} OverrideCheck$$_module.CC.Times(this: ref, x#0: int, y#0: int)
{
  var CC_$_ReadsFrame: [ref,Field]bool;

    assume {:id "id1041"} x#0 > y#0;
    assert {:id "id1042"} x#0 > y#0;
    assert {:id "id1043"} x#0 <= x#0 && (x#0 == x#0 ==> y#0 <= y#0);
    CC_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id1044"} (forall $o: ref, $f: Field :: true);
}



procedure {:verboseName "CC.AddFive (well-formedness)"} CheckWellFormed$$_module.CC.AddFive(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.CC())
         && $IsAlloc(this, Tclass._module.CC(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CC.AddFive (override check)"} OverrideCheck$$_module.CC.AddFive(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.CC())
         && $IsAlloc(this, Tclass._module.CC(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CC.AddFive (override check)"} OverrideCheck$$_module.CC.AddFive(this: ref, x#0: int)
{
    assert {:id "id1045"} x#0 <= x#0;
    assert {:id "id1046"} (forall $o: ref, $f: Field :: true);
    assert {:id "id1047"} (forall $o: ref, $f: Field :: true);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "CC.AddFive (call)"} Call$$_module.CC.AddFive(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.CC())
         && $IsAlloc(this, Tclass._module.CC(), $Heap), 
    x#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CC.AddFive (correctness)"} Impl$$_module.CC.AddFive(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.CC())
         && $IsAlloc(this, Tclass._module.CC(), $Heap), 
    x#0: int)
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



// $Is axiom for non-null type _module.CC
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.CC()) } { $Is(c#0, Tclass._module.CC?()) } 
  $Is(c#0, Tclass._module.CC()) <==> $Is(c#0, Tclass._module.CC?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.CC
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.CC(), $h) } 
    { $IsAlloc(c#0, Tclass._module.CC?(), $h) } 
  $IsAlloc(c#0, Tclass._module.CC(), $h)
     <==> $IsAlloc(c#0, Tclass._module.CC?(), $h));

const unique class.OtherModule.__default: ClassName;

const unique class.OtherModule.Y?: ClassName;

function Tclass.OtherModule.Y?() : Ty
uses {
// Tclass.OtherModule.Y? Tag
axiom Tag(Tclass.OtherModule.Y?()) == Tagclass.OtherModule.Y?
   && TagFamily(Tclass.OtherModule.Y?()) == tytagFamily$Y;
}

const unique Tagclass.OtherModule.Y?: TyTag;

// Box/unbox axiom for Tclass.OtherModule.Y?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.OtherModule.Y?()) } 
  $IsBox(bx, Tclass.OtherModule.Y?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.OtherModule.Y?()));

// $Is axiom for trait Y
axiom (forall $o: ref :: 
  { $Is($o, Tclass.OtherModule.Y?()) } 
  $Is($o, Tclass.OtherModule.Y?())
     <==> $o == null || implements$OtherModule.Y(dtype($o)));

// $IsAlloc axiom for trait Y
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.OtherModule.Y?(), $h) } 
  $IsAlloc($o, Tclass.OtherModule.Y?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$OtherModule.Y(ty: Ty) : bool;

// function declaration for OtherModule.Y.F
function OtherModule.Y.F(x#0: int) : int;

function OtherModule.Y.F#canCall(x#0: int) : bool;

function OtherModule.Y.F#requires(int) : bool;

// #requires axiom for OtherModule.Y.F
axiom (forall x#0: int :: 
  { OtherModule.Y.F#requires(x#0) } 
  OtherModule.Y.F#requires(x#0) == true);

// definition axiom for OtherModule.Y.F (revealed)
axiom {:id "id1048"} (forall x#0: int :: 
  { OtherModule.Y.F(x#0) } 
  OtherModule.Y.F(x#0) == Div(x#0, LitInt(2)));

// definition axiom for OtherModule.Y.F for all literals (revealed)
axiom {:id "id1049"} (forall x#0: int :: 
  {:weight 3} { OtherModule.Y.F(LitInt(x#0)) } 
  OtherModule.Y.F(LitInt(x#0)) == LitInt(Div(x#0, LitInt(2))));

procedure {:verboseName "OtherModule.Y.P (well-formedness)"} CheckWellFormed$$OtherModule.Y.P(t#0: real) returns (f#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OtherModule.Y.P (call)"} Call$$OtherModule.Y.P(t#0: real) returns (f#0: bool);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.OtherModule.Y() : Ty
uses {
// Tclass.OtherModule.Y Tag
axiom Tag(Tclass.OtherModule.Y()) == Tagclass.OtherModule.Y
   && TagFamily(Tclass.OtherModule.Y()) == tytagFamily$Y;
}

const unique Tagclass.OtherModule.Y: TyTag;

// Box/unbox axiom for Tclass.OtherModule.Y
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.OtherModule.Y()) } 
  $IsBox(bx, Tclass.OtherModule.Y())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.OtherModule.Y()));

// $Is axiom for non-null type OtherModule.Y
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.OtherModule.Y()) } { $Is(c#0, Tclass.OtherModule.Y?()) } 
  $Is(c#0, Tclass.OtherModule.Y())
     <==> $Is(c#0, Tclass.OtherModule.Y?()) && c#0 != null);

// $IsAlloc axiom for non-null type OtherModule.Y
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.OtherModule.Y(), $h) } 
    { $IsAlloc(c#0, Tclass.OtherModule.Y?(), $h) } 
  $IsAlloc(c#0, Tclass.OtherModule.Y(), $h)
     <==> $IsAlloc(c#0, Tclass.OtherModule.Y?(), $h));

const unique class.OtherModule.X?: ClassName;

function Tclass.OtherModule.X?() : Ty
uses {
// Tclass.OtherModule.X? Tag
axiom Tag(Tclass.OtherModule.X?()) == Tagclass.OtherModule.X?
   && TagFamily(Tclass.OtherModule.X?()) == tytagFamily$X;
axiom implements$OtherModule.Y(Tclass.OtherModule.X?());
}

const unique Tagclass.OtherModule.X?: TyTag;

// Box/unbox axiom for Tclass.OtherModule.X?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.OtherModule.X?()) } 
  $IsBox(bx, Tclass.OtherModule.X?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.OtherModule.X?()));

// $Is axiom for class X
axiom (forall $o: ref :: 
  { $Is($o, Tclass.OtherModule.X?()) } 
  $Is($o, Tclass.OtherModule.X?())
     <==> $o == null || dtype($o) == Tclass.OtherModule.X?());

// $IsAlloc axiom for class X
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.OtherModule.X?(), $h) } 
  $IsAlloc($o, Tclass.OtherModule.X?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.OtherModule.X() : Ty
uses {
// Tclass.OtherModule.X Tag
axiom Tag(Tclass.OtherModule.X()) == Tagclass.OtherModule.X
   && TagFamily(Tclass.OtherModule.X()) == tytagFamily$X;
}

const unique Tagclass.OtherModule.X: TyTag;

// Box/unbox axiom for Tclass.OtherModule.X
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.OtherModule.X()) } 
  $IsBox(bx, Tclass.OtherModule.X())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.OtherModule.X()));

// $Is axiom for non-null type OtherModule.X
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.OtherModule.X()) } { $Is(c#0, Tclass.OtherModule.X?()) } 
  $Is(c#0, Tclass.OtherModule.X())
     <==> $Is(c#0, Tclass.OtherModule.X?()) && c#0 != null);

// $IsAlloc axiom for non-null type OtherModule.X
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.OtherModule.X(), $h) } 
    { $IsAlloc(c#0, Tclass.OtherModule.X?(), $h) } 
  $IsAlloc(c#0, Tclass.OtherModule.X(), $h)
     <==> $IsAlloc(c#0, Tclass.OtherModule.X?(), $h));

const unique class.TestFields.__default: ClassName;

procedure {:verboseName "TestFields.Test (well-formedness)"} CheckWellFormed$$TestFields.__default.Test();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestFields.Test (call)"} Call$$TestFields.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class.TestFields.J?: ClassName;

function Tclass.TestFields.J?() : Ty
uses {
// Tclass.TestFields.J? Tag
axiom Tag(Tclass.TestFields.J?()) == Tagclass.TestFields.J?
   && TagFamily(Tclass.TestFields.J?()) == tytagFamily$J;
}

const unique Tagclass.TestFields.J?: TyTag;

// Box/unbox axiom for Tclass.TestFields.J?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestFields.J?()) } 
  $IsBox(bx, Tclass.TestFields.J?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.TestFields.J?()));

// $Is axiom for trait J
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestFields.J?()) } 
  $Is($o, Tclass.TestFields.J?())
     <==> $o == null || implements$TestFields.J(dtype($o)));

// $IsAlloc axiom for trait J
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TestFields.J?(), $h) } 
  $IsAlloc($o, Tclass.TestFields.J?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TestFields.J(ty: Ty) : bool;

const TestFields.J.f: Field
uses {
axiom FDim(TestFields.J.f) == 0
   && FieldOfDecl(class.TestFields.J?, field$f) == TestFields.J.f
   && !$IsGhostField(TestFields.J.f);
}

// J.f: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, TestFields.J.f)): int } 
  $IsGoodHeap($h) && $o != null && $Is($o, Tclass.TestFields.J?())
     ==> $Is($Unbox(read($h, $o, TestFields.J.f)): int, TInt));

// J.f: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, TestFields.J.f)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass.TestFields.J?())
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, TestFields.J.f)): int, TInt, $h));

function Tclass.TestFields.J() : Ty
uses {
// Tclass.TestFields.J Tag
axiom Tag(Tclass.TestFields.J()) == Tagclass.TestFields.J
   && TagFamily(Tclass.TestFields.J()) == tytagFamily$J;
}

const unique Tagclass.TestFields.J: TyTag;

// Box/unbox axiom for Tclass.TestFields.J
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestFields.J()) } 
  $IsBox(bx, Tclass.TestFields.J())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.TestFields.J()));

// $Is axiom for non-null type TestFields.J
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TestFields.J()) } { $Is(c#0, Tclass.TestFields.J?()) } 
  $Is(c#0, Tclass.TestFields.J())
     <==> $Is(c#0, Tclass.TestFields.J?()) && c#0 != null);

// $IsAlloc axiom for non-null type TestFields.J
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TestFields.J(), $h) } 
    { $IsAlloc(c#0, Tclass.TestFields.J?(), $h) } 
  $IsAlloc(c#0, Tclass.TestFields.J(), $h)
     <==> $IsAlloc(c#0, Tclass.TestFields.J?(), $h));

const unique class.TestFields.C?: ClassName;

function Tclass.TestFields.C?() : Ty
uses {
// Tclass.TestFields.C? Tag
axiom Tag(Tclass.TestFields.C?()) == Tagclass.TestFields.C?
   && TagFamily(Tclass.TestFields.C?()) == tytagFamily$C;
axiom implements$TestFields.J(Tclass.TestFields.C?());
}

const unique Tagclass.TestFields.C?: TyTag;

// Box/unbox axiom for Tclass.TestFields.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestFields.C?()) } 
  $IsBox(bx, Tclass.TestFields.C?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.TestFields.C?()));

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestFields.C?()) } 
  $Is($o, Tclass.TestFields.C?())
     <==> $o == null || dtype($o) == Tclass.TestFields.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TestFields.C?(), $h) } 
  $IsAlloc($o, Tclass.TestFields.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.TestFields.C() : Ty
uses {
// Tclass.TestFields.C Tag
axiom Tag(Tclass.TestFields.C()) == Tagclass.TestFields.C
   && TagFamily(Tclass.TestFields.C()) == tytagFamily$C;
}

const unique Tagclass.TestFields.C: TyTag;

// Box/unbox axiom for Tclass.TestFields.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestFields.C()) } 
  $IsBox(bx, Tclass.TestFields.C())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.TestFields.C()));

// $Is axiom for non-null type TestFields.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TestFields.C()) } { $Is(c#0, Tclass.TestFields.C?()) } 
  $Is(c#0, Tclass.TestFields.C())
     <==> $Is(c#0, Tclass.TestFields.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type TestFields.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TestFields.C(), $h) } 
    { $IsAlloc(c#0, Tclass.TestFields.C?(), $h) } 
  $IsAlloc(c#0, Tclass.TestFields.C(), $h)
     <==> $IsAlloc(c#0, Tclass.TestFields.C?(), $h));

const unique class.GenericBasics.__default: ClassName;

procedure {:verboseName "GenericBasics.Test (well-formedness)"} CheckWellFormed$$GenericBasics.__default.Test();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Test (call)"} Call$$GenericBasics.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class.GenericBasics.Tr?: ClassName;

function Tclass.GenericBasics.Tr?(Ty, Ty) : Ty;

const unique Tagclass.GenericBasics.Tr?: TyTag;

// Tclass.GenericBasics.Tr? Tag
axiom (forall GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty :: 
  { Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B) } 
  Tag(Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B))
       == Tagclass.GenericBasics.Tr?
     && TagFamily(Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B))
       == tytagFamily$Tr);

function Tclass.GenericBasics.Tr?_0(Ty) : Ty;

// Tclass.GenericBasics.Tr? injectivity 0
axiom (forall GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty :: 
  { Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B) } 
  Tclass.GenericBasics.Tr?_0(Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B))
     == GenericBasics.Tr$A);

function Tclass.GenericBasics.Tr?_1(Ty) : Ty;

// Tclass.GenericBasics.Tr? injectivity 1
axiom (forall GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty :: 
  { Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B) } 
  Tclass.GenericBasics.Tr?_1(Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B))
     == GenericBasics.Tr$B);

// Box/unbox axiom for Tclass.GenericBasics.Tr?
axiom (forall GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B)) } 
  $IsBox(bx, Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B)));

// $Is axiom for trait Tr
axiom (forall GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty, $o: ref :: 
  { $Is($o, Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B)) } 
  $Is($o, Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B))
     <==> $o == null
       || implements$GenericBasics.Tr(dtype($o), GenericBasics.Tr$A, GenericBasics.Tr$B));

// $IsAlloc axiom for trait Tr
axiom (forall GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B), $h) } 
  $IsAlloc($o, Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$GenericBasics.Tr(ty: Ty, GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty) : bool;

const GenericBasics.Tr.xyz: Field
uses {
axiom FDim(GenericBasics.Tr.xyz) == 0
   && FieldOfDecl(class.GenericBasics.Tr?, field$xyz) == GenericBasics.Tr.xyz
   && !$IsGhostField(GenericBasics.Tr.xyz);
}

// Tr.xyz: Type axiom
axiom (forall GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, GenericBasics.Tr.xyz), Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B))
     ==> $IsBox(read($h, $o, GenericBasics.Tr.xyz), GenericBasics.Tr$B));

// Tr.xyz: Allocation axiom
axiom (forall GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, GenericBasics.Tr.xyz), Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B))
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, GenericBasics.Tr.xyz), GenericBasics.Tr$B, $h));

function GenericBasics.Tr.abc(GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty, this: ref) : Box;

// Tr.abc: Type axiom
axiom (forall GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty, $o: ref :: 
  { GenericBasics.Tr.abc(GenericBasics.Tr$A, GenericBasics.Tr$B, $o) } 
  $o != null
       && $Is($o, Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B))
     ==> $IsBox(GenericBasics.Tr.abc(GenericBasics.Tr$A, GenericBasics.Tr$B, $o), 
      GenericBasics.Tr$B));

// Tr.abc: Allocation axiom
axiom (forall GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty, $h: Heap, $o: ref :: 
  { GenericBasics.Tr.abc(GenericBasics.Tr$A, GenericBasics.Tr$B, $o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B))
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(GenericBasics.Tr.abc(GenericBasics.Tr$A, GenericBasics.Tr$B, $o), 
      GenericBasics.Tr$B, 
      $h));

function GenericBasics.Tr.def(GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty) : Box;

// Tr.def: Type axiom
axiom (forall GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty :: 
  { GenericBasics.Tr.def(GenericBasics.Tr$A, GenericBasics.Tr$B) } 
  $IsBox(GenericBasics.Tr.def(GenericBasics.Tr$A, GenericBasics.Tr$B), GenericBasics.Tr$B));

// Tr.def: Allocation axiom
axiom (forall GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty, $h: Heap :: 
  { $IsAllocBox(GenericBasics.Tr.def(GenericBasics.Tr$A, GenericBasics.Tr$B), 
      GenericBasics.Tr$B, 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAllocBox(GenericBasics.Tr.def(GenericBasics.Tr$A, GenericBasics.Tr$B), 
      GenericBasics.Tr$B, 
      $h));

// function declaration for GenericBasics.Tr.Teen
function GenericBasics.Tr.Teen(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.Teen$R: Ty, 
    this: ref, 
    a#0: DatatypeType)
   : Box;

function GenericBasics.Tr.Teen#canCall(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.Teen$R: Ty, 
    this: ref, 
    a#0: DatatypeType)
   : bool;

function Tclass.GenericBasics.Tr(Ty, Ty) : Ty;

const unique Tagclass.GenericBasics.Tr: TyTag;

// Tclass.GenericBasics.Tr Tag
axiom (forall GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty :: 
  { Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B) } 
  Tag(Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
       == Tagclass.GenericBasics.Tr
     && TagFamily(Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
       == tytagFamily$Tr);

function Tclass.GenericBasics.Tr_0(Ty) : Ty;

// Tclass.GenericBasics.Tr injectivity 0
axiom (forall GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty :: 
  { Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B) } 
  Tclass.GenericBasics.Tr_0(Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
     == GenericBasics.Tr$A);

function Tclass.GenericBasics.Tr_1(Ty) : Ty;

// Tclass.GenericBasics.Tr injectivity 1
axiom (forall GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty :: 
  { Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B) } 
  Tclass.GenericBasics.Tr_1(Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
     == GenericBasics.Tr$B);

// Box/unbox axiom for Tclass.GenericBasics.Tr
axiom (forall GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B)) } 
  $IsBox(bx, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B)));

// consequence axiom for GenericBasics.Tr.Teen
axiom (forall GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.Teen$R: Ty, 
    this: ref, 
    a#0: DatatypeType :: 
  { GenericBasics.Tr.Teen(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.Teen$R, this, a#0) } 
  GenericBasics.Tr.Teen#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.Teen$R, this, a#0)
       || (0 < $FunctionContextHeight
         && 
        this != null
         && $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $Is(a#0, Tclass._System.Tuple2(GenericBasics.Tr$A, GenericBasics.Tr.Teen$R)))
     ==> $IsBox(GenericBasics.Tr.Teen(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.Teen$R, this, a#0), 
      GenericBasics.Tr$B));

// alloc consequence axiom for GenericBasics.Tr.Teen
axiom (forall $Heap: Heap, 
    GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.Teen$R: Ty, 
    this: ref, 
    a#0: DatatypeType :: 
  { $IsAllocBox(GenericBasics.Tr.Teen(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.Teen$R, this, a#0), 
      GenericBasics.Tr$B, 
      $Heap) } 
  (GenericBasics.Tr.Teen#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.Teen$R, this, a#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $IsAlloc(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $Heap)
           && 
          $Is(a#0, Tclass._System.Tuple2(GenericBasics.Tr$A, GenericBasics.Tr.Teen$R))
           && $IsAlloc(a#0, Tclass._System.Tuple2(GenericBasics.Tr$A, GenericBasics.Tr.Teen$R), $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(GenericBasics.Tr.Teen(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.Teen$R, this, a#0), 
      GenericBasics.Tr$B, 
      $Heap));

function GenericBasics.Tr.Teen#requires(Ty, Ty, Ty, ref, DatatypeType) : bool;

// #requires axiom for GenericBasics.Tr.Teen
axiom (forall GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.Teen$R: Ty, 
    this: ref, 
    a#0: DatatypeType :: 
  { GenericBasics.Tr.Teen#requires(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.Teen$R, this, a#0) } 
  this != null
       && $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
       && $Is(a#0, Tclass._System.Tuple2(GenericBasics.Tr$A, GenericBasics.Tr.Teen$R))
     ==> GenericBasics.Tr.Teen#requires(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.Teen$R, this, a#0)
       == true);

// function declaration for GenericBasics.Tr.STeen
function GenericBasics.Tr.STeen(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.STeen$R: Ty, 
    a#0: DatatypeType, 
    b#0: Box)
   : Box;

function GenericBasics.Tr.STeen#canCall(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.STeen$R: Ty, 
    a#0: DatatypeType, 
    b#0: Box)
   : bool;

// consequence axiom for GenericBasics.Tr.STeen
axiom (forall GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.STeen$R: Ty, 
    a#0: DatatypeType, 
    b#0: Box :: 
  { GenericBasics.Tr.STeen(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.STeen$R, a#0, b#0) } 
  GenericBasics.Tr.STeen#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.STeen$R, a#0, b#0)
       || (0 < $FunctionContextHeight
         && 
        $Is(a#0, Tclass._System.Tuple2(GenericBasics.Tr$A, GenericBasics.Tr.STeen$R))
         && $IsBox(b#0, GenericBasics.Tr$B))
     ==> $IsBox(GenericBasics.Tr.STeen(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.STeen$R, a#0, b#0), 
      GenericBasics.Tr$B));

// alloc consequence axiom for GenericBasics.Tr.STeen
axiom (forall $Heap: Heap, 
    GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.STeen$R: Ty, 
    a#0: DatatypeType, 
    b#0: Box :: 
  { $IsAllocBox(GenericBasics.Tr.STeen(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.STeen$R, a#0, b#0), 
      GenericBasics.Tr$B, 
      $Heap) } 
  (GenericBasics.Tr.STeen#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.STeen$R, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._System.Tuple2(GenericBasics.Tr$A, GenericBasics.Tr.STeen$R))
           && $IsAlloc(a#0, Tclass._System.Tuple2(GenericBasics.Tr$A, GenericBasics.Tr.STeen$R), $Heap)
           && 
          $IsBox(b#0, GenericBasics.Tr$B)
           && $IsAllocBox(b#0, GenericBasics.Tr$B, $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(GenericBasics.Tr.STeen(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.STeen$R, a#0, b#0), 
      GenericBasics.Tr$B, 
      $Heap));

function GenericBasics.Tr.STeen#requires(Ty, Ty, Ty, DatatypeType, Box) : bool;

// #requires axiom for GenericBasics.Tr.STeen
axiom (forall GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.STeen$R: Ty, 
    a#0: DatatypeType, 
    b#0: Box :: 
  { GenericBasics.Tr.STeen#requires(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.STeen$R, a#0, b#0) } 
  $Is(a#0, Tclass._System.Tuple2(GenericBasics.Tr$A, GenericBasics.Tr.STeen$R))
       && $IsBox(b#0, GenericBasics.Tr$B)
     ==> GenericBasics.Tr.STeen#requires(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.STeen$R, a#0, b#0)
       == true);

// definition axiom for GenericBasics.Tr.STeen (revealed)
axiom {:id "id1050"} (forall GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.STeen$R: Ty, 
    a#0: DatatypeType, 
    b#0: Box :: 
  { GenericBasics.Tr.STeen(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.STeen$R, a#0, b#0) } 
  GenericBasics.Tr.STeen#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.STeen$R, a#0, b#0)
       || ($Is(a#0, Tclass._System.Tuple2(GenericBasics.Tr$A, GenericBasics.Tr.STeen$R))
         && $IsBox(b#0, GenericBasics.Tr$B))
     ==> GenericBasics.Tr.STeen(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.STeen$R, a#0, b#0)
       == b#0);

// definition axiom for GenericBasics.Tr.STeen for decreasing-related literals (revealed)
axiom {:id "id1051"} (forall GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.STeen$R: Ty, 
    a#0: DatatypeType, 
    b#0: Box :: 
  {:weight 3} { GenericBasics.Tr.STeen(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.STeen$R, Lit(a#0), b#0) } 
  GenericBasics.Tr.STeen#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.STeen$R, Lit(a#0), b#0)
       || ($Is(a#0, Tclass._System.Tuple2(GenericBasics.Tr$A, GenericBasics.Tr.STeen$R))
         && $IsBox(b#0, GenericBasics.Tr$B))
     ==> GenericBasics.Tr.STeen(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.STeen$R, Lit(a#0), b#0)
       == b#0);

// definition axiom for GenericBasics.Tr.STeen for all literals (revealed)
axiom {:id "id1052"} (forall GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.STeen$R: Ty, 
    a#0: DatatypeType, 
    b#0: Box :: 
  {:weight 3} { GenericBasics.Tr.STeen(GenericBasics.Tr$A, 
      GenericBasics.Tr$B, 
      GenericBasics.Tr.STeen$R, 
      Lit(a#0), 
      Lit(b#0)) } 
  GenericBasics.Tr.STeen#canCall(GenericBasics.Tr$A, 
        GenericBasics.Tr$B, 
        GenericBasics.Tr.STeen$R, 
        Lit(a#0), 
        Lit(b#0))
       || ($Is(a#0, Tclass._System.Tuple2(GenericBasics.Tr$A, GenericBasics.Tr.STeen$R))
         && $IsBox(b#0, GenericBasics.Tr$B))
     ==> GenericBasics.Tr.STeen(GenericBasics.Tr$A, 
        GenericBasics.Tr$B, 
        GenericBasics.Tr.STeen$R, 
        Lit(a#0), 
        Lit(b#0))
       == Lit(b#0));

// function declaration for GenericBasics.Tr.RValue0
function GenericBasics.Tr.RValue0(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue0$X: Ty, 
    this: ref, 
    x#0: Box)
   : Box;

function GenericBasics.Tr.RValue0#canCall(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue0$X: Ty, 
    this: ref, 
    x#0: Box)
   : bool;

// consequence axiom for GenericBasics.Tr.RValue0
axiom (forall GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue0$X: Ty, 
    this: ref, 
    x#0: Box :: 
  { GenericBasics.Tr.RValue0(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue0$X, this, x#0) } 
  GenericBasics.Tr.RValue0#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue0$X, this, x#0)
       || (0 < $FunctionContextHeight
         && 
        this != null
         && $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $IsBox(x#0, GenericBasics.Tr.RValue0$X))
     ==> $IsBox(GenericBasics.Tr.RValue0(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue0$X, this, x#0), 
      GenericBasics.Tr$B));

// alloc consequence axiom for GenericBasics.Tr.RValue0
axiom (forall $Heap: Heap, 
    GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue0$X: Ty, 
    this: ref, 
    x#0: Box :: 
  { $IsAllocBox(GenericBasics.Tr.RValue0(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue0$X, this, x#0), 
      GenericBasics.Tr$B, 
      $Heap) } 
  (GenericBasics.Tr.RValue0#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue0$X, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $IsAlloc(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $Heap)
           && 
          $IsBox(x#0, GenericBasics.Tr.RValue0$X)
           && $IsAllocBox(x#0, GenericBasics.Tr.RValue0$X, $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(GenericBasics.Tr.RValue0(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue0$X, this, x#0), 
      GenericBasics.Tr$B, 
      $Heap));

function GenericBasics.Tr.RValue0#requires(Ty, Ty, Ty, ref, Box) : bool;

// #requires axiom for GenericBasics.Tr.RValue0
axiom (forall GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue0$X: Ty, 
    this: ref, 
    x#0: Box :: 
  { GenericBasics.Tr.RValue0#requires(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue0$X, this, x#0) } 
  this != null
       && $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
       && $IsBox(x#0, GenericBasics.Tr.RValue0$X)
     ==> GenericBasics.Tr.RValue0#requires(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue0$X, this, x#0)
       == true);

// function declaration for GenericBasics.Tr.RValue1
function GenericBasics.Tr.RValue1(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue1$X: Ty, 
    this: ref, 
    x#0: Box)
   : Box;

function GenericBasics.Tr.RValue1#canCall(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue1$X: Ty, 
    this: ref, 
    x#0: Box)
   : bool;

// consequence axiom for GenericBasics.Tr.RValue1
axiom (forall GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue1$X: Ty, 
    this: ref, 
    x#0: Box :: 
  { GenericBasics.Tr.RValue1(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue1$X, this, x#0) } 
  GenericBasics.Tr.RValue1#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue1$X, this, x#0)
       || (0 < $FunctionContextHeight
         && 
        this != null
         && $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $IsBox(x#0, GenericBasics.Tr.RValue1$X))
     ==> $IsBox(GenericBasics.Tr.RValue1(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue1$X, this, x#0), 
      GenericBasics.Tr$B));

// alloc consequence axiom for GenericBasics.Tr.RValue1
axiom (forall $Heap: Heap, 
    GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue1$X: Ty, 
    this: ref, 
    x#0: Box :: 
  { $IsAllocBox(GenericBasics.Tr.RValue1(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue1$X, this, x#0), 
      GenericBasics.Tr$B, 
      $Heap) } 
  (GenericBasics.Tr.RValue1#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue1$X, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $IsAlloc(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $Heap)
           && 
          $IsBox(x#0, GenericBasics.Tr.RValue1$X)
           && $IsAllocBox(x#0, GenericBasics.Tr.RValue1$X, $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(GenericBasics.Tr.RValue1(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue1$X, this, x#0), 
      GenericBasics.Tr$B, 
      $Heap));

function GenericBasics.Tr.RValue1#requires(Ty, Ty, Ty, ref, Box) : bool;

// #requires axiom for GenericBasics.Tr.RValue1
axiom (forall GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue1$X: Ty, 
    this: ref, 
    x#0: Box :: 
  { GenericBasics.Tr.RValue1#requires(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue1$X, this, x#0) } 
  this != null
       && $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
       && $IsBox(x#0, GenericBasics.Tr.RValue1$X)
     ==> GenericBasics.Tr.RValue1#requires(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue1$X, this, x#0)
       == true);

// function declaration for GenericBasics.Tr.RValue2
function GenericBasics.Tr.RValue2(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue2$X: Ty, 
    this: ref, 
    x#0: Box)
   : Box;

function GenericBasics.Tr.RValue2#canCall(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue2$X: Ty, 
    this: ref, 
    x#0: Box)
   : bool;

// consequence axiom for GenericBasics.Tr.RValue2
axiom (forall GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue2$X: Ty, 
    this: ref, 
    x#0: Box :: 
  { GenericBasics.Tr.RValue2(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue2$X, this, x#0) } 
  GenericBasics.Tr.RValue2#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue2$X, this, x#0)
       || (0 < $FunctionContextHeight
         && 
        this != null
         && $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $IsBox(x#0, GenericBasics.Tr.RValue2$X))
     ==> $IsBox(GenericBasics.Tr.RValue2(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue2$X, this, x#0), 
      GenericBasics.Tr$B));

// alloc consequence axiom for GenericBasics.Tr.RValue2
axiom (forall $Heap: Heap, 
    GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue2$X: Ty, 
    this: ref, 
    x#0: Box :: 
  { $IsAllocBox(GenericBasics.Tr.RValue2(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue2$X, this, x#0), 
      GenericBasics.Tr$B, 
      $Heap) } 
  (GenericBasics.Tr.RValue2#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue2$X, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $IsAlloc(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $Heap)
           && 
          $IsBox(x#0, GenericBasics.Tr.RValue2$X)
           && $IsAllocBox(x#0, GenericBasics.Tr.RValue2$X, $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(GenericBasics.Tr.RValue2(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue2$X, this, x#0), 
      GenericBasics.Tr$B, 
      $Heap));

function GenericBasics.Tr.RValue2#requires(Ty, Ty, Ty, ref, Box) : bool;

// #requires axiom for GenericBasics.Tr.RValue2
axiom (forall GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue2$X: Ty, 
    this: ref, 
    x#0: Box :: 
  { GenericBasics.Tr.RValue2#requires(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue2$X, this, x#0) } 
  this != null
       && $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
       && $IsBox(x#0, GenericBasics.Tr.RValue2$X)
     ==> GenericBasics.Tr.RValue2#requires(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue2$X, this, x#0)
       == true);

// function declaration for GenericBasics.Tr.RValue3
function GenericBasics.Tr.RValue3(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue3$X: Ty, 
    this: ref, 
    x#0: Box)
   : Box;

function GenericBasics.Tr.RValue3#canCall(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue3$X: Ty, 
    this: ref, 
    x#0: Box)
   : bool;

// consequence axiom for GenericBasics.Tr.RValue3
axiom (forall GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue3$X: Ty, 
    this: ref, 
    x#0: Box :: 
  { GenericBasics.Tr.RValue3(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue3$X, this, x#0) } 
  GenericBasics.Tr.RValue3#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue3$X, this, x#0)
       || (0 < $FunctionContextHeight
         && 
        this != null
         && $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $IsBox(x#0, GenericBasics.Tr.RValue3$X))
     ==> $IsBox(GenericBasics.Tr.RValue3(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue3$X, this, x#0), 
      GenericBasics.Tr$B));

// alloc consequence axiom for GenericBasics.Tr.RValue3
axiom (forall $Heap: Heap, 
    GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue3$X: Ty, 
    this: ref, 
    x#0: Box :: 
  { $IsAllocBox(GenericBasics.Tr.RValue3(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue3$X, this, x#0), 
      GenericBasics.Tr$B, 
      $Heap) } 
  (GenericBasics.Tr.RValue3#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue3$X, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $IsAlloc(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $Heap)
           && 
          $IsBox(x#0, GenericBasics.Tr.RValue3$X)
           && $IsAllocBox(x#0, GenericBasics.Tr.RValue3$X, $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(GenericBasics.Tr.RValue3(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue3$X, this, x#0), 
      GenericBasics.Tr$B, 
      $Heap));

function GenericBasics.Tr.RValue3#requires(Ty, Ty, Ty, ref, Box) : bool;

// #requires axiom for GenericBasics.Tr.RValue3
axiom (forall GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue3$X: Ty, 
    this: ref, 
    x#0: Box :: 
  { GenericBasics.Tr.RValue3#requires(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue3$X, this, x#0) } 
  this != null
       && $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
       && $IsBox(x#0, GenericBasics.Tr.RValue3$X)
     ==> GenericBasics.Tr.RValue3#requires(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue3$X, this, x#0)
       == true);

// function declaration for GenericBasics.Tr.RBValue
function GenericBasics.Tr.RBValue(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RBValue$X: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: Box)
   : Box;

function GenericBasics.Tr.RBValue#canCall(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RBValue$X: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: Box)
   : bool;

// consequence axiom for GenericBasics.Tr.RBValue
axiom (forall GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RBValue$X: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: Box :: 
  { GenericBasics.Tr.RBValue(GenericBasics.Tr$A, 
      GenericBasics.Tr$B, 
      GenericBasics.Tr.RBValue$X, 
      this, 
      x#0, 
      b#0) } 
  GenericBasics.Tr.RBValue#canCall(GenericBasics.Tr$A, 
        GenericBasics.Tr$B, 
        GenericBasics.Tr.RBValue$X, 
        this, 
        x#0, 
        b#0)
       || (0 < $FunctionContextHeight
         && 
        this != null
         && $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $IsBox(x#0, GenericBasics.Tr.RBValue$X)
         && $IsBox(b#0, GenericBasics.Tr$B))
     ==> $IsBox(GenericBasics.Tr.RBValue(GenericBasics.Tr$A, 
        GenericBasics.Tr$B, 
        GenericBasics.Tr.RBValue$X, 
        this, 
        x#0, 
        b#0), 
      GenericBasics.Tr$B));

// alloc consequence axiom for GenericBasics.Tr.RBValue
axiom (forall $Heap: Heap, 
    GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RBValue$X: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: Box :: 
  { $IsAllocBox(GenericBasics.Tr.RBValue(GenericBasics.Tr$A, 
        GenericBasics.Tr$B, 
        GenericBasics.Tr.RBValue$X, 
        this, 
        x#0, 
        b#0), 
      GenericBasics.Tr$B, 
      $Heap) } 
  (GenericBasics.Tr.RBValue#canCall(GenericBasics.Tr$A, 
          GenericBasics.Tr$B, 
          GenericBasics.Tr.RBValue$X, 
          this, 
          x#0, 
          b#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $IsAlloc(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $Heap)
           && 
          $IsBox(x#0, GenericBasics.Tr.RBValue$X)
           && $IsAllocBox(x#0, GenericBasics.Tr.RBValue$X, $Heap)
           && 
          $IsBox(b#0, GenericBasics.Tr$B)
           && $IsAllocBox(b#0, GenericBasics.Tr$B, $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(GenericBasics.Tr.RBValue(GenericBasics.Tr$A, 
        GenericBasics.Tr$B, 
        GenericBasics.Tr.RBValue$X, 
        this, 
        x#0, 
        b#0), 
      GenericBasics.Tr$B, 
      $Heap));

function GenericBasics.Tr.RBValue#requires(Ty, Ty, Ty, ref, Box, Box) : bool;

// #requires axiom for GenericBasics.Tr.RBValue
axiom (forall GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RBValue$X: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: Box :: 
  { GenericBasics.Tr.RBValue#requires(GenericBasics.Tr$A, 
      GenericBasics.Tr$B, 
      GenericBasics.Tr.RBValue$X, 
      this, 
      x#0, 
      b#0) } 
  this != null
       && $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
       && $IsBox(x#0, GenericBasics.Tr.RBValue$X)
       && $IsBox(b#0, GenericBasics.Tr$B)
     ==> GenericBasics.Tr.RBValue#requires(GenericBasics.Tr$A, 
        GenericBasics.Tr$B, 
        GenericBasics.Tr.RBValue$X, 
        this, 
        x#0, 
        b#0)
       == true);

// $Is axiom for non-null type GenericBasics.Tr
axiom (forall GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B)) } 
    { $Is(c#0, Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B)) } 
  $Is(c#0, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
     <==> $Is(c#0, Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B))
       && c#0 != null);

// $IsAlloc axiom for non-null type GenericBasics.Tr
axiom (forall GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $h) } 
    { $IsAlloc(c#0, Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B), $h) } 
  $IsAlloc(c#0, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $h)
     <==> $IsAlloc(c#0, Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B), $h));

const unique class.GenericBasics.Cl?: ClassName;

function Tclass.GenericBasics.Cl?(Ty) : Ty
uses {
axiom (forall GenericBasics.Cl$Q: Ty :: 
  implements$GenericBasics.Tr(Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q), GenericBasics.Cl$Q, TInt));
}

const unique Tagclass.GenericBasics.Cl?: TyTag;

// Tclass.GenericBasics.Cl? Tag
axiom (forall GenericBasics.Cl$Q: Ty :: 
  { Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q) } 
  Tag(Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q)) == Tagclass.GenericBasics.Cl?
     && TagFamily(Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q)) == tytagFamily$Cl);

function Tclass.GenericBasics.Cl?_0(Ty) : Ty;

// Tclass.GenericBasics.Cl? injectivity 0
axiom (forall GenericBasics.Cl$Q: Ty :: 
  { Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q) } 
  Tclass.GenericBasics.Cl?_0(Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q))
     == GenericBasics.Cl$Q);

// Box/unbox axiom for Tclass.GenericBasics.Cl?
axiom (forall GenericBasics.Cl$Q: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q)) } 
  $IsBox(bx, Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q)));

// $Is axiom for class Cl
axiom (forall GenericBasics.Cl$Q: Ty, $o: ref :: 
  { $Is($o, Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q)) } 
  $Is($o, Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q))
     <==> $o == null || dtype($o) == Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q));

// $IsAlloc axiom for class Cl
axiom (forall GenericBasics.Cl$Q: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q), $h) } 
  $IsAlloc($o, Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for GenericBasics.Cl.Teen
function GenericBasics.Cl.Teen(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.Teen$S: Ty, 
    this: ref, 
    a#0: DatatypeType)
   : int;

function GenericBasics.Cl.Teen#canCall(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.Teen$S: Ty, 
    this: ref, 
    a#0: DatatypeType)
   : bool;

function Tclass.GenericBasics.Cl(Ty) : Ty;

const unique Tagclass.GenericBasics.Cl: TyTag;

// Tclass.GenericBasics.Cl Tag
axiom (forall GenericBasics.Cl$Q: Ty :: 
  { Tclass.GenericBasics.Cl(GenericBasics.Cl$Q) } 
  Tag(Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)) == Tagclass.GenericBasics.Cl
     && TagFamily(Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)) == tytagFamily$Cl);

function Tclass.GenericBasics.Cl_0(Ty) : Ty;

// Tclass.GenericBasics.Cl injectivity 0
axiom (forall GenericBasics.Cl$Q: Ty :: 
  { Tclass.GenericBasics.Cl(GenericBasics.Cl$Q) } 
  Tclass.GenericBasics.Cl_0(Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
     == GenericBasics.Cl$Q);

// Box/unbox axiom for Tclass.GenericBasics.Cl
axiom (forall GenericBasics.Cl$Q: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)) } 
  $IsBox(bx, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)));

function GenericBasics.Cl.Teen#requires(Ty, Ty, ref, DatatypeType) : bool;

// #requires axiom for GenericBasics.Cl.Teen
axiom (forall GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.Teen$S: Ty, 
    this: ref, 
    a#0: DatatypeType :: 
  { GenericBasics.Cl.Teen#requires(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, this, a#0) } 
  this != null
       && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
       && $Is(a#0, Tclass._System.Tuple2(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S))
     ==> GenericBasics.Cl.Teen#requires(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, this, a#0)
       == true);

// definition axiom for GenericBasics.Cl.Teen (revealed)
axiom {:id "id1053"} (forall GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.Teen$S: Ty, 
    this: ref, 
    a#0: DatatypeType :: 
  { GenericBasics.Cl.Teen(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, this, a#0) } 
  GenericBasics.Cl.Teen#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, this, a#0)
       || (
        this != null
         && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $Is(a#0, Tclass._System.Tuple2(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S)))
     ==> GenericBasics.Cl.Teen(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, this, a#0)
       == LitInt(12));

// definition axiom for GenericBasics.Cl.Teen for decreasing-related literals (revealed)
axiom {:id "id1054"} (forall GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.Teen$S: Ty, 
    this: ref, 
    a#0: DatatypeType :: 
  {:weight 3} { GenericBasics.Cl.Teen(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, this, Lit(a#0)) } 
  GenericBasics.Cl.Teen#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, this, Lit(a#0))
       || (
        this != null
         && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $Is(a#0, Tclass._System.Tuple2(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S)))
     ==> GenericBasics.Cl.Teen(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, this, Lit(a#0))
       == LitInt(12));

// definition axiom for GenericBasics.Cl.Teen for all literals (revealed)
axiom {:id "id1055"} (forall GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.Teen$S: Ty, 
    this: ref, 
    a#0: DatatypeType :: 
  {:weight 3} { GenericBasics.Cl.Teen(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, Lit(this), Lit(a#0)) } 
  GenericBasics.Cl.Teen#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, Lit(this), Lit(a#0))
       || (
        this != null
         && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $Is(a#0, Tclass._System.Tuple2(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S)))
     ==> GenericBasics.Cl.Teen(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, Lit(this), Lit(a#0))
       == LitInt(12));

// override axiom for GenericBasics.Tr.Teen in class GenericBasics.Cl
axiom (forall GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.Teen$S: Ty, 
    this: ref, 
    a#0: DatatypeType :: 
  { GenericBasics.Tr.Teen(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.Teen$S, this, a#0), $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)) } 
    { GenericBasics.Tr.Teen(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.Teen$S, this, a#0), GenericBasics.Cl.Teen(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, this, a#0) } 
  GenericBasics.Cl.Teen#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, this, a#0)
       || (this != null && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)))
     ==> GenericBasics.Tr.Teen(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.Teen$S, this, a#0)
       == $Box(GenericBasics.Cl.Teen(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, this, a#0)));

// function declaration for GenericBasics.Cl.RValue0
function GenericBasics.Cl.RValue0(GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue0$XX: Ty, this: ref, x#0: Box)
   : int;

function GenericBasics.Cl.RValue0#canCall(GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue0$XX: Ty, this: ref, x#0: Box)
   : bool;

function GenericBasics.Cl.RValue0#requires(Ty, Ty, ref, Box) : bool;

// #requires axiom for GenericBasics.Cl.RValue0
axiom (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue0$XX: Ty, this: ref, x#0: Box :: 
  { GenericBasics.Cl.RValue0#requires(GenericBasics.Cl$Q, GenericBasics.Cl.RValue0$XX, this, x#0) } 
  this != null
       && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
       && $IsBox(x#0, GenericBasics.Cl.RValue0$XX)
     ==> GenericBasics.Cl.RValue0#requires(GenericBasics.Cl$Q, GenericBasics.Cl.RValue0$XX, this, x#0)
       == true);

// definition axiom for GenericBasics.Cl.RValue0 (revealed)
axiom {:id "id1056"} (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue0$XX: Ty, this: ref, x#0: Box :: 
  { GenericBasics.Cl.RValue0(GenericBasics.Cl$Q, GenericBasics.Cl.RValue0$XX, this, x#0) } 
  GenericBasics.Cl.RValue0#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue0$XX, this, x#0)
       || (
        this != null
         && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsBox(x#0, GenericBasics.Cl.RValue0$XX))
     ==> GenericBasics.Cl.RValue0(GenericBasics.Cl$Q, GenericBasics.Cl.RValue0$XX, this, x#0)
       == LitInt(5));

// definition axiom for GenericBasics.Cl.RValue0 for all literals (revealed)
axiom {:id "id1057"} (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue0$XX: Ty, this: ref, x#0: Box :: 
  {:weight 3} { GenericBasics.Cl.RValue0(GenericBasics.Cl$Q, GenericBasics.Cl.RValue0$XX, Lit(this), Lit(x#0)) } 
  GenericBasics.Cl.RValue0#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue0$XX, Lit(this), Lit(x#0))
       || (
        this != null
         && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsBox(x#0, GenericBasics.Cl.RValue0$XX))
     ==> GenericBasics.Cl.RValue0(GenericBasics.Cl$Q, GenericBasics.Cl.RValue0$XX, Lit(this), Lit(x#0))
       == LitInt(5));

// override axiom for GenericBasics.Tr.RValue0 in class GenericBasics.Cl
axiom (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue0$XX: Ty, this: ref, x#0: Box :: 
  { GenericBasics.Tr.RValue0(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue0$XX, this, x#0), $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)) } 
    { GenericBasics.Tr.RValue0(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue0$XX, this, x#0), GenericBasics.Cl.RValue0(GenericBasics.Cl$Q, GenericBasics.Cl.RValue0$XX, this, x#0) } 
  GenericBasics.Cl.RValue0#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue0$XX, this, x#0)
       || (this != null && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)))
     ==> GenericBasics.Tr.RValue0(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue0$XX, this, x#0)
       == $Box(GenericBasics.Cl.RValue0(GenericBasics.Cl$Q, GenericBasics.Cl.RValue0$XX, this, x#0)));

// function declaration for GenericBasics.Cl.RValue1
function GenericBasics.Cl.RValue1(GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue1$XX: Ty, this: ref, x#0: Box)
   : int;

function GenericBasics.Cl.RValue1#canCall(GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue1$XX: Ty, this: ref, x#0: Box)
   : bool;

function GenericBasics.Cl.RValue1#requires(Ty, Ty, ref, Box) : bool;

// #requires axiom for GenericBasics.Cl.RValue1
axiom (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue1$XX: Ty, this: ref, x#0: Box :: 
  { GenericBasics.Cl.RValue1#requires(GenericBasics.Cl$Q, GenericBasics.Cl.RValue1$XX, this, x#0) } 
  this != null
       && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
       && $IsBox(x#0, GenericBasics.Cl.RValue1$XX)
     ==> GenericBasics.Cl.RValue1#requires(GenericBasics.Cl$Q, GenericBasics.Cl.RValue1$XX, this, x#0)
       == true);

// definition axiom for GenericBasics.Cl.RValue1 (revealed)
axiom {:id "id1058"} (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue1$XX: Ty, this: ref, x#0: Box :: 
  { GenericBasics.Cl.RValue1(GenericBasics.Cl$Q, GenericBasics.Cl.RValue1$XX, this, x#0) } 
  GenericBasics.Cl.RValue1#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue1$XX, this, x#0)
       || (
        this != null
         && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsBox(x#0, GenericBasics.Cl.RValue1$XX))
     ==> GenericBasics.Cl.RValue1(GenericBasics.Cl$Q, GenericBasics.Cl.RValue1$XX, this, x#0)
       == LitInt(5));

// definition axiom for GenericBasics.Cl.RValue1 for all literals (revealed)
axiom {:id "id1059"} (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue1$XX: Ty, this: ref, x#0: Box :: 
  {:weight 3} { GenericBasics.Cl.RValue1(GenericBasics.Cl$Q, GenericBasics.Cl.RValue1$XX, Lit(this), Lit(x#0)) } 
  GenericBasics.Cl.RValue1#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue1$XX, Lit(this), Lit(x#0))
       || (
        this != null
         && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsBox(x#0, GenericBasics.Cl.RValue1$XX))
     ==> GenericBasics.Cl.RValue1(GenericBasics.Cl$Q, GenericBasics.Cl.RValue1$XX, Lit(this), Lit(x#0))
       == LitInt(5));

// override axiom for GenericBasics.Tr.RValue1 in class GenericBasics.Cl
axiom (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue1$XX: Ty, this: ref, x#0: Box :: 
  { GenericBasics.Tr.RValue1(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue1$XX, this, x#0), $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)) } 
    { GenericBasics.Tr.RValue1(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue1$XX, this, x#0), GenericBasics.Cl.RValue1(GenericBasics.Cl$Q, GenericBasics.Cl.RValue1$XX, this, x#0) } 
  GenericBasics.Cl.RValue1#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue1$XX, this, x#0)
       || (this != null && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)))
     ==> GenericBasics.Tr.RValue1(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue1$XX, this, x#0)
       == $Box(GenericBasics.Cl.RValue1(GenericBasics.Cl$Q, GenericBasics.Cl.RValue1$XX, this, x#0)));

// function declaration for GenericBasics.Cl.RValue2
function GenericBasics.Cl.RValue2(GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue2$XX: Ty, this: ref, x#0: Box)
   : int;

function GenericBasics.Cl.RValue2#canCall(GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue2$XX: Ty, this: ref, x#0: Box)
   : bool;

function GenericBasics.Cl.RValue2#requires(Ty, Ty, ref, Box) : bool;

// #requires axiom for GenericBasics.Cl.RValue2
axiom (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue2$XX: Ty, this: ref, x#0: Box :: 
  { GenericBasics.Cl.RValue2#requires(GenericBasics.Cl$Q, GenericBasics.Cl.RValue2$XX, this, x#0) } 
  this != null
       && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
       && $IsBox(x#0, GenericBasics.Cl.RValue2$XX)
     ==> GenericBasics.Cl.RValue2#requires(GenericBasics.Cl$Q, GenericBasics.Cl.RValue2$XX, this, x#0)
       == true);

// definition axiom for GenericBasics.Cl.RValue2 (revealed)
axiom {:id "id1060"} (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue2$XX: Ty, this: ref, x#0: Box :: 
  { GenericBasics.Cl.RValue2(GenericBasics.Cl$Q, GenericBasics.Cl.RValue2$XX, this, x#0) } 
  GenericBasics.Cl.RValue2#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue2$XX, this, x#0)
       || (
        this != null
         && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsBox(x#0, GenericBasics.Cl.RValue2$XX))
     ==> GenericBasics.Cl.RValue2(GenericBasics.Cl$Q, GenericBasics.Cl.RValue2$XX, this, x#0)
       == LitInt(5));

// definition axiom for GenericBasics.Cl.RValue2 for all literals (revealed)
axiom {:id "id1061"} (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue2$XX: Ty, this: ref, x#0: Box :: 
  {:weight 3} { GenericBasics.Cl.RValue2(GenericBasics.Cl$Q, GenericBasics.Cl.RValue2$XX, Lit(this), Lit(x#0)) } 
  GenericBasics.Cl.RValue2#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue2$XX, Lit(this), Lit(x#0))
       || (
        this != null
         && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsBox(x#0, GenericBasics.Cl.RValue2$XX))
     ==> GenericBasics.Cl.RValue2(GenericBasics.Cl$Q, GenericBasics.Cl.RValue2$XX, Lit(this), Lit(x#0))
       == LitInt(5));

// override axiom for GenericBasics.Tr.RValue2 in class GenericBasics.Cl
axiom (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue2$XX: Ty, this: ref, x#0: Box :: 
  { GenericBasics.Tr.RValue2(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue2$XX, this, x#0), $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)) } 
    { GenericBasics.Tr.RValue2(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue2$XX, this, x#0), GenericBasics.Cl.RValue2(GenericBasics.Cl$Q, GenericBasics.Cl.RValue2$XX, this, x#0) } 
  GenericBasics.Cl.RValue2#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue2$XX, this, x#0)
       || (this != null && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)))
     ==> GenericBasics.Tr.RValue2(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue2$XX, this, x#0)
       == $Box(GenericBasics.Cl.RValue2(GenericBasics.Cl$Q, GenericBasics.Cl.RValue2$XX, this, x#0)));

// function declaration for GenericBasics.Cl.RValue3
function GenericBasics.Cl.RValue3(GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue3$XX: Ty, this: ref, x#0: Box)
   : int;

function GenericBasics.Cl.RValue3#canCall(GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue3$XX: Ty, this: ref, x#0: Box)
   : bool;

function GenericBasics.Cl.RValue3#requires(Ty, Ty, ref, Box) : bool;

// #requires axiom for GenericBasics.Cl.RValue3
axiom (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue3$XX: Ty, this: ref, x#0: Box :: 
  { GenericBasics.Cl.RValue3#requires(GenericBasics.Cl$Q, GenericBasics.Cl.RValue3$XX, this, x#0) } 
  this != null
       && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
       && $IsBox(x#0, GenericBasics.Cl.RValue3$XX)
     ==> GenericBasics.Cl.RValue3#requires(GenericBasics.Cl$Q, GenericBasics.Cl.RValue3$XX, this, x#0)
       == true);

// definition axiom for GenericBasics.Cl.RValue3 (revealed)
axiom {:id "id1062"} (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue3$XX: Ty, this: ref, x#0: Box :: 
  { GenericBasics.Cl.RValue3(GenericBasics.Cl$Q, GenericBasics.Cl.RValue3$XX, this, x#0) } 
  GenericBasics.Cl.RValue3#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue3$XX, this, x#0)
       || (
        this != null
         && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsBox(x#0, GenericBasics.Cl.RValue3$XX))
     ==> GenericBasics.Cl.RValue3(GenericBasics.Cl$Q, GenericBasics.Cl.RValue3$XX, this, x#0)
       == LitInt(5));

// definition axiom for GenericBasics.Cl.RValue3 for all literals (revealed)
axiom {:id "id1063"} (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue3$XX: Ty, this: ref, x#0: Box :: 
  {:weight 3} { GenericBasics.Cl.RValue3(GenericBasics.Cl$Q, GenericBasics.Cl.RValue3$XX, Lit(this), Lit(x#0)) } 
  GenericBasics.Cl.RValue3#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue3$XX, Lit(this), Lit(x#0))
       || (
        this != null
         && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsBox(x#0, GenericBasics.Cl.RValue3$XX))
     ==> GenericBasics.Cl.RValue3(GenericBasics.Cl$Q, GenericBasics.Cl.RValue3$XX, Lit(this), Lit(x#0))
       == LitInt(5));

// override axiom for GenericBasics.Tr.RValue3 in class GenericBasics.Cl
axiom (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue3$XX: Ty, this: ref, x#0: Box :: 
  { GenericBasics.Tr.RValue3(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue3$XX, this, x#0), $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)) } 
    { GenericBasics.Tr.RValue3(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue3$XX, this, x#0), GenericBasics.Cl.RValue3(GenericBasics.Cl$Q, GenericBasics.Cl.RValue3$XX, this, x#0) } 
  GenericBasics.Cl.RValue3#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue3$XX, this, x#0)
       || (this != null && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)))
     ==> GenericBasics.Tr.RValue3(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue3$XX, this, x#0)
       == $Box(GenericBasics.Cl.RValue3(GenericBasics.Cl$Q, GenericBasics.Cl.RValue3$XX, this, x#0)));

// function declaration for GenericBasics.Cl.RBValue
function GenericBasics.Cl.RBValue(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.RBValue$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int)
   : int;

function GenericBasics.Cl.RBValue#canCall(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.RBValue$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int)
   : bool;

function GenericBasics.Cl.RBValue#requires(Ty, Ty, ref, Box, int) : bool;

// #requires axiom for GenericBasics.Cl.RBValue
axiom (forall GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.RBValue$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int :: 
  { GenericBasics.Cl.RBValue#requires(GenericBasics.Cl$Q, GenericBasics.Cl.RBValue$XX, this, x#0, b#0) } 
  this != null
       && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
       && $IsBox(x#0, GenericBasics.Cl.RBValue$XX)
     ==> GenericBasics.Cl.RBValue#requires(GenericBasics.Cl$Q, GenericBasics.Cl.RBValue$XX, this, x#0, b#0)
       == true);

// definition axiom for GenericBasics.Cl.RBValue (revealed)
axiom {:id "id1064"} (forall GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.RBValue$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int :: 
  { GenericBasics.Cl.RBValue(GenericBasics.Cl$Q, GenericBasics.Cl.RBValue$XX, this, x#0, b#0) } 
  GenericBasics.Cl.RBValue#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RBValue$XX, this, x#0, b#0)
       || (
        this != null
         && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsBox(x#0, GenericBasics.Cl.RBValue$XX))
     ==> GenericBasics.Cl.RBValue(GenericBasics.Cl$Q, GenericBasics.Cl.RBValue$XX, this, x#0, b#0)
       == b#0 + 2);

// definition axiom for GenericBasics.Cl.RBValue for decreasing-related literals (revealed)
axiom {:id "id1065"} (forall GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.RBValue$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int :: 
  {:weight 3} { GenericBasics.Cl.RBValue(GenericBasics.Cl$Q, GenericBasics.Cl.RBValue$XX, this, x#0, LitInt(b#0)) } 
  GenericBasics.Cl.RBValue#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RBValue$XX, this, x#0, LitInt(b#0))
       || (
        this != null
         && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsBox(x#0, GenericBasics.Cl.RBValue$XX))
     ==> GenericBasics.Cl.RBValue(GenericBasics.Cl$Q, GenericBasics.Cl.RBValue$XX, this, x#0, LitInt(b#0))
       == LitInt(b#0 + 2));

// definition axiom for GenericBasics.Cl.RBValue for all literals (revealed)
axiom {:id "id1066"} (forall GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.RBValue$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int :: 
  {:weight 3} { GenericBasics.Cl.RBValue(GenericBasics.Cl$Q, 
      GenericBasics.Cl.RBValue$XX, 
      Lit(this), 
      Lit(x#0), 
      LitInt(b#0)) } 
  GenericBasics.Cl.RBValue#canCall(GenericBasics.Cl$Q, 
        GenericBasics.Cl.RBValue$XX, 
        Lit(this), 
        Lit(x#0), 
        LitInt(b#0))
       || (
        this != null
         && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsBox(x#0, GenericBasics.Cl.RBValue$XX))
     ==> GenericBasics.Cl.RBValue(GenericBasics.Cl$Q, 
        GenericBasics.Cl.RBValue$XX, 
        Lit(this), 
        Lit(x#0), 
        LitInt(b#0))
       == LitInt(b#0 + 2));

// override axiom for GenericBasics.Tr.RBValue in class GenericBasics.Cl
axiom (forall GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.RBValue$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int :: 
  { GenericBasics.Tr.RBValue(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RBValue$XX, this, x#0, $Box(b#0)), $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)) } 
    { GenericBasics.Tr.RBValue(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RBValue$XX, this, x#0, $Box(b#0)), GenericBasics.Cl.RBValue(GenericBasics.Cl$Q, GenericBasics.Cl.RBValue$XX, this, x#0, b#0) } 
  GenericBasics.Cl.RBValue#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RBValue$XX, this, x#0, b#0)
       || (this != null && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)))
     ==> GenericBasics.Tr.RBValue(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RBValue$XX, this, x#0, $Box(b#0))
       == $Box(GenericBasics.Cl.RBValue(GenericBasics.Cl$Q, GenericBasics.Cl.RBValue$XX, this, x#0, b#0)));

// $Is axiom for non-null type GenericBasics.Cl
axiom (forall GenericBasics.Cl$Q: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)) } 
    { $Is(c#0, Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q)) } 
  $Is(c#0, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
     <==> $Is(c#0, Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q)) && c#0 != null);

// $IsAlloc axiom for non-null type GenericBasics.Cl
axiom (forall GenericBasics.Cl$Q: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $h) } 
    { $IsAlloc(c#0, Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q), $h) } 
  $IsAlloc(c#0, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $h)
     <==> $IsAlloc(c#0, Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q), $h));

const unique class.GenericBasics.Mega?: ClassName;

function Tclass.GenericBasics.Mega?(Ty, Ty, Ty) : Ty
uses {
axiom (forall GenericBasics.Mega$P: Ty, GenericBasics.Mega$Q: Ty, GenericBasics.Mega$L: Ty :: 
  implements$GenericBasics.Tr(Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
    GenericBasics.Mega$Q, 
    TInt));
}

const unique Tagclass.GenericBasics.Mega?: TyTag;

// Tclass.GenericBasics.Mega? Tag
axiom (forall GenericBasics.Mega$P: Ty, GenericBasics.Mega$Q: Ty, GenericBasics.Mega$L: Ty :: 
  { Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L) } 
  Tag(Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
       == Tagclass.GenericBasics.Mega?
     && TagFamily(Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
       == tytagFamily$Mega);

function Tclass.GenericBasics.Mega?_0(Ty) : Ty;

// Tclass.GenericBasics.Mega? injectivity 0
axiom (forall GenericBasics.Mega$P: Ty, GenericBasics.Mega$Q: Ty, GenericBasics.Mega$L: Ty :: 
  { Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L) } 
  Tclass.GenericBasics.Mega?_0(Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
     == GenericBasics.Mega$P);

function Tclass.GenericBasics.Mega?_1(Ty) : Ty;

// Tclass.GenericBasics.Mega? injectivity 1
axiom (forall GenericBasics.Mega$P: Ty, GenericBasics.Mega$Q: Ty, GenericBasics.Mega$L: Ty :: 
  { Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L) } 
  Tclass.GenericBasics.Mega?_1(Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
     == GenericBasics.Mega$Q);

function Tclass.GenericBasics.Mega?_2(Ty) : Ty;

// Tclass.GenericBasics.Mega? injectivity 2
axiom (forall GenericBasics.Mega$P: Ty, GenericBasics.Mega$Q: Ty, GenericBasics.Mega$L: Ty :: 
  { Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L) } 
  Tclass.GenericBasics.Mega?_2(Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
     == GenericBasics.Mega$L);

// Box/unbox axiom for Tclass.GenericBasics.Mega?
axiom (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)) } 
  $IsBox(bx, 
      Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)));

// $Is axiom for class Mega
axiom (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    $o: ref :: 
  { $Is($o, 
      Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)) } 
  $Is($o, 
      Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
     <==> $o == null
       || dtype($o)
         == Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L));

// $IsAlloc axiom for class Mega
axiom (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    $o: ref, 
    $h: Heap :: 
  { $IsAlloc($o, 
      Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
      $h) } 
  $IsAlloc($o, 
      Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
      $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for GenericBasics.Mega.Teen
function GenericBasics.Mega.Teen(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.Teen$S: Ty, 
    this: ref, 
    a#0: DatatypeType)
   : int;

function GenericBasics.Mega.Teen#canCall(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.Teen$S: Ty, 
    this: ref, 
    a#0: DatatypeType)
   : bool;

function Tclass.GenericBasics.Mega(Ty, Ty, Ty) : Ty;

const unique Tagclass.GenericBasics.Mega: TyTag;

// Tclass.GenericBasics.Mega Tag
axiom (forall GenericBasics.Mega$P: Ty, GenericBasics.Mega$Q: Ty, GenericBasics.Mega$L: Ty :: 
  { Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L) } 
  Tag(Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
       == Tagclass.GenericBasics.Mega
     && TagFamily(Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
       == tytagFamily$Mega);

function Tclass.GenericBasics.Mega_0(Ty) : Ty;

// Tclass.GenericBasics.Mega injectivity 0
axiom (forall GenericBasics.Mega$P: Ty, GenericBasics.Mega$Q: Ty, GenericBasics.Mega$L: Ty :: 
  { Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L) } 
  Tclass.GenericBasics.Mega_0(Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
     == GenericBasics.Mega$P);

function Tclass.GenericBasics.Mega_1(Ty) : Ty;

// Tclass.GenericBasics.Mega injectivity 1
axiom (forall GenericBasics.Mega$P: Ty, GenericBasics.Mega$Q: Ty, GenericBasics.Mega$L: Ty :: 
  { Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L) } 
  Tclass.GenericBasics.Mega_1(Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
     == GenericBasics.Mega$Q);

function Tclass.GenericBasics.Mega_2(Ty) : Ty;

// Tclass.GenericBasics.Mega injectivity 2
axiom (forall GenericBasics.Mega$P: Ty, GenericBasics.Mega$Q: Ty, GenericBasics.Mega$L: Ty :: 
  { Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L) } 
  Tclass.GenericBasics.Mega_2(Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
     == GenericBasics.Mega$L);

// Box/unbox axiom for Tclass.GenericBasics.Mega
axiom (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)) } 
  $IsBox(bx, 
      Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)));

function GenericBasics.Mega.Teen#requires(Ty, Ty, Ty, Ty, ref, DatatypeType) : bool;

// #requires axiom for GenericBasics.Mega.Teen
axiom (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.Teen$S: Ty, 
    this: ref, 
    a#0: DatatypeType :: 
  { GenericBasics.Mega.Teen#requires(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.Teen$S, 
      this, 
      a#0) } 
  this != null
       && $Is(this, 
        Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
       && $Is(a#0, Tclass._System.Tuple2(GenericBasics.Mega$Q, GenericBasics.Mega.Teen$S))
     ==> GenericBasics.Mega.Teen#requires(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.Teen$S, 
        this, 
        a#0)
       == true);

// definition axiom for GenericBasics.Mega.Teen (revealed)
axiom {:id "id1067"} (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.Teen$S: Ty, 
    this: ref, 
    a#0: DatatypeType :: 
  { GenericBasics.Mega.Teen(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.Teen$S, 
      this, 
      a#0) } 
  GenericBasics.Mega.Teen#canCall(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.Teen$S, 
        this, 
        a#0)
       || (
        this != null
         && $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $Is(a#0, Tclass._System.Tuple2(GenericBasics.Mega$Q, GenericBasics.Mega.Teen$S)))
     ==> GenericBasics.Mega.Teen(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.Teen$S, 
        this, 
        a#0)
       == LitInt(12));

// definition axiom for GenericBasics.Mega.Teen for decreasing-related literals (revealed)
axiom {:id "id1068"} (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.Teen$S: Ty, 
    this: ref, 
    a#0: DatatypeType :: 
  {:weight 3} { GenericBasics.Mega.Teen(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.Teen$S, 
      this, 
      Lit(a#0)) } 
  GenericBasics.Mega.Teen#canCall(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.Teen$S, 
        this, 
        Lit(a#0))
       || (
        this != null
         && $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $Is(a#0, Tclass._System.Tuple2(GenericBasics.Mega$Q, GenericBasics.Mega.Teen$S)))
     ==> GenericBasics.Mega.Teen(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.Teen$S, 
        this, 
        Lit(a#0))
       == LitInt(12));

// definition axiom for GenericBasics.Mega.Teen for all literals (revealed)
axiom {:id "id1069"} (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.Teen$S: Ty, 
    this: ref, 
    a#0: DatatypeType :: 
  {:weight 3} { GenericBasics.Mega.Teen(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.Teen$S, 
      Lit(this), 
      Lit(a#0)) } 
  GenericBasics.Mega.Teen#canCall(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.Teen$S, 
        Lit(this), 
        Lit(a#0))
       || (
        this != null
         && $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $Is(a#0, Tclass._System.Tuple2(GenericBasics.Mega$Q, GenericBasics.Mega.Teen$S)))
     ==> GenericBasics.Mega.Teen(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.Teen$S, 
        Lit(this), 
        Lit(a#0))
       == LitInt(12));

// override axiom for GenericBasics.Tr.Teen in class GenericBasics.Mega
axiom (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.Teen$S: Ty, 
    this: ref, 
    a#0: DatatypeType :: 
  { GenericBasics.Tr.Teen(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.Teen$S, this, a#0), $Is(this, 
      Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)) } 
    { GenericBasics.Tr.Teen(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.Teen$S, this, a#0), GenericBasics.Mega.Teen(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.Teen$S, 
      this, 
      a#0) } 
  GenericBasics.Mega.Teen#canCall(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.Teen$S, 
        this, 
        a#0)
       || (this != null
         && $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)))
     ==> GenericBasics.Tr.Teen(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.Teen$S, this, a#0)
       == $Box(GenericBasics.Mega.Teen(GenericBasics.Mega$P, 
          GenericBasics.Mega$Q, 
          GenericBasics.Mega$L, 
          GenericBasics.Mega.Teen$S, 
          this, 
          a#0)));

// function declaration for GenericBasics.Mega.RValue0
function GenericBasics.Mega.RValue0(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue0$XX: Ty, 
    this: ref, 
    x#0: Box)
   : int;

function GenericBasics.Mega.RValue0#canCall(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue0$XX: Ty, 
    this: ref, 
    x#0: Box)
   : bool;

function GenericBasics.Mega.RValue0#requires(Ty, Ty, Ty, Ty, ref, Box) : bool;

// #requires axiom for GenericBasics.Mega.RValue0
axiom (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue0$XX: Ty, 
    this: ref, 
    x#0: Box :: 
  { GenericBasics.Mega.RValue0#requires(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.RValue0$XX, 
      this, 
      x#0) } 
  this != null
       && $Is(this, 
        Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
       && $IsBox(x#0, GenericBasics.Mega.RValue0$XX)
     ==> GenericBasics.Mega.RValue0#requires(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue0$XX, 
        this, 
        x#0)
       == true);

// definition axiom for GenericBasics.Mega.RValue0 (revealed)
axiom {:id "id1070"} (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue0$XX: Ty, 
    this: ref, 
    x#0: Box :: 
  { GenericBasics.Mega.RValue0(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.RValue0$XX, 
      this, 
      x#0) } 
  GenericBasics.Mega.RValue0#canCall(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue0$XX, 
        this, 
        x#0)
       || (
        this != null
         && $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsBox(x#0, GenericBasics.Mega.RValue0$XX))
     ==> GenericBasics.Mega.RValue0(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue0$XX, 
        this, 
        x#0)
       == LitInt(5));

// definition axiom for GenericBasics.Mega.RValue0 for all literals (revealed)
axiom {:id "id1071"} (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue0$XX: Ty, 
    this: ref, 
    x#0: Box :: 
  {:weight 3} { GenericBasics.Mega.RValue0(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.RValue0$XX, 
      Lit(this), 
      Lit(x#0)) } 
  GenericBasics.Mega.RValue0#canCall(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue0$XX, 
        Lit(this), 
        Lit(x#0))
       || (
        this != null
         && $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsBox(x#0, GenericBasics.Mega.RValue0$XX))
     ==> GenericBasics.Mega.RValue0(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue0$XX, 
        Lit(this), 
        Lit(x#0))
       == LitInt(5));

// override axiom for GenericBasics.Tr.RValue0 in class GenericBasics.Mega
axiom (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue0$XX: Ty, 
    this: ref, 
    x#0: Box :: 
  { GenericBasics.Tr.RValue0(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.RValue0$XX, this, x#0), $Is(this, 
      Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)) } 
    { GenericBasics.Tr.RValue0(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.RValue0$XX, this, x#0), GenericBasics.Mega.RValue0(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.RValue0$XX, 
      this, 
      x#0) } 
  GenericBasics.Mega.RValue0#canCall(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue0$XX, 
        this, 
        x#0)
       || (this != null
         && $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)))
     ==> GenericBasics.Tr.RValue0(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.RValue0$XX, this, x#0)
       == $Box(GenericBasics.Mega.RValue0(GenericBasics.Mega$P, 
          GenericBasics.Mega$Q, 
          GenericBasics.Mega$L, 
          GenericBasics.Mega.RValue0$XX, 
          this, 
          x#0)));

// function declaration for GenericBasics.Mega.RValue1
function GenericBasics.Mega.RValue1(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue1$XX: Ty, 
    this: ref, 
    x#0: Box)
   : int;

function GenericBasics.Mega.RValue1#canCall(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue1$XX: Ty, 
    this: ref, 
    x#0: Box)
   : bool;

function GenericBasics.Mega.RValue1#requires(Ty, Ty, Ty, Ty, ref, Box) : bool;

// #requires axiom for GenericBasics.Mega.RValue1
axiom (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue1$XX: Ty, 
    this: ref, 
    x#0: Box :: 
  { GenericBasics.Mega.RValue1#requires(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.RValue1$XX, 
      this, 
      x#0) } 
  this != null
       && $Is(this, 
        Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
       && $IsBox(x#0, GenericBasics.Mega.RValue1$XX)
     ==> GenericBasics.Mega.RValue1#requires(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue1$XX, 
        this, 
        x#0)
       == true);

// definition axiom for GenericBasics.Mega.RValue1 (revealed)
axiom {:id "id1072"} (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue1$XX: Ty, 
    this: ref, 
    x#0: Box :: 
  { GenericBasics.Mega.RValue1(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.RValue1$XX, 
      this, 
      x#0) } 
  GenericBasics.Mega.RValue1#canCall(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue1$XX, 
        this, 
        x#0)
       || (
        this != null
         && $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsBox(x#0, GenericBasics.Mega.RValue1$XX))
     ==> GenericBasics.Mega.RValue1(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue1$XX, 
        this, 
        x#0)
       == LitInt(5));

// definition axiom for GenericBasics.Mega.RValue1 for all literals (revealed)
axiom {:id "id1073"} (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue1$XX: Ty, 
    this: ref, 
    x#0: Box :: 
  {:weight 3} { GenericBasics.Mega.RValue1(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.RValue1$XX, 
      Lit(this), 
      Lit(x#0)) } 
  GenericBasics.Mega.RValue1#canCall(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue1$XX, 
        Lit(this), 
        Lit(x#0))
       || (
        this != null
         && $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsBox(x#0, GenericBasics.Mega.RValue1$XX))
     ==> GenericBasics.Mega.RValue1(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue1$XX, 
        Lit(this), 
        Lit(x#0))
       == LitInt(5));

// override axiom for GenericBasics.Tr.RValue1 in class GenericBasics.Mega
axiom (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue1$XX: Ty, 
    this: ref, 
    x#0: Box :: 
  { GenericBasics.Tr.RValue1(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.RValue1$XX, this, x#0), $Is(this, 
      Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)) } 
    { GenericBasics.Tr.RValue1(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.RValue1$XX, this, x#0), GenericBasics.Mega.RValue1(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.RValue1$XX, 
      this, 
      x#0) } 
  GenericBasics.Mega.RValue1#canCall(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue1$XX, 
        this, 
        x#0)
       || (this != null
         && $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)))
     ==> GenericBasics.Tr.RValue1(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.RValue1$XX, this, x#0)
       == $Box(GenericBasics.Mega.RValue1(GenericBasics.Mega$P, 
          GenericBasics.Mega$Q, 
          GenericBasics.Mega$L, 
          GenericBasics.Mega.RValue1$XX, 
          this, 
          x#0)));

// function declaration for GenericBasics.Mega.RValue2
function GenericBasics.Mega.RValue2(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue2$XX: Ty, 
    this: ref, 
    x#0: Box)
   : int;

function GenericBasics.Mega.RValue2#canCall(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue2$XX: Ty, 
    this: ref, 
    x#0: Box)
   : bool;

function GenericBasics.Mega.RValue2#requires(Ty, Ty, Ty, Ty, ref, Box) : bool;

// #requires axiom for GenericBasics.Mega.RValue2
axiom (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue2$XX: Ty, 
    this: ref, 
    x#0: Box :: 
  { GenericBasics.Mega.RValue2#requires(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.RValue2$XX, 
      this, 
      x#0) } 
  this != null
       && $Is(this, 
        Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
       && $IsBox(x#0, GenericBasics.Mega.RValue2$XX)
     ==> GenericBasics.Mega.RValue2#requires(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue2$XX, 
        this, 
        x#0)
       == true);

// definition axiom for GenericBasics.Mega.RValue2 (revealed)
axiom {:id "id1074"} (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue2$XX: Ty, 
    this: ref, 
    x#0: Box :: 
  { GenericBasics.Mega.RValue2(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.RValue2$XX, 
      this, 
      x#0) } 
  GenericBasics.Mega.RValue2#canCall(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue2$XX, 
        this, 
        x#0)
       || (
        this != null
         && $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsBox(x#0, GenericBasics.Mega.RValue2$XX))
     ==> GenericBasics.Mega.RValue2(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue2$XX, 
        this, 
        x#0)
       == LitInt(5));

// definition axiom for GenericBasics.Mega.RValue2 for all literals (revealed)
axiom {:id "id1075"} (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue2$XX: Ty, 
    this: ref, 
    x#0: Box :: 
  {:weight 3} { GenericBasics.Mega.RValue2(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.RValue2$XX, 
      Lit(this), 
      Lit(x#0)) } 
  GenericBasics.Mega.RValue2#canCall(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue2$XX, 
        Lit(this), 
        Lit(x#0))
       || (
        this != null
         && $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsBox(x#0, GenericBasics.Mega.RValue2$XX))
     ==> GenericBasics.Mega.RValue2(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue2$XX, 
        Lit(this), 
        Lit(x#0))
       == LitInt(5));

// override axiom for GenericBasics.Tr.RValue2 in class GenericBasics.Mega
axiom (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue2$XX: Ty, 
    this: ref, 
    x#0: Box :: 
  { GenericBasics.Tr.RValue2(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.RValue2$XX, this, x#0), $Is(this, 
      Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)) } 
    { GenericBasics.Tr.RValue2(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.RValue2$XX, this, x#0), GenericBasics.Mega.RValue2(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.RValue2$XX, 
      this, 
      x#0) } 
  GenericBasics.Mega.RValue2#canCall(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue2$XX, 
        this, 
        x#0)
       || (this != null
         && $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)))
     ==> GenericBasics.Tr.RValue2(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.RValue2$XX, this, x#0)
       == $Box(GenericBasics.Mega.RValue2(GenericBasics.Mega$P, 
          GenericBasics.Mega$Q, 
          GenericBasics.Mega$L, 
          GenericBasics.Mega.RValue2$XX, 
          this, 
          x#0)));

// function declaration for GenericBasics.Mega.RValue3
function GenericBasics.Mega.RValue3(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue3$XX: Ty, 
    this: ref, 
    x#0: Box)
   : int;

function GenericBasics.Mega.RValue3#canCall(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue3$XX: Ty, 
    this: ref, 
    x#0: Box)
   : bool;

function GenericBasics.Mega.RValue3#requires(Ty, Ty, Ty, Ty, ref, Box) : bool;

// #requires axiom for GenericBasics.Mega.RValue3
axiom (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue3$XX: Ty, 
    this: ref, 
    x#0: Box :: 
  { GenericBasics.Mega.RValue3#requires(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.RValue3$XX, 
      this, 
      x#0) } 
  this != null
       && $Is(this, 
        Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
       && $IsBox(x#0, GenericBasics.Mega.RValue3$XX)
     ==> GenericBasics.Mega.RValue3#requires(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue3$XX, 
        this, 
        x#0)
       == true);

// definition axiom for GenericBasics.Mega.RValue3 (revealed)
axiom {:id "id1076"} (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue3$XX: Ty, 
    this: ref, 
    x#0: Box :: 
  { GenericBasics.Mega.RValue3(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.RValue3$XX, 
      this, 
      x#0) } 
  GenericBasics.Mega.RValue3#canCall(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue3$XX, 
        this, 
        x#0)
       || (
        this != null
         && $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsBox(x#0, GenericBasics.Mega.RValue3$XX))
     ==> GenericBasics.Mega.RValue3(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue3$XX, 
        this, 
        x#0)
       == LitInt(5));

// definition axiom for GenericBasics.Mega.RValue3 for all literals (revealed)
axiom {:id "id1077"} (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue3$XX: Ty, 
    this: ref, 
    x#0: Box :: 
  {:weight 3} { GenericBasics.Mega.RValue3(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.RValue3$XX, 
      Lit(this), 
      Lit(x#0)) } 
  GenericBasics.Mega.RValue3#canCall(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue3$XX, 
        Lit(this), 
        Lit(x#0))
       || (
        this != null
         && $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsBox(x#0, GenericBasics.Mega.RValue3$XX))
     ==> GenericBasics.Mega.RValue3(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue3$XX, 
        Lit(this), 
        Lit(x#0))
       == LitInt(5));

// override axiom for GenericBasics.Tr.RValue3 in class GenericBasics.Mega
axiom (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue3$XX: Ty, 
    this: ref, 
    x#0: Box :: 
  { GenericBasics.Tr.RValue3(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.RValue3$XX, this, x#0), $Is(this, 
      Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)) } 
    { GenericBasics.Tr.RValue3(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.RValue3$XX, this, x#0), GenericBasics.Mega.RValue3(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.RValue3$XX, 
      this, 
      x#0) } 
  GenericBasics.Mega.RValue3#canCall(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue3$XX, 
        this, 
        x#0)
       || (this != null
         && $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)))
     ==> GenericBasics.Tr.RValue3(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.RValue3$XX, this, x#0)
       == $Box(GenericBasics.Mega.RValue3(GenericBasics.Mega$P, 
          GenericBasics.Mega$Q, 
          GenericBasics.Mega$L, 
          GenericBasics.Mega.RValue3$XX, 
          this, 
          x#0)));

// function declaration for GenericBasics.Mega.RBValue
function GenericBasics.Mega.RBValue(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RBValue$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int)
   : int;

function GenericBasics.Mega.RBValue#canCall(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RBValue$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int)
   : bool;

function GenericBasics.Mega.RBValue#requires(Ty, Ty, Ty, Ty, ref, Box, int) : bool;

// #requires axiom for GenericBasics.Mega.RBValue
axiom (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RBValue$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int :: 
  { GenericBasics.Mega.RBValue#requires(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.RBValue$XX, 
      this, 
      x#0, 
      b#0) } 
  this != null
       && $Is(this, 
        Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
       && $IsBox(x#0, GenericBasics.Mega.RBValue$XX)
     ==> GenericBasics.Mega.RBValue#requires(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RBValue$XX, 
        this, 
        x#0, 
        b#0)
       == true);

// definition axiom for GenericBasics.Mega.RBValue (revealed)
axiom {:id "id1078"} (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RBValue$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int :: 
  { GenericBasics.Mega.RBValue(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.RBValue$XX, 
      this, 
      x#0, 
      b#0) } 
  GenericBasics.Mega.RBValue#canCall(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RBValue$XX, 
        this, 
        x#0, 
        b#0)
       || (
        this != null
         && $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsBox(x#0, GenericBasics.Mega.RBValue$XX))
     ==> GenericBasics.Mega.RBValue(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RBValue$XX, 
        this, 
        x#0, 
        b#0)
       == b#0 + 2);

// definition axiom for GenericBasics.Mega.RBValue for decreasing-related literals (revealed)
axiom {:id "id1079"} (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RBValue$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int :: 
  {:weight 3} { GenericBasics.Mega.RBValue(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.RBValue$XX, 
      this, 
      x#0, 
      LitInt(b#0)) } 
  GenericBasics.Mega.RBValue#canCall(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RBValue$XX, 
        this, 
        x#0, 
        LitInt(b#0))
       || (
        this != null
         && $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsBox(x#0, GenericBasics.Mega.RBValue$XX))
     ==> GenericBasics.Mega.RBValue(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RBValue$XX, 
        this, 
        x#0, 
        LitInt(b#0))
       == LitInt(b#0 + 2));

// definition axiom for GenericBasics.Mega.RBValue for all literals (revealed)
axiom {:id "id1080"} (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RBValue$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int :: 
  {:weight 3} { GenericBasics.Mega.RBValue(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.RBValue$XX, 
      Lit(this), 
      Lit(x#0), 
      LitInt(b#0)) } 
  GenericBasics.Mega.RBValue#canCall(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RBValue$XX, 
        Lit(this), 
        Lit(x#0), 
        LitInt(b#0))
       || (
        this != null
         && $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsBox(x#0, GenericBasics.Mega.RBValue$XX))
     ==> GenericBasics.Mega.RBValue(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RBValue$XX, 
        Lit(this), 
        Lit(x#0), 
        LitInt(b#0))
       == LitInt(b#0 + 2));

// override axiom for GenericBasics.Tr.RBValue in class GenericBasics.Mega
axiom (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RBValue$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int :: 
  { GenericBasics.Tr.RBValue(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.RBValue$XX, this, x#0, $Box(b#0)), $Is(this, 
      Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)) } 
    { GenericBasics.Tr.RBValue(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.RBValue$XX, this, x#0, $Box(b#0)), GenericBasics.Mega.RBValue(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      GenericBasics.Mega.RBValue$XX, 
      this, 
      x#0, 
      b#0) } 
  GenericBasics.Mega.RBValue#canCall(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RBValue$XX, 
        this, 
        x#0, 
        b#0)
       || (this != null
         && $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)))
     ==> GenericBasics.Tr.RBValue(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.RBValue$XX, this, x#0, $Box(b#0))
       == $Box(GenericBasics.Mega.RBValue(GenericBasics.Mega$P, 
          GenericBasics.Mega$Q, 
          GenericBasics.Mega$L, 
          GenericBasics.Mega.RBValue$XX, 
          this, 
          x#0, 
          b#0)));

// $Is axiom for non-null type GenericBasics.Mega
axiom (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    c#0: ref :: 
  { $Is(c#0, 
      Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)) } 
    { $Is(c#0, 
      Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)) } 
  $Is(c#0, 
      Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
     <==> $Is(c#0, 
        Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
       && c#0 != null);

// $IsAlloc axiom for non-null type GenericBasics.Mega
axiom (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    c#0: ref, 
    $h: Heap :: 
  { $IsAlloc(c#0, 
      Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
      $h) } 
    { $IsAlloc(c#0, 
      Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
      $h) } 
  $IsAlloc(c#0, 
      Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
      $h)
     <==> $IsAlloc(c#0, 
      Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
      $h));

const unique class.Generics.__default: ClassName;

procedure {:verboseName "Generics.Test (well-formedness)"} CheckWellFormed$$Generics.__default.Test();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Generics.Test (call)"} Call$$Generics.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class.Generics.Identity?: ClassName;

function Tclass.Generics.Identity?() : Ty
uses {
// Tclass.Generics.Identity? Tag
axiom Tag(Tclass.Generics.Identity?()) == Tagclass.Generics.Identity?
   && TagFamily(Tclass.Generics.Identity?()) == tytagFamily$Identity;
}

const unique Tagclass.Generics.Identity?: TyTag;

// Box/unbox axiom for Tclass.Generics.Identity?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Generics.Identity?()) } 
  $IsBox(bx, Tclass.Generics.Identity?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Generics.Identity?()));

// $Is axiom for trait Identity
axiom (forall $o: ref :: 
  { $Is($o, Tclass.Generics.Identity?()) } 
  $Is($o, Tclass.Generics.Identity?())
     <==> $o == null || implements$Generics.Identity(dtype($o)));

// $IsAlloc axiom for trait Identity
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.Generics.Identity?(), $h) } 
  $IsAlloc($o, Tclass.Generics.Identity?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$Generics.Identity(ty: Ty) : bool;

function Tclass.Generics.Identity() : Ty
uses {
// Tclass.Generics.Identity Tag
axiom Tag(Tclass.Generics.Identity()) == Tagclass.Generics.Identity
   && TagFamily(Tclass.Generics.Identity()) == tytagFamily$Identity;
}

const unique Tagclass.Generics.Identity: TyTag;

// Box/unbox axiom for Tclass.Generics.Identity
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Generics.Identity()) } 
  $IsBox(bx, Tclass.Generics.Identity())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Generics.Identity()));

// $Is axiom for non-null type Generics.Identity
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.Generics.Identity()) } 
    { $Is(c#0, Tclass.Generics.Identity?()) } 
  $Is(c#0, Tclass.Generics.Identity())
     <==> $Is(c#0, Tclass.Generics.Identity?()) && c#0 != null);

// $IsAlloc axiom for non-null type Generics.Identity
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.Generics.Identity(), $h) } 
    { $IsAlloc(c#0, Tclass.Generics.Identity?(), $h) } 
  $IsAlloc(c#0, Tclass.Generics.Identity(), $h)
     <==> $IsAlloc(c#0, Tclass.Generics.Identity?(), $h));

const unique class.Generics.IdentityImpl?: ClassName;

function Tclass.Generics.IdentityImpl?() : Ty
uses {
// Tclass.Generics.IdentityImpl? Tag
axiom Tag(Tclass.Generics.IdentityImpl?()) == Tagclass.Generics.IdentityImpl?
   && TagFamily(Tclass.Generics.IdentityImpl?()) == tytagFamily$IdentityImpl;
axiom implements$Generics.Identity(Tclass.Generics.IdentityImpl?());
}

const unique Tagclass.Generics.IdentityImpl?: TyTag;

// Box/unbox axiom for Tclass.Generics.IdentityImpl?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Generics.IdentityImpl?()) } 
  $IsBox(bx, Tclass.Generics.IdentityImpl?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.Generics.IdentityImpl?()));

// $Is axiom for class IdentityImpl
axiom (forall $o: ref :: 
  { $Is($o, Tclass.Generics.IdentityImpl?()) } 
  $Is($o, Tclass.Generics.IdentityImpl?())
     <==> $o == null || dtype($o) == Tclass.Generics.IdentityImpl?());

// $IsAlloc axiom for class IdentityImpl
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.Generics.IdentityImpl?(), $h) } 
  $IsAlloc($o, Tclass.Generics.IdentityImpl?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.Generics.IdentityImpl() : Ty
uses {
// Tclass.Generics.IdentityImpl Tag
axiom Tag(Tclass.Generics.IdentityImpl()) == Tagclass.Generics.IdentityImpl
   && TagFamily(Tclass.Generics.IdentityImpl()) == tytagFamily$IdentityImpl;
}

const unique Tagclass.Generics.IdentityImpl: TyTag;

// Box/unbox axiom for Tclass.Generics.IdentityImpl
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Generics.IdentityImpl()) } 
  $IsBox(bx, Tclass.Generics.IdentityImpl())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.Generics.IdentityImpl()));

// $Is axiom for non-null type Generics.IdentityImpl
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.Generics.IdentityImpl()) } 
    { $Is(c#0, Tclass.Generics.IdentityImpl?()) } 
  $Is(c#0, Tclass.Generics.IdentityImpl())
     <==> $Is(c#0, Tclass.Generics.IdentityImpl?()) && c#0 != null);

// $IsAlloc axiom for non-null type Generics.IdentityImpl
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.Generics.IdentityImpl(), $h) } 
    { $IsAlloc(c#0, Tclass.Generics.IdentityImpl?(), $h) } 
  $IsAlloc(c#0, Tclass.Generics.IdentityImpl(), $h)
     <==> $IsAlloc(c#0, Tclass.Generics.IdentityImpl?(), $h));

const unique class.Generics.Function?: ClassName;

function Tclass.Generics.Function?(Ty, Ty) : Ty;

const unique Tagclass.Generics.Function?: TyTag;

// Tclass.Generics.Function? Tag
axiom (forall Generics.Function$T: Ty, Generics.Function$R: Ty :: 
  { Tclass.Generics.Function?(Generics.Function$T, Generics.Function$R) } 
  Tag(Tclass.Generics.Function?(Generics.Function$T, Generics.Function$R))
       == Tagclass.Generics.Function?
     && TagFamily(Tclass.Generics.Function?(Generics.Function$T, Generics.Function$R))
       == tytagFamily$Function);

function Tclass.Generics.Function?_0(Ty) : Ty;

// Tclass.Generics.Function? injectivity 0
axiom (forall Generics.Function$T: Ty, Generics.Function$R: Ty :: 
  { Tclass.Generics.Function?(Generics.Function$T, Generics.Function$R) } 
  Tclass.Generics.Function?_0(Tclass.Generics.Function?(Generics.Function$T, Generics.Function$R))
     == Generics.Function$T);

function Tclass.Generics.Function?_1(Ty) : Ty;

// Tclass.Generics.Function? injectivity 1
axiom (forall Generics.Function$T: Ty, Generics.Function$R: Ty :: 
  { Tclass.Generics.Function?(Generics.Function$T, Generics.Function$R) } 
  Tclass.Generics.Function?_1(Tclass.Generics.Function?(Generics.Function$T, Generics.Function$R))
     == Generics.Function$R);

// Box/unbox axiom for Tclass.Generics.Function?
axiom (forall Generics.Function$T: Ty, Generics.Function$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Generics.Function?(Generics.Function$T, Generics.Function$R)) } 
  $IsBox(bx, Tclass.Generics.Function?(Generics.Function$T, Generics.Function$R))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.Generics.Function?(Generics.Function$T, Generics.Function$R)));

// $Is axiom for trait Function
axiom (forall Generics.Function$T: Ty, Generics.Function$R: Ty, $o: ref :: 
  { $Is($o, Tclass.Generics.Function?(Generics.Function$T, Generics.Function$R)) } 
  $Is($o, Tclass.Generics.Function?(Generics.Function$T, Generics.Function$R))
     <==> $o == null
       || implements$Generics.Function(dtype($o), Generics.Function$T, Generics.Function$R));

// $IsAlloc axiom for trait Function
axiom (forall Generics.Function$T: Ty, Generics.Function$R: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.Generics.Function?(Generics.Function$T, Generics.Function$R), $h) } 
  $IsAlloc($o, Tclass.Generics.Function?(Generics.Function$T, Generics.Function$R), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$Generics.Function(ty: Ty, Generics.Function$T: Ty, Generics.Function$R: Ty) : bool;

function Tclass.Generics.Function(Ty, Ty) : Ty;

const unique Tagclass.Generics.Function: TyTag;

// Tclass.Generics.Function Tag
axiom (forall Generics.Function$T: Ty, Generics.Function$R: Ty :: 
  { Tclass.Generics.Function(Generics.Function$T, Generics.Function$R) } 
  Tag(Tclass.Generics.Function(Generics.Function$T, Generics.Function$R))
       == Tagclass.Generics.Function
     && TagFamily(Tclass.Generics.Function(Generics.Function$T, Generics.Function$R))
       == tytagFamily$Function);

function Tclass.Generics.Function_0(Ty) : Ty;

// Tclass.Generics.Function injectivity 0
axiom (forall Generics.Function$T: Ty, Generics.Function$R: Ty :: 
  { Tclass.Generics.Function(Generics.Function$T, Generics.Function$R) } 
  Tclass.Generics.Function_0(Tclass.Generics.Function(Generics.Function$T, Generics.Function$R))
     == Generics.Function$T);

function Tclass.Generics.Function_1(Ty) : Ty;

// Tclass.Generics.Function injectivity 1
axiom (forall Generics.Function$T: Ty, Generics.Function$R: Ty :: 
  { Tclass.Generics.Function(Generics.Function$T, Generics.Function$R) } 
  Tclass.Generics.Function_1(Tclass.Generics.Function(Generics.Function$T, Generics.Function$R))
     == Generics.Function$R);

// Box/unbox axiom for Tclass.Generics.Function
axiom (forall Generics.Function$T: Ty, Generics.Function$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Generics.Function(Generics.Function$T, Generics.Function$R)) } 
  $IsBox(bx, Tclass.Generics.Function(Generics.Function$T, Generics.Function$R))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.Generics.Function(Generics.Function$T, Generics.Function$R)));

// $Is axiom for non-null type Generics.Function
axiom (forall Generics.Function$T: Ty, Generics.Function$R: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.Generics.Function(Generics.Function$T, Generics.Function$R)) } 
    { $Is(c#0, Tclass.Generics.Function?(Generics.Function$T, Generics.Function$R)) } 
  $Is(c#0, Tclass.Generics.Function(Generics.Function$T, Generics.Function$R))
     <==> $Is(c#0, Tclass.Generics.Function?(Generics.Function$T, Generics.Function$R))
       && c#0 != null);

// $IsAlloc axiom for non-null type Generics.Function
axiom (forall Generics.Function$T: Ty, Generics.Function$R: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.Generics.Function(Generics.Function$T, Generics.Function$R), $h) } 
    { $IsAlloc(c#0, Tclass.Generics.Function?(Generics.Function$T, Generics.Function$R), $h) } 
  $IsAlloc(c#0, Tclass.Generics.Function(Generics.Function$T, Generics.Function$R), $h)
     <==> $IsAlloc(c#0, Tclass.Generics.Function?(Generics.Function$T, Generics.Function$R), $h));

const unique class.Generics.ComposedFunction?: ClassName;

function Tclass.Generics.ComposedFunction?(Ty, Ty, Ty) : Ty
uses {
axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty :: 
  implements$Generics.Function(Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
      Generics.ComposedFunction$T, 
      Generics.ComposedFunction$RR), 
    Generics.ComposedFunction$S, 
    Generics.ComposedFunction$RR));
}

const unique Tagclass.Generics.ComposedFunction?: TyTag;

// Tclass.Generics.ComposedFunction? Tag
axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty :: 
  { Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
      Generics.ComposedFunction$T, 
      Generics.ComposedFunction$RR) } 
  Tag(Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
          Generics.ComposedFunction$T, 
          Generics.ComposedFunction$RR))
       == Tagclass.Generics.ComposedFunction?
     && TagFamily(Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
          Generics.ComposedFunction$T, 
          Generics.ComposedFunction$RR))
       == tytagFamily$ComposedFunction);

function Tclass.Generics.ComposedFunction?_0(Ty) : Ty;

// Tclass.Generics.ComposedFunction? injectivity 0
axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty :: 
  { Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
      Generics.ComposedFunction$T, 
      Generics.ComposedFunction$RR) } 
  Tclass.Generics.ComposedFunction?_0(Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR))
     == Generics.ComposedFunction$S);

function Tclass.Generics.ComposedFunction?_1(Ty) : Ty;

// Tclass.Generics.ComposedFunction? injectivity 1
axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty :: 
  { Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
      Generics.ComposedFunction$T, 
      Generics.ComposedFunction$RR) } 
  Tclass.Generics.ComposedFunction?_1(Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR))
     == Generics.ComposedFunction$T);

function Tclass.Generics.ComposedFunction?_2(Ty) : Ty;

// Tclass.Generics.ComposedFunction? injectivity 2
axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty :: 
  { Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
      Generics.ComposedFunction$T, 
      Generics.ComposedFunction$RR) } 
  Tclass.Generics.ComposedFunction?_2(Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR))
     == Generics.ComposedFunction$RR);

// Box/unbox axiom for Tclass.Generics.ComposedFunction?
axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR)) } 
  $IsBox(bx, 
      Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
          Generics.ComposedFunction$T, 
          Generics.ComposedFunction$RR)));

// $Is axiom for class ComposedFunction
axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty, 
    $o: ref :: 
  { $Is($o, 
      Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR)) } 
  $Is($o, 
      Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR))
     <==> $o == null
       || dtype($o)
         == Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
          Generics.ComposedFunction$T, 
          Generics.ComposedFunction$RR));

// $IsAlloc axiom for class ComposedFunction
axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty, 
    $o: ref, 
    $h: Heap :: 
  { $IsAlloc($o, 
      Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR), 
      $h) } 
  $IsAlloc($o, 
      Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR), 
      $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Generics.ComposedFunction.first(Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty, 
    this: ref)
   : ref;

// ComposedFunction.first: Type axiom
axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty, 
    $o: ref :: 
  { Generics.ComposedFunction.first(Generics.ComposedFunction$S, 
      Generics.ComposedFunction$T, 
      Generics.ComposedFunction$RR, 
      $o) } 
  $o != null
       && dtype($o)
         == Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
          Generics.ComposedFunction$T, 
          Generics.ComposedFunction$RR)
     ==> $Is(Generics.ComposedFunction.first(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR, 
        $o), 
      Tclass.Generics.Function(Generics.ComposedFunction$S, Generics.ComposedFunction$T)));

// ComposedFunction.first: Allocation axiom
axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty, 
    $h: Heap, 
    $o: ref :: 
  { Generics.ComposedFunction.first(Generics.ComposedFunction$S, 
      Generics.ComposedFunction$T, 
      Generics.ComposedFunction$RR, 
      $o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
          Generics.ComposedFunction$T, 
          Generics.ComposedFunction$RR)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(Generics.ComposedFunction.first(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR, 
        $o), 
      Tclass.Generics.Function(Generics.ComposedFunction$S, Generics.ComposedFunction$T), 
      $h));

function Generics.ComposedFunction.second(Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty, 
    this: ref)
   : ref;

// ComposedFunction.second: Type axiom
axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty, 
    $o: ref :: 
  { Generics.ComposedFunction.second(Generics.ComposedFunction$S, 
      Generics.ComposedFunction$T, 
      Generics.ComposedFunction$RR, 
      $o) } 
  $o != null
       && dtype($o)
         == Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
          Generics.ComposedFunction$T, 
          Generics.ComposedFunction$RR)
     ==> $Is(Generics.ComposedFunction.second(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR, 
        $o), 
      Tclass.Generics.Function(Generics.ComposedFunction$T, Generics.ComposedFunction$RR)));

// ComposedFunction.second: Allocation axiom
axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty, 
    $h: Heap, 
    $o: ref :: 
  { Generics.ComposedFunction.second(Generics.ComposedFunction$S, 
      Generics.ComposedFunction$T, 
      Generics.ComposedFunction$RR, 
      $o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
          Generics.ComposedFunction$T, 
          Generics.ComposedFunction$RR)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(Generics.ComposedFunction.second(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR, 
        $o), 
      Tclass.Generics.Function(Generics.ComposedFunction$T, Generics.ComposedFunction$RR), 
      $h));

function Tclass.Generics.ComposedFunction(Ty, Ty, Ty) : Ty;

const unique Tagclass.Generics.ComposedFunction: TyTag;

// Tclass.Generics.ComposedFunction Tag
axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty :: 
  { Tclass.Generics.ComposedFunction(Generics.ComposedFunction$S, 
      Generics.ComposedFunction$T, 
      Generics.ComposedFunction$RR) } 
  Tag(Tclass.Generics.ComposedFunction(Generics.ComposedFunction$S, 
          Generics.ComposedFunction$T, 
          Generics.ComposedFunction$RR))
       == Tagclass.Generics.ComposedFunction
     && TagFamily(Tclass.Generics.ComposedFunction(Generics.ComposedFunction$S, 
          Generics.ComposedFunction$T, 
          Generics.ComposedFunction$RR))
       == tytagFamily$ComposedFunction);

function Tclass.Generics.ComposedFunction_0(Ty) : Ty;

// Tclass.Generics.ComposedFunction injectivity 0
axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty :: 
  { Tclass.Generics.ComposedFunction(Generics.ComposedFunction$S, 
      Generics.ComposedFunction$T, 
      Generics.ComposedFunction$RR) } 
  Tclass.Generics.ComposedFunction_0(Tclass.Generics.ComposedFunction(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR))
     == Generics.ComposedFunction$S);

function Tclass.Generics.ComposedFunction_1(Ty) : Ty;

// Tclass.Generics.ComposedFunction injectivity 1
axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty :: 
  { Tclass.Generics.ComposedFunction(Generics.ComposedFunction$S, 
      Generics.ComposedFunction$T, 
      Generics.ComposedFunction$RR) } 
  Tclass.Generics.ComposedFunction_1(Tclass.Generics.ComposedFunction(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR))
     == Generics.ComposedFunction$T);

function Tclass.Generics.ComposedFunction_2(Ty) : Ty;

// Tclass.Generics.ComposedFunction injectivity 2
axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty :: 
  { Tclass.Generics.ComposedFunction(Generics.ComposedFunction$S, 
      Generics.ComposedFunction$T, 
      Generics.ComposedFunction$RR) } 
  Tclass.Generics.ComposedFunction_2(Tclass.Generics.ComposedFunction(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR))
     == Generics.ComposedFunction$RR);

// Box/unbox axiom for Tclass.Generics.ComposedFunction
axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.Generics.ComposedFunction(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR)) } 
  $IsBox(bx, 
      Tclass.Generics.ComposedFunction(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.Generics.ComposedFunction(Generics.ComposedFunction$S, 
          Generics.ComposedFunction$T, 
          Generics.ComposedFunction$RR)));

// $Is axiom for non-null type Generics.ComposedFunction
axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty, 
    c#0: ref :: 
  { $Is(c#0, 
      Tclass.Generics.ComposedFunction(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR)) } 
    { $Is(c#0, 
      Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR)) } 
  $Is(c#0, 
      Tclass.Generics.ComposedFunction(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR))
     <==> $Is(c#0, 
        Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
          Generics.ComposedFunction$T, 
          Generics.ComposedFunction$RR))
       && c#0 != null);

// $IsAlloc axiom for non-null type Generics.ComposedFunction
axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty, 
    c#0: ref, 
    $h: Heap :: 
  { $IsAlloc(c#0, 
      Tclass.Generics.ComposedFunction(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR), 
      $h) } 
    { $IsAlloc(c#0, 
      Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR), 
      $h) } 
  $IsAlloc(c#0, 
      Tclass.Generics.ComposedFunction(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR), 
      $h)
     <==> $IsAlloc(c#0, 
      Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR), 
      $h));

const unique class.Generics.Triple?: ClassName;

function Tclass.Generics.Triple?() : Ty
uses {
// Tclass.Generics.Triple? Tag
axiom Tag(Tclass.Generics.Triple?()) == Tagclass.Generics.Triple?
   && TagFamily(Tclass.Generics.Triple?()) == tytagFamily$Triple;
axiom implements$Generics.Function(Tclass.Generics.Triple?(), TInt, TInt);
}

const unique Tagclass.Generics.Triple?: TyTag;

// Box/unbox axiom for Tclass.Generics.Triple?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Generics.Triple?()) } 
  $IsBox(bx, Tclass.Generics.Triple?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Generics.Triple?()));

// $Is axiom for class Triple
axiom (forall $o: ref :: 
  { $Is($o, Tclass.Generics.Triple?()) } 
  $Is($o, Tclass.Generics.Triple?())
     <==> $o == null || dtype($o) == Tclass.Generics.Triple?());

// $IsAlloc axiom for class Triple
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.Generics.Triple?(), $h) } 
  $IsAlloc($o, Tclass.Generics.Triple?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.Generics.Triple() : Ty
uses {
// Tclass.Generics.Triple Tag
axiom Tag(Tclass.Generics.Triple()) == Tagclass.Generics.Triple
   && TagFamily(Tclass.Generics.Triple()) == tytagFamily$Triple;
}

const unique Tagclass.Generics.Triple: TyTag;

// Box/unbox axiom for Tclass.Generics.Triple
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Generics.Triple()) } 
  $IsBox(bx, Tclass.Generics.Triple())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Generics.Triple()));

// $Is axiom for non-null type Generics.Triple
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.Generics.Triple()) } { $Is(c#0, Tclass.Generics.Triple?()) } 
  $Is(c#0, Tclass.Generics.Triple())
     <==> $Is(c#0, Tclass.Generics.Triple?()) && c#0 != null);

// $IsAlloc axiom for non-null type Generics.Triple
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.Generics.Triple(), $h) } 
    { $IsAlloc(c#0, Tclass.Generics.Triple?(), $h) } 
  $IsAlloc(c#0, Tclass.Generics.Triple(), $h)
     <==> $IsAlloc(c#0, Tclass.Generics.Triple?(), $h));

const unique class.TraitsExtendingTraits.__default: ClassName;

procedure {:verboseName "TraitsExtendingTraits.Test (well-formedness)"} CheckWellFormed$$TraitsExtendingTraits.__default.Test();
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TraitsExtendingTraits.Test (call)"} Call$$TraitsExtendingTraits.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.TraitsExtendingTraits.Odd() : Ty
uses {
// Tclass.TraitsExtendingTraits.Odd Tag
axiom Tag(Tclass.TraitsExtendingTraits.Odd()) == Tagclass.TraitsExtendingTraits.Odd
   && TagFamily(Tclass.TraitsExtendingTraits.Odd()) == tytagFamily$Odd;
}

const unique Tagclass.TraitsExtendingTraits.Odd: TyTag;

// Box/unbox axiom for Tclass.TraitsExtendingTraits.Odd
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.Odd()) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.Odd())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.TraitsExtendingTraits.Odd()));

// $Is axiom for subset type TraitsExtendingTraits.Odd
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.TraitsExtendingTraits.Odd()) } 
  $Is(x#0, Tclass.TraitsExtendingTraits.Odd())
     <==> Mod(x#0, LitInt(2)) == LitInt(1));

// $IsAlloc axiom for subset type TraitsExtendingTraits.Odd
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.TraitsExtendingTraits.Odd(), $h) } 
  $IsAlloc(x#0, Tclass.TraitsExtendingTraits.Odd(), $h));

const unique class.TraitsExtendingTraits.A?: ClassName;

function Tclass.TraitsExtendingTraits.A?(Ty, Ty) : Ty;

const unique Tagclass.TraitsExtendingTraits.A?: TyTag;

// Tclass.TraitsExtendingTraits.A? Tag
axiom (forall TraitsExtendingTraits.A$Y0: Ty, TraitsExtendingTraits.A$Y1: Ty :: 
  { Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1) } 
  Tag(Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
       == Tagclass.TraitsExtendingTraits.A?
     && TagFamily(Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
       == tytagFamily$A);

function Tclass.TraitsExtendingTraits.A?_0(Ty) : Ty;

// Tclass.TraitsExtendingTraits.A? injectivity 0
axiom (forall TraitsExtendingTraits.A$Y0: Ty, TraitsExtendingTraits.A$Y1: Ty :: 
  { Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1) } 
  Tclass.TraitsExtendingTraits.A?_0(Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
     == TraitsExtendingTraits.A$Y0);

function Tclass.TraitsExtendingTraits.A?_1(Ty) : Ty;

// Tclass.TraitsExtendingTraits.A? injectivity 1
axiom (forall TraitsExtendingTraits.A$Y0: Ty, TraitsExtendingTraits.A$Y1: Ty :: 
  { Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1) } 
  Tclass.TraitsExtendingTraits.A?_1(Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
     == TraitsExtendingTraits.A$Y1);

// Box/unbox axiom for Tclass.TraitsExtendingTraits.A?
axiom (forall TraitsExtendingTraits.A$Y0: Ty, TraitsExtendingTraits.A$Y1: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1)) } 
  $IsBox(bx, 
      Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1)));

// $Is axiom for trait A
axiom (forall TraitsExtendingTraits.A$Y0: Ty, TraitsExtendingTraits.A$Y1: Ty, $o: ref :: 
  { $Is($o, 
      Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1)) } 
  $Is($o, 
      Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
     <==> $o == null
       || implements$TraitsExtendingTraits.A(dtype($o), TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1));

// $IsAlloc axiom for trait A
axiom (forall TraitsExtendingTraits.A$Y0: Ty, 
    TraitsExtendingTraits.A$Y1: Ty, 
    $o: ref, 
    $h: Heap :: 
  { $IsAlloc($o, 
      Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1), 
      $h) } 
  $IsAlloc($o, 
      Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1), 
      $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TraitsExtendingTraits.A(ty: Ty, TraitsExtendingTraits.A$Y0: Ty, TraitsExtendingTraits.A$Y1: Ty) : bool;

const TraitsExtendingTraits.A.y0: Field
uses {
axiom FDim(TraitsExtendingTraits.A.y0) == 0
   && FieldOfDecl(class.TraitsExtendingTraits.A?, field$y0)
     == TraitsExtendingTraits.A.y0
   && !$IsGhostField(TraitsExtendingTraits.A.y0);
}

// A.y0: Type axiom
axiom (forall TraitsExtendingTraits.A$Y0: Ty, 
    TraitsExtendingTraits.A$Y1: Ty, 
    $h: Heap, 
    $o: ref :: 
  { read($h, $o, TraitsExtendingTraits.A.y0), Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, 
        Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
     ==> $IsBox(read($h, $o, TraitsExtendingTraits.A.y0), TraitsExtendingTraits.A$Y0));

// A.y0: Allocation axiom
axiom (forall TraitsExtendingTraits.A$Y0: Ty, 
    TraitsExtendingTraits.A$Y1: Ty, 
    $h: Heap, 
    $o: ref :: 
  { read($h, $o, TraitsExtendingTraits.A.y0), Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, 
        Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, TraitsExtendingTraits.A.y0), TraitsExtendingTraits.A$Y0, $h));

function TraitsExtendingTraits.A.y1(TraitsExtendingTraits.A$Y0: Ty, TraitsExtendingTraits.A$Y1: Ty, this: ref) : Box;

// A.y1: Type axiom
axiom (forall TraitsExtendingTraits.A$Y0: Ty, TraitsExtendingTraits.A$Y1: Ty, $o: ref :: 
  { TraitsExtendingTraits.A.y1(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $o) } 
  $o != null
       && $Is($o, 
        Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
     ==> $IsBox(TraitsExtendingTraits.A.y1(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $o), 
      TraitsExtendingTraits.A$Y1));

// A.y1: Allocation axiom
axiom (forall TraitsExtendingTraits.A$Y0: Ty, 
    TraitsExtendingTraits.A$Y1: Ty, 
    $h: Heap, 
    $o: ref :: 
  { TraitsExtendingTraits.A.y1(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, 
        Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(TraitsExtendingTraits.A.y1(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $o), 
      TraitsExtendingTraits.A$Y1, 
      $h));

// function declaration for TraitsExtendingTraits.A.GetY
function TraitsExtendingTraits.A.GetY(TraitsExtendingTraits.A$Y0: Ty, 
    TraitsExtendingTraits.A$Y1: Ty, 
    $heap: Heap, 
    this: ref)
   : Box;

function TraitsExtendingTraits.A.GetY#canCall(TraitsExtendingTraits.A$Y0: Ty, 
    TraitsExtendingTraits.A$Y1: Ty, 
    $heap: Heap, 
    this: ref)
   : bool;

function Tclass.TraitsExtendingTraits.A(Ty, Ty) : Ty;

const unique Tagclass.TraitsExtendingTraits.A: TyTag;

// Tclass.TraitsExtendingTraits.A Tag
axiom (forall TraitsExtendingTraits.A$Y0: Ty, TraitsExtendingTraits.A$Y1: Ty :: 
  { Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1) } 
  Tag(Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
       == Tagclass.TraitsExtendingTraits.A
     && TagFamily(Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
       == tytagFamily$A);

function Tclass.TraitsExtendingTraits.A_0(Ty) : Ty;

// Tclass.TraitsExtendingTraits.A injectivity 0
axiom (forall TraitsExtendingTraits.A$Y0: Ty, TraitsExtendingTraits.A$Y1: Ty :: 
  { Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1) } 
  Tclass.TraitsExtendingTraits.A_0(Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
     == TraitsExtendingTraits.A$Y0);

function Tclass.TraitsExtendingTraits.A_1(Ty) : Ty;

// Tclass.TraitsExtendingTraits.A injectivity 1
axiom (forall TraitsExtendingTraits.A$Y0: Ty, TraitsExtendingTraits.A$Y1: Ty :: 
  { Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1) } 
  Tclass.TraitsExtendingTraits.A_1(Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
     == TraitsExtendingTraits.A$Y1);

// Box/unbox axiom for Tclass.TraitsExtendingTraits.A
axiom (forall TraitsExtendingTraits.A$Y0: Ty, TraitsExtendingTraits.A$Y1: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1)) } 
  $IsBox(bx, 
      Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1)));

// frame axiom for TraitsExtendingTraits.A.GetY
axiom (forall TraitsExtendingTraits.A$Y0: Ty, 
    TraitsExtendingTraits.A$Y1: Ty, 
    $h0: Heap, 
    $h1: Heap, 
    this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TraitsExtendingTraits.A.GetY(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, 
        Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TraitsExtendingTraits.A.GetY(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $h0, this)
       == TraitsExtendingTraits.A.GetY(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $h1, this));

// consequence axiom for TraitsExtendingTraits.A.GetY
axiom (forall TraitsExtendingTraits.A$Y0: Ty, 
    TraitsExtendingTraits.A$Y1: Ty, 
    $Heap: Heap, 
    this: ref :: 
  { TraitsExtendingTraits.A.GetY(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $Heap, this) } 
  TraitsExtendingTraits.A.GetY#canCall(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $Heap, this)
       || (0 < $FunctionContextHeight
         && 
        $IsGoodHeap($Heap)
         && 
        this != null
         && 
        $Is(this, 
          Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
         && $IsAlloc(this, 
          Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1), 
          $Heap))
     ==> $IsBox(TraitsExtendingTraits.A.GetY(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $Heap, this), 
      TraitsExtendingTraits.A$Y0));

// alloc consequence axiom for TraitsExtendingTraits.A.GetY
axiom (forall TraitsExtendingTraits.A$Y0: Ty, 
    TraitsExtendingTraits.A$Y1: Ty, 
    $Heap: Heap, 
    this: ref :: 
  { $IsAllocBox(TraitsExtendingTraits.A.GetY(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $Heap, this), 
      TraitsExtendingTraits.A$Y0, 
      $Heap) } 
  TraitsExtendingTraits.A.GetY#canCall(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $Heap, this)
       || (0 < $FunctionContextHeight
         && 
        $IsGoodHeap($Heap)
         && this != null
         && $IsAlloc(this, 
          Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1), 
          $Heap))
     ==> $IsAllocBox(TraitsExtendingTraits.A.GetY(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $Heap, this), 
      TraitsExtendingTraits.A$Y0, 
      $Heap));

function TraitsExtendingTraits.A.GetY#requires(Ty, Ty, Heap, ref) : bool;

// #requires axiom for TraitsExtendingTraits.A.GetY
axiom (forall TraitsExtendingTraits.A$Y0: Ty, 
    TraitsExtendingTraits.A$Y1: Ty, 
    $Heap: Heap, 
    this: ref :: 
  { TraitsExtendingTraits.A.GetY#requires(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, 
        Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
       && $IsAlloc(this, 
        Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1), 
        $Heap)
     ==> TraitsExtendingTraits.A.GetY#requires(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $Heap, this)
       == true);

// definition axiom for TraitsExtendingTraits.A.GetY (revealed)
axiom {:id "id1081"} (forall TraitsExtendingTraits.A$Y0: Ty, 
    TraitsExtendingTraits.A$Y1: Ty, 
    $Heap: Heap, 
    this: ref :: 
  { TraitsExtendingTraits.A.GetY(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $Heap, this), $IsGoodHeap($Heap) } 
  TraitsExtendingTraits.A.GetY#canCall(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $Heap, this)
       || ($IsGoodHeap($Heap)
         && 
        this != null
         && 
        $Is(this, 
          Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
         && $IsAlloc(this, 
          Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1), 
          $Heap))
     ==> TraitsExtendingTraits.A.GetY(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $Heap, this)
       == read($Heap, this, TraitsExtendingTraits.A.y0));

// function declaration for TraitsExtendingTraits.A.GetY'
function TraitsExtendingTraits.A.GetY_k(TraitsExtendingTraits.A$Y0: Ty, 
    TraitsExtendingTraits.A$Y1: Ty, 
    $heap: Heap, 
    this: ref)
   : Box;

function TraitsExtendingTraits.A.GetY_k#canCall(TraitsExtendingTraits.A$Y0: Ty, 
    TraitsExtendingTraits.A$Y1: Ty, 
    $heap: Heap, 
    this: ref)
   : bool;

// frame axiom for TraitsExtendingTraits.A.GetY_k
axiom (forall TraitsExtendingTraits.A$Y0: Ty, 
    TraitsExtendingTraits.A$Y1: Ty, 
    $h0: Heap, 
    $h1: Heap, 
    this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TraitsExtendingTraits.A.GetY_k(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, 
        Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TraitsExtendingTraits.A.GetY_k(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $h0, this)
       == TraitsExtendingTraits.A.GetY_k(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $h1, this));

// consequence axiom for TraitsExtendingTraits.A.GetY_k
axiom (forall TraitsExtendingTraits.A$Y0: Ty, 
    TraitsExtendingTraits.A$Y1: Ty, 
    $Heap: Heap, 
    this: ref :: 
  { TraitsExtendingTraits.A.GetY_k(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $Heap, this) } 
  TraitsExtendingTraits.A.GetY_k#canCall(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $Heap, this)
       || (0 < $FunctionContextHeight
         && 
        $IsGoodHeap($Heap)
         && 
        this != null
         && 
        $Is(this, 
          Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
         && $IsAlloc(this, 
          Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1), 
          $Heap))
     ==> $IsBox(TraitsExtendingTraits.A.GetY_k(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $Heap, this), 
      TraitsExtendingTraits.A$Y0));

// alloc consequence axiom for TraitsExtendingTraits.A.GetY_k
axiom (forall TraitsExtendingTraits.A$Y0: Ty, 
    TraitsExtendingTraits.A$Y1: Ty, 
    $Heap: Heap, 
    this: ref :: 
  { $IsAllocBox(TraitsExtendingTraits.A.GetY_k(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $Heap, this), 
      TraitsExtendingTraits.A$Y0, 
      $Heap) } 
  TraitsExtendingTraits.A.GetY_k#canCall(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $Heap, this)
       || (0 < $FunctionContextHeight
         && 
        $IsGoodHeap($Heap)
         && this != null
         && $IsAlloc(this, 
          Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1), 
          $Heap))
     ==> $IsAllocBox(TraitsExtendingTraits.A.GetY_k(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $Heap, this), 
      TraitsExtendingTraits.A$Y0, 
      $Heap));

function TraitsExtendingTraits.A.GetY_k#requires(Ty, Ty, Heap, ref) : bool;

// #requires axiom for TraitsExtendingTraits.A.GetY_k
axiom (forall TraitsExtendingTraits.A$Y0: Ty, 
    TraitsExtendingTraits.A$Y1: Ty, 
    $Heap: Heap, 
    this: ref :: 
  { TraitsExtendingTraits.A.GetY_k#requires(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, 
        Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
       && $IsAlloc(this, 
        Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1), 
        $Heap)
     ==> TraitsExtendingTraits.A.GetY_k#requires(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1, $Heap, this)
       == true);

// $Is axiom for non-null type TraitsExtendingTraits.A
axiom (forall TraitsExtendingTraits.A$Y0: Ty, TraitsExtendingTraits.A$Y1: Ty, c#0: ref :: 
  { $Is(c#0, 
      Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1)) } 
    { $Is(c#0, 
      Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1)) } 
  $Is(c#0, 
      Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
     <==> $Is(c#0, 
        Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1))
       && c#0 != null);

// $IsAlloc axiom for non-null type TraitsExtendingTraits.A
axiom (forall TraitsExtendingTraits.A$Y0: Ty, 
    TraitsExtendingTraits.A$Y1: Ty, 
    c#0: ref, 
    $h: Heap :: 
  { $IsAlloc(c#0, 
      Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1), 
      $h) } 
    { $IsAlloc(c#0, 
      Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1), 
      $h) } 
  $IsAlloc(c#0, 
      Tclass.TraitsExtendingTraits.A(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1), 
      $h)
     <==> $IsAlloc(c#0, 
      Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.A$Y0, TraitsExtendingTraits.A$Y1), 
      $h));

const unique class.TraitsExtendingTraits.B?: ClassName;

function Tclass.TraitsExtendingTraits.B?() : Ty
uses {
// Tclass.TraitsExtendingTraits.B? Tag
axiom Tag(Tclass.TraitsExtendingTraits.B?()) == Tagclass.TraitsExtendingTraits.B?
   && TagFamily(Tclass.TraitsExtendingTraits.B?()) == tytagFamily$B;
}

const unique Tagclass.TraitsExtendingTraits.B?: TyTag;

// Box/unbox axiom for Tclass.TraitsExtendingTraits.B?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.B?()) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.B?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TraitsExtendingTraits.B?()));

// $Is axiom for trait B
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TraitsExtendingTraits.B?()) } 
  $Is($o, Tclass.TraitsExtendingTraits.B?())
     <==> $o == null || implements$TraitsExtendingTraits.B(dtype($o)));

// $IsAlloc axiom for trait B
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TraitsExtendingTraits.B?(), $h) } 
  $IsAlloc($o, Tclass.TraitsExtendingTraits.B?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TraitsExtendingTraits.B(ty: Ty) : bool;

const TraitsExtendingTraits.B.b: Field
uses {
axiom FDim(TraitsExtendingTraits.B.b) == 0
   && FieldOfDecl(class.TraitsExtendingTraits.B?, field$b)
     == TraitsExtendingTraits.B.b
   && !$IsGhostField(TraitsExtendingTraits.B.b);
}

// B.b: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, TraitsExtendingTraits.B.b)): bool } 
  $IsGoodHeap($h) && $o != null && $Is($o, Tclass.TraitsExtendingTraits.B?())
     ==> $Is($Unbox(read($h, $o, TraitsExtendingTraits.B.b)): bool, TBool));

// B.b: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, TraitsExtendingTraits.B.b)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass.TraitsExtendingTraits.B?())
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, TraitsExtendingTraits.B.b)): bool, TBool, $h));

function Tclass.TraitsExtendingTraits.B() : Ty
uses {
// Tclass.TraitsExtendingTraits.B Tag
axiom Tag(Tclass.TraitsExtendingTraits.B()) == Tagclass.TraitsExtendingTraits.B
   && TagFamily(Tclass.TraitsExtendingTraits.B()) == tytagFamily$B;
}

const unique Tagclass.TraitsExtendingTraits.B: TyTag;

// Box/unbox axiom for Tclass.TraitsExtendingTraits.B
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.B()) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.B())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TraitsExtendingTraits.B()));

// $Is axiom for non-null type TraitsExtendingTraits.B
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TraitsExtendingTraits.B()) } 
    { $Is(c#0, Tclass.TraitsExtendingTraits.B?()) } 
  $Is(c#0, Tclass.TraitsExtendingTraits.B())
     <==> $Is(c#0, Tclass.TraitsExtendingTraits.B?()) && c#0 != null);

// $IsAlloc axiom for non-null type TraitsExtendingTraits.B
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TraitsExtendingTraits.B(), $h) } 
    { $IsAlloc(c#0, Tclass.TraitsExtendingTraits.B?(), $h) } 
  $IsAlloc(c#0, Tclass.TraitsExtendingTraits.B(), $h)
     <==> $IsAlloc(c#0, Tclass.TraitsExtendingTraits.B?(), $h));

const unique class.TraitsExtendingTraits.C?: ClassName;

function Tclass.TraitsExtendingTraits.C?() : Ty
uses {
// Tclass.TraitsExtendingTraits.C? Tag
axiom Tag(Tclass.TraitsExtendingTraits.C?()) == Tagclass.TraitsExtendingTraits.C?
   && TagFamily(Tclass.TraitsExtendingTraits.C?()) == tytagFamily$C;
}

const unique Tagclass.TraitsExtendingTraits.C?: TyTag;

// Box/unbox axiom for Tclass.TraitsExtendingTraits.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.C?()) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.C?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TraitsExtendingTraits.C?()));

// $Is axiom for trait C
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TraitsExtendingTraits.C?()) } 
  $Is($o, Tclass.TraitsExtendingTraits.C?())
     <==> $o == null || implements$TraitsExtendingTraits.C(dtype($o)));

// $IsAlloc axiom for trait C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TraitsExtendingTraits.C?(), $h) } 
  $IsAlloc($o, Tclass.TraitsExtendingTraits.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TraitsExtendingTraits.C(ty: Ty) : bool;

function Tclass.TraitsExtendingTraits.C() : Ty
uses {
// Tclass.TraitsExtendingTraits.C Tag
axiom Tag(Tclass.TraitsExtendingTraits.C()) == Tagclass.TraitsExtendingTraits.C
   && TagFamily(Tclass.TraitsExtendingTraits.C()) == tytagFamily$C;
}

const unique Tagclass.TraitsExtendingTraits.C: TyTag;

// Box/unbox axiom for Tclass.TraitsExtendingTraits.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.C()) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.C())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TraitsExtendingTraits.C()));

// $Is axiom for non-null type TraitsExtendingTraits.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TraitsExtendingTraits.C()) } 
    { $Is(c#0, Tclass.TraitsExtendingTraits.C?()) } 
  $Is(c#0, Tclass.TraitsExtendingTraits.C())
     <==> $Is(c#0, Tclass.TraitsExtendingTraits.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type TraitsExtendingTraits.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TraitsExtendingTraits.C(), $h) } 
    { $IsAlloc(c#0, Tclass.TraitsExtendingTraits.C?(), $h) } 
  $IsAlloc(c#0, Tclass.TraitsExtendingTraits.C(), $h)
     <==> $IsAlloc(c#0, Tclass.TraitsExtendingTraits.C?(), $h));

const unique class.TraitsExtendingTraits.K?: ClassName;

function Tclass.TraitsExtendingTraits.K?(Ty) : Ty;

const unique Tagclass.TraitsExtendingTraits.K?: TyTag;

// Tclass.TraitsExtendingTraits.K? Tag
axiom (forall TraitsExtendingTraits.K$Y: Ty :: 
  { Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y) } 
  Tag(Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y))
       == Tagclass.TraitsExtendingTraits.K?
     && TagFamily(Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y))
       == tytagFamily$K);

function Tclass.TraitsExtendingTraits.K?_0(Ty) : Ty;

// Tclass.TraitsExtendingTraits.K? injectivity 0
axiom (forall TraitsExtendingTraits.K$Y: Ty :: 
  { Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y) } 
  Tclass.TraitsExtendingTraits.K?_0(Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y))
     == TraitsExtendingTraits.K$Y);

// Box/unbox axiom for Tclass.TraitsExtendingTraits.K?
axiom (forall TraitsExtendingTraits.K$Y: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y)) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y)));

// $Is axiom for trait K
axiom (forall TraitsExtendingTraits.K$Y: Ty, $o: ref :: 
  { $Is($o, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y)) } 
  $Is($o, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y))
     <==> $o == null
       || implements$TraitsExtendingTraits.K(dtype($o), TraitsExtendingTraits.K$Y));

// $IsAlloc axiom for trait K
axiom (forall TraitsExtendingTraits.K$Y: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y), $h) } 
  $IsAlloc($o, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TraitsExtendingTraits.K(ty: Ty, TraitsExtendingTraits.K$Y: Ty) : bool;

function TraitsExtendingTraits.K.k(TraitsExtendingTraits.K$Y: Ty, this: ref) : int
uses {
axiom (forall TraitsExtendingTraits.K$Y: Ty, this: ref :: 
  { TraitsExtendingTraits.K.k(TraitsExtendingTraits.K$Y, this): int } 
  TraitsExtendingTraits.K.k(TraitsExtendingTraits.K$Y, this): int
     == $Unbox(TraitsExtendingTraits.A.y1(TraitsExtendingTraits.K$Y, Tclass.TraitsExtendingTraits.Odd(), this)): int);
}

// K.k: Type axiom
axiom (forall TraitsExtendingTraits.K$Y: Ty, $o: ref :: 
  { TraitsExtendingTraits.K.k(TraitsExtendingTraits.K$Y, $o) } 
  $o != null
       && $Is($o, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y))
     ==> $Is(TraitsExtendingTraits.K.k(TraitsExtendingTraits.K$Y, $o), 
      Tclass.TraitsExtendingTraits.Odd()));

// K.k: Allocation axiom
axiom (forall TraitsExtendingTraits.K$Y: Ty, $h: Heap, $o: ref :: 
  { TraitsExtendingTraits.K.k(TraitsExtendingTraits.K$Y, $o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y))
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(TraitsExtendingTraits.K.k(TraitsExtendingTraits.K$Y, $o), 
      Tclass.TraitsExtendingTraits.Odd(), 
      $h));

// function declaration for TraitsExtendingTraits.K.GetY'
function TraitsExtendingTraits.K.GetY_k(TraitsExtendingTraits.K$Y: Ty, $heap: Heap, this: ref) : Box;

function TraitsExtendingTraits.K.GetY_k#canCall(TraitsExtendingTraits.K$Y: Ty, $heap: Heap, this: ref) : bool;

function Tclass.TraitsExtendingTraits.K(Ty) : Ty;

const unique Tagclass.TraitsExtendingTraits.K: TyTag;

// Tclass.TraitsExtendingTraits.K Tag
axiom (forall TraitsExtendingTraits.K$Y: Ty :: 
  { Tclass.TraitsExtendingTraits.K(TraitsExtendingTraits.K$Y) } 
  Tag(Tclass.TraitsExtendingTraits.K(TraitsExtendingTraits.K$Y))
       == Tagclass.TraitsExtendingTraits.K
     && TagFamily(Tclass.TraitsExtendingTraits.K(TraitsExtendingTraits.K$Y))
       == tytagFamily$K);

function Tclass.TraitsExtendingTraits.K_0(Ty) : Ty;

// Tclass.TraitsExtendingTraits.K injectivity 0
axiom (forall TraitsExtendingTraits.K$Y: Ty :: 
  { Tclass.TraitsExtendingTraits.K(TraitsExtendingTraits.K$Y) } 
  Tclass.TraitsExtendingTraits.K_0(Tclass.TraitsExtendingTraits.K(TraitsExtendingTraits.K$Y))
     == TraitsExtendingTraits.K$Y);

// Box/unbox axiom for Tclass.TraitsExtendingTraits.K
axiom (forall TraitsExtendingTraits.K$Y: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.K(TraitsExtendingTraits.K$Y)) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.K(TraitsExtendingTraits.K$Y))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TraitsExtendingTraits.K(TraitsExtendingTraits.K$Y)));

// frame axiom for TraitsExtendingTraits.K.GetY_k
axiom (forall TraitsExtendingTraits.K$Y: Ty, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TraitsExtendingTraits.K.GetY_k(TraitsExtendingTraits.K$Y, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.TraitsExtendingTraits.K(TraitsExtendingTraits.K$Y))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TraitsExtendingTraits.K.GetY_k(TraitsExtendingTraits.K$Y, $h0, this)
       == TraitsExtendingTraits.K.GetY_k(TraitsExtendingTraits.K$Y, $h1, this));

// consequence axiom for TraitsExtendingTraits.K.GetY_k
axiom (forall TraitsExtendingTraits.K$Y: Ty, $Heap: Heap, this: ref :: 
  { TraitsExtendingTraits.K.GetY_k(TraitsExtendingTraits.K$Y, $Heap, this) } 
  TraitsExtendingTraits.K.GetY_k#canCall(TraitsExtendingTraits.K$Y, $Heap, this)
       || (0 < $FunctionContextHeight
         && 
        $IsGoodHeap($Heap)
         && 
        this != null
         && 
        $Is(this, Tclass.TraitsExtendingTraits.K(TraitsExtendingTraits.K$Y))
         && $IsAlloc(this, Tclass.TraitsExtendingTraits.K(TraitsExtendingTraits.K$Y), $Heap))
     ==> $IsBox(TraitsExtendingTraits.K.GetY_k(TraitsExtendingTraits.K$Y, $Heap, this), 
      TraitsExtendingTraits.K$Y));

// alloc consequence axiom for TraitsExtendingTraits.K.GetY_k
axiom (forall TraitsExtendingTraits.K$Y: Ty, $Heap: Heap, this: ref :: 
  { $IsAllocBox(TraitsExtendingTraits.K.GetY_k(TraitsExtendingTraits.K$Y, $Heap, this), 
      TraitsExtendingTraits.K$Y, 
      $Heap) } 
  TraitsExtendingTraits.K.GetY_k#canCall(TraitsExtendingTraits.K$Y, $Heap, this)
       || (0 < $FunctionContextHeight
         && 
        $IsGoodHeap($Heap)
         && this != null
         && $IsAlloc(this, Tclass.TraitsExtendingTraits.K(TraitsExtendingTraits.K$Y), $Heap))
     ==> $IsAllocBox(TraitsExtendingTraits.K.GetY_k(TraitsExtendingTraits.K$Y, $Heap, this), 
      TraitsExtendingTraits.K$Y, 
      $Heap));

function TraitsExtendingTraits.K.GetY_k#requires(Ty, Heap, ref) : bool;

// #requires axiom for TraitsExtendingTraits.K.GetY_k
axiom (forall TraitsExtendingTraits.K$Y: Ty, $Heap: Heap, this: ref :: 
  { TraitsExtendingTraits.K.GetY_k#requires(TraitsExtendingTraits.K$Y, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.TraitsExtendingTraits.K(TraitsExtendingTraits.K$Y))
       && $IsAlloc(this, Tclass.TraitsExtendingTraits.K(TraitsExtendingTraits.K$Y), $Heap)
     ==> TraitsExtendingTraits.K.GetY_k#requires(TraitsExtendingTraits.K$Y, $Heap, this)
       == true);

// definition axiom for TraitsExtendingTraits.K.GetY_k (revealed)
axiom {:id "id1082"} (forall TraitsExtendingTraits.K$Y: Ty, $Heap: Heap, this: ref :: 
  { TraitsExtendingTraits.K.GetY_k(TraitsExtendingTraits.K$Y, $Heap, this), $IsGoodHeap($Heap) } 
  TraitsExtendingTraits.K.GetY_k#canCall(TraitsExtendingTraits.K$Y, $Heap, this)
       || ($IsGoodHeap($Heap)
         && 
        this != null
         && 
        $Is(this, Tclass.TraitsExtendingTraits.K(TraitsExtendingTraits.K$Y))
         && $IsAlloc(this, Tclass.TraitsExtendingTraits.K(TraitsExtendingTraits.K$Y), $Heap))
     ==> TraitsExtendingTraits.K.GetY_k(TraitsExtendingTraits.K$Y, $Heap, this)
       == read($Heap, this, TraitsExtendingTraits.A.y0));

// override axiom for TraitsExtendingTraits.A.GetY_k in class TraitsExtendingTraits.K
axiom (forall TraitsExtendingTraits.K$Y: Ty, $Heap: Heap, this: ref :: 
  { TraitsExtendingTraits.A.GetY_k(TraitsExtendingTraits.K$Y, Tclass.TraitsExtendingTraits.Odd(), $Heap, this), $Is(this, Tclass.TraitsExtendingTraits.K(TraitsExtendingTraits.K$Y)), $IsGoodHeap($Heap) } 
    { TraitsExtendingTraits.A.GetY_k(TraitsExtendingTraits.K$Y, Tclass.TraitsExtendingTraits.Odd(), $Heap, this), TraitsExtendingTraits.K.GetY_k(TraitsExtendingTraits.K$Y, $Heap, this), $IsGoodHeap($Heap) } 
  TraitsExtendingTraits.K.GetY_k#canCall(TraitsExtendingTraits.K$Y, $Heap, this)
       || (this != null
         && $Is(this, Tclass.TraitsExtendingTraits.K(TraitsExtendingTraits.K$Y)))
     ==> TraitsExtendingTraits.A.GetY_k(TraitsExtendingTraits.K$Y, Tclass.TraitsExtendingTraits.Odd(), $Heap, this)
       == TraitsExtendingTraits.K.GetY_k(TraitsExtendingTraits.K$Y, $Heap, this));

// $Is axiom for non-null type TraitsExtendingTraits.K
axiom (forall TraitsExtendingTraits.K$Y: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.TraitsExtendingTraits.K(TraitsExtendingTraits.K$Y)) } 
    { $Is(c#0, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y)) } 
  $Is(c#0, Tclass.TraitsExtendingTraits.K(TraitsExtendingTraits.K$Y))
     <==> $Is(c#0, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y))
       && c#0 != null);

// $IsAlloc axiom for non-null type TraitsExtendingTraits.K
axiom (forall TraitsExtendingTraits.K$Y: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TraitsExtendingTraits.K(TraitsExtendingTraits.K$Y), $h) } 
    { $IsAlloc(c#0, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y), $h) } 
  $IsAlloc(c#0, Tclass.TraitsExtendingTraits.K(TraitsExtendingTraits.K$Y), $h)
     <==> $IsAlloc(c#0, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y), $h));

const unique class.TraitsExtendingTraits.M?: ClassName;

function Tclass.TraitsExtendingTraits.M?() : Ty
uses {
// Tclass.TraitsExtendingTraits.M? Tag
axiom Tag(Tclass.TraitsExtendingTraits.M?()) == Tagclass.TraitsExtendingTraits.M?
   && TagFamily(Tclass.TraitsExtendingTraits.M?()) == tytagFamily$M;
}

const unique Tagclass.TraitsExtendingTraits.M?: TyTag;

// Box/unbox axiom for Tclass.TraitsExtendingTraits.M?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.M?()) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.M?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TraitsExtendingTraits.M?()));

// $Is axiom for trait M
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TraitsExtendingTraits.M?()) } 
  $Is($o, Tclass.TraitsExtendingTraits.M?())
     <==> $o == null || implements$TraitsExtendingTraits.M(dtype($o)));

// $IsAlloc axiom for trait M
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TraitsExtendingTraits.M?(), $h) } 
  $IsAlloc($o, Tclass.TraitsExtendingTraits.M?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TraitsExtendingTraits.M(ty: Ty) : bool;

function Tclass.TraitsExtendingTraits.M() : Ty
uses {
// Tclass.TraitsExtendingTraits.M Tag
axiom Tag(Tclass.TraitsExtendingTraits.M()) == Tagclass.TraitsExtendingTraits.M
   && TagFamily(Tclass.TraitsExtendingTraits.M()) == tytagFamily$M;
}

const unique Tagclass.TraitsExtendingTraits.M: TyTag;

// Box/unbox axiom for Tclass.TraitsExtendingTraits.M
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.M()) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.M())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TraitsExtendingTraits.M()));

// $Is axiom for non-null type TraitsExtendingTraits.M
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TraitsExtendingTraits.M()) } 
    { $Is(c#0, Tclass.TraitsExtendingTraits.M?()) } 
  $Is(c#0, Tclass.TraitsExtendingTraits.M())
     <==> $Is(c#0, Tclass.TraitsExtendingTraits.M?()) && c#0 != null);

// $IsAlloc axiom for non-null type TraitsExtendingTraits.M
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TraitsExtendingTraits.M(), $h) } 
    { $IsAlloc(c#0, Tclass.TraitsExtendingTraits.M?(), $h) } 
  $IsAlloc(c#0, Tclass.TraitsExtendingTraits.M(), $h)
     <==> $IsAlloc(c#0, Tclass.TraitsExtendingTraits.M?(), $h));

const unique class.TraitsExtendingTraits.N?: ClassName;

function Tclass.TraitsExtendingTraits.N?() : Ty
uses {
// Tclass.TraitsExtendingTraits.N? Tag
axiom Tag(Tclass.TraitsExtendingTraits.N?()) == Tagclass.TraitsExtendingTraits.N?
   && TagFamily(Tclass.TraitsExtendingTraits.N?()) == tytagFamily$N;
}

const unique Tagclass.TraitsExtendingTraits.N?: TyTag;

// Box/unbox axiom for Tclass.TraitsExtendingTraits.N?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.N?()) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.N?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TraitsExtendingTraits.N?()));

// $Is axiom for trait N
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TraitsExtendingTraits.N?()) } 
  $Is($o, Tclass.TraitsExtendingTraits.N?())
     <==> $o == null || implements$TraitsExtendingTraits.N(dtype($o)));

// $IsAlloc axiom for trait N
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TraitsExtendingTraits.N?(), $h) } 
  $IsAlloc($o, Tclass.TraitsExtendingTraits.N?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TraitsExtendingTraits.N(ty: Ty) : bool;

function Tclass.TraitsExtendingTraits.N() : Ty
uses {
// Tclass.TraitsExtendingTraits.N Tag
axiom Tag(Tclass.TraitsExtendingTraits.N()) == Tagclass.TraitsExtendingTraits.N
   && TagFamily(Tclass.TraitsExtendingTraits.N()) == tytagFamily$N;
}

const unique Tagclass.TraitsExtendingTraits.N: TyTag;

// Box/unbox axiom for Tclass.TraitsExtendingTraits.N
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.N()) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.N())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TraitsExtendingTraits.N()));

// $Is axiom for non-null type TraitsExtendingTraits.N
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TraitsExtendingTraits.N()) } 
    { $Is(c#0, Tclass.TraitsExtendingTraits.N?()) } 
  $Is(c#0, Tclass.TraitsExtendingTraits.N())
     <==> $Is(c#0, Tclass.TraitsExtendingTraits.N?()) && c#0 != null);

// $IsAlloc axiom for non-null type TraitsExtendingTraits.N
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TraitsExtendingTraits.N(), $h) } 
    { $IsAlloc(c#0, Tclass.TraitsExtendingTraits.N?(), $h) } 
  $IsAlloc(c#0, Tclass.TraitsExtendingTraits.N(), $h)
     <==> $IsAlloc(c#0, Tclass.TraitsExtendingTraits.N?(), $h));

const unique class.TraitsExtendingTraits.G?: ClassName;

function Tclass.TraitsExtendingTraits.G?(Ty) : Ty
uses {
axiom (forall TraitsExtendingTraits.G$X: Ty :: 
  implements$TraitsExtendingTraits.K(Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), 
    TraitsExtendingTraits.G$X));
axiom (forall TraitsExtendingTraits.G$X: Ty :: 
  implements$TraitsExtendingTraits.K(Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), 
    TraitsExtendingTraits.G$X));
axiom (forall TraitsExtendingTraits.G$X: Ty :: 
  implements$TraitsExtendingTraits.M(Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X)));
axiom (forall TraitsExtendingTraits.G$X: Ty :: 
  implements$_System.object(Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X)));
axiom (forall TraitsExtendingTraits.G$X: Ty :: 
  implements$TraitsExtendingTraits.N(Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X)));
axiom (forall TraitsExtendingTraits.G$X: Ty :: 
  implements$TraitsExtendingTraits.C(Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X)));
}

const unique Tagclass.TraitsExtendingTraits.G?: TyTag;

// Tclass.TraitsExtendingTraits.G? Tag
axiom (forall TraitsExtendingTraits.G$X: Ty :: 
  { Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X) } 
  Tag(Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X))
       == Tagclass.TraitsExtendingTraits.G?
     && TagFamily(Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X))
       == tytagFamily$G);

function Tclass.TraitsExtendingTraits.G?_0(Ty) : Ty;

// Tclass.TraitsExtendingTraits.G? injectivity 0
axiom (forall TraitsExtendingTraits.G$X: Ty :: 
  { Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X) } 
  Tclass.TraitsExtendingTraits.G?_0(Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X))
     == TraitsExtendingTraits.G$X);

// Box/unbox axiom for Tclass.TraitsExtendingTraits.G?
axiom (forall TraitsExtendingTraits.G$X: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X)) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X)));

// $Is axiom for class G
axiom (forall TraitsExtendingTraits.G$X: Ty, $o: ref :: 
  { $Is($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X)) } 
  $Is($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X))
     <==> $o == null
       || dtype($o) == Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X));

// $IsAlloc axiom for class G
axiom (forall TraitsExtendingTraits.G$X: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $h) } 
  $IsAlloc($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.TraitsExtendingTraits.G(Ty) : Ty;

const unique Tagclass.TraitsExtendingTraits.G: TyTag;

// Tclass.TraitsExtendingTraits.G Tag
axiom (forall TraitsExtendingTraits.G$X: Ty :: 
  { Tclass.TraitsExtendingTraits.G(TraitsExtendingTraits.G$X) } 
  Tag(Tclass.TraitsExtendingTraits.G(TraitsExtendingTraits.G$X))
       == Tagclass.TraitsExtendingTraits.G
     && TagFamily(Tclass.TraitsExtendingTraits.G(TraitsExtendingTraits.G$X))
       == tytagFamily$G);

function Tclass.TraitsExtendingTraits.G_0(Ty) : Ty;

// Tclass.TraitsExtendingTraits.G injectivity 0
axiom (forall TraitsExtendingTraits.G$X: Ty :: 
  { Tclass.TraitsExtendingTraits.G(TraitsExtendingTraits.G$X) } 
  Tclass.TraitsExtendingTraits.G_0(Tclass.TraitsExtendingTraits.G(TraitsExtendingTraits.G$X))
     == TraitsExtendingTraits.G$X);

// Box/unbox axiom for Tclass.TraitsExtendingTraits.G
axiom (forall TraitsExtendingTraits.G$X: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.G(TraitsExtendingTraits.G$X)) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.G(TraitsExtendingTraits.G$X))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TraitsExtendingTraits.G(TraitsExtendingTraits.G$X)));

// $Is axiom for non-null type TraitsExtendingTraits.G
axiom (forall TraitsExtendingTraits.G$X: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.TraitsExtendingTraits.G(TraitsExtendingTraits.G$X)) } 
    { $Is(c#0, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X)) } 
  $Is(c#0, Tclass.TraitsExtendingTraits.G(TraitsExtendingTraits.G$X))
     <==> $Is(c#0, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X))
       && c#0 != null);

// $IsAlloc axiom for non-null type TraitsExtendingTraits.G
axiom (forall TraitsExtendingTraits.G$X: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TraitsExtendingTraits.G(TraitsExtendingTraits.G$X), $h) } 
    { $IsAlloc(c#0, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $h) } 
  $IsAlloc(c#0, Tclass.TraitsExtendingTraits.G(TraitsExtendingTraits.G$X), $h)
     <==> $IsAlloc(c#0, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $h));

const unique class.TypeDescriptorTests.__default: ClassName;

// function declaration for TypeDescriptorTests._default.Gee
function TypeDescriptorTests.__default.Gee(TypeDescriptorTests._default.Gee$Whiz: Ty) : int;

function TypeDescriptorTests.__default.Gee#canCall(TypeDescriptorTests._default.Gee$Whiz: Ty) : bool;

function TypeDescriptorTests.__default.Gee#requires(Ty) : bool;

// #requires axiom for TypeDescriptorTests.__default.Gee
axiom (forall TypeDescriptorTests._default.Gee$Whiz: Ty :: 
  { TypeDescriptorTests.__default.Gee#requires(TypeDescriptorTests._default.Gee$Whiz) } 
  TypeDescriptorTests.__default.Gee#requires(TypeDescriptorTests._default.Gee$Whiz)
     == true);

// definition axiom for TypeDescriptorTests.__default.Gee (revealed)
axiom {:id "id1083"} (forall TypeDescriptorTests._default.Gee$Whiz: Ty :: 
  { TypeDescriptorTests.__default.Gee(TypeDescriptorTests._default.Gee$Whiz) } 
  TypeDescriptorTests.__default.Gee(TypeDescriptorTests._default.Gee$Whiz)
     == LitInt(10));

// definition axiom for TypeDescriptorTests.__default.Gee for all literals (revealed)
axiom {:id "id1084"} (forall TypeDescriptorTests._default.Gee$Whiz: Ty :: 
  {:weight 3} { TypeDescriptorTests.__default.Gee(TypeDescriptorTests._default.Gee$Whiz) } 
  TypeDescriptorTests.__default.Gee(TypeDescriptorTests._default.Gee$Whiz)
     == LitInt(10));

procedure {:verboseName "TypeDescriptorTests.Test (well-formedness)"} CheckWellFormed$$TypeDescriptorTests.__default.Test();
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeDescriptorTests.Test (call)"} Call$$TypeDescriptorTests.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class.TypeDescriptorTests.UberTrait?: ClassName;

function Tclass.TypeDescriptorTests.UberTrait?(Ty, Ty, Ty) : Ty;

const unique Tagclass.TypeDescriptorTests.UberTrait?: TyTag;

// Tclass.TypeDescriptorTests.UberTrait? Tag
axiom (forall TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty :: 
  { Tclass.TypeDescriptorTests.UberTrait?(TypeDescriptorTests.UberTrait$X, 
      TypeDescriptorTests.UberTrait$Y, 
      TypeDescriptorTests.UberTrait$Z) } 
  Tag(Tclass.TypeDescriptorTests.UberTrait?(TypeDescriptorTests.UberTrait$X, 
          TypeDescriptorTests.UberTrait$Y, 
          TypeDescriptorTests.UberTrait$Z))
       == Tagclass.TypeDescriptorTests.UberTrait?
     && TagFamily(Tclass.TypeDescriptorTests.UberTrait?(TypeDescriptorTests.UberTrait$X, 
          TypeDescriptorTests.UberTrait$Y, 
          TypeDescriptorTests.UberTrait$Z))
       == tytagFamily$UberTrait);

function Tclass.TypeDescriptorTests.UberTrait?_0(Ty) : Ty;

// Tclass.TypeDescriptorTests.UberTrait? injectivity 0
axiom (forall TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty :: 
  { Tclass.TypeDescriptorTests.UberTrait?(TypeDescriptorTests.UberTrait$X, 
      TypeDescriptorTests.UberTrait$Y, 
      TypeDescriptorTests.UberTrait$Z) } 
  Tclass.TypeDescriptorTests.UberTrait?_0(Tclass.TypeDescriptorTests.UberTrait?(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z))
     == TypeDescriptorTests.UberTrait$X);

function Tclass.TypeDescriptorTests.UberTrait?_1(Ty) : Ty;

// Tclass.TypeDescriptorTests.UberTrait? injectivity 1
axiom (forall TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty :: 
  { Tclass.TypeDescriptorTests.UberTrait?(TypeDescriptorTests.UberTrait$X, 
      TypeDescriptorTests.UberTrait$Y, 
      TypeDescriptorTests.UberTrait$Z) } 
  Tclass.TypeDescriptorTests.UberTrait?_1(Tclass.TypeDescriptorTests.UberTrait?(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z))
     == TypeDescriptorTests.UberTrait$Y);

function Tclass.TypeDescriptorTests.UberTrait?_2(Ty) : Ty;

// Tclass.TypeDescriptorTests.UberTrait? injectivity 2
axiom (forall TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty :: 
  { Tclass.TypeDescriptorTests.UberTrait?(TypeDescriptorTests.UberTrait$X, 
      TypeDescriptorTests.UberTrait$Y, 
      TypeDescriptorTests.UberTrait$Z) } 
  Tclass.TypeDescriptorTests.UberTrait?_2(Tclass.TypeDescriptorTests.UberTrait?(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z))
     == TypeDescriptorTests.UberTrait$Z);

// Box/unbox axiom for Tclass.TypeDescriptorTests.UberTrait?
axiom (forall TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.TypeDescriptorTests.UberTrait?(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z)) } 
  $IsBox(bx, 
      Tclass.TypeDescriptorTests.UberTrait?(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.TypeDescriptorTests.UberTrait?(TypeDescriptorTests.UberTrait$X, 
          TypeDescriptorTests.UberTrait$Y, 
          TypeDescriptorTests.UberTrait$Z)));

// $Is axiom for trait UberTrait
axiom (forall TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty, 
    $o: ref :: 
  { $Is($o, 
      Tclass.TypeDescriptorTests.UberTrait?(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z)) } 
  $Is($o, 
      Tclass.TypeDescriptorTests.UberTrait?(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z))
     <==> $o == null
       || implements$TypeDescriptorTests.UberTrait(dtype($o), 
        TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z));

// $IsAlloc axiom for trait UberTrait
axiom (forall TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty, 
    $o: ref, 
    $h: Heap :: 
  { $IsAlloc($o, 
      Tclass.TypeDescriptorTests.UberTrait?(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z), 
      $h) } 
  $IsAlloc($o, 
      Tclass.TypeDescriptorTests.UberTrait?(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z), 
      $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TypeDescriptorTests.UberTrait(ty: Ty, 
    TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty)
   : bool;

// function declaration for TypeDescriptorTests.UberTrait.Id
function TypeDescriptorTests.UberTrait.Id(TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty, 
    this: ref, 
    x#0: Box)
   : Box;

function TypeDescriptorTests.UberTrait.Id#canCall(TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty, 
    this: ref, 
    x#0: Box)
   : bool;

function Tclass.TypeDescriptorTests.UberTrait(Ty, Ty, Ty) : Ty;

const unique Tagclass.TypeDescriptorTests.UberTrait: TyTag;

// Tclass.TypeDescriptorTests.UberTrait Tag
axiom (forall TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty :: 
  { Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
      TypeDescriptorTests.UberTrait$Y, 
      TypeDescriptorTests.UberTrait$Z) } 
  Tag(Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
          TypeDescriptorTests.UberTrait$Y, 
          TypeDescriptorTests.UberTrait$Z))
       == Tagclass.TypeDescriptorTests.UberTrait
     && TagFamily(Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
          TypeDescriptorTests.UberTrait$Y, 
          TypeDescriptorTests.UberTrait$Z))
       == tytagFamily$UberTrait);

function Tclass.TypeDescriptorTests.UberTrait_0(Ty) : Ty;

// Tclass.TypeDescriptorTests.UberTrait injectivity 0
axiom (forall TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty :: 
  { Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
      TypeDescriptorTests.UberTrait$Y, 
      TypeDescriptorTests.UberTrait$Z) } 
  Tclass.TypeDescriptorTests.UberTrait_0(Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z))
     == TypeDescriptorTests.UberTrait$X);

function Tclass.TypeDescriptorTests.UberTrait_1(Ty) : Ty;

// Tclass.TypeDescriptorTests.UberTrait injectivity 1
axiom (forall TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty :: 
  { Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
      TypeDescriptorTests.UberTrait$Y, 
      TypeDescriptorTests.UberTrait$Z) } 
  Tclass.TypeDescriptorTests.UberTrait_1(Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z))
     == TypeDescriptorTests.UberTrait$Y);

function Tclass.TypeDescriptorTests.UberTrait_2(Ty) : Ty;

// Tclass.TypeDescriptorTests.UberTrait injectivity 2
axiom (forall TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty :: 
  { Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
      TypeDescriptorTests.UberTrait$Y, 
      TypeDescriptorTests.UberTrait$Z) } 
  Tclass.TypeDescriptorTests.UberTrait_2(Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z))
     == TypeDescriptorTests.UberTrait$Z);

// Box/unbox axiom for Tclass.TypeDescriptorTests.UberTrait
axiom (forall TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z)) } 
  $IsBox(bx, 
      Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
          TypeDescriptorTests.UberTrait$Y, 
          TypeDescriptorTests.UberTrait$Z)));

// consequence axiom for TypeDescriptorTests.UberTrait.Id
axiom (forall TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty, 
    this: ref, 
    x#0: Box :: 
  { TypeDescriptorTests.UberTrait.Id(TypeDescriptorTests.UberTrait$X, 
      TypeDescriptorTests.UberTrait$Y, 
      TypeDescriptorTests.UberTrait$Z, 
      this, 
      x#0) } 
  TypeDescriptorTests.UberTrait.Id#canCall(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z, 
        this, 
        x#0)
       || (0 < $FunctionContextHeight
         && 
        this != null
         && $Is(this, 
          Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
            TypeDescriptorTests.UberTrait$Y, 
            TypeDescriptorTests.UberTrait$Z))
         && $IsBox(x#0, TypeDescriptorTests.UberTrait$X))
     ==> $IsBox(TypeDescriptorTests.UberTrait.Id(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z, 
        this, 
        x#0), 
      TypeDescriptorTests.UberTrait$X));

// alloc consequence axiom for TypeDescriptorTests.UberTrait.Id
axiom (forall $Heap: Heap, 
    TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty, 
    this: ref, 
    x#0: Box :: 
  { $IsAllocBox(TypeDescriptorTests.UberTrait.Id(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z, 
        this, 
        x#0), 
      TypeDescriptorTests.UberTrait$X, 
      $Heap) } 
  (TypeDescriptorTests.UberTrait.Id#canCall(TypeDescriptorTests.UberTrait$X, 
          TypeDescriptorTests.UberTrait$Y, 
          TypeDescriptorTests.UberTrait$Z, 
          this, 
          x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $IsAlloc(this, 
            Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
              TypeDescriptorTests.UberTrait$Y, 
              TypeDescriptorTests.UberTrait$Z), 
            $Heap)
           && 
          $IsBox(x#0, TypeDescriptorTests.UberTrait$X)
           && $IsAllocBox(x#0, TypeDescriptorTests.UberTrait$X, $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(TypeDescriptorTests.UberTrait.Id(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z, 
        this, 
        x#0), 
      TypeDescriptorTests.UberTrait$X, 
      $Heap));

function TypeDescriptorTests.UberTrait.Id#requires(Ty, Ty, Ty, ref, Box) : bool;

// #requires axiom for TypeDescriptorTests.UberTrait.Id
axiom (forall TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty, 
    this: ref, 
    x#0: Box :: 
  { TypeDescriptorTests.UberTrait.Id#requires(TypeDescriptorTests.UberTrait$X, 
      TypeDescriptorTests.UberTrait$Y, 
      TypeDescriptorTests.UberTrait$Z, 
      this, 
      x#0) } 
  this != null
       && $Is(this, 
        Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
          TypeDescriptorTests.UberTrait$Y, 
          TypeDescriptorTests.UberTrait$Z))
       && $IsBox(x#0, TypeDescriptorTests.UberTrait$X)
     ==> TypeDescriptorTests.UberTrait.Id#requires(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z, 
        this, 
        x#0)
       == true);

// definition axiom for TypeDescriptorTests.UberTrait.Id (revealed)
axiom {:id "id1085"} (forall TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty, 
    this: ref, 
    x#0: Box :: 
  { TypeDescriptorTests.UberTrait.Id(TypeDescriptorTests.UberTrait$X, 
      TypeDescriptorTests.UberTrait$Y, 
      TypeDescriptorTests.UberTrait$Z, 
      this, 
      x#0) } 
  TypeDescriptorTests.UberTrait.Id#canCall(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z, 
        this, 
        x#0)
       || (
        this != null
         && $Is(this, 
          Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
            TypeDescriptorTests.UberTrait$Y, 
            TypeDescriptorTests.UberTrait$Z))
         && $IsBox(x#0, TypeDescriptorTests.UberTrait$X))
     ==> TypeDescriptorTests.UberTrait.Id(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z, 
        this, 
        x#0)
       == x#0);

// definition axiom for TypeDescriptorTests.UberTrait.Id for all literals (revealed)
axiom {:id "id1086"} (forall TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty, 
    this: ref, 
    x#0: Box :: 
  {:weight 3} { TypeDescriptorTests.UberTrait.Id(TypeDescriptorTests.UberTrait$X, 
      TypeDescriptorTests.UberTrait$Y, 
      TypeDescriptorTests.UberTrait$Z, 
      Lit(this), 
      Lit(x#0)) } 
  TypeDescriptorTests.UberTrait.Id#canCall(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z, 
        Lit(this), 
        Lit(x#0))
       || (
        this != null
         && $Is(this, 
          Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
            TypeDescriptorTests.UberTrait$Y, 
            TypeDescriptorTests.UberTrait$Z))
         && $IsBox(x#0, TypeDescriptorTests.UberTrait$X))
     ==> TypeDescriptorTests.UberTrait.Id(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z, 
        Lit(this), 
        Lit(x#0))
       == Lit(x#0));

// $Is axiom for non-null type TypeDescriptorTests.UberTrait
axiom (forall TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty, 
    c#0: ref :: 
  { $Is(c#0, 
      Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z)) } 
    { $Is(c#0, 
      Tclass.TypeDescriptorTests.UberTrait?(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z)) } 
  $Is(c#0, 
      Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z))
     <==> $Is(c#0, 
        Tclass.TypeDescriptorTests.UberTrait?(TypeDescriptorTests.UberTrait$X, 
          TypeDescriptorTests.UberTrait$Y, 
          TypeDescriptorTests.UberTrait$Z))
       && c#0 != null);

// $IsAlloc axiom for non-null type TypeDescriptorTests.UberTrait
axiom (forall TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty, 
    c#0: ref, 
    $h: Heap :: 
  { $IsAlloc(c#0, 
      Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z), 
      $h) } 
    { $IsAlloc(c#0, 
      Tclass.TypeDescriptorTests.UberTrait?(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z), 
      $h) } 
  $IsAlloc(c#0, 
      Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z), 
      $h)
     <==> $IsAlloc(c#0, 
      Tclass.TypeDescriptorTests.UberTrait?(TypeDescriptorTests.UberTrait$X, 
        TypeDescriptorTests.UberTrait$Y, 
        TypeDescriptorTests.UberTrait$Z), 
      $h));

const unique class.TypeDescriptorTests.Trait?: ClassName;

function Tclass.TypeDescriptorTests.Trait?(Ty, Ty) : Ty;

const unique Tagclass.TypeDescriptorTests.Trait?: TyTag;

// Tclass.TypeDescriptorTests.Trait? Tag
axiom (forall TypeDescriptorTests.Trait$T: Ty, TypeDescriptorTests.Trait$R: Ty :: 
  { Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R) } 
  Tag(Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R))
       == Tagclass.TypeDescriptorTests.Trait?
     && TagFamily(Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R))
       == tytagFamily$Trait);

function Tclass.TypeDescriptorTests.Trait?_0(Ty) : Ty;

// Tclass.TypeDescriptorTests.Trait? injectivity 0
axiom (forall TypeDescriptorTests.Trait$T: Ty, TypeDescriptorTests.Trait$R: Ty :: 
  { Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R) } 
  Tclass.TypeDescriptorTests.Trait?_0(Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R))
     == TypeDescriptorTests.Trait$T);

function Tclass.TypeDescriptorTests.Trait?_1(Ty) : Ty;

// Tclass.TypeDescriptorTests.Trait? injectivity 1
axiom (forall TypeDescriptorTests.Trait$T: Ty, TypeDescriptorTests.Trait$R: Ty :: 
  { Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R) } 
  Tclass.TypeDescriptorTests.Trait?_1(Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R))
     == TypeDescriptorTests.Trait$R);

// Box/unbox axiom for Tclass.TypeDescriptorTests.Trait?
axiom (forall TypeDescriptorTests.Trait$T: Ty, TypeDescriptorTests.Trait$R: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R)) } 
  $IsBox(bx, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R)));

// $Is axiom for trait Trait
axiom (forall TypeDescriptorTests.Trait$T: Ty, TypeDescriptorTests.Trait$R: Ty, $o: ref :: 
  { $Is($o, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R)) } 
  $Is($o, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R))
     <==> $o == null
       || implements$TypeDescriptorTests.Trait(dtype($o), TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R));

// $IsAlloc axiom for trait Trait
axiom (forall TypeDescriptorTests.Trait$T: Ty, 
    TypeDescriptorTests.Trait$R: Ty, 
    $o: ref, 
    $h: Heap :: 
  { $IsAlloc($o, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R), 
      $h) } 
  $IsAlloc($o, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R), 
      $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TypeDescriptorTests.Trait(ty: Ty, TypeDescriptorTests.Trait$T: Ty, TypeDescriptorTests.Trait$R: Ty) : bool;

function Tclass.TypeDescriptorTests.Trait(Ty, Ty) : Ty;

const unique Tagclass.TypeDescriptorTests.Trait: TyTag;

// Tclass.TypeDescriptorTests.Trait Tag
axiom (forall TypeDescriptorTests.Trait$T: Ty, TypeDescriptorTests.Trait$R: Ty :: 
  { Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R) } 
  Tag(Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R))
       == Tagclass.TypeDescriptorTests.Trait
     && TagFamily(Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R))
       == tytagFamily$Trait);

function Tclass.TypeDescriptorTests.Trait_0(Ty) : Ty;

// Tclass.TypeDescriptorTests.Trait injectivity 0
axiom (forall TypeDescriptorTests.Trait$T: Ty, TypeDescriptorTests.Trait$R: Ty :: 
  { Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R) } 
  Tclass.TypeDescriptorTests.Trait_0(Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R))
     == TypeDescriptorTests.Trait$T);

function Tclass.TypeDescriptorTests.Trait_1(Ty) : Ty;

// Tclass.TypeDescriptorTests.Trait injectivity 1
axiom (forall TypeDescriptorTests.Trait$T: Ty, TypeDescriptorTests.Trait$R: Ty :: 
  { Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R) } 
  Tclass.TypeDescriptorTests.Trait_1(Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R))
     == TypeDescriptorTests.Trait$R);

// Box/unbox axiom for Tclass.TypeDescriptorTests.Trait
axiom (forall TypeDescriptorTests.Trait$T: Ty, TypeDescriptorTests.Trait$R: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R)) } 
  $IsBox(bx, 
      Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R)));

// $Is axiom for non-null type TypeDescriptorTests.Trait
axiom (forall TypeDescriptorTests.Trait$T: Ty, TypeDescriptorTests.Trait$R: Ty, c#0: ref :: 
  { $Is(c#0, 
      Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R)) } 
    { $Is(c#0, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R)) } 
  $Is(c#0, 
      Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R))
     <==> $Is(c#0, 
        Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R))
       && c#0 != null);

// $IsAlloc axiom for non-null type TypeDescriptorTests.Trait
axiom (forall TypeDescriptorTests.Trait$T: Ty, 
    TypeDescriptorTests.Trait$R: Ty, 
    c#0: ref, 
    $h: Heap :: 
  { $IsAlloc(c#0, 
      Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R), 
      $h) } 
    { $IsAlloc(c#0, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R), 
      $h) } 
  $IsAlloc(c#0, 
      Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R), 
      $h)
     <==> $IsAlloc(c#0, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R), 
      $h));

const unique class.TypeDescriptorTests.Composition?: ClassName;

function Tclass.TypeDescriptorTests.Composition?(Ty, Ty, Ty) : Ty
uses {
axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty :: 
  implements$TypeDescriptorTests.Trait(Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
      TypeDescriptorTests.Composition$Tx, 
      TypeDescriptorTests.Composition$RRx), 
    TypeDescriptorTests.Composition$Sx, 
    TypeDescriptorTests.Composition$RRx));
axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty :: 
  implements$TypeDescriptorTests.Trait(Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
      TypeDescriptorTests.Composition$Tx, 
      TypeDescriptorTests.Composition$RRx), 
    TypeDescriptorTests.Composition$Sx, 
    TypeDescriptorTests.Composition$RRx));
}

const unique Tagclass.TypeDescriptorTests.Composition?: TyTag;

// Tclass.TypeDescriptorTests.Composition? Tag
axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty :: 
  { Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
      TypeDescriptorTests.Composition$Tx, 
      TypeDescriptorTests.Composition$RRx) } 
  Tag(Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
          TypeDescriptorTests.Composition$Tx, 
          TypeDescriptorTests.Composition$RRx))
       == Tagclass.TypeDescriptorTests.Composition?
     && TagFamily(Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
          TypeDescriptorTests.Composition$Tx, 
          TypeDescriptorTests.Composition$RRx))
       == tytagFamily$Composition);

function Tclass.TypeDescriptorTests.Composition?_0(Ty) : Ty;

// Tclass.TypeDescriptorTests.Composition? injectivity 0
axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty :: 
  { Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
      TypeDescriptorTests.Composition$Tx, 
      TypeDescriptorTests.Composition$RRx) } 
  Tclass.TypeDescriptorTests.Composition?_0(Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx))
     == TypeDescriptorTests.Composition$Sx);

function Tclass.TypeDescriptorTests.Composition?_1(Ty) : Ty;

// Tclass.TypeDescriptorTests.Composition? injectivity 1
axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty :: 
  { Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
      TypeDescriptorTests.Composition$Tx, 
      TypeDescriptorTests.Composition$RRx) } 
  Tclass.TypeDescriptorTests.Composition?_1(Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx))
     == TypeDescriptorTests.Composition$Tx);

function Tclass.TypeDescriptorTests.Composition?_2(Ty) : Ty;

// Tclass.TypeDescriptorTests.Composition? injectivity 2
axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty :: 
  { Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
      TypeDescriptorTests.Composition$Tx, 
      TypeDescriptorTests.Composition$RRx) } 
  Tclass.TypeDescriptorTests.Composition?_2(Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx))
     == TypeDescriptorTests.Composition$RRx);

// Box/unbox axiom for Tclass.TypeDescriptorTests.Composition?
axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx)) } 
  $IsBox(bx, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
          TypeDescriptorTests.Composition$Tx, 
          TypeDescriptorTests.Composition$RRx)));

// $Is axiom for class Composition
axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty, 
    $o: ref :: 
  { $Is($o, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx)) } 
  $Is($o, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx))
     <==> $o == null
       || dtype($o)
         == Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
          TypeDescriptorTests.Composition$Tx, 
          TypeDescriptorTests.Composition$RRx));

// $IsAlloc axiom for class Composition
axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty, 
    $o: ref, 
    $h: Heap :: 
  { $IsAlloc($o, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx), 
      $h) } 
  $IsAlloc($o, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx), 
      $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.TypeDescriptorTests.Composition(Ty, Ty, Ty) : Ty;

const unique Tagclass.TypeDescriptorTests.Composition: TyTag;

// Tclass.TypeDescriptorTests.Composition Tag
axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty :: 
  { Tclass.TypeDescriptorTests.Composition(TypeDescriptorTests.Composition$Sx, 
      TypeDescriptorTests.Composition$Tx, 
      TypeDescriptorTests.Composition$RRx) } 
  Tag(Tclass.TypeDescriptorTests.Composition(TypeDescriptorTests.Composition$Sx, 
          TypeDescriptorTests.Composition$Tx, 
          TypeDescriptorTests.Composition$RRx))
       == Tagclass.TypeDescriptorTests.Composition
     && TagFamily(Tclass.TypeDescriptorTests.Composition(TypeDescriptorTests.Composition$Sx, 
          TypeDescriptorTests.Composition$Tx, 
          TypeDescriptorTests.Composition$RRx))
       == tytagFamily$Composition);

function Tclass.TypeDescriptorTests.Composition_0(Ty) : Ty;

// Tclass.TypeDescriptorTests.Composition injectivity 0
axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty :: 
  { Tclass.TypeDescriptorTests.Composition(TypeDescriptorTests.Composition$Sx, 
      TypeDescriptorTests.Composition$Tx, 
      TypeDescriptorTests.Composition$RRx) } 
  Tclass.TypeDescriptorTests.Composition_0(Tclass.TypeDescriptorTests.Composition(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx))
     == TypeDescriptorTests.Composition$Sx);

function Tclass.TypeDescriptorTests.Composition_1(Ty) : Ty;

// Tclass.TypeDescriptorTests.Composition injectivity 1
axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty :: 
  { Tclass.TypeDescriptorTests.Composition(TypeDescriptorTests.Composition$Sx, 
      TypeDescriptorTests.Composition$Tx, 
      TypeDescriptorTests.Composition$RRx) } 
  Tclass.TypeDescriptorTests.Composition_1(Tclass.TypeDescriptorTests.Composition(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx))
     == TypeDescriptorTests.Composition$Tx);

function Tclass.TypeDescriptorTests.Composition_2(Ty) : Ty;

// Tclass.TypeDescriptorTests.Composition injectivity 2
axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty :: 
  { Tclass.TypeDescriptorTests.Composition(TypeDescriptorTests.Composition$Sx, 
      TypeDescriptorTests.Composition$Tx, 
      TypeDescriptorTests.Composition$RRx) } 
  Tclass.TypeDescriptorTests.Composition_2(Tclass.TypeDescriptorTests.Composition(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx))
     == TypeDescriptorTests.Composition$RRx);

// Box/unbox axiom for Tclass.TypeDescriptorTests.Composition
axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.TypeDescriptorTests.Composition(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx)) } 
  $IsBox(bx, 
      Tclass.TypeDescriptorTests.Composition(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.TypeDescriptorTests.Composition(TypeDescriptorTests.Composition$Sx, 
          TypeDescriptorTests.Composition$Tx, 
          TypeDescriptorTests.Composition$RRx)));

// $Is axiom for non-null type TypeDescriptorTests.Composition
axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty, 
    c#0: ref :: 
  { $Is(c#0, 
      Tclass.TypeDescriptorTests.Composition(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx)) } 
    { $Is(c#0, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx)) } 
  $Is(c#0, 
      Tclass.TypeDescriptorTests.Composition(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx))
     <==> $Is(c#0, 
        Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
          TypeDescriptorTests.Composition$Tx, 
          TypeDescriptorTests.Composition$RRx))
       && c#0 != null);

// $IsAlloc axiom for non-null type TypeDescriptorTests.Composition
axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty, 
    c#0: ref, 
    $h: Heap :: 
  { $IsAlloc(c#0, 
      Tclass.TypeDescriptorTests.Composition(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx), 
      $h) } 
    { $IsAlloc(c#0, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx), 
      $h) } 
  $IsAlloc(c#0, 
      Tclass.TypeDescriptorTests.Composition(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx), 
      $h)
     <==> $IsAlloc(c#0, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx), 
      $h));

const unique class.TypeDescriptorTests.XT?: ClassName;

function Tclass.TypeDescriptorTests.XT?(Ty, Ty) : Ty;

const unique Tagclass.TypeDescriptorTests.XT?: TyTag;

// Tclass.TypeDescriptorTests.XT? Tag
axiom (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty :: 
  { Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W) } 
  Tag(Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
       == Tagclass.TypeDescriptorTests.XT?
     && TagFamily(Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
       == tytagFamily$XT);

function Tclass.TypeDescriptorTests.XT?_0(Ty) : Ty;

// Tclass.TypeDescriptorTests.XT? injectivity 0
axiom (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty :: 
  { Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W) } 
  Tclass.TypeDescriptorTests.XT?_0(Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
     == TypeDescriptorTests.XT$U);

function Tclass.TypeDescriptorTests.XT?_1(Ty) : Ty;

// Tclass.TypeDescriptorTests.XT? injectivity 1
axiom (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty :: 
  { Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W) } 
  Tclass.TypeDescriptorTests.XT?_1(Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
     == TypeDescriptorTests.XT$W);

// Box/unbox axiom for Tclass.TypeDescriptorTests.XT?
axiom (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W)) } 
  $IsBox(bx, 
      Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W)));

// $Is axiom for trait XT
axiom (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, $o: ref :: 
  { $Is($o, 
      Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W)) } 
  $Is($o, 
      Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
     <==> $o == null
       || implements$TypeDescriptorTests.XT(dtype($o), TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W));

// $IsAlloc axiom for trait XT
axiom (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, 
      Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
      $h) } 
  $IsAlloc($o, 
      Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
      $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TypeDescriptorTests.XT(ty: Ty, TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty) : bool;

function TypeDescriptorTests.XT.c(TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, this: ref) : Box;

// XT.c: Type axiom
axiom (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, $o: ref :: 
  { TypeDescriptorTests.XT.c(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, $o) } 
  $o != null
       && $Is($o, 
        Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
     ==> $IsBox(TypeDescriptorTests.XT.c(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, $o), 
      TypeDescriptorTests.XT$U));

// XT.c: Allocation axiom
axiom (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, $h: Heap, $o: ref :: 
  { TypeDescriptorTests.XT.c(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, $o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, 
        Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(TypeDescriptorTests.XT.c(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, $o), 
      TypeDescriptorTests.XT$U, 
      $h));

const TypeDescriptorTests.XT.u: Field
uses {
axiom FDim(TypeDescriptorTests.XT.u) == 0
   && FieldOfDecl(class.TypeDescriptorTests.XT?, field$u) == TypeDescriptorTests.XT.u
   && !$IsGhostField(TypeDescriptorTests.XT.u);
}

// XT.u: Type axiom
axiom (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, TypeDescriptorTests.XT.u), Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, 
        Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
     ==> $IsBox(read($h, $o, TypeDescriptorTests.XT.u), TypeDescriptorTests.XT$U));

// XT.u: Allocation axiom
axiom (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, TypeDescriptorTests.XT.u), Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, 
        Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, TypeDescriptorTests.XT.u), TypeDescriptorTests.XT$U, $h));

// function declaration for TypeDescriptorTests.XT.F
function TypeDescriptorTests.XT.F(TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, this: ref, u#0: Box)
   : Box;

function TypeDescriptorTests.XT.F#canCall(TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, this: ref, u#0: Box)
   : bool;

function Tclass.TypeDescriptorTests.XT(Ty, Ty) : Ty;

const unique Tagclass.TypeDescriptorTests.XT: TyTag;

// Tclass.TypeDescriptorTests.XT Tag
axiom (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty :: 
  { Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W) } 
  Tag(Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
       == Tagclass.TypeDescriptorTests.XT
     && TagFamily(Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
       == tytagFamily$XT);

function Tclass.TypeDescriptorTests.XT_0(Ty) : Ty;

// Tclass.TypeDescriptorTests.XT injectivity 0
axiom (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty :: 
  { Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W) } 
  Tclass.TypeDescriptorTests.XT_0(Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
     == TypeDescriptorTests.XT$U);

function Tclass.TypeDescriptorTests.XT_1(Ty) : Ty;

// Tclass.TypeDescriptorTests.XT injectivity 1
axiom (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty :: 
  { Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W) } 
  Tclass.TypeDescriptorTests.XT_1(Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
     == TypeDescriptorTests.XT$W);

// Box/unbox axiom for Tclass.TypeDescriptorTests.XT
axiom (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W)) } 
  $IsBox(bx, 
      Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W)));

// consequence axiom for TypeDescriptorTests.XT.F
axiom (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, this: ref, u#0: Box :: 
  { TypeDescriptorTests.XT.F(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0) } 
  TypeDescriptorTests.XT.F#canCall(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
       || (0 < $FunctionContextHeight
         && 
        this != null
         && $Is(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
         && $IsBox(u#0, TypeDescriptorTests.XT$U))
     ==> $IsBox(TypeDescriptorTests.XT.F(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0), 
      TypeDescriptorTests.XT$U));

// alloc consequence axiom for TypeDescriptorTests.XT.F
axiom (forall $Heap: Heap, 
    TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref, 
    u#0: Box :: 
  { $IsAllocBox(TypeDescriptorTests.XT.F(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0), 
      TypeDescriptorTests.XT$U, 
      $Heap) } 
  (TypeDescriptorTests.XT.F#canCall(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $IsAlloc(this, 
            Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
            $Heap)
           && 
          $IsBox(u#0, TypeDescriptorTests.XT$U)
           && $IsAllocBox(u#0, TypeDescriptorTests.XT$U, $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(TypeDescriptorTests.XT.F(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0), 
      TypeDescriptorTests.XT$U, 
      $Heap));

function TypeDescriptorTests.XT.F#requires(Ty, Ty, ref, Box) : bool;

// #requires axiom for TypeDescriptorTests.XT.F
axiom (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, this: ref, u#0: Box :: 
  { TypeDescriptorTests.XT.F#requires(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0) } 
  this != null
       && $Is(this, 
        Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
       && $IsBox(u#0, TypeDescriptorTests.XT$U)
     ==> TypeDescriptorTests.XT.F#requires(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
       == true);

// definition axiom for TypeDescriptorTests.XT.F (revealed)
axiom {:id "id1087"} (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, this: ref, u#0: Box :: 
  { TypeDescriptorTests.XT.F(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0) } 
  TypeDescriptorTests.XT.F#canCall(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
       || (
        this != null
         && $Is(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
         && $IsBox(u#0, TypeDescriptorTests.XT$U))
     ==> TypeDescriptorTests.XT.F(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
       == u#0);

// definition axiom for TypeDescriptorTests.XT.F for all literals (revealed)
axiom {:id "id1088"} (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, this: ref, u#0: Box :: 
  {:weight 3} { TypeDescriptorTests.XT.F(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, Lit(this), Lit(u#0)) } 
  TypeDescriptorTests.XT.F#canCall(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, Lit(this), Lit(u#0))
       || (
        this != null
         && $Is(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
         && $IsBox(u#0, TypeDescriptorTests.XT$U))
     ==> TypeDescriptorTests.XT.F(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, Lit(this), Lit(u#0))
       == Lit(u#0));

// function declaration for TypeDescriptorTests.XT.G
function TypeDescriptorTests.XT.G(TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, this: ref, u#0: Box)
   : Box;

function TypeDescriptorTests.XT.G#canCall(TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, this: ref, u#0: Box)
   : bool;

// consequence axiom for TypeDescriptorTests.XT.G
axiom (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, this: ref, u#0: Box :: 
  { TypeDescriptorTests.XT.G(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0) } 
  TypeDescriptorTests.XT.G#canCall(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
       || (0 < $FunctionContextHeight
         && 
        this != null
         && $Is(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
         && $IsBox(u#0, TypeDescriptorTests.XT$U))
     ==> $IsBox(TypeDescriptorTests.XT.G(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0), 
      TypeDescriptorTests.XT$U));

// alloc consequence axiom for TypeDescriptorTests.XT.G
axiom (forall $Heap: Heap, 
    TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref, 
    u#0: Box :: 
  { $IsAllocBox(TypeDescriptorTests.XT.G(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0), 
      TypeDescriptorTests.XT$U, 
      $Heap) } 
  (TypeDescriptorTests.XT.G#canCall(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $IsAlloc(this, 
            Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
            $Heap)
           && 
          $IsBox(u#0, TypeDescriptorTests.XT$U)
           && $IsAllocBox(u#0, TypeDescriptorTests.XT$U, $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(TypeDescriptorTests.XT.G(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0), 
      TypeDescriptorTests.XT$U, 
      $Heap));

function TypeDescriptorTests.XT.G#requires(Ty, Ty, ref, Box) : bool;

// #requires axiom for TypeDescriptorTests.XT.G
axiom (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, this: ref, u#0: Box :: 
  { TypeDescriptorTests.XT.G#requires(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0) } 
  this != null
       && $Is(this, 
        Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
       && $IsBox(u#0, TypeDescriptorTests.XT$U)
     ==> TypeDescriptorTests.XT.G#requires(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
       == true);

// function declaration for TypeDescriptorTests.XT.F'
function TypeDescriptorTests.XT.F_k(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref, 
    u#0: HandleType)
   : HandleType;

function TypeDescriptorTests.XT.F_k#canCall(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref, 
    u#0: HandleType)
   : bool;

// consequence axiom for TypeDescriptorTests.XT.F_k
axiom (forall TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref, 
    u#0: HandleType :: 
  { TypeDescriptorTests.XT.F_k(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0) } 
  TypeDescriptorTests.XT.F_k#canCall(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
       || (0 < $FunctionContextHeight
         && 
        this != null
         && $Is(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
         && $Is(u#0, 
          Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W)))
     ==> $Is(TypeDescriptorTests.XT.F_k(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0), 
      Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W)));

// alloc consequence axiom for TypeDescriptorTests.XT.F_k
axiom (forall $Heap: Heap, 
    TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref, 
    u#0: HandleType :: 
  { $IsAlloc(TypeDescriptorTests.XT.F_k(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0), 
      Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W), 
      $Heap) } 
  (TypeDescriptorTests.XT.F_k#canCall(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $IsAlloc(this, 
            Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
            $Heap)
           && 
          $Is(u#0, 
            Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W))
           && $IsAlloc(u#0, 
            Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W), 
            $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(TypeDescriptorTests.XT.F_k(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0), 
      Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W), 
      $Heap));

function TypeDescriptorTests.XT.F_k#requires(Ty, Ty, ref, HandleType) : bool;

// #requires axiom for TypeDescriptorTests.XT.F_k
axiom (forall TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref, 
    u#0: HandleType :: 
  { TypeDescriptorTests.XT.F_k#requires(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0) } 
  this != null
       && $Is(this, 
        Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
       && $Is(u#0, 
        Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W))
     ==> TypeDescriptorTests.XT.F_k#requires(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
       == true);

// definition axiom for TypeDescriptorTests.XT.F_k (revealed)
axiom {:id "id1089"} (forall TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref, 
    u#0: HandleType :: 
  { TypeDescriptorTests.XT.F_k(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0) } 
  TypeDescriptorTests.XT.F_k#canCall(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
       || (
        this != null
         && $Is(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
         && $Is(u#0, 
          Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W)))
     ==> TypeDescriptorTests.XT.F_k(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
       == u#0);

// definition axiom for TypeDescriptorTests.XT.F_k for all literals (revealed)
axiom {:id "id1090"} (forall TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref, 
    u#0: HandleType :: 
  {:weight 3} { TypeDescriptorTests.XT.F_k(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, Lit(this), Lit(u#0)) } 
  TypeDescriptorTests.XT.F_k#canCall(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, Lit(this), Lit(u#0))
       || (
        this != null
         && $Is(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
         && $Is(u#0, 
          Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W)))
     ==> TypeDescriptorTests.XT.F_k(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, Lit(this), Lit(u#0))
       == Lit(u#0));

// function declaration for TypeDescriptorTests.XT.G'
function TypeDescriptorTests.XT.G_k(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref, 
    u#0: HandleType)
   : HandleType;

function TypeDescriptorTests.XT.G_k#canCall(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref, 
    u#0: HandleType)
   : bool;

// consequence axiom for TypeDescriptorTests.XT.G_k
axiom (forall TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref, 
    u#0: HandleType :: 
  { TypeDescriptorTests.XT.G_k(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0) } 
  TypeDescriptorTests.XT.G_k#canCall(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
       || (0 < $FunctionContextHeight
         && 
        this != null
         && $Is(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
         && $Is(u#0, 
          Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W)))
     ==> $Is(TypeDescriptorTests.XT.G_k(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0), 
      Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W)));

// alloc consequence axiom for TypeDescriptorTests.XT.G_k
axiom (forall $Heap: Heap, 
    TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref, 
    u#0: HandleType :: 
  { $IsAlloc(TypeDescriptorTests.XT.G_k(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0), 
      Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W), 
      $Heap) } 
  (TypeDescriptorTests.XT.G_k#canCall(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $IsAlloc(this, 
            Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
            $Heap)
           && 
          $Is(u#0, 
            Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W))
           && $IsAlloc(u#0, 
            Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W), 
            $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(TypeDescriptorTests.XT.G_k(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0), 
      Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W), 
      $Heap));

function TypeDescriptorTests.XT.G_k#requires(Ty, Ty, ref, HandleType) : bool;

// #requires axiom for TypeDescriptorTests.XT.G_k
axiom (forall TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref, 
    u#0: HandleType :: 
  { TypeDescriptorTests.XT.G_k#requires(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0) } 
  this != null
       && $Is(this, 
        Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
       && $Is(u#0, 
        Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W))
     ==> TypeDescriptorTests.XT.G_k#requires(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
       == true);

// $Is axiom for non-null type TypeDescriptorTests.XT
axiom (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, c#0: ref :: 
  { $Is(c#0, 
      Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W)) } 
    { $Is(c#0, 
      Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W)) } 
  $Is(c#0, 
      Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
     <==> $Is(c#0, 
        Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
       && c#0 != null);

// $IsAlloc axiom for non-null type TypeDescriptorTests.XT
axiom (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, 
      Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
      $h) } 
    { $IsAlloc(c#0, 
      Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
      $h) } 
  $IsAlloc(c#0, 
      Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
      $h)
     <==> $IsAlloc(c#0, 
      Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
      $h));

const unique class.TypeDescriptorTests.YT?: ClassName;

function Tclass.TypeDescriptorTests.YT?() : Ty
uses {
// Tclass.TypeDescriptorTests.YT? Tag
axiom Tag(Tclass.TypeDescriptorTests.YT?()) == Tagclass.TypeDescriptorTests.YT?
   && TagFamily(Tclass.TypeDescriptorTests.YT?()) == tytagFamily$YT;
axiom implements$TypeDescriptorTests.XT(Tclass.TypeDescriptorTests.YT?(), 
  Tclass._System.___hTotalFunc1(TInt, TInt), 
  TInt);
}

const unique Tagclass.TypeDescriptorTests.YT?: TyTag;

// Box/unbox axiom for Tclass.TypeDescriptorTests.YT?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TypeDescriptorTests.YT?()) } 
  $IsBox(bx, Tclass.TypeDescriptorTests.YT?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TypeDescriptorTests.YT?()));

// $Is axiom for class YT
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TypeDescriptorTests.YT?()) } 
  $Is($o, Tclass.TypeDescriptorTests.YT?())
     <==> $o == null || dtype($o) == Tclass.TypeDescriptorTests.YT?());

// $IsAlloc axiom for class YT
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TypeDescriptorTests.YT?(), $h) } 
  $IsAlloc($o, Tclass.TypeDescriptorTests.YT?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for TypeDescriptorTests.YT.G
function TypeDescriptorTests.YT.G(this: ref, uu#0: HandleType) : HandleType;

function TypeDescriptorTests.YT.G#canCall(this: ref, uu#0: HandleType) : bool;

function Tclass.TypeDescriptorTests.YT() : Ty
uses {
// Tclass.TypeDescriptorTests.YT Tag
axiom Tag(Tclass.TypeDescriptorTests.YT()) == Tagclass.TypeDescriptorTests.YT
   && TagFamily(Tclass.TypeDescriptorTests.YT()) == tytagFamily$YT;
}

const unique Tagclass.TypeDescriptorTests.YT: TyTag;

// Box/unbox axiom for Tclass.TypeDescriptorTests.YT
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TypeDescriptorTests.YT()) } 
  $IsBox(bx, Tclass.TypeDescriptorTests.YT())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TypeDescriptorTests.YT()));

// consequence axiom for TypeDescriptorTests.YT.G
axiom (forall this: ref, uu#0: HandleType :: 
  { TypeDescriptorTests.YT.G(this, uu#0) } 
  TypeDescriptorTests.YT.G#canCall(this, uu#0)
       || (
        this != null
         && $Is(this, Tclass.TypeDescriptorTests.YT())
         && $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt)))
     ==> $Is(TypeDescriptorTests.YT.G(this, uu#0), Tclass._System.___hTotalFunc1(TInt, TInt)));

function TypeDescriptorTests.YT.G#requires(ref, HandleType) : bool;

// #requires axiom for TypeDescriptorTests.YT.G
axiom (forall this: ref, uu#0: HandleType :: 
  { TypeDescriptorTests.YT.G#requires(this, uu#0) } 
  this != null
       && $Is(this, Tclass.TypeDescriptorTests.YT())
       && $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt))
     ==> TypeDescriptorTests.YT.G#requires(this, uu#0) == true);

// definition axiom for TypeDescriptorTests.YT.G (revealed)
axiom {:id "id1091"} (forall this: ref, uu#0: HandleType :: 
  { TypeDescriptorTests.YT.G(this, uu#0) } 
  TypeDescriptorTests.YT.G#canCall(this, uu#0)
       || (
        this != null
         && $Is(this, Tclass.TypeDescriptorTests.YT())
         && $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt)))
     ==> TypeDescriptorTests.XT.F#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, this, $Box(uu#0))
       && TypeDescriptorTests.YT.G(this, uu#0)
         == $Unbox(TypeDescriptorTests.XT.F(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, this, $Box(uu#0))): HandleType);

// definition axiom for TypeDescriptorTests.YT.G for all literals (revealed)
axiom {:id "id1092"} (forall this: ref, uu#0: HandleType :: 
  {:weight 3} { TypeDescriptorTests.YT.G(Lit(this), Lit(uu#0)) } 
  TypeDescriptorTests.YT.G#canCall(Lit(this), Lit(uu#0))
       || (
        this != null
         && $Is(this, Tclass.TypeDescriptorTests.YT())
         && $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt)))
     ==> TypeDescriptorTests.XT.F#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, Lit(this), $Box(Lit(uu#0)))
       && TypeDescriptorTests.YT.G(Lit(this), Lit(uu#0))
         == Lit($Unbox(TypeDescriptorTests.XT.F(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, Lit(this), $Box(Lit(uu#0)))): HandleType));

// override axiom for TypeDescriptorTests.XT.G in class TypeDescriptorTests.YT
axiom (forall this: ref, u#0: HandleType :: 
  { TypeDescriptorTests.XT.G(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, this, $Box(u#0)), $Is(this, Tclass.TypeDescriptorTests.YT()) } 
    { TypeDescriptorTests.XT.G(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, this, $Box(u#0)), TypeDescriptorTests.YT.G(this, u#0) } 
  TypeDescriptorTests.YT.G#canCall(this, u#0)
       || (this != null && $Is(this, Tclass.TypeDescriptorTests.YT()))
     ==> TypeDescriptorTests.XT.G(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, this, $Box(u#0))
       == $Box(TypeDescriptorTests.YT.G(this, u#0)));

// function declaration for TypeDescriptorTests.YT.G'
function TypeDescriptorTests.YT.G_k(this: ref, uu#0: HandleType) : HandleType;

function TypeDescriptorTests.YT.G_k#canCall(this: ref, uu#0: HandleType) : bool;

// consequence axiom for TypeDescriptorTests.YT.G_k
axiom (forall this: ref, uu#0: HandleType :: 
  { TypeDescriptorTests.YT.G_k(this, uu#0) } 
  TypeDescriptorTests.YT.G_k#canCall(this, uu#0)
       || (
        this != null
         && $Is(this, Tclass.TypeDescriptorTests.YT())
         && $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt)))
     ==> $Is(TypeDescriptorTests.YT.G_k(this, uu#0), 
      Tclass._System.___hTotalFunc1(TInt, TInt)));

function TypeDescriptorTests.YT.G_k#requires(ref, HandleType) : bool;

// #requires axiom for TypeDescriptorTests.YT.G_k
axiom (forall this: ref, uu#0: HandleType :: 
  { TypeDescriptorTests.YT.G_k#requires(this, uu#0) } 
  this != null
       && $Is(this, Tclass.TypeDescriptorTests.YT())
       && $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt))
     ==> TypeDescriptorTests.YT.G_k#requires(this, uu#0) == true);

// definition axiom for TypeDescriptorTests.YT.G_k (revealed)
axiom {:id "id1093"} (forall this: ref, uu#0: HandleType :: 
  { TypeDescriptorTests.YT.G_k(this, uu#0) } 
  TypeDescriptorTests.YT.G_k#canCall(this, uu#0)
       || (
        this != null
         && $Is(this, Tclass.TypeDescriptorTests.YT())
         && $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt)))
     ==> TypeDescriptorTests.XT.F#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, this, $Box(uu#0))
       && TypeDescriptorTests.YT.G_k(this, uu#0)
         == $Unbox(TypeDescriptorTests.XT.F(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, this, $Box(uu#0))): HandleType);

// definition axiom for TypeDescriptorTests.YT.G_k for all literals (revealed)
axiom {:id "id1094"} (forall this: ref, uu#0: HandleType :: 
  {:weight 3} { TypeDescriptorTests.YT.G_k(Lit(this), Lit(uu#0)) } 
  TypeDescriptorTests.YT.G_k#canCall(Lit(this), Lit(uu#0))
       || (
        this != null
         && $Is(this, Tclass.TypeDescriptorTests.YT())
         && $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt)))
     ==> TypeDescriptorTests.XT.F#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, Lit(this), $Box(Lit(uu#0)))
       && TypeDescriptorTests.YT.G_k(Lit(this), Lit(uu#0))
         == Lit($Unbox(TypeDescriptorTests.XT.F(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, Lit(this), $Box(Lit(uu#0)))): HandleType));

// override axiom for TypeDescriptorTests.XT.G_k in class TypeDescriptorTests.YT
axiom (forall this: ref, u#0: HandleType :: 
  { TypeDescriptorTests.XT.G_k(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, this, u#0), $Is(this, Tclass.TypeDescriptorTests.YT()) } 
    { TypeDescriptorTests.XT.G_k(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, this, u#0), TypeDescriptorTests.YT.G_k(this, u#0) } 
  TypeDescriptorTests.YT.G_k#canCall(this, u#0)
       || (this != null && $Is(this, Tclass.TypeDescriptorTests.YT()))
     ==> TypeDescriptorTests.XT.G_k(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, this, u#0)
       == TypeDescriptorTests.YT.G_k(this, u#0));

// $Is axiom for non-null type TypeDescriptorTests.YT
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TypeDescriptorTests.YT()) } 
    { $Is(c#0, Tclass.TypeDescriptorTests.YT?()) } 
  $Is(c#0, Tclass.TypeDescriptorTests.YT())
     <==> $Is(c#0, Tclass.TypeDescriptorTests.YT?()) && c#0 != null);

// $IsAlloc axiom for non-null type TypeDescriptorTests.YT
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TypeDescriptorTests.YT(), $h) } 
    { $IsAlloc(c#0, Tclass.TypeDescriptorTests.YT?(), $h) } 
  $IsAlloc(c#0, Tclass.TypeDescriptorTests.YT(), $h)
     <==> $IsAlloc(c#0, Tclass.TypeDescriptorTests.YT?(), $h));

const unique class.TypeDescriptorTests.TraitDependency?: ClassName;

function Tclass.TypeDescriptorTests.TraitDependency?(Ty) : Ty;

const unique Tagclass.TypeDescriptorTests.TraitDependency?: TyTag;

// Tclass.TypeDescriptorTests.TraitDependency? Tag
axiom (forall TypeDescriptorTests.TraitDependency$X: Ty :: 
  { Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X) } 
  Tag(Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X))
       == Tagclass.TypeDescriptorTests.TraitDependency?
     && TagFamily(Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X))
       == tytagFamily$TraitDependency);

function Tclass.TypeDescriptorTests.TraitDependency?_0(Ty) : Ty;

// Tclass.TypeDescriptorTests.TraitDependency? injectivity 0
axiom (forall TypeDescriptorTests.TraitDependency$X: Ty :: 
  { Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X) } 
  Tclass.TypeDescriptorTests.TraitDependency?_0(Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X))
     == TypeDescriptorTests.TraitDependency$X);

// Box/unbox axiom for Tclass.TypeDescriptorTests.TraitDependency?
axiom (forall TypeDescriptorTests.TraitDependency$X: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X)) } 
  $IsBox(bx, 
      Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X)));

// $Is axiom for trait TraitDependency
axiom (forall TypeDescriptorTests.TraitDependency$X: Ty, $o: ref :: 
  { $Is($o, 
      Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X)) } 
  $Is($o, 
      Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X))
     <==> $o == null
       || implements$TypeDescriptorTests.TraitDependency(dtype($o), TypeDescriptorTests.TraitDependency$X));

// $IsAlloc axiom for trait TraitDependency
axiom (forall TypeDescriptorTests.TraitDependency$X: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, 
      Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X), 
      $h) } 
  $IsAlloc($o, 
      Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X), 
      $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TypeDescriptorTests.TraitDependency(ty: Ty, TypeDescriptorTests.TraitDependency$X: Ty) : bool;

function TypeDescriptorTests.TraitDependency.a(TypeDescriptorTests.TraitDependency$X: Ty, this: ref) : Box;

// TraitDependency.a: Type axiom
axiom (forall TypeDescriptorTests.TraitDependency$X: Ty, $o: ref :: 
  { TypeDescriptorTests.TraitDependency.a(TypeDescriptorTests.TraitDependency$X, $o) } 
  $o != null
       && $Is($o, 
        Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X))
     ==> $IsBox(TypeDescriptorTests.TraitDependency.a(TypeDescriptorTests.TraitDependency$X, $o), 
      TypeDescriptorTests.TraitDependency$X));

// TraitDependency.a: Allocation axiom
axiom (forall TypeDescriptorTests.TraitDependency$X: Ty, $h: Heap, $o: ref :: 
  { TypeDescriptorTests.TraitDependency.a(TypeDescriptorTests.TraitDependency$X, $o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, 
        Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X))
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(TypeDescriptorTests.TraitDependency.a(TypeDescriptorTests.TraitDependency$X, $o), 
      TypeDescriptorTests.TraitDependency$X, 
      $h));

function TypeDescriptorTests.TraitDependency.c(TypeDescriptorTests.TraitDependency$X: Ty, this: ref) : Box;

function TypeDescriptorTests.TraitDependency.b(TypeDescriptorTests.TraitDependency$X: Ty, this: ref) : DatatypeType
uses {
axiom (forall TypeDescriptorTests.TraitDependency$X: Ty, this: ref :: 
  { TypeDescriptorTests.TraitDependency.b(TypeDescriptorTests.TraitDependency$X, this): DatatypeType } 
  TypeDescriptorTests.TraitDependency.b(TypeDescriptorTests.TraitDependency$X, this): DatatypeType
     == #_System._tuple#2._#Make2(TypeDescriptorTests.TraitDependency.a(TypeDescriptorTests.TraitDependency$X, this), 
      TypeDescriptorTests.TraitDependency.c(TypeDescriptorTests.TraitDependency$X, this)));
}

// TraitDependency.b: Type axiom
axiom (forall TypeDescriptorTests.TraitDependency$X: Ty, $o: ref :: 
  { TypeDescriptorTests.TraitDependency.b(TypeDescriptorTests.TraitDependency$X, $o) } 
  $o != null
       && $Is($o, 
        Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X))
     ==> $Is(TypeDescriptorTests.TraitDependency.b(TypeDescriptorTests.TraitDependency$X, $o), 
      Tclass._System.Tuple2(TypeDescriptorTests.TraitDependency$X, TypeDescriptorTests.TraitDependency$X)));

// TraitDependency.b: Allocation axiom
axiom (forall TypeDescriptorTests.TraitDependency$X: Ty, $h: Heap, $o: ref :: 
  { TypeDescriptorTests.TraitDependency.b(TypeDescriptorTests.TraitDependency$X, $o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, 
        Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X))
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(TypeDescriptorTests.TraitDependency.b(TypeDescriptorTests.TraitDependency$X, $o), 
      Tclass._System.Tuple2(TypeDescriptorTests.TraitDependency$X, TypeDescriptorTests.TraitDependency$X), 
      $h));

// TraitDependency.c: Type axiom
axiom (forall TypeDescriptorTests.TraitDependency$X: Ty, $o: ref :: 
  { TypeDescriptorTests.TraitDependency.c(TypeDescriptorTests.TraitDependency$X, $o) } 
  $o != null
       && $Is($o, 
        Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X))
     ==> $IsBox(TypeDescriptorTests.TraitDependency.c(TypeDescriptorTests.TraitDependency$X, $o), 
      TypeDescriptorTests.TraitDependency$X));

// TraitDependency.c: Allocation axiom
axiom (forall TypeDescriptorTests.TraitDependency$X: Ty, $h: Heap, $o: ref :: 
  { TypeDescriptorTests.TraitDependency.c(TypeDescriptorTests.TraitDependency$X, $o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, 
        Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X))
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(TypeDescriptorTests.TraitDependency.c(TypeDescriptorTests.TraitDependency$X, $o), 
      TypeDescriptorTests.TraitDependency$X, 
      $h));

function Tclass.TypeDescriptorTests.TraitDependency(Ty) : Ty;

const unique Tagclass.TypeDescriptorTests.TraitDependency: TyTag;

// Tclass.TypeDescriptorTests.TraitDependency Tag
axiom (forall TypeDescriptorTests.TraitDependency$X: Ty :: 
  { Tclass.TypeDescriptorTests.TraitDependency(TypeDescriptorTests.TraitDependency$X) } 
  Tag(Tclass.TypeDescriptorTests.TraitDependency(TypeDescriptorTests.TraitDependency$X))
       == Tagclass.TypeDescriptorTests.TraitDependency
     && TagFamily(Tclass.TypeDescriptorTests.TraitDependency(TypeDescriptorTests.TraitDependency$X))
       == tytagFamily$TraitDependency);

function Tclass.TypeDescriptorTests.TraitDependency_0(Ty) : Ty;

// Tclass.TypeDescriptorTests.TraitDependency injectivity 0
axiom (forall TypeDescriptorTests.TraitDependency$X: Ty :: 
  { Tclass.TypeDescriptorTests.TraitDependency(TypeDescriptorTests.TraitDependency$X) } 
  Tclass.TypeDescriptorTests.TraitDependency_0(Tclass.TypeDescriptorTests.TraitDependency(TypeDescriptorTests.TraitDependency$X))
     == TypeDescriptorTests.TraitDependency$X);

// Box/unbox axiom for Tclass.TypeDescriptorTests.TraitDependency
axiom (forall TypeDescriptorTests.TraitDependency$X: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.TypeDescriptorTests.TraitDependency(TypeDescriptorTests.TraitDependency$X)) } 
  $IsBox(bx, 
      Tclass.TypeDescriptorTests.TraitDependency(TypeDescriptorTests.TraitDependency$X))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.TypeDescriptorTests.TraitDependency(TypeDescriptorTests.TraitDependency$X)));

// $Is axiom for non-null type TypeDescriptorTests.TraitDependency
axiom (forall TypeDescriptorTests.TraitDependency$X: Ty, c#0: ref :: 
  { $Is(c#0, 
      Tclass.TypeDescriptorTests.TraitDependency(TypeDescriptorTests.TraitDependency$X)) } 
    { $Is(c#0, 
      Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X)) } 
  $Is(c#0, 
      Tclass.TypeDescriptorTests.TraitDependency(TypeDescriptorTests.TraitDependency$X))
     <==> $Is(c#0, 
        Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X))
       && c#0 != null);

// $IsAlloc axiom for non-null type TypeDescriptorTests.TraitDependency
axiom (forall TypeDescriptorTests.TraitDependency$X: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, 
      Tclass.TypeDescriptorTests.TraitDependency(TypeDescriptorTests.TraitDependency$X), 
      $h) } 
    { $IsAlloc(c#0, 
      Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X), 
      $h) } 
  $IsAlloc(c#0, 
      Tclass.TypeDescriptorTests.TraitDependency(TypeDescriptorTests.TraitDependency$X), 
      $h)
     <==> $IsAlloc(c#0, 
      Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X), 
      $h));

const unique class.TypeDescriptorTests.TraitDependencyClass?: ClassName;

function Tclass.TypeDescriptorTests.TraitDependencyClass?() : Ty
uses {
// Tclass.TypeDescriptorTests.TraitDependencyClass? Tag
axiom Tag(Tclass.TypeDescriptorTests.TraitDependencyClass?())
     == Tagclass.TypeDescriptorTests.TraitDependencyClass?
   && TagFamily(Tclass.TypeDescriptorTests.TraitDependencyClass?())
     == tytagFamily$TraitDependencyClass;
axiom implements$TypeDescriptorTests.TraitDependency(Tclass.TypeDescriptorTests.TraitDependencyClass?(), TInt);
}

const unique Tagclass.TypeDescriptorTests.TraitDependencyClass?: TyTag;

// Box/unbox axiom for Tclass.TypeDescriptorTests.TraitDependencyClass?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TypeDescriptorTests.TraitDependencyClass?()) } 
  $IsBox(bx, Tclass.TypeDescriptorTests.TraitDependencyClass?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TypeDescriptorTests.TraitDependencyClass?()));

// $Is axiom for class TraitDependencyClass
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TypeDescriptorTests.TraitDependencyClass?()) } 
  $Is($o, Tclass.TypeDescriptorTests.TraitDependencyClass?())
     <==> $o == null || dtype($o) == Tclass.TypeDescriptorTests.TraitDependencyClass?());

// $IsAlloc axiom for class TraitDependencyClass
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TypeDescriptorTests.TraitDependencyClass?(), $h) } 
  $IsAlloc($o, Tclass.TypeDescriptorTests.TraitDependencyClass?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.TypeDescriptorTests.TraitDependencyClass() : Ty
uses {
// Tclass.TypeDescriptorTests.TraitDependencyClass Tag
axiom Tag(Tclass.TypeDescriptorTests.TraitDependencyClass())
     == Tagclass.TypeDescriptorTests.TraitDependencyClass
   && TagFamily(Tclass.TypeDescriptorTests.TraitDependencyClass())
     == tytagFamily$TraitDependencyClass;
}

const unique Tagclass.TypeDescriptorTests.TraitDependencyClass: TyTag;

// Box/unbox axiom for Tclass.TypeDescriptorTests.TraitDependencyClass
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TypeDescriptorTests.TraitDependencyClass()) } 
  $IsBox(bx, Tclass.TypeDescriptorTests.TraitDependencyClass())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TypeDescriptorTests.TraitDependencyClass()));

// $Is axiom for non-null type TypeDescriptorTests.TraitDependencyClass
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TypeDescriptorTests.TraitDependencyClass()) } 
    { $Is(c#0, Tclass.TypeDescriptorTests.TraitDependencyClass?()) } 
  $Is(c#0, Tclass.TypeDescriptorTests.TraitDependencyClass())
     <==> $Is(c#0, Tclass.TypeDescriptorTests.TraitDependencyClass?()) && c#0 != null);

// $IsAlloc axiom for non-null type TypeDescriptorTests.TraitDependencyClass
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TypeDescriptorTests.TraitDependencyClass(), $h) } 
    { $IsAlloc(c#0, Tclass.TypeDescriptorTests.TraitDependencyClass?(), $h) } 
  $IsAlloc(c#0, Tclass.TypeDescriptorTests.TraitDependencyClass(), $h)
     <==> $IsAlloc(c#0, Tclass.TypeDescriptorTests.TraitDependencyClass?(), $h));

const unique class.DiamondInitialization.__default: ClassName;

procedure {:verboseName "DiamondInitialization.Test (well-formedness)"} CheckWellFormed$$DiamondInitialization.__default.Test();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DiamondInitialization.Test (call)"} Call$$DiamondInitialization.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class.DiamondInitialization.A?: ClassName;

function Tclass.DiamondInitialization.A?(Ty) : Ty;

const unique Tagclass.DiamondInitialization.A?: TyTag;

// Tclass.DiamondInitialization.A? Tag
axiom (forall DiamondInitialization.A$XA: Ty :: 
  { Tclass.DiamondInitialization.A?(DiamondInitialization.A$XA) } 
  Tag(Tclass.DiamondInitialization.A?(DiamondInitialization.A$XA))
       == Tagclass.DiamondInitialization.A?
     && TagFamily(Tclass.DiamondInitialization.A?(DiamondInitialization.A$XA))
       == tytagFamily$A);

function Tclass.DiamondInitialization.A?_0(Ty) : Ty;

// Tclass.DiamondInitialization.A? injectivity 0
axiom (forall DiamondInitialization.A$XA: Ty :: 
  { Tclass.DiamondInitialization.A?(DiamondInitialization.A$XA) } 
  Tclass.DiamondInitialization.A?_0(Tclass.DiamondInitialization.A?(DiamondInitialization.A$XA))
     == DiamondInitialization.A$XA);

// Box/unbox axiom for Tclass.DiamondInitialization.A?
axiom (forall DiamondInitialization.A$XA: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.DiamondInitialization.A?(DiamondInitialization.A$XA)) } 
  $IsBox(bx, Tclass.DiamondInitialization.A?(DiamondInitialization.A$XA))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.DiamondInitialization.A?(DiamondInitialization.A$XA)));

// $Is axiom for trait A
axiom (forall DiamondInitialization.A$XA: Ty, $o: ref :: 
  { $Is($o, Tclass.DiamondInitialization.A?(DiamondInitialization.A$XA)) } 
  $Is($o, Tclass.DiamondInitialization.A?(DiamondInitialization.A$XA))
     <==> $o == null
       || implements$DiamondInitialization.A(dtype($o), DiamondInitialization.A$XA));

// $IsAlloc axiom for trait A
axiom (forall DiamondInitialization.A$XA: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.DiamondInitialization.A?(DiamondInitialization.A$XA), $h) } 
  $IsAlloc($o, Tclass.DiamondInitialization.A?(DiamondInitialization.A$XA), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$DiamondInitialization.A(ty: Ty, DiamondInitialization.A$XA: Ty) : bool;

const DiamondInitialization.A.x: Field
uses {
axiom FDim(DiamondInitialization.A.x) == 0
   && FieldOfDecl(class.DiamondInitialization.A?, field$x)
     == DiamondInitialization.A.x
   && !$IsGhostField(DiamondInitialization.A.x);
}

// A.x: Type axiom
axiom (forall DiamondInitialization.A$XA: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, DiamondInitialization.A.x), Tclass.DiamondInitialization.A?(DiamondInitialization.A$XA) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass.DiamondInitialization.A?(DiamondInitialization.A$XA))
     ==> $IsBox(read($h, $o, DiamondInitialization.A.x), DiamondInitialization.A$XA));

// A.x: Allocation axiom
axiom (forall DiamondInitialization.A$XA: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, DiamondInitialization.A.x), Tclass.DiamondInitialization.A?(DiamondInitialization.A$XA) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass.DiamondInitialization.A?(DiamondInitialization.A$XA))
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, DiamondInitialization.A.x), DiamondInitialization.A$XA, $h));

function Tclass.DiamondInitialization.A(Ty) : Ty;

const unique Tagclass.DiamondInitialization.A: TyTag;

// Tclass.DiamondInitialization.A Tag
axiom (forall DiamondInitialization.A$XA: Ty :: 
  { Tclass.DiamondInitialization.A(DiamondInitialization.A$XA) } 
  Tag(Tclass.DiamondInitialization.A(DiamondInitialization.A$XA))
       == Tagclass.DiamondInitialization.A
     && TagFamily(Tclass.DiamondInitialization.A(DiamondInitialization.A$XA))
       == tytagFamily$A);

function Tclass.DiamondInitialization.A_0(Ty) : Ty;

// Tclass.DiamondInitialization.A injectivity 0
axiom (forall DiamondInitialization.A$XA: Ty :: 
  { Tclass.DiamondInitialization.A(DiamondInitialization.A$XA) } 
  Tclass.DiamondInitialization.A_0(Tclass.DiamondInitialization.A(DiamondInitialization.A$XA))
     == DiamondInitialization.A$XA);

// Box/unbox axiom for Tclass.DiamondInitialization.A
axiom (forall DiamondInitialization.A$XA: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.DiamondInitialization.A(DiamondInitialization.A$XA)) } 
  $IsBox(bx, Tclass.DiamondInitialization.A(DiamondInitialization.A$XA))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.DiamondInitialization.A(DiamondInitialization.A$XA)));

// $Is axiom for non-null type DiamondInitialization.A
axiom (forall DiamondInitialization.A$XA: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.DiamondInitialization.A(DiamondInitialization.A$XA)) } 
    { $Is(c#0, Tclass.DiamondInitialization.A?(DiamondInitialization.A$XA)) } 
  $Is(c#0, Tclass.DiamondInitialization.A(DiamondInitialization.A$XA))
     <==> $Is(c#0, Tclass.DiamondInitialization.A?(DiamondInitialization.A$XA))
       && c#0 != null);

// $IsAlloc axiom for non-null type DiamondInitialization.A
axiom (forall DiamondInitialization.A$XA: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.DiamondInitialization.A(DiamondInitialization.A$XA), $h) } 
    { $IsAlloc(c#0, Tclass.DiamondInitialization.A?(DiamondInitialization.A$XA), $h) } 
  $IsAlloc(c#0, Tclass.DiamondInitialization.A(DiamondInitialization.A$XA), $h)
     <==> $IsAlloc(c#0, Tclass.DiamondInitialization.A?(DiamondInitialization.A$XA), $h));

const unique class.DiamondInitialization.B?: ClassName;

function Tclass.DiamondInitialization.B?(Ty) : Ty;

const unique Tagclass.DiamondInitialization.B?: TyTag;

// Tclass.DiamondInitialization.B? Tag
axiom (forall DiamondInitialization.B$XB: Ty :: 
  { Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB) } 
  Tag(Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB))
       == Tagclass.DiamondInitialization.B?
     && TagFamily(Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB))
       == tytagFamily$B);

function Tclass.DiamondInitialization.B?_0(Ty) : Ty;

// Tclass.DiamondInitialization.B? injectivity 0
axiom (forall DiamondInitialization.B$XB: Ty :: 
  { Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB) } 
  Tclass.DiamondInitialization.B?_0(Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB))
     == DiamondInitialization.B$XB);

// Box/unbox axiom for Tclass.DiamondInitialization.B?
axiom (forall DiamondInitialization.B$XB: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB)) } 
  $IsBox(bx, Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB)));

// $Is axiom for trait B
axiom (forall DiamondInitialization.B$XB: Ty, $o: ref :: 
  { $Is($o, Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB)) } 
  $Is($o, Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB))
     <==> $o == null
       || implements$DiamondInitialization.B(dtype($o), DiamondInitialization.B$XB));

// $IsAlloc axiom for trait B
axiom (forall DiamondInitialization.B$XB: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB), $h) } 
  $IsAlloc($o, Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$DiamondInitialization.B(ty: Ty, DiamondInitialization.B$XB: Ty) : bool;

function Tclass.DiamondInitialization.B(Ty) : Ty;

const unique Tagclass.DiamondInitialization.B: TyTag;

// Tclass.DiamondInitialization.B Tag
axiom (forall DiamondInitialization.B$XB: Ty :: 
  { Tclass.DiamondInitialization.B(DiamondInitialization.B$XB) } 
  Tag(Tclass.DiamondInitialization.B(DiamondInitialization.B$XB))
       == Tagclass.DiamondInitialization.B
     && TagFamily(Tclass.DiamondInitialization.B(DiamondInitialization.B$XB))
       == tytagFamily$B);

function Tclass.DiamondInitialization.B_0(Ty) : Ty;

// Tclass.DiamondInitialization.B injectivity 0
axiom (forall DiamondInitialization.B$XB: Ty :: 
  { Tclass.DiamondInitialization.B(DiamondInitialization.B$XB) } 
  Tclass.DiamondInitialization.B_0(Tclass.DiamondInitialization.B(DiamondInitialization.B$XB))
     == DiamondInitialization.B$XB);

// Box/unbox axiom for Tclass.DiamondInitialization.B
axiom (forall DiamondInitialization.B$XB: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.DiamondInitialization.B(DiamondInitialization.B$XB)) } 
  $IsBox(bx, Tclass.DiamondInitialization.B(DiamondInitialization.B$XB))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.DiamondInitialization.B(DiamondInitialization.B$XB)));

// $Is axiom for non-null type DiamondInitialization.B
axiom (forall DiamondInitialization.B$XB: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.DiamondInitialization.B(DiamondInitialization.B$XB)) } 
    { $Is(c#0, Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB)) } 
  $Is(c#0, Tclass.DiamondInitialization.B(DiamondInitialization.B$XB))
     <==> $Is(c#0, Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB))
       && c#0 != null);

// $IsAlloc axiom for non-null type DiamondInitialization.B
axiom (forall DiamondInitialization.B$XB: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.DiamondInitialization.B(DiamondInitialization.B$XB), $h) } 
    { $IsAlloc(c#0, Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB), $h) } 
  $IsAlloc(c#0, Tclass.DiamondInitialization.B(DiamondInitialization.B$XB), $h)
     <==> $IsAlloc(c#0, Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB), $h));

const unique class.DiamondInitialization.C?: ClassName;

function Tclass.DiamondInitialization.C?(Ty) : Ty;

const unique Tagclass.DiamondInitialization.C?: TyTag;

// Tclass.DiamondInitialization.C? Tag
axiom (forall DiamondInitialization.C$XC: Ty :: 
  { Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC) } 
  Tag(Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC))
       == Tagclass.DiamondInitialization.C?
     && TagFamily(Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC))
       == tytagFamily$C);

function Tclass.DiamondInitialization.C?_0(Ty) : Ty;

// Tclass.DiamondInitialization.C? injectivity 0
axiom (forall DiamondInitialization.C$XC: Ty :: 
  { Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC) } 
  Tclass.DiamondInitialization.C?_0(Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC))
     == DiamondInitialization.C$XC);

// Box/unbox axiom for Tclass.DiamondInitialization.C?
axiom (forall DiamondInitialization.C$XC: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC)) } 
  $IsBox(bx, Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC)));

// $Is axiom for trait C
axiom (forall DiamondInitialization.C$XC: Ty, $o: ref :: 
  { $Is($o, Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC)) } 
  $Is($o, Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC))
     <==> $o == null
       || implements$DiamondInitialization.C(dtype($o), DiamondInitialization.C$XC));

// $IsAlloc axiom for trait C
axiom (forall DiamondInitialization.C$XC: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC), $h) } 
  $IsAlloc($o, Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$DiamondInitialization.C(ty: Ty, DiamondInitialization.C$XC: Ty) : bool;

function Tclass.DiamondInitialization.C(Ty) : Ty;

const unique Tagclass.DiamondInitialization.C: TyTag;

// Tclass.DiamondInitialization.C Tag
axiom (forall DiamondInitialization.C$XC: Ty :: 
  { Tclass.DiamondInitialization.C(DiamondInitialization.C$XC) } 
  Tag(Tclass.DiamondInitialization.C(DiamondInitialization.C$XC))
       == Tagclass.DiamondInitialization.C
     && TagFamily(Tclass.DiamondInitialization.C(DiamondInitialization.C$XC))
       == tytagFamily$C);

function Tclass.DiamondInitialization.C_0(Ty) : Ty;

// Tclass.DiamondInitialization.C injectivity 0
axiom (forall DiamondInitialization.C$XC: Ty :: 
  { Tclass.DiamondInitialization.C(DiamondInitialization.C$XC) } 
  Tclass.DiamondInitialization.C_0(Tclass.DiamondInitialization.C(DiamondInitialization.C$XC))
     == DiamondInitialization.C$XC);

// Box/unbox axiom for Tclass.DiamondInitialization.C
axiom (forall DiamondInitialization.C$XC: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.DiamondInitialization.C(DiamondInitialization.C$XC)) } 
  $IsBox(bx, Tclass.DiamondInitialization.C(DiamondInitialization.C$XC))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.DiamondInitialization.C(DiamondInitialization.C$XC)));

// $Is axiom for non-null type DiamondInitialization.C
axiom (forall DiamondInitialization.C$XC: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.DiamondInitialization.C(DiamondInitialization.C$XC)) } 
    { $Is(c#0, Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC)) } 
  $Is(c#0, Tclass.DiamondInitialization.C(DiamondInitialization.C$XC))
     <==> $Is(c#0, Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC))
       && c#0 != null);

// $IsAlloc axiom for non-null type DiamondInitialization.C
axiom (forall DiamondInitialization.C$XC: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.DiamondInitialization.C(DiamondInitialization.C$XC), $h) } 
    { $IsAlloc(c#0, Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC), $h) } 
  $IsAlloc(c#0, Tclass.DiamondInitialization.C(DiamondInitialization.C$XC), $h)
     <==> $IsAlloc(c#0, Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC), $h));

const unique class.DiamondInitialization.D?: ClassName;

function Tclass.DiamondInitialization.D?() : Ty
uses {
// Tclass.DiamondInitialization.D? Tag
axiom Tag(Tclass.DiamondInitialization.D?()) == Tagclass.DiamondInitialization.D?
   && TagFamily(Tclass.DiamondInitialization.D?()) == tytagFamily$D;
}

const unique Tagclass.DiamondInitialization.D?: TyTag;

// Box/unbox axiom for Tclass.DiamondInitialization.D?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DiamondInitialization.D?()) } 
  $IsBox(bx, Tclass.DiamondInitialization.D?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.DiamondInitialization.D?()));

// $Is axiom for trait D
axiom (forall $o: ref :: 
  { $Is($o, Tclass.DiamondInitialization.D?()) } 
  $Is($o, Tclass.DiamondInitialization.D?())
     <==> $o == null || implements$DiamondInitialization.D(dtype($o)));

// $IsAlloc axiom for trait D
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.DiamondInitialization.D?(), $h) } 
  $IsAlloc($o, Tclass.DiamondInitialization.D?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$DiamondInitialization.D(ty: Ty) : bool;

function Tclass.DiamondInitialization.D() : Ty
uses {
// Tclass.DiamondInitialization.D Tag
axiom Tag(Tclass.DiamondInitialization.D()) == Tagclass.DiamondInitialization.D
   && TagFamily(Tclass.DiamondInitialization.D()) == tytagFamily$D;
}

const unique Tagclass.DiamondInitialization.D: TyTag;

// Box/unbox axiom for Tclass.DiamondInitialization.D
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DiamondInitialization.D()) } 
  $IsBox(bx, Tclass.DiamondInitialization.D())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.DiamondInitialization.D()));

// $Is axiom for non-null type DiamondInitialization.D
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.DiamondInitialization.D()) } 
    { $Is(c#0, Tclass.DiamondInitialization.D?()) } 
  $Is(c#0, Tclass.DiamondInitialization.D())
     <==> $Is(c#0, Tclass.DiamondInitialization.D?()) && c#0 != null);

// $IsAlloc axiom for non-null type DiamondInitialization.D
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.DiamondInitialization.D(), $h) } 
    { $IsAlloc(c#0, Tclass.DiamondInitialization.D?(), $h) } 
  $IsAlloc(c#0, Tclass.DiamondInitialization.D(), $h)
     <==> $IsAlloc(c#0, Tclass.DiamondInitialization.D?(), $h));

const unique class.DiamondInitialization.E?: ClassName;

function Tclass.DiamondInitialization.E?(Ty) : Ty;

const unique Tagclass.DiamondInitialization.E?: TyTag;

// Tclass.DiamondInitialization.E? Tag
axiom (forall DiamondInitialization.E$XE: Ty :: 
  { Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE) } 
  Tag(Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE))
       == Tagclass.DiamondInitialization.E?
     && TagFamily(Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE))
       == tytagFamily$E);

function Tclass.DiamondInitialization.E?_0(Ty) : Ty;

// Tclass.DiamondInitialization.E? injectivity 0
axiom (forall DiamondInitialization.E$XE: Ty :: 
  { Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE) } 
  Tclass.DiamondInitialization.E?_0(Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE))
     == DiamondInitialization.E$XE);

// Box/unbox axiom for Tclass.DiamondInitialization.E?
axiom (forall DiamondInitialization.E$XE: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE)) } 
  $IsBox(bx, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE)));

// $Is axiom for trait E
axiom (forall DiamondInitialization.E$XE: Ty, $o: ref :: 
  { $Is($o, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE)) } 
  $Is($o, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE))
     <==> $o == null
       || implements$DiamondInitialization.E(dtype($o), DiamondInitialization.E$XE));

// $IsAlloc axiom for trait E
axiom (forall DiamondInitialization.E$XE: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE), $h) } 
  $IsAlloc($o, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$DiamondInitialization.E(ty: Ty, DiamondInitialization.E$XE: Ty) : bool;

function Tclass.DiamondInitialization.E(Ty) : Ty;

const unique Tagclass.DiamondInitialization.E: TyTag;

// Tclass.DiamondInitialization.E Tag
axiom (forall DiamondInitialization.E$XE: Ty :: 
  { Tclass.DiamondInitialization.E(DiamondInitialization.E$XE) } 
  Tag(Tclass.DiamondInitialization.E(DiamondInitialization.E$XE))
       == Tagclass.DiamondInitialization.E
     && TagFamily(Tclass.DiamondInitialization.E(DiamondInitialization.E$XE))
       == tytagFamily$E);

function Tclass.DiamondInitialization.E_0(Ty) : Ty;

// Tclass.DiamondInitialization.E injectivity 0
axiom (forall DiamondInitialization.E$XE: Ty :: 
  { Tclass.DiamondInitialization.E(DiamondInitialization.E$XE) } 
  Tclass.DiamondInitialization.E_0(Tclass.DiamondInitialization.E(DiamondInitialization.E$XE))
     == DiamondInitialization.E$XE);

// Box/unbox axiom for Tclass.DiamondInitialization.E
axiom (forall DiamondInitialization.E$XE: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.DiamondInitialization.E(DiamondInitialization.E$XE)) } 
  $IsBox(bx, Tclass.DiamondInitialization.E(DiamondInitialization.E$XE))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.DiamondInitialization.E(DiamondInitialization.E$XE)));

// $Is axiom for non-null type DiamondInitialization.E
axiom (forall DiamondInitialization.E$XE: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.DiamondInitialization.E(DiamondInitialization.E$XE)) } 
    { $Is(c#0, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE)) } 
  $Is(c#0, Tclass.DiamondInitialization.E(DiamondInitialization.E$XE))
     <==> $Is(c#0, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE))
       && c#0 != null);

// $IsAlloc axiom for non-null type DiamondInitialization.E
axiom (forall DiamondInitialization.E$XE: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.DiamondInitialization.E(DiamondInitialization.E$XE), $h) } 
    { $IsAlloc(c#0, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE), $h) } 
  $IsAlloc(c#0, Tclass.DiamondInitialization.E(DiamondInitialization.E$XE), $h)
     <==> $IsAlloc(c#0, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE), $h));

const unique class.DiamondInitialization.M?: ClassName;

function Tclass.DiamondInitialization.M?() : Ty
uses {
// Tclass.DiamondInitialization.M? Tag
axiom Tag(Tclass.DiamondInitialization.M?()) == Tagclass.DiamondInitialization.M?
   && TagFamily(Tclass.DiamondInitialization.M?()) == tytagFamily$M;
axiom implements$DiamondInitialization.B(Tclass.DiamondInitialization.M?(), TInt);
axiom implements$DiamondInitialization.E(Tclass.DiamondInitialization.M?(), TInt);
axiom implements$DiamondInitialization.C(Tclass.DiamondInitialization.M?(), TInt);
axiom implements$DiamondInitialization.D(Tclass.DiamondInitialization.M?());
axiom implements$DiamondInitialization.A(Tclass.DiamondInitialization.M?(), TInt);
}

const unique Tagclass.DiamondInitialization.M?: TyTag;

// Box/unbox axiom for Tclass.DiamondInitialization.M?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DiamondInitialization.M?()) } 
  $IsBox(bx, Tclass.DiamondInitialization.M?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.DiamondInitialization.M?()));

// $Is axiom for class M
axiom (forall $o: ref :: 
  { $Is($o, Tclass.DiamondInitialization.M?()) } 
  $Is($o, Tclass.DiamondInitialization.M?())
     <==> $o == null || dtype($o) == Tclass.DiamondInitialization.M?());

// $IsAlloc axiom for class M
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.DiamondInitialization.M?(), $h) } 
  $IsAlloc($o, Tclass.DiamondInitialization.M?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.DiamondInitialization.M() : Ty
uses {
// Tclass.DiamondInitialization.M Tag
axiom Tag(Tclass.DiamondInitialization.M()) == Tagclass.DiamondInitialization.M
   && TagFamily(Tclass.DiamondInitialization.M()) == tytagFamily$M;
}

const unique Tagclass.DiamondInitialization.M: TyTag;

// Box/unbox axiom for Tclass.DiamondInitialization.M
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DiamondInitialization.M()) } 
  $IsBox(bx, Tclass.DiamondInitialization.M())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.DiamondInitialization.M()));

// $Is axiom for non-null type DiamondInitialization.M
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.DiamondInitialization.M()) } 
    { $Is(c#0, Tclass.DiamondInitialization.M?()) } 
  $Is(c#0, Tclass.DiamondInitialization.M())
     <==> $Is(c#0, Tclass.DiamondInitialization.M?()) && c#0 != null);

// $IsAlloc axiom for non-null type DiamondInitialization.M
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.DiamondInitialization.M(), $h) } 
    { $IsAlloc(c#0, Tclass.DiamondInitialization.M?(), $h) } 
  $IsAlloc(c#0, Tclass.DiamondInitialization.M(), $h)
     <==> $IsAlloc(c#0, Tclass.DiamondInitialization.M?(), $h));

const unique class.NonCapturingFunctionCoercions.__default: ClassName;

procedure {:verboseName "NonCapturingFunctionCoercions.Test (well-formedness)"} CheckWellFormed$$NonCapturingFunctionCoercions.__default.Test();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NonCapturingFunctionCoercions.Test (call)"} Call$$NonCapturingFunctionCoercions.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class.TailRecursion.__default: ClassName;

procedure {:verboseName "TailRecursion.Test (well-formedness)"} CheckWellFormed$$TailRecursion.__default.Test();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TailRecursion.Test (call)"} Call$$TailRecursion.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class.TailRecursion.Trait?: ClassName;

function Tclass.TailRecursion.Trait?(Ty) : Ty;

const unique Tagclass.TailRecursion.Trait?: TyTag;

// Tclass.TailRecursion.Trait? Tag
axiom (forall TailRecursion.Trait$G: Ty :: 
  { Tclass.TailRecursion.Trait?(TailRecursion.Trait$G) } 
  Tag(Tclass.TailRecursion.Trait?(TailRecursion.Trait$G))
       == Tagclass.TailRecursion.Trait?
     && TagFamily(Tclass.TailRecursion.Trait?(TailRecursion.Trait$G))
       == tytagFamily$Trait);

function Tclass.TailRecursion.Trait?_0(Ty) : Ty;

// Tclass.TailRecursion.Trait? injectivity 0
axiom (forall TailRecursion.Trait$G: Ty :: 
  { Tclass.TailRecursion.Trait?(TailRecursion.Trait$G) } 
  Tclass.TailRecursion.Trait?_0(Tclass.TailRecursion.Trait?(TailRecursion.Trait$G))
     == TailRecursion.Trait$G);

// Box/unbox axiom for Tclass.TailRecursion.Trait?
axiom (forall TailRecursion.Trait$G: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TailRecursion.Trait?(TailRecursion.Trait$G)) } 
  $IsBox(bx, Tclass.TailRecursion.Trait?(TailRecursion.Trait$G))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TailRecursion.Trait?(TailRecursion.Trait$G)));

// $Is axiom for trait Trait
axiom (forall TailRecursion.Trait$G: Ty, $o: ref :: 
  { $Is($o, Tclass.TailRecursion.Trait?(TailRecursion.Trait$G)) } 
  $Is($o, Tclass.TailRecursion.Trait?(TailRecursion.Trait$G))
     <==> $o == null || implements$TailRecursion.Trait(dtype($o), TailRecursion.Trait$G));

// $IsAlloc axiom for trait Trait
axiom (forall TailRecursion.Trait$G: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TailRecursion.Trait?(TailRecursion.Trait$G), $h) } 
  $IsAlloc($o, Tclass.TailRecursion.Trait?(TailRecursion.Trait$G), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TailRecursion.Trait(ty: Ty, TailRecursion.Trait$G: Ty) : bool;

const TailRecursion.Trait.h: Field
uses {
axiom FDim(TailRecursion.Trait.h) == 0
   && FieldOfDecl(class.TailRecursion.Trait?, field$h) == TailRecursion.Trait.h
   && !$IsGhostField(TailRecursion.Trait.h);
}

// Trait.h: Type axiom
axiom (forall TailRecursion.Trait$G: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, TailRecursion.Trait.h), Tclass.TailRecursion.Trait?(TailRecursion.Trait$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass.TailRecursion.Trait?(TailRecursion.Trait$G))
     ==> $IsBox(read($h, $o, TailRecursion.Trait.h), TailRecursion.Trait$G));

// Trait.h: Allocation axiom
axiom (forall TailRecursion.Trait$G: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, TailRecursion.Trait.h), Tclass.TailRecursion.Trait?(TailRecursion.Trait$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass.TailRecursion.Trait?(TailRecursion.Trait$G))
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, TailRecursion.Trait.h), TailRecursion.Trait$G, $h));

const TailRecursion.Trait.K: Field
uses {
axiom FDim(TailRecursion.Trait.K) == 0
   && FieldOfDecl(class.TailRecursion.Trait?, field$K) == TailRecursion.Trait.K
   && !$IsGhostField(TailRecursion.Trait.K);
}

// Trait.K: Type axiom
axiom (forall TailRecursion.Trait$G: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, TailRecursion.Trait.K), Tclass.TailRecursion.Trait?(TailRecursion.Trait$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass.TailRecursion.Trait?(TailRecursion.Trait$G))
     ==> $IsBox(read($h, $o, TailRecursion.Trait.K), TailRecursion.Trait$G));

// Trait.K: Allocation axiom
axiom (forall TailRecursion.Trait$G: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, TailRecursion.Trait.K), Tclass.TailRecursion.Trait?(TailRecursion.Trait$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass.TailRecursion.Trait?(TailRecursion.Trait$G))
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, TailRecursion.Trait.K), TailRecursion.Trait$G, $h));

// function declaration for TailRecursion.Trait.Id
function TailRecursion.Trait.Id(TailRecursion.Trait$G: Ty, this: ref, g#0: Box) : Box;

function TailRecursion.Trait.Id#canCall(TailRecursion.Trait$G: Ty, this: ref, g#0: Box) : bool;

function Tclass.TailRecursion.Trait(Ty) : Ty;

const unique Tagclass.TailRecursion.Trait: TyTag;

// Tclass.TailRecursion.Trait Tag
axiom (forall TailRecursion.Trait$G: Ty :: 
  { Tclass.TailRecursion.Trait(TailRecursion.Trait$G) } 
  Tag(Tclass.TailRecursion.Trait(TailRecursion.Trait$G))
       == Tagclass.TailRecursion.Trait
     && TagFamily(Tclass.TailRecursion.Trait(TailRecursion.Trait$G))
       == tytagFamily$Trait);

function Tclass.TailRecursion.Trait_0(Ty) : Ty;

// Tclass.TailRecursion.Trait injectivity 0
axiom (forall TailRecursion.Trait$G: Ty :: 
  { Tclass.TailRecursion.Trait(TailRecursion.Trait$G) } 
  Tclass.TailRecursion.Trait_0(Tclass.TailRecursion.Trait(TailRecursion.Trait$G))
     == TailRecursion.Trait$G);

// Box/unbox axiom for Tclass.TailRecursion.Trait
axiom (forall TailRecursion.Trait$G: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TailRecursion.Trait(TailRecursion.Trait$G)) } 
  $IsBox(bx, Tclass.TailRecursion.Trait(TailRecursion.Trait$G))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TailRecursion.Trait(TailRecursion.Trait$G)));

// consequence axiom for TailRecursion.Trait.Id
axiom (forall TailRecursion.Trait$G: Ty, this: ref, g#0: Box :: 
  { TailRecursion.Trait.Id(TailRecursion.Trait$G, this, g#0) } 
  TailRecursion.Trait.Id#canCall(TailRecursion.Trait$G, this, g#0)
       || (0 < $FunctionContextHeight
         && 
        this != null
         && $Is(this, Tclass.TailRecursion.Trait(TailRecursion.Trait$G))
         && $IsBox(g#0, TailRecursion.Trait$G))
     ==> $IsBox(TailRecursion.Trait.Id(TailRecursion.Trait$G, this, g#0), TailRecursion.Trait$G));

// alloc consequence axiom for TailRecursion.Trait.Id
axiom (forall $Heap: Heap, TailRecursion.Trait$G: Ty, this: ref, g#0: Box :: 
  { $IsAllocBox(TailRecursion.Trait.Id(TailRecursion.Trait$G, this, g#0), 
      TailRecursion.Trait$G, 
      $Heap) } 
  (TailRecursion.Trait.Id#canCall(TailRecursion.Trait$G, this, g#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $IsAlloc(this, Tclass.TailRecursion.Trait(TailRecursion.Trait$G), $Heap)
           && 
          $IsBox(g#0, TailRecursion.Trait$G)
           && $IsAllocBox(g#0, TailRecursion.Trait$G, $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(TailRecursion.Trait.Id(TailRecursion.Trait$G, this, g#0), 
      TailRecursion.Trait$G, 
      $Heap));

function TailRecursion.Trait.Id#requires(Ty, ref, Box) : bool;

// #requires axiom for TailRecursion.Trait.Id
axiom (forall TailRecursion.Trait$G: Ty, this: ref, g#0: Box :: 
  { TailRecursion.Trait.Id#requires(TailRecursion.Trait$G, this, g#0) } 
  this != null
       && $Is(this, Tclass.TailRecursion.Trait(TailRecursion.Trait$G))
       && $IsBox(g#0, TailRecursion.Trait$G)
     ==> TailRecursion.Trait.Id#requires(TailRecursion.Trait$G, this, g#0) == true);

// definition axiom for TailRecursion.Trait.Id (revealed)
axiom {:id "id1095"} (forall TailRecursion.Trait$G: Ty, this: ref, g#0: Box :: 
  { TailRecursion.Trait.Id(TailRecursion.Trait$G, this, g#0) } 
  TailRecursion.Trait.Id#canCall(TailRecursion.Trait$G, this, g#0)
       || (
        this != null
         && $Is(this, Tclass.TailRecursion.Trait(TailRecursion.Trait$G))
         && $IsBox(g#0, TailRecursion.Trait$G))
     ==> TailRecursion.Trait.Id(TailRecursion.Trait$G, this, g#0) == g#0);

// definition axiom for TailRecursion.Trait.Id for all literals (revealed)
axiom {:id "id1096"} (forall TailRecursion.Trait$G: Ty, this: ref, g#0: Box :: 
  {:weight 3} { TailRecursion.Trait.Id(TailRecursion.Trait$G, Lit(this), Lit(g#0)) } 
  TailRecursion.Trait.Id#canCall(TailRecursion.Trait$G, Lit(this), Lit(g#0))
       || (
        this != null
         && $Is(this, Tclass.TailRecursion.Trait(TailRecursion.Trait$G))
         && $IsBox(g#0, TailRecursion.Trait$G))
     ==> TailRecursion.Trait.Id(TailRecursion.Trait$G, Lit(this), Lit(g#0)) == Lit(g#0));

// function declaration for TailRecursion.Trait.Combine
function TailRecursion.Trait.Combine(TailRecursion.Trait$G: Ty, this: ref, g0#0: Box, g1#0: Box) : Box;

function TailRecursion.Trait.Combine#canCall(TailRecursion.Trait$G: Ty, this: ref, g0#0: Box, g1#0: Box) : bool;

// consequence axiom for TailRecursion.Trait.Combine
axiom (forall TailRecursion.Trait$G: Ty, this: ref, g0#0: Box, g1#0: Box :: 
  { TailRecursion.Trait.Combine(TailRecursion.Trait$G, this, g0#0, g1#0) } 
  TailRecursion.Trait.Combine#canCall(TailRecursion.Trait$G, this, g0#0, g1#0)
       || (0 < $FunctionContextHeight
         && 
        this != null
         && $Is(this, Tclass.TailRecursion.Trait(TailRecursion.Trait$G))
         && $IsBox(g0#0, TailRecursion.Trait$G)
         && $IsBox(g1#0, TailRecursion.Trait$G))
     ==> $IsBox(TailRecursion.Trait.Combine(TailRecursion.Trait$G, this, g0#0, g1#0), 
      TailRecursion.Trait$G));

// alloc consequence axiom for TailRecursion.Trait.Combine
axiom (forall $Heap: Heap, TailRecursion.Trait$G: Ty, this: ref, g0#0: Box, g1#0: Box :: 
  { $IsAllocBox(TailRecursion.Trait.Combine(TailRecursion.Trait$G, this, g0#0, g1#0), 
      TailRecursion.Trait$G, 
      $Heap) } 
  (TailRecursion.Trait.Combine#canCall(TailRecursion.Trait$G, this, g0#0, g1#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $IsAlloc(this, Tclass.TailRecursion.Trait(TailRecursion.Trait$G), $Heap)
           && 
          $IsBox(g0#0, TailRecursion.Trait$G)
           && $IsAllocBox(g0#0, TailRecursion.Trait$G, $Heap)
           && 
          $IsBox(g1#0, TailRecursion.Trait$G)
           && $IsAllocBox(g1#0, TailRecursion.Trait$G, $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(TailRecursion.Trait.Combine(TailRecursion.Trait$G, this, g0#0, g1#0), 
      TailRecursion.Trait$G, 
      $Heap));

function TailRecursion.Trait.Combine#requires(Ty, ref, Box, Box) : bool;

// #requires axiom for TailRecursion.Trait.Combine
axiom (forall TailRecursion.Trait$G: Ty, this: ref, g0#0: Box, g1#0: Box :: 
  { TailRecursion.Trait.Combine#requires(TailRecursion.Trait$G, this, g0#0, g1#0) } 
  this != null
       && $Is(this, Tclass.TailRecursion.Trait(TailRecursion.Trait$G))
       && $IsBox(g0#0, TailRecursion.Trait$G)
       && $IsBox(g1#0, TailRecursion.Trait$G)
     ==> TailRecursion.Trait.Combine#requires(TailRecursion.Trait$G, this, g0#0, g1#0)
       == true);

// function declaration for TailRecursion.Trait.Daisy
function TailRecursion.Trait.Daisy(TailRecursion.Trait$G: Ty, 
    $ly: LayerType, 
    $heap: Heap, 
    this: ref, 
    g#0: Box, 
    n#0: int)
   : Box;

function TailRecursion.Trait.Daisy#canCall(TailRecursion.Trait$G: Ty, $heap: Heap, this: ref, g#0: Box, n#0: int) : bool;

// layer synonym axiom
axiom (forall TailRecursion.Trait$G: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    this: ref, 
    g#0: Box, 
    n#0: int :: 
  { TailRecursion.Trait.Daisy(TailRecursion.Trait$G, $LS($ly), $Heap, this, g#0, n#0) } 
  TailRecursion.Trait.Daisy(TailRecursion.Trait$G, $LS($ly), $Heap, this, g#0, n#0)
     == TailRecursion.Trait.Daisy(TailRecursion.Trait$G, $ly, $Heap, this, g#0, n#0));

// fuel synonym axiom
axiom (forall TailRecursion.Trait$G: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    this: ref, 
    g#0: Box, 
    n#0: int :: 
  { TailRecursion.Trait.Daisy(TailRecursion.Trait$G, AsFuelBottom($ly), $Heap, this, g#0, n#0) } 
  TailRecursion.Trait.Daisy(TailRecursion.Trait$G, $ly, $Heap, this, g#0, n#0)
     == TailRecursion.Trait.Daisy(TailRecursion.Trait$G, $LZ, $Heap, this, g#0, n#0));

// frame axiom for TailRecursion.Trait.Daisy
axiom (forall TailRecursion.Trait$G: Ty, 
    $ly: LayerType, 
    $h0: Heap, 
    $h1: Heap, 
    this: ref, 
    g#0: Box, 
    n#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TailRecursion.Trait.Daisy(TailRecursion.Trait$G, $ly, $h1, this, g#0, n#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.TailRecursion.Trait(TailRecursion.Trait$G))
       && (TailRecursion.Trait.Daisy#canCall(TailRecursion.Trait$G, $h0, this, g#0, n#0)
         || ($IsBox(g#0, TailRecursion.Trait$G) && LitInt(0) <= n#0))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TailRecursion.Trait.Daisy(TailRecursion.Trait$G, $ly, $h0, this, g#0, n#0)
       == TailRecursion.Trait.Daisy(TailRecursion.Trait$G, $ly, $h1, this, g#0, n#0));

// consequence axiom for TailRecursion.Trait.Daisy
axiom (forall TailRecursion.Trait$G: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    this: ref, 
    g#0: Box, 
    n#0: int :: 
  { TailRecursion.Trait.Daisy(TailRecursion.Trait$G, $ly, $Heap, this, g#0, n#0) } 
  TailRecursion.Trait.Daisy#canCall(TailRecursion.Trait$G, $Heap, this, g#0, n#0)
       || (0 < $FunctionContextHeight
         && 
        $IsGoodHeap($Heap)
         && 
        this != null
         && 
        $Is(this, Tclass.TailRecursion.Trait(TailRecursion.Trait$G))
         && $IsAlloc(this, Tclass.TailRecursion.Trait(TailRecursion.Trait$G), $Heap)
         && 
        $IsBox(g#0, TailRecursion.Trait$G)
         && $IsAllocBox(g#0, TailRecursion.Trait$G, $Heap)
         && LitInt(0) <= n#0)
     ==> $IsBox(TailRecursion.Trait.Daisy(TailRecursion.Trait$G, $ly, $Heap, this, g#0, n#0), 
      TailRecursion.Trait$G));

// alloc consequence axiom for TailRecursion.Trait.Daisy
axiom (forall TailRecursion.Trait$G: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    this: ref, 
    g#0: Box, 
    n#0: int :: 
  { $IsAllocBox(TailRecursion.Trait.Daisy(TailRecursion.Trait$G, $ly, $Heap, this, g#0, n#0), 
      TailRecursion.Trait$G, 
      $Heap) } 
  TailRecursion.Trait.Daisy#canCall(TailRecursion.Trait$G, $Heap, this, g#0, n#0)
       || (0 < $FunctionContextHeight
         && 
        $IsGoodHeap($Heap)
         && this != null
         && $IsAlloc(this, Tclass.TailRecursion.Trait(TailRecursion.Trait$G), $Heap)
         && 
        $IsBox(g#0, TailRecursion.Trait$G)
         && $IsAllocBox(g#0, TailRecursion.Trait$G, $Heap)
         && LitInt(0) <= n#0)
     ==> $IsAllocBox(TailRecursion.Trait.Daisy(TailRecursion.Trait$G, $ly, $Heap, this, g#0, n#0), 
      TailRecursion.Trait$G, 
      $Heap));

function TailRecursion.Trait.Daisy#requires(Ty, LayerType, Heap, ref, Box, int) : bool;

// #requires axiom for TailRecursion.Trait.Daisy
axiom (forall TailRecursion.Trait$G: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    this: ref, 
    g#0: Box, 
    n#0: int :: 
  { TailRecursion.Trait.Daisy#requires(TailRecursion.Trait$G, $ly, $Heap, this, g#0, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.TailRecursion.Trait(TailRecursion.Trait$G))
       && $IsAlloc(this, Tclass.TailRecursion.Trait(TailRecursion.Trait$G), $Heap)
       && $IsBox(g#0, TailRecursion.Trait$G)
       && LitInt(0) <= n#0
     ==> TailRecursion.Trait.Daisy#requires(TailRecursion.Trait$G, $ly, $Heap, this, g#0, n#0)
       == true);

function TailRecursion.Trait.Id#Handle(TailRecursion.Trait$G: Ty, self: ref) : HandleType;

axiom (forall TailRecursion.Trait$G: Ty, $self: ref, $heap: Heap, $fh$1x#0: Box :: 
  { Apply1(TailRecursion.Trait$G, 
      TailRecursion.Trait$G, 
      $heap, 
      TailRecursion.Trait.Id#Handle(TailRecursion.Trait$G, $self), 
      $fh$1x#0) } 
  Apply1(TailRecursion.Trait$G, 
      TailRecursion.Trait$G, 
      $heap, 
      TailRecursion.Trait.Id#Handle(TailRecursion.Trait$G, $self), 
      $fh$1x#0)
     == TailRecursion.Trait.Id(TailRecursion.Trait$G, $self, $fh$1x#0));

axiom (forall TailRecursion.Trait$G: Ty, $self: ref, $heap: Heap, $fh$1x#0: Box :: 
  { Requires1(TailRecursion.Trait$G, 
      TailRecursion.Trait$G, 
      $heap, 
      TailRecursion.Trait.Id#Handle(TailRecursion.Trait$G, $self), 
      $fh$1x#0) } 
  Requires1(TailRecursion.Trait$G, 
      TailRecursion.Trait$G, 
      $heap, 
      TailRecursion.Trait.Id#Handle(TailRecursion.Trait$G, $self), 
      $fh$1x#0)
     == TailRecursion.Trait.Id#requires(TailRecursion.Trait$G, $self, $fh$1x#0));

axiom (forall $bx: Box, TailRecursion.Trait$G: Ty, $self: ref, $heap: Heap, $fh$1x#0: Box :: 
  { Set#IsMember(Reads1(TailRecursion.Trait$G, 
        TailRecursion.Trait$G, 
        $heap, 
        TailRecursion.Trait.Id#Handle(TailRecursion.Trait$G, $self), 
        $fh$1x#0), 
      $bx) } 
  Set#IsMember(Reads1(TailRecursion.Trait$G, 
        TailRecursion.Trait$G, 
        $heap, 
        TailRecursion.Trait.Id#Handle(TailRecursion.Trait$G, $self), 
        $fh$1x#0), 
      $bx)
     == false);

axiom (forall TailRecursion.Trait$G: Ty, $self: ref, $heap: Heap, $fh$1x#0: Box :: 
  { TailRecursion.Trait.Id(TailRecursion.Trait$G, $self, $fh$1x#0), $IsGoodHeap($heap) } 
  TailRecursion.Trait.Id(TailRecursion.Trait$G, $self, $fh$1x#0)
     == Apply1(TailRecursion.Trait$G, 
      TailRecursion.Trait$G, 
      $heap, 
      TailRecursion.Trait.Id#Handle(TailRecursion.Trait$G, $self), 
      $fh$1x#0));

// definition axiom for TailRecursion.Trait.Daisy (revealed)
axiom {:id "id1097"} (forall TailRecursion.Trait$G: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    this: ref, 
    g#0: Box, 
    n#0: int :: 
  { TailRecursion.Trait.Daisy(TailRecursion.Trait$G, $LS($ly), $Heap, this, g#0, n#0), $IsGoodHeap($Heap) } 
  TailRecursion.Trait.Daisy#canCall(TailRecursion.Trait$G, $Heap, this, g#0, n#0)
       || (
        $IsGoodHeap($Heap)
         && 
        this != null
         && 
        $Is(this, Tclass.TailRecursion.Trait(TailRecursion.Trait$G))
         && $IsAlloc(this, Tclass.TailRecursion.Trait(TailRecursion.Trait$G), $Heap)
         && $IsBox(g#0, TailRecursion.Trait$G)
         && LitInt(0) <= n#0)
     ==> (n#0 != LitInt(0)
         ==> (n#0 == LitInt(1)
             ==> (var f#1 := TailRecursion.Trait.Id#Handle(TailRecursion.Trait$G, this); 
              TailRecursion.Trait.Combine#canCall(TailRecursion.Trait$G, 
                this, 
                Apply1(TailRecursion.Trait$G, 
                  TailRecursion.Trait$G, 
                  $Heap, 
                  f#1, 
                  read($Heap, this, TailRecursion.Trait.h)), 
                Apply1(TailRecursion.Trait$G, 
                  TailRecursion.Trait$G, 
                  $Heap, 
                  f#1, 
                  read($Heap, this, TailRecursion.Trait.K)))))
           && (n#0 != LitInt(1)
             ==> TailRecursion.Trait.Daisy#canCall(TailRecursion.Trait$G, $Heap, this, g#0, n#0 - 2)))
       && TailRecursion.Trait.Daisy(TailRecursion.Trait$G, $LS($ly), $Heap, this, g#0, n#0)
         == (if n#0 == LitInt(0)
           then g#0
           else (if n#0 == LitInt(1)
             then (var f#1 := TailRecursion.Trait.Id#Handle(TailRecursion.Trait$G, this); 
              TailRecursion.Trait.Combine(TailRecursion.Trait$G, 
                this, 
                Apply1(TailRecursion.Trait$G, 
                  TailRecursion.Trait$G, 
                  $Heap, 
                  f#1, 
                  read($Heap, this, TailRecursion.Trait.h)), 
                Apply1(TailRecursion.Trait$G, 
                  TailRecursion.Trait$G, 
                  $Heap, 
                  f#1, 
                  read($Heap, this, TailRecursion.Trait.K))))
             else TailRecursion.Trait.Daisy(TailRecursion.Trait$G, $ly, $Heap, this, g#0, n#0 - 2))));

// $Is axiom for non-null type TailRecursion.Trait
axiom (forall TailRecursion.Trait$G: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.TailRecursion.Trait(TailRecursion.Trait$G)) } 
    { $Is(c#0, Tclass.TailRecursion.Trait?(TailRecursion.Trait$G)) } 
  $Is(c#0, Tclass.TailRecursion.Trait(TailRecursion.Trait$G))
     <==> $Is(c#0, Tclass.TailRecursion.Trait?(TailRecursion.Trait$G)) && c#0 != null);

// $IsAlloc axiom for non-null type TailRecursion.Trait
axiom (forall TailRecursion.Trait$G: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TailRecursion.Trait(TailRecursion.Trait$G), $h) } 
    { $IsAlloc(c#0, Tclass.TailRecursion.Trait?(TailRecursion.Trait$G), $h) } 
  $IsAlloc(c#0, Tclass.TailRecursion.Trait(TailRecursion.Trait$G), $h)
     <==> $IsAlloc(c#0, Tclass.TailRecursion.Trait?(TailRecursion.Trait$G), $h));

const unique class.TailRecursion.Class?: ClassName;

function Tclass.TailRecursion.Class?() : Ty
uses {
// Tclass.TailRecursion.Class? Tag
axiom Tag(Tclass.TailRecursion.Class?()) == Tagclass.TailRecursion.Class?
   && TagFamily(Tclass.TailRecursion.Class?()) == tytagFamily$Class;
axiom implements$TailRecursion.Trait(Tclass.TailRecursion.Class?(), TInt);
}

const unique Tagclass.TailRecursion.Class?: TyTag;

// Box/unbox axiom for Tclass.TailRecursion.Class?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TailRecursion.Class?()) } 
  $IsBox(bx, Tclass.TailRecursion.Class?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TailRecursion.Class?()));

// $Is axiom for class Class
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TailRecursion.Class?()) } 
  $Is($o, Tclass.TailRecursion.Class?())
     <==> $o == null || dtype($o) == Tclass.TailRecursion.Class?());

// $IsAlloc axiom for class Class
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TailRecursion.Class?(), $h) } 
  $IsAlloc($o, Tclass.TailRecursion.Class?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for TailRecursion.Class.Combine
function TailRecursion.Class.Combine(this: ref, g0#0: int, g1#0: int) : int;

function TailRecursion.Class.Combine#canCall(this: ref, g0#0: int, g1#0: int) : bool;

function Tclass.TailRecursion.Class() : Ty
uses {
// Tclass.TailRecursion.Class Tag
axiom Tag(Tclass.TailRecursion.Class()) == Tagclass.TailRecursion.Class
   && TagFamily(Tclass.TailRecursion.Class()) == tytagFamily$Class;
}

const unique Tagclass.TailRecursion.Class: TyTag;

// Box/unbox axiom for Tclass.TailRecursion.Class
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TailRecursion.Class()) } 
  $IsBox(bx, Tclass.TailRecursion.Class())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TailRecursion.Class()));

function TailRecursion.Class.Combine#requires(ref, int, int) : bool;

// #requires axiom for TailRecursion.Class.Combine
axiom (forall this: ref, g0#0: int, g1#0: int :: 
  { TailRecursion.Class.Combine#requires(this, g0#0, g1#0) } 
  this != null && $Is(this, Tclass.TailRecursion.Class())
     ==> TailRecursion.Class.Combine#requires(this, g0#0, g1#0) == true);

// definition axiom for TailRecursion.Class.Combine (revealed)
axiom {:id "id1098"} (forall this: ref, g0#0: int, g1#0: int :: 
  { TailRecursion.Class.Combine(this, g0#0, g1#0) } 
  TailRecursion.Class.Combine#canCall(this, g0#0, g1#0)
       || (this != null && $Is(this, Tclass.TailRecursion.Class()))
     ==> TailRecursion.Class.Combine(this, g0#0, g1#0) == g0#0 + g1#0);

// definition axiom for TailRecursion.Class.Combine for decreasing-related literals (revealed)
axiom {:id "id1099"} (forall this: ref, g0#0: int, g1#0: int :: 
  {:weight 3} { TailRecursion.Class.Combine(this, LitInt(g0#0), LitInt(g1#0)) } 
  TailRecursion.Class.Combine#canCall(this, LitInt(g0#0), LitInt(g1#0))
       || (this != null && $Is(this, Tclass.TailRecursion.Class()))
     ==> TailRecursion.Class.Combine(this, LitInt(g0#0), LitInt(g1#0))
       == LitInt(g0#0 + g1#0));

// definition axiom for TailRecursion.Class.Combine for all literals (revealed)
axiom {:id "id1100"} (forall this: ref, g0#0: int, g1#0: int :: 
  {:weight 3} { TailRecursion.Class.Combine(Lit(this), LitInt(g0#0), LitInt(g1#0)) } 
  TailRecursion.Class.Combine#canCall(Lit(this), LitInt(g0#0), LitInt(g1#0))
       || (this != null && $Is(this, Tclass.TailRecursion.Class()))
     ==> TailRecursion.Class.Combine(Lit(this), LitInt(g0#0), LitInt(g1#0))
       == LitInt(g0#0 + g1#0));

// override axiom for TailRecursion.Trait.Combine in class TailRecursion.Class
axiom (forall this: ref, g0#0: int, g1#0: int :: 
  { TailRecursion.Trait.Combine(TInt, this, $Box(g0#0), $Box(g1#0)), $Is(this, Tclass.TailRecursion.Class()) } 
    { TailRecursion.Trait.Combine(TInt, this, $Box(g0#0), $Box(g1#0)), TailRecursion.Class.Combine(this, g0#0, g1#0) } 
  TailRecursion.Class.Combine#canCall(this, g0#0, g1#0)
       || (this != null && $Is(this, Tclass.TailRecursion.Class()))
     ==> TailRecursion.Trait.Combine(TInt, this, $Box(g0#0), $Box(g1#0))
       == $Box(TailRecursion.Class.Combine(this, g0#0, g1#0)));

// $Is axiom for non-null type TailRecursion.Class
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TailRecursion.Class()) } 
    { $Is(c#0, Tclass.TailRecursion.Class?()) } 
  $Is(c#0, Tclass.TailRecursion.Class())
     <==> $Is(c#0, Tclass.TailRecursion.Class?()) && c#0 != null);

// $IsAlloc axiom for non-null type TailRecursion.Class
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TailRecursion.Class(), $h) } 
    { $IsAlloc(c#0, Tclass.TailRecursion.Class?(), $h) } 
  $IsAlloc(c#0, Tclass.TailRecursion.Class(), $h)
     <==> $IsAlloc(c#0, Tclass.TailRecursion.Class?(), $h));

const unique class.ObjectEquality.__default: ClassName;

procedure {:verboseName "ObjectEquality.Test (well-formedness)"} CheckWellFormed$$ObjectEquality.__default.Test();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ObjectEquality.Test (call)"} Call$$ObjectEquality.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for ObjectEquality._default.Eq
function ObjectEquality.__default.Eq(ObjectEquality._default.Eq$U: Ty, u#0: Box, v#0: Box) : bool;

function ObjectEquality.__default.Eq#canCall(ObjectEquality._default.Eq$U: Ty, u#0: Box, v#0: Box) : bool;

function ObjectEquality.__default.Eq#requires(Ty, Box, Box) : bool;

// #requires axiom for ObjectEquality.__default.Eq
axiom (forall ObjectEquality._default.Eq$U: Ty, u#0: Box, v#0: Box :: 
  { ObjectEquality.__default.Eq#requires(ObjectEquality._default.Eq$U, u#0, v#0) } 
  $IsBox(u#0, ObjectEquality._default.Eq$U)
       && $IsBox(v#0, ObjectEquality._default.Eq$U)
     ==> ObjectEquality.__default.Eq#requires(ObjectEquality._default.Eq$U, u#0, v#0)
       == true);

// definition axiom for ObjectEquality.__default.Eq (revealed)
axiom {:id "id1101"} (forall ObjectEquality._default.Eq$U: Ty, u#0: Box, v#0: Box :: 
  { ObjectEquality.__default.Eq(ObjectEquality._default.Eq$U, u#0, v#0) } 
  ObjectEquality.__default.Eq#canCall(ObjectEquality._default.Eq$U, u#0, v#0)
       || ($IsBox(u#0, ObjectEquality._default.Eq$U)
         && $IsBox(v#0, ObjectEquality._default.Eq$U))
     ==> ObjectEquality.__default.Eq(ObjectEquality._default.Eq$U, u#0, v#0)
       == 
      (u#0
       == v#0));

// definition axiom for ObjectEquality.__default.Eq for all literals (revealed)
axiom {:id "id1102"} (forall ObjectEquality._default.Eq$U: Ty, u#0: Box, v#0: Box :: 
  {:weight 3} { ObjectEquality.__default.Eq(ObjectEquality._default.Eq$U, Lit(u#0), Lit(v#0)) } 
  ObjectEquality.__default.Eq#canCall(ObjectEquality._default.Eq$U, Lit(u#0), Lit(v#0))
       || ($IsBox(u#0, ObjectEquality._default.Eq$U)
         && $IsBox(v#0, ObjectEquality._default.Eq$U))
     ==> ObjectEquality.__default.Eq(ObjectEquality._default.Eq$U, Lit(u#0), Lit(v#0))
       == 
      (Lit(u#0)
       == Lit(v#0)));

const unique class.ObjectEquality.A?: ClassName;

function Tclass.ObjectEquality.A?() : Ty
uses {
// Tclass.ObjectEquality.A? Tag
axiom Tag(Tclass.ObjectEquality.A?()) == Tagclass.ObjectEquality.A?
   && TagFamily(Tclass.ObjectEquality.A?()) == tytagFamily$A;
}

const unique Tagclass.ObjectEquality.A?: TyTag;

// Box/unbox axiom for Tclass.ObjectEquality.A?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ObjectEquality.A?()) } 
  $IsBox(bx, Tclass.ObjectEquality.A?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.ObjectEquality.A?()));

// $Is axiom for trait A
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ObjectEquality.A?()) } 
  $Is($o, Tclass.ObjectEquality.A?())
     <==> $o == null || implements$ObjectEquality.A(dtype($o)));

// $IsAlloc axiom for trait A
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ObjectEquality.A?(), $h) } 
  $IsAlloc($o, Tclass.ObjectEquality.A?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$ObjectEquality.A(ty: Ty) : bool;

function Tclass.ObjectEquality.A() : Ty
uses {
// Tclass.ObjectEquality.A Tag
axiom Tag(Tclass.ObjectEquality.A()) == Tagclass.ObjectEquality.A
   && TagFamily(Tclass.ObjectEquality.A()) == tytagFamily$A;
}

const unique Tagclass.ObjectEquality.A: TyTag;

// Box/unbox axiom for Tclass.ObjectEquality.A
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ObjectEquality.A()) } 
  $IsBox(bx, Tclass.ObjectEquality.A())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.ObjectEquality.A()));

// $Is axiom for non-null type ObjectEquality.A
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ObjectEquality.A()) } 
    { $Is(c#0, Tclass.ObjectEquality.A?()) } 
  $Is(c#0, Tclass.ObjectEquality.A())
     <==> $Is(c#0, Tclass.ObjectEquality.A?()) && c#0 != null);

// $IsAlloc axiom for non-null type ObjectEquality.A
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ObjectEquality.A(), $h) } 
    { $IsAlloc(c#0, Tclass.ObjectEquality.A?(), $h) } 
  $IsAlloc(c#0, Tclass.ObjectEquality.A(), $h)
     <==> $IsAlloc(c#0, Tclass.ObjectEquality.A?(), $h));

const unique class.ObjectEquality.B?: ClassName;

function Tclass.ObjectEquality.B?() : Ty
uses {
// Tclass.ObjectEquality.B? Tag
axiom Tag(Tclass.ObjectEquality.B?()) == Tagclass.ObjectEquality.B?
   && TagFamily(Tclass.ObjectEquality.B?()) == tytagFamily$B;
}

const unique Tagclass.ObjectEquality.B?: TyTag;

// Box/unbox axiom for Tclass.ObjectEquality.B?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ObjectEquality.B?()) } 
  $IsBox(bx, Tclass.ObjectEquality.B?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.ObjectEquality.B?()));

// $Is axiom for trait B
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ObjectEquality.B?()) } 
  $Is($o, Tclass.ObjectEquality.B?())
     <==> $o == null || implements$ObjectEquality.B(dtype($o)));

// $IsAlloc axiom for trait B
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ObjectEquality.B?(), $h) } 
  $IsAlloc($o, Tclass.ObjectEquality.B?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$ObjectEquality.B(ty: Ty) : bool;

function Tclass.ObjectEquality.B() : Ty
uses {
// Tclass.ObjectEquality.B Tag
axiom Tag(Tclass.ObjectEquality.B()) == Tagclass.ObjectEquality.B
   && TagFamily(Tclass.ObjectEquality.B()) == tytagFamily$B;
}

const unique Tagclass.ObjectEquality.B: TyTag;

// Box/unbox axiom for Tclass.ObjectEquality.B
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ObjectEquality.B()) } 
  $IsBox(bx, Tclass.ObjectEquality.B())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.ObjectEquality.B()));

// $Is axiom for non-null type ObjectEquality.B
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ObjectEquality.B()) } 
    { $Is(c#0, Tclass.ObjectEquality.B?()) } 
  $Is(c#0, Tclass.ObjectEquality.B())
     <==> $Is(c#0, Tclass.ObjectEquality.B?()) && c#0 != null);

// $IsAlloc axiom for non-null type ObjectEquality.B
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ObjectEquality.B(), $h) } 
    { $IsAlloc(c#0, Tclass.ObjectEquality.B?(), $h) } 
  $IsAlloc(c#0, Tclass.ObjectEquality.B(), $h)
     <==> $IsAlloc(c#0, Tclass.ObjectEquality.B?(), $h));

const unique class.ObjectEquality.C?: ClassName;

function Tclass.ObjectEquality.C?() : Ty
uses {
// Tclass.ObjectEquality.C? Tag
axiom Tag(Tclass.ObjectEquality.C?()) == Tagclass.ObjectEquality.C?
   && TagFamily(Tclass.ObjectEquality.C?()) == tytagFamily$C;
axiom implements$ObjectEquality.B(Tclass.ObjectEquality.C?());
}

const unique Tagclass.ObjectEquality.C?: TyTag;

// Box/unbox axiom for Tclass.ObjectEquality.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ObjectEquality.C?()) } 
  $IsBox(bx, Tclass.ObjectEquality.C?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.ObjectEquality.C?()));

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ObjectEquality.C?()) } 
  $Is($o, Tclass.ObjectEquality.C?())
     <==> $o == null || dtype($o) == Tclass.ObjectEquality.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ObjectEquality.C?(), $h) } 
  $IsAlloc($o, Tclass.ObjectEquality.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.ObjectEquality.C() : Ty
uses {
// Tclass.ObjectEquality.C Tag
axiom Tag(Tclass.ObjectEquality.C()) == Tagclass.ObjectEquality.C
   && TagFamily(Tclass.ObjectEquality.C()) == tytagFamily$C;
}

const unique Tagclass.ObjectEquality.C: TyTag;

// Box/unbox axiom for Tclass.ObjectEquality.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ObjectEquality.C()) } 
  $IsBox(bx, Tclass.ObjectEquality.C())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.ObjectEquality.C()));

// $Is axiom for non-null type ObjectEquality.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ObjectEquality.C()) } 
    { $Is(c#0, Tclass.ObjectEquality.C?()) } 
  $Is(c#0, Tclass.ObjectEquality.C())
     <==> $Is(c#0, Tclass.ObjectEquality.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type ObjectEquality.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ObjectEquality.C(), $h) } 
    { $IsAlloc(c#0, Tclass.ObjectEquality.C?(), $h) } 
  $IsAlloc(c#0, Tclass.ObjectEquality.C(), $h)
     <==> $IsAlloc(c#0, Tclass.ObjectEquality.C?(), $h));

const unique class.ObjectEquality.D?: ClassName;

function Tclass.ObjectEquality.D?() : Ty
uses {
// Tclass.ObjectEquality.D? Tag
axiom Tag(Tclass.ObjectEquality.D?()) == Tagclass.ObjectEquality.D?
   && TagFamily(Tclass.ObjectEquality.D?()) == tytagFamily$D;
axiom implements$ObjectEquality.B(Tclass.ObjectEquality.D?());
}

const unique Tagclass.ObjectEquality.D?: TyTag;

// Box/unbox axiom for Tclass.ObjectEquality.D?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ObjectEquality.D?()) } 
  $IsBox(bx, Tclass.ObjectEquality.D?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.ObjectEquality.D?()));

// $Is axiom for class D
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ObjectEquality.D?()) } 
  $Is($o, Tclass.ObjectEquality.D?())
     <==> $o == null || dtype($o) == Tclass.ObjectEquality.D?());

// $IsAlloc axiom for class D
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ObjectEquality.D?(), $h) } 
  $IsAlloc($o, Tclass.ObjectEquality.D?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.ObjectEquality.D() : Ty
uses {
// Tclass.ObjectEquality.D Tag
axiom Tag(Tclass.ObjectEquality.D()) == Tagclass.ObjectEquality.D
   && TagFamily(Tclass.ObjectEquality.D()) == tytagFamily$D;
}

const unique Tagclass.ObjectEquality.D: TyTag;

// Box/unbox axiom for Tclass.ObjectEquality.D
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ObjectEquality.D()) } 
  $IsBox(bx, Tclass.ObjectEquality.D())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.ObjectEquality.D()));

// $Is axiom for non-null type ObjectEquality.D
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ObjectEquality.D()) } 
    { $Is(c#0, Tclass.ObjectEquality.D?()) } 
  $Is(c#0, Tclass.ObjectEquality.D())
     <==> $Is(c#0, Tclass.ObjectEquality.D?()) && c#0 != null);

// $IsAlloc axiom for non-null type ObjectEquality.D
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ObjectEquality.D(), $h) } 
    { $IsAlloc(c#0, Tclass.ObjectEquality.D?(), $h) } 
  $IsAlloc(c#0, Tclass.ObjectEquality.D(), $h)
     <==> $IsAlloc(c#0, Tclass.ObjectEquality.D?(), $h));

const unique class.RedeclaringMembers.__default: ClassName;

const unique class.RedeclaringMembers.A?: ClassName;

function Tclass.RedeclaringMembers.A?() : Ty
uses {
// Tclass.RedeclaringMembers.A? Tag
axiom Tag(Tclass.RedeclaringMembers.A?()) == Tagclass.RedeclaringMembers.A?
   && TagFamily(Tclass.RedeclaringMembers.A?()) == tytagFamily$A;
}

const unique Tagclass.RedeclaringMembers.A?: TyTag;

// Box/unbox axiom for Tclass.RedeclaringMembers.A?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.RedeclaringMembers.A?()) } 
  $IsBox(bx, Tclass.RedeclaringMembers.A?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.RedeclaringMembers.A?()));

// $Is axiom for trait A
axiom (forall $o: ref :: 
  { $Is($o, Tclass.RedeclaringMembers.A?()) } 
  $Is($o, Tclass.RedeclaringMembers.A?())
     <==> $o == null || implements$RedeclaringMembers.A(dtype($o)));

// $IsAlloc axiom for trait A
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.RedeclaringMembers.A?(), $h) } 
  $IsAlloc($o, Tclass.RedeclaringMembers.A?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$RedeclaringMembers.A(ty: Ty) : bool;

const RedeclaringMembers.A.Foo: Field
uses {
axiom FDim(RedeclaringMembers.A.Foo) == 0
   && FieldOfDecl(class.RedeclaringMembers.A?, field$Foo) == RedeclaringMembers.A.Foo
   && $IsGhostField(RedeclaringMembers.A.Foo);
}

// A.Foo: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, RedeclaringMembers.A.Foo)): int } 
  $IsGoodHeap($h) && $o != null && $Is($o, Tclass.RedeclaringMembers.A?())
     ==> $Is($Unbox(read($h, $o, RedeclaringMembers.A.Foo)): int, TInt));

// A.Foo: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, RedeclaringMembers.A.Foo)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass.RedeclaringMembers.A?())
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, RedeclaringMembers.A.Foo)): int, TInt, $h));

// function declaration for RedeclaringMembers.A.Valid
function RedeclaringMembers.A.Valid(this: ref) : bool;

function RedeclaringMembers.A.Valid#canCall(this: ref) : bool;

function Tclass.RedeclaringMembers.A() : Ty
uses {
// Tclass.RedeclaringMembers.A Tag
axiom Tag(Tclass.RedeclaringMembers.A()) == Tagclass.RedeclaringMembers.A
   && TagFamily(Tclass.RedeclaringMembers.A()) == tytagFamily$A;
}

const unique Tagclass.RedeclaringMembers.A: TyTag;

// Box/unbox axiom for Tclass.RedeclaringMembers.A
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.RedeclaringMembers.A()) } 
  $IsBox(bx, Tclass.RedeclaringMembers.A())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.RedeclaringMembers.A()));

function RedeclaringMembers.A.Valid#requires(ref) : bool;

// #requires axiom for RedeclaringMembers.A.Valid
axiom (forall this: ref :: 
  { RedeclaringMembers.A.Valid#requires(this) } 
  this != null && $Is(this, Tclass.RedeclaringMembers.A())
     ==> RedeclaringMembers.A.Valid#requires(this) == true);

// $Is axiom for non-null type RedeclaringMembers.A
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.RedeclaringMembers.A()) } 
    { $Is(c#0, Tclass.RedeclaringMembers.A?()) } 
  $Is(c#0, Tclass.RedeclaringMembers.A())
     <==> $Is(c#0, Tclass.RedeclaringMembers.A?()) && c#0 != null);

// $IsAlloc axiom for non-null type RedeclaringMembers.A
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.RedeclaringMembers.A(), $h) } 
    { $IsAlloc(c#0, Tclass.RedeclaringMembers.A?(), $h) } 
  $IsAlloc(c#0, Tclass.RedeclaringMembers.A(), $h)
     <==> $IsAlloc(c#0, Tclass.RedeclaringMembers.A?(), $h));

const unique class.RedeclaringMembers.B?: ClassName;

function Tclass.RedeclaringMembers.B?() : Ty
uses {
// Tclass.RedeclaringMembers.B? Tag
axiom Tag(Tclass.RedeclaringMembers.B?()) == Tagclass.RedeclaringMembers.B?
   && TagFamily(Tclass.RedeclaringMembers.B?()) == tytagFamily$B;
}

const unique Tagclass.RedeclaringMembers.B?: TyTag;

// Box/unbox axiom for Tclass.RedeclaringMembers.B?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.RedeclaringMembers.B?()) } 
  $IsBox(bx, Tclass.RedeclaringMembers.B?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.RedeclaringMembers.B?()));

// $Is axiom for trait B
axiom (forall $o: ref :: 
  { $Is($o, Tclass.RedeclaringMembers.B?()) } 
  $Is($o, Tclass.RedeclaringMembers.B?())
     <==> $o == null || implements$RedeclaringMembers.B(dtype($o)));

// $IsAlloc axiom for trait B
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.RedeclaringMembers.B?(), $h) } 
  $IsAlloc($o, Tclass.RedeclaringMembers.B?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$RedeclaringMembers.B(ty: Ty) : bool;

// function declaration for RedeclaringMembers.B.Valid
function RedeclaringMembers.B.Valid(this: ref) : bool;

function RedeclaringMembers.B.Valid#canCall(this: ref) : bool;

function Tclass.RedeclaringMembers.B() : Ty
uses {
// Tclass.RedeclaringMembers.B Tag
axiom Tag(Tclass.RedeclaringMembers.B()) == Tagclass.RedeclaringMembers.B
   && TagFamily(Tclass.RedeclaringMembers.B()) == tytagFamily$B;
}

const unique Tagclass.RedeclaringMembers.B: TyTag;

// Box/unbox axiom for Tclass.RedeclaringMembers.B
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.RedeclaringMembers.B()) } 
  $IsBox(bx, Tclass.RedeclaringMembers.B())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.RedeclaringMembers.B()));

function RedeclaringMembers.B.Valid#requires(ref) : bool;

// #requires axiom for RedeclaringMembers.B.Valid
axiom (forall this: ref :: 
  { RedeclaringMembers.B.Valid#requires(this) } 
  this != null && $Is(this, Tclass.RedeclaringMembers.B())
     ==> RedeclaringMembers.B.Valid#requires(this) == true);

// override axiom for RedeclaringMembers.A.Valid in class RedeclaringMembers.B
axiom (forall this: ref :: 
  { RedeclaringMembers.A.Valid(this), $Is(this, Tclass.RedeclaringMembers.B()) } 
    { RedeclaringMembers.A.Valid(this), RedeclaringMembers.B.Valid(this) } 
  RedeclaringMembers.B.Valid#canCall(this)
       || (this != null && $Is(this, Tclass.RedeclaringMembers.B()))
     ==> RedeclaringMembers.A.Valid(this) == RedeclaringMembers.B.Valid(this));

// $Is axiom for non-null type RedeclaringMembers.B
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.RedeclaringMembers.B()) } 
    { $Is(c#0, Tclass.RedeclaringMembers.B?()) } 
  $Is(c#0, Tclass.RedeclaringMembers.B())
     <==> $Is(c#0, Tclass.RedeclaringMembers.B?()) && c#0 != null);

// $IsAlloc axiom for non-null type RedeclaringMembers.B
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.RedeclaringMembers.B(), $h) } 
    { $IsAlloc(c#0, Tclass.RedeclaringMembers.B?(), $h) } 
  $IsAlloc(c#0, Tclass.RedeclaringMembers.B(), $h)
     <==> $IsAlloc(c#0, Tclass.RedeclaringMembers.B?(), $h));

const unique class.RedeclaringMembers.C?: ClassName;

function Tclass.RedeclaringMembers.C?() : Ty
uses {
// Tclass.RedeclaringMembers.C? Tag
axiom Tag(Tclass.RedeclaringMembers.C?()) == Tagclass.RedeclaringMembers.C?
   && TagFamily(Tclass.RedeclaringMembers.C?()) == tytagFamily$C;
axiom implements$RedeclaringMembers.B(Tclass.RedeclaringMembers.C?());
}

const unique Tagclass.RedeclaringMembers.C?: TyTag;

// Box/unbox axiom for Tclass.RedeclaringMembers.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.RedeclaringMembers.C?()) } 
  $IsBox(bx, Tclass.RedeclaringMembers.C?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.RedeclaringMembers.C?()));

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass.RedeclaringMembers.C?()) } 
  $Is($o, Tclass.RedeclaringMembers.C?())
     <==> $o == null || dtype($o) == Tclass.RedeclaringMembers.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.RedeclaringMembers.C?(), $h) } 
  $IsAlloc($o, Tclass.RedeclaringMembers.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for RedeclaringMembers.C.Valid
function RedeclaringMembers.C.Valid(this: ref) : bool;

function RedeclaringMembers.C.Valid#canCall(this: ref) : bool;

function Tclass.RedeclaringMembers.C() : Ty
uses {
// Tclass.RedeclaringMembers.C Tag
axiom Tag(Tclass.RedeclaringMembers.C()) == Tagclass.RedeclaringMembers.C
   && TagFamily(Tclass.RedeclaringMembers.C()) == tytagFamily$C;
}

const unique Tagclass.RedeclaringMembers.C: TyTag;

// Box/unbox axiom for Tclass.RedeclaringMembers.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.RedeclaringMembers.C()) } 
  $IsBox(bx, Tclass.RedeclaringMembers.C())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.RedeclaringMembers.C()));

function RedeclaringMembers.C.Valid#requires(ref) : bool;

// #requires axiom for RedeclaringMembers.C.Valid
axiom (forall this: ref :: 
  { RedeclaringMembers.C.Valid#requires(this) } 
  this != null && $Is(this, Tclass.RedeclaringMembers.C())
     ==> RedeclaringMembers.C.Valid#requires(this) == true);

// definition axiom for RedeclaringMembers.C.Valid (revealed)
axiom {:id "id1103"} (forall this: ref :: 
  { RedeclaringMembers.C.Valid(this) } 
  RedeclaringMembers.C.Valid#canCall(this)
       || (this != null && $Is(this, Tclass.RedeclaringMembers.C()))
     ==> RedeclaringMembers.C.Valid(this) == Lit(true));

// definition axiom for RedeclaringMembers.C.Valid for all literals (revealed)
axiom {:id "id1104"} (forall this: ref :: 
  {:weight 3} { RedeclaringMembers.C.Valid(Lit(this)) } 
  RedeclaringMembers.C.Valid#canCall(Lit(this))
       || (this != null && $Is(this, Tclass.RedeclaringMembers.C()))
     ==> RedeclaringMembers.C.Valid(Lit(this)) == Lit(true));

// override axiom for RedeclaringMembers.B.Valid in class RedeclaringMembers.C
axiom (forall this: ref :: 
  { RedeclaringMembers.B.Valid(this), $Is(this, Tclass.RedeclaringMembers.C()) } 
    { RedeclaringMembers.B.Valid(this), RedeclaringMembers.C.Valid(this) } 
  RedeclaringMembers.C.Valid#canCall(this)
       || (this != null && $Is(this, Tclass.RedeclaringMembers.C()))
     ==> RedeclaringMembers.B.Valid(this) == RedeclaringMembers.C.Valid(this));

// $Is axiom for non-null type RedeclaringMembers.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.RedeclaringMembers.C()) } 
    { $Is(c#0, Tclass.RedeclaringMembers.C?()) } 
  $Is(c#0, Tclass.RedeclaringMembers.C())
     <==> $Is(c#0, Tclass.RedeclaringMembers.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type RedeclaringMembers.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.RedeclaringMembers.C(), $h) } 
    { $IsAlloc(c#0, Tclass.RedeclaringMembers.C?(), $h) } 
  $IsAlloc(c#0, Tclass.RedeclaringMembers.C(), $h)
     <==> $IsAlloc(c#0, Tclass.RedeclaringMembers.C?(), $h));

// type axiom for trait parent: X? extends Y?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.OtherModule.X?()) } 
  $Is($o, Tclass.OtherModule.X?()) ==> $Is($o, Tclass.OtherModule.Y?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.OtherModule.X?()) } 
  $IsBox(bx, Tclass.OtherModule.X?()) ==> $IsBox(bx, Tclass.OtherModule.Y?()));

// allocation axiom for trait parent: X? extends Y?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.OtherModule.X?(), $heap) } 
  $IsAlloc($o, Tclass.OtherModule.X?(), $heap)
     ==> $IsAlloc($o, Tclass.OtherModule.Y?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.OtherModule.X?(), $h) } 
  $IsAllocBox(bx, Tclass.OtherModule.X?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.OtherModule.Y?(), $h));

// type axiom for trait parent: C? extends J?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestFields.C?()) } 
  $Is($o, Tclass.TestFields.C?()) ==> $Is($o, Tclass.TestFields.J?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestFields.C?()) } 
  $IsBox(bx, Tclass.TestFields.C?()) ==> $IsBox(bx, Tclass.TestFields.J?()));

// allocation axiom for trait parent: C? extends J?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TestFields.C?(), $heap) } 
  $IsAlloc($o, Tclass.TestFields.C?(), $heap)
     ==> $IsAlloc($o, Tclass.TestFields.J?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TestFields.C?(), $h) } 
  $IsAllocBox(bx, Tclass.TestFields.C?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TestFields.J?(), $h));

// type axiom for trait parent: Cl? extends Tr?<Q, int>
axiom (forall GenericBasics.Cl$Q: Ty, $o: ref :: 
  { $Is($o, Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q)) } 
  $Is($o, Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q))
     ==> $Is($o, Tclass.GenericBasics.Tr?(GenericBasics.Cl$Q, TInt)));

axiom (forall GenericBasics.Cl$Q: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q)) } 
  $IsBox(bx, Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q))
     ==> $IsBox(bx, Tclass.GenericBasics.Tr?(GenericBasics.Cl$Q, TInt)));

// allocation axiom for trait parent: Cl? extends Tr?<Q, int>
axiom (forall GenericBasics.Cl$Q: Ty, $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q), $heap) } 
  $IsAlloc($o, Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q), $heap)
     ==> $IsAlloc($o, Tclass.GenericBasics.Tr?(GenericBasics.Cl$Q, TInt), $heap));

axiom (forall GenericBasics.Cl$Q: Ty, bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q), $h) } 
  $IsAllocBox(bx, Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q), $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.GenericBasics.Tr?(GenericBasics.Cl$Q, TInt), $h));

// type axiom for trait parent: Mega? extends Tr?<Q, int>
axiom (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    $o: ref :: 
  { $Is($o, 
      Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)) } 
  $Is($o, 
      Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
     ==> $Is($o, Tclass.GenericBasics.Tr?(GenericBasics.Mega$Q, TInt)));

axiom (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)) } 
  $IsBox(bx, 
      Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
     ==> $IsBox(bx, Tclass.GenericBasics.Tr?(GenericBasics.Mega$Q, TInt)));

// allocation axiom for trait parent: Mega? extends Tr?<Q, int>
axiom (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    $o: ref, 
    $heap: Heap :: 
  { $IsAlloc($o, 
      Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
      $heap) } 
  $IsAlloc($o, 
      Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
      $heap)
     ==> $IsAlloc($o, Tclass.GenericBasics.Tr?(GenericBasics.Mega$Q, TInt), $heap));

axiom (forall GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    bx: Box, 
    $h: Heap :: 
  { $IsAllocBox(bx, 
      Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
      $h) } 
  $IsAllocBox(bx, 
        Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
        $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.GenericBasics.Tr?(GenericBasics.Mega$Q, TInt), $h));

// type axiom for trait parent: IdentityImpl? extends Identity?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.Generics.IdentityImpl?()) } 
  $Is($o, Tclass.Generics.IdentityImpl?())
     ==> $Is($o, Tclass.Generics.Identity?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Generics.IdentityImpl?()) } 
  $IsBox(bx, Tclass.Generics.IdentityImpl?())
     ==> $IsBox(bx, Tclass.Generics.Identity?()));

// allocation axiom for trait parent: IdentityImpl? extends Identity?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.Generics.IdentityImpl?(), $heap) } 
  $IsAlloc($o, Tclass.Generics.IdentityImpl?(), $heap)
     ==> $IsAlloc($o, Tclass.Generics.Identity?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.Generics.IdentityImpl?(), $h) } 
  $IsAllocBox(bx, Tclass.Generics.IdentityImpl?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.Generics.Identity?(), $h));

// type axiom for trait parent: ComposedFunction? extends Function?<S, RR>
axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty, 
    $o: ref :: 
  { $Is($o, 
      Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR)) } 
  $Is($o, 
      Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR))
     ==> $Is($o, 
      Tclass.Generics.Function?(Generics.ComposedFunction$S, Generics.ComposedFunction$RR)));

axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR)) } 
  $IsBox(bx, 
      Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR))
     ==> $IsBox(bx, 
      Tclass.Generics.Function?(Generics.ComposedFunction$S, Generics.ComposedFunction$RR)));

// allocation axiom for trait parent: ComposedFunction? extends Function?<S, RR>
axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty, 
    $o: ref, 
    $heap: Heap :: 
  { $IsAlloc($o, 
      Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR), 
      $heap) } 
  $IsAlloc($o, 
      Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR), 
      $heap)
     ==> $IsAlloc($o, 
      Tclass.Generics.Function?(Generics.ComposedFunction$S, Generics.ComposedFunction$RR), 
      $heap));

axiom (forall Generics.ComposedFunction$S: Ty, 
    Generics.ComposedFunction$T: Ty, 
    Generics.ComposedFunction$RR: Ty, 
    bx: Box, 
    $h: Heap :: 
  { $IsAllocBox(bx, 
      Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
        Generics.ComposedFunction$T, 
        Generics.ComposedFunction$RR), 
      $h) } 
  $IsAllocBox(bx, 
        Tclass.Generics.ComposedFunction?(Generics.ComposedFunction$S, 
          Generics.ComposedFunction$T, 
          Generics.ComposedFunction$RR), 
        $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, 
      Tclass.Generics.Function?(Generics.ComposedFunction$S, Generics.ComposedFunction$RR), 
      $h));

// type axiom for trait parent: Triple? extends Function?<int, int>
axiom (forall $o: ref :: 
  { $Is($o, Tclass.Generics.Triple?()) } 
  $Is($o, Tclass.Generics.Triple?())
     ==> $Is($o, Tclass.Generics.Function?(TInt, TInt)));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Generics.Triple?()) } 
  $IsBox(bx, Tclass.Generics.Triple?())
     ==> $IsBox(bx, Tclass.Generics.Function?(TInt, TInt)));

// allocation axiom for trait parent: Triple? extends Function?<int, int>
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.Generics.Triple?(), $heap) } 
  $IsAlloc($o, Tclass.Generics.Triple?(), $heap)
     ==> $IsAlloc($o, Tclass.Generics.Function?(TInt, TInt), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.Generics.Triple?(), $h) } 
  $IsAllocBox(bx, Tclass.Generics.Triple?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.Generics.Function?(TInt, TInt), $h));

// type axiom for trait parent: C? extends object?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TraitsExtendingTraits.C?()) } 
  $Is($o, Tclass.TraitsExtendingTraits.C?()) ==> $Is($o, Tclass._System.object?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.C?()) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.C?())
     ==> $IsBox(bx, Tclass._System.object?()));

// allocation axiom for trait parent: C? extends object?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TraitsExtendingTraits.C?(), $heap) } 
  $IsAlloc($o, Tclass.TraitsExtendingTraits.C?(), $heap)
     ==> $IsAlloc($o, Tclass._System.object?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TraitsExtendingTraits.C?(), $h) } 
  $IsAllocBox(bx, Tclass.TraitsExtendingTraits.C?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._System.object?(), $h));

// type axiom for trait parent: K? extends A?<Y, Odd>
axiom (forall TraitsExtendingTraits.K$Y: Ty, $o: ref :: 
  { $Is($o, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y)) } 
  $Is($o, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y))
     ==> $Is($o, 
      Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.K$Y, Tclass.TraitsExtendingTraits.Odd())));

axiom (forall TraitsExtendingTraits.K$Y: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y)) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y))
     ==> $IsBox(bx, 
      Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.K$Y, Tclass.TraitsExtendingTraits.Odd())));

// allocation axiom for trait parent: K? extends A?<Y, Odd>
axiom (forall TraitsExtendingTraits.K$Y: Ty, $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y), $heap) } 
  $IsAlloc($o, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y), $heap)
     ==> $IsAlloc($o, 
      Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.K$Y, Tclass.TraitsExtendingTraits.Odd()), 
      $heap));

axiom (forall TraitsExtendingTraits.K$Y: Ty, bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y), $h) } 
  $IsAllocBox(bx, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.K$Y), $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, 
      Tclass.TraitsExtendingTraits.A?(TraitsExtendingTraits.K$Y, Tclass.TraitsExtendingTraits.Odd()), 
      $h));

// type axiom for trait parent: M? extends B?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TraitsExtendingTraits.M?()) } 
  $Is($o, Tclass.TraitsExtendingTraits.M?())
     ==> $Is($o, Tclass.TraitsExtendingTraits.B?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.M?()) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.M?())
     ==> $IsBox(bx, Tclass.TraitsExtendingTraits.B?()));

// allocation axiom for trait parent: M? extends B?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TraitsExtendingTraits.M?(), $heap) } 
  $IsAlloc($o, Tclass.TraitsExtendingTraits.M?(), $heap)
     ==> $IsAlloc($o, Tclass.TraitsExtendingTraits.B?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TraitsExtendingTraits.M?(), $h) } 
  $IsAllocBox(bx, Tclass.TraitsExtendingTraits.M?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TraitsExtendingTraits.B?(), $h));

// type axiom for trait parent: M? extends object?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TraitsExtendingTraits.M?()) } 
  $Is($o, Tclass.TraitsExtendingTraits.M?()) ==> $Is($o, Tclass._System.object?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.M?()) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.M?())
     ==> $IsBox(bx, Tclass._System.object?()));

// allocation axiom for trait parent: M? extends object?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TraitsExtendingTraits.M?(), $heap) } 
  $IsAlloc($o, Tclass.TraitsExtendingTraits.M?(), $heap)
     ==> $IsAlloc($o, Tclass._System.object?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TraitsExtendingTraits.M?(), $h) } 
  $IsAllocBox(bx, Tclass.TraitsExtendingTraits.M?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._System.object?(), $h));

// type axiom for trait parent: N? extends B?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TraitsExtendingTraits.N?()) } 
  $Is($o, Tclass.TraitsExtendingTraits.N?())
     ==> $Is($o, Tclass.TraitsExtendingTraits.B?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.N?()) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.N?())
     ==> $IsBox(bx, Tclass.TraitsExtendingTraits.B?()));

// allocation axiom for trait parent: N? extends B?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TraitsExtendingTraits.N?(), $heap) } 
  $IsAlloc($o, Tclass.TraitsExtendingTraits.N?(), $heap)
     ==> $IsAlloc($o, Tclass.TraitsExtendingTraits.B?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TraitsExtendingTraits.N?(), $h) } 
  $IsAllocBox(bx, Tclass.TraitsExtendingTraits.N?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TraitsExtendingTraits.B?(), $h));

// type axiom for trait parent: N? extends C?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TraitsExtendingTraits.N?()) } 
  $Is($o, Tclass.TraitsExtendingTraits.N?())
     ==> $Is($o, Tclass.TraitsExtendingTraits.C?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.N?()) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.N?())
     ==> $IsBox(bx, Tclass.TraitsExtendingTraits.C?()));

// allocation axiom for trait parent: N? extends C?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TraitsExtendingTraits.N?(), $heap) } 
  $IsAlloc($o, Tclass.TraitsExtendingTraits.N?(), $heap)
     ==> $IsAlloc($o, Tclass.TraitsExtendingTraits.C?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TraitsExtendingTraits.N?(), $h) } 
  $IsAllocBox(bx, Tclass.TraitsExtendingTraits.N?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TraitsExtendingTraits.C?(), $h));

// type axiom for trait parent: G? extends K?<X>
axiom (forall TraitsExtendingTraits.G$X: Ty, $o: ref :: 
  { $Is($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X)) } 
  $Is($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X))
     ==> $Is($o, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.G$X)));

axiom (forall TraitsExtendingTraits.G$X: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X)) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X))
     ==> $IsBox(bx, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.G$X)));

// allocation axiom for trait parent: G? extends K?<X>
axiom (forall TraitsExtendingTraits.G$X: Ty, $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $heap) } 
  $IsAlloc($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $heap)
     ==> $IsAlloc($o, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.G$X), $heap));

axiom (forall TraitsExtendingTraits.G$X: Ty, bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $h) } 
  $IsAllocBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.G$X), $h));

// type axiom for trait parent: G? extends K?<X>
axiom (forall TraitsExtendingTraits.G$X: Ty, $o: ref :: 
  { $Is($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X)) } 
  $Is($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X))
     ==> $Is($o, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.G$X)));

axiom (forall TraitsExtendingTraits.G$X: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X)) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X))
     ==> $IsBox(bx, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.G$X)));

// allocation axiom for trait parent: G? extends K?<X>
axiom (forall TraitsExtendingTraits.G$X: Ty, $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $heap) } 
  $IsAlloc($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $heap)
     ==> $IsAlloc($o, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.G$X), $heap));

axiom (forall TraitsExtendingTraits.G$X: Ty, bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $h) } 
  $IsAllocBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TraitsExtendingTraits.K?(TraitsExtendingTraits.G$X), $h));

// type axiom for trait parent: G? extends M?
axiom (forall TraitsExtendingTraits.G$X: Ty, $o: ref :: 
  { $Is($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X)) } 
  $Is($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X))
     ==> $Is($o, Tclass.TraitsExtendingTraits.M?()));

axiom (forall TraitsExtendingTraits.G$X: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X)) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X))
     ==> $IsBox(bx, Tclass.TraitsExtendingTraits.M?()));

// allocation axiom for trait parent: G? extends M?
axiom (forall TraitsExtendingTraits.G$X: Ty, $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $heap) } 
  $IsAlloc($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $heap)
     ==> $IsAlloc($o, Tclass.TraitsExtendingTraits.M?(), $heap));

axiom (forall TraitsExtendingTraits.G$X: Ty, bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $h) } 
  $IsAllocBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TraitsExtendingTraits.M?(), $h));

// type axiom for trait parent: G? extends object?
axiom (forall TraitsExtendingTraits.G$X: Ty, $o: ref :: 
  { $Is($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X)) } 
  $Is($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X))
     ==> $Is($o, Tclass._System.object?()));

axiom (forall TraitsExtendingTraits.G$X: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X)) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X))
     ==> $IsBox(bx, Tclass._System.object?()));

// allocation axiom for trait parent: G? extends object?
axiom (forall TraitsExtendingTraits.G$X: Ty, $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $heap) } 
  $IsAlloc($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $heap)
     ==> $IsAlloc($o, Tclass._System.object?(), $heap));

axiom (forall TraitsExtendingTraits.G$X: Ty, bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $h) } 
  $IsAllocBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._System.object?(), $h));

// type axiom for trait parent: G? extends N?
axiom (forall TraitsExtendingTraits.G$X: Ty, $o: ref :: 
  { $Is($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X)) } 
  $Is($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X))
     ==> $Is($o, Tclass.TraitsExtendingTraits.N?()));

axiom (forall TraitsExtendingTraits.G$X: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X)) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X))
     ==> $IsBox(bx, Tclass.TraitsExtendingTraits.N?()));

// allocation axiom for trait parent: G? extends N?
axiom (forall TraitsExtendingTraits.G$X: Ty, $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $heap) } 
  $IsAlloc($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $heap)
     ==> $IsAlloc($o, Tclass.TraitsExtendingTraits.N?(), $heap));

axiom (forall TraitsExtendingTraits.G$X: Ty, bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $h) } 
  $IsAllocBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TraitsExtendingTraits.N?(), $h));

// type axiom for trait parent: G? extends C?
axiom (forall TraitsExtendingTraits.G$X: Ty, $o: ref :: 
  { $Is($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X)) } 
  $Is($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X))
     ==> $Is($o, Tclass.TraitsExtendingTraits.C?()));

axiom (forall TraitsExtendingTraits.G$X: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X)) } 
  $IsBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X))
     ==> $IsBox(bx, Tclass.TraitsExtendingTraits.C?()));

// allocation axiom for trait parent: G? extends C?
axiom (forall TraitsExtendingTraits.G$X: Ty, $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $heap) } 
  $IsAlloc($o, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $heap)
     ==> $IsAlloc($o, Tclass.TraitsExtendingTraits.C?(), $heap));

axiom (forall TraitsExtendingTraits.G$X: Ty, bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $h) } 
  $IsAllocBox(bx, Tclass.TraitsExtendingTraits.G?(TraitsExtendingTraits.G$X), $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TraitsExtendingTraits.C?(), $h));

// type axiom for trait parent: Trait? extends UberTrait?<int, seq<T>, seq<R>>
axiom (forall TypeDescriptorTests.Trait$T: Ty, TypeDescriptorTests.Trait$R: Ty, $o: ref :: 
  { $Is($o, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R)) } 
  $Is($o, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R))
     ==> $Is($o, 
      Tclass.TypeDescriptorTests.UberTrait?(TInt, TSeq(TypeDescriptorTests.Trait$T), TSeq(TypeDescriptorTests.Trait$R))));

axiom (forall TypeDescriptorTests.Trait$T: Ty, TypeDescriptorTests.Trait$R: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R)) } 
  $IsBox(bx, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R))
     ==> $IsBox(bx, 
      Tclass.TypeDescriptorTests.UberTrait?(TInt, TSeq(TypeDescriptorTests.Trait$T), TSeq(TypeDescriptorTests.Trait$R))));

// allocation axiom for trait parent: Trait? extends UberTrait?<int, seq<T>, seq<R>>
axiom (forall TypeDescriptorTests.Trait$T: Ty, 
    TypeDescriptorTests.Trait$R: Ty, 
    $o: ref, 
    $heap: Heap :: 
  { $IsAlloc($o, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R), 
      $heap) } 
  $IsAlloc($o, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R), 
      $heap)
     ==> $IsAlloc($o, 
      Tclass.TypeDescriptorTests.UberTrait?(TInt, TSeq(TypeDescriptorTests.Trait$T), TSeq(TypeDescriptorTests.Trait$R)), 
      $heap));

axiom (forall TypeDescriptorTests.Trait$T: Ty, 
    TypeDescriptorTests.Trait$R: Ty, 
    bx: Box, 
    $h: Heap :: 
  { $IsAllocBox(bx, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R), 
      $h) } 
  $IsAllocBox(bx, 
        Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R), 
        $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, 
      Tclass.TypeDescriptorTests.UberTrait?(TInt, TSeq(TypeDescriptorTests.Trait$T), TSeq(TypeDescriptorTests.Trait$R)), 
      $h));

// type axiom for trait parent: Composition? extends Trait?<Sx, RRx>
axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty, 
    $o: ref :: 
  { $Is($o, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx)) } 
  $Is($o, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx))
     ==> $Is($o, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Composition$Sx, TypeDescriptorTests.Composition$RRx)));

axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx)) } 
  $IsBox(bx, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx))
     ==> $IsBox(bx, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Composition$Sx, TypeDescriptorTests.Composition$RRx)));

// allocation axiom for trait parent: Composition? extends Trait?<Sx, RRx>
axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty, 
    $o: ref, 
    $heap: Heap :: 
  { $IsAlloc($o, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx), 
      $heap) } 
  $IsAlloc($o, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx), 
      $heap)
     ==> $IsAlloc($o, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Composition$Sx, TypeDescriptorTests.Composition$RRx), 
      $heap));

axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty, 
    bx: Box, 
    $h: Heap :: 
  { $IsAllocBox(bx, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx), 
      $h) } 
  $IsAllocBox(bx, 
        Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
          TypeDescriptorTests.Composition$Tx, 
          TypeDescriptorTests.Composition$RRx), 
        $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Composition$Sx, TypeDescriptorTests.Composition$RRx), 
      $h));

// type axiom for trait parent: Composition? extends Trait?<Sx, RRx>
axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty, 
    $o: ref :: 
  { $Is($o, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx)) } 
  $Is($o, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx))
     ==> $Is($o, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Composition$Sx, TypeDescriptorTests.Composition$RRx)));

axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx)) } 
  $IsBox(bx, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx))
     ==> $IsBox(bx, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Composition$Sx, TypeDescriptorTests.Composition$RRx)));

// allocation axiom for trait parent: Composition? extends Trait?<Sx, RRx>
axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty, 
    $o: ref, 
    $heap: Heap :: 
  { $IsAlloc($o, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx), 
      $heap) } 
  $IsAlloc($o, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx), 
      $heap)
     ==> $IsAlloc($o, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Composition$Sx, TypeDescriptorTests.Composition$RRx), 
      $heap));

axiom (forall TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty, 
    bx: Box, 
    $h: Heap :: 
  { $IsAllocBox(bx, 
      Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
        TypeDescriptorTests.Composition$Tx, 
        TypeDescriptorTests.Composition$RRx), 
      $h) } 
  $IsAllocBox(bx, 
        Tclass.TypeDescriptorTests.Composition?(TypeDescriptorTests.Composition$Sx, 
          TypeDescriptorTests.Composition$Tx, 
          TypeDescriptorTests.Composition$RRx), 
        $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, 
      Tclass.TypeDescriptorTests.Trait?(TypeDescriptorTests.Composition$Sx, TypeDescriptorTests.Composition$RRx), 
      $h));

// type axiom for trait parent: YT? extends XT?<int -> int, int>
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TypeDescriptorTests.YT?()) } 
  $Is($o, Tclass.TypeDescriptorTests.YT?())
     ==> $Is($o, 
      Tclass.TypeDescriptorTests.XT?(Tclass._System.___hTotalFunc1(TInt, TInt), TInt)));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TypeDescriptorTests.YT?()) } 
  $IsBox(bx, Tclass.TypeDescriptorTests.YT?())
     ==> $IsBox(bx, 
      Tclass.TypeDescriptorTests.XT?(Tclass._System.___hTotalFunc1(TInt, TInt), TInt)));

// allocation axiom for trait parent: YT? extends XT?<int -> int, int>
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TypeDescriptorTests.YT?(), $heap) } 
  $IsAlloc($o, Tclass.TypeDescriptorTests.YT?(), $heap)
     ==> $IsAlloc($o, 
      Tclass.TypeDescriptorTests.XT?(Tclass._System.___hTotalFunc1(TInt, TInt), TInt), 
      $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TypeDescriptorTests.YT?(), $h) } 
  $IsAllocBox(bx, Tclass.TypeDescriptorTests.YT?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, 
      Tclass.TypeDescriptorTests.XT?(Tclass._System.___hTotalFunc1(TInt, TInt), TInt), 
      $h));

// type axiom for trait parent: TraitDependencyClass? extends TraitDependency?<int>
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TypeDescriptorTests.TraitDependencyClass?()) } 
  $Is($o, Tclass.TypeDescriptorTests.TraitDependencyClass?())
     ==> $Is($o, Tclass.TypeDescriptorTests.TraitDependency?(TInt)));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TypeDescriptorTests.TraitDependencyClass?()) } 
  $IsBox(bx, Tclass.TypeDescriptorTests.TraitDependencyClass?())
     ==> $IsBox(bx, Tclass.TypeDescriptorTests.TraitDependency?(TInt)));

// allocation axiom for trait parent: TraitDependencyClass? extends TraitDependency?<int>
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TypeDescriptorTests.TraitDependencyClass?(), $heap) } 
  $IsAlloc($o, Tclass.TypeDescriptorTests.TraitDependencyClass?(), $heap)
     ==> $IsAlloc($o, Tclass.TypeDescriptorTests.TraitDependency?(TInt), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TypeDescriptorTests.TraitDependencyClass?(), $h) } 
  $IsAllocBox(bx, Tclass.TypeDescriptorTests.TraitDependencyClass?(), $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TypeDescriptorTests.TraitDependency?(TInt), $h));

// type axiom for trait parent: B? extends A?<XB>
axiom (forall DiamondInitialization.B$XB: Ty, $o: ref :: 
  { $Is($o, Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB)) } 
  $Is($o, Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB))
     ==> $Is($o, Tclass.DiamondInitialization.A?(DiamondInitialization.B$XB)));

axiom (forall DiamondInitialization.B$XB: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB)) } 
  $IsBox(bx, Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB))
     ==> $IsBox(bx, Tclass.DiamondInitialization.A?(DiamondInitialization.B$XB)));

// allocation axiom for trait parent: B? extends A?<XB>
axiom (forall DiamondInitialization.B$XB: Ty, $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB), $heap) } 
  $IsAlloc($o, Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB), $heap)
     ==> $IsAlloc($o, Tclass.DiamondInitialization.A?(DiamondInitialization.B$XB), $heap));

axiom (forall DiamondInitialization.B$XB: Ty, bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB), $h) } 
  $IsAllocBox(bx, Tclass.DiamondInitialization.B?(DiamondInitialization.B$XB), $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.DiamondInitialization.A?(DiamondInitialization.B$XB), $h));

// type axiom for trait parent: C? extends A?<XC>
axiom (forall DiamondInitialization.C$XC: Ty, $o: ref :: 
  { $Is($o, Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC)) } 
  $Is($o, Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC))
     ==> $Is($o, Tclass.DiamondInitialization.A?(DiamondInitialization.C$XC)));

axiom (forall DiamondInitialization.C$XC: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC)) } 
  $IsBox(bx, Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC))
     ==> $IsBox(bx, Tclass.DiamondInitialization.A?(DiamondInitialization.C$XC)));

// allocation axiom for trait parent: C? extends A?<XC>
axiom (forall DiamondInitialization.C$XC: Ty, $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC), $heap) } 
  $IsAlloc($o, Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC), $heap)
     ==> $IsAlloc($o, Tclass.DiamondInitialization.A?(DiamondInitialization.C$XC), $heap));

axiom (forall DiamondInitialization.C$XC: Ty, bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC), $h) } 
  $IsAllocBox(bx, Tclass.DiamondInitialization.C?(DiamondInitialization.C$XC), $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.DiamondInitialization.A?(DiamondInitialization.C$XC), $h));

// type axiom for trait parent: D? extends A?<int>
axiom (forall $o: ref :: 
  { $Is($o, Tclass.DiamondInitialization.D?()) } 
  $Is($o, Tclass.DiamondInitialization.D?())
     ==> $Is($o, Tclass.DiamondInitialization.A?(TInt)));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DiamondInitialization.D?()) } 
  $IsBox(bx, Tclass.DiamondInitialization.D?())
     ==> $IsBox(bx, Tclass.DiamondInitialization.A?(TInt)));

// allocation axiom for trait parent: D? extends A?<int>
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.DiamondInitialization.D?(), $heap) } 
  $IsAlloc($o, Tclass.DiamondInitialization.D?(), $heap)
     ==> $IsAlloc($o, Tclass.DiamondInitialization.A?(TInt), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.DiamondInitialization.D?(), $h) } 
  $IsAllocBox(bx, Tclass.DiamondInitialization.D?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.DiamondInitialization.A?(TInt), $h));

// type axiom for trait parent: E? extends B?<XE>
axiom (forall DiamondInitialization.E$XE: Ty, $o: ref :: 
  { $Is($o, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE)) } 
  $Is($o, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE))
     ==> $Is($o, Tclass.DiamondInitialization.B?(DiamondInitialization.E$XE)));

axiom (forall DiamondInitialization.E$XE: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE)) } 
  $IsBox(bx, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE))
     ==> $IsBox(bx, Tclass.DiamondInitialization.B?(DiamondInitialization.E$XE)));

// allocation axiom for trait parent: E? extends B?<XE>
axiom (forall DiamondInitialization.E$XE: Ty, $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE), $heap) } 
  $IsAlloc($o, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE), $heap)
     ==> $IsAlloc($o, Tclass.DiamondInitialization.B?(DiamondInitialization.E$XE), $heap));

axiom (forall DiamondInitialization.E$XE: Ty, bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE), $h) } 
  $IsAllocBox(bx, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE), $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.DiamondInitialization.B?(DiamondInitialization.E$XE), $h));

// type axiom for trait parent: E? extends C?<XE>
axiom (forall DiamondInitialization.E$XE: Ty, $o: ref :: 
  { $Is($o, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE)) } 
  $Is($o, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE))
     ==> $Is($o, Tclass.DiamondInitialization.C?(DiamondInitialization.E$XE)));

axiom (forall DiamondInitialization.E$XE: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE)) } 
  $IsBox(bx, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE))
     ==> $IsBox(bx, Tclass.DiamondInitialization.C?(DiamondInitialization.E$XE)));

// allocation axiom for trait parent: E? extends C?<XE>
axiom (forall DiamondInitialization.E$XE: Ty, $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE), $heap) } 
  $IsAlloc($o, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE), $heap)
     ==> $IsAlloc($o, Tclass.DiamondInitialization.C?(DiamondInitialization.E$XE), $heap));

axiom (forall DiamondInitialization.E$XE: Ty, bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE), $h) } 
  $IsAllocBox(bx, Tclass.DiamondInitialization.E?(DiamondInitialization.E$XE), $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.DiamondInitialization.C?(DiamondInitialization.E$XE), $h));

// type axiom for trait parent: M? extends B?<int>
axiom (forall $o: ref :: 
  { $Is($o, Tclass.DiamondInitialization.M?()) } 
  $Is($o, Tclass.DiamondInitialization.M?())
     ==> $Is($o, Tclass.DiamondInitialization.B?(TInt)));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DiamondInitialization.M?()) } 
  $IsBox(bx, Tclass.DiamondInitialization.M?())
     ==> $IsBox(bx, Tclass.DiamondInitialization.B?(TInt)));

// allocation axiom for trait parent: M? extends B?<int>
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.DiamondInitialization.M?(), $heap) } 
  $IsAlloc($o, Tclass.DiamondInitialization.M?(), $heap)
     ==> $IsAlloc($o, Tclass.DiamondInitialization.B?(TInt), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.DiamondInitialization.M?(), $h) } 
  $IsAllocBox(bx, Tclass.DiamondInitialization.M?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.DiamondInitialization.B?(TInt), $h));

// type axiom for trait parent: M? extends E?<int>
axiom (forall $o: ref :: 
  { $Is($o, Tclass.DiamondInitialization.M?()) } 
  $Is($o, Tclass.DiamondInitialization.M?())
     ==> $Is($o, Tclass.DiamondInitialization.E?(TInt)));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DiamondInitialization.M?()) } 
  $IsBox(bx, Tclass.DiamondInitialization.M?())
     ==> $IsBox(bx, Tclass.DiamondInitialization.E?(TInt)));

// allocation axiom for trait parent: M? extends E?<int>
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.DiamondInitialization.M?(), $heap) } 
  $IsAlloc($o, Tclass.DiamondInitialization.M?(), $heap)
     ==> $IsAlloc($o, Tclass.DiamondInitialization.E?(TInt), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.DiamondInitialization.M?(), $h) } 
  $IsAllocBox(bx, Tclass.DiamondInitialization.M?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.DiamondInitialization.E?(TInt), $h));

// type axiom for trait parent: M? extends C?<int>
axiom (forall $o: ref :: 
  { $Is($o, Tclass.DiamondInitialization.M?()) } 
  $Is($o, Tclass.DiamondInitialization.M?())
     ==> $Is($o, Tclass.DiamondInitialization.C?(TInt)));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DiamondInitialization.M?()) } 
  $IsBox(bx, Tclass.DiamondInitialization.M?())
     ==> $IsBox(bx, Tclass.DiamondInitialization.C?(TInt)));

// allocation axiom for trait parent: M? extends C?<int>
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.DiamondInitialization.M?(), $heap) } 
  $IsAlloc($o, Tclass.DiamondInitialization.M?(), $heap)
     ==> $IsAlloc($o, Tclass.DiamondInitialization.C?(TInt), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.DiamondInitialization.M?(), $h) } 
  $IsAllocBox(bx, Tclass.DiamondInitialization.M?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.DiamondInitialization.C?(TInt), $h));

// type axiom for trait parent: M? extends D?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.DiamondInitialization.M?()) } 
  $Is($o, Tclass.DiamondInitialization.M?())
     ==> $Is($o, Tclass.DiamondInitialization.D?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DiamondInitialization.M?()) } 
  $IsBox(bx, Tclass.DiamondInitialization.M?())
     ==> $IsBox(bx, Tclass.DiamondInitialization.D?()));

// allocation axiom for trait parent: M? extends D?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.DiamondInitialization.M?(), $heap) } 
  $IsAlloc($o, Tclass.DiamondInitialization.M?(), $heap)
     ==> $IsAlloc($o, Tclass.DiamondInitialization.D?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.DiamondInitialization.M?(), $h) } 
  $IsAllocBox(bx, Tclass.DiamondInitialization.M?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.DiamondInitialization.D?(), $h));

// type axiom for trait parent: M? extends A?<int>
axiom (forall $o: ref :: 
  { $Is($o, Tclass.DiamondInitialization.M?()) } 
  $Is($o, Tclass.DiamondInitialization.M?())
     ==> $Is($o, Tclass.DiamondInitialization.A?(TInt)));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DiamondInitialization.M?()) } 
  $IsBox(bx, Tclass.DiamondInitialization.M?())
     ==> $IsBox(bx, Tclass.DiamondInitialization.A?(TInt)));

// allocation axiom for trait parent: M? extends A?<int>
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.DiamondInitialization.M?(), $heap) } 
  $IsAlloc($o, Tclass.DiamondInitialization.M?(), $heap)
     ==> $IsAlloc($o, Tclass.DiamondInitialization.A?(TInt), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.DiamondInitialization.M?(), $h) } 
  $IsAllocBox(bx, Tclass.DiamondInitialization.M?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.DiamondInitialization.A?(TInt), $h));

// type axiom for trait parent: Class? extends Trait?<int>
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TailRecursion.Class?()) } 
  $Is($o, Tclass.TailRecursion.Class?())
     ==> $Is($o, Tclass.TailRecursion.Trait?(TInt)));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TailRecursion.Class?()) } 
  $IsBox(bx, Tclass.TailRecursion.Class?())
     ==> $IsBox(bx, Tclass.TailRecursion.Trait?(TInt)));

// allocation axiom for trait parent: Class? extends Trait?<int>
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TailRecursion.Class?(), $heap) } 
  $IsAlloc($o, Tclass.TailRecursion.Class?(), $heap)
     ==> $IsAlloc($o, Tclass.TailRecursion.Trait?(TInt), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TailRecursion.Class?(), $h) } 
  $IsAllocBox(bx, Tclass.TailRecursion.Class?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TailRecursion.Trait?(TInt), $h));

// type axiom for trait parent: B? extends A?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ObjectEquality.B?()) } 
  $Is($o, Tclass.ObjectEquality.B?()) ==> $Is($o, Tclass.ObjectEquality.A?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ObjectEquality.B?()) } 
  $IsBox(bx, Tclass.ObjectEquality.B?())
     ==> $IsBox(bx, Tclass.ObjectEquality.A?()));

// allocation axiom for trait parent: B? extends A?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.ObjectEquality.B?(), $heap) } 
  $IsAlloc($o, Tclass.ObjectEquality.B?(), $heap)
     ==> $IsAlloc($o, Tclass.ObjectEquality.A?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.ObjectEquality.B?(), $h) } 
  $IsAllocBox(bx, Tclass.ObjectEquality.B?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.ObjectEquality.A?(), $h));

// type axiom for trait parent: C? extends B?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ObjectEquality.C?()) } 
  $Is($o, Tclass.ObjectEquality.C?()) ==> $Is($o, Tclass.ObjectEquality.B?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ObjectEquality.C?()) } 
  $IsBox(bx, Tclass.ObjectEquality.C?())
     ==> $IsBox(bx, Tclass.ObjectEquality.B?()));

// allocation axiom for trait parent: C? extends B?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.ObjectEquality.C?(), $heap) } 
  $IsAlloc($o, Tclass.ObjectEquality.C?(), $heap)
     ==> $IsAlloc($o, Tclass.ObjectEquality.B?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.ObjectEquality.C?(), $h) } 
  $IsAllocBox(bx, Tclass.ObjectEquality.C?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.ObjectEquality.B?(), $h));

// type axiom for trait parent: D? extends B?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ObjectEquality.D?()) } 
  $Is($o, Tclass.ObjectEquality.D?()) ==> $Is($o, Tclass.ObjectEquality.B?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ObjectEquality.D?()) } 
  $IsBox(bx, Tclass.ObjectEquality.D?())
     ==> $IsBox(bx, Tclass.ObjectEquality.B?()));

// allocation axiom for trait parent: D? extends B?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.ObjectEquality.D?(), $heap) } 
  $IsAlloc($o, Tclass.ObjectEquality.D?(), $heap)
     ==> $IsAlloc($o, Tclass.ObjectEquality.B?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.ObjectEquality.D?(), $h) } 
  $IsAllocBox(bx, Tclass.ObjectEquality.D?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.ObjectEquality.B?(), $h));

// type axiom for trait parent: B? extends A?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.RedeclaringMembers.B?()) } 
  $Is($o, Tclass.RedeclaringMembers.B?())
     ==> $Is($o, Tclass.RedeclaringMembers.A?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.RedeclaringMembers.B?()) } 
  $IsBox(bx, Tclass.RedeclaringMembers.B?())
     ==> $IsBox(bx, Tclass.RedeclaringMembers.A?()));

// allocation axiom for trait parent: B? extends A?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.RedeclaringMembers.B?(), $heap) } 
  $IsAlloc($o, Tclass.RedeclaringMembers.B?(), $heap)
     ==> $IsAlloc($o, Tclass.RedeclaringMembers.A?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.RedeclaringMembers.B?(), $h) } 
  $IsAllocBox(bx, Tclass.RedeclaringMembers.B?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.RedeclaringMembers.A?(), $h));

// type axiom for trait parent: C? extends B?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.RedeclaringMembers.C?()) } 
  $Is($o, Tclass.RedeclaringMembers.C?())
     ==> $Is($o, Tclass.RedeclaringMembers.B?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.RedeclaringMembers.C?()) } 
  $IsBox(bx, Tclass.RedeclaringMembers.C?())
     ==> $IsBox(bx, Tclass.RedeclaringMembers.B?()));

// allocation axiom for trait parent: C? extends B?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.RedeclaringMembers.C?(), $heap) } 
  $IsAlloc($o, Tclass.RedeclaringMembers.C?(), $heap)
     ==> $IsAlloc($o, Tclass.RedeclaringMembers.B?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.RedeclaringMembers.C?(), $h) } 
  $IsAllocBox(bx, Tclass.RedeclaringMembers.C?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.RedeclaringMembers.B?(), $h));

// type axiom for trait parent: CC? extends TT?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.CC?()) } 
  $Is($o, Tclass._module.CC?()) ==> $Is($o, Tclass._module.TT?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.CC?()) } 
  $IsBox(bx, Tclass._module.CC?()) ==> $IsBox(bx, Tclass._module.TT?()));

// allocation axiom for trait parent: CC? extends TT?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.CC?(), $heap) } 
  $IsAlloc($o, Tclass._module.CC?(), $heap)
     ==> $IsAlloc($o, Tclass._module.TT?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.CC?(), $h) } 
  $IsAllocBox(bx, Tclass._module.CC?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.TT?(), $h));

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

const unique tytagFamily$TT: TyTagFamily;

const unique tytagFamily$CC: TyTagFamily;

const unique tytagFamily$Y: TyTagFamily;

const unique tytagFamily$X: TyTagFamily;

const unique tytagFamily$J: TyTagFamily;

const unique tytagFamily$C: TyTagFamily;

const unique tytagFamily$Tr: TyTagFamily;

const unique tytagFamily$Cl: TyTagFamily;

const unique tytagFamily$Mega: TyTagFamily;

const unique tytagFamily$Identity: TyTagFamily;

const unique tytagFamily$IdentityImpl: TyTagFamily;

const unique tytagFamily$Function: TyTagFamily;

const unique tytagFamily$ComposedFunction: TyTagFamily;

const unique tytagFamily$Triple: TyTagFamily;

const unique tytagFamily$Odd: TyTagFamily;

const unique tytagFamily$A: TyTagFamily;

const unique tytagFamily$B: TyTagFamily;

const unique tytagFamily$K: TyTagFamily;

const unique tytagFamily$M: TyTagFamily;

const unique tytagFamily$N: TyTagFamily;

const unique tytagFamily$G: TyTagFamily;

const unique tytagFamily$UberTrait: TyTagFamily;

const unique tytagFamily$Trait: TyTagFamily;

const unique tytagFamily$Composition: TyTagFamily;

const unique tytagFamily$XT: TyTagFamily;

const unique tytagFamily$YT: TyTagFamily;

const unique tytagFamily$TraitDependency: TyTagFamily;

const unique tytagFamily$TraitDependencyClass: TyTagFamily;

const unique tytagFamily$D: TyTagFamily;

const unique tytagFamily$E: TyTagFamily;

const unique tytagFamily$Class: TyTagFamily;

const unique field$f: NameFamily;

const unique field$xyz: NameFamily;

const unique field$y0: NameFamily;

const unique field$b: NameFamily;

const unique field$u: NameFamily;

const unique field$x: NameFamily;

const unique field$h: NameFamily;

const unique field$K: NameFamily;

const unique field$Foo: NameFamily;
