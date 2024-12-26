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

const unique class.TypeDescriptorTests.__default: ClassName;

// function declaration for TypeDescriptorTests._default.Gee
function TypeDescriptorTests.__default.Gee(TypeDescriptorTests._default.Gee$Whiz: Ty) : int
uses {
// definition axiom for TypeDescriptorTests.__default.Gee (revealed)
axiom {:id "id566"} 0 <= $FunctionContextHeight
   ==> (forall TypeDescriptorTests._default.Gee$Whiz: Ty :: 
    { TypeDescriptorTests.__default.Gee(TypeDescriptorTests._default.Gee$Whiz) } 
    TypeDescriptorTests.__default.Gee#canCall(TypeDescriptorTests._default.Gee$Whiz)
         || 0 < $FunctionContextHeight
       ==> TypeDescriptorTests.__default.Gee(TypeDescriptorTests._default.Gee$Whiz)
         == LitInt(10));
// definition axiom for TypeDescriptorTests.__default.Gee for all literals (revealed)
axiom {:id "id567"} 0 <= $FunctionContextHeight
   ==> (forall TypeDescriptorTests._default.Gee$Whiz: Ty :: 
    {:weight 3} { TypeDescriptorTests.__default.Gee(TypeDescriptorTests._default.Gee$Whiz) } 
    TypeDescriptorTests.__default.Gee#canCall(TypeDescriptorTests._default.Gee$Whiz)
         || 0 < $FunctionContextHeight
       ==> TypeDescriptorTests.__default.Gee(TypeDescriptorTests._default.Gee$Whiz)
         == LitInt(10));
}

function TypeDescriptorTests.__default.Gee#canCall(TypeDescriptorTests._default.Gee$Whiz: Ty) : bool;

function TypeDescriptorTests.__default.Gee#requires(Ty) : bool;

