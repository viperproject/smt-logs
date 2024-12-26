// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy

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



procedure {:verboseName "GenericBasics.Test (correctness)"} Impl$$GenericBasics.__default.Test() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



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

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Test (correctness)"} Impl$$GenericBasics.__default.Test() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass.GenericBasics.Cl(TReal))
         && $IsAlloc(c#0, Tclass.GenericBasics.Cl(TReal), $Heap);
  var $nw: ref;
  var defass#m#0: bool;
  var m#0: ref
     where defass#m#0
       ==> $Is(m#0, Tclass.GenericBasics.Mega(TBool, TReal, Tclass.GenericBasics.Cl(TReal)))
         && $IsAlloc(m#0, 
          Tclass.GenericBasics.Mega(TBool, TReal, Tclass.GenericBasics.Cl(TReal)), 
          $Heap);
  var ts#0: Seq
     where $Is(ts#0, TSeq(Tclass.GenericBasics.Tr(TReal, TInt)))
       && $IsAlloc(ts#0, TSeq(Tclass.GenericBasics.Tr(TReal, TInt)), $Heap);
  var defass#t#0: bool;
  var t#0: ref
     where defass#t#0
       ==> $Is(t#0, Tclass.GenericBasics.Tr(TReal, TInt))
         && $IsAlloc(t#0, Tclass.GenericBasics.Tr(TReal, TInt), $Heap);
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var preLoop$loop#0$defass#t#0: bool;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var bb#0_0: int;
  var sq#0_0: Seq where $Is(sq#0_0, TSeq(TInt)) && $IsAlloc(sq#0_0, TSeq(TInt), $Heap);
  var $rhs##0_0: int;
  var $rhs##0_1: Seq;
  var x##0_0: int;
  var a##0_0: real;
  var b##0_0: int;
  var $tmp##0_0: Box;
  var $rhs##0_2: int;
  var y##0_0: int;
  var a##0_1: real;
  var b##0_1: int;
  var $tmp##0_1: Box;
  var ##a#0_0: DatatypeType;
  var ##a#0_1: DatatypeType;
  var ##b#0_0: int;
  var rv0#0_0: int;
  var ##x#0_0: DatatypeType;
  var ##x#0_1: DatatypeType;
  var ##x#0_2: DatatypeType;
  var ##x#0_3: DatatypeType;
  var rb#0_0: int;
  var ##x#0_4: DatatypeType;
  var ##b#0_1: int;
  var m0#0_0: int;
  var $rhs##0_3: int;
  var x##0_1: real;
  var b##0_2: int;
  var $tmp##0_2: Box;
  var m1#0_0: int;
  var m2#0_0: real;
  var $rhs##0_4: int;
  var $rhs##0_5: real;
  var x##0_2: real;
  var b##0_3: int;
  var $tmp##0_3: Box;
  var $tmp##0_4: Box;

    // AddMethodImpl: Test, Impl$$GenericBasics.__default.Test
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(299,21)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(299,24)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id32"} $nw := Call$$GenericBasics.Cl.__ctor(TReal);
    // TrCallStmt: After ProcessCallStmt
    c#0 := $nw;
    defass#c#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(300,39)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(300,42)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id34"} $nw := Call$$GenericBasics.Mega.__ctor(TBool, TReal, Tclass.GenericBasics.Cl(TReal));
    // TrCallStmt: After ProcessCallStmt
    m#0 := $nw;
    defass#m#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(302,38)
    assume true;
    assert {:id "id36"} defass#c#0;
    assert {:id "id37"} defass#m#0;
    assume true;
    ts#0 := Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(c#0)), $Box(m#0));
    havoc t#0 /* where defass#t#0
       ==> $Is(t#0, Tclass.GenericBasics.Tr(TReal, TInt))
         && $IsAlloc(t#0, Tclass.GenericBasics.Tr(TReal, TInt), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(304,11)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(305,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    preLoop$loop#0$defass#t#0 := defass#t#0;
    $decr_init$loop#00 := 2 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id41"} $w$loop#0 ==> LitInt(0) <= i#0;
      invariant {:id "id42"} $w$loop#0 ==> i#0 <= LitInt(2);
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
      free invariant preLoop$loop#0$defass#t#0 ==> defass#t#0;
      free invariant 2 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= i#0)
            {
            }

            assume true;
            assume {:id "id40"} LitInt(0) <= i#0 && i#0 <= LitInt(2);
            assume true;
            assume false;
        }

        assume true;
        if (2 <= i#0)
        {
            break;
        }

        $decr$loop#00 := 2 - i#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(308,9)
        assume true;
        if (i#0 == LitInt(0))
        {
            assert {:id "id43"} defass#c#0;
            assert {:id "id44"} $Is((if i#0 == LitInt(0) then c#0 else m#0), Tclass.GenericBasics.Tr(TReal, TInt));
        }
        else
        {
            assert {:id "id45"} defass#m#0;
            assert {:id "id46"} $Is((if i#0 == LitInt(0) then c#0 else m#0), Tclass.GenericBasics.Tr(TReal, TInt));
        }

        assume true;
        t#0 := (if i#0 == LitInt(0) then c#0 else m#0);
        defass#t#0 := true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(309,7)
        assert {:id "id48"} defass#t#0;
        assert {:id "id49"} {:subsumption 0} 0 <= i#0 && i#0 < Seq#Length(ts#0);
        assume true;
        assert {:id "id50"} t#0 == $Unbox(Seq#Index(ts#0, i#0)): ref;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(310,7)
        assert {:id "id51"} defass#t#0;
        assert {:id "id52"} {:subsumption 0} t#0 != null;
        assume true;
        assume true;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(311,7)
        assert {:id "id53"} defass#t#0;
        assert {:id "id54"} {:subsumption 0} t#0 != null;
        assume true;
        assume true;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(312,7)
        assert {:id "id55"} defass#t#0;
        assume true;
        assume true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(313,27)
        assume true;
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Adding lhs with type seq<int>
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id56"} defass#t#0;
        assume true;
        assert {:id "id57"} t#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##0_0 := LitInt(50);
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0_0 := LitReal(51e0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        b##0_0 := LitInt(52);
        call {:id "id58"} $tmp##0_0, $rhs##0_1 := Call$$GenericBasics.Tr.Inst(TReal, TInt, t#0, x##0_0, $Box(a##0_0), $Box(b##0_0));
        havoc $rhs##0_0;
        assume $rhs##0_0 == $Unbox($tmp##0_0): int;
        // TrCallStmt: After ProcessCallStmt
        bb#0_0 := $rhs##0_0;
        sq#0_0 := $rhs##0_1;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(314,7)
        assume true;
        assume true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(315,19)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id61"} defass#t#0;
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        y##0_0 := LitInt(50);
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0_1 := LitReal(51e0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        b##0_1 := LitInt(52);
        call {:id "id62"} $tmp##0_1 := Call$$GenericBasics.Tr.Stat(TReal, TInt, y##0_0, $Box(a##0_1), $Box(b##0_1));
        havoc $rhs##0_2;
        assume $rhs##0_2 == $Unbox($tmp##0_1): int;
        // TrCallStmt: After ProcessCallStmt
        bb#0_0 := $rhs##0_2;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(316,7)
        assume true;
        assume true;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(317,7)
        assert {:id "id64"} defass#t#0;
        assert {:id "id65"} {:subsumption 0} t#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(t#0), Tclass.GenericBasics.Tr?(TReal, TInt), $Heap);
        ##a#0_0 := Lit(#_System._tuple#2._#Make2($Box(LitReal(5e-1)), $Box(Lit(100bv9))));
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0_0, Tclass._System.Tuple2(TReal, TBitvector(9)), $Heap);
        assume GenericBasics.Tr.Teen#canCall(TReal, 
          TInt, 
          TBitvector(9), 
          t#0, 
          Lit(#_System._tuple#2._#Make2($Box(LitReal(5e-1)), $Box(Lit(100bv9)))));
        assume GenericBasics.Tr.Teen#canCall(TReal, 
          TInt, 
          TBitvector(9), 
          t#0, 
          Lit(#_System._tuple#2._#Make2($Box(LitReal(5e-1)), $Box(Lit(100bv9)))));
        assume true;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(318,7)
        assert {:id "id66"} defass#t#0;
        ##a#0_1 := Lit(#_System._tuple#2._#Make2($Box(LitReal(5e-1)), $Box(Lit(100bv9))));
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0_1, Tclass._System.Tuple2(TReal, TBitvector(9)), $Heap);
        ##b#0_0 := LitInt(53);
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0_0, TInt, $Heap);
        assume GenericBasics.Tr.STeen#canCall(TReal, 
          TInt, 
          TBitvector(9), 
          Lit(#_System._tuple#2._#Make2($Box(LitReal(5e-1)), $Box(Lit(100bv9)))), 
          $Box(LitInt(53)));
        assume GenericBasics.Tr.STeen#canCall(TReal, 
          TInt, 
          TBitvector(9), 
          Lit(#_System._tuple#2._#Make2($Box(LitReal(5e-1)), $Box(Lit(100bv9)))), 
          $Box(LitInt(53)));
        assume true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(319,20)
        assume true;
        assert {:id "id67"} defass#t#0;
        assert {:id "id68"} t#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(t#0), Tclass.GenericBasics.Tr?(TReal, TInt), $Heap);
        ##x#0_0 := Lit(#_System._tuple#2._#Make2($Box(Lit(3bv2)), $Box(Lit(3bv3))));
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0_0, Tclass._System.Tuple2(TBitvector(2), TBitvector(3)), $Heap);
        assume GenericBasics.Tr.RValue0#canCall(TReal, 
          TInt, 
          Tclass._System.Tuple2(TBitvector(2), TBitvector(3)), 
          t#0, 
          $Box(Lit(#_System._tuple#2._#Make2($Box(Lit(3bv2)), $Box(Lit(3bv3))))));
        assume GenericBasics.Tr.RValue0#canCall(TReal, 
          TInt, 
          Tclass._System.Tuple2(TBitvector(2), TBitvector(3)), 
          t#0, 
          $Box(Lit(#_System._tuple#2._#Make2($Box(Lit(3bv2)), $Box(Lit(3bv3))))));
        rv0#0_0 := $Unbox(GenericBasics.Tr.RValue0(TReal, 
            TInt, 
            Tclass._System.Tuple2(TBitvector(2), TBitvector(3)), 
            t#0, 
            $Box(Lit(#_System._tuple#2._#Make2($Box(Lit(3bv2)), $Box(Lit(3bv3))))))): int;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(320,7)
        assume true;
        assume true;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(321,7)
        assert {:id "id70"} defass#t#0;
        assert {:id "id71"} {:subsumption 0} t#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(t#0), Tclass.GenericBasics.Tr?(TReal, TInt), $Heap);
        ##x#0_1 := Lit(#_System._tuple#2._#Make2($Box(Lit(3bv2)), $Box(Lit(3bv3))));
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0_1, Tclass._System.Tuple2(TBitvector(2), TBitvector(3)), $Heap);
        assume GenericBasics.Tr.RValue1#canCall(TReal, 
          TInt, 
          Tclass._System.Tuple2(TBitvector(2), TBitvector(3)), 
          t#0, 
          $Box(Lit(#_System._tuple#2._#Make2($Box(Lit(3bv2)), $Box(Lit(3bv3))))));
        assume GenericBasics.Tr.RValue1#canCall(TReal, 
          TInt, 
          Tclass._System.Tuple2(TBitvector(2), TBitvector(3)), 
          t#0, 
          $Box(Lit(#_System._tuple#2._#Make2($Box(Lit(3bv2)), $Box(Lit(3bv3))))));
        assume true;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(322,7)
        assert {:id "id72"} defass#t#0;
        assert {:id "id73"} {:subsumption 0} t#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(t#0), Tclass.GenericBasics.Tr?(TReal, TInt), $Heap);
        ##x#0_2 := Lit(#_System._tuple#2._#Make2($Box(Lit(3bv2)), $Box(Lit(3bv3))));
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0_2, Tclass._System.Tuple2(TBitvector(2), TBitvector(3)), $Heap);
        assume GenericBasics.Tr.RValue2#canCall(TReal, 
          TInt, 
          Tclass._System.Tuple2(TBitvector(2), TBitvector(3)), 
          t#0, 
          $Box(Lit(#_System._tuple#2._#Make2($Box(Lit(3bv2)), $Box(Lit(3bv3))))));
        assume GenericBasics.Tr.RValue2#canCall(TReal, 
          TInt, 
          Tclass._System.Tuple2(TBitvector(2), TBitvector(3)), 
          t#0, 
          $Box(Lit(#_System._tuple#2._#Make2($Box(Lit(3bv2)), $Box(Lit(3bv3))))));
        assume true;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(323,7)
        assert {:id "id74"} defass#t#0;
        assert {:id "id75"} {:subsumption 0} t#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(t#0), Tclass.GenericBasics.Tr?(TReal, TInt), $Heap);
        ##x#0_3 := Lit(#_System._tuple#2._#Make2($Box(Lit(3bv2)), $Box(Lit(3bv3))));
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0_3, Tclass._System.Tuple2(TBitvector(2), TBitvector(3)), $Heap);
        assume GenericBasics.Tr.RValue3#canCall(TReal, 
          TInt, 
          Tclass._System.Tuple2(TBitvector(2), TBitvector(3)), 
          t#0, 
          $Box(Lit(#_System._tuple#2._#Make2($Box(Lit(3bv2)), $Box(Lit(3bv3))))));
        assume GenericBasics.Tr.RValue3#canCall(TReal, 
          TInt, 
          Tclass._System.Tuple2(TBitvector(2), TBitvector(3)), 
          t#0, 
          $Box(Lit(#_System._tuple#2._#Make2($Box(Lit(3bv2)), $Box(Lit(3bv3))))));
        assume true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(324,14)
        assume true;
        assert {:id "id76"} defass#t#0;
        assert {:id "id77"} t#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(t#0), Tclass.GenericBasics.Tr?(TReal, TInt), $Heap);
        ##x#0_4 := Lit(#_System._tuple#2._#Make2($Box(Lit(3bv2)), $Box(Lit(3bv3))));
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0_4, Tclass._System.Tuple2(TBitvector(2), TBitvector(3)), $Heap);
        ##b#0_1 := LitInt(10);
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0_1, TInt, $Heap);
        assume GenericBasics.Tr.RBValue#canCall(TReal, 
          TInt, 
          Tclass._System.Tuple2(TBitvector(2), TBitvector(3)), 
          t#0, 
          $Box(Lit(#_System._tuple#2._#Make2($Box(Lit(3bv2)), $Box(Lit(3bv3))))), 
          $Box(LitInt(10)));
        assume GenericBasics.Tr.RBValue#canCall(TReal, 
          TInt, 
          Tclass._System.Tuple2(TBitvector(2), TBitvector(3)), 
          t#0, 
          $Box(Lit(#_System._tuple#2._#Make2($Box(Lit(3bv2)), $Box(Lit(3bv3))))), 
          $Box(LitInt(10)));
        rb#0_0 := $Unbox(GenericBasics.Tr.RBValue(TReal, 
            TInt, 
            Tclass._System.Tuple2(TBitvector(2), TBitvector(3)), 
            t#0, 
            $Box(Lit(#_System._tuple#2._#Make2($Box(Lit(3bv2)), $Box(Lit(3bv3))))), 
            $Box(LitInt(10)))): int;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(325,32)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id79"} defass#t#0;
        assume true;
        assert {:id "id80"} t#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##0_1 := LitReal(188e-1);
        assume true;
        // ProcessCallStmt: CheckSubrange
        b##0_2 := LitInt(30);
        call {:id "id81"} $tmp##0_2 := Call$$GenericBasics.Tr.MValue0(TReal, TInt, TReal, t#0, $Box(x##0_1), $Box(b##0_2));
        havoc $rhs##0_3;
        assume $rhs##0_3 == $Unbox($tmp##0_2): int;
        // TrCallStmt: After ProcessCallStmt
        m0#0_0 := $rhs##0_3;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(326,36)
        assume true;
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Adding lhs with type real
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id83"} defass#t#0;
        assume true;
        assert {:id "id84"} t#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##0_2 := LitReal(188e-1);
        assume true;
        // ProcessCallStmt: CheckSubrange
        b##0_3 := LitInt(30);
        call {:id "id85"} $tmp##0_3, $tmp##0_4 := Call$$GenericBasics.Tr.MValue1(TReal, TInt, TReal, t#0, $Box(x##0_2), $Box(b##0_3));
        havoc $rhs##0_4;
        assume $rhs##0_4 == $Unbox($tmp##0_3): int;
        havoc $rhs##0_5;
        assume $rhs##0_5 == $Unbox($tmp##0_4): real;
        // TrCallStmt: After ProcessCallStmt
        m1#0_0 := $rhs##0_4;
        m2#0_0 := $rhs##0_5;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(327,7)
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(328,9)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(305,5)
        assert {:id "id89"} 0 <= $decr$loop#00 || 2 - i#0 == $decr$loop#00;
        assert {:id "id90"} 2 - i#0 < $decr$loop#00;
        assume true;
    }
}



const unique class.GenericBasics.Tr?: ClassName;

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

function GenericBasics.Tr.abc(GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty, this: ref) : Box
uses {
// Tr.abc: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty, $o: ref :: 
    { GenericBasics.Tr.abc(GenericBasics.Tr$A, GenericBasics.Tr$B, $o) } 
    $o != null
         && $Is($o, Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B))
       ==> $IsBox(GenericBasics.Tr.abc(GenericBasics.Tr$A, GenericBasics.Tr$B, $o), 
        GenericBasics.Tr$B));
// Tr.abc: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty, $h: Heap, $o: ref :: 
    { GenericBasics.Tr.abc(GenericBasics.Tr$A, GenericBasics.Tr$B, $o), $Unbox(read($h, $o, alloc)): bool } 
    $IsGoodHeap($h)
         && 
        $o != null
         && $Is($o, Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $Unbox(read($h, $o, alloc)): bool
       ==> $IsAllocBox(GenericBasics.Tr.abc(GenericBasics.Tr$A, GenericBasics.Tr$B, $o), 
        GenericBasics.Tr$B, 
        $h));
}

function GenericBasics.Tr.def(GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty) : Box
uses {
// Tr.def: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty :: 
    { GenericBasics.Tr.def(GenericBasics.Tr$A, GenericBasics.Tr$B) } 
    $IsBox(GenericBasics.Tr.def(GenericBasics.Tr$A, GenericBasics.Tr$B), GenericBasics.Tr$B));
}

// Tr.def: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall GenericBasics.Tr$A: Ty, GenericBasics.Tr$B: Ty, $h: Heap :: 
    { $IsAllocBox(GenericBasics.Tr.def(GenericBasics.Tr$A, GenericBasics.Tr$B), 
        GenericBasics.Tr$B, 
        $h) } 
    $IsGoodHeap($h)
       ==> $IsAllocBox(GenericBasics.Tr.def(GenericBasics.Tr$A, GenericBasics.Tr$B), 
        GenericBasics.Tr$B, 
        $h));

procedure {:verboseName "GenericBasics.Tr.Inst (well-formedness)"} CheckWellFormed$$GenericBasics.Tr.Inst(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $IsAlloc(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $Heap), 
    x#0: int, 
    a#0: Box
       where $IsBox(a#0, GenericBasics.Tr$A) && $IsAllocBox(a#0, GenericBasics.Tr$A, $Heap), 
    b#0: Box
       where $IsBox(b#0, GenericBasics.Tr$B) && $IsAllocBox(b#0, GenericBasics.Tr$B, $Heap))
   returns (bb#0: Box
       where $IsBox(bb#0, GenericBasics.Tr$B) && $IsAllocBox(bb#0, GenericBasics.Tr$B, $Heap), 
    cc#0: Seq
       where $Is(cc#0, TSeq(GenericBasics.Tr$B))
         && $IsAlloc(cc#0, TSeq(GenericBasics.Tr$B), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Tr.Inst (call)"} Call$$GenericBasics.Tr.Inst(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $IsAlloc(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $Heap), 
    x#0: int, 
    a#0: Box
       where $IsBox(a#0, GenericBasics.Tr$A) && $IsAllocBox(a#0, GenericBasics.Tr$A, $Heap), 
    b#0: Box
       where $IsBox(b#0, GenericBasics.Tr$B) && $IsAllocBox(b#0, GenericBasics.Tr$B, $Heap))
   returns (bb#0: Box
       where $IsBox(bb#0, GenericBasics.Tr$B) && $IsAllocBox(bb#0, GenericBasics.Tr$B, $Heap), 
    cc#0: Seq
       where $Is(cc#0, TSeq(GenericBasics.Tr$B))
         && $IsAlloc(cc#0, TSeq(GenericBasics.Tr$B), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GenericBasics.Tr.Inst (correctness)"} Impl$$GenericBasics.Tr.Inst(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $IsAlloc(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $Heap), 
    x#0: int, 
    a#0: Box
       where $IsBox(a#0, GenericBasics.Tr$A) && $IsAllocBox(a#0, GenericBasics.Tr$A, $Heap), 
    b#0: Box
       where $IsBox(b#0, GenericBasics.Tr$B) && $IsAllocBox(b#0, GenericBasics.Tr$B, $Heap))
   returns (bb#0: Box
       where $IsBox(bb#0, GenericBasics.Tr$B) && $IsAllocBox(bb#0, GenericBasics.Tr$B, $Heap), 
    cc#0: Seq
       where $Is(cc#0, TSeq(GenericBasics.Tr$B))
         && $IsAlloc(cc#0, TSeq(GenericBasics.Tr$B), $Heap), 
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



procedure {:verboseName "GenericBasics.Tr.Stat (well-formedness)"} CheckWellFormed$$GenericBasics.Tr.Stat(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    y#0: int, 
    a#0: Box
       where $IsBox(a#0, GenericBasics.Tr$A) && $IsAllocBox(a#0, GenericBasics.Tr$A, $Heap), 
    b#0: Box
       where $IsBox(b#0, GenericBasics.Tr$B) && $IsAllocBox(b#0, GenericBasics.Tr$B, $Heap))
   returns (bb#0: Box
       where $IsBox(bb#0, GenericBasics.Tr$B) && $IsAllocBox(bb#0, GenericBasics.Tr$B, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Tr.Stat (call)"} Call$$GenericBasics.Tr.Stat(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    y#0: int, 
    a#0: Box
       where $IsBox(a#0, GenericBasics.Tr$A) && $IsAllocBox(a#0, GenericBasics.Tr$A, $Heap), 
    b#0: Box
       where $IsBox(b#0, GenericBasics.Tr$B) && $IsAllocBox(b#0, GenericBasics.Tr$B, $Heap))
   returns (bb#0: Box
       where $IsBox(bb#0, GenericBasics.Tr$B) && $IsAllocBox(bb#0, GenericBasics.Tr$B, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GenericBasics.Tr.Stat (correctness)"} Impl$$GenericBasics.Tr.Stat(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    y#0: int, 
    a#0: Box
       where $IsBox(a#0, GenericBasics.Tr$A) && $IsAllocBox(a#0, GenericBasics.Tr$A, $Heap), 
    b#0: Box
       where $IsBox(b#0, GenericBasics.Tr$B) && $IsAllocBox(b#0, GenericBasics.Tr$B, $Heap))
   returns (bb#0: Box
       where $IsBox(bb#0, GenericBasics.Tr$B) && $IsAllocBox(bb#0, GenericBasics.Tr$B, $Heap), 
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



// function declaration for GenericBasics.Tr.Teen
function GenericBasics.Tr.Teen(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.Teen$R: Ty, 
    this: ref, 
    a#0: DatatypeType)
   : Box
uses {
// consequence axiom for GenericBasics.Tr.Teen
axiom 1 <= $FunctionContextHeight
   ==> (forall GenericBasics.Tr$A: Ty, 
      GenericBasics.Tr$B: Ty, 
      GenericBasics.Tr.Teen$R: Ty, 
      this: ref, 
      a#0: DatatypeType :: 
    { GenericBasics.Tr.Teen(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.Teen$R, this, a#0) } 
    GenericBasics.Tr.Teen#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.Teen$R, this, a#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
           && $Is(a#0, Tclass._System.Tuple2(GenericBasics.Tr$A, GenericBasics.Tr.Teen$R)))
       ==> $IsBox(GenericBasics.Tr.Teen(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.Teen$R, this, a#0), 
        GenericBasics.Tr$B));
// alloc consequence axiom for GenericBasics.Tr.Teen
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      GenericBasics.Tr$A: Ty, 
      GenericBasics.Tr$B: Ty, 
      GenericBasics.Tr.Teen$R: Ty, 
      this: ref, 
      a#0: DatatypeType :: 
    { $IsAllocBox(GenericBasics.Tr.Teen(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.Teen$R, this, a#0), 
        GenericBasics.Tr$B, 
        $Heap) } 
    (GenericBasics.Tr.Teen#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.Teen$R, this, a#0)
           || (1 < $FunctionContextHeight
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
}

function GenericBasics.Tr.Teen#canCall(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.Teen$R: Ty, 
    this: ref, 
    a#0: DatatypeType)
   : bool;

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

procedure {:verboseName "GenericBasics.Tr.Teen (well-formedness)"} CheckWellformed$$GenericBasics.Tr.Teen(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.Teen$R: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $IsAlloc(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $Heap), 
    a#0: DatatypeType
       where $Is(a#0, Tclass._System.Tuple2(GenericBasics.Tr$A, GenericBasics.Tr.Teen$R)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for GenericBasics.Tr.STeen
function GenericBasics.Tr.STeen(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.STeen$R: Ty, 
    a#0: DatatypeType, 
    b#0: Box)
   : Box
uses {
// consequence axiom for GenericBasics.Tr.STeen
axiom 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Tr$A: Ty, 
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
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
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
// definition axiom for GenericBasics.Tr.STeen (revealed)
axiom {:id "id96"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Tr$A: Ty, 
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
       ==> GenericBasics.Tr.STeen(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.STeen$R, a#0, b#0)
         == b#0);
// definition axiom for GenericBasics.Tr.STeen for decreasing-related literals (revealed)
axiom {:id "id97"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Tr$A: Ty, 
      GenericBasics.Tr$B: Ty, 
      GenericBasics.Tr.STeen$R: Ty, 
      a#0: DatatypeType, 
      b#0: Box :: 
    {:weight 3} { GenericBasics.Tr.STeen(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.STeen$R, Lit(a#0), b#0) } 
    GenericBasics.Tr.STeen#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.STeen$R, Lit(a#0), b#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._System.Tuple2(GenericBasics.Tr$A, GenericBasics.Tr.STeen$R))
           && $IsBox(b#0, GenericBasics.Tr$B))
       ==> GenericBasics.Tr.STeen(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.STeen$R, Lit(a#0), b#0)
         == b#0);
// definition axiom for GenericBasics.Tr.STeen for all literals (revealed)
axiom {:id "id98"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Tr$A: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._System.Tuple2(GenericBasics.Tr$A, GenericBasics.Tr.STeen$R))
           && $IsBox(b#0, GenericBasics.Tr$B))
       ==> GenericBasics.Tr.STeen(GenericBasics.Tr$A, 
          GenericBasics.Tr$B, 
          GenericBasics.Tr.STeen$R, 
          Lit(a#0), 
          Lit(b#0))
         == Lit(b#0));
}

function GenericBasics.Tr.STeen#canCall(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.STeen$R: Ty, 
    a#0: DatatypeType, 
    b#0: Box)
   : bool;

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

procedure {:verboseName "GenericBasics.Tr.STeen (well-formedness)"} CheckWellformed$$GenericBasics.Tr.STeen(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.STeen$R: Ty, 
    a#0: DatatypeType
       where $Is(a#0, Tclass._System.Tuple2(GenericBasics.Tr$A, GenericBasics.Tr.STeen$R)), 
    b#0: Box where $IsBox(b#0, GenericBasics.Tr$B));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for GenericBasics.Tr.RValue0
function GenericBasics.Tr.RValue0(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue0$X: Ty, 
    this: ref, 
    x#0: Box)
   : Box
uses {
// consequence axiom for GenericBasics.Tr.RValue0
axiom 1 <= $FunctionContextHeight
   ==> (forall GenericBasics.Tr$A: Ty, 
      GenericBasics.Tr$B: Ty, 
      GenericBasics.Tr.RValue0$X: Ty, 
      this: ref, 
      x#0: Box :: 
    { GenericBasics.Tr.RValue0(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue0$X, this, x#0) } 
    GenericBasics.Tr.RValue0#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue0$X, this, x#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
           && $IsBox(x#0, GenericBasics.Tr.RValue0$X))
       ==> $IsBox(GenericBasics.Tr.RValue0(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue0$X, this, x#0), 
        GenericBasics.Tr$B));
// alloc consequence axiom for GenericBasics.Tr.RValue0
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      GenericBasics.Tr$A: Ty, 
      GenericBasics.Tr$B: Ty, 
      GenericBasics.Tr.RValue0$X: Ty, 
      this: ref, 
      x#0: Box :: 
    { $IsAllocBox(GenericBasics.Tr.RValue0(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue0$X, this, x#0), 
        GenericBasics.Tr$B, 
        $Heap) } 
    (GenericBasics.Tr.RValue0#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue0$X, this, x#0)
           || (1 < $FunctionContextHeight
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
}

function GenericBasics.Tr.RValue0#canCall(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue0$X: Ty, 
    this: ref, 
    x#0: Box)
   : bool;

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

procedure {:verboseName "GenericBasics.Tr.RValue0 (well-formedness)"} CheckWellformed$$GenericBasics.Tr.RValue0(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue0$X: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $IsAlloc(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Tr.RValue0$X));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for GenericBasics.Tr.RValue1
function GenericBasics.Tr.RValue1(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue1$X: Ty, 
    this: ref, 
    x#0: Box)
   : Box
uses {
// consequence axiom for GenericBasics.Tr.RValue1
axiom 1 <= $FunctionContextHeight
   ==> (forall GenericBasics.Tr$A: Ty, 
      GenericBasics.Tr$B: Ty, 
      GenericBasics.Tr.RValue1$X: Ty, 
      this: ref, 
      x#0: Box :: 
    { GenericBasics.Tr.RValue1(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue1$X, this, x#0) } 
    GenericBasics.Tr.RValue1#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue1$X, this, x#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
           && $IsBox(x#0, GenericBasics.Tr.RValue1$X))
       ==> $IsBox(GenericBasics.Tr.RValue1(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue1$X, this, x#0), 
        GenericBasics.Tr$B));
// alloc consequence axiom for GenericBasics.Tr.RValue1
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      GenericBasics.Tr$A: Ty, 
      GenericBasics.Tr$B: Ty, 
      GenericBasics.Tr.RValue1$X: Ty, 
      this: ref, 
      x#0: Box :: 
    { $IsAllocBox(GenericBasics.Tr.RValue1(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue1$X, this, x#0), 
        GenericBasics.Tr$B, 
        $Heap) } 
    (GenericBasics.Tr.RValue1#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue1$X, this, x#0)
           || (1 < $FunctionContextHeight
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
}

function GenericBasics.Tr.RValue1#canCall(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue1$X: Ty, 
    this: ref, 
    x#0: Box)
   : bool;

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

procedure {:verboseName "GenericBasics.Tr.RValue1 (well-formedness)"} CheckWellformed$$GenericBasics.Tr.RValue1(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue1$X: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $IsAlloc(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Tr.RValue1$X))
   returns (r#0: Box);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for GenericBasics.Tr.RValue2
function GenericBasics.Tr.RValue2(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue2$X: Ty, 
    this: ref, 
    x#0: Box)
   : Box
uses {
// consequence axiom for GenericBasics.Tr.RValue2
axiom 1 <= $FunctionContextHeight
   ==> (forall GenericBasics.Tr$A: Ty, 
      GenericBasics.Tr$B: Ty, 
      GenericBasics.Tr.RValue2$X: Ty, 
      this: ref, 
      x#0: Box :: 
    { GenericBasics.Tr.RValue2(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue2$X, this, x#0) } 
    GenericBasics.Tr.RValue2#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue2$X, this, x#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
           && $IsBox(x#0, GenericBasics.Tr.RValue2$X))
       ==> $IsBox(GenericBasics.Tr.RValue2(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue2$X, this, x#0), 
        GenericBasics.Tr$B));
// alloc consequence axiom for GenericBasics.Tr.RValue2
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      GenericBasics.Tr$A: Ty, 
      GenericBasics.Tr$B: Ty, 
      GenericBasics.Tr.RValue2$X: Ty, 
      this: ref, 
      x#0: Box :: 
    { $IsAllocBox(GenericBasics.Tr.RValue2(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue2$X, this, x#0), 
        GenericBasics.Tr$B, 
        $Heap) } 
    (GenericBasics.Tr.RValue2#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue2$X, this, x#0)
           || (1 < $FunctionContextHeight
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
}

function GenericBasics.Tr.RValue2#canCall(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue2$X: Ty, 
    this: ref, 
    x#0: Box)
   : bool;

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

procedure {:verboseName "GenericBasics.Tr.RValue2 (well-formedness)"} CheckWellformed$$GenericBasics.Tr.RValue2(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue2$X: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $IsAlloc(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Tr.RValue2$X));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for GenericBasics.Tr.RValue3
function GenericBasics.Tr.RValue3(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue3$X: Ty, 
    this: ref, 
    x#0: Box)
   : Box
uses {
// consequence axiom for GenericBasics.Tr.RValue3
axiom 1 <= $FunctionContextHeight
   ==> (forall GenericBasics.Tr$A: Ty, 
      GenericBasics.Tr$B: Ty, 
      GenericBasics.Tr.RValue3$X: Ty, 
      this: ref, 
      x#0: Box :: 
    { GenericBasics.Tr.RValue3(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue3$X, this, x#0) } 
    GenericBasics.Tr.RValue3#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue3$X, this, x#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
           && $IsBox(x#0, GenericBasics.Tr.RValue3$X))
       ==> $IsBox(GenericBasics.Tr.RValue3(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue3$X, this, x#0), 
        GenericBasics.Tr$B));
// alloc consequence axiom for GenericBasics.Tr.RValue3
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      GenericBasics.Tr$A: Ty, 
      GenericBasics.Tr$B: Ty, 
      GenericBasics.Tr.RValue3$X: Ty, 
      this: ref, 
      x#0: Box :: 
    { $IsAllocBox(GenericBasics.Tr.RValue3(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue3$X, this, x#0), 
        GenericBasics.Tr$B, 
        $Heap) } 
    (GenericBasics.Tr.RValue3#canCall(GenericBasics.Tr$A, GenericBasics.Tr$B, GenericBasics.Tr.RValue3$X, this, x#0)
           || (1 < $FunctionContextHeight
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
}

function GenericBasics.Tr.RValue3#canCall(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue3$X: Ty, 
    this: ref, 
    x#0: Box)
   : bool;

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

procedure {:verboseName "GenericBasics.Tr.RValue3 (well-formedness)"} CheckWellformed$$GenericBasics.Tr.RValue3(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RValue3$X: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $IsAlloc(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Tr.RValue3$X))
   returns (r#0: Box);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for GenericBasics.Tr.RBValue
function GenericBasics.Tr.RBValue(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RBValue$X: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: Box)
   : Box
uses {
// consequence axiom for GenericBasics.Tr.RBValue
axiom 1 <= $FunctionContextHeight
   ==> (forall GenericBasics.Tr$A: Ty, 
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
         || (1 < $FunctionContextHeight
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
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
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
           || (1 < $FunctionContextHeight
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
}

function GenericBasics.Tr.RBValue#canCall(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RBValue$X: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: Box)
   : bool;

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

procedure {:verboseName "GenericBasics.Tr.RBValue (well-formedness)"} CheckWellformed$$GenericBasics.Tr.RBValue(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.RBValue$X: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $IsAlloc(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Tr.RBValue$X), 
    b#0: Box where $IsBox(b#0, GenericBasics.Tr$B));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Tr.MValue0 (well-formedness)"} CheckWellFormed$$GenericBasics.Tr.MValue0(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.MValue0$X: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $IsAlloc(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $Heap), 
    x#0: Box
       where $IsBox(x#0, GenericBasics.Tr.MValue0$X)
         && $IsAllocBox(x#0, GenericBasics.Tr.MValue0$X, $Heap), 
    b#0: Box
       where $IsBox(b#0, GenericBasics.Tr$B) && $IsAllocBox(b#0, GenericBasics.Tr$B, $Heap))
   returns (r#0: Box
       where $IsBox(r#0, GenericBasics.Tr$B) && $IsAllocBox(r#0, GenericBasics.Tr$B, $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Tr.MValue0 (call)"} Call$$GenericBasics.Tr.MValue0(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.MValue0$X: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $IsAlloc(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $Heap), 
    x#0: Box
       where $IsBox(x#0, GenericBasics.Tr.MValue0$X)
         && $IsAllocBox(x#0, GenericBasics.Tr.MValue0$X, $Heap), 
    b#0: Box
       where $IsBox(b#0, GenericBasics.Tr$B) && $IsAllocBox(b#0, GenericBasics.Tr$B, $Heap))
   returns (r#0: Box
       where $IsBox(r#0, GenericBasics.Tr$B) && $IsAllocBox(r#0, GenericBasics.Tr$B, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GenericBasics.Tr.MValue1 (well-formedness)"} CheckWellFormed$$GenericBasics.Tr.MValue1(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.MValue1$X: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $IsAlloc(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $Heap), 
    x#0: Box
       where $IsBox(x#0, GenericBasics.Tr.MValue1$X)
         && $IsAllocBox(x#0, GenericBasics.Tr.MValue1$X, $Heap), 
    b#0: Box
       where $IsBox(b#0, GenericBasics.Tr$B) && $IsAllocBox(b#0, GenericBasics.Tr$B, $Heap))
   returns (r#0: Box
       where $IsBox(r#0, GenericBasics.Tr$B) && $IsAllocBox(r#0, GenericBasics.Tr$B, $Heap), 
    y#0: Box
       where $IsBox(y#0, GenericBasics.Tr.MValue1$X)
         && $IsAllocBox(y#0, GenericBasics.Tr.MValue1$X, $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Tr.MValue1 (call)"} Call$$GenericBasics.Tr.MValue1(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    GenericBasics.Tr.MValue1$X: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $IsAlloc(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $Heap), 
    x#0: Box
       where $IsBox(x#0, GenericBasics.Tr.MValue1$X)
         && $IsAllocBox(x#0, GenericBasics.Tr.MValue1$X, $Heap), 
    b#0: Box
       where $IsBox(b#0, GenericBasics.Tr$B) && $IsAllocBox(b#0, GenericBasics.Tr$B, $Heap))
   returns (r#0: Box
       where $IsBox(r#0, GenericBasics.Tr$B) && $IsAllocBox(r#0, GenericBasics.Tr$B, $Heap), 
    y#0: Box
       where $IsBox(y#0, GenericBasics.Tr.MValue1$X)
         && $IsAllocBox(y#0, GenericBasics.Tr.MValue1$X, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GenericBasics.Tr.ReferToTraitMembers (well-formedness)"} CheckWellFormed$$GenericBasics.Tr.ReferToTraitMembers(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $IsAlloc(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $Heap), 
    a#0: Box
       where $IsBox(a#0, GenericBasics.Tr$A) && $IsAllocBox(a#0, GenericBasics.Tr$A, $Heap), 
    b#0: Box
       where $IsBox(b#0, GenericBasics.Tr$B) && $IsAllocBox(b#0, GenericBasics.Tr$B, $Heap), 
    tt#0: ref
       where $Is(tt#0, Tclass.GenericBasics.Tr(TBool, TReal))
         && $IsAlloc(tt#0, Tclass.GenericBasics.Tr(TBool, TReal), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Tr.ReferToTraitMembers (call)"} Call$$GenericBasics.Tr.ReferToTraitMembers(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $IsAlloc(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $Heap), 
    a#0: Box
       where $IsBox(a#0, GenericBasics.Tr$A) && $IsAllocBox(a#0, GenericBasics.Tr$A, $Heap), 
    b#0: Box
       where $IsBox(b#0, GenericBasics.Tr$B) && $IsAllocBox(b#0, GenericBasics.Tr$B, $Heap), 
    tt#0: ref
       where $Is(tt#0, Tclass.GenericBasics.Tr(TBool, TReal))
         && $IsAlloc(tt#0, Tclass.GenericBasics.Tr(TBool, TReal), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GenericBasics.Tr.ReferToTraitMembers (correctness)"} Impl$$GenericBasics.Tr.ReferToTraitMembers(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B))
         && $IsAlloc(this, Tclass.GenericBasics.Tr(GenericBasics.Tr$A, GenericBasics.Tr$B), $Heap), 
    a#0: Box
       where $IsBox(a#0, GenericBasics.Tr$A) && $IsAllocBox(a#0, GenericBasics.Tr$A, $Heap), 
    b#0: Box
       where $IsBox(b#0, GenericBasics.Tr$B) && $IsAllocBox(b#0, GenericBasics.Tr$B, $Heap), 
    tt#0: ref
       where $Is(tt#0, Tclass.GenericBasics.Tr(TBool, TReal))
         && $IsAlloc(tt#0, Tclass.GenericBasics.Tr(TBool, TReal), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Tr.ReferToTraitMembers (correctness)"} Impl$$GenericBasics.Tr.ReferToTraitMembers(GenericBasics.Tr$A: Ty, 
    GenericBasics.Tr$B: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box, 
    tt#0: ref)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: Box;
  var $rhs#1: Box;
  var x#0: Box
     where $IsBox(x#0, GenericBasics.Tr$B) && $IsAllocBox(x#0, GenericBasics.Tr$B, $Heap);
  var y#0: Box
     where $IsBox(y#0, GenericBasics.Tr$B) && $IsAllocBox(y#0, GenericBasics.Tr$B, $Heap);
  var bb#0: Box
     where $IsBox(bb#0, GenericBasics.Tr$B) && $IsAllocBox(bb#0, GenericBasics.Tr$B, $Heap);
  var sq#0: Seq
     where $Is(sq#0, TSeq(GenericBasics.Tr$B))
       && $IsAlloc(sq#0, TSeq(GenericBasics.Tr$B), $Heap);
  var $rhs##0: Box;
  var $rhs##1: Seq;
  var x##0: int;
  var a##0: Box;
  var b##0: Box;
  var $rhs##2: Box;
  var $rhs##3: Seq;
  var x##1: int;
  var a##1: Box;
  var b##1: Box;
  var rr#0: real;
  var _v0#0: Seq where $Is(_v0#0, TSeq(TReal)) && $IsAlloc(_v0#0, TSeq(TReal), $Heap);
  var $rhs##4: real;
  var $rhs##5: Seq;
  var x##2: int;
  var a##2: bool;
  var b##2: real;
  var $tmp##0: Box;
  var $rhs##6: Box;
  var y##0: int;
  var a##3: Box;
  var b##3: Box;
  var $rhs##7: Box;
  var y##1: int;
  var a##4: Box;
  var b##4: Box;
  var $rhs##8: real;
  var y##2: int;
  var a##5: bool;
  var b##5: real;
  var $tmp##1: Box;
  var $rhs##9: Box;
  var y##3: int;
  var a##6: Box;
  var b##6: Box;
  var ss#0: Set where $Is(ss#0, TSet(TInt)) && $IsAlloc(ss#0, TSet(TInt), $Heap);
  var $rhs##10: Set;
  var y##4: int;
  var a##7: Seq;
  var b##7: Set;
  var $tmp##2: Box;
  var ##a#0: DatatypeType;
  var ##a#1: DatatypeType;
  var ##a#2: DatatypeType;
  var ##a#3: DatatypeType;
  var ##b#0: Box;
  var ##a#4: DatatypeType;
  var ##b#1: Box;
  var ##a#5: DatatypeType;
  var ##b#2: real;
  var ##a#6: DatatypeType;
  var ##b#3: Box;
  var ##a#7: DatatypeType;
  var ##b#4: Set;

    // AddMethodImpl: ReferToTraitMembers, Impl$$GenericBasics.Tr.ReferToTraitMembers
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(156,11)
    assume true;
    assert {:id "id100"} $_ModifiesFrame[this, GenericBasics.Tr.xyz];
    assume true;
    $rhs#0 := b#0;
    $Heap := update($Heap, this, GenericBasics.Tr.xyz, $rhs#0);
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(157,16)
    assume true;
    assert {:id "id103"} $_ModifiesFrame[this, GenericBasics.Tr.xyz];
    assume true;
    $rhs#1 := b#0;
    $Heap := update($Heap, this, GenericBasics.Tr.xyz, $rhs#1);
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(158,13)
    assume true;
    assume true;
    x#0 := read($Heap, this, GenericBasics.Tr.xyz);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(159,13)
    assume true;
    assume true;
    y#0 := read($Heap, this, GenericBasics.Tr.xyz);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(161,25)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type B
    // TrCallStmt: Adding lhs with type seq<B>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := b#0;
    call {:id "id108"} $rhs##0, $rhs##1 := Call$$GenericBasics.Tr.Inst(GenericBasics.Tr$A, GenericBasics.Tr$B, this, x##0, a##0, b##0);
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##0;
    sq#0 := $rhs##1;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(162,26)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type B
    // TrCallStmt: Adding lhs with type seq<B>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##1 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##1 := b#0;
    call {:id "id111"} $rhs##2, $rhs##3 := Call$$GenericBasics.Tr.Inst(GenericBasics.Tr$A, GenericBasics.Tr$B, this, x##1, a##1, b##1);
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##2;
    sq#0 := $rhs##3;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(163,27)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type real
    // TrCallStmt: Adding lhs with type seq<real>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id114"} tt#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##2 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##2 := Lit(true);
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##2 := LitReal(5e0);
    call {:id "id115"} $tmp##0, $rhs##5 := Call$$GenericBasics.Tr.Inst(TBool, TReal, tt#0, x##2, $Box(a##2), $Box(b##2));
    havoc $rhs##4;
    assume $rhs##4 == $Unbox($tmp##0): real;
    // TrCallStmt: After ProcessCallStmt
    rr#0 := $rhs##4;
    _v0#0 := $rhs##5;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(165,17)
    assume true;
    // TrCallStmt: Adding lhs with type B
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := LitInt(1);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##3 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##3 := b#0;
    call {:id "id118"} $rhs##6 := Call$$GenericBasics.Tr.Stat(GenericBasics.Tr$A, GenericBasics.Tr$B, y##0, a##3, b##3);
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##6;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(166,22)
    assume true;
    // TrCallStmt: Adding lhs with type B
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##1 := LitInt(1);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##4 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##4 := b#0;
    call {:id "id120"} $rhs##7 := Call$$GenericBasics.Tr.Stat(GenericBasics.Tr$A, GenericBasics.Tr$B, y##1, a##4, b##4);
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##7;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(167,20)
    assume true;
    // TrCallStmt: Adding lhs with type real
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##2 := LitInt(1);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##5 := Lit(true);
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##5 := LitReal(5e0);
    call {:id "id122"} $tmp##1 := Call$$GenericBasics.Tr.Stat(TBool, TReal, y##2, $Box(a##5), $Box(b##5));
    havoc $rhs##8;
    assume $rhs##8 == $Unbox($tmp##1): real;
    // TrCallStmt: After ProcessCallStmt
    rr#0 := $rhs##8;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(168,20)
    assume true;
    // TrCallStmt: Adding lhs with type B
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##3 := LitInt(1);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##6 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##6 := b#0;
    call {:id "id124"} $rhs##9 := Call$$GenericBasics.Tr.Stat(GenericBasics.Tr$A, GenericBasics.Tr$B, y##3, a##6, b##6);
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##9;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(169,24)
    assume true;
    // TrCallStmt: Adding lhs with type set<int>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##4 := LitInt(2);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##7 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(2))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##7 := Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(2))));
    call {:id "id126"} $tmp##2 := Call$$GenericBasics.Tr.Stat(TSeq(TInt), TSet(TInt), y##4, $Box(a##7), $Box(b##7));
    havoc $rhs##10;
    assume $rhs##10 == $Unbox($tmp##2): Set;
    // TrCallStmt: After ProcessCallStmt
    ss#0 := $rhs##10;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(171,10)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), 
      Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B), 
      $Heap);
    ##a#0 := #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, Tclass._System.Tuple2(GenericBasics.Tr$A, TBitvector(7)), $Heap);
    assume GenericBasics.Tr.Teen#canCall(GenericBasics.Tr$A, 
      GenericBasics.Tr$B, 
      TBitvector(7), 
      this, 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))));
    assume GenericBasics.Tr.Teen#canCall(GenericBasics.Tr$A, 
      GenericBasics.Tr$B, 
      TBitvector(7), 
      this, 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))));
    bb#0 := GenericBasics.Tr.Teen(GenericBasics.Tr$A, 
      GenericBasics.Tr$B, 
      TBitvector(7), 
      this, 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(172,10)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), 
      Tclass.GenericBasics.Tr?(GenericBasics.Tr$A, GenericBasics.Tr$B), 
      $Heap);
    ##a#1 := #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, Tclass._System.Tuple2(GenericBasics.Tr$A, TBitvector(7)), $Heap);
    assume GenericBasics.Tr.Teen#canCall(GenericBasics.Tr$A, 
      GenericBasics.Tr$B, 
      TBitvector(7), 
      this, 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))));
    assume GenericBasics.Tr.Teen#canCall(GenericBasics.Tr$A, 
      GenericBasics.Tr$B, 
      TBitvector(7), 
      this, 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))));
    bb#0 := GenericBasics.Tr.Teen(GenericBasics.Tr$A, 
      GenericBasics.Tr$B, 
      TBitvector(7), 
      this, 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(173,10)
    assume true;
    assert {:id "id130"} tt#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(tt#0), Tclass.GenericBasics.Tr?(TBool, TReal), $Heap);
    ##a#2 := Lit(#_System._tuple#2._#Make2($Box(Lit(false)), $Box(Lit(70bv7))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#2, Tclass._System.Tuple2(TBool, TBitvector(7)), $Heap);
    assume GenericBasics.Tr.Teen#canCall(TBool, 
      TReal, 
      TBitvector(7), 
      tt#0, 
      Lit(#_System._tuple#2._#Make2($Box(Lit(false)), $Box(Lit(70bv7)))));
    assume GenericBasics.Tr.Teen#canCall(TBool, 
      TReal, 
      TBitvector(7), 
      tt#0, 
      Lit(#_System._tuple#2._#Make2($Box(Lit(false)), $Box(Lit(70bv7)))));
    rr#0 := $Unbox(GenericBasics.Tr.Teen(TBool, 
        TReal, 
        TBitvector(7), 
        tt#0, 
        Lit(#_System._tuple#2._#Make2($Box(Lit(false)), $Box(Lit(70bv7)))))): real;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(175,10)
    assume true;
    ##a#3 := #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#3, Tclass._System.Tuple2(GenericBasics.Tr$A, TBitvector(7)), $Heap);
    ##b#0 := b#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#0, GenericBasics.Tr$B, $Heap);
    assume GenericBasics.Tr.STeen#canCall(GenericBasics.Tr$A, 
      GenericBasics.Tr$B, 
      TBitvector(7), 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
      b#0);
    assume GenericBasics.Tr.STeen#canCall(GenericBasics.Tr$A, 
      GenericBasics.Tr$B, 
      TBitvector(7), 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
      b#0);
    bb#0 := GenericBasics.Tr.STeen(GenericBasics.Tr$A, 
      GenericBasics.Tr$B, 
      TBitvector(7), 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
      b#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(176,10)
    assume true;
    ##a#4 := #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#4, Tclass._System.Tuple2(GenericBasics.Tr$A, TBitvector(7)), $Heap);
    ##b#1 := b#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#1, GenericBasics.Tr$B, $Heap);
    assume GenericBasics.Tr.STeen#canCall(GenericBasics.Tr$A, 
      GenericBasics.Tr$B, 
      TBitvector(7), 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
      b#0);
    assume GenericBasics.Tr.STeen#canCall(GenericBasics.Tr$A, 
      GenericBasics.Tr$B, 
      TBitvector(7), 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
      b#0);
    bb#0 := GenericBasics.Tr.STeen(GenericBasics.Tr$A, 
      GenericBasics.Tr$B, 
      TBitvector(7), 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
      b#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(177,10)
    assume true;
    ##a#5 := Lit(#_System._tuple#2._#Make2($Box(Lit(false)), $Box(Lit(70bv7))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#5, Tclass._System.Tuple2(TBool, TBitvector(7)), $Heap);
    ##b#2 := LitReal(71e-2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, TReal, $Heap);
    assume GenericBasics.Tr.STeen#canCall(TBool, 
      TReal, 
      TBitvector(7), 
      Lit(#_System._tuple#2._#Make2($Box(Lit(false)), $Box(Lit(70bv7)))), 
      $Box(LitReal(71e-2)));
    assume GenericBasics.Tr.STeen#canCall(TBool, 
      TReal, 
      TBitvector(7), 
      Lit(#_System._tuple#2._#Make2($Box(Lit(false)), $Box(Lit(70bv7)))), 
      $Box(LitReal(71e-2)));
    rr#0 := LitReal($Unbox(GenericBasics.Tr.STeen(TBool, 
          TReal, 
          TBitvector(7), 
          Lit(#_System._tuple#2._#Make2($Box(Lit(false)), $Box(Lit(70bv7)))), 
          $Box(LitReal(71e-2)))): real);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(178,10)
    assume true;
    ##a#6 := Lit(#_System._tuple#2._#Make2($Box(Lit(false)), $Box(Lit(70bv7))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#6, Tclass._System.Tuple2(TBool, TBitvector(7)), $Heap);
    ##b#3 := b#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#3, GenericBasics.Tr$B, $Heap);
    assume GenericBasics.Tr.STeen#canCall(TBool, 
      GenericBasics.Tr$B, 
      TBitvector(7), 
      Lit(#_System._tuple#2._#Make2($Box(Lit(false)), $Box(Lit(70bv7)))), 
      b#0);
    assume GenericBasics.Tr.STeen#canCall(TBool, 
      GenericBasics.Tr$B, 
      TBitvector(7), 
      Lit(#_System._tuple#2._#Make2($Box(Lit(false)), $Box(Lit(70bv7)))), 
      b#0);
    bb#0 := GenericBasics.Tr.STeen(TBool, 
      GenericBasics.Tr$B, 
      TBitvector(7), 
      Lit(#_System._tuple#2._#Make2($Box(Lit(false)), $Box(Lit(70bv7)))), 
      b#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(179,10)
    assume true;
    ##a#7 := Lit(#_System._tuple#2._#Make2($Box(Lit(Seq#Empty(): Seq)), $Box(Lit(70bv7))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#7, Tclass._System.Tuple2(TSeq(TInt), TBitvector(7)), $Heap);
    ##b#4 := Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(80))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#4, TSet(TInt), $Heap);
    assume GenericBasics.Tr.STeen#canCall(TSeq(TInt), 
      TSet(TInt), 
      TBitvector(7), 
      Lit(#_System._tuple#2._#Make2($Box(Lit(Seq#Empty(): Seq)), $Box(Lit(70bv7)))), 
      $Box(Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(80))))));
    assume GenericBasics.Tr.STeen#canCall(TSeq(TInt), 
      TSet(TInt), 
      TBitvector(7), 
      Lit(#_System._tuple#2._#Make2($Box(Lit(Seq#Empty(): Seq)), $Box(Lit(70bv7)))), 
      $Box(Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(80))))));
    ss#0 := Lit($Unbox(GenericBasics.Tr.STeen(TSeq(TInt), 
          TSet(TInt), 
          TBitvector(7), 
          Lit(#_System._tuple#2._#Make2($Box(Lit(Seq#Empty(): Seq)), $Box(Lit(70bv7)))), 
          $Box(Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(80))))))): Set);
}



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

procedure {:verboseName "GenericBasics.Cl._ctor (well-formedness)"} CheckWellFormed$$GenericBasics.Cl.__ctor(GenericBasics.Cl$Q: Ty) returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Cl._ctor (call)"} Call$$GenericBasics.Cl.__ctor(GenericBasics.Cl$Q: Ty)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap));
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



procedure {:verboseName "GenericBasics.Cl._ctor (correctness)"} Impl$$GenericBasics.Cl.__ctor(GenericBasics.Cl$Q: Ty) returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Cl._ctor (correctness)"} Impl$$GenericBasics.Cl.__ctor(GenericBasics.Cl$Q: Ty) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.abc: Box;
  var this.xyz: Box;
  var $rhs#0: int;
  var $rhs#1: int;

    // AddMethodImpl: _ctor, Impl$$GenericBasics.Cl.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(185,20)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(186,11)
    assume true;
    assume true;
    this.abc := $Box(LitInt(100));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(187,16)
    assume true;
    assume true;
    this.abc := $Box(LitInt(101));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(188,11)
    assume true;
    assume true;
    this.xyz := $Box(LitInt(20));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(189,16)
    assume true;
    assume true;
    this.xyz := $Box(LitInt(21));
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(185,20)
    assume this != null && $Is(this, Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q));
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(GenericBasics.Tr.abc(GenericBasics.Cl$Q, TInt, this)): int
       == $Unbox(this.abc): int;
    assume $Unbox(read($Heap, this, GenericBasics.Tr.xyz)): int == $Unbox(this.xyz): int;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(185,20)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(191,11)
    assume true;
    assert {:id "id141"} $_ModifiesFrame[this, GenericBasics.Tr.xyz];
    assume true;
    $rhs#0 := LitInt(22);
    $Heap := update($Heap, this, GenericBasics.Tr.xyz, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(192,16)
    assume true;
    assert {:id "id144"} $_ModifiesFrame[this, GenericBasics.Tr.xyz];
    assume true;
    $rhs#1 := LitInt(23);
    $Heap := update($Heap, this, GenericBasics.Tr.xyz, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "GenericBasics.Cl.ReferToMembers (well-formedness)"} CheckWellFormed$$GenericBasics.Cl.ReferToMembers(GenericBasics.Cl$Q: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    a#0: Box
       where $IsBox(a#0, GenericBasics.Cl$Q) && $IsAllocBox(a#0, GenericBasics.Cl$Q, $Heap), 
    b#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Cl.ReferToMembers (call)"} Call$$GenericBasics.Cl.ReferToMembers(GenericBasics.Cl$Q: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    a#0: Box
       where $IsBox(a#0, GenericBasics.Cl$Q) && $IsAllocBox(a#0, GenericBasics.Cl$Q, $Heap), 
    b#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GenericBasics.Cl.ReferToMembers (correctness)"} Impl$$GenericBasics.Cl.ReferToMembers(GenericBasics.Cl$Q: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    a#0: Box
       where $IsBox(a#0, GenericBasics.Cl$Q) && $IsAllocBox(a#0, GenericBasics.Cl$Q, $Heap), 
    b#0: int)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Cl.ReferToMembers (correctness)"} Impl$$GenericBasics.Cl.ReferToMembers(GenericBasics.Cl$Q: Ty, this: ref, a#0: Box, b#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $rhs#1: int;
  var x#0: int;
  var y#0: int;
  var defass#tt#0: bool;
  var tt#0: ref
     where defass#tt#0
       ==> $Is(tt#0, Tclass.GenericBasics.Tr(GenericBasics.Cl$Q, TInt))
         && $IsAlloc(tt#0, Tclass.GenericBasics.Tr(GenericBasics.Cl$Q, TInt), $Heap);
  var bb#0: int;
  var sq#0: Seq where $Is(sq#0, TSeq(TInt)) && $IsAlloc(sq#0, TSeq(TInt), $Heap);
  var $rhs##0: int;
  var $rhs##1: Seq;
  var x##0: int;
  var a##0: Box;
  var b##0: int;
  var $tmp##0: Box;
  var $rhs##2: int;
  var $rhs##3: Seq;
  var x##1: int;
  var a##1: Box;
  var b##1: int;
  var $tmp##1: Box;
  var $rhs##4: int;
  var $rhs##5: Seq;
  var x##2: int;
  var a##2: Box;
  var b##2: int;
  var $tmp##2: Box;
  var $rhs##6: int;
  var y##0: int;
  var a##3: Box;
  var b##3: int;
  var $tmp##3: Box;
  var $rhs##7: int;
  var y##1: int;
  var a##4: Box;
  var b##4: int;
  var $tmp##4: Box;
  var $rhs##8: int;
  var y##2: int;
  var a##5: Box;
  var b##5: int;
  var $tmp##5: Box;
  var $rhs##9: int;
  var y##3: int;
  var a##6: Box;
  var b##6: int;
  var $tmp##6: Box;
  var ss#0: Set where $Is(ss#0, TSet(TInt)) && $IsAlloc(ss#0, TSet(TInt), $Heap);
  var $rhs##10: Set;
  var y##4: int;
  var a##7: Seq;
  var b##7: Set;
  var $tmp##7: Box;
  var ##a#0: DatatypeType;
  var ##a#1: DatatypeType;
  var rr#0: int;
  var ##a#2: DatatypeType;
  var ##a#3: DatatypeType;
  var ##b#0: int;
  var ##a#4: DatatypeType;
  var ##b#1: int;
  var ##a#5: DatatypeType;
  var ##b#2: int;
  var ##a#6: DatatypeType;
  var ##b#3: int;
  var ##a#7: DatatypeType;
  var ##b#4: Set;

    // AddMethodImpl: ReferToMembers, Impl$$GenericBasics.Cl.ReferToMembers
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(197,11)
    assume true;
    assert {:id "id147"} $_ModifiesFrame[this, GenericBasics.Tr.xyz];
    assume true;
    $rhs#0 := b#0;
    $Heap := update($Heap, this, GenericBasics.Tr.xyz, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(198,16)
    assume true;
    assert {:id "id150"} $_ModifiesFrame[this, GenericBasics.Tr.xyz];
    assume true;
    $rhs#1 := b#0;
    $Heap := update($Heap, this, GenericBasics.Tr.xyz, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(199,13)
    assume true;
    assume true;
    x#0 := $Unbox(read($Heap, this, GenericBasics.Tr.xyz)): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(200,13)
    assume true;
    assume true;
    y#0 := $Unbox(read($Heap, this, GenericBasics.Tr.xyz)): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(202,26)
    assume true;
    assume true;
    tt#0 := this;
    defass#tt#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(204,25)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type seq<int>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := b#0;
    call {:id "id156"} $tmp##0, $rhs##1 := Call$$GenericBasics.Tr.Inst(GenericBasics.Cl$Q, TInt, this, x##0, a##0, $Box(b##0));
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): int;
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##0;
    sq#0 := $rhs##1;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(205,26)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type seq<int>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##1 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##1 := b#0;
    call {:id "id159"} $tmp##1, $rhs##3 := Call$$GenericBasics.Tr.Inst(GenericBasics.Cl$Q, TInt, this, x##1, a##1, $Box(b##1));
    havoc $rhs##2;
    assume $rhs##2 == $Unbox($tmp##1): int;
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##2;
    sq#0 := $rhs##3;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(206,24)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type seq<int>
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id162"} defass#tt#0;
    assume true;
    assert {:id "id163"} tt#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##2 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##2 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##2 := b#0;
    call {:id "id164"} $tmp##2, $rhs##5 := Call$$GenericBasics.Tr.Inst(GenericBasics.Cl$Q, TInt, tt#0, x##2, a##2, $Box(b##2));
    havoc $rhs##4;
    assume $rhs##4 == $Unbox($tmp##2): int;
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##4;
    sq#0 := $rhs##5;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(208,17)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := LitInt(1);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##3 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##3 := b#0;
    call {:id "id167"} $tmp##3 := Call$$GenericBasics.Tr.Stat(GenericBasics.Cl$Q, TInt, y##0, a##3, $Box(b##3));
    havoc $rhs##6;
    assume $rhs##6 == $Unbox($tmp##3): int;
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##6;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(209,22)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##1 := LitInt(1);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##4 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##4 := b#0;
    call {:id "id169"} $tmp##4 := Call$$GenericBasics.Tr.Stat(GenericBasics.Cl$Q, TInt, y##1, a##4, $Box(b##4));
    havoc $rhs##7;
    assume $rhs##7 == $Unbox($tmp##4): int;
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##7;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(210,20)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id171"} defass#tt#0;
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##2 := LitInt(1);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##5 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##5 := b#0;
    call {:id "id172"} $tmp##5 := Call$$GenericBasics.Tr.Stat(GenericBasics.Cl$Q, TInt, y##2, a##5, $Box(b##5));
    havoc $rhs##8;
    assume $rhs##8 == $Unbox($tmp##5): int;
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##8;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(211,20)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##3 := LitInt(1);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##6 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##6 := b#0;
    call {:id "id174"} $tmp##6 := Call$$GenericBasics.Tr.Stat(GenericBasics.Cl$Q, TInt, y##3, a##6, $Box(b##6));
    havoc $rhs##9;
    assume $rhs##9 == $Unbox($tmp##6): int;
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##9;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(212,24)
    assume true;
    // TrCallStmt: Adding lhs with type set<int>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##4 := LitInt(2);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##7 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(2))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##7 := Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(2))));
    call {:id "id176"} $tmp##7 := Call$$GenericBasics.Tr.Stat(TSeq(TInt), TSet(TInt), y##4, $Box(a##7), $Box(b##7));
    havoc $rhs##10;
    assume $rhs##10 == $Unbox($tmp##7): Set;
    // TrCallStmt: After ProcessCallStmt
    ss#0 := $rhs##10;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(214,10)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q), $Heap);
    ##a#0 := #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, Tclass._System.Tuple2(GenericBasics.Cl$Q, TBitvector(7)), $Heap);
    assume GenericBasics.Cl.Teen#canCall(GenericBasics.Cl$Q, 
      TBitvector(7), 
      this, 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))));
    assume GenericBasics.Cl.Teen#canCall(GenericBasics.Cl$Q, 
      TBitvector(7), 
      this, 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))));
    bb#0 := GenericBasics.Cl.Teen(GenericBasics.Cl$Q, 
      TBitvector(7), 
      this, 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(215,10)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.GenericBasics.Cl?(GenericBasics.Cl$Q), $Heap);
    ##a#1 := #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, Tclass._System.Tuple2(GenericBasics.Cl$Q, TBitvector(7)), $Heap);
    assume GenericBasics.Cl.Teen#canCall(GenericBasics.Cl$Q, 
      TBitvector(7), 
      this, 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))));
    assume GenericBasics.Cl.Teen#canCall(GenericBasics.Cl$Q, 
      TBitvector(7), 
      this, 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))));
    bb#0 := GenericBasics.Cl.Teen(GenericBasics.Cl$Q, 
      TBitvector(7), 
      this, 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(216,14)
    assume true;
    assert {:id "id180"} defass#tt#0;
    assert {:id "id181"} tt#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(tt#0), Tclass.GenericBasics.Tr?(GenericBasics.Cl$Q, TInt), $Heap);
    ##a#2 := #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#2, Tclass._System.Tuple2(GenericBasics.Cl$Q, TBitvector(7)), $Heap);
    assume GenericBasics.Tr.Teen#canCall(GenericBasics.Cl$Q, 
      TInt, 
      TBitvector(7), 
      tt#0, 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))));
    assume GenericBasics.Tr.Teen#canCall(GenericBasics.Cl$Q, 
      TInt, 
      TBitvector(7), 
      tt#0, 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))));
    rr#0 := $Unbox(GenericBasics.Tr.Teen(GenericBasics.Cl$Q, 
        TInt, 
        TBitvector(7), 
        tt#0, 
        #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(218,10)
    assume true;
    ##a#3 := #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#3, Tclass._System.Tuple2(GenericBasics.Cl$Q, TBitvector(7)), $Heap);
    ##b#0 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TInt, $Heap);
    assume GenericBasics.Tr.STeen#canCall(GenericBasics.Cl$Q, 
      TInt, 
      TBitvector(7), 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
      $Box(b#0));
    assume GenericBasics.Tr.STeen#canCall(GenericBasics.Cl$Q, 
      TInt, 
      TBitvector(7), 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
      $Box(b#0));
    bb#0 := $Unbox(GenericBasics.Tr.STeen(GenericBasics.Cl$Q, 
        TInt, 
        TBitvector(7), 
        #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
        $Box(b#0))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(219,10)
    assume true;
    ##a#4 := #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#4, Tclass._System.Tuple2(GenericBasics.Cl$Q, TBitvector(7)), $Heap);
    ##b#1 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, TInt, $Heap);
    assume GenericBasics.Tr.STeen#canCall(GenericBasics.Cl$Q, 
      TInt, 
      TBitvector(7), 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
      $Box(b#0));
    assume GenericBasics.Tr.STeen#canCall(GenericBasics.Cl$Q, 
      TInt, 
      TBitvector(7), 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
      $Box(b#0));
    bb#0 := $Unbox(GenericBasics.Tr.STeen(GenericBasics.Cl$Q, 
        TInt, 
        TBitvector(7), 
        #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
        $Box(b#0))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(220,10)
    assume true;
    assert {:id "id185"} defass#tt#0;
    ##a#5 := #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#5, Tclass._System.Tuple2(GenericBasics.Cl$Q, TBitvector(7)), $Heap);
    ##b#2 := LitInt(71);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, TInt, $Heap);
    assume GenericBasics.Tr.STeen#canCall(GenericBasics.Cl$Q, 
      TInt, 
      TBitvector(7), 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
      $Box(LitInt(71)));
    assume GenericBasics.Tr.STeen#canCall(GenericBasics.Cl$Q, 
      TInt, 
      TBitvector(7), 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
      $Box(LitInt(71)));
    rr#0 := $Unbox(GenericBasics.Tr.STeen(GenericBasics.Cl$Q, 
        TInt, 
        TBitvector(7), 
        #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
        $Box(LitInt(71)))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(221,10)
    assume true;
    ##a#6 := Lit(#_System._tuple#2._#Make2($Box(Lit(false)), $Box(Lit(70bv7))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#6, Tclass._System.Tuple2(TBool, TBitvector(7)), $Heap);
    ##b#3 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#3, TInt, $Heap);
    assume GenericBasics.Tr.STeen#canCall(TBool, 
      TInt, 
      TBitvector(7), 
      Lit(#_System._tuple#2._#Make2($Box(Lit(false)), $Box(Lit(70bv7)))), 
      $Box(b#0));
    assume GenericBasics.Tr.STeen#canCall(TBool, 
      TInt, 
      TBitvector(7), 
      Lit(#_System._tuple#2._#Make2($Box(Lit(false)), $Box(Lit(70bv7)))), 
      $Box(b#0));
    bb#0 := $Unbox(GenericBasics.Tr.STeen(TBool, 
        TInt, 
        TBitvector(7), 
        Lit(#_System._tuple#2._#Make2($Box(Lit(false)), $Box(Lit(70bv7)))), 
        $Box(b#0))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(222,10)
    assume true;
    ##a#7 := Lit(#_System._tuple#2._#Make2($Box(Lit(Seq#Empty(): Seq)), $Box(Lit(70bv7))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#7, Tclass._System.Tuple2(TSeq(TInt), TBitvector(7)), $Heap);
    ##b#4 := Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(80))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#4, TSet(TInt), $Heap);
    assume GenericBasics.Tr.STeen#canCall(TSeq(TInt), 
      TSet(TInt), 
      TBitvector(7), 
      Lit(#_System._tuple#2._#Make2($Box(Lit(Seq#Empty(): Seq)), $Box(Lit(70bv7)))), 
      $Box(Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(80))))));
    assume GenericBasics.Tr.STeen#canCall(TSeq(TInt), 
      TSet(TInt), 
      TBitvector(7), 
      Lit(#_System._tuple#2._#Make2($Box(Lit(Seq#Empty(): Seq)), $Box(Lit(70bv7)))), 
      $Box(Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(80))))));
    ss#0 := Lit($Unbox(GenericBasics.Tr.STeen(TSeq(TInt), 
          TSet(TInt), 
          TBitvector(7), 
          Lit(#_System._tuple#2._#Make2($Box(Lit(Seq#Empty(): Seq)), $Box(Lit(70bv7)))), 
          $Box(Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(80))))))): Set);
}



// function declaration for GenericBasics.Cl.Teen
function GenericBasics.Cl.Teen(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.Teen$S: Ty, 
    this: ref, 
    a#0: DatatypeType)
   : int
uses {
// definition axiom for GenericBasics.Cl.Teen (revealed)
axiom {:id "id189"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Cl$Q: Ty, 
      GenericBasics.Cl.Teen$S: Ty, 
      this: ref, 
      a#0: DatatypeType :: 
    { GenericBasics.Cl.Teen(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, this, a#0) } 
    GenericBasics.Cl.Teen#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, this, a#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
           && $Is(a#0, Tclass._System.Tuple2(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S)))
       ==> GenericBasics.Cl.Teen(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, this, a#0)
         == LitInt(12));
// definition axiom for GenericBasics.Cl.Teen for decreasing-related literals (revealed)
axiom {:id "id190"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Cl$Q: Ty, 
      GenericBasics.Cl.Teen$S: Ty, 
      this: ref, 
      a#0: DatatypeType :: 
    {:weight 3} { GenericBasics.Cl.Teen(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, this, Lit(a#0)) } 
    GenericBasics.Cl.Teen#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, this, Lit(a#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
           && $Is(a#0, Tclass._System.Tuple2(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S)))
       ==> GenericBasics.Cl.Teen(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, this, Lit(a#0))
         == LitInt(12));
// definition axiom for GenericBasics.Cl.Teen for all literals (revealed)
axiom {:id "id191"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Cl$Q: Ty, 
      GenericBasics.Cl.Teen$S: Ty, 
      this: ref, 
      a#0: DatatypeType :: 
    {:weight 3} { GenericBasics.Cl.Teen(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, Lit(this), Lit(a#0)) } 
    GenericBasics.Cl.Teen#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, Lit(this), Lit(a#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
           && $Is(a#0, Tclass._System.Tuple2(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S)))
       ==> GenericBasics.Cl.Teen(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, Lit(this), Lit(a#0))
         == LitInt(12));
}

function GenericBasics.Cl.Teen#canCall(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.Teen$S: Ty, 
    this: ref, 
    a#0: DatatypeType)
   : bool;

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

// override axiom for GenericBasics.Tr.Teen in class GenericBasics.Cl
axiom 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Cl$Q: Ty, 
      GenericBasics.Cl.Teen$S: Ty, 
      this: ref, 
      a#0: DatatypeType :: 
    { GenericBasics.Tr.Teen(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.Teen$S, this, a#0), $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)) } 
      { GenericBasics.Tr.Teen(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.Teen$S, this, a#0), GenericBasics.Cl.Teen(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, this, a#0) } 
    GenericBasics.Cl.Teen#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, this, a#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)))
       ==> GenericBasics.Tr.Teen(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.Teen$S, this, a#0)
         == $Box(GenericBasics.Cl.Teen(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S, this, a#0)));

procedure {:verboseName "GenericBasics.Cl.Teen (well-formedness)"} CheckWellformed$$GenericBasics.Cl.Teen(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.Teen$S: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    a#0: DatatypeType
       where $Is(a#0, Tclass._System.Tuple2(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Cl.Teen (override check)"} OverrideCheck$$GenericBasics.Cl.Teen(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.Teen$S: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    a#0: DatatypeType
       where $Is(a#0, Tclass._System.Tuple2(GenericBasics.Cl$Q, GenericBasics.Cl.Teen$S)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Cl.Teen (override check)"} OverrideCheck$$GenericBasics.Cl.Teen(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.Teen$S: Ty, 
    this: ref, 
    a#0: DatatypeType)
{
  var GenericBasics.Tr$A: Ty;
  var GenericBasics.Tr$B: Ty;
  var GenericBasics.Tr.Teen$R: Ty;
  var Cl_$_ReadsFrame: [ref,Field]bool;

    assume GenericBasics.Tr$A == GenericBasics.Cl$Q;
    assume GenericBasics.Tr$B == TInt;
    assume GenericBasics.Tr.Teen$R == GenericBasics.Cl.Teen$S;
    assert {:id "id193"} DtRank(a#0) <= DtRank(a#0);
    Cl_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id194"} (forall $o: ref, $f: Field :: true);
}



// function declaration for GenericBasics.Cl.RValue0
function GenericBasics.Cl.RValue0(GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue0$XX: Ty, this: ref, x#0: Box)
   : int
uses {
// definition axiom for GenericBasics.Cl.RValue0 (revealed)
axiom {:id "id195"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue0$XX: Ty, this: ref, x#0: Box :: 
    { GenericBasics.Cl.RValue0(GenericBasics.Cl$Q, GenericBasics.Cl.RValue0$XX, this, x#0) } 
    GenericBasics.Cl.RValue0#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue0$XX, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
           && $IsBox(x#0, GenericBasics.Cl.RValue0$XX))
       ==> GenericBasics.Cl.RValue0(GenericBasics.Cl$Q, GenericBasics.Cl.RValue0$XX, this, x#0)
         == LitInt(5));
// definition axiom for GenericBasics.Cl.RValue0 for all literals (revealed)
axiom {:id "id196"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue0$XX: Ty, this: ref, x#0: Box :: 
    {:weight 3} { GenericBasics.Cl.RValue0(GenericBasics.Cl$Q, GenericBasics.Cl.RValue0$XX, Lit(this), Lit(x#0)) } 
    GenericBasics.Cl.RValue0#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue0$XX, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
           && $IsBox(x#0, GenericBasics.Cl.RValue0$XX))
       ==> GenericBasics.Cl.RValue0(GenericBasics.Cl$Q, GenericBasics.Cl.RValue0$XX, Lit(this), Lit(x#0))
         == LitInt(5));
}

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

// override axiom for GenericBasics.Tr.RValue0 in class GenericBasics.Cl
axiom 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue0$XX: Ty, this: ref, x#0: Box :: 
    { GenericBasics.Tr.RValue0(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue0$XX, this, x#0), $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)) } 
      { GenericBasics.Tr.RValue0(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue0$XX, this, x#0), GenericBasics.Cl.RValue0(GenericBasics.Cl$Q, GenericBasics.Cl.RValue0$XX, this, x#0) } 
    GenericBasics.Cl.RValue0#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue0$XX, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)))
       ==> GenericBasics.Tr.RValue0(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue0$XX, this, x#0)
         == $Box(GenericBasics.Cl.RValue0(GenericBasics.Cl$Q, GenericBasics.Cl.RValue0$XX, this, x#0)));

procedure {:verboseName "GenericBasics.Cl.RValue0 (well-formedness)"} CheckWellformed$$GenericBasics.Cl.RValue0(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.RValue0$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Cl.RValue0$XX));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Cl.RValue0 (override check)"} OverrideCheck$$GenericBasics.Cl.RValue0(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.RValue0$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Cl.RValue0$XX));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Cl.RValue0 (override check)"} OverrideCheck$$GenericBasics.Cl.RValue0(GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue0$XX: Ty, this: ref, x#0: Box)
{
  var GenericBasics.Tr$A: Ty;
  var GenericBasics.Tr$B: Ty;
  var GenericBasics.Tr.RValue0$X: Ty;
  var Cl_$_ReadsFrame: [ref,Field]bool;

    assume GenericBasics.Tr$A == GenericBasics.Cl$Q;
    assume GenericBasics.Tr$B == TInt;
    assume GenericBasics.Tr.RValue0$X == GenericBasics.Cl.RValue0$XX;
    assert {:id "id198"} true;
    Cl_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id199"} (forall $o: ref, $f: Field :: true);
}



// function declaration for GenericBasics.Cl.RValue1
function GenericBasics.Cl.RValue1(GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue1$XX: Ty, this: ref, x#0: Box)
   : int
uses {
// definition axiom for GenericBasics.Cl.RValue1 (revealed)
axiom {:id "id200"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue1$XX: Ty, this: ref, x#0: Box :: 
    { GenericBasics.Cl.RValue1(GenericBasics.Cl$Q, GenericBasics.Cl.RValue1$XX, this, x#0) } 
    GenericBasics.Cl.RValue1#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue1$XX, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
           && $IsBox(x#0, GenericBasics.Cl.RValue1$XX))
       ==> GenericBasics.Cl.RValue1(GenericBasics.Cl$Q, GenericBasics.Cl.RValue1$XX, this, x#0)
         == LitInt(5));
// definition axiom for GenericBasics.Cl.RValue1 for all literals (revealed)
axiom {:id "id201"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue1$XX: Ty, this: ref, x#0: Box :: 
    {:weight 3} { GenericBasics.Cl.RValue1(GenericBasics.Cl$Q, GenericBasics.Cl.RValue1$XX, Lit(this), Lit(x#0)) } 
    GenericBasics.Cl.RValue1#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue1$XX, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
           && $IsBox(x#0, GenericBasics.Cl.RValue1$XX))
       ==> GenericBasics.Cl.RValue1(GenericBasics.Cl$Q, GenericBasics.Cl.RValue1$XX, Lit(this), Lit(x#0))
         == LitInt(5));
}

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

// override axiom for GenericBasics.Tr.RValue1 in class GenericBasics.Cl
axiom 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue1$XX: Ty, this: ref, x#0: Box :: 
    { GenericBasics.Tr.RValue1(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue1$XX, this, x#0), $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)) } 
      { GenericBasics.Tr.RValue1(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue1$XX, this, x#0), GenericBasics.Cl.RValue1(GenericBasics.Cl$Q, GenericBasics.Cl.RValue1$XX, this, x#0) } 
    GenericBasics.Cl.RValue1#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue1$XX, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)))
       ==> GenericBasics.Tr.RValue1(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue1$XX, this, x#0)
         == $Box(GenericBasics.Cl.RValue1(GenericBasics.Cl$Q, GenericBasics.Cl.RValue1$XX, this, x#0)));

procedure {:verboseName "GenericBasics.Cl.RValue1 (well-formedness)"} CheckWellformed$$GenericBasics.Cl.RValue1(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.RValue1$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Cl.RValue1$XX));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Cl.RValue1 (override check)"} OverrideCheck$$GenericBasics.Cl.RValue1(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.RValue1$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Cl.RValue1$XX))
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Cl.RValue1 (override check)"} OverrideCheck$$GenericBasics.Cl.RValue1(GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue1$XX: Ty, this: ref, x#0: Box)
   returns (r#0: int)
{
  var GenericBasics.Tr$A: Ty;
  var GenericBasics.Tr$B: Ty;
  var GenericBasics.Tr.RValue1$X: Ty;
  var Cl_$_ReadsFrame: [ref,Field]bool;

    assume GenericBasics.Tr$A == GenericBasics.Cl$Q;
    assume GenericBasics.Tr$B == TInt;
    assume GenericBasics.Tr.RValue1$X == GenericBasics.Cl.RValue1$XX;
    assert {:id "id203"} true;
    Cl_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id204"} (forall $o: ref, $f: Field :: true);
    assume GenericBasics.Cl.RValue1(GenericBasics.Cl$Q, GenericBasics.Cl.RValue1$XX, this, x#0)
       == r#0;
}



// function declaration for GenericBasics.Cl.RValue2
function GenericBasics.Cl.RValue2(GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue2$XX: Ty, this: ref, x#0: Box)
   : int
uses {
// definition axiom for GenericBasics.Cl.RValue2 (revealed)
axiom {:id "id205"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue2$XX: Ty, this: ref, x#0: Box :: 
    { GenericBasics.Cl.RValue2(GenericBasics.Cl$Q, GenericBasics.Cl.RValue2$XX, this, x#0) } 
    GenericBasics.Cl.RValue2#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue2$XX, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
           && $IsBox(x#0, GenericBasics.Cl.RValue2$XX))
       ==> GenericBasics.Cl.RValue2(GenericBasics.Cl$Q, GenericBasics.Cl.RValue2$XX, this, x#0)
         == LitInt(5));
// definition axiom for GenericBasics.Cl.RValue2 for all literals (revealed)
axiom {:id "id206"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue2$XX: Ty, this: ref, x#0: Box :: 
    {:weight 3} { GenericBasics.Cl.RValue2(GenericBasics.Cl$Q, GenericBasics.Cl.RValue2$XX, Lit(this), Lit(x#0)) } 
    GenericBasics.Cl.RValue2#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue2$XX, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
           && $IsBox(x#0, GenericBasics.Cl.RValue2$XX))
       ==> GenericBasics.Cl.RValue2(GenericBasics.Cl$Q, GenericBasics.Cl.RValue2$XX, Lit(this), Lit(x#0))
         == LitInt(5));
}

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

// override axiom for GenericBasics.Tr.RValue2 in class GenericBasics.Cl
axiom 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue2$XX: Ty, this: ref, x#0: Box :: 
    { GenericBasics.Tr.RValue2(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue2$XX, this, x#0), $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)) } 
      { GenericBasics.Tr.RValue2(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue2$XX, this, x#0), GenericBasics.Cl.RValue2(GenericBasics.Cl$Q, GenericBasics.Cl.RValue2$XX, this, x#0) } 
    GenericBasics.Cl.RValue2#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue2$XX, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)))
       ==> GenericBasics.Tr.RValue2(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue2$XX, this, x#0)
         == $Box(GenericBasics.Cl.RValue2(GenericBasics.Cl$Q, GenericBasics.Cl.RValue2$XX, this, x#0)));

procedure {:verboseName "GenericBasics.Cl.RValue2 (well-formedness)"} CheckWellformed$$GenericBasics.Cl.RValue2(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.RValue2$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Cl.RValue2$XX))
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Cl.RValue2 (override check)"} OverrideCheck$$GenericBasics.Cl.RValue2(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.RValue2$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Cl.RValue2$XX))
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Cl.RValue2 (override check)"} OverrideCheck$$GenericBasics.Cl.RValue2(GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue2$XX: Ty, this: ref, x#0: Box)
   returns (r#0: int)
{
  var GenericBasics.Tr$A: Ty;
  var GenericBasics.Tr$B: Ty;
  var GenericBasics.Tr.RValue2$X: Ty;
  var Cl_$_ReadsFrame: [ref,Field]bool;

    assume GenericBasics.Tr$A == GenericBasics.Cl$Q;
    assume GenericBasics.Tr$B == TInt;
    assume GenericBasics.Tr.RValue2$X == GenericBasics.Cl.RValue2$XX;
    assert {:id "id209"} true;
    Cl_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id210"} (forall $o: ref, $f: Field :: true);
    assume GenericBasics.Cl.RValue2(GenericBasics.Cl$Q, GenericBasics.Cl.RValue2$XX, this, x#0)
       == r#0;
}



// function declaration for GenericBasics.Cl.RValue3
function GenericBasics.Cl.RValue3(GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue3$XX: Ty, this: ref, x#0: Box)
   : int
uses {
// definition axiom for GenericBasics.Cl.RValue3 (revealed)
axiom {:id "id211"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue3$XX: Ty, this: ref, x#0: Box :: 
    { GenericBasics.Cl.RValue3(GenericBasics.Cl$Q, GenericBasics.Cl.RValue3$XX, this, x#0) } 
    GenericBasics.Cl.RValue3#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue3$XX, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
           && $IsBox(x#0, GenericBasics.Cl.RValue3$XX))
       ==> GenericBasics.Cl.RValue3(GenericBasics.Cl$Q, GenericBasics.Cl.RValue3$XX, this, x#0)
         == LitInt(5));
// definition axiom for GenericBasics.Cl.RValue3 for all literals (revealed)
axiom {:id "id212"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue3$XX: Ty, this: ref, x#0: Box :: 
    {:weight 3} { GenericBasics.Cl.RValue3(GenericBasics.Cl$Q, GenericBasics.Cl.RValue3$XX, Lit(this), Lit(x#0)) } 
    GenericBasics.Cl.RValue3#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue3$XX, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
           && $IsBox(x#0, GenericBasics.Cl.RValue3$XX))
       ==> GenericBasics.Cl.RValue3(GenericBasics.Cl$Q, GenericBasics.Cl.RValue3$XX, Lit(this), Lit(x#0))
         == LitInt(5));
}

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

// override axiom for GenericBasics.Tr.RValue3 in class GenericBasics.Cl
axiom 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue3$XX: Ty, this: ref, x#0: Box :: 
    { GenericBasics.Tr.RValue3(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue3$XX, this, x#0), $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)) } 
      { GenericBasics.Tr.RValue3(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue3$XX, this, x#0), GenericBasics.Cl.RValue3(GenericBasics.Cl$Q, GenericBasics.Cl.RValue3$XX, this, x#0) } 
    GenericBasics.Cl.RValue3#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RValue3$XX, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)))
       ==> GenericBasics.Tr.RValue3(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RValue3$XX, this, x#0)
         == $Box(GenericBasics.Cl.RValue3(GenericBasics.Cl$Q, GenericBasics.Cl.RValue3$XX, this, x#0)));

procedure {:verboseName "GenericBasics.Cl.RValue3 (well-formedness)"} CheckWellformed$$GenericBasics.Cl.RValue3(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.RValue3$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Cl.RValue3$XX))
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Cl.RValue3 (override check)"} OverrideCheck$$GenericBasics.Cl.RValue3(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.RValue3$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Cl.RValue3$XX))
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Cl.RValue3 (override check)"} OverrideCheck$$GenericBasics.Cl.RValue3(GenericBasics.Cl$Q: Ty, GenericBasics.Cl.RValue3$XX: Ty, this: ref, x#0: Box)
   returns (r#0: int)
{
  var GenericBasics.Tr$A: Ty;
  var GenericBasics.Tr$B: Ty;
  var GenericBasics.Tr.RValue3$X: Ty;
  var Cl_$_ReadsFrame: [ref,Field]bool;

    assume GenericBasics.Tr$A == GenericBasics.Cl$Q;
    assume GenericBasics.Tr$B == TInt;
    assume GenericBasics.Tr.RValue3$X == GenericBasics.Cl.RValue3$XX;
    assert {:id "id215"} true;
    Cl_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id216"} (forall $o: ref, $f: Field :: true);
    assume GenericBasics.Cl.RValue3(GenericBasics.Cl$Q, GenericBasics.Cl.RValue3$XX, this, x#0)
       == r#0;
}



// function declaration for GenericBasics.Cl.RBValue
function GenericBasics.Cl.RBValue(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.RBValue$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int)
   : int
uses {
// definition axiom for GenericBasics.Cl.RBValue (revealed)
axiom {:id "id217"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Cl$Q: Ty, 
      GenericBasics.Cl.RBValue$XX: Ty, 
      this: ref, 
      x#0: Box, 
      b#0: int :: 
    { GenericBasics.Cl.RBValue(GenericBasics.Cl$Q, GenericBasics.Cl.RBValue$XX, this, x#0, b#0) } 
    GenericBasics.Cl.RBValue#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RBValue$XX, this, x#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
           && $IsBox(x#0, GenericBasics.Cl.RBValue$XX))
       ==> GenericBasics.Cl.RBValue(GenericBasics.Cl$Q, GenericBasics.Cl.RBValue$XX, this, x#0, b#0)
         == b#0 + 2);
// definition axiom for GenericBasics.Cl.RBValue for decreasing-related literals (revealed)
axiom {:id "id218"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Cl$Q: Ty, 
      GenericBasics.Cl.RBValue$XX: Ty, 
      this: ref, 
      x#0: Box, 
      b#0: int :: 
    {:weight 3} { GenericBasics.Cl.RBValue(GenericBasics.Cl$Q, GenericBasics.Cl.RBValue$XX, this, x#0, LitInt(b#0)) } 
    GenericBasics.Cl.RBValue#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RBValue$XX, this, x#0, LitInt(b#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
           && $IsBox(x#0, GenericBasics.Cl.RBValue$XX))
       ==> GenericBasics.Cl.RBValue(GenericBasics.Cl$Q, GenericBasics.Cl.RBValue$XX, this, x#0, LitInt(b#0))
         == LitInt(b#0 + 2));
// definition axiom for GenericBasics.Cl.RBValue for all literals (revealed)
axiom {:id "id219"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Cl$Q: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
           && $IsBox(x#0, GenericBasics.Cl.RBValue$XX))
       ==> GenericBasics.Cl.RBValue(GenericBasics.Cl$Q, 
          GenericBasics.Cl.RBValue$XX, 
          Lit(this), 
          Lit(x#0), 
          LitInt(b#0))
         == LitInt(b#0 + 2));
}

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

// override axiom for GenericBasics.Tr.RBValue in class GenericBasics.Cl
axiom 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Cl$Q: Ty, 
      GenericBasics.Cl.RBValue$XX: Ty, 
      this: ref, 
      x#0: Box, 
      b#0: int :: 
    { GenericBasics.Tr.RBValue(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RBValue$XX, this, x#0, $Box(b#0)), $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)) } 
      { GenericBasics.Tr.RBValue(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RBValue$XX, this, x#0, $Box(b#0)), GenericBasics.Cl.RBValue(GenericBasics.Cl$Q, GenericBasics.Cl.RBValue$XX, this, x#0, b#0) } 
    GenericBasics.Cl.RBValue#canCall(GenericBasics.Cl$Q, GenericBasics.Cl.RBValue$XX, this, x#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q)))
       ==> GenericBasics.Tr.RBValue(GenericBasics.Cl$Q, TInt, GenericBasics.Cl.RBValue$XX, this, x#0, $Box(b#0))
         == $Box(GenericBasics.Cl.RBValue(GenericBasics.Cl$Q, GenericBasics.Cl.RBValue$XX, this, x#0, b#0)));

procedure {:verboseName "GenericBasics.Cl.RBValue (well-formedness)"} CheckWellformed$$GenericBasics.Cl.RBValue(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.RBValue$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Cl.RBValue$XX), 
    b#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Cl.RBValue (override check)"} OverrideCheck$$GenericBasics.Cl.RBValue(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.RBValue$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Cl.RBValue$XX), 
    b#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Cl.RBValue (override check)"} OverrideCheck$$GenericBasics.Cl.RBValue(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.RBValue$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int)
{
  var GenericBasics.Tr$A: Ty;
  var GenericBasics.Tr$B: Ty;
  var GenericBasics.Tr.RBValue$X: Ty;
  var Cl_$_ReadsFrame: [ref,Field]bool;

    assume GenericBasics.Tr$A == GenericBasics.Cl$Q;
    assume GenericBasics.Tr$B == TInt;
    assume GenericBasics.Tr.RBValue$X == GenericBasics.Cl.RBValue$XX;
    assert {:id "id221"} true;
    Cl_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id222"} (forall $o: ref, $f: Field :: true);
}



procedure {:verboseName "GenericBasics.Cl.MValue0 (well-formedness)"} CheckWellFormed$$GenericBasics.Cl.MValue0(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.MValue0$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    x#0: Box
       where $IsBox(x#0, GenericBasics.Cl.MValue0$XX)
         && $IsAllocBox(x#0, GenericBasics.Cl.MValue0$XX, $Heap), 
    b#0: int)
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Cl.MValue0 (override check)"} OverrideCheck$$GenericBasics.Cl.MValue0(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.MValue0$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    x#0: Box
       where $IsBox(x#0, GenericBasics.Cl.MValue0$XX)
         && $IsAllocBox(x#0, GenericBasics.Cl.MValue0$XX, $Heap), 
    b#0: int)
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Cl.MValue0 (override check)"} OverrideCheck$$GenericBasics.Cl.MValue0(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.MValue0$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int)
   returns (r#0: int)
{
  var GenericBasics.Tr$A: Ty;
  var GenericBasics.Tr$B: Ty;
  var GenericBasics.Tr.MValue0$X: Ty;

    assume GenericBasics.Tr$A == GenericBasics.Cl$Q;
    assume GenericBasics.Tr$B == TInt;
    assume GenericBasics.Tr.MValue0$X == GenericBasics.Cl.MValue0$XX;
    assert {:id "id223"} true;
    assert {:id "id224"} (forall $o: ref, $f: Field :: true);
    assert {:id "id225"} (forall $o: ref, $f: Field :: true);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "GenericBasics.Cl.MValue0 (call)"} Call$$GenericBasics.Cl.MValue0(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.MValue0$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    x#0: Box
       where $IsBox(x#0, GenericBasics.Cl.MValue0$XX)
         && $IsAllocBox(x#0, GenericBasics.Cl.MValue0$XX, $Heap), 
    b#0: int)
   returns (r#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GenericBasics.Cl.MValue0 (correctness)"} Impl$$GenericBasics.Cl.MValue0(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.MValue0$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    x#0: Box
       where $IsBox(x#0, GenericBasics.Cl.MValue0$XX)
         && $IsAllocBox(x#0, GenericBasics.Cl.MValue0$XX, $Heap), 
    b#0: int)
   returns (r#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GenericBasics.Cl.MValue1 (well-formedness)"} CheckWellFormed$$GenericBasics.Cl.MValue1(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.MValue1$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    x#0: Box
       where $IsBox(x#0, GenericBasics.Cl.MValue1$XX)
         && $IsAllocBox(x#0, GenericBasics.Cl.MValue1$XX, $Heap), 
    b#0: int)
   returns (r#0: int, 
    y#0: Box
       where $IsBox(y#0, GenericBasics.Cl.MValue1$XX)
         && $IsAllocBox(y#0, GenericBasics.Cl.MValue1$XX, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Cl.MValue1 (override check)"} OverrideCheck$$GenericBasics.Cl.MValue1(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.MValue1$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    x#0: Box
       where $IsBox(x#0, GenericBasics.Cl.MValue1$XX)
         && $IsAllocBox(x#0, GenericBasics.Cl.MValue1$XX, $Heap), 
    b#0: int)
   returns (r#0: int, 
    y#0: Box
       where $IsBox(y#0, GenericBasics.Cl.MValue1$XX)
         && $IsAllocBox(y#0, GenericBasics.Cl.MValue1$XX, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Cl.MValue1 (override check)"} OverrideCheck$$GenericBasics.Cl.MValue1(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.MValue1$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int)
   returns (r#0: int, y#0: Box)
{
  var GenericBasics.Tr$A: Ty;
  var GenericBasics.Tr$B: Ty;
  var GenericBasics.Tr.MValue1$X: Ty;

    assume GenericBasics.Tr$A == GenericBasics.Cl$Q;
    assume GenericBasics.Tr$B == TInt;
    assume GenericBasics.Tr.MValue1$X == GenericBasics.Cl.MValue1$XX;
    assert {:id "id227"} true;
    assert {:id "id228"} (forall $o: ref, $f: Field :: true);
    assert {:id "id229"} (forall $o: ref, $f: Field :: true);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "GenericBasics.Cl.MValue1 (call)"} Call$$GenericBasics.Cl.MValue1(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.MValue1$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    x#0: Box
       where $IsBox(x#0, GenericBasics.Cl.MValue1$XX)
         && $IsAllocBox(x#0, GenericBasics.Cl.MValue1$XX, $Heap), 
    b#0: int)
   returns (r#0: int, 
    y#0: Box
       where $IsBox(y#0, GenericBasics.Cl.MValue1$XX)
         && $IsAllocBox(y#0, GenericBasics.Cl.MValue1$XX, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GenericBasics.Cl.MValue1 (correctness)"} Impl$$GenericBasics.Cl.MValue1(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.MValue1$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q))
         && $IsAlloc(this, Tclass.GenericBasics.Cl(GenericBasics.Cl$Q), $Heap), 
    x#0: Box
       where $IsBox(x#0, GenericBasics.Cl.MValue1$XX)
         && $IsAllocBox(x#0, GenericBasics.Cl.MValue1$XX, $Heap), 
    b#0: int)
   returns (r#0: int, 
    defass#y#0: bool, 
    y#0: Box
       where defass#y#0
         ==> $IsBox(y#0, GenericBasics.Cl.MValue1$XX)
           && $IsAllocBox(y#0, GenericBasics.Cl.MValue1$XX, $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Cl.MValue1 (correctness)"} Impl$$GenericBasics.Cl.MValue1(GenericBasics.Cl$Q: Ty, 
    GenericBasics.Cl.MValue1$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int)
   returns (r#0: int, defass#y#0: bool, y#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $rhs#1: Box;

    // AddMethodImpl: MValue1, Impl$$GenericBasics.Cl.MValue1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(236,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := b#0 + 4;
    assume true;
    $rhs#1 := x#0;
    r#0 := $rhs#0;
    y#0 := $rhs#1;
    defass#y#0 := true;
    assert {:id "id234"} defass#y#0;
}



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

procedure {:verboseName "GenericBasics.Mega._ctor (well-formedness)"} CheckWellFormed$$GenericBasics.Mega.__ctor(GenericBasics.Mega$P: Ty, GenericBasics.Mega$Q: Ty, GenericBasics.Mega$L: Ty)
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Mega._ctor (call)"} Call$$GenericBasics.Mega.__ctor(GenericBasics.Mega$P: Ty, GenericBasics.Mega$Q: Ty, GenericBasics.Mega$L: Ty)
   returns (this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap));
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



procedure {:verboseName "GenericBasics.Mega._ctor (correctness)"} Impl$$GenericBasics.Mega.__ctor(GenericBasics.Mega$P: Ty, GenericBasics.Mega$Q: Ty, GenericBasics.Mega$L: Ty)
   returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Mega._ctor (correctness)"} Impl$$GenericBasics.Mega.__ctor(GenericBasics.Mega$P: Ty, GenericBasics.Mega$Q: Ty, GenericBasics.Mega$L: Ty)
   returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.abc: Box;
  var this.xyz: Box;
  var $rhs#0: int;
  var $rhs#1: int;

    // AddMethodImpl: _ctor, Impl$$GenericBasics.Mega.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(243,20)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(244,11)
    assume true;
    assume true;
    this.abc := $Box(LitInt(100));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(245,16)
    assume true;
    assume true;
    this.abc := $Box(LitInt(101));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(246,11)
    assume true;
    assume true;
    this.xyz := $Box(LitInt(20));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(247,16)
    assume true;
    assume true;
    this.xyz := $Box(LitInt(21));
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(243,20)
    assume this != null
       && $Is(this, 
        Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L));
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(GenericBasics.Tr.abc(GenericBasics.Mega$Q, TInt, this)): int
       == $Unbox(this.abc): int;
    assume $Unbox(read($Heap, this, GenericBasics.Tr.xyz)): int == $Unbox(this.xyz): int;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(243,20)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(249,11)
    assume true;
    assert {:id "id239"} $_ModifiesFrame[this, GenericBasics.Tr.xyz];
    assume true;
    $rhs#0 := LitInt(22);
    $Heap := update($Heap, this, GenericBasics.Tr.xyz, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(250,16)
    assume true;
    assert {:id "id242"} $_ModifiesFrame[this, GenericBasics.Tr.xyz];
    assume true;
    $rhs#1 := LitInt(23);
    $Heap := update($Heap, this, GenericBasics.Tr.xyz, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "GenericBasics.Mega.ReferToMembers (well-formedness)"} CheckWellFormed$$GenericBasics.Mega.ReferToMembers(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    a#0: Box
       where $IsBox(a#0, GenericBasics.Mega$Q)
         && $IsAllocBox(a#0, GenericBasics.Mega$Q, $Heap), 
    b#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Mega.ReferToMembers (call)"} Call$$GenericBasics.Mega.ReferToMembers(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    a#0: Box
       where $IsBox(a#0, GenericBasics.Mega$Q)
         && $IsAllocBox(a#0, GenericBasics.Mega$Q, $Heap), 
    b#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GenericBasics.Mega.ReferToMembers (correctness)"} Impl$$GenericBasics.Mega.ReferToMembers(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    a#0: Box
       where $IsBox(a#0, GenericBasics.Mega$Q)
         && $IsAllocBox(a#0, GenericBasics.Mega$Q, $Heap), 
    b#0: int)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Mega.ReferToMembers (correctness)"} Impl$$GenericBasics.Mega.ReferToMembers(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $rhs#1: int;
  var x#0: int;
  var y#0: int;
  var defass#tt#0: bool;
  var tt#0: ref
     where defass#tt#0
       ==> $Is(tt#0, Tclass.GenericBasics.Tr(GenericBasics.Mega$Q, TInt))
         && $IsAlloc(tt#0, Tclass.GenericBasics.Tr(GenericBasics.Mega$Q, TInt), $Heap);
  var bb#0: int;
  var sq#0: Seq where $Is(sq#0, TSeq(TInt)) && $IsAlloc(sq#0, TSeq(TInt), $Heap);
  var $rhs##0: int;
  var $rhs##1: Seq;
  var x##0: int;
  var a##0: Box;
  var b##0: int;
  var $tmp##0: Box;
  var $rhs##2: int;
  var $rhs##3: Seq;
  var x##1: int;
  var a##1: Box;
  var b##1: int;
  var $tmp##1: Box;
  var $rhs##4: int;
  var $rhs##5: Seq;
  var x##2: int;
  var a##2: Box;
  var b##2: int;
  var $tmp##2: Box;
  var $rhs##6: int;
  var y##0: int;
  var a##3: Box;
  var b##3: int;
  var $tmp##3: Box;
  var $rhs##7: int;
  var y##1: int;
  var a##4: Box;
  var b##4: int;
  var $tmp##4: Box;
  var $rhs##8: int;
  var y##2: int;
  var a##5: Box;
  var b##5: int;
  var $tmp##5: Box;
  var $rhs##9: int;
  var y##3: int;
  var a##6: Box;
  var b##6: int;
  var $tmp##6: Box;
  var ss#0: Set where $Is(ss#0, TSet(TInt)) && $IsAlloc(ss#0, TSet(TInt), $Heap);
  var $rhs##10: Set;
  var y##4: int;
  var a##7: Seq;
  var b##7: Set;
  var $tmp##7: Box;
  var ##a#0: DatatypeType;
  var ##a#1: DatatypeType;
  var rr#0: int;
  var ##a#2: DatatypeType;
  var ##a#3: DatatypeType;
  var ##b#0: int;
  var ##a#4: DatatypeType;
  var ##b#1: int;
  var ##a#5: DatatypeType;
  var ##b#2: int;
  var ##a#6: DatatypeType;
  var ##b#3: int;
  var ##a#7: DatatypeType;
  var ##b#4: Set;

    // AddMethodImpl: ReferToMembers, Impl$$GenericBasics.Mega.ReferToMembers
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(255,11)
    assume true;
    assert {:id "id245"} $_ModifiesFrame[this, GenericBasics.Tr.xyz];
    assume true;
    $rhs#0 := b#0;
    $Heap := update($Heap, this, GenericBasics.Tr.xyz, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(256,16)
    assume true;
    assert {:id "id248"} $_ModifiesFrame[this, GenericBasics.Tr.xyz];
    assume true;
    $rhs#1 := b#0;
    $Heap := update($Heap, this, GenericBasics.Tr.xyz, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(257,13)
    assume true;
    assume true;
    x#0 := $Unbox(read($Heap, this, GenericBasics.Tr.xyz)): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(258,13)
    assume true;
    assume true;
    y#0 := $Unbox(read($Heap, this, GenericBasics.Tr.xyz)): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(260,26)
    assume true;
    assume true;
    tt#0 := this;
    defass#tt#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(262,25)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type seq<int>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := b#0;
    call {:id "id254"} $tmp##0, $rhs##1 := Call$$GenericBasics.Tr.Inst(GenericBasics.Mega$Q, TInt, this, x##0, a##0, $Box(b##0));
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): int;
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##0;
    sq#0 := $rhs##1;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(263,26)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type seq<int>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##1 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##1 := b#0;
    call {:id "id257"} $tmp##1, $rhs##3 := Call$$GenericBasics.Tr.Inst(GenericBasics.Mega$Q, TInt, this, x##1, a##1, $Box(b##1));
    havoc $rhs##2;
    assume $rhs##2 == $Unbox($tmp##1): int;
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##2;
    sq#0 := $rhs##3;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(264,24)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type seq<int>
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id260"} defass#tt#0;
    assume true;
    assert {:id "id261"} tt#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##2 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##2 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##2 := b#0;
    call {:id "id262"} $tmp##2, $rhs##5 := Call$$GenericBasics.Tr.Inst(GenericBasics.Mega$Q, TInt, tt#0, x##2, a##2, $Box(b##2));
    havoc $rhs##4;
    assume $rhs##4 == $Unbox($tmp##2): int;
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##4;
    sq#0 := $rhs##5;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(266,17)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := LitInt(1);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##3 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##3 := b#0;
    call {:id "id265"} $tmp##3 := Call$$GenericBasics.Tr.Stat(GenericBasics.Mega$Q, TInt, y##0, a##3, $Box(b##3));
    havoc $rhs##6;
    assume $rhs##6 == $Unbox($tmp##3): int;
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##6;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(267,22)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##1 := LitInt(1);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##4 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##4 := b#0;
    call {:id "id267"} $tmp##4 := Call$$GenericBasics.Tr.Stat(GenericBasics.Mega$Q, TInt, y##1, a##4, $Box(b##4));
    havoc $rhs##7;
    assume $rhs##7 == $Unbox($tmp##4): int;
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##7;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(268,20)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id269"} defass#tt#0;
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##2 := LitInt(1);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##5 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##5 := b#0;
    call {:id "id270"} $tmp##5 := Call$$GenericBasics.Tr.Stat(GenericBasics.Mega$Q, TInt, y##2, a##5, $Box(b##5));
    havoc $rhs##8;
    assume $rhs##8 == $Unbox($tmp##5): int;
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##8;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(269,20)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##3 := LitInt(1);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##6 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##6 := b#0;
    call {:id "id272"} $tmp##6 := Call$$GenericBasics.Tr.Stat(GenericBasics.Mega$Q, TInt, y##3, a##6, $Box(b##6));
    havoc $rhs##9;
    assume $rhs##9 == $Unbox($tmp##6): int;
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##9;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(270,24)
    assume true;
    // TrCallStmt: Adding lhs with type set<int>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##4 := LitInt(2);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##7 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(2))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##7 := Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(2))));
    call {:id "id274"} $tmp##7 := Call$$GenericBasics.Tr.Stat(TSeq(TInt), TSet(TInt), y##4, $Box(a##7), $Box(b##7));
    havoc $rhs##10;
    assume $rhs##10 == $Unbox($tmp##7): Set;
    // TrCallStmt: After ProcessCallStmt
    ss#0 := $rhs##10;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(272,10)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), 
      Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
      $Heap);
    ##a#0 := #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, Tclass._System.Tuple2(GenericBasics.Mega$Q, TBitvector(7)), $Heap);
    assume GenericBasics.Mega.Teen#canCall(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      TBitvector(7), 
      this, 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))));
    assume GenericBasics.Mega.Teen#canCall(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      TBitvector(7), 
      this, 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))));
    bb#0 := GenericBasics.Mega.Teen(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      TBitvector(7), 
      this, 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(273,10)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), 
      Tclass.GenericBasics.Mega?(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
      $Heap);
    ##a#1 := #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, Tclass._System.Tuple2(GenericBasics.Mega$Q, TBitvector(7)), $Heap);
    assume GenericBasics.Mega.Teen#canCall(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      TBitvector(7), 
      this, 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))));
    assume GenericBasics.Mega.Teen#canCall(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      TBitvector(7), 
      this, 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))));
    bb#0 := GenericBasics.Mega.Teen(GenericBasics.Mega$P, 
      GenericBasics.Mega$Q, 
      GenericBasics.Mega$L, 
      TBitvector(7), 
      this, 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(274,14)
    assume true;
    assert {:id "id278"} defass#tt#0;
    assert {:id "id279"} tt#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(tt#0), Tclass.GenericBasics.Tr?(GenericBasics.Mega$Q, TInt), $Heap);
    ##a#2 := #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#2, Tclass._System.Tuple2(GenericBasics.Mega$Q, TBitvector(7)), $Heap);
    assume GenericBasics.Tr.Teen#canCall(GenericBasics.Mega$Q, 
      TInt, 
      TBitvector(7), 
      tt#0, 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))));
    assume GenericBasics.Tr.Teen#canCall(GenericBasics.Mega$Q, 
      TInt, 
      TBitvector(7), 
      tt#0, 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))));
    rr#0 := $Unbox(GenericBasics.Tr.Teen(GenericBasics.Mega$Q, 
        TInt, 
        TBitvector(7), 
        tt#0, 
        #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(276,10)
    assume true;
    ##a#3 := #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#3, Tclass._System.Tuple2(GenericBasics.Mega$Q, TBitvector(7)), $Heap);
    ##b#0 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TInt, $Heap);
    assume GenericBasics.Tr.STeen#canCall(GenericBasics.Mega$Q, 
      TInt, 
      TBitvector(7), 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
      $Box(b#0));
    assume GenericBasics.Tr.STeen#canCall(GenericBasics.Mega$Q, 
      TInt, 
      TBitvector(7), 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
      $Box(b#0));
    bb#0 := $Unbox(GenericBasics.Tr.STeen(GenericBasics.Mega$Q, 
        TInt, 
        TBitvector(7), 
        #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
        $Box(b#0))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(277,10)
    assume true;
    ##a#4 := #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#4, Tclass._System.Tuple2(GenericBasics.Mega$Q, TBitvector(7)), $Heap);
    ##b#1 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, TInt, $Heap);
    assume GenericBasics.Tr.STeen#canCall(GenericBasics.Mega$Q, 
      TInt, 
      TBitvector(7), 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
      $Box(b#0));
    assume GenericBasics.Tr.STeen#canCall(GenericBasics.Mega$Q, 
      TInt, 
      TBitvector(7), 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
      $Box(b#0));
    bb#0 := $Unbox(GenericBasics.Tr.STeen(GenericBasics.Mega$Q, 
        TInt, 
        TBitvector(7), 
        #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
        $Box(b#0))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(278,10)
    assume true;
    assert {:id "id283"} defass#tt#0;
    ##a#5 := #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#5, Tclass._System.Tuple2(GenericBasics.Mega$Q, TBitvector(7)), $Heap);
    ##b#2 := LitInt(71);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, TInt, $Heap);
    assume GenericBasics.Tr.STeen#canCall(GenericBasics.Mega$Q, 
      TInt, 
      TBitvector(7), 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
      $Box(LitInt(71)));
    assume GenericBasics.Tr.STeen#canCall(GenericBasics.Mega$Q, 
      TInt, 
      TBitvector(7), 
      #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
      $Box(LitInt(71)));
    rr#0 := $Unbox(GenericBasics.Tr.STeen(GenericBasics.Mega$Q, 
        TInt, 
        TBitvector(7), 
        #_System._tuple#2._#Make2(a#0, $Box(Lit(70bv7))), 
        $Box(LitInt(71)))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(279,10)
    assume true;
    ##a#6 := Lit(#_System._tuple#2._#Make2($Box(Lit(false)), $Box(Lit(70bv7))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#6, Tclass._System.Tuple2(TBool, TBitvector(7)), $Heap);
    ##b#3 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#3, TInt, $Heap);
    assume GenericBasics.Tr.STeen#canCall(TBool, 
      TInt, 
      TBitvector(7), 
      Lit(#_System._tuple#2._#Make2($Box(Lit(false)), $Box(Lit(70bv7)))), 
      $Box(b#0));
    assume GenericBasics.Tr.STeen#canCall(TBool, 
      TInt, 
      TBitvector(7), 
      Lit(#_System._tuple#2._#Make2($Box(Lit(false)), $Box(Lit(70bv7)))), 
      $Box(b#0));
    bb#0 := $Unbox(GenericBasics.Tr.STeen(TBool, 
        TInt, 
        TBitvector(7), 
        Lit(#_System._tuple#2._#Make2($Box(Lit(false)), $Box(Lit(70bv7)))), 
        $Box(b#0))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(280,10)
    assume true;
    ##a#7 := Lit(#_System._tuple#2._#Make2($Box(Lit(Seq#Empty(): Seq)), $Box(Lit(70bv7))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#7, Tclass._System.Tuple2(TSeq(TInt), TBitvector(7)), $Heap);
    ##b#4 := Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(80))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#4, TSet(TInt), $Heap);
    assume GenericBasics.Tr.STeen#canCall(TSeq(TInt), 
      TSet(TInt), 
      TBitvector(7), 
      Lit(#_System._tuple#2._#Make2($Box(Lit(Seq#Empty(): Seq)), $Box(Lit(70bv7)))), 
      $Box(Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(80))))));
    assume GenericBasics.Tr.STeen#canCall(TSeq(TInt), 
      TSet(TInt), 
      TBitvector(7), 
      Lit(#_System._tuple#2._#Make2($Box(Lit(Seq#Empty(): Seq)), $Box(Lit(70bv7)))), 
      $Box(Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(80))))));
    ss#0 := Lit($Unbox(GenericBasics.Tr.STeen(TSeq(TInt), 
          TSet(TInt), 
          TBitvector(7), 
          Lit(#_System._tuple#2._#Make2($Box(Lit(Seq#Empty(): Seq)), $Box(Lit(70bv7)))), 
          $Box(Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(80))))))): Set);
}



// function declaration for GenericBasics.Mega.Teen
function GenericBasics.Mega.Teen(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.Teen$S: Ty, 
    this: ref, 
    a#0: DatatypeType)
   : int
uses {
// definition axiom for GenericBasics.Mega.Teen (revealed)
axiom {:id "id287"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Mega$P: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
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
axiom {:id "id288"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Mega$P: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
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
axiom {:id "id289"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Mega$P: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
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
}

function GenericBasics.Mega.Teen#canCall(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.Teen$S: Ty, 
    this: ref, 
    a#0: DatatypeType)
   : bool;

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

// override axiom for GenericBasics.Tr.Teen in class GenericBasics.Mega
axiom 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Mega$P: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, 
            Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)))
       ==> GenericBasics.Tr.Teen(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.Teen$S, this, a#0)
         == $Box(GenericBasics.Mega.Teen(GenericBasics.Mega$P, 
            GenericBasics.Mega$Q, 
            GenericBasics.Mega$L, 
            GenericBasics.Mega.Teen$S, 
            this, 
            a#0)));

procedure {:verboseName "GenericBasics.Mega.Teen (well-formedness)"} CheckWellformed$$GenericBasics.Mega.Teen(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.Teen$S: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    a#0: DatatypeType
       where $Is(a#0, Tclass._System.Tuple2(GenericBasics.Mega$Q, GenericBasics.Mega.Teen$S)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Mega.Teen (override check)"} OverrideCheck$$GenericBasics.Mega.Teen(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.Teen$S: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    a#0: DatatypeType
       where $Is(a#0, Tclass._System.Tuple2(GenericBasics.Mega$Q, GenericBasics.Mega.Teen$S)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Mega.Teen (override check)"} OverrideCheck$$GenericBasics.Mega.Teen(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.Teen$S: Ty, 
    this: ref, 
    a#0: DatatypeType)
{
  var GenericBasics.Tr$A: Ty;
  var GenericBasics.Tr$B: Ty;
  var GenericBasics.Tr.Teen$R: Ty;
  var Mega_$_ReadsFrame: [ref,Field]bool;

    assume GenericBasics.Tr$A == GenericBasics.Mega$Q;
    assume GenericBasics.Tr$B == TInt;
    assume GenericBasics.Tr.Teen$R == GenericBasics.Mega.Teen$S;
    assert {:id "id291"} DtRank(a#0) <= DtRank(a#0);
    Mega_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id292"} (forall $o: ref, $f: Field :: true);
}



// function declaration for GenericBasics.Mega.RValue0
function GenericBasics.Mega.RValue0(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue0$XX: Ty, 
    this: ref, 
    x#0: Box)
   : int
uses {
// definition axiom for GenericBasics.Mega.RValue0 (revealed)
axiom {:id "id293"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Mega$P: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
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
axiom {:id "id294"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Mega$P: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
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
}

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

// override axiom for GenericBasics.Tr.RValue0 in class GenericBasics.Mega
axiom 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Mega$P: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, 
            Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)))
       ==> GenericBasics.Tr.RValue0(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.RValue0$XX, this, x#0)
         == $Box(GenericBasics.Mega.RValue0(GenericBasics.Mega$P, 
            GenericBasics.Mega$Q, 
            GenericBasics.Mega$L, 
            GenericBasics.Mega.RValue0$XX, 
            this, 
            x#0)));

procedure {:verboseName "GenericBasics.Mega.RValue0 (well-formedness)"} CheckWellformed$$GenericBasics.Mega.RValue0(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue0$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Mega.RValue0$XX));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Mega.RValue0 (override check)"} OverrideCheck$$GenericBasics.Mega.RValue0(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue0$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Mega.RValue0$XX));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Mega.RValue0 (override check)"} OverrideCheck$$GenericBasics.Mega.RValue0(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue0$XX: Ty, 
    this: ref, 
    x#0: Box)
{
  var GenericBasics.Tr$A: Ty;
  var GenericBasics.Tr$B: Ty;
  var GenericBasics.Tr.RValue0$X: Ty;
  var Mega_$_ReadsFrame: [ref,Field]bool;

    assume GenericBasics.Tr$A == GenericBasics.Mega$Q;
    assume GenericBasics.Tr$B == TInt;
    assume GenericBasics.Tr.RValue0$X == GenericBasics.Mega.RValue0$XX;
    assert {:id "id296"} true;
    Mega_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id297"} (forall $o: ref, $f: Field :: true);
}



// function declaration for GenericBasics.Mega.RValue1
function GenericBasics.Mega.RValue1(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue1$XX: Ty, 
    this: ref, 
    x#0: Box)
   : int
uses {
// definition axiom for GenericBasics.Mega.RValue1 (revealed)
axiom {:id "id298"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Mega$P: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
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
axiom {:id "id299"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Mega$P: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
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
}

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

// override axiom for GenericBasics.Tr.RValue1 in class GenericBasics.Mega
axiom 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Mega$P: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, 
            Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)))
       ==> GenericBasics.Tr.RValue1(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.RValue1$XX, this, x#0)
         == $Box(GenericBasics.Mega.RValue1(GenericBasics.Mega$P, 
            GenericBasics.Mega$Q, 
            GenericBasics.Mega$L, 
            GenericBasics.Mega.RValue1$XX, 
            this, 
            x#0)));

procedure {:verboseName "GenericBasics.Mega.RValue1 (well-formedness)"} CheckWellformed$$GenericBasics.Mega.RValue1(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue1$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Mega.RValue1$XX));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Mega.RValue1 (override check)"} OverrideCheck$$GenericBasics.Mega.RValue1(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue1$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Mega.RValue1$XX))
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Mega.RValue1 (override check)"} OverrideCheck$$GenericBasics.Mega.RValue1(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue1$XX: Ty, 
    this: ref, 
    x#0: Box)
   returns (r#0: int)
{
  var GenericBasics.Tr$A: Ty;
  var GenericBasics.Tr$B: Ty;
  var GenericBasics.Tr.RValue1$X: Ty;
  var Mega_$_ReadsFrame: [ref,Field]bool;

    assume GenericBasics.Tr$A == GenericBasics.Mega$Q;
    assume GenericBasics.Tr$B == TInt;
    assume GenericBasics.Tr.RValue1$X == GenericBasics.Mega.RValue1$XX;
    assert {:id "id301"} true;
    Mega_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id302"} (forall $o: ref, $f: Field :: true);
    assume GenericBasics.Mega.RValue1(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue1$XX, 
        this, 
        x#0)
       == r#0;
}



// function declaration for GenericBasics.Mega.RValue2
function GenericBasics.Mega.RValue2(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue2$XX: Ty, 
    this: ref, 
    x#0: Box)
   : int
uses {
// definition axiom for GenericBasics.Mega.RValue2 (revealed)
axiom {:id "id303"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Mega$P: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
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
axiom {:id "id304"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Mega$P: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
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
}

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

// override axiom for GenericBasics.Tr.RValue2 in class GenericBasics.Mega
axiom 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Mega$P: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, 
            Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)))
       ==> GenericBasics.Tr.RValue2(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.RValue2$XX, this, x#0)
         == $Box(GenericBasics.Mega.RValue2(GenericBasics.Mega$P, 
            GenericBasics.Mega$Q, 
            GenericBasics.Mega$L, 
            GenericBasics.Mega.RValue2$XX, 
            this, 
            x#0)));

procedure {:verboseName "GenericBasics.Mega.RValue2 (well-formedness)"} CheckWellformed$$GenericBasics.Mega.RValue2(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue2$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Mega.RValue2$XX))
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Mega.RValue2 (override check)"} OverrideCheck$$GenericBasics.Mega.RValue2(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue2$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Mega.RValue2$XX))
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Mega.RValue2 (override check)"} OverrideCheck$$GenericBasics.Mega.RValue2(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue2$XX: Ty, 
    this: ref, 
    x#0: Box)
   returns (r#0: int)
{
  var GenericBasics.Tr$A: Ty;
  var GenericBasics.Tr$B: Ty;
  var GenericBasics.Tr.RValue2$X: Ty;
  var Mega_$_ReadsFrame: [ref,Field]bool;

    assume GenericBasics.Tr$A == GenericBasics.Mega$Q;
    assume GenericBasics.Tr$B == TInt;
    assume GenericBasics.Tr.RValue2$X == GenericBasics.Mega.RValue2$XX;
    assert {:id "id307"} true;
    Mega_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id308"} (forall $o: ref, $f: Field :: true);
    assume GenericBasics.Mega.RValue2(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue2$XX, 
        this, 
        x#0)
       == r#0;
}



// function declaration for GenericBasics.Mega.RValue3
function GenericBasics.Mega.RValue3(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue3$XX: Ty, 
    this: ref, 
    x#0: Box)
   : int
uses {
// definition axiom for GenericBasics.Mega.RValue3 (revealed)
axiom {:id "id309"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Mega$P: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
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
axiom {:id "id310"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Mega$P: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
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
}

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

// override axiom for GenericBasics.Tr.RValue3 in class GenericBasics.Mega
axiom 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Mega$P: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, 
            Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L)))
       ==> GenericBasics.Tr.RValue3(GenericBasics.Mega$Q, TInt, GenericBasics.Mega.RValue3$XX, this, x#0)
         == $Box(GenericBasics.Mega.RValue3(GenericBasics.Mega$P, 
            GenericBasics.Mega$Q, 
            GenericBasics.Mega$L, 
            GenericBasics.Mega.RValue3$XX, 
            this, 
            x#0)));

procedure {:verboseName "GenericBasics.Mega.RValue3 (well-formedness)"} CheckWellformed$$GenericBasics.Mega.RValue3(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue3$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Mega.RValue3$XX))
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Mega.RValue3 (override check)"} OverrideCheck$$GenericBasics.Mega.RValue3(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue3$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Mega.RValue3$XX))
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Mega.RValue3 (override check)"} OverrideCheck$$GenericBasics.Mega.RValue3(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RValue3$XX: Ty, 
    this: ref, 
    x#0: Box)
   returns (r#0: int)
{
  var GenericBasics.Tr$A: Ty;
  var GenericBasics.Tr$B: Ty;
  var GenericBasics.Tr.RValue3$X: Ty;
  var Mega_$_ReadsFrame: [ref,Field]bool;

    assume GenericBasics.Tr$A == GenericBasics.Mega$Q;
    assume GenericBasics.Tr$B == TInt;
    assume GenericBasics.Tr.RValue3$X == GenericBasics.Mega.RValue3$XX;
    assert {:id "id313"} true;
    Mega_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id314"} (forall $o: ref, $f: Field :: true);
    assume GenericBasics.Mega.RValue3(GenericBasics.Mega$P, 
        GenericBasics.Mega$Q, 
        GenericBasics.Mega$L, 
        GenericBasics.Mega.RValue3$XX, 
        this, 
        x#0)
       == r#0;
}



// function declaration for GenericBasics.Mega.RBValue
function GenericBasics.Mega.RBValue(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RBValue$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int)
   : int
uses {
// definition axiom for GenericBasics.Mega.RBValue (revealed)
axiom {:id "id315"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Mega$P: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
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
axiom {:id "id316"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Mega$P: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
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
axiom {:id "id317"} 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Mega$P: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
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
}

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

// override axiom for GenericBasics.Tr.RBValue in class GenericBasics.Mega
axiom 0 <= $FunctionContextHeight
   ==> (forall GenericBasics.Mega$P: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
          this != null
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

procedure {:verboseName "GenericBasics.Mega.RBValue (well-formedness)"} CheckWellformed$$GenericBasics.Mega.RBValue(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RBValue$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Mega.RBValue$XX), 
    b#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Mega.RBValue (override check)"} OverrideCheck$$GenericBasics.Mega.RBValue(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RBValue$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    x#0: Box where $IsBox(x#0, GenericBasics.Mega.RBValue$XX), 
    b#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Mega.RBValue (override check)"} OverrideCheck$$GenericBasics.Mega.RBValue(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.RBValue$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int)
{
  var GenericBasics.Tr$A: Ty;
  var GenericBasics.Tr$B: Ty;
  var GenericBasics.Tr.RBValue$X: Ty;
  var Mega_$_ReadsFrame: [ref,Field]bool;

    assume GenericBasics.Tr$A == GenericBasics.Mega$Q;
    assume GenericBasics.Tr$B == TInt;
    assume GenericBasics.Tr.RBValue$X == GenericBasics.Mega.RBValue$XX;
    assert {:id "id319"} true;
    Mega_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id320"} (forall $o: ref, $f: Field :: true);
}



procedure {:verboseName "GenericBasics.Mega.MValue0 (well-formedness)"} CheckWellFormed$$GenericBasics.Mega.MValue0(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.MValue0$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    x#0: Box
       where $IsBox(x#0, GenericBasics.Mega.MValue0$XX)
         && $IsAllocBox(x#0, GenericBasics.Mega.MValue0$XX, $Heap), 
    b#0: int)
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Mega.MValue0 (override check)"} OverrideCheck$$GenericBasics.Mega.MValue0(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.MValue0$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    x#0: Box
       where $IsBox(x#0, GenericBasics.Mega.MValue0$XX)
         && $IsAllocBox(x#0, GenericBasics.Mega.MValue0$XX, $Heap), 
    b#0: int)
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Mega.MValue0 (override check)"} OverrideCheck$$GenericBasics.Mega.MValue0(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.MValue0$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int)
   returns (r#0: int)
{
  var GenericBasics.Tr$A: Ty;
  var GenericBasics.Tr$B: Ty;
  var GenericBasics.Tr.MValue0$X: Ty;

    assume GenericBasics.Tr$A == GenericBasics.Mega$Q;
    assume GenericBasics.Tr$B == TInt;
    assume GenericBasics.Tr.MValue0$X == GenericBasics.Mega.MValue0$XX;
    assert {:id "id321"} true;
    assert {:id "id322"} (forall $o: ref, $f: Field :: true);
    assert {:id "id323"} (forall $o: ref, $f: Field :: true);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "GenericBasics.Mega.MValue0 (call)"} Call$$GenericBasics.Mega.MValue0(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.MValue0$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    x#0: Box
       where $IsBox(x#0, GenericBasics.Mega.MValue0$XX)
         && $IsAllocBox(x#0, GenericBasics.Mega.MValue0$XX, $Heap), 
    b#0: int)
   returns (r#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GenericBasics.Mega.MValue0 (correctness)"} Impl$$GenericBasics.Mega.MValue0(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.MValue0$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    x#0: Box
       where $IsBox(x#0, GenericBasics.Mega.MValue0$XX)
         && $IsAllocBox(x#0, GenericBasics.Mega.MValue0$XX, $Heap), 
    b#0: int)
   returns (r#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GenericBasics.Mega.MValue1 (well-formedness)"} CheckWellFormed$$GenericBasics.Mega.MValue1(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.MValue1$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    x#0: Box
       where $IsBox(x#0, GenericBasics.Mega.MValue1$XX)
         && $IsAllocBox(x#0, GenericBasics.Mega.MValue1$XX, $Heap), 
    b#0: int)
   returns (r#0: int, 
    y#0: Box
       where $IsBox(y#0, GenericBasics.Mega.MValue1$XX)
         && $IsAllocBox(y#0, GenericBasics.Mega.MValue1$XX, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericBasics.Mega.MValue1 (override check)"} OverrideCheck$$GenericBasics.Mega.MValue1(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.MValue1$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    x#0: Box
       where $IsBox(x#0, GenericBasics.Mega.MValue1$XX)
         && $IsAllocBox(x#0, GenericBasics.Mega.MValue1$XX, $Heap), 
    b#0: int)
   returns (r#0: int, 
    y#0: Box
       where $IsBox(y#0, GenericBasics.Mega.MValue1$XX)
         && $IsAllocBox(y#0, GenericBasics.Mega.MValue1$XX, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Mega.MValue1 (override check)"} OverrideCheck$$GenericBasics.Mega.MValue1(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.MValue1$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int)
   returns (r#0: int, y#0: Box)
{
  var GenericBasics.Tr$A: Ty;
  var GenericBasics.Tr$B: Ty;
  var GenericBasics.Tr.MValue1$X: Ty;

    assume GenericBasics.Tr$A == GenericBasics.Mega$Q;
    assume GenericBasics.Tr$B == TInt;
    assume GenericBasics.Tr.MValue1$X == GenericBasics.Mega.MValue1$XX;
    assert {:id "id325"} true;
    assert {:id "id326"} (forall $o: ref, $f: Field :: true);
    assert {:id "id327"} (forall $o: ref, $f: Field :: true);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "GenericBasics.Mega.MValue1 (call)"} Call$$GenericBasics.Mega.MValue1(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.MValue1$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    x#0: Box
       where $IsBox(x#0, GenericBasics.Mega.MValue1$XX)
         && $IsAllocBox(x#0, GenericBasics.Mega.MValue1$XX, $Heap), 
    b#0: int)
   returns (r#0: int, 
    y#0: Box
       where $IsBox(y#0, GenericBasics.Mega.MValue1$XX)
         && $IsAllocBox(y#0, GenericBasics.Mega.MValue1$XX, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GenericBasics.Mega.MValue1 (correctness)"} Impl$$GenericBasics.Mega.MValue1(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.MValue1$XX: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L))
         && $IsAlloc(this, 
          Tclass.GenericBasics.Mega(GenericBasics.Mega$P, GenericBasics.Mega$Q, GenericBasics.Mega$L), 
          $Heap), 
    x#0: Box
       where $IsBox(x#0, GenericBasics.Mega.MValue1$XX)
         && $IsAllocBox(x#0, GenericBasics.Mega.MValue1$XX, $Heap), 
    b#0: int)
   returns (r#0: int, 
    defass#y#0: bool, 
    y#0: Box
       where defass#y#0
         ==> $IsBox(y#0, GenericBasics.Mega.MValue1$XX)
           && $IsAllocBox(y#0, GenericBasics.Mega.MValue1$XX, $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericBasics.Mega.MValue1 (correctness)"} Impl$$GenericBasics.Mega.MValue1(GenericBasics.Mega$P: Ty, 
    GenericBasics.Mega$Q: Ty, 
    GenericBasics.Mega$L: Ty, 
    GenericBasics.Mega.MValue1$XX: Ty, 
    this: ref, 
    x#0: Box, 
    b#0: int)
   returns (r#0: int, defass#y#0: bool, y#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $rhs#1: Box;

    // AddMethodImpl: MValue1, Impl$$GenericBasics.Mega.MValue1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(294,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := b#0 + 4;
    assume true;
    $rhs#1 := x#0;
    r#0 := $rhs#0;
    y#0 := $rhs#1;
    defass#y#0 := true;
    assert {:id "id332"} defass#y#0;
}



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

const unique tytagFamily$Cl: TyTagFamily;

const unique tytagFamily$Mega: TyTagFamily;

const unique tytagFamily$Tr: TyTagFamily;

const unique field$xyz: NameFamily;
