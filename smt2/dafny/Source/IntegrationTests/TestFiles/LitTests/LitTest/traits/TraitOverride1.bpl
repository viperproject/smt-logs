// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitOverride1.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitOverride1-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitOverride1.dfy

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

const unique class._module.T1?: ClassName;

function Tclass._module.T1?() : Ty
uses {
// Tclass._module.T1? Tag
axiom Tag(Tclass._module.T1?()) == Tagclass._module.T1?
   && TagFamily(Tclass._module.T1?()) == tytagFamily$T1;
}

const unique Tagclass._module.T1?: TyTag;

// Box/unbox axiom for Tclass._module.T1?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.T1?()) } 
  $IsBox(bx, Tclass._module.T1?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.T1?()));

// $Is axiom for trait T1
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.T1?()) } 
  $Is($o, Tclass._module.T1?())
     <==> $o == null || implements$_module.T1(dtype($o)));

// $IsAlloc axiom for trait T1
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.T1?(), $h) } 
  $IsAlloc($o, Tclass._module.T1?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.T1(ty: Ty) : bool;

// function declaration for _module.T1.Plus
function _module.T1.Plus(this: ref, x#0: int, y#0: int) : int
uses {
// definition axiom for _module.T1.Plus (revealed)
axiom {:id "id0"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int, y#0: int :: 
    { _module.T1.Plus(this, x#0, y#0) } 
    _module.T1.Plus#canCall(this, x#0, y#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.T1())
           && x#0 > y#0)
       ==> _module.T1.Plus(this, x#0, y#0) == x#0 + y#0);
// definition axiom for _module.T1.Plus for decreasing-related literals (revealed)
axiom {:id "id1"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int, y#0: int :: 
    {:weight 3} { _module.T1.Plus(this, LitInt(x#0), LitInt(y#0)) } 
    _module.T1.Plus#canCall(this, LitInt(x#0), LitInt(y#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.T1())
           && Lit(x#0 > y#0))
       ==> _module.T1.Plus(this, LitInt(x#0), LitInt(y#0)) == LitInt(x#0 + y#0));
// definition axiom for _module.T1.Plus for all literals (revealed)
axiom {:id "id2"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int, y#0: int :: 
    {:weight 3} { _module.T1.Plus(Lit(this), LitInt(x#0), LitInt(y#0)) } 
    _module.T1.Plus#canCall(Lit(this), LitInt(x#0), LitInt(y#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.T1())
           && Lit(x#0 > y#0))
       ==> _module.T1.Plus(Lit(this), LitInt(x#0), LitInt(y#0)) == LitInt(x#0 + y#0));
}

function _module.T1.Plus#canCall(this: ref, x#0: int, y#0: int) : bool;

function Tclass._module.T1() : Ty
uses {
// Tclass._module.T1 Tag
axiom Tag(Tclass._module.T1()) == Tagclass._module.T1
   && TagFamily(Tclass._module.T1()) == tytagFamily$T1;
}

const unique Tagclass._module.T1: TyTag;

// Box/unbox axiom for Tclass._module.T1
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.T1()) } 
  $IsBox(bx, Tclass._module.T1())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.T1()));

function _module.T1.Plus#requires(ref, int, int) : bool;

// #requires axiom for _module.T1.Plus
axiom (forall this: ref, x#0: int, y#0: int :: 
  { _module.T1.Plus#requires(this, x#0, y#0) } 
  this != null && $Is(this, Tclass._module.T1())
     ==> _module.T1.Plus#requires(this, x#0, y#0) == (x#0 > y#0));

procedure {:verboseName "T1.Plus (well-formedness)"} CheckWellformed$$_module.T1.Plus(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T1())
         && $IsAlloc(this, Tclass._module.T1(), $Heap), 
    x#0: int, 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.T1.bb
function _module.T1.bb(this: ref, x#0: int) : int;

function _module.T1.bb#canCall(this: ref, x#0: int) : bool;

function _module.T1.bb#requires(ref, int) : bool;

// #requires axiom for _module.T1.bb
axiom (forall this: ref, x#0: int :: 
  { _module.T1.bb#requires(this, x#0) } 
  this != null && $Is(this, Tclass._module.T1())
     ==> _module.T1.bb#requires(this, x#0) == (x#0 > 10));

procedure {:verboseName "T1.bb (well-formedness)"} CheckWellformed$$_module.T1.bb(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T1())
         && $IsAlloc(this, Tclass._module.T1(), $Heap), 
    x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.T1.BodyLess1
function _module.T1.BodyLess1(this: ref, a#0: int) : int;

function _module.T1.BodyLess1#canCall(this: ref, a#0: int) : bool;

function _module.T1.BodyLess1#requires(ref, int) : bool;

// #requires axiom for _module.T1.BodyLess1
axiom (forall this: ref, a#0: int :: 
  { _module.T1.BodyLess1#requires(this, a#0) } 
  this != null && $Is(this, Tclass._module.T1())
     ==> _module.T1.BodyLess1#requires(this, a#0) == (a#0 > 0));

procedure {:verboseName "T1.BodyLess1 (well-formedness)"} CheckWellformed$$_module.T1.BodyLess1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T1())
         && $IsAlloc(this, Tclass._module.T1(), $Heap), 
    a#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.T1.dd
function _module.T1.dd(this: ref, a#0: int) : int;

function _module.T1.dd#canCall(this: ref, a#0: int) : bool;

function _module.T1.dd#requires(ref, int) : bool;

// #requires axiom for _module.T1.dd
axiom (forall this: ref, a#0: int :: 
  { _module.T1.dd#requires(this, a#0) } 
  this != null && $Is(this, Tclass._module.T1())
     ==> _module.T1.dd#requires(this, a#0) == true);

procedure {:verboseName "T1.dd (well-formedness)"} CheckWellformed$$_module.T1.dd(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T1())
         && $IsAlloc(this, Tclass._module.T1(), $Heap), 
    a#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "T1.Testing (well-formedness)"} CheckWellFormed$$_module.T1.Testing(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T1())
         && $IsAlloc(this, Tclass._module.T1(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "T1.Testing (call)"} Call$$_module.T1.Testing(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T1())
         && $IsAlloc(this, Tclass._module.T1(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.T1
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.T1()) } { $Is(c#0, Tclass._module.T1?()) } 
  $Is(c#0, Tclass._module.T1()) <==> $Is(c#0, Tclass._module.T1?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.T1
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.T1(), $h) } 
    { $IsAlloc(c#0, Tclass._module.T1?(), $h) } 
  $IsAlloc(c#0, Tclass._module.T1(), $h)
     <==> $IsAlloc(c#0, Tclass._module.T1?(), $h));

const unique class._module.C1?: ClassName;

function Tclass._module.C1?() : Ty
uses {
// Tclass._module.C1? Tag
axiom Tag(Tclass._module.C1?()) == Tagclass._module.C1?
   && TagFamily(Tclass._module.C1?()) == tytagFamily$C1;
axiom implements$_module.T1(Tclass._module.C1?());
}

const unique Tagclass._module.C1?: TyTag;

// Box/unbox axiom for Tclass._module.C1?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.C1?()) } 
  $IsBox(bx, Tclass._module.C1?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.C1?()));

// $Is axiom for class C1
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.C1?()) } 
  $Is($o, Tclass._module.C1?())
     <==> $o == null || dtype($o) == Tclass._module.C1?());

// $IsAlloc axiom for class C1
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.C1?(), $h) } 
  $IsAlloc($o, Tclass._module.C1?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for _module.C1.dd
function _module.C1.dd(this: ref, x#0: int) : int
uses {
// definition axiom for _module.C1.dd (revealed)
axiom {:id "id7"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    { _module.C1.dd(this, x#0) } 
    _module.C1.dd#canCall(this, x#0)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.C1()))
       ==> _module.C1.dd(this, x#0) == LitInt(2));
// definition axiom for _module.C1.dd for decreasing-related literals (revealed)
axiom {:id "id8"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    {:weight 3} { _module.C1.dd(this, LitInt(x#0)) } 
    _module.C1.dd#canCall(this, LitInt(x#0))
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.C1()))
       ==> _module.C1.dd(this, LitInt(x#0)) == LitInt(2));
// definition axiom for _module.C1.dd for all literals (revealed)
axiom {:id "id9"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    {:weight 3} { _module.C1.dd(Lit(this), LitInt(x#0)) } 
    _module.C1.dd#canCall(Lit(this), LitInt(x#0))
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.C1()))
       ==> _module.C1.dd(Lit(this), LitInt(x#0)) == LitInt(2));
}

function _module.C1.dd#canCall(this: ref, x#0: int) : bool;

function Tclass._module.C1() : Ty
uses {
// Tclass._module.C1 Tag
axiom Tag(Tclass._module.C1()) == Tagclass._module.C1
   && TagFamily(Tclass._module.C1()) == tytagFamily$C1;
}

const unique Tagclass._module.C1: TyTag;

// Box/unbox axiom for Tclass._module.C1
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.C1()) } 
  $IsBox(bx, Tclass._module.C1())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.C1()));

function _module.C1.dd#requires(ref, int) : bool;

// #requires axiom for _module.C1.dd
axiom (forall this: ref, x#0: int :: 
  { _module.C1.dd#requires(this, x#0) } 
  this != null && $Is(this, Tclass._module.C1())
     ==> _module.C1.dd#requires(this, x#0) == true);

// override axiom for _module.T1.dd in class _module.C1
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, a#0: int :: 
    { _module.T1.dd(this, a#0), $Is(this, Tclass._module.C1()) } 
      { _module.T1.dd(this, a#0), _module.C1.dd(this, a#0) } 
    _module.C1.dd#canCall(this, a#0)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.C1()))
       ==> _module.T1.dd(this, a#0) == _module.C1.dd(this, a#0));

procedure {:verboseName "C1.dd (well-formedness)"} CheckWellformed$$_module.C1.dd(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C1())
         && $IsAlloc(this, Tclass._module.C1(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "C1.dd (override check)"} OverrideCheck$$_module.C1.dd(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C1())
         && $IsAlloc(this, Tclass._module.C1(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C1.dd (override check)"} OverrideCheck$$_module.C1.dd(this: ref, x#0: int)
{
  var C1_$_ReadsFrame: [ref,Field]bool;

    assert {:id "id11"} x#0 <= x#0;
    C1_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id12"} (forall $o: ref, $f: Field :: true);
}



procedure {:verboseName "C1.Testing (well-formedness)"} CheckWellFormed$$_module.C1.Testing(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C1())
         && $IsAlloc(this, Tclass._module.C1(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "C1.Testing (override check)"} OverrideCheck$$_module.C1.Testing(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C1())
         && $IsAlloc(this, Tclass._module.C1(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C1.Testing (override check)"} OverrideCheck$$_module.C1.Testing(this: ref)
{
    assert {:id "id13"} true;
    assert {:id "id14"} (forall $o: ref, $f: Field :: true);
    assert {:id "id15"} (forall $o: ref, $f: Field :: true);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "C1.Testing (call)"} Call$$_module.C1.Testing(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C1())
         && $IsAlloc(this, Tclass._module.C1(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "C1.Testing (correctness)"} Impl$$_module.C1.Testing(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C1())
         && $IsAlloc(this, Tclass._module.C1(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C1.Testing (correctness)"} Impl$$_module.C1.Testing(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int;
  var ##x#0: int;

    // AddMethodImpl: Testing, Impl$$_module.C1.Testing
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitOverride1.dfy(32,15)
    assume true;
    assume true;
    x#0 := LitInt(11);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitOverride1.dfy(33,7)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.C1?(), $Heap);
    ##x#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TInt, $Heap);
    assert {:id "id17"} {:subsumption 0} ##x#0 > 10;
    assume ##x#0 > 10;
    assume _module.C1.bb#canCall(this, x#0);
    assume _module.C1.bb#canCall(this, x#0);
    x#0 := _module.C1.bb(this, x#0);
}



// function declaration for _module.C1.bb
function _module.C1.bb(this: ref, x#0: int) : int
uses {
// definition axiom for _module.C1.bb (revealed)
axiom {:id "id19"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    { _module.C1.bb(this, x#0) } 
    _module.C1.bb#canCall(this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.C1())
           && x#0 > 10)
       ==> _module.C1.bb(this, x#0) == x#0);
// definition axiom for _module.C1.bb for decreasing-related literals (revealed)
axiom {:id "id20"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    {:weight 3} { _module.C1.bb(this, LitInt(x#0)) } 
    _module.C1.bb#canCall(this, LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.C1())
           && Lit(x#0 > 10))
       ==> _module.C1.bb(this, LitInt(x#0)) == LitInt(x#0));
// definition axiom for _module.C1.bb for all literals (revealed)
axiom {:id "id21"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    {:weight 3} { _module.C1.bb(Lit(this), LitInt(x#0)) } 
    _module.C1.bb#canCall(Lit(this), LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.C1())
           && Lit(x#0 > 10))
       ==> _module.C1.bb(Lit(this), LitInt(x#0)) == LitInt(x#0));
}

function _module.C1.bb#canCall(this: ref, x#0: int) : bool;

function _module.C1.bb#requires(ref, int) : bool;

// #requires axiom for _module.C1.bb
axiom (forall this: ref, x#0: int :: 
  { _module.C1.bb#requires(this, x#0) } 
  this != null && $Is(this, Tclass._module.C1())
     ==> _module.C1.bb#requires(this, x#0) == (x#0 > 10));

// override axiom for _module.T1.bb in class _module.C1
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    { _module.T1.bb(this, x#0), $Is(this, Tclass._module.C1()) } 
      { _module.T1.bb(this, x#0), _module.C1.bb(this, x#0) } 
    _module.C1.bb#canCall(this, x#0)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.C1()))
       ==> _module.T1.bb(this, x#0) == _module.C1.bb(this, x#0));

procedure {:verboseName "C1.bb (well-formedness)"} CheckWellformed$$_module.C1.bb(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C1())
         && $IsAlloc(this, Tclass._module.C1(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "C1.bb (override check)"} OverrideCheck$$_module.C1.bb(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C1())
         && $IsAlloc(this, Tclass._module.C1(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C1.bb (override check)"} OverrideCheck$$_module.C1.bb(this: ref, x#0: int)
{
  var C1_$_ReadsFrame: [ref,Field]bool;

    assume {:id "id24"} x#0 > 10;
    assert {:id "id25"} x#0 > 10;
    assert {:id "id26"} x#0 <= x#0;
    C1_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id27"} (forall $o: ref, $f: Field :: true);
}



// function declaration for _module.C1.BodyLess1
function _module.C1.BodyLess1(this: ref, bda#0: int) : int
uses {
// definition axiom for _module.C1.BodyLess1 (revealed)
axiom {:id "id28"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, bda#0: int :: 
    { _module.C1.BodyLess1(this, bda#0) } 
    _module.C1.BodyLess1#canCall(this, bda#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.C1())
           && bda#0 > -10)
       ==> _module.C1.BodyLess1(this, bda#0) == LitInt(2));
// definition axiom for _module.C1.BodyLess1 for decreasing-related literals (revealed)
axiom {:id "id29"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, bda#0: int :: 
    {:weight 3} { _module.C1.BodyLess1(this, LitInt(bda#0)) } 
    _module.C1.BodyLess1#canCall(this, LitInt(bda#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.C1())
           && Lit(bda#0 > -10))
       ==> _module.C1.BodyLess1(this, LitInt(bda#0)) == LitInt(2));
// definition axiom for _module.C1.BodyLess1 for all literals (revealed)
axiom {:id "id30"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, bda#0: int :: 
    {:weight 3} { _module.C1.BodyLess1(Lit(this), LitInt(bda#0)) } 
    _module.C1.BodyLess1#canCall(Lit(this), LitInt(bda#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.C1())
           && Lit(bda#0 > -10))
       ==> _module.C1.BodyLess1(Lit(this), LitInt(bda#0)) == LitInt(2));
}

function _module.C1.BodyLess1#canCall(this: ref, bda#0: int) : bool;

function _module.C1.BodyLess1#requires(ref, int) : bool;

// #requires axiom for _module.C1.BodyLess1
axiom (forall this: ref, bda#0: int :: 
  { _module.C1.BodyLess1#requires(this, bda#0) } 
  this != null && $Is(this, Tclass._module.C1())
     ==> _module.C1.BodyLess1#requires(this, bda#0) == (bda#0 > -10));

// override axiom for _module.T1.BodyLess1 in class _module.C1
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, a#0: int :: 
    { _module.T1.BodyLess1(this, a#0), $Is(this, Tclass._module.C1()) } 
      { _module.T1.BodyLess1(this, a#0), _module.C1.BodyLess1(this, a#0) } 
    _module.C1.BodyLess1#canCall(this, a#0)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.C1()))
       ==> _module.T1.BodyLess1(this, a#0) == _module.C1.BodyLess1(this, a#0));

procedure {:verboseName "C1.BodyLess1 (well-formedness)"} CheckWellformed$$_module.C1.BodyLess1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C1())
         && $IsAlloc(this, Tclass._module.C1(), $Heap), 
    bda#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "C1.BodyLess1 (override check)"} OverrideCheck$$_module.C1.BodyLess1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C1())
         && $IsAlloc(this, Tclass._module.C1(), $Heap), 
    bda#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C1.BodyLess1 (override check)"} OverrideCheck$$_module.C1.BodyLess1(this: ref, bda#0: int)
{
  var C1_$_ReadsFrame: [ref,Field]bool;

    assume {:id "id33"} bda#0 > 0;
    assert {:id "id34"} bda#0 > -10;
    assert {:id "id35"} bda#0 <= bda#0;
    C1_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id36"} (forall $o: ref, $f: Field :: true);
}



procedure {:verboseName "C1.CallBodyLess (well-formedness)"} CheckWellFormed$$_module.C1.CallBodyLess(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C1())
         && $IsAlloc(this, Tclass._module.C1(), $Heap), 
    x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "C1.CallBodyLess (call)"} Call$$_module.C1.CallBodyLess(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C1())
         && $IsAlloc(this, Tclass._module.C1(), $Heap), 
    x#0: int);
  // user-defined preconditions
  requires {:id "id38"} x#0 > -10;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "C1.CallBodyLess (correctness)"} Impl$$_module.C1.CallBodyLess(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C1())
         && $IsAlloc(this, Tclass._module.C1(), $Heap), 
    x#0: int)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id39"} x#0 > -10;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C1.CallBodyLess (correctness)"} Impl$$_module.C1.CallBodyLess(this: ref, x#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;
  var ##bda#0: int;

    // AddMethodImpl: CallBodyLess, Impl$$_module.C1.CallBodyLess
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitOverride1.dfy(50,15)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.C1?(), $Heap);
    ##bda#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##bda#0, TInt, $Heap);
    assert {:id "id40"} {:subsumption 0} ##bda#0 > -10;
    assume ##bda#0 > -10;
    assume _module.C1.BodyLess1#canCall(this, x#0);
    assume _module.C1.BodyLess1#canCall(this, x#0);
    k#0 := _module.C1.BodyLess1(this, x#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitOverride1.dfy(51,5)
    assume true;
    assert {:id "id42"} k#0 == LitInt(2);
}



// $Is axiom for non-null type _module.C1
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.C1()) } { $Is(c#0, Tclass._module.C1?()) } 
  $Is(c#0, Tclass._module.C1()) <==> $Is(c#0, Tclass._module.C1?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.C1
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.C1(), $h) } 
    { $IsAlloc(c#0, Tclass._module.C1?(), $h) } 
  $IsAlloc(c#0, Tclass._module.C1(), $h)
     <==> $IsAlloc(c#0, Tclass._module.C1?(), $h));

const unique class._module.T2?: ClassName;

function Tclass._module.T2?() : Ty
uses {
// Tclass._module.T2? Tag
axiom Tag(Tclass._module.T2?()) == Tagclass._module.T2?
   && TagFamily(Tclass._module.T2?()) == tytagFamily$T2;
}

const unique Tagclass._module.T2?: TyTag;

// Box/unbox axiom for Tclass._module.T2?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.T2?()) } 
  $IsBox(bx, Tclass._module.T2?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.T2?()));

// $Is axiom for trait T2
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.T2?()) } 
  $Is($o, Tclass._module.T2?())
     <==> $o == null || implements$_module.T2(dtype($o)));

// $IsAlloc axiom for trait T2
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.T2?(), $h) } 
  $IsAlloc($o, Tclass._module.T2?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.T2(ty: Ty) : bool;

// function declaration for _module.T2.F
function _module.T2.F(this: ref, x#0: int) : int
uses {
// consequence axiom for _module.T2.F
axiom 1 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    { _module.T2.F(this, x#0) } 
    _module.T2.F#canCall(this, x#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.T2())
           && x#0 < 100)
       ==> _module.T2.F(this, x#0) < 100);
}

function _module.T2.F#canCall(this: ref, x#0: int) : bool;

function Tclass._module.T2() : Ty
uses {
// Tclass._module.T2 Tag
axiom Tag(Tclass._module.T2()) == Tagclass._module.T2
   && TagFamily(Tclass._module.T2()) == tytagFamily$T2;
}

const unique Tagclass._module.T2: TyTag;

// Box/unbox axiom for Tclass._module.T2
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.T2()) } 
  $IsBox(bx, Tclass._module.T2())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.T2()));

function _module.T2.F#requires(ref, int) : bool;

// #requires axiom for _module.T2.F
axiom (forall this: ref, x#0: int :: 
  { _module.T2.F#requires(this, x#0) } 
  this != null && $Is(this, Tclass._module.T2())
     ==> _module.T2.F#requires(this, x#0) == (x#0 < 100));

procedure {:verboseName "T2.F (well-formedness)"} CheckWellformed$$_module.T2.F(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T2())
         && $IsAlloc(this, Tclass._module.T2(), $Heap), 
    x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id43"} _module.T2.F(this, x#0) < 100;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "T2.F (well-formedness)"} CheckWellformed$$_module.T2.F(this: ref, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##x#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id44"} x#0 < 100;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.T2?(), $Heap);
        ##x#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0, TInt, $Heap);
        assert {:id "id45"} {:subsumption 0} ##x#0 < 100;
        assume ##x#0 < 100;
        assert {:id "id46"} 0 <= x#0 || ##x#0 == x#0;
        assert {:id "id47"} (this == this && x#0 == x#0) || ##x#0 < x#0;
        assume (this == this && x#0 == x#0) || _module.T2.F#canCall(this, x#0);
        assume {:id "id48"} _module.T2.F(this, x#0) < 100;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume false;
    }
}



procedure {:verboseName "T2.M (well-formedness)"} CheckWellFormed$$_module.T2.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T2())
         && $IsAlloc(this, Tclass._module.T2(), $Heap), 
    x#0: int)
   returns (y#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "T2.M (call)"} Call$$_module.T2.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T2())
         && $IsAlloc(this, Tclass._module.T2(), $Heap), 
    x#0: int)
   returns (y#0: int);
  // user-defined preconditions
  requires {:id "id51"} LitInt(0) <= x#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id52"} x#0 < y#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.T2
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.T2()) } { $Is(c#0, Tclass._module.T2?()) } 
  $Is(c#0, Tclass._module.T2()) <==> $Is(c#0, Tclass._module.T2?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.T2
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.T2(), $h) } 
    { $IsAlloc(c#0, Tclass._module.T2?(), $h) } 
  $IsAlloc(c#0, Tclass._module.T2(), $h)
     <==> $IsAlloc(c#0, Tclass._module.T2?(), $h));

const unique class._module.C2?: ClassName;

function Tclass._module.C2?() : Ty
uses {
// Tclass._module.C2? Tag
axiom Tag(Tclass._module.C2?()) == Tagclass._module.C2?
   && TagFamily(Tclass._module.C2?()) == tytagFamily$C2;
axiom implements$_module.T2(Tclass._module.C2?());
}

const unique Tagclass._module.C2?: TyTag;

// Box/unbox axiom for Tclass._module.C2?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.C2?()) } 
  $IsBox(bx, Tclass._module.C2?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.C2?()));

// $Is axiom for class C2
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.C2?()) } 
  $Is($o, Tclass._module.C2?())
     <==> $o == null || dtype($o) == Tclass._module.C2?());

// $IsAlloc axiom for class C2
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.C2?(), $h) } 
  $IsAlloc($o, Tclass._module.C2?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for _module.C2.F
function _module.C2.F(this: ref, x#0: int) : int
uses {
// consequence axiom for _module.C2.F
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    { _module.C2.F(this, x#0) } 
    _module.C2.F#canCall(this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.C2())
           && x#0 < 100)
       ==> _module.C2.F(this, x#0) < 100);
// definition axiom for _module.C2.F (revealed)
axiom {:id "id53"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    { _module.C2.F(this, x#0) } 
    _module.C2.F#canCall(this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.C2())
           && x#0 < 100)
       ==> _module.C2.F(this, x#0) == x#0);
// definition axiom for _module.C2.F for decreasing-related literals (revealed)
axiom {:id "id54"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    {:weight 3} { _module.C2.F(this, LitInt(x#0)) } 
    _module.C2.F#canCall(this, LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.C2())
           && Lit(x#0 < 100))
       ==> _module.C2.F(this, LitInt(x#0)) == LitInt(x#0));
// definition axiom for _module.C2.F for all literals (revealed)
axiom {:id "id55"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    {:weight 3} { _module.C2.F(Lit(this), LitInt(x#0)) } 
    _module.C2.F#canCall(Lit(this), LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.C2())
           && Lit(x#0 < 100))
       ==> _module.C2.F(Lit(this), LitInt(x#0)) == LitInt(x#0));
}

function _module.C2.F#canCall(this: ref, x#0: int) : bool;

function Tclass._module.C2() : Ty
uses {
// Tclass._module.C2 Tag
axiom Tag(Tclass._module.C2()) == Tagclass._module.C2
   && TagFamily(Tclass._module.C2()) == tytagFamily$C2;
}

const unique Tagclass._module.C2: TyTag;

// Box/unbox axiom for Tclass._module.C2
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.C2()) } 
  $IsBox(bx, Tclass._module.C2())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.C2()));

function _module.C2.F#requires(ref, int) : bool;

// #requires axiom for _module.C2.F
axiom (forall this: ref, x#0: int :: 
  { _module.C2.F#requires(this, x#0) } 
  this != null && $Is(this, Tclass._module.C2())
     ==> _module.C2.F#requires(this, x#0) == (x#0 < 100));

// override axiom for _module.T2.F in class _module.C2
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    { _module.T2.F(this, x#0), $Is(this, Tclass._module.C2()) } 
      { _module.T2.F(this, x#0), _module.C2.F(this, x#0) } 
    _module.C2.F#canCall(this, x#0)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.C2()))
       ==> _module.T2.F(this, x#0) == _module.C2.F(this, x#0));

procedure {:verboseName "C2.F (well-formedness)"} CheckWellformed$$_module.C2.F(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C2())
         && $IsAlloc(this, Tclass._module.C2(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id56"} _module.C2.F(this, x#0) < 100;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C2.F (well-formedness)"} CheckWellformed$$_module.C2.F(this: ref, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##x#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id57"} x#0 < 100;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.C2?(), $Heap);
        ##x#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0, TInt, $Heap);
        assert {:id "id58"} {:subsumption 0} ##x#0 < 100;
        assume ##x#0 < 100;
        assert {:id "id59"} 0 <= x#0 || ##x#0 == x#0;
        assert {:id "id60"} (this == this && x#0 == x#0) || ##x#0 < x#0;
        assume (this == this && x#0 == x#0) || _module.C2.F#canCall(this, x#0);
        assume {:id "id61"} _module.C2.F(this, x#0) < 100;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume {:id "id62"} _module.C2.F(this, x#0) == x#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.C2.F(this, x#0), TInt);
        return;

        assume false;
    }
}



procedure {:verboseName "C2.F (override check)"} OverrideCheck$$_module.C2.F(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C2())
         && $IsAlloc(this, Tclass._module.C2(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C2.F (override check)"} OverrideCheck$$_module.C2.F(this: ref, x#0: int)
{
  var C2_$_ReadsFrame: [ref,Field]bool;

    assume {:id "id63"} x#0 < 100;
    assert {:id "id64"} x#0 < 100;
    assert {:id "id65"} x#0 <= x#0;
    C2_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id66"} (forall $o: ref, $f: Field :: true);
    assume {:id "id67"} _module.C2.F(this, x#0) < 100;
    assert {:id "id68"} _module.C2.F(this, x#0) < 100;
}



procedure {:verboseName "C2.M (well-formedness)"} CheckWellFormed$$_module.C2.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C2())
         && $IsAlloc(this, Tclass._module.C2(), $Heap), 
    x#0: int)
   returns (y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "C2.M (override check)"} OverrideCheck$$_module.C2.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C2())
         && $IsAlloc(this, Tclass._module.C2(), $Heap), 
    x#0: int)
   returns (y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C2.M (override check)"} OverrideCheck$$_module.C2.M(this: ref, x#0: int) returns (y#0: int)
{
    assume {:id "id71"} LitInt(0) <= x#0;
    assert {:id "id72"} LitInt(-2000) <= x#0;
    assert {:id "id73"} x#0 <= x#0;
    assert {:id "id74"} (forall $o: ref, $f: Field :: true);
    assert {:id "id75"} (forall $o: ref, $f: Field :: true);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    assume {:id "id76"} Mul(LitInt(2), x#0) < y#0;
    assert {:id "id77"} x#0 < y#0;
}



procedure {:verboseName "C2.M (call)"} Call$$_module.C2.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C2())
         && $IsAlloc(this, Tclass._module.C2(), $Heap), 
    x#0: int)
   returns (y#0: int);
  // user-defined preconditions
  requires {:id "id78"} LitInt(-2000) <= x#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id79"} Mul(LitInt(2), x#0) < y#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "C2.M (correctness)"} Impl$$_module.C2.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C2())
         && $IsAlloc(this, Tclass._module.C2(), $Heap), 
    x#0: int)
   returns (y#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id80"} LitInt(-2000) <= x#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id81"} Mul(LitInt(2), x#0) < y#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C2.M (correctness)"} Impl$$_module.C2.M(this: ref, x#0: int) returns (y#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: M, Impl$$_module.C2.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitOverride1.dfy(79,7)
    assume true;
    assume true;
    y#0 := Mul(LitInt(2), x#0) + 1;
}



// $Is axiom for non-null type _module.C2
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.C2()) } { $Is(c#0, Tclass._module.C2?()) } 
  $Is(c#0, Tclass._module.C2()) <==> $Is(c#0, Tclass._module.C2?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.C2
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.C2(), $h) } 
    { $IsAlloc(c#0, Tclass._module.C2?(), $h) } 
  $IsAlloc(c#0, Tclass._module.C2(), $h)
     <==> $IsAlloc(c#0, Tclass._module.C2?(), $h));

const unique class._module.T3?: ClassName;

function Tclass._module.T3?() : Ty
uses {
// Tclass._module.T3? Tag
axiom Tag(Tclass._module.T3?()) == Tagclass._module.T3?
   && TagFamily(Tclass._module.T3?()) == tytagFamily$T3;
}

const unique Tagclass._module.T3?: TyTag;

// Box/unbox axiom for Tclass._module.T3?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.T3?()) } 
  $IsBox(bx, Tclass._module.T3?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.T3?()));

// $Is axiom for trait T3
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.T3?()) } 
  $Is($o, Tclass._module.T3?())
     <==> $o == null || implements$_module.T3(dtype($o)));

// $IsAlloc axiom for trait T3
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.T3?(), $h) } 
  $IsAlloc($o, Tclass._module.T3?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.T3(ty: Ty) : bool;

// function declaration for _module.T3.F
function _module.T3.F(this: ref, y#0: int) : int;

function _module.T3.F#canCall(this: ref, y#0: int) : bool;

function Tclass._module.T3() : Ty
uses {
// Tclass._module.T3 Tag
axiom Tag(Tclass._module.T3()) == Tagclass._module.T3
   && TagFamily(Tclass._module.T3()) == tytagFamily$T3;
}

const unique Tagclass._module.T3: TyTag;

// Box/unbox axiom for Tclass._module.T3
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.T3()) } 
  $IsBox(bx, Tclass._module.T3())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.T3()));

function _module.T3.F#requires(ref, int) : bool;

// #requires axiom for _module.T3.F
axiom (forall this: ref, y#0: int :: 
  { _module.T3.F#requires(this, y#0) } 
  this != null && $Is(this, Tclass._module.T3())
     ==> _module.T3.F#requires(this, y#0) == true);

procedure {:verboseName "T3.F (well-formedness)"} CheckWellformed$$_module.T3.F(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T3())
         && $IsAlloc(this, Tclass._module.T3(), $Heap), 
    y#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.T3.G
function _module.T3.G(this: ref, y#0: int) : int
uses {
// definition axiom for _module.T3.G (revealed)
axiom {:id "id83"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, y#0: int :: 
    { _module.T3.G(this, y#0) } 
    _module.T3.G#canCall(this, y#0)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.T3()))
       ==> _module.T3.G(this, y#0) == LitInt(12));
// definition axiom for _module.T3.G for decreasing-related literals (revealed)
axiom {:id "id84"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, y#0: int :: 
    {:weight 3} { _module.T3.G(this, LitInt(y#0)) } 
    _module.T3.G#canCall(this, LitInt(y#0))
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.T3()))
       ==> _module.T3.G(this, LitInt(y#0)) == LitInt(12));
// definition axiom for _module.T3.G for all literals (revealed)
axiom {:id "id85"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, y#0: int :: 
    {:weight 3} { _module.T3.G(Lit(this), LitInt(y#0)) } 
    _module.T3.G#canCall(Lit(this), LitInt(y#0))
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.T3()))
       ==> _module.T3.G(Lit(this), LitInt(y#0)) == LitInt(12));
}

function _module.T3.G#canCall(this: ref, y#0: int) : bool;

function _module.T3.G#requires(ref, int) : bool;

// #requires axiom for _module.T3.G
axiom (forall this: ref, y#0: int :: 
  { _module.T3.G#requires(this, y#0) } 
  this != null && $Is(this, Tclass._module.T3())
     ==> _module.T3.G#requires(this, y#0) == true);

procedure {:verboseName "T3.G (well-formedness)"} CheckWellformed$$_module.T3.G(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T3())
         && $IsAlloc(this, Tclass._module.T3(), $Heap), 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "T3.M (well-formedness)"} CheckWellFormed$$_module.T3.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T3())
         && $IsAlloc(this, Tclass._module.T3(), $Heap), 
    y#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "T3.M (call)"} Call$$_module.T3.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T3())
         && $IsAlloc(this, Tclass._module.T3(), $Heap), 
    y#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "T3.N (well-formedness)"} CheckWellFormed$$_module.T3.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T3())
         && $IsAlloc(this, Tclass._module.T3(), $Heap), 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "T3.N (call)"} Call$$_module.T3.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T3())
         && $IsAlloc(this, Tclass._module.T3(), $Heap), 
    y#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "T3.N (correctness)"} Impl$$_module.T3.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T3())
         && $IsAlloc(this, Tclass._module.T3(), $Heap), 
    y#0: int)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "T3.N (correctness)"} Impl$$_module.T3.N(this: ref, y#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int;

    // AddMethodImpl: N, Impl$$_module.T3.N
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitOverride1.dfy(90,15)
    assume true;
    assume true;
    a#0 := LitInt(100);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitOverride1.dfy(91,5)
    assume true;
    assert {:id "id88"} a#0 == LitInt(100);
}



// $Is axiom for non-null type _module.T3
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.T3()) } { $Is(c#0, Tclass._module.T3?()) } 
  $Is(c#0, Tclass._module.T3()) <==> $Is(c#0, Tclass._module.T3?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.T3
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.T3(), $h) } 
    { $IsAlloc(c#0, Tclass._module.T3?(), $h) } 
  $IsAlloc(c#0, Tclass._module.T3(), $h)
     <==> $IsAlloc(c#0, Tclass._module.T3?(), $h));

const unique class._module.C3?: ClassName;

function Tclass._module.C3?() : Ty
uses {
// Tclass._module.C3? Tag
axiom Tag(Tclass._module.C3?()) == Tagclass._module.C3?
   && TagFamily(Tclass._module.C3?()) == tytagFamily$C3;
axiom implements$_module.T3(Tclass._module.C3?());
}

const unique Tagclass._module.C3?: TyTag;

// Box/unbox axiom for Tclass._module.C3?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.C3?()) } 
  $IsBox(bx, Tclass._module.C3?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.C3?()));

// $Is axiom for class C3
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.C3?()) } 
  $Is($o, Tclass._module.C3?())
     <==> $o == null || dtype($o) == Tclass._module.C3?());

// $IsAlloc axiom for class C3
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.C3?(), $h) } 
  $IsAlloc($o, Tclass._module.C3?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for _module.C3.NewFunc
function _module.C3.NewFunc(this: ref, a#0: int, b#0: int) : int
uses {
// definition axiom for _module.C3.NewFunc (revealed)
axiom {:id "id89"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, a#0: int, b#0: int :: 
    { _module.C3.NewFunc(this, a#0, b#0) } 
    _module.C3.NewFunc#canCall(this, a#0, b#0)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.C3()))
       ==> _module.C3.NewFunc(this, a#0, b#0) == a#0 + b#0);
// definition axiom for _module.C3.NewFunc for decreasing-related literals (revealed)
axiom {:id "id90"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, a#0: int, b#0: int :: 
    {:weight 3} { _module.C3.NewFunc(this, LitInt(a#0), LitInt(b#0)) } 
    _module.C3.NewFunc#canCall(this, LitInt(a#0), LitInt(b#0))
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.C3()))
       ==> _module.C3.NewFunc(this, LitInt(a#0), LitInt(b#0)) == LitInt(a#0 + b#0));
// definition axiom for _module.C3.NewFunc for all literals (revealed)
axiom {:id "id91"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, a#0: int, b#0: int :: 
    {:weight 3} { _module.C3.NewFunc(Lit(this), LitInt(a#0), LitInt(b#0)) } 
    _module.C3.NewFunc#canCall(Lit(this), LitInt(a#0), LitInt(b#0))
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.C3()))
       ==> _module.C3.NewFunc(Lit(this), LitInt(a#0), LitInt(b#0)) == LitInt(a#0 + b#0));
}

function _module.C3.NewFunc#canCall(this: ref, a#0: int, b#0: int) : bool;

function Tclass._module.C3() : Ty
uses {
// Tclass._module.C3 Tag
axiom Tag(Tclass._module.C3()) == Tagclass._module.C3
   && TagFamily(Tclass._module.C3()) == tytagFamily$C3;
}

const unique Tagclass._module.C3: TyTag;

// Box/unbox axiom for Tclass._module.C3
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.C3()) } 
  $IsBox(bx, Tclass._module.C3())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.C3()));

function _module.C3.NewFunc#requires(ref, int, int) : bool;

// #requires axiom for _module.C3.NewFunc
axiom (forall this: ref, a#0: int, b#0: int :: 
  { _module.C3.NewFunc#requires(this, a#0, b#0) } 
  this != null && $Is(this, Tclass._module.C3())
     ==> _module.C3.NewFunc#requires(this, a#0, b#0) == true);

procedure {:verboseName "C3.NewFunc (well-formedness)"} CheckWellformed$$_module.C3.NewFunc(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C3())
         && $IsAlloc(this, Tclass._module.C3(), $Heap), 
    a#0: int, 
    b#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.C3.F
function _module.C3.F(this: ref, y#0: int) : int
uses {
// definition axiom for _module.C3.F (revealed)
axiom {:id "id93"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, y#0: int :: 
    { _module.C3.F(this, y#0) } 
    _module.C3.F#canCall(this, y#0)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.C3()))
       ==> _module.C3.F(this, y#0) == LitInt(20));
// definition axiom for _module.C3.F for decreasing-related literals (revealed)
axiom {:id "id94"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, y#0: int :: 
    {:weight 3} { _module.C3.F(this, LitInt(y#0)) } 
    _module.C3.F#canCall(this, LitInt(y#0))
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.C3()))
       ==> _module.C3.F(this, LitInt(y#0)) == LitInt(20));
// definition axiom for _module.C3.F for all literals (revealed)
axiom {:id "id95"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, y#0: int :: 
    {:weight 3} { _module.C3.F(Lit(this), LitInt(y#0)) } 
    _module.C3.F#canCall(Lit(this), LitInt(y#0))
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.C3()))
       ==> _module.C3.F(Lit(this), LitInt(y#0)) == LitInt(20));
}

function _module.C3.F#canCall(this: ref, y#0: int) : bool;

function _module.C3.F#requires(ref, int) : bool;

// #requires axiom for _module.C3.F
axiom (forall this: ref, y#0: int :: 
  { _module.C3.F#requires(this, y#0) } 
  this != null && $Is(this, Tclass._module.C3())
     ==> _module.C3.F#requires(this, y#0) == true);

// override axiom for _module.T3.F in class _module.C3
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, y#0: int :: 
    { _module.T3.F(this, y#0), $Is(this, Tclass._module.C3()) } 
      { _module.T3.F(this, y#0), _module.C3.F(this, y#0) } 
    _module.C3.F#canCall(this, y#0)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.C3()))
       ==> _module.T3.F(this, y#0) == _module.C3.F(this, y#0));

procedure {:verboseName "C3.F (well-formedness)"} CheckWellformed$$_module.C3.F(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C3())
         && $IsAlloc(this, Tclass._module.C3(), $Heap), 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "C3.F (override check)"} OverrideCheck$$_module.C3.F(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C3())
         && $IsAlloc(this, Tclass._module.C3(), $Heap), 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C3.F (override check)"} OverrideCheck$$_module.C3.F(this: ref, y#0: int)
{
  var C3_$_ReadsFrame: [ref,Field]bool;

    assert {:id "id97"} y#0 <= y#0;
    C3_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id98"} (forall $o: ref, $f: Field :: true);
}



procedure {:verboseName "C3.M (well-formedness)"} CheckWellFormed$$_module.C3.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C3())
         && $IsAlloc(this, Tclass._module.C3(), $Heap), 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "C3.M (override check)"} OverrideCheck$$_module.C3.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C3())
         && $IsAlloc(this, Tclass._module.C3(), $Heap), 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C3.M (override check)"} OverrideCheck$$_module.C3.M(this: ref, y#0: int)
{
    assert {:id "id99"} y#0 <= y#0;
    assert {:id "id100"} (forall $o: ref, $f: Field :: true);
    assert {:id "id101"} (forall $o: ref, $f: Field :: true);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "C3.M (call)"} Call$$_module.C3.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C3())
         && $IsAlloc(this, Tclass._module.C3(), $Heap), 
    y#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "C3.M (correctness)"} Impl$$_module.C3.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C3())
         && $IsAlloc(this, Tclass._module.C3(), $Heap), 
    y#0: int)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C3.M (correctness)"} Impl$$_module.C3.M(this: ref, y#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int;

    // AddMethodImpl: M, Impl$$_module.C3.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitOverride1.dfy(102,15)
    assume true;
    assume true;
    a#0 := LitInt(100);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitOverride1.dfy(103,5)
    assume true;
    assert {:id "id103"} a#0 == LitInt(100);
}



// $Is axiom for non-null type _module.C3
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.C3()) } { $Is(c#0, Tclass._module.C3?()) } 
  $Is(c#0, Tclass._module.C3()) <==> $Is(c#0, Tclass._module.C3?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.C3
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.C3(), $h) } 
    { $IsAlloc(c#0, Tclass._module.C3?(), $h) } 
  $IsAlloc(c#0, Tclass._module.C3(), $h)
     <==> $IsAlloc(c#0, Tclass._module.C3?(), $h));

const unique class._module.t?: ClassName;

function Tclass._module.t?() : Ty
uses {
// Tclass._module.t? Tag
axiom Tag(Tclass._module.t?()) == Tagclass._module.t?
   && TagFamily(Tclass._module.t?()) == tytagFamily$t;
}

const unique Tagclass._module.t?: TyTag;

// Box/unbox axiom for Tclass._module.t?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.t?()) } 
  $IsBox(bx, Tclass._module.t?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.t?()));

// $Is axiom for trait t
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.t?()) } 
  $Is($o, Tclass._module.t?()) <==> $o == null || implements$_module.t(dtype($o)));

// $IsAlloc axiom for trait t
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.t?(), $h) } 
  $IsAlloc($o, Tclass._module.t?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.t(ty: Ty) : bool;

// function declaration for _module.t.f
function _module.t.f(this: ref, s2#0: int) : int
uses {
// consequence axiom for _module.t.f
axiom 1 <= $FunctionContextHeight
   ==> (forall this: ref, s2#0: int :: 
    { _module.t.f(this, s2#0) } 
    _module.t.f#canCall(this, s2#0)
         || (1 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.t()))
       ==> _module.t.f(this, s2#0) > 0);
}

function _module.t.f#canCall(this: ref, s2#0: int) : bool;

function Tclass._module.t() : Ty
uses {
// Tclass._module.t Tag
axiom Tag(Tclass._module.t()) == Tagclass._module.t
   && TagFamily(Tclass._module.t()) == tytagFamily$t;
}

const unique Tagclass._module.t: TyTag;

// Box/unbox axiom for Tclass._module.t
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.t()) } 
  $IsBox(bx, Tclass._module.t())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.t()));

function _module.t.f#requires(ref, int) : bool;

// #requires axiom for _module.t.f
axiom (forall this: ref, s2#0: int :: 
  { _module.t.f#requires(this, s2#0) } 
  this != null && $Is(this, Tclass._module.t())
     ==> _module.t.f#requires(this, s2#0) == true);

procedure {:verboseName "t.f (well-formedness)"} CheckWellformed$$_module.t.f(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.t())
         && $IsAlloc(this, Tclass._module.t(), $Heap), 
    s2#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id104"} _module.t.f(this, s2#0) > 0;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "t.f (well-formedness)"} CheckWellformed$$_module.t.f(this: ref, s2#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##s2#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.t?(), $Heap);
        ##s2#0 := s2#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s2#0, TInt, $Heap);
        assert {:id "id105"} 0 <= s2#0 || ##s2#0 == s2#0;
        assert {:id "id106"} (this == this && s2#0 == s2#0) || ##s2#0 < s2#0;
        assume (this == this && s2#0 == s2#0) || _module.t.f#canCall(this, s2#0);
        assume {:id "id107"} _module.t.f(this, s2#0) > 0;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume false;
    }
}



// $Is axiom for non-null type _module.t
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.t()) } { $Is(c#0, Tclass._module.t?()) } 
  $Is(c#0, Tclass._module.t()) <==> $Is(c#0, Tclass._module.t?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.t
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.t(), $h) } 
    { $IsAlloc(c#0, Tclass._module.t?(), $h) } 
  $IsAlloc(c#0, Tclass._module.t(), $h)
     <==> $IsAlloc(c#0, Tclass._module.t?(), $h));

const unique class._module.c?: ClassName;

function Tclass._module.c?() : Ty
uses {
// Tclass._module.c? Tag
axiom Tag(Tclass._module.c?()) == Tagclass._module.c?
   && TagFamily(Tclass._module.c?()) == tytagFamily$c;
axiom implements$_module.t(Tclass._module.c?());
}

const unique Tagclass._module.c?: TyTag;

// Box/unbox axiom for Tclass._module.c?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.c?()) } 
  $IsBox(bx, Tclass._module.c?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.c?()));

// $Is axiom for class c
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.c?()) } 
  $Is($o, Tclass._module.c?()) <==> $o == null || dtype($o) == Tclass._module.c?());

// $IsAlloc axiom for class c
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.c?(), $h) } 
  $IsAlloc($o, Tclass._module.c?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for _module.c.f
function _module.c.f(this: ref, s3#0: int) : int
uses {
// consequence axiom for _module.c.f
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, s3#0: int :: 
    { _module.c.f(this, s3#0) } 
    _module.c.f#canCall(this, s3#0)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.c()))
       ==> _module.c.f(this, s3#0) > 1);
// definition axiom for _module.c.f (revealed)
axiom {:id "id108"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, s3#0: int :: 
    { _module.c.f(this, s3#0) } 
    _module.c.f#canCall(this, s3#0)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.c()))
       ==> _module.c.f(this, s3#0) == LitInt(2));
// definition axiom for _module.c.f for decreasing-related literals (revealed)
axiom {:id "id109"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, s3#0: int :: 
    {:weight 3} { _module.c.f(this, LitInt(s3#0)) } 
    _module.c.f#canCall(this, LitInt(s3#0))
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.c()))
       ==> _module.c.f(this, LitInt(s3#0)) == LitInt(2));
// definition axiom for _module.c.f for all literals (revealed)
axiom {:id "id110"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, s3#0: int :: 
    {:weight 3} { _module.c.f(Lit(this), LitInt(s3#0)) } 
    _module.c.f#canCall(Lit(this), LitInt(s3#0))
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.c()))
       ==> _module.c.f(Lit(this), LitInt(s3#0)) == LitInt(2));
}

function _module.c.f#canCall(this: ref, s3#0: int) : bool;

function Tclass._module.c() : Ty
uses {
// Tclass._module.c Tag
axiom Tag(Tclass._module.c()) == Tagclass._module.c
   && TagFamily(Tclass._module.c()) == tytagFamily$c;
}

const unique Tagclass._module.c: TyTag;

// Box/unbox axiom for Tclass._module.c
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.c()) } 
  $IsBox(bx, Tclass._module.c())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.c()));

function _module.c.f#requires(ref, int) : bool;

// #requires axiom for _module.c.f
axiom (forall this: ref, s3#0: int :: 
  { _module.c.f#requires(this, s3#0) } 
  this != null && $Is(this, Tclass._module.c())
     ==> _module.c.f#requires(this, s3#0) == true);

// override axiom for _module.t.f in class _module.c
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, s2#0: int :: 
    { _module.t.f(this, s2#0), $Is(this, Tclass._module.c()) } 
      { _module.t.f(this, s2#0), _module.c.f(this, s2#0) } 
    _module.c.f#canCall(this, s2#0)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.c()))
       ==> _module.t.f(this, s2#0) == _module.c.f(this, s2#0));

procedure {:verboseName "c.f (well-formedness)"} CheckWellformed$$_module.c.f(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.c())
         && $IsAlloc(this, Tclass._module.c(), $Heap), 
    s3#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id111"} _module.c.f(this, s3#0) > 1;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "c.f (well-formedness)"} CheckWellformed$$_module.c.f(this: ref, s3#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##s3#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.c?(), $Heap);
        ##s3#0 := s3#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s3#0, TInt, $Heap);
        assert {:id "id112"} 0 <= s3#0 || ##s3#0 == s3#0;
        assert {:id "id113"} (this == this && s3#0 == s3#0) || ##s3#0 < s3#0;
        assume (this == this && s3#0 == s3#0) || _module.c.f#canCall(this, s3#0);
        assume {:id "id114"} _module.c.f(this, s3#0) > 1;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume {:id "id115"} _module.c.f(this, s3#0) == LitInt(2);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.c.f(this, s3#0), TInt);
        return;

        assume false;
    }
}



procedure {:verboseName "c.f (override check)"} OverrideCheck$$_module.c.f(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.c())
         && $IsAlloc(this, Tclass._module.c(), $Heap), 
    s3#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "c.f (override check)"} OverrideCheck$$_module.c.f(this: ref, s3#0: int)
{
  var c_$_ReadsFrame: [ref,Field]bool;

    assert {:id "id116"} s3#0 <= s3#0;
    c_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id117"} (forall $o: ref, $f: Field :: true);
    assume {:id "id118"} _module.c.f(this, s3#0) > 1;
    assert {:id "id119"} _module.c.f(this, s3#0) > 0;
}



// $Is axiom for non-null type _module.c
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.c()) } { $Is(c#0, Tclass._module.c?()) } 
  $Is(c#0, Tclass._module.c()) <==> $Is(c#0, Tclass._module.c?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.c
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.c(), $h) } 
    { $IsAlloc(c#0, Tclass._module.c?(), $h) } 
  $IsAlloc(c#0, Tclass._module.c(), $h)
     <==> $IsAlloc(c#0, Tclass._module.c?(), $h));

const unique class._module.TT?: ClassName;

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

// function declaration for _module.TT.M
function _module.TT.M(a#0: int, b#0: int) : int
uses {
// consequence axiom for _module.TT.M
axiom 0 <= $FunctionContextHeight
   ==> (forall a#0: int, b#0: int :: 
    { _module.TT.M(a#0, b#0) } 
    _module.TT.M#canCall(a#0, b#0) || 0 < $FunctionContextHeight
       ==> _module.TT.M(a#0, b#0) == a#0 + b#0);
// definition axiom for _module.TT.M (revealed)
axiom {:id "id120"} 0 <= $FunctionContextHeight
   ==> (forall a#0: int, b#0: int :: 
    { _module.TT.M(a#0, b#0) } 
    _module.TT.M#canCall(a#0, b#0) || 0 < $FunctionContextHeight
       ==> _module.TT.M(a#0, b#0) == a#0 + b#0);
// definition axiom for _module.TT.M for all literals (revealed)
axiom {:id "id121"} 0 <= $FunctionContextHeight
   ==> (forall a#0: int, b#0: int :: 
    {:weight 3} { _module.TT.M(LitInt(a#0), LitInt(b#0)) } 
    _module.TT.M#canCall(LitInt(a#0), LitInt(b#0)) || 0 < $FunctionContextHeight
       ==> _module.TT.M(LitInt(a#0), LitInt(b#0)) == LitInt(a#0 + b#0));
}

function _module.TT.M#canCall(a#0: int, b#0: int) : bool;

function _module.TT.M#requires(int, int) : bool;

// #requires axiom for _module.TT.M
axiom (forall a#0: int, b#0: int :: 
  { _module.TT.M#requires(a#0, b#0) } 
  _module.TT.M#requires(a#0, b#0) == true);

procedure {:verboseName "TT.M (well-formedness)"} CheckWellformed$$_module.TT.M(a#0: int, b#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id122"} _module.TT.M(a#0, b#0) == a#0 + b#0;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TT.M (well-formedness)"} CheckWellformed$$_module.TT.M(a#0: int, b#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##a#0: int;
  var ##b#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        ##a#0 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0, TInt, $Heap);
        ##b#0 := b#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0, TInt, $Heap);
        assert {:id "id123"} 0 <= a#0 || ##a#0 == a#0;
        assert {:id "id124"} 0 <= b#0 || ##a#0 < a#0 || ##b#0 == b#0;
        assert {:id "id125"} (a#0 == a#0 && b#0 == b#0) || ##a#0 < a#0 || (##a#0 == a#0 && ##b#0 < b#0);
        assume (a#0 == a#0 && b#0 == b#0) || _module.TT.M#canCall(a#0, b#0);
        assume {:id "id126"} _module.TT.M(a#0, b#0) == a#0 + b#0;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume {:id "id127"} _module.TT.M(a#0, b#0) == a#0 + b#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.TT.M(a#0, b#0), TInt);
        return;

        assume false;
    }
}



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

procedure {:verboseName "CC.Testing (well-formedness)"} CheckWellFormed$$_module.CC.Testing(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.CC())
         && $IsAlloc(this, Tclass._module.CC(), $Heap), 
    a#0: int, 
    b#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CC.Testing (call)"} Call$$_module.CC.Testing(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.CC())
         && $IsAlloc(this, Tclass._module.CC(), $Heap), 
    a#0: int, 
    b#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CC.Testing (correctness)"} Impl$$_module.CC.Testing(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.CC())
         && $IsAlloc(this, Tclass._module.CC(), $Heap), 
    a#0: int, 
    b#0: int)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CC.Testing (correctness)"} Impl$$_module.CC.Testing(this: ref, a#0: int, b#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##a#0: int;
  var ##b#0: int;

    // AddMethodImpl: Testing, Impl$$_module.CC.Testing
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitOverride1.dfy(139,5)
    ##a#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    ##b#0 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TInt, $Heap);
    assume _module.TT.M#canCall(a#0, b#0);
    assume _module.TT.M#canCall(a#0, b#0);
    assert {:id "id128"} _module.TT.M(a#0, b#0) == a#0 + b#0;
}



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

const unique class._module.T4?: ClassName;

function Tclass._module.T4?() : Ty
uses {
// Tclass._module.T4? Tag
axiom Tag(Tclass._module.T4?()) == Tagclass._module.T4?
   && TagFamily(Tclass._module.T4?()) == tytagFamily$T4;
}

const unique Tagclass._module.T4?: TyTag;

// Box/unbox axiom for Tclass._module.T4?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.T4?()) } 
  $IsBox(bx, Tclass._module.T4?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.T4?()));

// $Is axiom for trait T4
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.T4?()) } 
  $Is($o, Tclass._module.T4?())
     <==> $o == null || implements$_module.T4(dtype($o)));

// $IsAlloc axiom for trait T4
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.T4?(), $h) } 
  $IsAlloc($o, Tclass._module.T4?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.T4(ty: Ty) : bool;

// function declaration for _module.T4.F
function _module.T4.F(this: ref, y#0: int) : int;

function _module.T4.F#canCall(this: ref, y#0: int) : bool;

function Tclass._module.T4() : Ty
uses {
// Tclass._module.T4 Tag
axiom Tag(Tclass._module.T4()) == Tagclass._module.T4
   && TagFamily(Tclass._module.T4()) == tytagFamily$T4;
}

const unique Tagclass._module.T4: TyTag;

// Box/unbox axiom for Tclass._module.T4
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.T4()) } 
  $IsBox(bx, Tclass._module.T4())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.T4()));

function _module.T4.F#requires(ref, int) : bool;

// #requires axiom for _module.T4.F
axiom (forall this: ref, y#0: int :: 
  { _module.T4.F#requires(this, y#0) } 
  this != null && $Is(this, Tclass._module.T4())
     ==> _module.T4.F#requires(this, y#0) == true);

procedure {:verboseName "T4.F (well-formedness)"} CheckWellformed$$_module.T4.F(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T4())
         && $IsAlloc(this, Tclass._module.T4(), $Heap), 
    y#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.T4.G
function _module.T4.G(this: ref, y#0: int) : int
uses {
// definition axiom for _module.T4.G (revealed)
axiom {:id "id129"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, y#0: int :: 
    { _module.T4.G(this, y#0) } 
    _module.T4.G#canCall(this, y#0)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.T4()))
       ==> _module.T4.G(this, y#0) == LitInt(100));
// definition axiom for _module.T4.G for decreasing-related literals (revealed)
axiom {:id "id130"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, y#0: int :: 
    {:weight 3} { _module.T4.G(this, LitInt(y#0)) } 
    _module.T4.G#canCall(this, LitInt(y#0))
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.T4()))
       ==> _module.T4.G(this, LitInt(y#0)) == LitInt(100));
// definition axiom for _module.T4.G for all literals (revealed)
axiom {:id "id131"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, y#0: int :: 
    {:weight 3} { _module.T4.G(Lit(this), LitInt(y#0)) } 
    _module.T4.G#canCall(Lit(this), LitInt(y#0))
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.T4()))
       ==> _module.T4.G(Lit(this), LitInt(y#0)) == LitInt(100));
}

function _module.T4.G#canCall(this: ref, y#0: int) : bool;

function _module.T4.G#requires(ref, int) : bool;

// #requires axiom for _module.T4.G
axiom (forall this: ref, y#0: int :: 
  { _module.T4.G#requires(this, y#0) } 
  this != null && $Is(this, Tclass._module.T4())
     ==> _module.T4.G#requires(this, y#0) == true);

procedure {:verboseName "T4.G (well-formedness)"} CheckWellformed$$_module.T4.G(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T4())
         && $IsAlloc(this, Tclass._module.T4(), $Heap), 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "T4.M (well-formedness)"} CheckWellFormed$$_module.T4.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T4())
         && $IsAlloc(this, Tclass._module.T4(), $Heap), 
    y#0: int)
   returns (kobra#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "T4.M (call)"} Call$$_module.T4.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T4())
         && $IsAlloc(this, Tclass._module.T4(), $Heap), 
    y#0: int)
   returns (kobra#0: int);
  // user-defined preconditions
  requires {:id "id135"} y#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id136"} kobra#0 > 0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "T4.N (well-formedness)"} CheckWellFormed$$_module.T4.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T4())
         && $IsAlloc(this, Tclass._module.T4(), $Heap), 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "T4.N (call)"} Call$$_module.T4.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T4())
         && $IsAlloc(this, Tclass._module.T4(), $Heap), 
    y#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "T4.N (correctness)"} Impl$$_module.T4.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.T4())
         && $IsAlloc(this, Tclass._module.T4(), $Heap), 
    y#0: int)
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



// $Is axiom for non-null type _module.T4
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.T4()) } { $Is(c#0, Tclass._module.T4?()) } 
  $Is(c#0, Tclass._module.T4()) <==> $Is(c#0, Tclass._module.T4?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.T4
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.T4(), $h) } 
    { $IsAlloc(c#0, Tclass._module.T4?(), $h) } 
  $IsAlloc(c#0, Tclass._module.T4(), $h)
     <==> $IsAlloc(c#0, Tclass._module.T4?(), $h));

const unique class._module.C4?: ClassName;

function Tclass._module.C4?() : Ty
uses {
// Tclass._module.C4? Tag
axiom Tag(Tclass._module.C4?()) == Tagclass._module.C4?
   && TagFamily(Tclass._module.C4?()) == tytagFamily$C4;
axiom implements$_module.T4(Tclass._module.C4?());
}

const unique Tagclass._module.C4?: TyTag;

// Box/unbox axiom for Tclass._module.C4?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.C4?()) } 
  $IsBox(bx, Tclass._module.C4?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.C4?()));

// $Is axiom for class C4
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.C4?()) } 
  $Is($o, Tclass._module.C4?())
     <==> $o == null || dtype($o) == Tclass._module.C4?());

// $IsAlloc axiom for class C4
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.C4?(), $h) } 
  $IsAlloc($o, Tclass._module.C4?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for _module.C4.F
function _module.C4.F(this: ref, y#0: int) : int
uses {
// definition axiom for _module.C4.F (revealed)
axiom {:id "id140"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, y#0: int :: 
    { _module.C4.F(this, y#0) } 
    _module.C4.F#canCall(this, y#0)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.C4()))
       ==> _module.C4.F(this, y#0) == LitInt(200));
// definition axiom for _module.C4.F for decreasing-related literals (revealed)
axiom {:id "id141"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, y#0: int :: 
    {:weight 3} { _module.C4.F(this, LitInt(y#0)) } 
    _module.C4.F#canCall(this, LitInt(y#0))
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.C4()))
       ==> _module.C4.F(this, LitInt(y#0)) == LitInt(200));
// definition axiom for _module.C4.F for all literals (revealed)
axiom {:id "id142"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, y#0: int :: 
    {:weight 3} { _module.C4.F(Lit(this), LitInt(y#0)) } 
    _module.C4.F#canCall(Lit(this), LitInt(y#0))
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.C4()))
       ==> _module.C4.F(Lit(this), LitInt(y#0)) == LitInt(200));
}

function _module.C4.F#canCall(this: ref, y#0: int) : bool;

function Tclass._module.C4() : Ty
uses {
// Tclass._module.C4 Tag
axiom Tag(Tclass._module.C4()) == Tagclass._module.C4
   && TagFamily(Tclass._module.C4()) == tytagFamily$C4;
}

const unique Tagclass._module.C4: TyTag;

// Box/unbox axiom for Tclass._module.C4
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.C4()) } 
  $IsBox(bx, Tclass._module.C4())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.C4()));

function _module.C4.F#requires(ref, int) : bool;

// #requires axiom for _module.C4.F
axiom (forall this: ref, y#0: int :: 
  { _module.C4.F#requires(this, y#0) } 
  this != null && $Is(this, Tclass._module.C4())
     ==> _module.C4.F#requires(this, y#0) == true);

// override axiom for _module.T4.F in class _module.C4
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, y#0: int :: 
    { _module.T4.F(this, y#0), $Is(this, Tclass._module.C4()) } 
      { _module.T4.F(this, y#0), _module.C4.F(this, y#0) } 
    _module.C4.F#canCall(this, y#0)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.C4()))
       ==> _module.T4.F(this, y#0) == _module.C4.F(this, y#0));

procedure {:verboseName "C4.F (well-formedness)"} CheckWellformed$$_module.C4.F(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C4())
         && $IsAlloc(this, Tclass._module.C4(), $Heap), 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "C4.F (override check)"} OverrideCheck$$_module.C4.F(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C4())
         && $IsAlloc(this, Tclass._module.C4(), $Heap), 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C4.F (override check)"} OverrideCheck$$_module.C4.F(this: ref, y#0: int)
{
  var C4_$_ReadsFrame: [ref,Field]bool;

    assert {:id "id144"} y#0 <= y#0;
    C4_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id145"} (forall $o: ref, $f: Field :: true);
}



procedure {:verboseName "C4.M (well-formedness)"} CheckWellFormed$$_module.C4.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C4())
         && $IsAlloc(this, Tclass._module.C4(), $Heap), 
    kk#0: int)
   returns (ksos#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "C4.M (override check)"} OverrideCheck$$_module.C4.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C4())
         && $IsAlloc(this, Tclass._module.C4(), $Heap), 
    kk#0: int)
   returns (ksos#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C4.M (override check)"} OverrideCheck$$_module.C4.M(this: ref, kk#0: int) returns (ksos#0: int)
{
    assume {:id "id148"} kk#0 > 0;
    assert {:id "id149"} kk#0 > -1;
    assert {:id "id150"} kk#0 <= kk#0;
    assert {:id "id151"} (forall $o: ref, $f: Field :: true);
    assert {:id "id152"} (forall $o: ref, $f: Field :: true);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    assume {:id "id153"} ksos#0 > 0;
    assert {:id "id154"} ksos#0 > 0;
}



procedure {:verboseName "C4.M (call)"} Call$$_module.C4.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C4())
         && $IsAlloc(this, Tclass._module.C4(), $Heap), 
    kk#0: int)
   returns (ksos#0: int);
  // user-defined preconditions
  requires {:id "id155"} kk#0 > -1;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id156"} ksos#0 > 0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "C4.M (correctness)"} Impl$$_module.C4.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C4())
         && $IsAlloc(this, Tclass._module.C4(), $Heap), 
    kk#0: int)
   returns (ksos#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id157"} kk#0 > -1;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id158"} ksos#0 > 0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C4.M (correctness)"} Impl$$_module.C4.M(this: ref, kk#0: int) returns (ksos#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: M, Impl$$_module.C4.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitOverride1.dfy(178,9)
    assume true;
    assume true;
    ksos#0 := LitInt(10);
}



// $Is axiom for non-null type _module.C4
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.C4()) } { $Is(c#0, Tclass._module.C4?()) } 
  $Is(c#0, Tclass._module.C4()) <==> $Is(c#0, Tclass._module.C4?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.C4
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.C4(), $h) } 
    { $IsAlloc(c#0, Tclass._module.C4?(), $h) } 
  $IsAlloc(c#0, Tclass._module.C4(), $h)
     <==> $IsAlloc(c#0, Tclass._module.C4?(), $h));

const unique class._module.OneTrait?: ClassName;

function Tclass._module.OneTrait?() : Ty
uses {
// Tclass._module.OneTrait? Tag
axiom Tag(Tclass._module.OneTrait?()) == Tagclass._module.OneTrait?
   && TagFamily(Tclass._module.OneTrait?()) == tytagFamily$OneTrait;
}

const unique Tagclass._module.OneTrait?: TyTag;

// Box/unbox axiom for Tclass._module.OneTrait?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.OneTrait?()) } 
  $IsBox(bx, Tclass._module.OneTrait?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.OneTrait?()));

// $Is axiom for trait OneTrait
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.OneTrait?()) } 
  $Is($o, Tclass._module.OneTrait?())
     <==> $o == null || implements$_module.OneTrait(dtype($o)));

// $IsAlloc axiom for trait OneTrait
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.OneTrait?(), $h) } 
  $IsAlloc($o, Tclass._module.OneTrait?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.OneTrait(ty: Ty) : bool;

// function declaration for _module.OneTrait.P
function _module.OneTrait.P(this: ref) : bool
uses {
// definition axiom for _module.OneTrait.P (revealed)
axiom {:id "id160"} 0 <= $FunctionContextHeight
   ==> (forall this: ref :: 
    { _module.OneTrait.P(this) } 
    _module.OneTrait.P#canCall(this)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.OneTrait()))
       ==> _module.OneTrait.P(this) == Lit(true));
// definition axiom for _module.OneTrait.P for all literals (revealed)
axiom {:id "id161"} 0 <= $FunctionContextHeight
   ==> (forall this: ref :: 
    {:weight 3} { _module.OneTrait.P(Lit(this)) } 
    _module.OneTrait.P#canCall(Lit(this))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.OneTrait()))
       ==> _module.OneTrait.P(Lit(this)) == Lit(true));
}

function _module.OneTrait.P#canCall(this: ref) : bool;

function Tclass._module.OneTrait() : Ty
uses {
// Tclass._module.OneTrait Tag
axiom Tag(Tclass._module.OneTrait()) == Tagclass._module.OneTrait
   && TagFamily(Tclass._module.OneTrait()) == tytagFamily$OneTrait;
}

const unique Tagclass._module.OneTrait: TyTag;

// Box/unbox axiom for Tclass._module.OneTrait
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.OneTrait()) } 
  $IsBox(bx, Tclass._module.OneTrait())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.OneTrait()));

function _module.OneTrait.P#requires(ref) : bool;

// #requires axiom for _module.OneTrait.P
axiom (forall this: ref :: 
  { _module.OneTrait.P#requires(this) } 
  this != null && $Is(this, Tclass._module.OneTrait())
     ==> _module.OneTrait.P#requires(this) == true);

procedure {:verboseName "OneTrait.P (well-formedness)"} CheckWellformed$$_module.OneTrait.P(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneTrait())
         && $IsAlloc(this, Tclass._module.OneTrait(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.OneTrait.Q
function _module.OneTrait.Q(this: ref) : bool
uses {
// definition axiom for _module.OneTrait.Q (revealed)
axiom {:id "id163"} 0 <= $FunctionContextHeight
   ==> (forall this: ref :: 
    { _module.OneTrait.Q(this) } 
    _module.OneTrait.Q#canCall(this)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.OneTrait()))
       ==> _module.OneTrait.Q(this) == Lit(true));
// definition axiom for _module.OneTrait.Q for all literals (revealed)
axiom {:id "id164"} 0 <= $FunctionContextHeight
   ==> (forall this: ref :: 
    {:weight 3} { _module.OneTrait.Q(Lit(this)) } 
    _module.OneTrait.Q#canCall(Lit(this))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.OneTrait()))
       ==> _module.OneTrait.Q(Lit(this)) == Lit(true));
}

function _module.OneTrait.Q#canCall(this: ref) : bool;

function _module.OneTrait.Q#requires(ref) : bool;

// #requires axiom for _module.OneTrait.Q
axiom (forall this: ref :: 
  { _module.OneTrait.Q#requires(this) } 
  this != null && $Is(this, Tclass._module.OneTrait())
     ==> _module.OneTrait.Q#requires(this) == true);

procedure {:verboseName "OneTrait.Q (well-formedness)"} CheckWellformed$$_module.OneTrait.Q(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneTrait())
         && $IsAlloc(this, Tclass._module.OneTrait(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.OneTrait.R
function _module.OneTrait.R(this: ref, x#0: int) : bool
uses {
// definition axiom for _module.OneTrait.R (revealed)
axiom {:id "id166"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    { _module.OneTrait.R(this, x#0) } 
    _module.OneTrait.R#canCall(this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.OneTrait()))
       ==> _module.OneTrait.R(this, x#0) == (x#0 < 80));
// definition axiom for _module.OneTrait.R for decreasing-related literals (revealed)
axiom {:id "id167"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    {:weight 3} { _module.OneTrait.R(this, LitInt(x#0)) } 
    _module.OneTrait.R#canCall(this, LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.OneTrait()))
       ==> _module.OneTrait.R(this, LitInt(x#0)) == Lit(x#0 < 80));
// definition axiom for _module.OneTrait.R for all literals (revealed)
axiom {:id "id168"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    {:weight 3} { _module.OneTrait.R(Lit(this), LitInt(x#0)) } 
    _module.OneTrait.R#canCall(Lit(this), LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.OneTrait()))
       ==> _module.OneTrait.R(Lit(this), LitInt(x#0)) == Lit(x#0 < 80));
}

function _module.OneTrait.R#canCall(this: ref, x#0: int) : bool;

function _module.OneTrait.R#requires(ref, int) : bool;

// #requires axiom for _module.OneTrait.R
axiom (forall this: ref, x#0: int :: 
  { _module.OneTrait.R#requires(this, x#0) } 
  this != null && $Is(this, Tclass._module.OneTrait())
     ==> _module.OneTrait.R#requires(this, x#0) == true);

procedure {:verboseName "OneTrait.R (well-formedness)"} CheckWellformed$$_module.OneTrait.R(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneTrait())
         && $IsAlloc(this, Tclass._module.OneTrait(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OneTrait.M (well-formedness)"} CheckWellFormed$$_module.OneTrait.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneTrait())
         && $IsAlloc(this, Tclass._module.OneTrait(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OneTrait.M (call)"} Call$$_module.OneTrait.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneTrait())
         && $IsAlloc(this, Tclass._module.OneTrait(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.OneTrait.P#canCall(this);
  free ensures {:id "id171"} _module.OneTrait.P#canCall(this) && _module.OneTrait.P(this) && Lit(true);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "OneTrait.N (well-formedness)"} CheckWellFormed$$_module.OneTrait.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneTrait())
         && $IsAlloc(this, Tclass._module.OneTrait(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OneTrait.N (call)"} Call$$_module.OneTrait.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneTrait())
         && $IsAlloc(this, Tclass._module.OneTrait(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.OneTrait.P#canCall(this);
  free ensures {:id "id173"} _module.OneTrait.P#canCall(this) && _module.OneTrait.P(this) && Lit(true);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "OneTrait.O (well-formedness)"} CheckWellFormed$$_module.OneTrait.O(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneTrait())
         && $IsAlloc(this, Tclass._module.OneTrait(), $Heap))
   returns (r#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OneTrait.O (call)"} Call$$_module.OneTrait.O(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneTrait())
         && $IsAlloc(this, Tclass._module.OneTrait(), $Heap))
   returns (r#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.OneTrait.R#canCall(this, r#0);
  free ensures {:id "id175"} _module.OneTrait.R#canCall(this, r#0)
     && 
    _module.OneTrait.R(this, r#0)
     && r#0 < 80;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "OneTrait.O' (well-formedness)"} CheckWellFormed$$_module.OneTrait.O_k(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneTrait())
         && $IsAlloc(this, Tclass._module.OneTrait(), $Heap))
   returns (r#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OneTrait.O' (call)"} Call$$_module.OneTrait.O_k(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneTrait())
         && $IsAlloc(this, Tclass._module.OneTrait(), $Heap))
   returns (r#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.OneTrait.P#canCall(this);
  free ensures {:id "id177"} _module.OneTrait.P#canCall(this) && _module.OneTrait.P(this) && Lit(true);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.OneTrait
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.OneTrait()) } 
    { $Is(c#0, Tclass._module.OneTrait?()) } 
  $Is(c#0, Tclass._module.OneTrait())
     <==> $Is(c#0, Tclass._module.OneTrait?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.OneTrait
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.OneTrait(), $h) } 
    { $IsAlloc(c#0, Tclass._module.OneTrait?(), $h) } 
  $IsAlloc(c#0, Tclass._module.OneTrait(), $h)
     <==> $IsAlloc(c#0, Tclass._module.OneTrait?(), $h));

const unique class._module.OneClass?: ClassName;

function Tclass._module.OneClass?() : Ty
uses {
// Tclass._module.OneClass? Tag
axiom Tag(Tclass._module.OneClass?()) == Tagclass._module.OneClass?
   && TagFamily(Tclass._module.OneClass?()) == tytagFamily$OneClass;
axiom implements$_module.OneTrait(Tclass._module.OneClass?());
}

const unique Tagclass._module.OneClass?: TyTag;

// Box/unbox axiom for Tclass._module.OneClass?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.OneClass?()) } 
  $IsBox(bx, Tclass._module.OneClass?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.OneClass?()));

// $Is axiom for class OneClass
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.OneClass?()) } 
  $Is($o, Tclass._module.OneClass?())
     <==> $o == null || dtype($o) == Tclass._module.OneClass?());

// $IsAlloc axiom for class OneClass
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.OneClass?(), $h) } 
  $IsAlloc($o, Tclass._module.OneClass?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass._module.OneClass() : Ty
uses {
// Tclass._module.OneClass Tag
axiom Tag(Tclass._module.OneClass()) == Tagclass._module.OneClass
   && TagFamily(Tclass._module.OneClass()) == tytagFamily$OneClass;
}

const unique Tagclass._module.OneClass: TyTag;

// Box/unbox axiom for Tclass._module.OneClass
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.OneClass()) } 
  $IsBox(bx, Tclass._module.OneClass())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.OneClass()));

procedure {:verboseName "OneClass.M (well-formedness)"} CheckWellFormed$$_module.OneClass.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneClass())
         && $IsAlloc(this, Tclass._module.OneClass(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OneClass.M (override check)"} OverrideCheck$$_module.OneClass.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneClass())
         && $IsAlloc(this, Tclass._module.OneClass(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OneClass.M (override check)"} OverrideCheck$$_module.OneClass.M(this: ref)
{
    assert {:id "id179"} true;
    assert {:id "id180"} (forall $o: ref, $f: Field :: true);
    assert {:id "id181"} (forall $o: ref, $f: Field :: true);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    assume {:id "id182"} _module.OneTrait.P(this);
    assert {:id "id183"} _module.OneTrait.P#canCall(this) ==> _module.OneTrait.P(this) || Lit(true);
}



procedure {:verboseName "OneClass.M (call)"} Call$$_module.OneClass.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneClass())
         && $IsAlloc(this, Tclass._module.OneClass(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.OneTrait.P#canCall(this);
  free ensures {:id "id184"} _module.OneTrait.P#canCall(this) && _module.OneTrait.P(this) && Lit(true);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "OneClass.M (correctness)"} Impl$$_module.OneClass.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneClass())
         && $IsAlloc(this, Tclass._module.OneClass(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.OneTrait.P#canCall(this);
  ensures {:id "id185"} _module.OneTrait.P#canCall(this) ==> _module.OneTrait.P(this) || Lit(true);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OneClass.M (correctness)"} Impl$$_module.OneClass.M(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: M, Impl$$_module.OneClass.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "OneClass.N (well-formedness)"} CheckWellFormed$$_module.OneClass.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneClass())
         && $IsAlloc(this, Tclass._module.OneClass(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OneClass.N (override check)"} OverrideCheck$$_module.OneClass.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneClass())
         && $IsAlloc(this, Tclass._module.OneClass(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OneClass.N (override check)"} OverrideCheck$$_module.OneClass.N(this: ref)
{
    assert {:id "id187"} true;
    assert {:id "id188"} (forall $o: ref, $f: Field :: true);
    assert {:id "id189"} (forall $o: ref, $f: Field :: true);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    assume {:id "id190"} _module.OneTrait.Q(this);
    assert {:id "id191"} _module.OneTrait.P#canCall(this) ==> _module.OneTrait.P(this) || Lit(true);
}



procedure {:verboseName "OneClass.N (call)"} Call$$_module.OneClass.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneClass())
         && $IsAlloc(this, Tclass._module.OneClass(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.OneTrait.Q#canCall(this);
  free ensures {:id "id192"} _module.OneTrait.Q#canCall(this) && _module.OneTrait.Q(this) && Lit(true);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "OneClass.N (correctness)"} Impl$$_module.OneClass.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneClass())
         && $IsAlloc(this, Tclass._module.OneClass(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.OneTrait.Q#canCall(this);
  ensures {:id "id193"} _module.OneTrait.Q#canCall(this) ==> _module.OneTrait.Q(this) || Lit(true);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OneClass.N (correctness)"} Impl$$_module.OneClass.N(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: N, Impl$$_module.OneClass.N
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "OneClass.O (well-formedness)"} CheckWellFormed$$_module.OneClass.O(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneClass())
         && $IsAlloc(this, Tclass._module.OneClass(), $Heap))
   returns (r'#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OneClass.O (override check)"} OverrideCheck$$_module.OneClass.O(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneClass())
         && $IsAlloc(this, Tclass._module.OneClass(), $Heap))
   returns (r'#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OneClass.O (override check)"} OverrideCheck$$_module.OneClass.O(this: ref) returns (r'#0: int)
{
    assert {:id "id195"} true;
    assert {:id "id196"} (forall $o: ref, $f: Field :: true);
    assert {:id "id197"} (forall $o: ref, $f: Field :: true);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    assume {:id "id198"} _module.OneTrait.P(this);
    assert {:id "id199"} _module.OneTrait.R#canCall(this, r'#0)
       ==> _module.OneTrait.R(this, r'#0) || r'#0 < 80;
}



procedure {:verboseName "OneClass.O (call)"} Call$$_module.OneClass.O(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneClass())
         && $IsAlloc(this, Tclass._module.OneClass(), $Heap))
   returns (r'#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.OneTrait.P#canCall(this);
  free ensures {:id "id200"} _module.OneTrait.P#canCall(this) && _module.OneTrait.P(this) && Lit(true);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "OneClass.O (correctness)"} Impl$$_module.OneClass.O(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneClass())
         && $IsAlloc(this, Tclass._module.OneClass(), $Heap))
   returns (r'#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.OneTrait.P#canCall(this);
  ensures {:id "id201"} _module.OneTrait.P#canCall(this) ==> _module.OneTrait.P(this) || Lit(true);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OneClass.O (correctness)"} Impl$$_module.OneClass.O(this: ref) returns (r'#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: O, Impl$$_module.OneClass.O
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/traits/TraitOverride1.dfy(202,8)
    assume true;
    assume true;
    r'#0 := LitInt(50);
}



procedure {:verboseName "OneClass.O' (well-formedness)"} CheckWellFormed$$_module.OneClass.O_k(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneClass())
         && $IsAlloc(this, Tclass._module.OneClass(), $Heap))
   returns (r'#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OneClass.O' (override check)"} OverrideCheck$$_module.OneClass.O_k(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneClass())
         && $IsAlloc(this, Tclass._module.OneClass(), $Heap))
   returns (r'#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OneClass.O' (override check)"} OverrideCheck$$_module.OneClass.O_k(this: ref) returns (r'#0: int)
{
    assert {:id "id204"} true;
    assert {:id "id205"} (forall $o: ref, $f: Field :: true);
    assert {:id "id206"} (forall $o: ref, $f: Field :: true);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    assume {:id "id207"} _module.OneTrait.R(this, r'#0);
    assert {:id "id208"} _module.OneTrait.P#canCall(this) ==> _module.OneTrait.P(this) || Lit(true);
}



procedure {:verboseName "OneClass.O' (call)"} Call$$_module.OneClass.O_k(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneClass())
         && $IsAlloc(this, Tclass._module.OneClass(), $Heap))
   returns (r'#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.OneTrait.R#canCall(this, r'#0);
  free ensures {:id "id209"} _module.OneTrait.R#canCall(this, r'#0)
     && 
    _module.OneTrait.R(this, r'#0)
     && r'#0 < 80;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "OneClass.O' (correctness)"} Impl$$_module.OneClass.O_k(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.OneClass())
         && $IsAlloc(this, Tclass._module.OneClass(), $Heap))
   returns (r'#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.OneTrait.R#canCall(this, r'#0);
  ensures {:id "id210"} _module.OneTrait.R#canCall(this, r'#0)
     ==> _module.OneTrait.R(this, r'#0) || r'#0 < 80;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OneClass.O' (correctness)"} Impl$$_module.OneClass.O_k(this: ref) returns (r'#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: O', Impl$$_module.OneClass.O_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



// $Is axiom for non-null type _module.OneClass
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.OneClass()) } 
    { $Is(c#0, Tclass._module.OneClass?()) } 
  $Is(c#0, Tclass._module.OneClass())
     <==> $Is(c#0, Tclass._module.OneClass?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.OneClass
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.OneClass(), $h) } 
    { $IsAlloc(c#0, Tclass._module.OneClass?(), $h) } 
  $IsAlloc(c#0, Tclass._module.OneClass(), $h)
     <==> $IsAlloc(c#0, Tclass._module.OneClass?(), $h));

// type axiom for trait parent: C1? extends T1?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.C1?()) } 
  $Is($o, Tclass._module.C1?()) ==> $Is($o, Tclass._module.T1?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.C1?()) } 
  $IsBox(bx, Tclass._module.C1?()) ==> $IsBox(bx, Tclass._module.T1?()));

// allocation axiom for trait parent: C1? extends T1?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.C1?(), $heap) } 
  $IsAlloc($o, Tclass._module.C1?(), $heap)
     ==> $IsAlloc($o, Tclass._module.T1?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.C1?(), $h) } 
  $IsAllocBox(bx, Tclass._module.C1?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.T1?(), $h));

// type axiom for trait parent: C2? extends T2?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.C2?()) } 
  $Is($o, Tclass._module.C2?()) ==> $Is($o, Tclass._module.T2?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.C2?()) } 
  $IsBox(bx, Tclass._module.C2?()) ==> $IsBox(bx, Tclass._module.T2?()));

// allocation axiom for trait parent: C2? extends T2?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.C2?(), $heap) } 
  $IsAlloc($o, Tclass._module.C2?(), $heap)
     ==> $IsAlloc($o, Tclass._module.T2?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.C2?(), $h) } 
  $IsAllocBox(bx, Tclass._module.C2?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.T2?(), $h));

// type axiom for trait parent: C3? extends T3?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.C3?()) } 
  $Is($o, Tclass._module.C3?()) ==> $Is($o, Tclass._module.T3?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.C3?()) } 
  $IsBox(bx, Tclass._module.C3?()) ==> $IsBox(bx, Tclass._module.T3?()));

// allocation axiom for trait parent: C3? extends T3?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.C3?(), $heap) } 
  $IsAlloc($o, Tclass._module.C3?(), $heap)
     ==> $IsAlloc($o, Tclass._module.T3?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.C3?(), $h) } 
  $IsAllocBox(bx, Tclass._module.C3?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.T3?(), $h));

// type axiom for trait parent: c? extends t?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.c?()) } 
  $Is($o, Tclass._module.c?()) ==> $Is($o, Tclass._module.t?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.c?()) } 
  $IsBox(bx, Tclass._module.c?()) ==> $IsBox(bx, Tclass._module.t?()));

// allocation axiom for trait parent: c? extends t?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.c?(), $heap) } 
  $IsAlloc($o, Tclass._module.c?(), $heap)
     ==> $IsAlloc($o, Tclass._module.t?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.c?(), $h) } 
  $IsAllocBox(bx, Tclass._module.c?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.t?(), $h));

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

// type axiom for trait parent: C4? extends T4?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.C4?()) } 
  $Is($o, Tclass._module.C4?()) ==> $Is($o, Tclass._module.T4?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.C4?()) } 
  $IsBox(bx, Tclass._module.C4?()) ==> $IsBox(bx, Tclass._module.T4?()));

// allocation axiom for trait parent: C4? extends T4?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.C4?(), $heap) } 
  $IsAlloc($o, Tclass._module.C4?(), $heap)
     ==> $IsAlloc($o, Tclass._module.T4?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.C4?(), $h) } 
  $IsAllocBox(bx, Tclass._module.C4?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.T4?(), $h));

// type axiom for trait parent: OneClass? extends OneTrait?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.OneClass?()) } 
  $Is($o, Tclass._module.OneClass?()) ==> $Is($o, Tclass._module.OneTrait?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.OneClass?()) } 
  $IsBox(bx, Tclass._module.OneClass?())
     ==> $IsBox(bx, Tclass._module.OneTrait?()));

// allocation axiom for trait parent: OneClass? extends OneTrait?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.OneClass?(), $heap) } 
  $IsAlloc($o, Tclass._module.OneClass?(), $heap)
     ==> $IsAlloc($o, Tclass._module.OneTrait?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.OneClass?(), $h) } 
  $IsAllocBox(bx, Tclass._module.OneClass?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.OneTrait?(), $h));

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

const unique tytagFamily$T1: TyTagFamily;

const unique tytagFamily$C1: TyTagFamily;

const unique tytagFamily$T2: TyTagFamily;

const unique tytagFamily$C2: TyTagFamily;

const unique tytagFamily$T3: TyTagFamily;

const unique tytagFamily$C3: TyTagFamily;

const unique tytagFamily$t: TyTagFamily;

const unique tytagFamily$c: TyTagFamily;

const unique tytagFamily$TT: TyTagFamily;

const unique tytagFamily$CC: TyTagFamily;

const unique tytagFamily$T4: TyTagFamily;

const unique tytagFamily$C4: TyTagFamily;

const unique tytagFamily$OneTrait: TyTagFamily;

const unique tytagFamily$OneClass: TyTagFamily;