// #requires axiom for TypeDescriptorTests.__default.Gee
axiom (forall TypeDescriptorTests._default.Gee$Whiz: Ty :: 
  { TypeDescriptorTests.__default.Gee#requires(TypeDescriptorTests._default.Gee$Whiz) } 
  TypeDescriptorTests.__default.Gee#requires(TypeDescriptorTests._default.Gee$Whiz)
     == true);

procedure {:verboseName "TypeDescriptorTests.Gee (well-formedness)"} CheckWellformed$$TypeDescriptorTests.__default.Gee(TypeDescriptorTests._default.Gee$Whiz: Ty);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



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

procedure {:verboseName "TypeDescriptorTests.Iffy (well-formedness)"} CheckWellFormed$$TypeDescriptorTests.__default.Iffy(t#0: ref
       where $Is(t#0, Tclass.TypeDescriptorTests.UberTrait(TBool, TReal, TReal))
         && $IsAlloc(t#0, Tclass.TypeDescriptorTests.UberTrait(TBool, TReal, TReal), $Heap))
   returns (n#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeDescriptorTests.Iffy (call)"} Call$$TypeDescriptorTests.__default.Iffy(t#0: ref
       where $Is(t#0, Tclass.TypeDescriptorTests.UberTrait(TBool, TReal, TReal))
         && $IsAlloc(t#0, Tclass.TypeDescriptorTests.UberTrait(TBool, TReal, TReal), $Heap))
   returns (n#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TypeDescriptorTests.Iffy (correctness)"} Impl$$TypeDescriptorTests.__default.Iffy(t#0: ref
       where $Is(t#0, Tclass.TypeDescriptorTests.UberTrait(TBool, TReal, TReal))
         && $IsAlloc(t#0, Tclass.TypeDescriptorTests.UberTrait(TBool, TReal, TReal), $Heap))
   returns (n#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



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

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TypeDescriptorTests.Iffy (correctness)"} Impl$$TypeDescriptorTests.__default.Iffy(t#0: ref) returns (n#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#0: bool;

    // AddMethodImpl: Iffy, Impl$$TypeDescriptorTests.__default.Iffy
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(514,5)
    assert {:id "id569"} t#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(t#0), Tclass.TypeDescriptorTests.UberTrait?(TBool, TReal, TReal), $Heap);
    ##x#0 := Lit(true);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TBool, $Heap);
    assume TypeDescriptorTests.UberTrait.Id#canCall(TBool, TReal, TReal, t#0, $Box(Lit(true)));
    assume TypeDescriptorTests.UberTrait.Id#canCall(TBool, TReal, TReal, t#0, $Box(Lit(true)));
    if ($Unbox(TypeDescriptorTests.UberTrait.Id(TBool, TReal, TReal, t#0, $Box(Lit(true)))): bool)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(515,9)
        assume true;
        assume true;
        n#0 := LitInt(15);
    }
    else
    {
    }
}



procedure {:verboseName "TypeDescriptorTests.CallerT (well-formedness)"} CheckWellFormed$$TypeDescriptorTests.__default.CallerT();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeDescriptorTests.CallerT (call)"} Call$$TypeDescriptorTests.__default.CallerT();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TypeDescriptorTests.CallerT (correctness)"} Impl$$TypeDescriptorTests.__default.CallerT() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



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

function TypeDescriptorTests.XT.c(TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, this: ref) : Box
uses {
// XT.c: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, $o: ref :: 
    { TypeDescriptorTests.XT.c(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, $o) } 
    $o != null
         && $Is($o, 
          Tclass.TypeDescriptorTests.XT?(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
       ==> $IsBox(TypeDescriptorTests.XT.c(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, $o), 
        TypeDescriptorTests.XT$U));
// XT.c: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, $h: Heap, $o: ref :: 
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
}

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TypeDescriptorTests.CallerT (correctness)"} Impl$$TypeDescriptorTests.__default.CallerT() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var y#0: ref
     where $Is(y#0, 
        Tclass.TypeDescriptorTests.XT?(Tclass._System.___hTotalFunc1(TInt, TInt), TInt))
       && $IsAlloc(y#0, 
        Tclass.TypeDescriptorTests.XT?(Tclass._System.___hTotalFunc1(TInt, TInt), TInt), 
        $Heap);
  var $nw: ref;
  var defass#x#0: bool;
  var x#0: ref
     where defass#x#0
       ==> $Is(x#0, 
          Tclass.TypeDescriptorTests.XT(Tclass._System.___hTotalFunc1(TInt, TInt), TInt))
         && $IsAlloc(x#0, 
          Tclass.TypeDescriptorTests.XT(Tclass._System.___hTotalFunc1(TInt, TInt), TInt), 
          $Heap);
  var f#0: HandleType
     where $Is(f#0, Tclass._System.___hTotalFunc1(TInt, TInt))
       && $IsAlloc(f#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap);
  var $rhs#0: HandleType;
  var $rhs#1: HandleType;
  var ##u#0: HandleType;
  var ##u#1: HandleType;
  var ##u#2: HandleType;
  var ##u#3: HandleType;
  var $rhs##0: HandleType;
  var u##0: HandleType;
  var $tmp##0: Box;
  var $rhs##1: HandleType;
  var u##1: HandleType;
  var $tmp##1: Box;
  var $rhs##2: HandleType;
  var u##2: HandleType;
  var $tmp##2: Box;
  var $rhs##3: HandleType;
  var u##3: HandleType;
  var $tmp##3: Box;
  var ##u#4: HandleType;
  var ##u#5: HandleType;
  var ##u#6: HandleType;
  var ##u#7: HandleType;
  var $rhs##4: HandleType;
  var u##4: HandleType;
  var $rhs##5: HandleType;
  var u##5: HandleType;
  var $rhs##6: HandleType;
  var u##6: HandleType;
  var $rhs##7: HandleType;
  var u##7: HandleType;

    // AddMethodImpl: CallerT, Impl$$TypeDescriptorTests.__default.CallerT
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(553,11)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(553,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id571"} $nw := Call$$TypeDescriptorTests.YT.__ctor();
    // TrCallStmt: After ProcessCallStmt
    y#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(554,15)
    assume true;
    assert {:id "id573"} $Is(y#0, 
      Tclass.TypeDescriptorTests.XT(Tclass._System.___hTotalFunc1(TInt, TInt), TInt));
    assume true;
    x#0 := y#0;
    defass#x#0 := true;
    havoc f#0 /* where $Is(f#0, Tclass._System.___hTotalFunc1(TInt, TInt))
       && $IsAlloc(f#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(557,7)
    assume true;
    assert {:id "id575"} y#0 != null;
    assume true;
    f#0 := $Unbox(TypeDescriptorTests.XT.c(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, y#0)): HandleType;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(558,7)
    assume true;
    assert {:id "id577"} y#0 != null;
    assume true;
    f#0 := $Unbox(read($Heap, y#0, TypeDescriptorTests.XT.u)): HandleType;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(559,9)
    assert {:id "id579"} y#0 != null;
    assume true;
    assert {:id "id580"} $_ModifiesFrame[y#0, TypeDescriptorTests.XT.u];
    assume true;
    $rhs#0 := f#0;
    $Heap := update($Heap, y#0, TypeDescriptorTests.XT.u, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(560,7)
    assume true;
    assert {:id "id583"} defass#x#0;
    assert {:id "id584"} x#0 != null;
    assume true;
    f#0 := $Unbox(TypeDescriptorTests.XT.c(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, x#0)): HandleType;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(561,7)
    assume true;
    assert {:id "id586"} defass#x#0;
    assert {:id "id587"} x#0 != null;
    assume true;
    f#0 := $Unbox(read($Heap, x#0, TypeDescriptorTests.XT.u)): HandleType;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(562,9)
    assert {:id "id589"} defass#x#0;
    assert {:id "id590"} x#0 != null;
    assume true;
    assert {:id "id591"} $_ModifiesFrame[x#0, TypeDescriptorTests.XT.u];
    assume true;
    $rhs#1 := f#0;
    $Heap := update($Heap, x#0, TypeDescriptorTests.XT.u, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(564,7)
    assume true;
    assert {:id "id594"} y#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(y#0), 
      Tclass.TypeDescriptorTests.XT?(Tclass._System.___hTotalFunc1(TInt, TInt), TInt), 
      $Heap);
    ##u#0 := f#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##u#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap);
    assume TypeDescriptorTests.XT.F#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, y#0, $Box(f#0));
    assume TypeDescriptorTests.XT.F#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, y#0, $Box(f#0));
    f#0 := $Unbox(TypeDescriptorTests.XT.F(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, y#0, $Box(f#0))): HandleType;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(565,7)
    assume true;
    assert {:id "id596"} y#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(y#0), 
      Tclass.TypeDescriptorTests.XT?(Tclass._System.___hTotalFunc1(TInt, TInt), TInt), 
      $Heap);
    ##u#1 := f#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##u#1, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap);
    assume TypeDescriptorTests.XT.G#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, y#0, $Box(f#0));
    assume TypeDescriptorTests.XT.G#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, y#0, $Box(f#0));
    f#0 := $Unbox(TypeDescriptorTests.XT.G(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, y#0, $Box(f#0))): HandleType;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(566,7)
    assume true;
    assert {:id "id598"} defass#x#0;
    assert {:id "id599"} x#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(x#0), 
      Tclass.TypeDescriptorTests.XT?(Tclass._System.___hTotalFunc1(TInt, TInt), TInt), 
      $Heap);
    ##u#2 := f#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##u#2, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap);
    assume TypeDescriptorTests.XT.F#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, x#0, $Box(f#0));
    assume TypeDescriptorTests.XT.F#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, x#0, $Box(f#0));
    f#0 := $Unbox(TypeDescriptorTests.XT.F(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, x#0, $Box(f#0))): HandleType;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(567,7)
    assume true;
    assert {:id "id601"} defass#x#0;
    assert {:id "id602"} x#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(x#0), 
      Tclass.TypeDescriptorTests.XT?(Tclass._System.___hTotalFunc1(TInt, TInt), TInt), 
      $Heap);
    ##u#3 := f#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##u#3, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap);
    assume TypeDescriptorTests.XT.G#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, x#0, $Box(f#0));
    assume TypeDescriptorTests.XT.G#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, x#0, $Box(f#0));
    f#0 := $Unbox(TypeDescriptorTests.XT.G(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, x#0, $Box(f#0))): HandleType;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(569,13)
    assume true;
    // TrCallStmt: Adding lhs with type int -> int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id604"} y#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    u##0 := f#0;
    call {:id "id605"} $tmp##0 := Call$$TypeDescriptorTests.XT.M(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, y#0, $Box(u##0));
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): HandleType;
    // TrCallStmt: After ProcessCallStmt
    f#0 := $rhs##0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(570,13)
    assume true;
    // TrCallStmt: Adding lhs with type int -> int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id607"} y#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    u##1 := f#0;
    call {:id "id608"} $tmp##1 := Call$$TypeDescriptorTests.XT.N(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, y#0, $Box(u##1));
    havoc $rhs##1;
    assume $rhs##1 == $Unbox($tmp##1): HandleType;
    // TrCallStmt: After ProcessCallStmt
    f#0 := $rhs##1;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(571,13)
    assume true;
    // TrCallStmt: Adding lhs with type int -> int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id610"} defass#x#0;
    assume true;
    assert {:id "id611"} x#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    u##2 := f#0;
    call {:id "id612"} $tmp##2 := Call$$TypeDescriptorTests.XT.M(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, x#0, $Box(u##2));
    havoc $rhs##2;
    assume $rhs##2 == $Unbox($tmp##2): HandleType;
    // TrCallStmt: After ProcessCallStmt
    f#0 := $rhs##2;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(572,13)
    assume true;
    // TrCallStmt: Adding lhs with type int -> int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id614"} defass#x#0;
    assume true;
    assert {:id "id615"} x#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    u##3 := f#0;
    call {:id "id616"} $tmp##3 := Call$$TypeDescriptorTests.XT.N(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, x#0, $Box(u##3));
    havoc $rhs##3;
    assume $rhs##3 == $Unbox($tmp##3): HandleType;
    // TrCallStmt: After ProcessCallStmt
    f#0 := $rhs##3;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(574,7)
    assume true;
    assert {:id "id618"} y#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(y#0), 
      Tclass.TypeDescriptorTests.XT?(Tclass._System.___hTotalFunc1(TInt, TInt), TInt), 
      $Heap);
    ##u#4 := f#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##u#4, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap);
    assume TypeDescriptorTests.XT.F_k#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, y#0, f#0);
    assume TypeDescriptorTests.XT.F_k#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, y#0, f#0);
    f#0 := TypeDescriptorTests.XT.F_k(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, y#0, f#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(575,7)
    assume true;
    assert {:id "id620"} y#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(y#0), 
      Tclass.TypeDescriptorTests.XT?(Tclass._System.___hTotalFunc1(TInt, TInt), TInt), 
      $Heap);
    ##u#5 := f#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##u#5, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap);
    assume TypeDescriptorTests.XT.G_k#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, y#0, f#0);
    assume TypeDescriptorTests.XT.G_k#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, y#0, f#0);
    f#0 := TypeDescriptorTests.XT.G_k(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, y#0, f#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(576,7)
    assume true;
    assert {:id "id622"} defass#x#0;
    assert {:id "id623"} x#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(x#0), 
      Tclass.TypeDescriptorTests.XT?(Tclass._System.___hTotalFunc1(TInt, TInt), TInt), 
      $Heap);
    ##u#6 := f#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##u#6, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap);
    assume TypeDescriptorTests.XT.F_k#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, x#0, f#0);
    assume TypeDescriptorTests.XT.F_k#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, x#0, f#0);
    f#0 := TypeDescriptorTests.XT.F_k(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, x#0, f#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(577,7)
    assume true;
    assert {:id "id625"} defass#x#0;
    assert {:id "id626"} x#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(x#0), 
      Tclass.TypeDescriptorTests.XT?(Tclass._System.___hTotalFunc1(TInt, TInt), TInt), 
      $Heap);
    ##u#7 := f#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##u#7, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap);
    assume TypeDescriptorTests.XT.G_k#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, x#0, f#0);
    assume TypeDescriptorTests.XT.G_k#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, x#0, f#0);
    f#0 := TypeDescriptorTests.XT.G_k(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, x#0, f#0);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(579,14)
    assume true;
    // TrCallStmt: Adding lhs with type int -> int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id628"} y#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    u##4 := f#0;
    call {:id "id629"} $rhs##4 := Call$$TypeDescriptorTests.XT.M_k(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, y#0, u##4);
    // TrCallStmt: After ProcessCallStmt
    f#0 := $rhs##4;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(580,14)
    assume true;
    // TrCallStmt: Adding lhs with type int -> int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id631"} y#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    u##5 := f#0;
    call {:id "id632"} $rhs##5 := Call$$TypeDescriptorTests.XT.N_k(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, y#0, u##5);
    // TrCallStmt: After ProcessCallStmt
    f#0 := $rhs##5;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(581,14)
    assume true;
    // TrCallStmt: Adding lhs with type int -> int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id634"} defass#x#0;
    assume true;
    assert {:id "id635"} x#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    u##6 := f#0;
    call {:id "id636"} $rhs##6 := Call$$TypeDescriptorTests.XT.M_k(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, x#0, u##6);
    // TrCallStmt: After ProcessCallStmt
    f#0 := $rhs##6;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(582,14)
    assume true;
    // TrCallStmt: Adding lhs with type int -> int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id638"} defass#x#0;
    assume true;
    assert {:id "id639"} x#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    u##7 := f#0;
    call {:id "id640"} $rhs##7 := Call$$TypeDescriptorTests.XT.N_k(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, x#0, u##7);
    // TrCallStmt: After ProcessCallStmt
    f#0 := $rhs##7;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(584,5)
    assume true;
    assume true;
}



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



procedure {:verboseName "TypeDescriptorTests.Test (correctness)"} Impl$$TypeDescriptorTests.__default.Test() returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



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

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TypeDescriptorTests.Test (correctness)"} Impl$$TypeDescriptorTests.__default.Test() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass.TypeDescriptorTests.TraitDependencyClass())
         && $IsAlloc(c#0, Tclass.TypeDescriptorTests.TraitDependencyClass(), $Heap);
  var $nw: ref;

    // AddMethodImpl: Test, Impl$$TypeDescriptorTests.__default.Test
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(596,11)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass.TypeDescriptorTests.TraitDependencyClass?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    c#0 := $nw;
    defass#c#0 := true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(597,5)
    assert {:id "id643"} defass#c#0;
    assert {:id "id644"} {:subsumption 0} c#0 != null;
    assume true;
    assume true;
    assert {:id "id645"} defass#c#0;
    assert {:id "id646"} {:subsumption 0} c#0 != null;
    assume true;
    assume true;
    assert {:id "id647"} defass#c#0;
    assert {:id "id648"} {:subsumption 0} c#0 != null;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(599,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id649"} Call$$TypeDescriptorTests.__default.CallerT();
    // TrCallStmt: After ProcessCallStmt
}



const unique class.TypeDescriptorTests.UberTrait?: ClassName;

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

procedure {:verboseName "TypeDescriptorTests.UberTrait.Golly (well-formedness)"} CheckWellFormed$$TypeDescriptorTests.UberTrait.Golly(TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
            TypeDescriptorTests.UberTrait$Y, 
            TypeDescriptorTests.UberTrait$Z))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
            TypeDescriptorTests.UberTrait$Y, 
            TypeDescriptorTests.UberTrait$Z), 
          $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeDescriptorTests.UberTrait.Golly (call)"} Call$$TypeDescriptorTests.UberTrait.Golly(TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
            TypeDescriptorTests.UberTrait$Y, 
            TypeDescriptorTests.UberTrait$Z))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
            TypeDescriptorTests.UberTrait$Y, 
            TypeDescriptorTests.UberTrait$Z), 
          $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TypeDescriptorTests.UberTrait.Golly (correctness)"} Impl$$TypeDescriptorTests.UberTrait.Golly(TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
            TypeDescriptorTests.UberTrait$Y, 
            TypeDescriptorTests.UberTrait$Z))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
            TypeDescriptorTests.UberTrait$Y, 
            TypeDescriptorTests.UberTrait$Z), 
          $Heap))
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



