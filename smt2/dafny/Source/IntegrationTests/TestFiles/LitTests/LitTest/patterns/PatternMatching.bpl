// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy

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

function Tclass._module.List(Ty) : Ty;

const unique Tagclass._module.List: TyTag;

// Tclass._module.List Tag
axiom (forall _module.List$T: Ty :: 
  { Tclass._module.List(_module.List$T) } 
  Tag(Tclass._module.List(_module.List$T)) == Tagclass._module.List
     && TagFamily(Tclass._module.List(_module.List$T)) == tytagFamily$List);

function Tclass._module.List_0(Ty) : Ty;

// Tclass._module.List injectivity 0
axiom (forall _module.List$T: Ty :: 
  { Tclass._module.List(_module.List$T) } 
  Tclass._module.List_0(Tclass._module.List(_module.List$T)) == _module.List$T);

// Box/unbox axiom for Tclass._module.List
axiom (forall _module.List$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.List(_module.List$T)) } 
  $IsBox(bx, Tclass._module.List(_module.List$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.List(_module.List$T)));

procedure {:verboseName "NestingTest (well-formedness)"} CheckWellFormed$$_module.__default.NestingTest(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(TInt))
         && $IsAlloc(xs#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(xs#0))
   returns (r#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NestingTest (call)"} Call$$_module.__default.NestingTest(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(TInt))
         && $IsAlloc(xs#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(xs#0))
   returns (r#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NestingTest (correctness)"} Impl$$_module.__default.NestingTest(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(TInt))
         && $IsAlloc(xs#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(xs#0))
   returns (r#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NestedVariableTest (well-formedness)"} CheckWellFormed$$_module.__default.NestedVariableTest(x#0: DatatypeType
       where $Is(x#0, Tclass._module.List(TInt))
         && $IsAlloc(x#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(x#0))
   returns (r#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NestedVariableTest (call)"} Call$$_module.__default.NestedVariableTest(x#0: DatatypeType
       where $Is(x#0, Tclass._module.List(TInt))
         && $IsAlloc(x#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(x#0))
   returns (r#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NestedVariableTest (correctness)"} Impl$$_module.__default.NestedVariableTest(x#0: DatatypeType
       where $Is(x#0, Tclass._module.List(TInt))
         && $IsAlloc(x#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(x#0))
   returns (r#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.MyOption() : Ty
uses {
// Tclass._module.MyOption Tag
axiom Tag(Tclass._module.MyOption()) == Tagclass._module.MyOption
   && TagFamily(Tclass._module.MyOption()) == tytagFamily$MyOption;
}

const unique Tagclass._module.MyOption: TyTag;

// Box/unbox axiom for Tclass._module.MyOption
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyOption()) } 
  $IsBox(bx, Tclass._module.MyOption())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.MyOption()));

procedure {:verboseName "OrderedTest (well-formedness)"} CheckWellFormed$$_module.__default.OrderedTest(x#0: DatatypeType
       where $Is(x#0, Tclass._module.MyOption())
         && $IsAlloc(x#0, Tclass._module.MyOption(), $Heap)
         && $IsA#_module.MyOption(x#0))
   returns (r#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OrderedTest (call)"} Call$$_module.__default.OrderedTest(x#0: DatatypeType
       where $Is(x#0, Tclass._module.MyOption())
         && $IsAlloc(x#0, Tclass._module.MyOption(), $Heap)
         && $IsA#_module.MyOption(x#0))
   returns (r#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.MyOption(x#0);
  ensures {:id "id32"} _module.MyOption#Equal(x#0, #_module.MyOption.None()) ==> r#0 == LitInt(2);
  free ensures $IsA#_module.MyOption(x#0);
  ensures {:id "id33"} !_module.MyOption#Equal(x#0, #_module.MyOption.None()) ==> r#0 < 2;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "OrderedTest (correctness)"} Impl$$_module.__default.OrderedTest(x#0: DatatypeType
       where $Is(x#0, Tclass._module.MyOption())
         && $IsAlloc(x#0, Tclass._module.MyOption(), $Heap)
         && $IsA#_module.MyOption(x#0))
   returns (r#0: int, $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.MyOption(x#0);
  ensures {:id "id34"} _module.MyOption#Equal(x#0, #_module.MyOption.None()) ==> r#0 == LitInt(2);
  free ensures $IsA#_module.MyOption(x#0);
  ensures {:id "id35"} !_module.MyOption#Equal(x#0, #_module.MyOption.None()) ==> r#0 < 2;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Alt() : Ty
uses {
// Tclass._module.Alt Tag
axiom Tag(Tclass._module.Alt()) == Tagclass._module.Alt
   && TagFamily(Tclass._module.Alt()) == tytagFamily$Alt;
}

const unique Tagclass._module.Alt: TyTag;

// Box/unbox axiom for Tclass._module.Alt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Alt()) } 
  $IsBox(bx, Tclass._module.Alt())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Alt()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OrderedTest (correctness)"} Impl$$_module.__default.OrderedTest(x#0: DatatypeType) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#0#1_0: DatatypeType;
  var _mcc#3#1_0_0: int;
  var _mcc#1#1_1_0: int;
  var i#1_1_0: int;
  var let#1_1_0#0#0: int;

    // AddMethodImpl: OrderedTest, Impl$$_module.__default.OrderedTest
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#1_0;
    if (x#0 == #_module.MyOption.Some(_mcc#0#1_0))
    {
        assume $Is(_mcc#0#1_0, Tclass._module.Alt())
           && $IsAlloc(_mcc#0#1_0, Tclass._module.Alt(), $Heap);
        assume true;
        havoc _mcc#3#1_0_0;
        havoc _mcc#1#1_1_0;
        if (_mcc#0#1_0 == #_module.Alt.A(_mcc#1#1_1_0))
        {
            havoc i#1_1_0;
            assume {:id "id38"} let#1_1_0#0#0 == _mcc#1#1_1_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1_1_0#0#0, TInt);
            assume {:id "id39"} i#1_1_0 == let#1_1_0#0#0;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(40,26)
            assume true;
            assume true;
            r#0 := LitInt(0);
        }
        else if (_mcc#0#1_0 == #_module.Alt.B(_mcc#3#1_0_0))
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(41,23)
            assume true;
            assume true;
            r#0 := LitInt(1);
        }
        else
        {
            assume false;
        }
    }
    else if (x#0 == #_module.MyOption.None())
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(42,20)
        assume true;
        assume true;
        r#0 := LitInt(2);
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "VariableTest (well-formedness)"} CheckWellFormed$$_module.__default.VariableTest(x#0: DatatypeType
       where $Is(x#0, Tclass._module.List(TInt))
         && $IsAlloc(x#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(x#0))
   returns (r#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "VariableTest (call)"} Call$$_module.__default.VariableTest(x#0: DatatypeType
       where $Is(x#0, Tclass._module.List(TInt))
         && $IsAlloc(x#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(x#0))
   returns (r#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "VariableTest (correctness)"} Impl$$_module.__default.VariableTest(x#0: DatatypeType
       where $Is(x#0, Tclass._module.List(TInt))
         && $IsAlloc(x#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(x#0))
   returns (r#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "VariableTest (correctness)"} Impl$$_module.__default.VariableTest(x#0: DatatypeType) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: DatatypeType;
  var let#0#0#0: DatatypeType;

    // AddMethodImpl: VariableTest, Impl$$_module.__default.VariableTest
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc a#0;
    assume $Is(a#0, Tclass._module.List(TInt))
       && $IsAlloc(a#0, Tclass._module.List(TInt), $Heap);
    assume {:id "id41"} let#0#0#0 == x#0;
    assume true;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, Tclass._module.List(TInt));
    assume {:id "id42"} a#0 == let#0#0#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(50,15)
    assume $IsA#_module.List(a#0) && $IsA#_module.List(x#0);
    assert {:id "id43"} _module.List#Equal(a#0, x#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(50,32)
    assume true;
    assume true;
    r#0 := LitInt(1);
}



procedure {:verboseName "ConstantTest (well-formedness)"} CheckWellFormed$$_module.__default.ConstantTest(x#0: DatatypeType
       where $Is(x#0, Tclass._module.List(TInt))
         && $IsAlloc(x#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(x#0))
   returns (r#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ConstantTest (call)"} Call$$_module.__default.ConstantTest(x#0: DatatypeType
       where $Is(x#0, Tclass._module.List(TInt))
         && $IsAlloc(x#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(x#0))
   returns (r#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ConstantTest (correctness)"} Impl$$_module.__default.ConstantTest(x#0: DatatypeType
       where $Is(x#0, Tclass._module.List(TInt))
         && $IsAlloc(x#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(x#0))
   returns (r#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SortedInv (well-formedness)"} CheckWellFormed$$_module.__default.SortedInv(z#0: int, 
    l#0: DatatypeType
       where $Is(l#0, Tclass._module.List(TInt))
         && $IsAlloc(l#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(l#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SortedInv (call)"} Call$$_module.__default.SortedInv(z#0: int, 
    l#0: DatatypeType
       where $Is(l#0, Tclass._module.List(TInt))
         && $IsAlloc(l#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(l#0));
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "SortedInv (correctness)"} Impl$$_module.__default.SortedInv(z#0: int, 
    l#0: DatatypeType
       where $Is(l#0, Tclass._module.List(TInt))
         && $IsAlloc(l#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(l#0))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BoolTest (well-formedness)"} CheckWellFormed$$_module.__default.BoolTest(x#0: bool) returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BoolTest (call)"} Call$$_module.__default.BoolTest(x#0: bool) returns (r#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "BoolTest (correctness)"} Impl$$_module.__default.BoolTest(x#0: bool) returns (r#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BoolTest (correctness)"} Impl$$_module.__default.BoolTest(x#0: bool) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: BoolTest, Impl$$_module.__default.BoolTest
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(79,9)
    assume true;
    if (x#0 == Lit(true))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(80,20)
        assume true;
        assume true;
        r#0 := LitInt(0);
    }
    else
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(79,3)
        assume true;
        assert {:id "id69"} {:error "missing case in match statement: not all possibilities for selector of type bool have been covered"} x#0 == Lit(false);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(81,21)
        assume true;
        assume true;
        r#0 := LitInt(1);
    }
}



procedure {:verboseName "IntTest (well-formedness)"} CheckWellFormed$$_module.__default.IntTest(x#0: int) returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "IntTest (call)"} Call$$_module.__default.IntTest(x#0: int) returns (r#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "IntTest (correctness)"} Impl$$_module.__default.IntTest(x#0: int) returns (r#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "StringTest (well-formedness)"} CheckWellFormed$$_module.__default.StringTest(x#0: Seq where $Is(x#0, TSeq(TChar)) && $IsAlloc(x#0, TSeq(TChar), $Heap))
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "StringTest (call)"} Call$$_module.__default.StringTest(x#0: Seq where $Is(x#0, TSeq(TChar)) && $IsAlloc(x#0, TSeq(TChar), $Heap))
   returns (r#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id81"} r#0 == LitInt(2)
     || Seq#Equal(x#0, 
      Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(122))), $Box(char#FromInt(101))), 
          $Box(char#FromInt(114))), 
        $Box(char#FromInt(111))))
     || Seq#Equal(x#0, 
      Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(111))), $Box(char#FromInt(110))), 
        $Box(char#FromInt(101))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "StringTest (correctness)"} Impl$$_module.__default.StringTest(x#0: Seq where $Is(x#0, TSeq(TChar)) && $IsAlloc(x#0, TSeq(TChar), $Heap))
   returns (r#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id82"} r#0 == LitInt(2)
     || Seq#Equal(x#0, 
      Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(122))), $Box(char#FromInt(101))), 
          $Box(char#FromInt(114))), 
        $Box(char#FromInt(111))))
     || Seq#Equal(x#0, 
      Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(111))), $Box(char#FromInt(110))), 
        $Box(char#FromInt(101))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StringTest (correctness)"} Impl$$_module.__default.StringTest(x#0: Seq) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var c#1_1_0: Seq;
  var let#1_1_0#0#0: Seq;

    // AddMethodImpl: StringTest, Impl$$_module.__default.StringTest
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(98,9)
    assume true;
    if (x#0
       == Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(122))), $Box(char#FromInt(101))), 
            $Box(char#FromInt(114))), 
          $Box(char#FromInt(111)))))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(99,22)
        assume true;
        assume true;
        r#0 := LitInt(0);
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(98,9)
        assume true;
        if (x#0
           == Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(111))), $Box(char#FromInt(110))), 
              $Box(char#FromInt(101)))))
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(100,21)
            assume true;
            assume true;
            r#0 := LitInt(1);
        }
        else
        {
            havoc c#1_1_0;
            assume $Is(c#1_1_0, TSeq(TChar)) && $IsAlloc(c#1_1_0, TSeq(TChar), $Heap);
            assume {:id "id85"} let#1_1_0#0#0 == x#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1_1_0#0#0, TSeq(TChar));
            assume {:id "id86"} c#1_1_0 == let#1_1_0#0#0;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(102,17)
            assume true;
            assume true;
            r#0 := LitInt(2);
        }
    }
}



procedure {:verboseName "CharTest (well-formedness)"} CheckWellFormed$$_module.__default.CharTest(x#0: char where $Is(x#0, TChar)) returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CharTest (call)"} Call$$_module.__default.CharTest(x#0: char where $Is(x#0, TChar)) returns (r#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CharTest (correctness)"} Impl$$_module.__default.CharTest(x#0: char where $Is(x#0, TChar)) returns (r#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "RealTest (well-formedness)"} CheckWellFormed$$_module.__default.RealTest(x#0: real) returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "RealTest (call)"} Call$$_module.__default.RealTest(x#0: real) returns (r#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "RealTest (correctness)"} Impl$$_module.__default.RealTest(x#0: real) returns (r#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NewTypeTest (well-formedness)"} CheckWellFormed$$_module.__default.NewTypeTest() returns (r#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NewTypeTest (call)"} Call$$_module.__default.NewTypeTest() returns (r#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id99"} r#0 == LitInt(1);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NewTypeTest (correctness)"} Impl$$_module.__default.NewTypeTest() returns (r#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id100"} r#0 == LitInt(1);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NewTypeTest (correctness)"} Impl$$_module.__default.NewTypeTest() returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var u#0: int where u#0 == LitInt(0) || u#0 == LitInt(3) || u#0 == LitInt(7);
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#1_0: int;
  var newtype$check#1_1_0: int;

    // AddMethodImpl: NewTypeTest, Impl$$_module.__default.NewTypeTest
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(129,12)
    assume true;
    newtype$check#0 := LitInt(3);
    assert {:id "id101"} newtype$check#0 == LitInt(0)
       || newtype$check#0 == LitInt(3)
       || newtype$check#0 == LitInt(7);
    assume true;
    u#0 := LitInt(3);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(130,9)
    newtype$check#1 := LitInt(0);
    assert {:id "id103"} newtype$check#1 == LitInt(0)
       || newtype$check#1 == LitInt(3)
       || newtype$check#1 == LitInt(7);
    assume true;
    if (u#0 == LitInt(0))
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(131,17)
        assume true;
        assume true;
        r#0 := LitInt(0);
        pop;
    }
    else
    {
        push;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(130,9)
        newtype$check#1_0 := LitInt(3);
        assert {:id "id105"} newtype$check#1_0 == LitInt(0)
           || newtype$check#1_0 == LitInt(3)
           || newtype$check#1_0 == LitInt(7);
        assume true;
        if (u#0 == LitInt(3))
        {
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(132,17)
            assume true;
            assume true;
            r#0 := LitInt(1);
            pop;
        }
        else
        {
            push;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(130,3)
            newtype$check#1_1_0 := LitInt(7);
            assert {:id "id107"} newtype$check#1_1_0 == LitInt(0)
               || newtype$check#1_1_0 == LitInt(3)
               || newtype$check#1_1_0 == LitInt(7);
            assume true;
            assert {:id "id108"} {:error "missing case in match statement: not all possibilities for selector of type N have been covered"} u#0 == LitInt(7);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(133,17)
            assume true;
            assume true;
            r#0 := LitInt(2);
            pop;
        }

        pop;
    }

    // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(135,3)
    return;
}



function Tclass._module.PairOfNumbers() : Ty
uses {
// Tclass._module.PairOfNumbers Tag
axiom Tag(Tclass._module.PairOfNumbers()) == Tagclass._module.PairOfNumbers
   && TagFamily(Tclass._module.PairOfNumbers()) == tytagFamily$PairOfNumbers;
}

const unique Tagclass._module.PairOfNumbers: TyTag;

// Box/unbox axiom for Tclass._module.PairOfNumbers
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.PairOfNumbers()) } 
  $IsBox(bx, Tclass._module.PairOfNumbers())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.PairOfNumbers()));

procedure {:verboseName "M (well-formedness)"} CheckWellFormed$$_module.__default.M(p#0: DatatypeType
       where $Is(p#0, Tclass._module.PairOfNumbers())
         && $IsAlloc(p#0, Tclass._module.PairOfNumbers(), $Heap)
         && $IsA#_module.PairOfNumbers(p#0))
   returns (r#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M (call)"} Call$$_module.__default.M(p#0: DatatypeType
       where $Is(p#0, Tclass._module.PairOfNumbers())
         && $IsAlloc(p#0, Tclass._module.PairOfNumbers(), $Heap)
         && $IsA#_module.PairOfNumbers(p#0))
   returns (r#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.PairOfNumbers.P_q(p#0)
     && (_module.PairOfNumbers._0(p#0) == LitInt(11) ==> _module.PairOfNumbers.P_q(p#0));
  ensures {:id "id123"} _module.PairOfNumbers._0(p#0) == LitInt(11)
       && _module.PairOfNumbers._1(p#0) == LitInt(10)
     ==> r#0 == LitInt(0);
  free ensures _module.PairOfNumbers.P_q(p#0)
     && (_module.PairOfNumbers._0(p#0) == LitInt(11) ==> _module.PairOfNumbers.P_q(p#0));
  ensures {:id "id124"} _module.PairOfNumbers._0(p#0) == LitInt(11)
       && _module.PairOfNumbers._1(p#0) != 10
     ==> r#0 == LitInt(1);
  free ensures _module.PairOfNumbers.P_q(p#0)
     && (_module.PairOfNumbers._0(p#0) != LitInt(11) ==> _module.PairOfNumbers.P_q(p#0));
  ensures {:id "id125"} _module.PairOfNumbers._0(p#0) == LitInt(11)
     || _module.PairOfNumbers._1(p#0) == LitInt(11)
     || r#0 == LitInt(3);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M (correctness)"} Impl$$_module.__default.M(p#0: DatatypeType
       where $Is(p#0, Tclass._module.PairOfNumbers())
         && $IsAlloc(p#0, Tclass._module.PairOfNumbers(), $Heap)
         && $IsA#_module.PairOfNumbers(p#0))
   returns (r#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.PairOfNumbers.P_q(p#0)
     && (_module.PairOfNumbers._0(p#0) == LitInt(11) ==> _module.PairOfNumbers.P_q(p#0));
  ensures {:id "id126"} _module.PairOfNumbers._0(p#0) == LitInt(11)
       && _module.PairOfNumbers._1(p#0) == LitInt(10)
     ==> r#0 == LitInt(0);
  free ensures _module.PairOfNumbers.P_q(p#0)
     && (_module.PairOfNumbers._0(p#0) == LitInt(11) ==> _module.PairOfNumbers.P_q(p#0));
  ensures {:id "id127"} _module.PairOfNumbers._0(p#0) == LitInt(11)
       && _module.PairOfNumbers._1(p#0) != 10
     ==> r#0 == LitInt(1);
  free ensures _module.PairOfNumbers.P_q(p#0)
     && (_module.PairOfNumbers._0(p#0) != LitInt(11) ==> _module.PairOfNumbers.P_q(p#0));
  ensures {:id "id128"} _module.PairOfNumbers._0(p#0) == LitInt(11)
     || _module.PairOfNumbers._1(p#0) == LitInt(11)
     || r#0 == LitInt(3);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M (correctness)"} Impl$$_module.__default.M(p#0: DatatypeType) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#0#0_0: int;
  var _mcc#1#0_0: int;
  var a#0_0_1_0: int;
  var let#0_0_1_0#0#0: int;

    // AddMethodImpl: M, Impl$$_module.__default.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (p#0 == #_module.PairOfNumbers.P(_mcc#0#0_0, _mcc#1#0_0))
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(144,9)
        assume true;
        if (_mcc#0#0_0 == LitInt(11))
        {
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(144,9)
            assume true;
            if (_mcc#1#0_0 == LitInt(10))
            {
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(145,21)
                assume _module.PairOfNumbers.P_q(p#0);
                assume _module.PairOfNumbers.P_q(p#0);
                assert {:id "id129"} _module.PairOfNumbers._0(p#0) != 10;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(145,41)
                assume true;
                assume true;
                r#0 := LitInt(0);
            }
            else
            {
                havoc a#0_0_1_0;
                assume {:id "id131"} let#0_0_1_0#0#0 == _mcc#1#0_0;
                assume true;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#0_0_1_0#0#0, TInt);
                assume {:id "id132"} a#0_0_1_0 == let#0_0_1_0#0#0;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(146,22)
                assume true;
                assume true;
                r#0 := LitInt(1);
            }
        }
        else
        {
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(144,9)
            assume true;
            if (_mcc#0#0_0 == LitInt(10))
            {
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(144,9)
                assume true;
                if (_mcc#1#0_0 == LitInt(11))
                {
                    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(147,21)
                    assume _module.PairOfNumbers.P_q(p#0);
                    assume _module.PairOfNumbers.P_q(p#0);
                    assert {:id "id134"} _module.PairOfNumbers._1(p#0) == LitInt(11);
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(147,41)
                    assume true;
                    assume true;
                    r#0 := LitInt(2);
                }
                else
                {
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(148,15)
                    assume true;
                    assume true;
                    r#0 := LitInt(3);
                }
            }
            else
            {
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(148,15)
                assume true;
                assume true;
                r#0 := LitInt(3);
            }
        }
    }
    else
    {
        assume false;
    }
}



function Tclass._module.Tree() : Ty
uses {
// Tclass._module.Tree Tag
axiom Tag(Tclass._module.Tree()) == Tagclass._module.Tree
   && TagFamily(Tclass._module.Tree()) == tytagFamily$Tree;
}

const unique Tagclass._module.Tree: TyTag;

// Box/unbox axiom for Tclass._module.Tree
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Tree()) } 
  $IsBox(bx, Tclass._module.Tree())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Tree()));

procedure {:verboseName "MultipleNestedMatch (well-formedness)"} CheckWellFormed$$_module.__default.MultipleNestedMatch(x#0: DatatypeType
       where $Is(x#0, Tclass._module.Alt())
         && $IsAlloc(x#0, Tclass._module.Alt(), $Heap)
         && $IsA#_module.Alt(x#0), 
    y#0: DatatypeType
       where $Is(y#0, Tclass._module.Tree())
         && $IsAlloc(y#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(y#0), 
    z#0: DatatypeType
       where $Is(z#0, Tclass._module.List(Tclass._System.nat()))
         && $IsAlloc(z#0, Tclass._module.List(Tclass._System.nat()), $Heap)
         && $IsA#_module.List(z#0))
   returns (r#0: int where LitInt(0) <= r#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultipleNestedMatch (call)"} Call$$_module.__default.MultipleNestedMatch(x#0: DatatypeType
       where $Is(x#0, Tclass._module.Alt())
         && $IsAlloc(x#0, Tclass._module.Alt(), $Heap)
         && $IsA#_module.Alt(x#0), 
    y#0: DatatypeType
       where $Is(y#0, Tclass._module.Tree())
         && $IsAlloc(y#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(y#0), 
    z#0: DatatypeType
       where $Is(z#0, Tclass._module.List(Tclass._System.nat()))
         && $IsAlloc(z#0, Tclass._module.List(Tclass._System.nat()), $Heap)
         && $IsA#_module.List(z#0))
   returns (r#0: int where LitInt(0) <= r#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultipleNestedMatch (correctness)"} Impl$$_module.__default.MultipleNestedMatch(x#0: DatatypeType
       where $Is(x#0, Tclass._module.Alt())
         && $IsAlloc(x#0, Tclass._module.Alt(), $Heap)
         && $IsA#_module.Alt(x#0), 
    y#0: DatatypeType
       where $Is(y#0, Tclass._module.Tree())
         && $IsAlloc(y#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(y#0), 
    z#0: DatatypeType
       where $Is(z#0, Tclass._module.List(Tclass._System.nat()))
         && $IsAlloc(z#0, Tclass._module.List(Tclass._System.nat()), $Heap)
         && $IsA#_module.List(z#0))
   returns (r#0: int where LitInt(0) <= r#0, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultipleNestedMatch (correctness)"} Impl$$_module.__default.MultipleNestedMatch(x#0: DatatypeType, y#0: DatatypeType, z#0: DatatypeType)
   returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#1#0_0: int;
  var i#0_0: int;
  var let#0_0#0#0: int;
  var _mcc#0#1_0: int;
  var i#1_0: int;
  var let#1_0#0#0: int;
  var _mcc#2#1_0_0: DatatypeType;
  var _mcc#3#1_0_0: bool;
  var _mcc#4#1_0_0: DatatypeType;
  var _mcc#14#1_0_0_0: DatatypeType;
  var _mcc#15#1_0_0_0: bool;
  var _mcc#16#1_0_0_0: DatatypeType;
  var _mcc#23#1_0_0_0_0: DatatypeType;
  var _mcc#24#1_0_0_0_0: bool;
  var _mcc#25#1_0_0_0_0: DatatypeType;
  var b#1_0_0_0_0: bool;
  var let#1_0_0_0_0#0#0: bool;
  var _mcc#48#1_0_0_0_0_0: bool;
  var _mcc#49#1_0_0_0_0_0: DatatypeType;
  var _mcc#50#1_0_0_0_0_0_0_0: int;
  var _mcc#51#1_0_0_0_0_0_0_0: DatatypeType;
  var n#1_0_0_0_0_0_0_0: int;
  var let#1_0_0_0_0_0_0_0#0#0: int;
  var _mcc#52#1_0_0_0_0_1_0_0_0: int;
  var _mcc#53#1_0_0_0_0_1_0_0_0: DatatypeType;
  var n#1_0_0_0_0_1_0_0_0: int;
  var let#1_0_0_0_0_1_0_0_0#0#0: int;
  var a#1_0_0_0_0_1_1_0#0#0: Box;
  var a#1_0_0_0_0_1_1_0#1#0: DatatypeType;
  var b#1_0_0_1_0: bool;
  var let#1_0_0_1_0#0#0: bool;
  var _mcc#40#1_0_0_1_0_0: bool;
  var _mcc#41#1_0_0_1_0_0: DatatypeType;
  var _mcc#42#1_0_0_1_0_0_0_0: int;
  var _mcc#43#1_0_0_1_0_0_0_0: DatatypeType;
  var n#1_0_0_1_0_0_0_0: int;
  var let#1_0_0_1_0_0_0_0#0#0: int;
  var _mcc#44#1_0_0_1_0_1_0_0_0: int;
  var _mcc#45#1_0_0_1_0_1_0_0_0: DatatypeType;
  var n#1_0_0_1_0_1_0_0_0: int;
  var let#1_0_0_1_0_1_0_0_0#0#0: int;
  var a#1_0_0_1_0_1_1_0#0#0: Box;
  var a#1_0_0_1_0_1_1_0#1#0: DatatypeType;
  var _mcc#8#1_0_1_0_0: DatatypeType;
  var _mcc#9#1_0_1_0_0: bool;
  var _mcc#10#1_0_1_0_0: DatatypeType;
  var b#1_0_1_0_0: bool;
  var let#1_0_1_0_0#0#0: bool;
  var _mcc#32#1_0_1_0_0_0: bool;
  var _mcc#33#1_0_1_0_0_0: DatatypeType;
  var _mcc#34#1_0_1_0_0_0_0_0: int;
  var _mcc#35#1_0_1_0_0_0_0_0: DatatypeType;
  var n#1_0_1_0_0_0_0_0: int;
  var let#1_0_1_0_0_0_0_0#0#0: int;
  var _mcc#36#1_0_1_0_0_1_0_0_0: int;
  var _mcc#37#1_0_1_0_0_1_0_0_0: DatatypeType;
  var n#1_0_1_0_0_1_0_0_0: int;
  var let#1_0_1_0_0_1_0_0_0#0#0: int;
  var a#1_0_1_0_0_1_1_0#0#0: Box;
  var a#1_0_1_0_0_1_1_0#1#0: DatatypeType;

    // AddMethodImpl: MultipleNestedMatch, Impl$$_module.__default.MultipleNestedMatch
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#1#0_0;
    havoc _mcc#0#1_0;
    if (x#0 == #_module.Alt.A(_mcc#0#1_0))
    {
        havoc i#1_0;
        assume {:id "id142"} let#1_0#0#0 == _mcc#0#1_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_0#0#0, TInt);
        assume {:id "id143"} i#1_0 == let#1_0#0#0;
        assume true;
        havoc _mcc#2#1_0_0, _mcc#3#1_0_0, _mcc#4#1_0_0;
        if (y#0 == #_module.Tree.Leaf())
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(170,14)
            assume true;
            assert {:id "id194"} $Is(LitInt(0), Tclass._System.nat());
            assume true;
            r#0 := LitInt(0);
        }
        else if (y#0 == #_module.Tree.Branch(_mcc#2#1_0_0, _mcc#3#1_0_0, _mcc#4#1_0_0))
        {
            assume $Is(_mcc#2#1_0_0, Tclass._module.Tree())
               && $IsAlloc(_mcc#2#1_0_0, Tclass._module.Tree(), $Heap);
            assume $Is(_mcc#4#1_0_0, Tclass._module.Tree())
               && $IsAlloc(_mcc#4#1_0_0, Tclass._module.Tree(), $Heap);
            assume true;
            havoc _mcc#14#1_0_0_0, _mcc#15#1_0_0_0, _mcc#16#1_0_0_0;
            if (_mcc#2#1_0_0 == #_module.Tree.Leaf())
            {
                assume true;
                havoc _mcc#8#1_0_1_0_0, _mcc#9#1_0_1_0_0, _mcc#10#1_0_1_0_0;
                if (_mcc#4#1_0_0 == #_module.Tree.Leaf())
                {
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(170,14)
                    assume true;
                    assert {:id "id192"} $Is(LitInt(0), Tclass._System.nat());
                    assume true;
                    r#0 := LitInt(0);
                }
                else if (_mcc#4#1_0_0
                   == #_module.Tree.Branch(_mcc#8#1_0_1_0_0, _mcc#9#1_0_1_0_0, _mcc#10#1_0_1_0_0))
                {
                    assume $Is(_mcc#8#1_0_1_0_0, Tclass._module.Tree())
                       && $IsAlloc(_mcc#8#1_0_1_0_0, Tclass._module.Tree(), $Heap);
                    assume $Is(_mcc#10#1_0_1_0_0, Tclass._module.Tree())
                       && $IsAlloc(_mcc#10#1_0_1_0_0, Tclass._module.Tree(), $Heap);
                    havoc b#1_0_1_0_0;
                    assume {:id "id176"} let#1_0_1_0_0#0#0 == _mcc#9#1_0_1_0_0;
                    assume true;
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(let#1_0_1_0_0#0#0, TBool);
                    assume {:id "id177"} b#1_0_1_0_0 == let#1_0_1_0_0#0#0;
                    assume true;
                    havoc _mcc#32#1_0_1_0_0_0, _mcc#33#1_0_1_0_0_0;
                    if (#_System._tuple#2._#Make2($Box(b#1_0_1_0_0), $Box(z#0))
                       == #_System._tuple#2._#Make2($Box(_mcc#32#1_0_1_0_0_0), $Box(_mcc#33#1_0_1_0_0_0)))
                    {
                        assume $Is(_mcc#33#1_0_1_0_0_0, Tclass._module.List(Tclass._System.nat()))
                           && $IsAlloc(_mcc#33#1_0_1_0_0_0, Tclass._module.List(Tclass._System.nat()), $Heap);
                        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(159,10)
                        assume true;
                        if (_mcc#32#1_0_1_0_0_0 == Lit(true))
                        {
                            assume true;
                            havoc _mcc#34#1_0_1_0_0_0_0_0, _mcc#35#1_0_1_0_0_0_0_0;
                            if (_mcc#33#1_0_1_0_0_0 == #_module.List.Nil())
                            {
                                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(161,25)
                                assume true;
                                assert {:id "id181"} $Is(LitInt(1), Tclass._System.nat());
                                assume true;
                                r#0 := LitInt(1);
                            }
                            else if (_mcc#33#1_0_1_0_0_0
                               == #_module.List.Cons($Box(_mcc#34#1_0_1_0_0_0_0_0), _mcc#35#1_0_1_0_0_0_0_0))
                            {
                                assume LitInt(0) <= _mcc#34#1_0_1_0_0_0_0_0;
                                assume $Is(_mcc#35#1_0_1_0_0_0_0_0, Tclass._module.List(Tclass._System.nat()))
                                   && $IsAlloc(_mcc#35#1_0_1_0_0_0_0_0, Tclass._module.List(Tclass._System.nat()), $Heap);
                                havoc n#1_0_1_0_0_0_0_0;
                                assume LitInt(0) <= n#1_0_1_0_0_0_0_0;
                                assume {:id "id178"} let#1_0_1_0_0_0_0_0#0#0 == _mcc#34#1_0_1_0_0_0_0_0;
                                assume true;
                                assume true;
                                // CheckWellformedWithResult: any expression
                                assume $Is(let#1_0_1_0_0_0_0_0#0#0, Tclass._System.nat());
                                assume {:id "id179"} n#1_0_1_0_0_0_0_0 == let#1_0_1_0_0_0_0_0#0#0;
                                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(160,35)
                                assume true;
                                assume true;
                                r#0 := n#1_0_1_0_0_0_0_0;
                            }
                            else
                            {
                                assume false;
                            }
                        }
                        else
                        {
                            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(159,10)
                            assume true;
                            if (_mcc#32#1_0_1_0_0_0 == Lit(false))
                            {
                                assume true;
                                havoc _mcc#36#1_0_1_0_0_1_0_0_0, _mcc#37#1_0_1_0_0_1_0_0_0;
                                if (_mcc#33#1_0_1_0_0_0 == #_module.List.Nil())
                                {
                                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(161,25)
                                    assume true;
                                    assert {:id "id187"} $Is(LitInt(1), Tclass._System.nat());
                                    assume true;
                                    r#0 := LitInt(1);
                                }
                                else if (_mcc#33#1_0_1_0_0_0
                                   == #_module.List.Cons($Box(_mcc#36#1_0_1_0_0_1_0_0_0), _mcc#37#1_0_1_0_0_1_0_0_0))
                                {
                                    assume LitInt(0) <= _mcc#36#1_0_1_0_0_1_0_0_0;
                                    assume $Is(_mcc#37#1_0_1_0_0_1_0_0_0, Tclass._module.List(Tclass._System.nat()))
                                       && $IsAlloc(_mcc#37#1_0_1_0_0_1_0_0_0, Tclass._module.List(Tclass._System.nat()), $Heap);
                                    havoc n#1_0_1_0_0_1_0_0_0;
                                    assume LitInt(0) <= n#1_0_1_0_0_1_0_0_0;
                                    assume {:id "id183"} let#1_0_1_0_0_1_0_0_0#0#0 == _mcc#36#1_0_1_0_0_1_0_0_0;
                                    assume true;
                                    assume true;
                                    // CheckWellformedWithResult: any expression
                                    assume $Is(let#1_0_1_0_0_1_0_0_0#0#0, Tclass._System.nat());
                                    assume {:id "id184"} n#1_0_1_0_0_1_0_0_0 == let#1_0_1_0_0_1_0_0_0#0#0;
                                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(162,36)
                                    assume true;
                                    assert {:id "id185"} $Is(n#1_0_1_0_0_1_0_0_0 + 1, Tclass._System.nat());
                                    assume true;
                                    r#0 := n#1_0_1_0_0_1_0_0_0 + 1;
                                }
                                else
                                {
                                    assume false;
                                }
                            }
                            else
                            {
                                assume true;
                                havoc a#1_0_1_0_0_1_1_0#0#0, a#1_0_1_0_0_1_1_0#1#0;
                                if (_mcc#33#1_0_1_0_0_0 == #_module.List.Nil())
                                {
                                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(161,25)
                                    assume true;
                                    assert {:id "id190"} $Is(LitInt(1), Tclass._System.nat());
                                    assume true;
                                    r#0 := LitInt(1);
                                }
                                else if (_mcc#33#1_0_1_0_0_0
                                   == #_module.List.Cons(a#1_0_1_0_0_1_1_0#0#0, a#1_0_1_0_0_1_1_0#1#0))
                                {
                                    assert {:id "id189"} false;
                                }
                                else
                                {
                                    assume false;
                                }
                            }
                        }
                    }
                    else
                    {
                        assume false;
                    }
                }
                else
                {
                    assume false;
                }
            }
            else if (_mcc#2#1_0_0
               == #_module.Tree.Branch(_mcc#14#1_0_0_0, _mcc#15#1_0_0_0, _mcc#16#1_0_0_0))
            {
                assume $Is(_mcc#14#1_0_0_0, Tclass._module.Tree())
                   && $IsAlloc(_mcc#14#1_0_0_0, Tclass._module.Tree(), $Heap);
                assume $Is(_mcc#16#1_0_0_0, Tclass._module.Tree())
                   && $IsAlloc(_mcc#16#1_0_0_0, Tclass._module.Tree(), $Heap);
                assume true;
                havoc _mcc#23#1_0_0_0_0, _mcc#24#1_0_0_0_0, _mcc#25#1_0_0_0_0;
                if (_mcc#4#1_0_0 == #_module.Tree.Leaf())
                {
                    havoc b#1_0_0_1_0;
                    assume {:id "id160"} let#1_0_0_1_0#0#0 == _mcc#15#1_0_0_0;
                    assume true;
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(let#1_0_0_1_0#0#0, TBool);
                    assume {:id "id161"} b#1_0_0_1_0 == let#1_0_0_1_0#0#0;
                    assume true;
                    havoc _mcc#40#1_0_0_1_0_0, _mcc#41#1_0_0_1_0_0;
                    if (#_System._tuple#2._#Make2($Box(b#1_0_0_1_0), $Box(z#0))
                       == #_System._tuple#2._#Make2($Box(_mcc#40#1_0_0_1_0_0), $Box(_mcc#41#1_0_0_1_0_0)))
                    {
                        assume $Is(_mcc#41#1_0_0_1_0_0, Tclass._module.List(Tclass._System.nat()))
                           && $IsAlloc(_mcc#41#1_0_0_1_0_0, Tclass._module.List(Tclass._System.nat()), $Heap);
                        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(165,10)
                        assume true;
                        if (_mcc#40#1_0_0_1_0_0 == Lit(true))
                        {
                            assume true;
                            havoc _mcc#42#1_0_0_1_0_0_0_0, _mcc#43#1_0_0_1_0_0_0_0;
                            if (_mcc#41#1_0_0_1_0_0 == #_module.List.Nil())
                            {
                                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(168,25)
                                assume true;
                                assert {:id "id165"} $Is(LitInt(2), Tclass._System.nat());
                                assume true;
                                r#0 := LitInt(2);
                            }
                            else if (_mcc#41#1_0_0_1_0_0
                               == #_module.List.Cons($Box(_mcc#42#1_0_0_1_0_0_0_0), _mcc#43#1_0_0_1_0_0_0_0))
                            {
                                assume LitInt(0) <= _mcc#42#1_0_0_1_0_0_0_0;
                                assume $Is(_mcc#43#1_0_0_1_0_0_0_0, Tclass._module.List(Tclass._System.nat()))
                                   && $IsAlloc(_mcc#43#1_0_0_1_0_0_0_0, Tclass._module.List(Tclass._System.nat()), $Heap);
                                havoc n#1_0_0_1_0_0_0_0;
                                assume LitInt(0) <= n#1_0_0_1_0_0_0_0;
                                assume {:id "id162"} let#1_0_0_1_0_0_0_0#0#0 == _mcc#42#1_0_0_1_0_0_0_0;
                                assume true;
                                assume true;
                                // CheckWellformedWithResult: any expression
                                assume $Is(let#1_0_0_1_0_0_0_0#0#0, Tclass._System.nat());
                                assume {:id "id163"} n#1_0_0_1_0_0_0_0 == let#1_0_0_1_0_0_0_0#0#0;
                                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(166,35)
                                assume true;
                                assume true;
                                r#0 := n#1_0_0_1_0_0_0_0;
                            }
                            else
                            {
                                assume false;
                            }
                        }
                        else
                        {
                            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(165,10)
                            assume true;
                            if (_mcc#40#1_0_0_1_0_0 == Lit(false))
                            {
                                assume true;
                                havoc _mcc#44#1_0_0_1_0_1_0_0_0, _mcc#45#1_0_0_1_0_1_0_0_0;
                                if (_mcc#41#1_0_0_1_0_0 == #_module.List.Nil())
                                {
                                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(168,25)
                                    assume true;
                                    assert {:id "id171"} $Is(LitInt(2), Tclass._System.nat());
                                    assume true;
                                    r#0 := LitInt(2);
                                }
                                else if (_mcc#41#1_0_0_1_0_0
                                   == #_module.List.Cons($Box(_mcc#44#1_0_0_1_0_1_0_0_0), _mcc#45#1_0_0_1_0_1_0_0_0))
                                {
                                    assume LitInt(0) <= _mcc#44#1_0_0_1_0_1_0_0_0;
                                    assume $Is(_mcc#45#1_0_0_1_0_1_0_0_0, Tclass._module.List(Tclass._System.nat()))
                                       && $IsAlloc(_mcc#45#1_0_0_1_0_1_0_0_0, Tclass._module.List(Tclass._System.nat()), $Heap);
                                    havoc n#1_0_0_1_0_1_0_0_0;
                                    assume LitInt(0) <= n#1_0_0_1_0_1_0_0_0;
                                    assume {:id "id167"} let#1_0_0_1_0_1_0_0_0#0#0 == _mcc#44#1_0_0_1_0_1_0_0_0;
                                    assume true;
                                    assume true;
                                    // CheckWellformedWithResult: any expression
                                    assume $Is(let#1_0_0_1_0_1_0_0_0#0#0, Tclass._System.nat());
                                    assume {:id "id168"} n#1_0_0_1_0_1_0_0_0 == let#1_0_0_1_0_1_0_0_0#0#0;
                                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(167,36)
                                    assume true;
                                    assert {:id "id169"} $Is(n#1_0_0_1_0_1_0_0_0 + 1, Tclass._System.nat());
                                    assume true;
                                    r#0 := n#1_0_0_1_0_1_0_0_0 + 1;
                                }
                                else
                                {
                                    assume false;
                                }
                            }
                            else
                            {
                                assume true;
                                havoc a#1_0_0_1_0_1_1_0#0#0, a#1_0_0_1_0_1_1_0#1#0;
                                if (_mcc#41#1_0_0_1_0_0 == #_module.List.Nil())
                                {
                                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(168,25)
                                    assume true;
                                    assert {:id "id174"} $Is(LitInt(2), Tclass._System.nat());
                                    assume true;
                                    r#0 := LitInt(2);
                                }
                                else if (_mcc#41#1_0_0_1_0_0
                                   == #_module.List.Cons(a#1_0_0_1_0_1_1_0#0#0, a#1_0_0_1_0_1_1_0#1#0))
                                {
                                    assert {:id "id173"} false;
                                }
                                else
                                {
                                    assume false;
                                }
                            }
                        }
                    }
                    else
                    {
                        assume false;
                    }
                }
                else if (_mcc#4#1_0_0
                   == #_module.Tree.Branch(_mcc#23#1_0_0_0_0, _mcc#24#1_0_0_0_0, _mcc#25#1_0_0_0_0))
                {
                    assume $Is(_mcc#23#1_0_0_0_0, Tclass._module.Tree())
                       && $IsAlloc(_mcc#23#1_0_0_0_0, Tclass._module.Tree(), $Heap);
                    assume $Is(_mcc#25#1_0_0_0_0, Tclass._module.Tree())
                       && $IsAlloc(_mcc#25#1_0_0_0_0, Tclass._module.Tree(), $Heap);
                    havoc b#1_0_0_0_0;
                    assume {:id "id144"} let#1_0_0_0_0#0#0 == _mcc#24#1_0_0_0_0;
                    assume true;
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(let#1_0_0_0_0#0#0, TBool);
                    assume {:id "id145"} b#1_0_0_0_0 == let#1_0_0_0_0#0#0;
                    assume true;
                    havoc _mcc#48#1_0_0_0_0_0, _mcc#49#1_0_0_0_0_0;
                    if (#_System._tuple#2._#Make2($Box(b#1_0_0_0_0), $Box(z#0))
                       == #_System._tuple#2._#Make2($Box(_mcc#48#1_0_0_0_0_0), $Box(_mcc#49#1_0_0_0_0_0)))
                    {
                        assume $Is(_mcc#49#1_0_0_0_0_0, Tclass._module.List(Tclass._System.nat()))
                           && $IsAlloc(_mcc#49#1_0_0_0_0_0, Tclass._module.List(Tclass._System.nat()), $Heap);
                        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(159,10)
                        assume true;
                        if (_mcc#48#1_0_0_0_0_0 == Lit(true))
                        {
                            assume true;
                            havoc _mcc#50#1_0_0_0_0_0_0_0, _mcc#51#1_0_0_0_0_0_0_0;
                            if (_mcc#49#1_0_0_0_0_0 == #_module.List.Nil())
                            {
                                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(161,25)
                                assume true;
                                assert {:id "id149"} $Is(LitInt(1), Tclass._System.nat());
                                assume true;
                                r#0 := LitInt(1);
                            }
                            else if (_mcc#49#1_0_0_0_0_0
                               == #_module.List.Cons($Box(_mcc#50#1_0_0_0_0_0_0_0), _mcc#51#1_0_0_0_0_0_0_0))
                            {
                                assume LitInt(0) <= _mcc#50#1_0_0_0_0_0_0_0;
                                assume $Is(_mcc#51#1_0_0_0_0_0_0_0, Tclass._module.List(Tclass._System.nat()))
                                   && $IsAlloc(_mcc#51#1_0_0_0_0_0_0_0, Tclass._module.List(Tclass._System.nat()), $Heap);
                                havoc n#1_0_0_0_0_0_0_0;
                                assume LitInt(0) <= n#1_0_0_0_0_0_0_0;
                                assume {:id "id146"} let#1_0_0_0_0_0_0_0#0#0 == _mcc#50#1_0_0_0_0_0_0_0;
                                assume true;
                                assume true;
                                // CheckWellformedWithResult: any expression
                                assume $Is(let#1_0_0_0_0_0_0_0#0#0, Tclass._System.nat());
                                assume {:id "id147"} n#1_0_0_0_0_0_0_0 == let#1_0_0_0_0_0_0_0#0#0;
                                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(160,35)
                                assume true;
                                assume true;
                                r#0 := n#1_0_0_0_0_0_0_0;
                            }
                            else
                            {
                                assume false;
                            }
                        }
                        else
                        {
                            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(159,10)
                            assume true;
                            if (_mcc#48#1_0_0_0_0_0 == Lit(false))
                            {
                                assume true;
                                havoc _mcc#52#1_0_0_0_0_1_0_0_0, _mcc#53#1_0_0_0_0_1_0_0_0;
                                if (_mcc#49#1_0_0_0_0_0 == #_module.List.Nil())
                                {
                                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(161,25)
                                    assume true;
                                    assert {:id "id155"} $Is(LitInt(1), Tclass._System.nat());
                                    assume true;
                                    r#0 := LitInt(1);
                                }
                                else if (_mcc#49#1_0_0_0_0_0
                                   == #_module.List.Cons($Box(_mcc#52#1_0_0_0_0_1_0_0_0), _mcc#53#1_0_0_0_0_1_0_0_0))
                                {
                                    assume LitInt(0) <= _mcc#52#1_0_0_0_0_1_0_0_0;
                                    assume $Is(_mcc#53#1_0_0_0_0_1_0_0_0, Tclass._module.List(Tclass._System.nat()))
                                       && $IsAlloc(_mcc#53#1_0_0_0_0_1_0_0_0, Tclass._module.List(Tclass._System.nat()), $Heap);
                                    havoc n#1_0_0_0_0_1_0_0_0;
                                    assume LitInt(0) <= n#1_0_0_0_0_1_0_0_0;
                                    assume {:id "id151"} let#1_0_0_0_0_1_0_0_0#0#0 == _mcc#52#1_0_0_0_0_1_0_0_0;
                                    assume true;
                                    assume true;
                                    // CheckWellformedWithResult: any expression
                                    assume $Is(let#1_0_0_0_0_1_0_0_0#0#0, Tclass._System.nat());
                                    assume {:id "id152"} n#1_0_0_0_0_1_0_0_0 == let#1_0_0_0_0_1_0_0_0#0#0;
                                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(162,36)
                                    assume true;
                                    assert {:id "id153"} $Is(n#1_0_0_0_0_1_0_0_0 + 1, Tclass._System.nat());
                                    assume true;
                                    r#0 := n#1_0_0_0_0_1_0_0_0 + 1;
                                }
                                else
                                {
                                    assume false;
                                }
                            }
                            else
                            {
                                assume true;
                                havoc a#1_0_0_0_0_1_1_0#0#0, a#1_0_0_0_0_1_1_0#1#0;
                                if (_mcc#49#1_0_0_0_0_0 == #_module.List.Nil())
                                {
                                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(161,25)
                                    assume true;
                                    assert {:id "id158"} $Is(LitInt(1), Tclass._System.nat());
                                    assume true;
                                    r#0 := LitInt(1);
                                }
                                else if (_mcc#49#1_0_0_0_0_0
                                   == #_module.List.Cons(a#1_0_0_0_0_1_1_0#0#0, a#1_0_0_0_0_1_1_0#1#0))
                                {
                                    assert {:id "id157"} false;
                                }
                                else
                                {
                                    assume false;
                                }
                            }
                        }
                    }
                    else
                    {
                        assume false;
                    }
                }
                else
                {
                    assume false;
                }
            }
            else
            {
                assume false;
            }
        }
        else
        {
            assume false;
        }
    }
    else if (x#0 == #_module.Alt.B(_mcc#1#0_0))
    {
        havoc i#0_0;
        assume {:id "id138"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, TInt);
        assume {:id "id139"} i#0_0 == let#0_0#0#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(172,20)
        assume true;
        assert {:id "id140"} $Is(LitInt(3), Tclass._System.nat());
        assume true;
        r#0 := LitInt(3);
    }
    else
    {
        assume false;
    }
}



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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var aa#0: DatatypeType
     where $Is(aa#0, Tclass._module.List(TInt))
       && $IsAlloc(aa#0, Tclass._module.List(TInt), $Heap);
  var bb#0: DatatypeType
     where $Is(bb#0, Tclass._module.List(TInt))
       && $IsAlloc(bb#0, Tclass._module.List(TInt), $Heap);
  var cc#0: DatatypeType
     where $Is(cc#0, Tclass._module.List(TInt))
       && $IsAlloc(cc#0, Tclass._module.List(TInt), $Heap);
  var dd#0: DatatypeType
     where $Is(dd#0, Tclass._module.List(TInt))
       && $IsAlloc(dd#0, Tclass._module.List(TInt), $Heap);
  var ee#0: DatatypeType
     where $Is(ee#0, Tclass._module.List(TInt))
       && $IsAlloc(ee#0, Tclass._module.List(TInt), $Heap);
  var ff#0: DatatypeType
     where $Is(ff#0, Tclass._module.List(TInt))
       && $IsAlloc(ff#0, Tclass._module.List(TInt), $Heap);
  var gg#0: DatatypeType
     where $Is(gg#0, Tclass._module.List(TInt))
       && $IsAlloc(gg#0, Tclass._module.List(TInt), $Heap);
  var r#0: int;
  var $rhs##0: int;
  var xs##0: DatatypeType;
  var $rhs##1: int;
  var x##0: DatatypeType;
  var $rhs##2: int;
  var x##1: DatatypeType;
  var $rhs##3: int;
  var p##0: DatatypeType;
  var $rhs##4: int;
  var p##1: DatatypeType;
  var t1#0: DatatypeType
     where $Is(t1#0, Tclass._module.Tree()) && $IsAlloc(t1#0, Tclass._module.Tree(), $Heap);
  var t2#0: DatatypeType
     where $Is(t2#0, Tclass._module.Tree()) && $IsAlloc(t2#0, Tclass._module.Tree(), $Heap);
  var t3#0: DatatypeType
     where $Is(t3#0, Tclass._module.Tree()) && $IsAlloc(t3#0, Tclass._module.Tree(), $Heap);
  var t4#0: DatatypeType
     where $Is(t4#0, Tclass._module.Tree()) && $IsAlloc(t4#0, Tclass._module.Tree(), $Heap);
  var r0#0: int where LitInt(0) <= r0#0;
  var $rhs##5: int;
  var x##2: DatatypeType;
  var y##0: DatatypeType;
  var z##0: DatatypeType;
  var r1#0: int where LitInt(0) <= r1#0;
  var $rhs##6: int;
  var x##3: DatatypeType;
  var y##1: DatatypeType;
  var z##1: DatatypeType;
  var r2#0: int where LitInt(0) <= r2#0;
  var $rhs##7: int;
  var x##4: DatatypeType;
  var y##2: DatatypeType;
  var z##2: DatatypeType;
  var r3#0: int where LitInt(0) <= r3#0;
  var $rhs##8: int;
  var x##5: DatatypeType;
  var y##3: DatatypeType;
  var z##3: DatatypeType;
  var r4#0: int where LitInt(0) <= r4#0;
  var $rhs##9: int;
  var x##6: DatatypeType;
  var y##4: DatatypeType;
  var z##4: DatatypeType;
  var r5#0: int where LitInt(0) <= r5#0;
  var $rhs##10: int;
  var x##7: DatatypeType;
  var y##5: DatatypeType;
  var z##5: DatatypeType;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(190,10)
    assume true;
    assume true;
    aa#0 := Lit(#_module.List.Cons($Box(LitInt(6)), Lit(#_module.List.Nil())));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(191,10)
    assume true;
    assume true;
    bb#0 := #_module.List.Cons($Box(LitInt(5)), aa#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(192,10)
    assume true;
    assume true;
    cc#0 := #_module.List.Cons($Box(LitInt(4)), bb#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(193,10)
    assume true;
    assume true;
    dd#0 := #_module.List.Cons($Box(LitInt(4)), cc#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(194,10)
    assume true;
    assume true;
    ee#0 := #_module.List.Cons($Box(LitInt(3)), dd#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(195,10)
    assume true;
    assume true;
    ff#0 := #_module.List.Cons($Box(LitInt(2)), ee#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(196,10)
    assume true;
    assume true;
    gg#0 := #_module.List.Cons($Box(LitInt(1)), ff#0);
    havoc r#0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(199,19)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    xs##0 := aa#0;
    call {:id "id203"} $rhs##0 := Call$$_module.__default.NestingTest(xs##0);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $rhs##0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(200,3)
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(201,26)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := ff#0;
    call {:id "id205"} $rhs##1 := Call$$_module.__default.NestedVariableTest(x##0);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $rhs##1;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(202,3)
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(203,20)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := ee#0;
    call {:id "id207"} $rhs##2 := Call$$_module.__default.ConstantTest(x##1);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $rhs##2;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(204,3)
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(206,9)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    p##0 := Lit(#_module.PairOfNumbers.P(LitInt(11), LitInt(10)));
    call {:id "id209"} $rhs##3 := Call$$_module.__default.M(p##0);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $rhs##3;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(207,3)
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(208,9)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    p##1 := Lit(#_module.PairOfNumbers.P(LitInt(-1), LitInt(10)));
    call {:id "id211"} $rhs##4 := Call$$_module.__default.M(p##1);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $rhs##4;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(209,3)
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(211,10)
    assume true;
    assume true;
    t1#0 := Lit(#_module.Tree.Branch(Lit(#_module.Tree.Leaf()), Lit(true), Lit(#_module.Tree.Leaf())));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(212,10)
    assume true;
    assume true;
    t2#0 := #_module.Tree.Branch(t1#0, Lit(false), Lit(#_module.Tree.Leaf()));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(213,10)
    assume true;
    assume true;
    t3#0 := #_module.Tree.Branch(t2#0, Lit(true), t2#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(214,10)
    assume true;
    assume true;
    t4#0 := #_module.Tree.Branch(Lit(#_module.Tree.Leaf()), Lit(false), t3#0);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(216,32)
    assume true;
    // TrCallStmt: Adding lhs with type nat
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##2 := Lit(#_module.Alt.A(LitInt(0)));
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := t1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id217"} $Is(gg#0, Tclass._module.List(Tclass._System.nat()));
    z##0 := gg#0;
    call {:id "id218"} $rhs##5 := Call$$_module.__default.MultipleNestedMatch(x##2, y##0, z##0);
    // TrCallStmt: After ProcessCallStmt
    r0#0 := $rhs##5;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(217,32)
    assume true;
    // TrCallStmt: Adding lhs with type nat
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##3 := Lit(#_module.Alt.A(LitInt(0)));
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##1 := t3#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    z##1 := Lit(#_module.List.Nil());
    call {:id "id220"} $rhs##6 := Call$$_module.__default.MultipleNestedMatch(x##3, y##1, z##1);
    // TrCallStmt: After ProcessCallStmt
    r1#0 := $rhs##6;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(218,32)
    assume true;
    // TrCallStmt: Adding lhs with type nat
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##4 := Lit(#_module.Alt.A(LitInt(0)));
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##2 := t2#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    z##2 := Lit(#_module.List.Nil());
    call {:id "id222"} $rhs##7 := Call$$_module.__default.MultipleNestedMatch(x##4, y##2, z##2);
    // TrCallStmt: After ProcessCallStmt
    r2#0 := $rhs##7;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(219,32)
    assume true;
    // TrCallStmt: Adding lhs with type nat
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##5 := Lit(#_module.Alt.B(LitInt(0)));
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##3 := t3#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id224"} $Is(ff#0, Tclass._module.List(Tclass._System.nat()));
    z##3 := ff#0;
    call {:id "id225"} $rhs##8 := Call$$_module.__default.MultipleNestedMatch(x##5, y##3, z##3);
    // TrCallStmt: After ProcessCallStmt
    r3#0 := $rhs##8;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(220,32)
    assume true;
    // TrCallStmt: Adding lhs with type nat
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##6 := Lit(#_module.Alt.A(LitInt(0)));
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##4 := t3#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id227"} $Is(ee#0, Tclass._module.List(Tclass._System.nat()));
    z##4 := ee#0;
    call {:id "id228"} $rhs##9 := Call$$_module.__default.MultipleNestedMatch(x##6, y##4, z##4);
    // TrCallStmt: After ProcessCallStmt
    r4#0 := $rhs##9;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(221,32)
    assume true;
    // TrCallStmt: Adding lhs with type nat
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##7 := Lit(#_module.Alt.A(LitInt(0)));
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##5 := t4#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id230"} $Is(bb#0, Tclass._module.List(Tclass._System.nat()));
    z##5 := bb#0;
    call {:id "id231"} $rhs##10 := Call$$_module.__default.MultipleNestedMatch(x##7, y##5, z##5);
    // TrCallStmt: After ProcessCallStmt
    r5#0 := $rhs##10;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatching.dfy(222,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
}



// Constructor function declaration
function #_module.Alt.A(int) : DatatypeType;

const unique ##_module.Alt.A: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int :: 
  { #_module.Alt.A(a#0#0#0) } 
  DatatypeCtorId(#_module.Alt.A(a#0#0#0)) == ##_module.Alt.A);
}

function _module.Alt.A_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Alt.A_q(d) } 
  _module.Alt.A_q(d) <==> DatatypeCtorId(d) == ##_module.Alt.A);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Alt.A_q(d) } 
  _module.Alt.A_q(d) ==> (exists a#1#0#0: int :: d == #_module.Alt.A(a#1#0#0)));

// Constructor $Is
axiom (forall a#2#0#0: int :: 
  { $Is(#_module.Alt.A(a#2#0#0), Tclass._module.Alt()) } 
  $Is(#_module.Alt.A(a#2#0#0), Tclass._module.Alt()) <==> $Is(a#2#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Alt._h0(d), TInt, $h) } 
  $IsGoodHeap($h) && _module.Alt.A_q(d) && $IsAlloc(d, Tclass._module.Alt(), $h)
     ==> $IsAlloc(_module.Alt._h0(d), TInt, $h));

// Constructor literal
axiom (forall a#3#0#0: int :: 
  { #_module.Alt.A(LitInt(a#3#0#0)) } 
  #_module.Alt.A(LitInt(a#3#0#0)) == Lit(#_module.Alt.A(a#3#0#0)));

function _module.Alt._h0(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int :: 
  { #_module.Alt.A(a#4#0#0) } 
  _module.Alt._h0(#_module.Alt.A(a#4#0#0)) == a#4#0#0);

// Constructor function declaration
function #_module.Alt.B(int) : DatatypeType;

const unique ##_module.Alt.B: DtCtorId
uses {
// Constructor identifier
axiom (forall a#5#0#0: int :: 
  { #_module.Alt.B(a#5#0#0) } 
  DatatypeCtorId(#_module.Alt.B(a#5#0#0)) == ##_module.Alt.B);
}

function _module.Alt.B_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Alt.B_q(d) } 
  _module.Alt.B_q(d) <==> DatatypeCtorId(d) == ##_module.Alt.B);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Alt.B_q(d) } 
  _module.Alt.B_q(d) ==> (exists a#6#0#0: int :: d == #_module.Alt.B(a#6#0#0)));

// Constructor $Is
axiom (forall a#7#0#0: int :: 
  { $Is(#_module.Alt.B(a#7#0#0), Tclass._module.Alt()) } 
  $Is(#_module.Alt.B(a#7#0#0), Tclass._module.Alt()) <==> $Is(a#7#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Alt._h1(d), TInt, $h) } 
  $IsGoodHeap($h) && _module.Alt.B_q(d) && $IsAlloc(d, Tclass._module.Alt(), $h)
     ==> $IsAlloc(_module.Alt._h1(d), TInt, $h));

// Constructor literal
axiom (forall a#8#0#0: int :: 
  { #_module.Alt.B(LitInt(a#8#0#0)) } 
  #_module.Alt.B(LitInt(a#8#0#0)) == Lit(#_module.Alt.B(a#8#0#0)));

function _module.Alt._h1(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#9#0#0: int :: 
  { #_module.Alt.B(a#9#0#0) } 
  _module.Alt._h1(#_module.Alt.B(a#9#0#0)) == a#9#0#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Alt(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Alt())
     ==> $IsAlloc(d, Tclass._module.Alt(), $h));

// Depth-one case-split function
function $IsA#_module.Alt(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Alt(d) } 
  $IsA#_module.Alt(d) ==> _module.Alt.A_q(d) || _module.Alt.B_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Alt.B_q(d), $Is(d, Tclass._module.Alt()) } 
    { _module.Alt.A_q(d), $Is(d, Tclass._module.Alt()) } 
  $Is(d, Tclass._module.Alt()) ==> _module.Alt.A_q(d) || _module.Alt.B_q(d));

// Datatype extensional equality declaration
function _module.Alt#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Alt.A
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Alt#Equal(a, b), _module.Alt.A_q(a) } 
    { _module.Alt#Equal(a, b), _module.Alt.A_q(b) } 
  _module.Alt.A_q(a) && _module.Alt.A_q(b)
     ==> (_module.Alt#Equal(a, b) <==> _module.Alt._h0(a) == _module.Alt._h0(b)));

// Datatype extensional equality definition: #_module.Alt.B
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Alt#Equal(a, b), _module.Alt.B_q(a) } 
    { _module.Alt#Equal(a, b), _module.Alt.B_q(b) } 
  _module.Alt.B_q(a) && _module.Alt.B_q(b)
     ==> (_module.Alt#Equal(a, b) <==> _module.Alt._h1(a) == _module.Alt._h1(b)));

// Datatype extensionality axiom: _module.Alt
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Alt#Equal(a, b) } 
  _module.Alt#Equal(a, b) <==> a == b);

const unique class._module.Alt: ClassName;

// Constructor function declaration
function #_module.MyOption.Some(DatatypeType) : DatatypeType;

const unique ##_module.MyOption.Some: DtCtorId
uses {
// Constructor identifier
axiom (forall a#10#0#0: DatatypeType :: 
  { #_module.MyOption.Some(a#10#0#0) } 
  DatatypeCtorId(#_module.MyOption.Some(a#10#0#0)) == ##_module.MyOption.Some);
}

function _module.MyOption.Some_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.MyOption.Some_q(d) } 
  _module.MyOption.Some_q(d) <==> DatatypeCtorId(d) == ##_module.MyOption.Some);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.MyOption.Some_q(d) } 
  _module.MyOption.Some_q(d)
     ==> (exists a#11#0#0: DatatypeType :: d == #_module.MyOption.Some(a#11#0#0)));

// Constructor $Is
axiom (forall a#12#0#0: DatatypeType :: 
  { $Is(#_module.MyOption.Some(a#12#0#0), Tclass._module.MyOption()) } 
  $Is(#_module.MyOption.Some(a#12#0#0), Tclass._module.MyOption())
     <==> $Is(a#12#0#0, Tclass._module.Alt()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.MyOption.v(d), Tclass._module.Alt(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.MyOption.Some_q(d)
       && $IsAlloc(d, Tclass._module.MyOption(), $h)
     ==> $IsAlloc(_module.MyOption.v(d), Tclass._module.Alt(), $h));

// Constructor literal
axiom (forall a#13#0#0: DatatypeType :: 
  { #_module.MyOption.Some(Lit(a#13#0#0)) } 
  #_module.MyOption.Some(Lit(a#13#0#0)) == Lit(#_module.MyOption.Some(a#13#0#0)));

function _module.MyOption.v(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#14#0#0: DatatypeType :: 
  { #_module.MyOption.Some(a#14#0#0) } 
  _module.MyOption.v(#_module.MyOption.Some(a#14#0#0)) == a#14#0#0);

// Inductive rank
axiom (forall a#15#0#0: DatatypeType :: 
  { #_module.MyOption.Some(a#15#0#0) } 
  DtRank(a#15#0#0) < DtRank(#_module.MyOption.Some(a#15#0#0)));

// Constructor function declaration
function #_module.MyOption.None() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.MyOption.None()) == ##_module.MyOption.None;
// Constructor $Is
axiom $Is(#_module.MyOption.None(), Tclass._module.MyOption());
// Constructor literal
axiom #_module.MyOption.None() == Lit(#_module.MyOption.None());
}

const unique ##_module.MyOption.None: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.MyOption.None()) == ##_module.MyOption.None;
}

function _module.MyOption.None_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.MyOption.None_q(d) } 
  _module.MyOption.None_q(d) <==> DatatypeCtorId(d) == ##_module.MyOption.None);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.MyOption.None_q(d) } 
  _module.MyOption.None_q(d) ==> d == #_module.MyOption.None());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.MyOption(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.MyOption())
     ==> $IsAlloc(d, Tclass._module.MyOption(), $h));

// Depth-one case-split function
function $IsA#_module.MyOption(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.MyOption(d) } 
  $IsA#_module.MyOption(d)
     ==> _module.MyOption.Some_q(d) || _module.MyOption.None_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.MyOption.None_q(d), $Is(d, Tclass._module.MyOption()) } 
    { _module.MyOption.Some_q(d), $Is(d, Tclass._module.MyOption()) } 
  $Is(d, Tclass._module.MyOption())
     ==> _module.MyOption.Some_q(d) || _module.MyOption.None_q(d));

// Datatype extensional equality declaration
function _module.MyOption#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.MyOption.Some
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.MyOption#Equal(a, b), _module.MyOption.Some_q(a) } 
    { _module.MyOption#Equal(a, b), _module.MyOption.Some_q(b) } 
  _module.MyOption.Some_q(a) && _module.MyOption.Some_q(b)
     ==> (_module.MyOption#Equal(a, b)
       <==> _module.Alt#Equal(_module.MyOption.v(a), _module.MyOption.v(b))));

// Datatype extensional equality definition: #_module.MyOption.None
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.MyOption#Equal(a, b), _module.MyOption.None_q(a) } 
    { _module.MyOption#Equal(a, b), _module.MyOption.None_q(b) } 
  _module.MyOption.None_q(a) && _module.MyOption.None_q(b)
     ==> _module.MyOption#Equal(a, b));

// Datatype extensionality axiom: _module.MyOption
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.MyOption#Equal(a, b) } 
  _module.MyOption#Equal(a, b) <==> a == b);

const unique class._module.MyOption: ClassName;

// Constructor function declaration
function #_module.MyPair.Pair(DatatypeType, DatatypeType) : DatatypeType;

const unique ##_module.MyPair.Pair: DtCtorId
uses {
// Constructor identifier
axiom (forall a#20#0#0: DatatypeType, a#20#1#0: DatatypeType :: 
  { #_module.MyPair.Pair(a#20#0#0, a#20#1#0) } 
  DatatypeCtorId(#_module.MyPair.Pair(a#20#0#0, a#20#1#0))
     == ##_module.MyPair.Pair);
}

function _module.MyPair.Pair_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.MyPair.Pair_q(d) } 
  _module.MyPair.Pair_q(d) <==> DatatypeCtorId(d) == ##_module.MyPair.Pair);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.MyPair.Pair_q(d) } 
  _module.MyPair.Pair_q(d)
     ==> (exists a#21#0#0: DatatypeType, a#21#1#0: DatatypeType :: 
      d == #_module.MyPair.Pair(a#21#0#0, a#21#1#0)));

function Tclass._module.MyPair() : Ty
uses {
// Tclass._module.MyPair Tag
axiom Tag(Tclass._module.MyPair()) == Tagclass._module.MyPair
   && TagFamily(Tclass._module.MyPair()) == tytagFamily$MyPair;
}

const unique Tagclass._module.MyPair: TyTag;

// Box/unbox axiom for Tclass._module.MyPair
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyPair()) } 
  $IsBox(bx, Tclass._module.MyPair())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.MyPair()));

// Constructor $Is
axiom (forall a#22#0#0: DatatypeType, a#22#1#0: DatatypeType :: 
  { $Is(#_module.MyPair.Pair(a#22#0#0, a#22#1#0), Tclass._module.MyPair()) } 
  $Is(#_module.MyPair.Pair(a#22#0#0, a#22#1#0), Tclass._module.MyPair())
     <==> $Is(a#22#0#0, Tclass._module.Alt()) && $Is(a#22#1#0, Tclass._module.Alt()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.MyPair.x(d), Tclass._module.Alt(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.MyPair.Pair_q(d)
       && $IsAlloc(d, Tclass._module.MyPair(), $h)
     ==> $IsAlloc(_module.MyPair.x(d), Tclass._module.Alt(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.MyPair.y(d), Tclass._module.Alt(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.MyPair.Pair_q(d)
       && $IsAlloc(d, Tclass._module.MyPair(), $h)
     ==> $IsAlloc(_module.MyPair.y(d), Tclass._module.Alt(), $h));

// Constructor literal
axiom (forall a#23#0#0: DatatypeType, a#23#1#0: DatatypeType :: 
  { #_module.MyPair.Pair(Lit(a#23#0#0), Lit(a#23#1#0)) } 
  #_module.MyPair.Pair(Lit(a#23#0#0), Lit(a#23#1#0))
     == Lit(#_module.MyPair.Pair(a#23#0#0, a#23#1#0)));

function _module.MyPair.x(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#24#0#0: DatatypeType, a#24#1#0: DatatypeType :: 
  { #_module.MyPair.Pair(a#24#0#0, a#24#1#0) } 
  _module.MyPair.x(#_module.MyPair.Pair(a#24#0#0, a#24#1#0)) == a#24#0#0);

// Inductive rank
axiom (forall a#25#0#0: DatatypeType, a#25#1#0: DatatypeType :: 
  { #_module.MyPair.Pair(a#25#0#0, a#25#1#0) } 
  DtRank(a#25#0#0) < DtRank(#_module.MyPair.Pair(a#25#0#0, a#25#1#0)));

function _module.MyPair.y(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#26#0#0: DatatypeType, a#26#1#0: DatatypeType :: 
  { #_module.MyPair.Pair(a#26#0#0, a#26#1#0) } 
  _module.MyPair.y(#_module.MyPair.Pair(a#26#0#0, a#26#1#0)) == a#26#1#0);

// Inductive rank
axiom (forall a#27#0#0: DatatypeType, a#27#1#0: DatatypeType :: 
  { #_module.MyPair.Pair(a#27#0#0, a#27#1#0) } 
  DtRank(a#27#1#0) < DtRank(#_module.MyPair.Pair(a#27#0#0, a#27#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.MyPair(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.MyPair())
     ==> $IsAlloc(d, Tclass._module.MyPair(), $h));

// Depth-one case-split function
function $IsA#_module.MyPair(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.MyPair(d) } 
  $IsA#_module.MyPair(d) ==> _module.MyPair.Pair_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.MyPair.Pair_q(d), $Is(d, Tclass._module.MyPair()) } 
  $Is(d, Tclass._module.MyPair()) ==> _module.MyPair.Pair_q(d));

// Datatype extensional equality declaration
function _module.MyPair#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.MyPair.Pair
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.MyPair#Equal(a, b) } 
  _module.MyPair#Equal(a, b)
     <==> _module.Alt#Equal(_module.MyPair.x(a), _module.MyPair.x(b))
       && _module.Alt#Equal(_module.MyPair.y(a), _module.MyPair.y(b)));

// Datatype extensionality axiom: _module.MyPair
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.MyPair#Equal(a, b) } 
  _module.MyPair#Equal(a, b) <==> a == b);

const unique class._module.MyPair: ClassName;

// Constructor function declaration
function #_module.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.List.Nil()) == ##_module.List.Nil;
// Constructor literal
axiom #_module.List.Nil() == Lit(#_module.List.Nil());
}

const unique ##_module.List.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.List.Nil()) == ##_module.List.Nil;
}

function _module.List.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.List.Nil_q(d) } 
  _module.List.Nil_q(d) <==> DatatypeCtorId(d) == ##_module.List.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.List.Nil_q(d) } 
  _module.List.Nil_q(d) ==> d == #_module.List.Nil());

// Constructor $Is
axiom (forall _module.List$T: Ty :: 
  { $Is(#_module.List.Nil(), Tclass._module.List(_module.List$T)) } 
  $Is(#_module.List.Nil(), Tclass._module.List(_module.List$T)));

// Constructor $IsAlloc
axiom (forall _module.List$T: Ty, $h: Heap :: 
  { $IsAlloc(#_module.List.Nil(), Tclass._module.List(_module.List$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.List.Nil(), Tclass._module.List(_module.List$T), $h));

// Constructor function declaration
function #_module.List.Cons(Box, DatatypeType) : DatatypeType;

const unique ##_module.List.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#32#0#0: Box, a#32#1#0: DatatypeType :: 
  { #_module.List.Cons(a#32#0#0, a#32#1#0) } 
  DatatypeCtorId(#_module.List.Cons(a#32#0#0, a#32#1#0)) == ##_module.List.Cons);
}

function _module.List.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.List.Cons_q(d) } 
  _module.List.Cons_q(d) <==> DatatypeCtorId(d) == ##_module.List.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.List.Cons_q(d) } 
  _module.List.Cons_q(d)
     ==> (exists a#33#0#0: Box, a#33#1#0: DatatypeType :: 
      d == #_module.List.Cons(a#33#0#0, a#33#1#0)));

// Constructor $Is
axiom (forall _module.List$T: Ty, a#34#0#0: Box, a#34#1#0: DatatypeType :: 
  { $Is(#_module.List.Cons(a#34#0#0, a#34#1#0), Tclass._module.List(_module.List$T)) } 
  $Is(#_module.List.Cons(a#34#0#0, a#34#1#0), Tclass._module.List(_module.List$T))
     <==> $IsBox(a#34#0#0, _module.List$T)
       && $Is(a#34#1#0, Tclass._module.List(_module.List$T)));

// Constructor $IsAlloc
axiom (forall _module.List$T: Ty, a#34#0#0: Box, a#34#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.List.Cons(a#34#0#0, a#34#1#0), Tclass._module.List(_module.List$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.List.Cons(a#34#0#0, a#34#1#0), Tclass._module.List(_module.List$T), $h)
       <==> $IsAllocBox(a#34#0#0, _module.List$T, $h)
         && $IsAlloc(a#34#1#0, Tclass._module.List(_module.List$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.List$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.List.head(d), _module.List$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(_module.List$T), $h)
     ==> $IsAllocBox(_module.List.head(d), _module.List$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.List$T: Ty, $h: Heap :: 
  { $IsAlloc(_module.List.tail(d), Tclass._module.List(_module.List$T), $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(_module.List$T), $h)
     ==> $IsAlloc(_module.List.tail(d), Tclass._module.List(_module.List$T), $h));

// Constructor literal
axiom (forall a#35#0#0: Box, a#35#1#0: DatatypeType :: 
  { #_module.List.Cons(Lit(a#35#0#0), Lit(a#35#1#0)) } 
  #_module.List.Cons(Lit(a#35#0#0), Lit(a#35#1#0))
     == Lit(#_module.List.Cons(a#35#0#0, a#35#1#0)));

function _module.List.head(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#36#0#0: Box, a#36#1#0: DatatypeType :: 
  { #_module.List.Cons(a#36#0#0, a#36#1#0) } 
  _module.List.head(#_module.List.Cons(a#36#0#0, a#36#1#0)) == a#36#0#0);

// Inductive rank
axiom (forall a#37#0#0: Box, a#37#1#0: DatatypeType :: 
  { #_module.List.Cons(a#37#0#0, a#37#1#0) } 
  BoxRank(a#37#0#0) < DtRank(#_module.List.Cons(a#37#0#0, a#37#1#0)));

function _module.List.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#38#0#0: Box, a#38#1#0: DatatypeType :: 
  { #_module.List.Cons(a#38#0#0, a#38#1#0) } 
  _module.List.tail(#_module.List.Cons(a#38#0#0, a#38#1#0)) == a#38#1#0);

// Inductive rank
axiom (forall a#39#0#0: Box, a#39#1#0: DatatypeType :: 
  { #_module.List.Cons(a#39#0#0, a#39#1#0) } 
  DtRank(a#39#1#0) < DtRank(#_module.List.Cons(a#39#0#0, a#39#1#0)));

// Depth-one case-split function
function $IsA#_module.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.List(d) } 
  $IsA#_module.List(d) ==> _module.List.Nil_q(d) || _module.List.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.List$T: Ty, d: DatatypeType :: 
  { _module.List.Cons_q(d), $Is(d, Tclass._module.List(_module.List$T)) } 
    { _module.List.Nil_q(d), $Is(d, Tclass._module.List(_module.List$T)) } 
  $Is(d, Tclass._module.List(_module.List$T))
     ==> _module.List.Nil_q(d) || _module.List.Cons_q(d));

// Datatype extensional equality declaration
function _module.List#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.List.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b), _module.List.Nil_q(a) } 
    { _module.List#Equal(a, b), _module.List.Nil_q(b) } 
  _module.List.Nil_q(a) && _module.List.Nil_q(b) ==> _module.List#Equal(a, b));

// Datatype extensional equality definition: #_module.List.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b), _module.List.Cons_q(a) } 
    { _module.List#Equal(a, b), _module.List.Cons_q(b) } 
  _module.List.Cons_q(a) && _module.List.Cons_q(b)
     ==> (_module.List#Equal(a, b)
       <==> _module.List.head(a) == _module.List.head(b)
         && _module.List#Equal(_module.List.tail(a), _module.List.tail(b))));

// Datatype extensionality axiom: _module.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b) } 
  _module.List#Equal(a, b) <==> a == b);

const unique class._module.List: ClassName;

procedure {:verboseName "N (well-formedness)"} CheckWellFormed$$_module.N(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "N (well-formedness)"} CheckWellFormed$$_module.N(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype N
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (*)
        {
            if (*)
            {
                assume {:id "id233"} x#0 == LitInt(0);
            }
            else
            {
                assume {:id "id234"} x#0 != LitInt(0);
                assume {:id "id235"} x#0 == LitInt(3);
            }
        }
        else
        {
            assume {:id "id236"} !(x#0 == LitInt(0) || x#0 == LitInt(3));
            assume {:id "id237"} x#0 == LitInt(7);
        }

        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id238"} LitInt(0) == LitInt(0) || LitInt(0) == LitInt(3) || LitInt(0) == LitInt(7);
        assume false;
    }
}



function Tclass._module.N() : Ty
uses {
// Tclass._module.N Tag
axiom Tag(Tclass._module.N()) == Tagclass._module.N
   && TagFamily(Tclass._module.N()) == tytagFamily$N;
}

const unique Tagclass._module.N: TyTag;

// Box/unbox axiom for Tclass._module.N
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.N()) } 
  $IsBox(bx, Tclass._module.N())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.N()));

// $Is axiom for newtype _module.N
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.N()) } 
  $Is(x#0, Tclass._module.N())
     <==> x#0 == LitInt(0) || x#0 == LitInt(3) || x#0 == LitInt(7));

// $IsAlloc axiom for newtype _module.N
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.N(), $h) } 
  $IsAlloc(x#0, Tclass._module.N(), $h));

const unique class._module.N: ClassName;

// Constructor function declaration
function #_module.PairOfNumbers.P(int, int) : DatatypeType;

const unique ##_module.PairOfNumbers.P: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int, a#0#1#0: int :: 
  { #_module.PairOfNumbers.P(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#_module.PairOfNumbers.P(a#0#0#0, a#0#1#0))
     == ##_module.PairOfNumbers.P);
}

function _module.PairOfNumbers.P_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.PairOfNumbers.P_q(d) } 
  _module.PairOfNumbers.P_q(d) <==> DatatypeCtorId(d) == ##_module.PairOfNumbers.P);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.PairOfNumbers.P_q(d) } 
  _module.PairOfNumbers.P_q(d)
     ==> (exists a#1#0#0: int, a#1#1#0: int :: 
      d == #_module.PairOfNumbers.P(a#1#0#0, a#1#1#0)));

// Constructor $Is
axiom (forall a#2#0#0: int, a#2#1#0: int :: 
  { $Is(#_module.PairOfNumbers.P(a#2#0#0, a#2#1#0), Tclass._module.PairOfNumbers()) } 
  $Is(#_module.PairOfNumbers.P(a#2#0#0, a#2#1#0), Tclass._module.PairOfNumbers())
     <==> $Is(a#2#0#0, TInt) && $Is(a#2#1#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.PairOfNumbers._0(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.PairOfNumbers.P_q(d)
       && $IsAlloc(d, Tclass._module.PairOfNumbers(), $h)
     ==> $IsAlloc(_module.PairOfNumbers._0(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.PairOfNumbers._1(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.PairOfNumbers.P_q(d)
       && $IsAlloc(d, Tclass._module.PairOfNumbers(), $h)
     ==> $IsAlloc(_module.PairOfNumbers._1(d), TInt, $h));

// Constructor literal
axiom (forall a#3#0#0: int, a#3#1#0: int :: 
  { #_module.PairOfNumbers.P(LitInt(a#3#0#0), LitInt(a#3#1#0)) } 
  #_module.PairOfNumbers.P(LitInt(a#3#0#0), LitInt(a#3#1#0))
     == Lit(#_module.PairOfNumbers.P(a#3#0#0, a#3#1#0)));

function _module.PairOfNumbers._0(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int, a#4#1#0: int :: 
  { #_module.PairOfNumbers.P(a#4#0#0, a#4#1#0) } 
  _module.PairOfNumbers._0(#_module.PairOfNumbers.P(a#4#0#0, a#4#1#0)) == a#4#0#0);

function _module.PairOfNumbers._1(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#5#0#0: int, a#5#1#0: int :: 
  { #_module.PairOfNumbers.P(a#5#0#0, a#5#1#0) } 
  _module.PairOfNumbers._1(#_module.PairOfNumbers.P(a#5#0#0, a#5#1#0)) == a#5#1#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.PairOfNumbers(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.PairOfNumbers())
     ==> $IsAlloc(d, Tclass._module.PairOfNumbers(), $h));

// Depth-one case-split function
function $IsA#_module.PairOfNumbers(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.PairOfNumbers(d) } 
  $IsA#_module.PairOfNumbers(d) ==> _module.PairOfNumbers.P_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.PairOfNumbers.P_q(d), $Is(d, Tclass._module.PairOfNumbers()) } 
  $Is(d, Tclass._module.PairOfNumbers()) ==> _module.PairOfNumbers.P_q(d));

// Datatype extensional equality declaration
function _module.PairOfNumbers#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.PairOfNumbers.P
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.PairOfNumbers#Equal(a, b) } 
  _module.PairOfNumbers#Equal(a, b)
     <==> _module.PairOfNumbers._0(a) == _module.PairOfNumbers._0(b)
       && _module.PairOfNumbers._1(a) == _module.PairOfNumbers._1(b));

// Datatype extensionality axiom: _module.PairOfNumbers
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.PairOfNumbers#Equal(a, b) } 
  _module.PairOfNumbers#Equal(a, b) <==> a == b);

const unique class._module.PairOfNumbers: ClassName;

// Constructor function declaration
function #_module.Tree.Leaf() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Tree.Leaf()) == ##_module.Tree.Leaf;
// Constructor $Is
axiom $Is(#_module.Tree.Leaf(), Tclass._module.Tree());
// Constructor literal
axiom #_module.Tree.Leaf() == Lit(#_module.Tree.Leaf());
}

const unique ##_module.Tree.Leaf: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Tree.Leaf()) == ##_module.Tree.Leaf;
}

function _module.Tree.Leaf_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Tree.Leaf_q(d) } 
  _module.Tree.Leaf_q(d) <==> DatatypeCtorId(d) == ##_module.Tree.Leaf);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Tree.Leaf_q(d) } 
  _module.Tree.Leaf_q(d) ==> d == #_module.Tree.Leaf());

// Constructor function declaration
function #_module.Tree.Branch(DatatypeType, bool, DatatypeType) : DatatypeType;

const unique ##_module.Tree.Branch: DtCtorId
uses {
// Constructor identifier
axiom (forall a#10#0#0: DatatypeType, a#10#1#0: bool, a#10#2#0: DatatypeType :: 
  { #_module.Tree.Branch(a#10#0#0, a#10#1#0, a#10#2#0) } 
  DatatypeCtorId(#_module.Tree.Branch(a#10#0#0, a#10#1#0, a#10#2#0))
     == ##_module.Tree.Branch);
}

function _module.Tree.Branch_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Tree.Branch_q(d) } 
  _module.Tree.Branch_q(d) <==> DatatypeCtorId(d) == ##_module.Tree.Branch);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Tree.Branch_q(d) } 
  _module.Tree.Branch_q(d)
     ==> (exists a#11#0#0: DatatypeType, a#11#1#0: bool, a#11#2#0: DatatypeType :: 
      d == #_module.Tree.Branch(a#11#0#0, a#11#1#0, a#11#2#0)));

// Constructor $Is
axiom (forall a#12#0#0: DatatypeType, a#12#1#0: bool, a#12#2#0: DatatypeType :: 
  { $Is(#_module.Tree.Branch(a#12#0#0, a#12#1#0, a#12#2#0), Tclass._module.Tree()) } 
  $Is(#_module.Tree.Branch(a#12#0#0, a#12#1#0, a#12#2#0), Tclass._module.Tree())
     <==> $Is(a#12#0#0, Tclass._module.Tree())
       && $Is(a#12#1#0, TBool)
       && $Is(a#12#2#0, Tclass._module.Tree()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Tree.left(d), Tclass._module.Tree(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Tree.Branch_q(d)
       && $IsAlloc(d, Tclass._module.Tree(), $h)
     ==> $IsAlloc(_module.Tree.left(d), Tclass._module.Tree(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Tree.b(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Tree.Branch_q(d)
       && $IsAlloc(d, Tclass._module.Tree(), $h)
     ==> $IsAlloc(_module.Tree.b(d), TBool, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Tree.right(d), Tclass._module.Tree(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Tree.Branch_q(d)
       && $IsAlloc(d, Tclass._module.Tree(), $h)
     ==> $IsAlloc(_module.Tree.right(d), Tclass._module.Tree(), $h));

// Constructor literal
axiom (forall a#13#0#0: DatatypeType, a#13#1#0: bool, a#13#2#0: DatatypeType :: 
  { #_module.Tree.Branch(Lit(a#13#0#0), Lit(a#13#1#0), Lit(a#13#2#0)) } 
  #_module.Tree.Branch(Lit(a#13#0#0), Lit(a#13#1#0), Lit(a#13#2#0))
     == Lit(#_module.Tree.Branch(a#13#0#0, a#13#1#0, a#13#2#0)));

function _module.Tree.left(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#14#0#0: DatatypeType, a#14#1#0: bool, a#14#2#0: DatatypeType :: 
  { #_module.Tree.Branch(a#14#0#0, a#14#1#0, a#14#2#0) } 
  _module.Tree.left(#_module.Tree.Branch(a#14#0#0, a#14#1#0, a#14#2#0))
     == a#14#0#0);

// Inductive rank
axiom (forall a#15#0#0: DatatypeType, a#15#1#0: bool, a#15#2#0: DatatypeType :: 
  { #_module.Tree.Branch(a#15#0#0, a#15#1#0, a#15#2#0) } 
  DtRank(a#15#0#0) < DtRank(#_module.Tree.Branch(a#15#0#0, a#15#1#0, a#15#2#0)));

function _module.Tree.b(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#16#0#0: DatatypeType, a#16#1#0: bool, a#16#2#0: DatatypeType :: 
  { #_module.Tree.Branch(a#16#0#0, a#16#1#0, a#16#2#0) } 
  _module.Tree.b(#_module.Tree.Branch(a#16#0#0, a#16#1#0, a#16#2#0)) == a#16#1#0);

function _module.Tree.right(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#17#0#0: DatatypeType, a#17#1#0: bool, a#17#2#0: DatatypeType :: 
  { #_module.Tree.Branch(a#17#0#0, a#17#1#0, a#17#2#0) } 
  _module.Tree.right(#_module.Tree.Branch(a#17#0#0, a#17#1#0, a#17#2#0))
     == a#17#2#0);

// Inductive rank
axiom (forall a#18#0#0: DatatypeType, a#18#1#0: bool, a#18#2#0: DatatypeType :: 
  { #_module.Tree.Branch(a#18#0#0, a#18#1#0, a#18#2#0) } 
  DtRank(a#18#2#0) < DtRank(#_module.Tree.Branch(a#18#0#0, a#18#1#0, a#18#2#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Tree(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Tree())
     ==> $IsAlloc(d, Tclass._module.Tree(), $h));

// Depth-one case-split function
function $IsA#_module.Tree(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Tree(d) } 
  $IsA#_module.Tree(d) ==> _module.Tree.Leaf_q(d) || _module.Tree.Branch_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Tree.Branch_q(d), $Is(d, Tclass._module.Tree()) } 
    { _module.Tree.Leaf_q(d), $Is(d, Tclass._module.Tree()) } 
  $Is(d, Tclass._module.Tree())
     ==> _module.Tree.Leaf_q(d) || _module.Tree.Branch_q(d));

// Datatype extensional equality declaration
function _module.Tree#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Tree.Leaf
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Tree#Equal(a, b), _module.Tree.Leaf_q(a) } 
    { _module.Tree#Equal(a, b), _module.Tree.Leaf_q(b) } 
  _module.Tree.Leaf_q(a) && _module.Tree.Leaf_q(b) ==> _module.Tree#Equal(a, b));

// Datatype extensional equality definition: #_module.Tree.Branch
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Tree#Equal(a, b), _module.Tree.Branch_q(a) } 
    { _module.Tree#Equal(a, b), _module.Tree.Branch_q(b) } 
  _module.Tree.Branch_q(a) && _module.Tree.Branch_q(b)
     ==> (_module.Tree#Equal(a, b)
       <==> _module.Tree#Equal(_module.Tree.left(a), _module.Tree.left(b))
         && _module.Tree.b(a) == _module.Tree.b(b)
         && _module.Tree#Equal(_module.Tree.right(a), _module.Tree.right(b))));

// Datatype extensionality axiom: _module.Tree
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Tree#Equal(a, b) } 
  _module.Tree#Equal(a, b) <==> a == b);

const unique class._module.Tree: ClassName;

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

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$MyOption: TyTagFamily;

const unique tytagFamily$Alt: TyTagFamily;

const unique tytagFamily$PairOfNumbers: TyTagFamily;

const unique tytagFamily$Tree: TyTagFamily;

const unique tytagFamily$MyPair: TyTagFamily;

const unique tytagFamily$N: TyTagFamily;