// function declaration for TypeDescriptorTests.UberTrait.Id
function TypeDescriptorTests.UberTrait.Id(TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty, 
    this: ref, 
    x#0: Box)
   : Box
uses {
// consequence axiom for TypeDescriptorTests.UberTrait.Id
axiom 0 <= $FunctionContextHeight
   ==> (forall TypeDescriptorTests.UberTrait$X: Ty, 
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
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
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
// definition axiom for TypeDescriptorTests.UberTrait.Id (revealed)
axiom {:id "id651"} 0 <= $FunctionContextHeight
   ==> (forall TypeDescriptorTests.UberTrait$X: Ty, 
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
       ==> TypeDescriptorTests.UberTrait.Id(TypeDescriptorTests.UberTrait$X, 
          TypeDescriptorTests.UberTrait$Y, 
          TypeDescriptorTests.UberTrait$Z, 
          this, 
          x#0)
         == x#0);
// definition axiom for TypeDescriptorTests.UberTrait.Id for all literals (revealed)
axiom {:id "id652"} 0 <= $FunctionContextHeight
   ==> (forall TypeDescriptorTests.UberTrait$X: Ty, 
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
         || (0 < $FunctionContextHeight
           && 
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
}

function TypeDescriptorTests.UberTrait.Id#canCall(TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty, 
    this: ref, 
    x#0: Box)
   : bool;

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

procedure {:verboseName "TypeDescriptorTests.UberTrait.Id (well-formedness)"} CheckWellformed$$TypeDescriptorTests.UberTrait.Id(TypeDescriptorTests.UberTrait$X: Ty, 
    TypeDescriptorTests.UberTrait$Y: Ty, 
    TypeDescriptorTests.UberTrait$Z: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
            TypeDescriptorTests.UberTrait$Y, 
            TypeDescriptorTests.UberTrait$Z))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.UberTrait(TypeDescriptorTests.UberTrait$X, 
            TypeDescriptorTests.UberTrait$Y, 
            TypeDescriptorTests.UberTrait$Z), 
          $Heap), 
    x#0: Box where $IsBox(x#0, TypeDescriptorTests.UberTrait$X));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



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

procedure {:verboseName "TypeDescriptorTests.Trait.Compose (well-formedness)"} CheckWellFormed$$TypeDescriptorTests.Trait.Compose(TypeDescriptorTests.Trait$T: Ty, 
    TypeDescriptorTests.Trait$R: Ty, 
    TypeDescriptorTests.Trait.Compose$S: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R), 
          $Heap), 
    f#0: ref
       where $Is(f#0, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait.Compose$S, TypeDescriptorTests.Trait$T))
         && $IsAlloc(f#0, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait.Compose$S, TypeDescriptorTests.Trait$T), 
          $Heap))
   returns (res#0: ref
       where $Is(res#0, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait.Compose$S, TypeDescriptorTests.Trait$R))
         && $IsAlloc(res#0, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait.Compose$S, TypeDescriptorTests.Trait$R), 
          $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeDescriptorTests.Trait.Compose (call)"} Call$$TypeDescriptorTests.Trait.Compose(TypeDescriptorTests.Trait$T: Ty, 
    TypeDescriptorTests.Trait$R: Ty, 
    TypeDescriptorTests.Trait.Compose$S: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R), 
          $Heap), 
    f#0: ref
       where $Is(f#0, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait.Compose$S, TypeDescriptorTests.Trait$T))
         && $IsAlloc(f#0, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait.Compose$S, TypeDescriptorTests.Trait$T), 
          $Heap))
   returns (res#0: ref
       where $Is(res#0, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait.Compose$S, TypeDescriptorTests.Trait$R))
         && $IsAlloc(res#0, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait.Compose$S, TypeDescriptorTests.Trait$R), 
          $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TypeDescriptorTests.Trait.Compose (correctness)"} Impl$$TypeDescriptorTests.Trait.Compose(TypeDescriptorTests.Trait$T: Ty, 
    TypeDescriptorTests.Trait$R: Ty, 
    TypeDescriptorTests.Trait.Compose$S: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R), 
          $Heap), 
    f#0: ref
       where $Is(f#0, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait.Compose$S, TypeDescriptorTests.Trait$T))
         && $IsAlloc(f#0, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait.Compose$S, TypeDescriptorTests.Trait$T), 
          $Heap))
   returns (defass#res#0: bool, 
    res#0: ref
       where defass#res#0
         ==> $Is(res#0, 
            Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait.Compose$S, TypeDescriptorTests.Trait$R))
           && $IsAlloc(res#0, 
            Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Trait.Compose$S, TypeDescriptorTests.Trait$R), 
            $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TypeDescriptorTests.Trait.Compose (correctness)"} Impl$$TypeDescriptorTests.Trait.Compose(TypeDescriptorTests.Trait$T: Ty, 
    TypeDescriptorTests.Trait$R: Ty, 
    TypeDescriptorTests.Trait.Compose$S: Ty, 
    this: ref, 
    f#0: ref)
   returns (defass#res#0: bool, res#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $nw: ref;
  var first##0: ref;
  var second##0: ref;

    // AddMethodImpl: Compose, Impl$$TypeDescriptorTests.Trait.Compose
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(504,11)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(504,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    first##0 := f#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    second##0 := this;
    call {:id "id654"} $nw := Call$$TypeDescriptorTests.Composition.__ctor(TypeDescriptorTests.Trait.Compose$S, TypeDescriptorTests.Trait$T, TypeDescriptorTests.Trait$R, first##0, second##0);
    // TrCallStmt: After ProcessCallStmt
    res#0 := $nw;
    defass#res#0 := true;
    assert {:id "id656"} defass#res#0;
}



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

procedure {:verboseName "TypeDescriptorTests.Composition._ctor (well-formedness)"} CheckWellFormed$$TypeDescriptorTests.Composition.__ctor(TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty, 
    first#0: ref
       where $Is(first#0, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Composition$Sx, TypeDescriptorTests.Composition$Tx))
         && $IsAlloc(first#0, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Composition$Sx, TypeDescriptorTests.Composition$Tx), 
          $Heap), 
    second#0: ref
       where $Is(second#0, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Composition$Tx, TypeDescriptorTests.Composition$RRx))
         && $IsAlloc(second#0, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Composition$Tx, TypeDescriptorTests.Composition$RRx), 
          $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



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

procedure {:verboseName "TypeDescriptorTests.Composition._ctor (call)"} Call$$TypeDescriptorTests.Composition.__ctor(TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty, 
    first#0: ref
       where $Is(first#0, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Composition$Sx, TypeDescriptorTests.Composition$Tx))
         && $IsAlloc(first#0, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Composition$Sx, TypeDescriptorTests.Composition$Tx), 
          $Heap), 
    second#0: ref
       where $Is(second#0, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Composition$Tx, TypeDescriptorTests.Composition$RRx))
         && $IsAlloc(second#0, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Composition$Tx, TypeDescriptorTests.Composition$RRx), 
          $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.Composition(TypeDescriptorTests.Composition$Sx, 
            TypeDescriptorTests.Composition$Tx, 
            TypeDescriptorTests.Composition$RRx))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.Composition(TypeDescriptorTests.Composition$Sx, 
            TypeDescriptorTests.Composition$Tx, 
            TypeDescriptorTests.Composition$RRx), 
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



procedure {:verboseName "TypeDescriptorTests.Composition._ctor (correctness)"} Impl$$TypeDescriptorTests.Composition.__ctor(TypeDescriptorTests.Composition$Sx: Ty, 
    TypeDescriptorTests.Composition$Tx: Ty, 
    TypeDescriptorTests.Composition$RRx: Ty, 
    first#0: ref
       where $Is(first#0, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Composition$Sx, TypeDescriptorTests.Composition$Tx))
         && $IsAlloc(first#0, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Composition$Sx, TypeDescriptorTests.Composition$Tx), 
          $Heap), 
    second#0: ref
       where $Is(second#0, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Composition$Tx, TypeDescriptorTests.Composition$RRx))
         && $IsAlloc(second#0, 
          Tclass.TypeDescriptorTests.Trait(TypeDescriptorTests.Composition$Tx, TypeDescriptorTests.Composition$RRx), 
          $Heap))
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
   : Box
uses {
// consequence axiom for TypeDescriptorTests.XT.F
axiom 0 <= $FunctionContextHeight
   ==> (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, this: ref, u#0: Box :: 
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
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
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
// definition axiom for TypeDescriptorTests.XT.F (revealed)
axiom {:id "id657"} 0 <= $FunctionContextHeight
   ==> (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, this: ref, u#0: Box :: 
    { TypeDescriptorTests.XT.F(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0) } 
    TypeDescriptorTests.XT.F#canCall(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, 
            Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
           && $IsBox(u#0, TypeDescriptorTests.XT$U))
       ==> TypeDescriptorTests.XT.F(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
         == u#0);
// definition axiom for TypeDescriptorTests.XT.F for all literals (revealed)
axiom {:id "id658"} 0 <= $FunctionContextHeight
   ==> (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, this: ref, u#0: Box :: 
    {:weight 3} { TypeDescriptorTests.XT.F(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, Lit(this), Lit(u#0)) } 
    TypeDescriptorTests.XT.F#canCall(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, Lit(this), Lit(u#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, 
            Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
           && $IsBox(u#0, TypeDescriptorTests.XT$U))
       ==> TypeDescriptorTests.XT.F(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, Lit(this), Lit(u#0))
         == Lit(u#0));
}

function TypeDescriptorTests.XT.F#canCall(TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, this: ref, u#0: Box)
   : bool;

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

procedure {:verboseName "TypeDescriptorTests.XT.F (well-formedness)"} CheckWellformed$$TypeDescriptorTests.XT.F(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
          $Heap), 
    u#0: Box where $IsBox(u#0, TypeDescriptorTests.XT$U));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for TypeDescriptorTests.XT.G
function TypeDescriptorTests.XT.G(TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, this: ref, u#0: Box)
   : Box
uses {
// consequence axiom for TypeDescriptorTests.XT.G
axiom 2 <= $FunctionContextHeight
   ==> (forall TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, this: ref, u#0: Box :: 
    { TypeDescriptorTests.XT.G(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0) } 
    TypeDescriptorTests.XT.G#canCall(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
         || (2 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, 
            Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
           && $IsBox(u#0, TypeDescriptorTests.XT$U))
       ==> $IsBox(TypeDescriptorTests.XT.G(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0), 
        TypeDescriptorTests.XT$U));
// alloc consequence axiom for TypeDescriptorTests.XT.G
axiom 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      TypeDescriptorTests.XT$U: Ty, 
      TypeDescriptorTests.XT$W: Ty, 
      this: ref, 
      u#0: Box :: 
    { $IsAllocBox(TypeDescriptorTests.XT.G(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0), 
        TypeDescriptorTests.XT$U, 
        $Heap) } 
    (TypeDescriptorTests.XT.G#canCall(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
           || (2 < $FunctionContextHeight
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
}

function TypeDescriptorTests.XT.G#canCall(TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, this: ref, u#0: Box)
   : bool;

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

procedure {:verboseName "TypeDescriptorTests.XT.G (well-formedness)"} CheckWellformed$$TypeDescriptorTests.XT.G(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
          $Heap), 
    u#0: Box where $IsBox(u#0, TypeDescriptorTests.XT$U));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeDescriptorTests.XT.M (well-formedness)"} CheckWellFormed$$TypeDescriptorTests.XT.M(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
          $Heap), 
    u#0: Box
       where $IsBox(u#0, TypeDescriptorTests.XT$U)
         && $IsAllocBox(u#0, TypeDescriptorTests.XT$U, $Heap))
   returns (r#0: Box
       where $IsBox(r#0, TypeDescriptorTests.XT$U)
         && $IsAllocBox(r#0, TypeDescriptorTests.XT$U, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeDescriptorTests.XT.M (call)"} Call$$TypeDescriptorTests.XT.M(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
          $Heap), 
    u#0: Box
       where $IsBox(u#0, TypeDescriptorTests.XT$U)
         && $IsAllocBox(u#0, TypeDescriptorTests.XT$U, $Heap))
   returns (r#0: Box
       where $IsBox(r#0, TypeDescriptorTests.XT$U)
         && $IsAllocBox(r#0, TypeDescriptorTests.XT$U, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TypeDescriptorTests.XT.M (correctness)"} Impl$$TypeDescriptorTests.XT.M(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
          $Heap), 
    u#0: Box
       where $IsBox(u#0, TypeDescriptorTests.XT$U)
         && $IsAllocBox(u#0, TypeDescriptorTests.XT$U, $Heap))
   returns (defass#r#0: bool, 
    r#0: Box
       where defass#r#0
         ==> $IsBox(r#0, TypeDescriptorTests.XT$U)
           && $IsAllocBox(r#0, TypeDescriptorTests.XT$U, $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TypeDescriptorTests.XT.M (correctness)"} Impl$$TypeDescriptorTests.XT.M(TypeDescriptorTests.XT$U: Ty, TypeDescriptorTests.XT$W: Ty, this: ref, u#0: Box)
   returns (defass#r#0: bool, r#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: M, Impl$$TypeDescriptorTests.XT.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(525,39)
    assume true;
    assume true;
    r#0 := u#0;
    defass#r#0 := true;
    assert {:id "id661"} defass#r#0;
}



procedure {:verboseName "TypeDescriptorTests.XT.N (well-formedness)"} CheckWellFormed$$TypeDescriptorTests.XT.N(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
          $Heap), 
    u#0: Box
       where $IsBox(u#0, TypeDescriptorTests.XT$U)
         && $IsAllocBox(u#0, TypeDescriptorTests.XT$U, $Heap))
   returns (r#0: Box
       where $IsBox(r#0, TypeDescriptorTests.XT$U)
         && $IsAllocBox(r#0, TypeDescriptorTests.XT$U, $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeDescriptorTests.XT.N (call)"} Call$$TypeDescriptorTests.XT.N(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
          $Heap), 
    u#0: Box
       where $IsBox(u#0, TypeDescriptorTests.XT$U)
         && $IsAllocBox(u#0, TypeDescriptorTests.XT$U, $Heap))
   returns (r#0: Box
       where $IsBox(r#0, TypeDescriptorTests.XT$U)
         && $IsAllocBox(r#0, TypeDescriptorTests.XT$U, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for TypeDescriptorTests.XT.F'
function TypeDescriptorTests.XT.F_k(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref, 
    u#0: HandleType)
   : HandleType
uses {
// consequence axiom for TypeDescriptorTests.XT.F_k
axiom 0 <= $FunctionContextHeight
   ==> (forall TypeDescriptorTests.XT$U: Ty, 
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
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
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
// definition axiom for TypeDescriptorTests.XT.F_k (revealed)
axiom {:id "id662"} 0 <= $FunctionContextHeight
   ==> (forall TypeDescriptorTests.XT$U: Ty, 
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
       ==> TypeDescriptorTests.XT.F_k(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
         == u#0);
// definition axiom for TypeDescriptorTests.XT.F_k for all literals (revealed)
axiom {:id "id663"} 0 <= $FunctionContextHeight
   ==> (forall TypeDescriptorTests.XT$U: Ty, 
      TypeDescriptorTests.XT$W: Ty, 
      this: ref, 
      u#0: HandleType :: 
    {:weight 3} { TypeDescriptorTests.XT.F_k(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, Lit(this), Lit(u#0)) } 
    TypeDescriptorTests.XT.F_k#canCall(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, Lit(this), Lit(u#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, 
            Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
           && $Is(u#0, 
            Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W)))
       ==> TypeDescriptorTests.XT.F_k(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, Lit(this), Lit(u#0))
         == Lit(u#0));
}

function TypeDescriptorTests.XT.F_k#canCall(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref, 
    u#0: HandleType)
   : bool;

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

procedure {:verboseName "TypeDescriptorTests.XT.F' (well-formedness)"} CheckWellformed$$TypeDescriptorTests.XT.F_k(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
          $Heap), 
    u#0: HandleType
       where $Is(u#0, 
        Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for TypeDescriptorTests.XT.G'
function TypeDescriptorTests.XT.G_k(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref, 
    u#0: HandleType)
   : HandleType
uses {
// consequence axiom for TypeDescriptorTests.XT.G_k
axiom 2 <= $FunctionContextHeight
   ==> (forall TypeDescriptorTests.XT$U: Ty, 
      TypeDescriptorTests.XT$W: Ty, 
      this: ref, 
      u#0: HandleType :: 
    { TypeDescriptorTests.XT.G_k(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0) } 
    TypeDescriptorTests.XT.G_k#canCall(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
         || (2 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, 
            Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
           && $Is(u#0, 
            Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W)))
       ==> $Is(TypeDescriptorTests.XT.G_k(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0), 
        Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W)));
// alloc consequence axiom for TypeDescriptorTests.XT.G_k
axiom 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      TypeDescriptorTests.XT$U: Ty, 
      TypeDescriptorTests.XT$W: Ty, 
      this: ref, 
      u#0: HandleType :: 
    { $IsAlloc(TypeDescriptorTests.XT.G_k(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0), 
        Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W), 
        $Heap) } 
    (TypeDescriptorTests.XT.G_k#canCall(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W, this, u#0)
           || (2 < $FunctionContextHeight
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
}

function TypeDescriptorTests.XT.G_k#canCall(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref, 
    u#0: HandleType)
   : bool;

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

procedure {:verboseName "TypeDescriptorTests.XT.G' (well-formedness)"} CheckWellformed$$TypeDescriptorTests.XT.G_k(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
          $Heap), 
    u#0: HandleType
       where $Is(u#0, 
        Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W)));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeDescriptorTests.XT.M' (well-formedness)"} CheckWellFormed$$TypeDescriptorTests.XT.M_k(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
          $Heap), 
    u#0: HandleType
       where $Is(u#0, 
          Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W))
         && $IsAlloc(u#0, 
          Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W), 
          $Heap))
   returns (r#0: HandleType
       where $Is(r#0, 
          Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W))
         && $IsAlloc(r#0, 
          Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W), 
          $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeDescriptorTests.XT.M' (call)"} Call$$TypeDescriptorTests.XT.M_k(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
          $Heap), 
    u#0: HandleType
       where $Is(u#0, 
          Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W))
         && $IsAlloc(u#0, 
          Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W), 
          $Heap))
   returns (r#0: HandleType
       where $Is(r#0, 
          Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W))
         && $IsAlloc(r#0, 
          Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W), 
          $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TypeDescriptorTests.XT.M' (correctness)"} Impl$$TypeDescriptorTests.XT.M_k(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
          $Heap), 
    u#0: HandleType
       where $Is(u#0, 
          Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W))
         && $IsAlloc(u#0, 
          Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W), 
          $Heap))
   returns (defass#r#0: bool, 
    r#0: HandleType
       where defass#r#0
         ==> $Is(r#0, 
            Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W))
           && $IsAlloc(r#0, 
            Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W), 
            $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TypeDescriptorTests.XT.M' (correctness)"} Impl$$TypeDescriptorTests.XT.M_k(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref, 
    u#0: HandleType)
   returns (defass#r#0: bool, r#0: HandleType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: M', Impl$$TypeDescriptorTests.XT.M_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(530,50)
    assume true;
    assume true;
    r#0 := u#0;
    defass#r#0 := true;
    assert {:id "id666"} defass#r#0;
}



procedure {:verboseName "TypeDescriptorTests.XT.N' (well-formedness)"} CheckWellFormed$$TypeDescriptorTests.XT.N_k(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
          $Heap), 
    u#0: HandleType
       where $Is(u#0, 
          Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W))
         && $IsAlloc(u#0, 
          Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W), 
          $Heap))
   returns (r#0: HandleType
       where $Is(r#0, 
          Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W))
         && $IsAlloc(r#0, 
          Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W), 
          $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeDescriptorTests.XT.N' (call)"} Call$$TypeDescriptorTests.XT.N_k(TypeDescriptorTests.XT$U: Ty, 
    TypeDescriptorTests.XT$W: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.XT(TypeDescriptorTests.XT$U, TypeDescriptorTests.XT$W), 
          $Heap), 
    u#0: HandleType
       where $Is(u#0, 
          Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W))
         && $IsAlloc(u#0, 
          Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W), 
          $Heap))
   returns (r#0: HandleType
       where $Is(r#0, 
          Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W))
         && $IsAlloc(r#0, 
          Tclass._System.___hTotalFunc1(TypeDescriptorTests.XT$W, TypeDescriptorTests.XT$W), 
          $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



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

procedure {:verboseName "TypeDescriptorTests.YT._ctor (well-formedness)"} CheckWellFormed$$TypeDescriptorTests.YT.__ctor() returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



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

procedure {:verboseName "TypeDescriptorTests.YT._ctor (call)"} Call$$TypeDescriptorTests.YT.__ctor()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass.TypeDescriptorTests.YT())
         && $IsAlloc(this, Tclass.TypeDescriptorTests.YT(), $Heap));
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



procedure {:verboseName "TypeDescriptorTests.YT._ctor (correctness)"} Impl$$TypeDescriptorTests.YT.__ctor() returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for TypeDescriptorTests.YT.G
function TypeDescriptorTests.YT.G(this: ref, uu#0: HandleType) : HandleType
uses {
// consequence axiom for TypeDescriptorTests.YT.G
axiom 1 <= $FunctionContextHeight
   ==> (forall this: ref, uu#0: HandleType :: 
    { TypeDescriptorTests.YT.G(this, uu#0) } 
    TypeDescriptorTests.YT.G#canCall(this, uu#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.TypeDescriptorTests.YT())
           && $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt)))
       ==> $Is(TypeDescriptorTests.YT.G(this, uu#0), Tclass._System.___hTotalFunc1(TInt, TInt)));
// definition axiom for TypeDescriptorTests.YT.G (revealed)
axiom {:id "id671"} 1 <= $FunctionContextHeight
   ==> (forall this: ref, uu#0: HandleType :: 
    { TypeDescriptorTests.YT.G(this, uu#0) } 
    TypeDescriptorTests.YT.G#canCall(this, uu#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.TypeDescriptorTests.YT())
           && $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt)))
       ==> TypeDescriptorTests.XT.F#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, this, $Box(uu#0))
         && TypeDescriptorTests.YT.G(this, uu#0)
           == $Unbox(TypeDescriptorTests.XT.F(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, this, $Box(uu#0))): HandleType);
// definition axiom for TypeDescriptorTests.YT.G for all literals (revealed)
axiom {:id "id672"} 1 <= $FunctionContextHeight
   ==> (forall this: ref, uu#0: HandleType :: 
    {:weight 3} { TypeDescriptorTests.YT.G(Lit(this), Lit(uu#0)) } 
    TypeDescriptorTests.YT.G#canCall(Lit(this), Lit(uu#0))
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.TypeDescriptorTests.YT())
           && $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt)))
       ==> TypeDescriptorTests.XT.F#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, Lit(this), $Box(Lit(uu#0)))
         && TypeDescriptorTests.YT.G(Lit(this), Lit(uu#0))
           == Lit($Unbox(TypeDescriptorTests.XT.F(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, Lit(this), $Box(Lit(uu#0)))): HandleType));
}

function TypeDescriptorTests.YT.G#canCall(this: ref, uu#0: HandleType) : bool;

function TypeDescriptorTests.YT.G#requires(ref, HandleType) : bool;

// #requires axiom for TypeDescriptorTests.YT.G
axiom (forall this: ref, uu#0: HandleType :: 
  { TypeDescriptorTests.YT.G#requires(this, uu#0) } 
  this != null
       && $Is(this, Tclass.TypeDescriptorTests.YT())
       && $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt))
     ==> TypeDescriptorTests.YT.G#requires(this, uu#0) == true);

// override axiom for TypeDescriptorTests.XT.G in class TypeDescriptorTests.YT
axiom 1 <= $FunctionContextHeight
   ==> (forall this: ref, u#0: HandleType :: 
    { TypeDescriptorTests.XT.G(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, this, $Box(u#0)), $Is(this, Tclass.TypeDescriptorTests.YT()) } 
      { TypeDescriptorTests.XT.G(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, this, $Box(u#0)), TypeDescriptorTests.YT.G(this, u#0) } 
    TypeDescriptorTests.YT.G#canCall(this, u#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.TypeDescriptorTests.YT()))
       ==> TypeDescriptorTests.XT.G(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, this, $Box(u#0))
         == $Box(TypeDescriptorTests.YT.G(this, u#0)));

procedure {:verboseName "TypeDescriptorTests.YT.G (well-formedness)"} CheckWellformed$$TypeDescriptorTests.YT.G(this: ref
       where this != null
         && 
        $Is(this, Tclass.TypeDescriptorTests.YT())
         && $IsAlloc(this, Tclass.TypeDescriptorTests.YT(), $Heap), 
    uu#0: HandleType where $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeDescriptorTests.YT.G (override check)"} OverrideCheck$$TypeDescriptorTests.YT.G(this: ref
       where this != null
         && 
        $Is(this, Tclass.TypeDescriptorTests.YT())
         && $IsAlloc(this, Tclass.TypeDescriptorTests.YT(), $Heap), 
    uu#0: HandleType where $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TypeDescriptorTests.YT.G (override check)"} OverrideCheck$$TypeDescriptorTests.YT.G(this: ref, uu#0: HandleType)
{
  var TypeDescriptorTests.XT$U: Ty;
  var TypeDescriptorTests.XT$W: Ty;
  var YT_$_ReadsFrame: [ref,Field]bool;

    assume TypeDescriptorTests.XT$U == Tclass._System.___hTotalFunc1(TInt, TInt);
    assume TypeDescriptorTests.XT$W == TInt;
    assert {:id "id674"} true;
    YT_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id675"} (forall $o: ref, $f: Field :: true);
}



procedure {:verboseName "TypeDescriptorTests.YT.N (well-formedness)"} CheckWellFormed$$TypeDescriptorTests.YT.N(this: ref
       where this != null
         && 
        $Is(this, Tclass.TypeDescriptorTests.YT())
         && $IsAlloc(this, Tclass.TypeDescriptorTests.YT(), $Heap), 
    uu#0: HandleType
       where $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt))
         && $IsAlloc(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap))
   returns (rr#0: HandleType
       where $Is(rr#0, Tclass._System.___hTotalFunc1(TInt, TInt))
         && $IsAlloc(rr#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeDescriptorTests.YT.N (override check)"} OverrideCheck$$TypeDescriptorTests.YT.N(this: ref
       where this != null
         && 
        $Is(this, Tclass.TypeDescriptorTests.YT())
         && $IsAlloc(this, Tclass.TypeDescriptorTests.YT(), $Heap), 
    uu#0: HandleType
       where $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt))
         && $IsAlloc(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap))
   returns (rr#0: HandleType
       where $Is(rr#0, Tclass._System.___hTotalFunc1(TInt, TInt))
         && $IsAlloc(rr#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TypeDescriptorTests.YT.N (override check)"} OverrideCheck$$TypeDescriptorTests.YT.N(this: ref, uu#0: HandleType) returns (rr#0: HandleType)
{
  var TypeDescriptorTests.XT$U: Ty;
  var TypeDescriptorTests.XT$W: Ty;

    assume TypeDescriptorTests.XT$U == Tclass._System.___hTotalFunc1(TInt, TInt);
    assume TypeDescriptorTests.XT$W == TInt;
    assert {:id "id676"} true;
    assert {:id "id677"} (forall $o: ref, $f: Field :: true);
    assert {:id "id678"} (forall $o: ref, $f: Field :: true);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "TypeDescriptorTests.YT.N (call)"} Call$$TypeDescriptorTests.YT.N(this: ref
       where this != null
         && 
        $Is(this, Tclass.TypeDescriptorTests.YT())
         && $IsAlloc(this, Tclass.TypeDescriptorTests.YT(), $Heap), 
    uu#0: HandleType
       where $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt))
         && $IsAlloc(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap))
   returns (rr#0: HandleType
       where $Is(rr#0, Tclass._System.___hTotalFunc1(TInt, TInt))
         && $IsAlloc(rr#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TypeDescriptorTests.YT.N (correctness)"} Impl$$TypeDescriptorTests.YT.N(this: ref
       where this != null
         && 
        $Is(this, Tclass.TypeDescriptorTests.YT())
         && $IsAlloc(this, Tclass.TypeDescriptorTests.YT(), $Heap), 
    uu#0: HandleType
       where $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt))
         && $IsAlloc(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap))
   returns (rr#0: HandleType
       where $Is(rr#0, Tclass._System.___hTotalFunc1(TInt, TInt))
         && $IsAlloc(rr#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TypeDescriptorTests.YT.N (correctness)"} Impl$$TypeDescriptorTests.YT.N(this: ref, uu#0: HandleType) returns (rr#0: HandleType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##0: HandleType;
  var u##0: HandleType;
  var $tmp##0: Box;

    // AddMethodImpl: N, Impl$$TypeDescriptorTests.YT.N
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(543,14)
    assume true;
    // TrCallStmt: Adding lhs with type int -> int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    u##0 := uu#0;
    call {:id "id679"} $tmp##0 := Call$$TypeDescriptorTests.XT.M(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, this, $Box(u##0));
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): HandleType;
    // TrCallStmt: After ProcessCallStmt
    rr#0 := $rhs##0;
}



// function declaration for TypeDescriptorTests.YT.G'
function TypeDescriptorTests.YT.G_k(this: ref, uu#0: HandleType) : HandleType
uses {
// consequence axiom for TypeDescriptorTests.YT.G_k
axiom 1 <= $FunctionContextHeight
   ==> (forall this: ref, uu#0: HandleType :: 
    { TypeDescriptorTests.YT.G_k(this, uu#0) } 
    TypeDescriptorTests.YT.G_k#canCall(this, uu#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.TypeDescriptorTests.YT())
           && $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt)))
       ==> $Is(TypeDescriptorTests.YT.G_k(this, uu#0), 
        Tclass._System.___hTotalFunc1(TInt, TInt)));
// definition axiom for TypeDescriptorTests.YT.G_k (revealed)
axiom {:id "id681"} 1 <= $FunctionContextHeight
   ==> (forall this: ref, uu#0: HandleType :: 
    { TypeDescriptorTests.YT.G_k(this, uu#0) } 
    TypeDescriptorTests.YT.G_k#canCall(this, uu#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.TypeDescriptorTests.YT())
           && $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt)))
       ==> TypeDescriptorTests.XT.F#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, this, $Box(uu#0))
         && TypeDescriptorTests.YT.G_k(this, uu#0)
           == $Unbox(TypeDescriptorTests.XT.F(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, this, $Box(uu#0))): HandleType);
// definition axiom for TypeDescriptorTests.YT.G_k for all literals (revealed)
axiom {:id "id682"} 1 <= $FunctionContextHeight
   ==> (forall this: ref, uu#0: HandleType :: 
    {:weight 3} { TypeDescriptorTests.YT.G_k(Lit(this), Lit(uu#0)) } 
    TypeDescriptorTests.YT.G_k#canCall(Lit(this), Lit(uu#0))
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.TypeDescriptorTests.YT())
           && $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt)))
       ==> TypeDescriptorTests.XT.F#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, Lit(this), $Box(Lit(uu#0)))
         && TypeDescriptorTests.YT.G_k(Lit(this), Lit(uu#0))
           == Lit($Unbox(TypeDescriptorTests.XT.F(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, Lit(this), $Box(Lit(uu#0)))): HandleType));
}

function TypeDescriptorTests.YT.G_k#canCall(this: ref, uu#0: HandleType) : bool;

function TypeDescriptorTests.YT.G_k#requires(ref, HandleType) : bool;

// #requires axiom for TypeDescriptorTests.YT.G_k
axiom (forall this: ref, uu#0: HandleType :: 
  { TypeDescriptorTests.YT.G_k#requires(this, uu#0) } 
  this != null
       && $Is(this, Tclass.TypeDescriptorTests.YT())
       && $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt))
     ==> TypeDescriptorTests.YT.G_k#requires(this, uu#0) == true);

// override axiom for TypeDescriptorTests.XT.G_k in class TypeDescriptorTests.YT
axiom 1 <= $FunctionContextHeight
   ==> (forall this: ref, u#0: HandleType :: 
    { TypeDescriptorTests.XT.G_k(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, this, u#0), $Is(this, Tclass.TypeDescriptorTests.YT()) } 
      { TypeDescriptorTests.XT.G_k(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, this, u#0), TypeDescriptorTests.YT.G_k(this, u#0) } 
    TypeDescriptorTests.YT.G_k#canCall(this, u#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.TypeDescriptorTests.YT()))
       ==> TypeDescriptorTests.XT.G_k(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, this, u#0)
         == TypeDescriptorTests.YT.G_k(this, u#0));

procedure {:verboseName "TypeDescriptorTests.YT.G' (well-formedness)"} CheckWellformed$$TypeDescriptorTests.YT.G_k(this: ref
       where this != null
         && 
        $Is(this, Tclass.TypeDescriptorTests.YT())
         && $IsAlloc(this, Tclass.TypeDescriptorTests.YT(), $Heap), 
    uu#0: HandleType where $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeDescriptorTests.YT.G' (override check)"} OverrideCheck$$TypeDescriptorTests.YT.G_k(this: ref
       where this != null
         && 
        $Is(this, Tclass.TypeDescriptorTests.YT())
         && $IsAlloc(this, Tclass.TypeDescriptorTests.YT(), $Heap), 
    uu#0: HandleType where $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TypeDescriptorTests.YT.G' (override check)"} OverrideCheck$$TypeDescriptorTests.YT.G_k(this: ref, uu#0: HandleType)
{
  var TypeDescriptorTests.XT$U: Ty;
  var TypeDescriptorTests.XT$W: Ty;
  var YT_$_ReadsFrame: [ref,Field]bool;

    assume TypeDescriptorTests.XT$U == Tclass._System.___hTotalFunc1(TInt, TInt);
    assume TypeDescriptorTests.XT$W == TInt;
    assert {:id "id684"} true;
    YT_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id685"} (forall $o: ref, $f: Field :: true);
}



procedure {:verboseName "TypeDescriptorTests.YT.N' (well-formedness)"} CheckWellFormed$$TypeDescriptorTests.YT.N_k(this: ref
       where this != null
         && 
        $Is(this, Tclass.TypeDescriptorTests.YT())
         && $IsAlloc(this, Tclass.TypeDescriptorTests.YT(), $Heap), 
    uu#0: HandleType
       where $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt))
         && $IsAlloc(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap))
   returns (rr#0: HandleType
       where $Is(rr#0, Tclass._System.___hTotalFunc1(TInt, TInt))
         && $IsAlloc(rr#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeDescriptorTests.YT.N' (override check)"} OverrideCheck$$TypeDescriptorTests.YT.N_k(this: ref
       where this != null
         && 
        $Is(this, Tclass.TypeDescriptorTests.YT())
         && $IsAlloc(this, Tclass.TypeDescriptorTests.YT(), $Heap), 
    uu#0: HandleType
       where $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt))
         && $IsAlloc(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap))
   returns (rr#0: HandleType
       where $Is(rr#0, Tclass._System.___hTotalFunc1(TInt, TInt))
         && $IsAlloc(rr#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TypeDescriptorTests.YT.N' (override check)"} OverrideCheck$$TypeDescriptorTests.YT.N_k(this: ref, uu#0: HandleType) returns (rr#0: HandleType)
{
  var TypeDescriptorTests.XT$U: Ty;
  var TypeDescriptorTests.XT$W: Ty;

    assume TypeDescriptorTests.XT$U == Tclass._System.___hTotalFunc1(TInt, TInt);
    assume TypeDescriptorTests.XT$W == TInt;
    assert {:id "id686"} true;
    assert {:id "id687"} (forall $o: ref, $f: Field :: true);
    assert {:id "id688"} (forall $o: ref, $f: Field :: true);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "TypeDescriptorTests.YT.N' (call)"} Call$$TypeDescriptorTests.YT.N_k(this: ref
       where this != null
         && 
        $Is(this, Tclass.TypeDescriptorTests.YT())
         && $IsAlloc(this, Tclass.TypeDescriptorTests.YT(), $Heap), 
    uu#0: HandleType
       where $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt))
         && $IsAlloc(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap))
   returns (rr#0: HandleType
       where $Is(rr#0, Tclass._System.___hTotalFunc1(TInt, TInt))
         && $IsAlloc(rr#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TypeDescriptorTests.YT.N' (correctness)"} Impl$$TypeDescriptorTests.YT.N_k(this: ref
       where this != null
         && 
        $Is(this, Tclass.TypeDescriptorTests.YT())
         && $IsAlloc(this, Tclass.TypeDescriptorTests.YT(), $Heap), 
    uu#0: HandleType
       where $Is(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt))
         && $IsAlloc(uu#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap))
   returns (rr#0: HandleType
       where $Is(rr#0, Tclass._System.___hTotalFunc1(TInt, TInt))
         && $IsAlloc(rr#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TypeDescriptorTests.YT.N' (correctness)"} Impl$$TypeDescriptorTests.YT.N_k(this: ref, uu#0: HandleType) returns (rr#0: HandleType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##0: HandleType;
  var u##0: HandleType;

    // AddMethodImpl: N', Impl$$TypeDescriptorTests.YT.N_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitCompile.dfy(549,15)
    assume true;
    // TrCallStmt: Adding lhs with type int -> int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    u##0 := uu#0;
    call {:id "id689"} $rhs##0 := Call$$TypeDescriptorTests.XT.M_k(Tclass._System.___hTotalFunc1(TInt, TInt), TInt, this, u##0);
    // TrCallStmt: After ProcessCallStmt
    rr#0 := $rhs##0;
}



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

function TypeDescriptorTests.TraitDependency.a(TypeDescriptorTests.TraitDependency$X: Ty, this: ref) : Box
uses {
// TraitDependency.a: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall TypeDescriptorTests.TraitDependency$X: Ty, $o: ref :: 
    { TypeDescriptorTests.TraitDependency.a(TypeDescriptorTests.TraitDependency$X, $o) } 
    $o != null
         && $Is($o, 
          Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X))
       ==> $IsBox(TypeDescriptorTests.TraitDependency.a(TypeDescriptorTests.TraitDependency$X, $o), 
        TypeDescriptorTests.TraitDependency$X));
// TraitDependency.a: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall TypeDescriptorTests.TraitDependency$X: Ty, $h: Heap, $o: ref :: 
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
}

function TypeDescriptorTests.TraitDependency.c(TypeDescriptorTests.TraitDependency$X: Ty, this: ref) : Box
uses {
// TraitDependency.c: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall TypeDescriptorTests.TraitDependency$X: Ty, $o: ref :: 
    { TypeDescriptorTests.TraitDependency.c(TypeDescriptorTests.TraitDependency$X, $o) } 
    $o != null
         && $Is($o, 
          Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X))
       ==> $IsBox(TypeDescriptorTests.TraitDependency.c(TypeDescriptorTests.TraitDependency$X, $o), 
        TypeDescriptorTests.TraitDependency$X));
// TraitDependency.c: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall TypeDescriptorTests.TraitDependency$X: Ty, $h: Heap, $o: ref :: 
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
}

function TypeDescriptorTests.TraitDependency.b(TypeDescriptorTests.TraitDependency$X: Ty, this: ref) : DatatypeType
uses {
axiom (forall TypeDescriptorTests.TraitDependency$X: Ty, this: ref :: 
  { TypeDescriptorTests.TraitDependency.b(TypeDescriptorTests.TraitDependency$X, this): DatatypeType } 
  TypeDescriptorTests.TraitDependency.b(TypeDescriptorTests.TraitDependency$X, this): DatatypeType
     == #_System._tuple#2._#Make2(TypeDescriptorTests.TraitDependency.a(TypeDescriptorTests.TraitDependency$X, this), 
      TypeDescriptorTests.TraitDependency.c(TypeDescriptorTests.TraitDependency$X, this)));
// TraitDependency.b: Type axiom
axiom 1 < $FunctionContextHeight
   ==> (forall TypeDescriptorTests.TraitDependency$X: Ty, $o: ref :: 
    { TypeDescriptorTests.TraitDependency.b(TypeDescriptorTests.TraitDependency$X, $o) } 
    $o != null
         && $Is($o, 
          Tclass.TypeDescriptorTests.TraitDependency?(TypeDescriptorTests.TraitDependency$X))
       ==> $Is(TypeDescriptorTests.TraitDependency.b(TypeDescriptorTests.TraitDependency$X, $o), 
        Tclass._System.Tuple2(TypeDescriptorTests.TraitDependency$X, TypeDescriptorTests.TraitDependency$X)));
// TraitDependency.b: Allocation axiom
axiom 1 < $FunctionContextHeight
   ==> (forall TypeDescriptorTests.TraitDependency$X: Ty, $h: Heap, $o: ref :: 
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
}

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

procedure {:verboseName "TypeDescriptorTests.TraitDependency.b (well-formedness)"} CheckWellFormed$$TypeDescriptorTests.TraitDependency.b(TypeDescriptorTests.TraitDependency$X: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TypeDescriptorTests.TraitDependency(TypeDescriptorTests.TraitDependency$X))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorTests.TraitDependency(TypeDescriptorTests.TraitDependency$X), 
          $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



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

const unique tytagFamily$UberTrait: TyTagFamily;

const unique tytagFamily$XT: TyTagFamily;

const unique tytagFamily$TraitDependencyClass: TyTagFamily;

const unique tytagFamily$Trait: TyTagFamily;

const unique tytagFamily$Composition: TyTagFamily;

const unique tytagFamily$YT: TyTagFamily;

const unique tytagFamily$TraitDependency: TyTagFamily;

const unique field$u: NameFamily;
