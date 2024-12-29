// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy

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

// Box/unbox axiom for bv27
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(27)) } 
  $IsBox(bx, TBitvector(27))
     ==> $Box($Unbox(bx): bv27) == bx && $Is($Unbox(bx): bv27, TBitvector(27)));

axiom (forall v: bv27 :: { $Is(v, TBitvector(27)) } $Is(v, TBitvector(27)));

axiom (forall v: bv27, heap: Heap :: 
  { $IsAlloc(v, TBitvector(27), heap) } 
  $IsAlloc(v, TBitvector(27), heap));

function {:bvbuiltin "bvand"} and_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "bvor"} or_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "bvxor"} xor_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "bvnot"} not_bv27(bv27) : bv27;

function {:bvbuiltin "bvadd"} add_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "bvsub"} sub_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "bvmul"} mul_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "bvudiv"} div_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "bvurem"} mod_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "bvult"} lt_bv27(bv27, bv27) : bool;

function {:bvbuiltin "bvule"} le_bv27(bv27, bv27) : bool;

function {:bvbuiltin "bvuge"} ge_bv27(bv27, bv27) : bool;

function {:bvbuiltin "bvugt"} gt_bv27(bv27, bv27) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "bvlshr"} RightShift_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "(_ int2bv 27)"} nat_to_bv27(int) : bv27;

function {:bvbuiltin "bv2int"} smt_nat_from_bv27(bv27) : int;

function nat_from_bv27(bv27) : int;

axiom (forall b: bv27 :: 
  { nat_from_bv27(b) } 
  0 <= nat_from_bv27(b)
     && nat_from_bv27(b) < 134217728
     && nat_from_bv27(b) == smt_nat_from_bv27(b));

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
}

const unique Tagclass._module.MyClass?: TyTag;

// Box/unbox axiom for Tclass._module.MyClass?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyClass?()) } 
  $IsBox(bx, Tclass._module.MyClass?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.MyClass?()));

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

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#o#0: bool;
  var o#0: ref
     where defass#o#0
       ==> $Is(o#0, Tclass._module.MyClass())
         && $IsAlloc(o#0, Tclass._module.MyClass(), $Heap);
  var $nw: ref;
  var s#0: Seq
     where $Is(s#0, TSeq(Tclass._module.Dt()))
       && $IsAlloc(s#0, TSeq(Tclass._module.Dt()), $Heap);
  var d#0: DatatypeType
     where $Is(d#0, Tclass._module.Dt()) && $IsAlloc(d#0, Tclass._module.Dt(), $Heap);
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var k##0: DatatypeType;
  var d##0: DatatypeType;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(12,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.MyClass?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    o#0 := $nw;
    defass#o#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(13,9)
    assume true;
    assert {:id "id1"} defass#o#0;
    assume true;
    s#0 := Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(Lit(#_module.Dt.A(LitInt(10), LitReal(12e0))))), 
        $Box(#_module.Dt.B(o#0, LitInt(6)))), 
      $Box(Lit(#_module.Dt.C(LitReal(314e-2)))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(14,3)
    assert {:id "id3"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(s#0);
    assert {:id "id4"} _module.Dt.A_q($Unbox(Seq#Index(s#0, LitInt(0))): DatatypeType)
       || _module.Dt.B_q($Unbox(Seq#Index(s#0, LitInt(0))): DatatypeType);
    if (_module.Dt.x($Unbox(Seq#Index(s#0, LitInt(0))): DatatypeType) == LitInt(10))
    {
        assert {:id "id5"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(s#0);
        assert {:id "id6"} _module.Dt.A_q($Unbox(Seq#Index(s#0, LitInt(0))): DatatypeType)
           || _module.Dt.C_q($Unbox(Seq#Index(s#0, LitInt(0))): DatatypeType);
    }

    assume true;
    assert {:id "id7"} {:subsumption 0} _module.Dt.x($Unbox(Seq#Index(s#0, LitInt(0))): DatatypeType) == LitInt(10);
    assert {:id "id8"} {:subsumption 0} _module.Dt.y($Unbox(Seq#Index(s#0, LitInt(0))): DatatypeType) == LitReal(12e0);
    assume {:id "id9"} _module.Dt.x($Unbox(Seq#Index(s#0, LitInt(0))): DatatypeType) == LitInt(10)
       && _module.Dt.y($Unbox(Seq#Index(s#0, LitInt(0))): DatatypeType) == LitReal(12e0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(15,3)
    assert {:id "id10"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < Seq#Length(s#0);
    assert {:id "id11"} _module.Dt.B_q($Unbox(Seq#Index(s#0, LitInt(1))): DatatypeType);
    assert {:id "id12"} defass#o#0;
    if (_module.Dt.h($Unbox(Seq#Index(s#0, LitInt(1))): DatatypeType) == o#0)
    {
        assert {:id "id13"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < Seq#Length(s#0);
        assert {:id "id14"} _module.Dt.A_q($Unbox(Seq#Index(s#0, LitInt(1))): DatatypeType)
           || _module.Dt.B_q($Unbox(Seq#Index(s#0, LitInt(1))): DatatypeType);
    }

    assume true;
    assert {:id "id15"} {:subsumption 0} _module.Dt.h($Unbox(Seq#Index(s#0, LitInt(1))): DatatypeType) == o#0;
    assert {:id "id16"} {:subsumption 0} _module.Dt.x($Unbox(Seq#Index(s#0, LitInt(1))): DatatypeType) == LitInt(6);
    assume {:id "id17"} _module.Dt.h($Unbox(Seq#Index(s#0, LitInt(1))): DatatypeType) == o#0
       && _module.Dt.x($Unbox(Seq#Index(s#0, LitInt(1))): DatatypeType) == LitInt(6);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(16,3)
    assert {:id "id18"} {:subsumption 0} 0 <= LitInt(2) && LitInt(2) < Seq#Length(s#0);
    assert {:id "id19"} _module.Dt.A_q($Unbox(Seq#Index(s#0, LitInt(2))): DatatypeType)
       || _module.Dt.C_q($Unbox(Seq#Index(s#0, LitInt(2))): DatatypeType);
    assume true;
    assert {:id "id20"} _module.Dt.y($Unbox(Seq#Index(s#0, LitInt(2))): DatatypeType) == LitReal(314e-2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(18,9)
    assume true;
    assert {:id "id21"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(s#0);
    assume true;
    d#0 := $Unbox(Seq#Index(s#0, LitInt(0))): DatatypeType;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(19,3)
    assume true;
    assume true;
    assert {:id "id23"} _module.Dt.A_q(d#0) || _module.Dt.B_q(d#0);
    assume true;
    assume true;
    assert {:id "id24"} _module.Dt.A_q(d#0) || _module.Dt.C_q(d#0);
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(20,5)
    assume true;
    assert {:id "id25"} 0 <= LitInt(1) && LitInt(1) < Seq#Length(s#0);
    assume true;
    d#0 := $Unbox(Seq#Index(s#0, LitInt(1))): DatatypeType;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(21,3)
    assume true;
    assume true;
    assert {:id "id27"} _module.Dt.B_q(d#0);
    assume true;
    assume true;
    assert {:id "id28"} _module.Dt.A_q(d#0) || _module.Dt.B_q(d#0);
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(22,5)
    assume true;
    assert {:id "id29"} 0 <= LitInt(2) && LitInt(2) < Seq#Length(s#0);
    assume true;
    d#0 := $Unbox(Seq#Index(s#0, LitInt(2))): DatatypeType;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(23,3)
    assume true;
    assume true;
    assert {:id "id31"} _module.Dt.A_q(d#0) || _module.Dt.C_q(d#0);
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(25,5)
    assume true;
    assert {:id "id32"} defass#o#0;
    assume true;
    s#0 := Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(Lit(#_module.Dt.A(LitInt(71), LitReal(1e-1))))), 
      $Box(#_module.Dt.B(o#0, LitInt(71))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(26,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(27,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Seq#Length(s#0) - i#0;
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
      free invariant Seq#Length(s#0) - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (Seq#Length(s#0) <= i#0)
        {
            break;
        }

        $decr$loop#00 := Seq#Length(s#0) - i#0;
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(29,5)
        assume true;
        assume true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(30,7)
        assume true;
        assert {:id "id35"} 0 <= i#0 && i#0 < Seq#Length(s#0);
        assume true;
        d#0 := $Unbox(Seq#Index(s#0, i#0)): DatatypeType;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(31,5)
        assert {:id "id37"} _module.Dt.A_q(d#0) || _module.Dt.B_q(d#0);
        assume true;
        assert {:id "id38"} _module.Dt.x(d#0) == LitInt(71);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(32,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(27,3)
        assert {:id "id40"} 0 <= $decr$loop#00 || Seq#Length(s#0) - i#0 == $decr$loop#00;
        assert {:id "id41"} Seq#Length(s#0) - i#0 < $decr$loop#00;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(35,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    k##0 := Lit(#_module.Klef.C3(LitInt(44), LitInt(55), LitInt(66), LitInt(77)));
    call {:id "id42"} Call$$_module.__default.BaseKlef(k##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(36,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    d##0 := Lit(#_module.Datte.AA(LitInt(10), LitInt(2)));
    call {:id "id43"} Call$$_module.__default.Matte(d##0);
    // TrCallStmt: After ProcessCallStmt
}



function Tclass._module.Klef() : Ty
uses {
// Tclass._module.Klef Tag
axiom Tag(Tclass._module.Klef()) == Tagclass._module.Klef
   && TagFamily(Tclass._module.Klef()) == tytagFamily$Klef;
}

const unique Tagclass._module.Klef: TyTag;

// Box/unbox axiom for Tclass._module.Klef
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Klef()) } 
  $IsBox(bx, Tclass._module.Klef())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Klef()));

procedure {:verboseName "BaseKlef (well-formedness)"} CheckWellFormed$$_module.__default.BaseKlef(k#0: DatatypeType
       where $Is(k#0, Tclass._module.Klef())
         && $IsAlloc(k#0, Tclass._module.Klef(), $Heap)
         && $IsA#_module.Klef(k#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BaseKlef (call)"} Call$$_module.__default.BaseKlef(k#0: DatatypeType
       where $Is(k#0, Tclass._module.Klef())
         && $IsAlloc(k#0, Tclass._module.Klef(), $Heap)
         && $IsA#_module.Klef(k#0));
  // user-defined preconditions
  requires {:id "id47"} !_module.Klef.C0_q(k#0);
  requires {:id "id48"} !_module.Klef.C2_q(k#0);
  requires {:id "id49"} !_module.Klef.C1_q(k#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "BaseKlef (correctness)"} Impl$$_module.__default.BaseKlef(k#0: DatatypeType
       where $Is(k#0, Tclass._module.Klef())
         && $IsAlloc(k#0, Tclass._module.Klef(), $Heap)
         && $IsA#_module.Klef(k#0))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id50"} !_module.Klef.C0_q(k#0);
  requires {:id "id51"} !_module.Klef.C2_q(k#0);
  requires {:id "id52"} !_module.Klef.C1_q(k#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BaseKlef (correctness)"} Impl$$_module.__default.BaseKlef(k#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k'#0: DatatypeType
     where $Is(k'#0, Tclass._module.Klef()) && $IsAlloc(k'#0, Tclass._module.Klef(), $Heap);
  var dt_update_tmp#0#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var dt_update#c3#0#Z#0: int;
  var let#1#0#0: int;
  var dt_update#0#0#Z#0: int;
  var let#2#0#0: int;

    // AddMethodImpl: BaseKlef, Impl$$_module.__default.BaseKlef
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(48,10)
    assume true;
    assert {:id "id53"} _module.Klef.C3_q(k#0);
    havoc dt_update_tmp#0#Z#0;
    assume {:id "id54"} let#0#0#0 == k#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, Tclass._module.Klef());
    assume {:id "id55"} dt_update_tmp#0#Z#0 == let#0#0#0;
    havoc dt_update#c3#0#Z#0;
    assume {:id "id56"} let#1#0#0 == LitInt(200);
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#1#0#0, TInt);
    assume {:id "id57"} dt_update#c3#0#Z#0 == let#1#0#0;
    havoc dt_update#0#0#Z#0;
    assume {:id "id58"} let#2#0#0 == LitInt(100);
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#2#0#0, TInt);
    assume {:id "id59"} dt_update#0#0#Z#0 == let#2#0#0;
    assert {:id "id60"} _module.Klef.C1_q(dt_update_tmp#0#Z#0)
       || _module.Klef.C2_q(dt_update_tmp#0#Z#0)
       || _module.Klef.C3_q(dt_update_tmp#0#Z#0);
    assert {:id "id61"} _module.Klef.C0_q(dt_update_tmp#0#Z#0)
       || _module.Klef.C1_q(dt_update_tmp#0#Z#0)
       || _module.Klef.C3_q(dt_update_tmp#0#Z#0);
    assume true;
    k'#0 := (var dt_update_tmp#0#0 := k#0; 
      (var dt_update#c3#0#0 := LitInt(200); 
        (var dt_update#0#0#0 := LitInt(100); 
          #_module.Klef.C3(_module.Klef._3(dt_update_tmp#0#0), 
            dt_update#0#0#0, 
            _module.Klef._1(dt_update_tmp#0#0), 
            dt_update#c3#0#0))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(49,3)
    assert {:id "id63"} _module.Klef.C1_q(k#0) || _module.Klef.C2_q(k#0) || _module.Klef.C3_q(k#0);
    assert {:id "id64"} _module.Klef.C0_q(k#0) || _module.Klef.C1_q(k#0) || _module.Klef.C3_q(k#0);
    assume $IsA#_module.Klef(k'#0);
    assert {:id "id65"} _module.Klef#Equal(k'#0, 
      #_module.Klef.C3(_module.Klef._3(k#0), LitInt(100), _module.Klef._1(k#0), LitInt(200)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(50,3)
    assume true;
    assume true;
}



function Tclass._module.Datte(Ty) : Ty;

const unique Tagclass._module.Datte: TyTag;

// Tclass._module.Datte Tag
axiom (forall _module.Datte$T: Ty :: 
  { Tclass._module.Datte(_module.Datte$T) } 
  Tag(Tclass._module.Datte(_module.Datte$T)) == Tagclass._module.Datte
     && TagFamily(Tclass._module.Datte(_module.Datte$T)) == tytagFamily$Datte);

function Tclass._module.Datte_0(Ty) : Ty;

// Tclass._module.Datte injectivity 0
axiom (forall _module.Datte$T: Ty :: 
  { Tclass._module.Datte(_module.Datte$T) } 
  Tclass._module.Datte_0(Tclass._module.Datte(_module.Datte$T)) == _module.Datte$T);

// Box/unbox axiom for Tclass._module.Datte
axiom (forall _module.Datte$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Datte(_module.Datte$T)) } 
  $IsBox(bx, Tclass._module.Datte(_module.Datte$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Datte(_module.Datte$T)));

procedure {:verboseName "Matte (well-formedness)"} CheckWellFormed$$_module.__default.Matte(d#0: DatatypeType
       where $Is(d#0, Tclass._module.Datte(TReal))
         && $IsAlloc(d#0, Tclass._module.Datte(TReal), $Heap)
         && $IsA#_module.Datte(d#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Matte (call)"} Call$$_module.__default.Matte(d#0: DatatypeType
       where $Is(d#0, Tclass._module.Datte(TReal))
         && $IsAlloc(d#0, Tclass._module.Datte(TReal), $Heap)
         && $IsA#_module.Datte(d#0));
  // user-defined preconditions
  requires {:id "id67"} !_module.Datte.CC_q(d#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Matte (correctness)"} Impl$$_module.__default.Matte(d#0: DatatypeType
       where $Is(d#0, Tclass._module.Datte(TReal))
         && $IsAlloc(d#0, Tclass._module.Datte(TReal), $Heap)
         && $IsA#_module.Datte(d#0))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id68"} !_module.Datte.CC_q(d#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Matte (correctness)"} Impl$$_module.__default.Matte(d#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var d#1: DatatypeType
     where $Is(d#1, Tclass._module.Datte(TReal))
       && $IsAlloc(d#1, Tclass._module.Datte(TReal), $Heap);
  var s#0: DatatypeType
     where $Is(s#0, Tclass._module.Datte(TReal))
       && $IsAlloc(s#0, Tclass._module.Datte(TReal), $Heap);
  var dt_update_tmp#0#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var dt_update#x#0#Z#0: int;
  var let#1#0#0: int;
  var dt_update_tmp#1#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var dt_update#x#1#Z#0: int;
  var let#3#0#0: int;
  var dt_update_tmp#2#Z#0: DatatypeType;
  var let#4#0#0: DatatypeType;
  var dt_update#c#0#Z#0: real;
  var let#5#0#0: real;
  var dt_update_tmp#3#Z#0: DatatypeType;
  var let#6#0#0: DatatypeType;
  var dt_update#x#2#Z#0: int;
  var let#7#0#0: int;
  var dt_update_tmp#4#Z#0: DatatypeType;
  var let#8#0#0: DatatypeType;
  var dt_update#p#0#Z#0: bv27;
  var let#9#0#0: bv27;
  var dt_update#q#0#Z#0: real;
  var let#10#0#0: real;

    // AddMethodImpl: Matte, Impl$$_module.__default.Matte
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(58,9)
    assume true;
    assume true;
    d#1 := d#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(60,9)
    assume true;
    assert {:id "id70"} _module.Datte.DD_q(d#1) || _module.Datte.BB_q(d#1) || _module.Datte.AA_q(d#1);
    havoc dt_update_tmp#0#Z#0;
    assume {:id "id71"} let#0#0#0 == d#1;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, Tclass._module.Datte(TReal));
    assume {:id "id72"} dt_update_tmp#0#Z#0 == let#0#0#0;
    havoc dt_update#x#0#Z#0;
    assume {:id "id73"} let#1#0#0 == LitInt(5);
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#1#0#0, TInt);
    assume {:id "id74"} dt_update#x#0#Z#0 == let#1#0#0;
    if (_module.Datte.AA_q(dt_update_tmp#0#Z#0))
    {
        assert {:id "id75"} _module.Datte.AA_q(dt_update_tmp#0#Z#0);
    }
    else
    {
        if (_module.Datte.BB_q(dt_update_tmp#0#Z#0))
        {
            assert {:id "id76"} _module.Datte.BB_q(dt_update_tmp#0#Z#0);
        }
        else
        {
            assert {:id "id77"} _module.Datte.DD_q(dt_update_tmp#0#Z#0);
            assert {:id "id78"} _module.Datte.DD_q(dt_update_tmp#0#Z#0);
            assert {:id "id79"} _module.Datte.DD_q(dt_update_tmp#0#Z#0);
        }
    }

    assume true;
    s#0 := (var dt_update_tmp#0#0 := d#1; 
      (var dt_update#x#0#0 := LitInt(5); 
        (if _module.Datte.AA_q(dt_update_tmp#0#0)
           then #_module.Datte.AA(_module.Datte.a(dt_update_tmp#0#0), dt_update#x#0#0)
           else (if _module.Datte.BB_q(dt_update_tmp#0#0)
             then #_module.Datte.BB(_module.Datte.b(dt_update_tmp#0#0), dt_update#x#0#0)
             else #_module.Datte.DD(dt_update#x#0#0, 
              _module.Datte.o(dt_update_tmp#0#0), 
              _module.Datte.p(dt_update_tmp#0#0), 
              _module.Datte.q(dt_update_tmp#0#0))))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(61,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(63,5)
    assume true;
    assume true;
    d#1 := Lit(#_module.Datte.BB(Lit(false), LitInt(12)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(64,5)
    assume true;
    assert {:id "id82"} _module.Datte.DD_q(d#1) || _module.Datte.BB_q(d#1) || _module.Datte.AA_q(d#1);
    havoc dt_update_tmp#1#Z#0;
    assume {:id "id83"} let#2#0#0 == d#1;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#2#0#0, Tclass._module.Datte(TReal));
    assume {:id "id84"} dt_update_tmp#1#Z#0 == let#2#0#0;
    havoc dt_update#x#1#Z#0;
    assume {:id "id85"} let#3#0#0 == LitInt(6);
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#3#0#0, TInt);
    assume {:id "id86"} dt_update#x#1#Z#0 == let#3#0#0;
    if (_module.Datte.AA_q(dt_update_tmp#1#Z#0))
    {
        assert {:id "id87"} _module.Datte.AA_q(dt_update_tmp#1#Z#0);
    }
    else
    {
        if (_module.Datte.BB_q(dt_update_tmp#1#Z#0))
        {
            assert {:id "id88"} _module.Datte.BB_q(dt_update_tmp#1#Z#0);
        }
        else
        {
            assert {:id "id89"} _module.Datte.DD_q(dt_update_tmp#1#Z#0);
            assert {:id "id90"} _module.Datte.DD_q(dt_update_tmp#1#Z#0);
            assert {:id "id91"} _module.Datte.DD_q(dt_update_tmp#1#Z#0);
        }
    }

    assume true;
    s#0 := (var dt_update_tmp#1#0 := d#1; 
      (var dt_update#x#1#0 := LitInt(6); 
        (if _module.Datte.AA_q(dt_update_tmp#1#0)
           then #_module.Datte.AA(_module.Datte.a(dt_update_tmp#1#0), dt_update#x#1#0)
           else (if _module.Datte.BB_q(dt_update_tmp#1#0)
             then #_module.Datte.BB(_module.Datte.b(dt_update_tmp#1#0), dt_update#x#1#0)
             else #_module.Datte.DD(dt_update#x#1#0, 
              _module.Datte.o(dt_update_tmp#1#0), 
              _module.Datte.p(dt_update_tmp#1#0), 
              _module.Datte.q(dt_update_tmp#1#0))))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(65,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(67,5)
    assume true;
    assume true;
    d#1 := Lit(#_module.Datte.CC(LitReal(32e-1)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(68,5)
    assume true;
    assert {:id "id94"} _module.Datte.CC_q(d#1);
    havoc dt_update_tmp#2#Z#0;
    assume {:id "id95"} let#4#0#0 == d#1;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#4#0#0, Tclass._module.Datte(TReal));
    assume {:id "id96"} dt_update_tmp#2#Z#0 == let#4#0#0;
    havoc dt_update#c#0#Z#0;
    assume {:id "id97"} let#5#0#0 == LitReal(34e-1);
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#5#0#0, TReal);
    assume {:id "id98"} dt_update#c#0#Z#0 == let#5#0#0;
    assume true;
    s#0 := (var dt_update_tmp#2#0 := d#1; 
      (var dt_update#c#0#0 := LitReal(34e-1); Lit(#_module.Datte.CC(dt_update#c#0#0))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(69,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(71,5)
    assume true;
    assume true;
    d#1 := Lit(#_module.Datte.DD(LitInt(100), 
        Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(7)))), 
        Lit(5bv27), 
        $Box(LitReal(9e0))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(72,5)
    assume true;
    assert {:id "id101"} _module.Datte.DD_q(d#1) || _module.Datte.BB_q(d#1) || _module.Datte.AA_q(d#1);
    havoc dt_update_tmp#3#Z#0;
    assume {:id "id102"} let#6#0#0 == d#1;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#6#0#0, Tclass._module.Datte(TReal));
    assume {:id "id103"} dt_update_tmp#3#Z#0 == let#6#0#0;
    havoc dt_update#x#2#Z#0;
    assume {:id "id104"} let#7#0#0 == LitInt(30);
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#7#0#0, TInt);
    assume {:id "id105"} dt_update#x#2#Z#0 == let#7#0#0;
    if (_module.Datte.AA_q(dt_update_tmp#3#Z#0))
    {
        assert {:id "id106"} _module.Datte.AA_q(dt_update_tmp#3#Z#0);
    }
    else
    {
        if (_module.Datte.BB_q(dt_update_tmp#3#Z#0))
        {
            assert {:id "id107"} _module.Datte.BB_q(dt_update_tmp#3#Z#0);
        }
        else
        {
            assert {:id "id108"} _module.Datte.DD_q(dt_update_tmp#3#Z#0);
            assert {:id "id109"} _module.Datte.DD_q(dt_update_tmp#3#Z#0);
            assert {:id "id110"} _module.Datte.DD_q(dt_update_tmp#3#Z#0);
        }
    }

    assume true;
    s#0 := (var dt_update_tmp#3#0 := d#1; 
      (var dt_update#x#2#0 := LitInt(30); 
        (if _module.Datte.AA_q(dt_update_tmp#3#0)
           then #_module.Datte.AA(_module.Datte.a(dt_update_tmp#3#0), dt_update#x#2#0)
           else (if _module.Datte.BB_q(dt_update_tmp#3#0)
             then #_module.Datte.BB(_module.Datte.b(dt_update_tmp#3#0), dt_update#x#2#0)
             else #_module.Datte.DD(dt_update#x#2#0, 
              _module.Datte.o(dt_update_tmp#3#0), 
              _module.Datte.p(dt_update_tmp#3#0), 
              _module.Datte.q(dt_update_tmp#3#0))))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(73,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(74,5)
    assume true;
    assert {:id "id112"} _module.Datte.DD_q(s#0);
    havoc dt_update_tmp#4#Z#0;
    assume {:id "id113"} let#8#0#0 == s#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#8#0#0, Tclass._module.Datte(TReal));
    assume {:id "id114"} dt_update_tmp#4#Z#0 == let#8#0#0;
    havoc dt_update#p#0#Z#0;
    assert {:id "id115"} _module.Datte.DD_q(d#1);
    assume {:id "id116"} let#9#0#0 == _module.Datte.p(d#1);
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#9#0#0, TBitvector(27));
    assume {:id "id117"} dt_update#p#0#Z#0 == let#9#0#0;
    havoc dt_update#q#0#Z#0;
    assume {:id "id118"} let#10#0#0 == LitReal(2e0);
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#10#0#0, TReal);
    assume {:id "id119"} dt_update#q#0#Z#0 == let#10#0#0;
    assert {:id "id120"} _module.Datte.AA_q(dt_update_tmp#4#Z#0)
       || _module.Datte.BB_q(dt_update_tmp#4#Z#0)
       || _module.Datte.DD_q(dt_update_tmp#4#Z#0);
    assert {:id "id121"} _module.Datte.DD_q(dt_update_tmp#4#Z#0);
    assume true;
    s#0 := (var dt_update_tmp#4#0 := s#0; 
      (var dt_update#p#0#0 := _module.Datte.p(d#1); 
        (var dt_update#q#0#0 := LitReal(2e0); 
          #_module.Datte.DD(_module.Datte.x(dt_update_tmp#4#0), 
            _module.Datte.o(dt_update_tmp#4#0), 
            dt_update#p#0#0, 
            $Box(dt_update#q#0#0)))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/SharedDestructorsCompile.dfy(75,3)
    assume true;
    assume true;
    assume true;
    assume true;
}



// Constructor function declaration
function #_module.Dt.A(int, real) : DatatypeType;

const unique ##_module.Dt.A: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int, a#0#1#0: real :: 
  { #_module.Dt.A(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#_module.Dt.A(a#0#0#0, a#0#1#0)) == ##_module.Dt.A);
}

function _module.Dt.A_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Dt.A_q(d) } 
  _module.Dt.A_q(d) <==> DatatypeCtorId(d) == ##_module.Dt.A);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Dt.A_q(d) } 
  _module.Dt.A_q(d)
     ==> (exists a#1#0#0: int, a#1#1#0: real :: d == #_module.Dt.A(a#1#0#0, a#1#1#0)));

// Constructor $Is
axiom (forall a#2#0#0: int, a#2#1#0: real :: 
  { $Is(#_module.Dt.A(a#2#0#0, a#2#1#0), Tclass._module.Dt()) } 
  $Is(#_module.Dt.A(a#2#0#0, a#2#1#0), Tclass._module.Dt())
     <==> $Is(a#2#0#0, TInt) && $Is(a#2#1#0, TReal));

// Constructor $IsAlloc
axiom (forall a#2#0#0: int, a#2#1#0: real, $h: Heap :: 
  { $IsAlloc(#_module.Dt.A(a#2#0#0, a#2#1#0), Tclass._module.Dt(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Dt.A(a#2#0#0, a#2#1#0), Tclass._module.Dt(), $h)
       <==> $IsAlloc(a#2#0#0, TInt, $h) && $IsAlloc(a#2#1#0, TReal, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Dt.x(d), TInt, $h) } 
  $IsGoodHeap($h) && _module.Dt.A_q(d) && $IsAlloc(d, Tclass._module.Dt(), $h)
     ==> $IsAlloc(_module.Dt.x(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Dt.y(d), TReal, $h) } 
  $IsGoodHeap($h) && _module.Dt.A_q(d) && $IsAlloc(d, Tclass._module.Dt(), $h)
     ==> $IsAlloc(_module.Dt.y(d), TReal, $h));

// Constructor literal
axiom (forall a#3#0#0: int, a#3#1#0: real :: 
  { #_module.Dt.A(LitInt(a#3#0#0), LitReal(a#3#1#0)) } 
  #_module.Dt.A(LitInt(a#3#0#0), LitReal(a#3#1#0))
     == Lit(#_module.Dt.A(a#3#0#0, a#3#1#0)));

function _module.Dt.x(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int, a#4#1#0: real :: 
  { #_module.Dt.A(a#4#0#0, a#4#1#0) } 
  _module.Dt.x(#_module.Dt.A(a#4#0#0, a#4#1#0)) == a#4#0#0);

function _module.Dt.y(DatatypeType) : real;

// Constructor injectivity
axiom (forall a#5#0#0: int, a#5#1#0: real :: 
  { #_module.Dt.A(a#5#0#0, a#5#1#0) } 
  _module.Dt.y(#_module.Dt.A(a#5#0#0, a#5#1#0)) == a#5#1#0);

// Constructor function declaration
function #_module.Dt.B(ref, int) : DatatypeType;

const unique ##_module.Dt.B: DtCtorId
uses {
// Constructor identifier
axiom (forall a#6#0#0: ref, a#6#1#0: int :: 
  { #_module.Dt.B(a#6#0#0, a#6#1#0) } 
  DatatypeCtorId(#_module.Dt.B(a#6#0#0, a#6#1#0)) == ##_module.Dt.B);
}

function _module.Dt.B_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Dt.B_q(d) } 
  _module.Dt.B_q(d) <==> DatatypeCtorId(d) == ##_module.Dt.B);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Dt.B_q(d) } 
  _module.Dt.B_q(d)
     ==> (exists a#7#0#0: ref, a#7#1#0: int :: d == #_module.Dt.B(a#7#0#0, a#7#1#0)));

// Constructor $Is
axiom (forall a#8#0#0: ref, a#8#1#0: int :: 
  { $Is(#_module.Dt.B(a#8#0#0, a#8#1#0), Tclass._module.Dt()) } 
  $Is(#_module.Dt.B(a#8#0#0, a#8#1#0), Tclass._module.Dt())
     <==> $Is(a#8#0#0, Tclass._module.MyClass()) && $Is(a#8#1#0, TInt));

// Constructor $IsAlloc
axiom (forall a#8#0#0: ref, a#8#1#0: int, $h: Heap :: 
  { $IsAlloc(#_module.Dt.B(a#8#0#0, a#8#1#0), Tclass._module.Dt(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Dt.B(a#8#0#0, a#8#1#0), Tclass._module.Dt(), $h)
       <==> $IsAlloc(a#8#0#0, Tclass._module.MyClass(), $h) && $IsAlloc(a#8#1#0, TInt, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Dt.h(d), Tclass._module.MyClass(), $h) } 
  $IsGoodHeap($h) && _module.Dt.B_q(d) && $IsAlloc(d, Tclass._module.Dt(), $h)
     ==> $IsAlloc(_module.Dt.h(d), Tclass._module.MyClass(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Dt.x(d), TInt, $h) } 
  $IsGoodHeap($h) && _module.Dt.B_q(d) && $IsAlloc(d, Tclass._module.Dt(), $h)
     ==> $IsAlloc(_module.Dt.x(d), TInt, $h));

// Constructor literal
axiom (forall a#9#0#0: ref, a#9#1#0: int :: 
  { #_module.Dt.B(Lit(a#9#0#0), LitInt(a#9#1#0)) } 
  #_module.Dt.B(Lit(a#9#0#0), LitInt(a#9#1#0))
     == Lit(#_module.Dt.B(a#9#0#0, a#9#1#0)));

function _module.Dt.h(DatatypeType) : ref;

// Constructor injectivity
axiom (forall a#10#0#0: ref, a#10#1#0: int :: 
  { #_module.Dt.B(a#10#0#0, a#10#1#0) } 
  _module.Dt.h(#_module.Dt.B(a#10#0#0, a#10#1#0)) == a#10#0#0);

// Constructor injectivity
axiom (forall a#11#0#0: ref, a#11#1#0: int :: 
  { #_module.Dt.B(a#11#0#0, a#11#1#0) } 
  _module.Dt.x(#_module.Dt.B(a#11#0#0, a#11#1#0)) == a#11#1#0);

// Constructor function declaration
function #_module.Dt.C(real) : DatatypeType;

const unique ##_module.Dt.C: DtCtorId
uses {
// Constructor identifier
axiom (forall a#12#0#0: real :: 
  { #_module.Dt.C(a#12#0#0) } 
  DatatypeCtorId(#_module.Dt.C(a#12#0#0)) == ##_module.Dt.C);
}

function _module.Dt.C_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Dt.C_q(d) } 
  _module.Dt.C_q(d) <==> DatatypeCtorId(d) == ##_module.Dt.C);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Dt.C_q(d) } 
  _module.Dt.C_q(d) ==> (exists a#13#0#0: real :: d == #_module.Dt.C(a#13#0#0)));

// Constructor $Is
axiom (forall a#14#0#0: real :: 
  { $Is(#_module.Dt.C(a#14#0#0), Tclass._module.Dt()) } 
  $Is(#_module.Dt.C(a#14#0#0), Tclass._module.Dt()) <==> $Is(a#14#0#0, TReal));

// Constructor $IsAlloc
axiom (forall a#14#0#0: real, $h: Heap :: 
  { $IsAlloc(#_module.Dt.C(a#14#0#0), Tclass._module.Dt(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Dt.C(a#14#0#0), Tclass._module.Dt(), $h)
       <==> $IsAlloc(a#14#0#0, TReal, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Dt.y(d), TReal, $h) } 
  $IsGoodHeap($h) && _module.Dt.C_q(d) && $IsAlloc(d, Tclass._module.Dt(), $h)
     ==> $IsAlloc(_module.Dt.y(d), TReal, $h));

// Constructor literal
axiom (forall a#15#0#0: real :: 
  { #_module.Dt.C(LitReal(a#15#0#0)) } 
  #_module.Dt.C(LitReal(a#15#0#0)) == Lit(#_module.Dt.C(a#15#0#0)));

// Constructor injectivity
axiom (forall a#16#0#0: real :: 
  { #_module.Dt.C(a#16#0#0) } 
  _module.Dt.y(#_module.Dt.C(a#16#0#0)) == a#16#0#0);

// Depth-one case-split function
function $IsA#_module.Dt(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Dt(d) } 
  $IsA#_module.Dt(d)
     ==> _module.Dt.A_q(d) || _module.Dt.B_q(d) || _module.Dt.C_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Dt.C_q(d), $Is(d, Tclass._module.Dt()) } 
    { _module.Dt.B_q(d), $Is(d, Tclass._module.Dt()) } 
    { _module.Dt.A_q(d), $Is(d, Tclass._module.Dt()) } 
  $Is(d, Tclass._module.Dt())
     ==> _module.Dt.A_q(d) || _module.Dt.B_q(d) || _module.Dt.C_q(d));

// Datatype extensional equality declaration
function _module.Dt#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Dt.A
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Dt#Equal(a, b), _module.Dt.A_q(a) } 
    { _module.Dt#Equal(a, b), _module.Dt.A_q(b) } 
  _module.Dt.A_q(a) && _module.Dt.A_q(b)
     ==> (_module.Dt#Equal(a, b)
       <==> _module.Dt.x(a) == _module.Dt.x(b) && _module.Dt.y(a) == _module.Dt.y(b)));

// Datatype extensional equality definition: #_module.Dt.B
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Dt#Equal(a, b), _module.Dt.B_q(a) } 
    { _module.Dt#Equal(a, b), _module.Dt.B_q(b) } 
  _module.Dt.B_q(a) && _module.Dt.B_q(b)
     ==> (_module.Dt#Equal(a, b)
       <==> _module.Dt.h(a) == _module.Dt.h(b) && _module.Dt.x(a) == _module.Dt.x(b)));

// Datatype extensional equality definition: #_module.Dt.C
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Dt#Equal(a, b), _module.Dt.C_q(a) } 
    { _module.Dt#Equal(a, b), _module.Dt.C_q(b) } 
  _module.Dt.C_q(a) && _module.Dt.C_q(b)
     ==> (_module.Dt#Equal(a, b) <==> _module.Dt.y(a) == _module.Dt.y(b)));

// Datatype extensionality axiom: _module.Dt
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Dt#Equal(a, b) } 
  _module.Dt#Equal(a, b) <==> a == b);

const unique class._module.Dt: ClassName;

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

// Constructor function declaration
function #_module.Klef.C0(int, int, int, int) : DatatypeType;

const unique ##_module.Klef.C0: DtCtorId
uses {
// Constructor identifier
axiom (forall a#17#0#0: int, a#17#1#0: int, a#17#2#0: int, a#17#3#0: int :: 
  { #_module.Klef.C0(a#17#0#0, a#17#1#0, a#17#2#0, a#17#3#0) } 
  DatatypeCtorId(#_module.Klef.C0(a#17#0#0, a#17#1#0, a#17#2#0, a#17#3#0))
     == ##_module.Klef.C0);
}

function _module.Klef.C0_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Klef.C0_q(d) } 
  _module.Klef.C0_q(d) <==> DatatypeCtorId(d) == ##_module.Klef.C0);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Klef.C0_q(d) } 
  _module.Klef.C0_q(d)
     ==> (exists a#18#0#0: int, a#18#1#0: int, a#18#2#0: int, a#18#3#0: int :: 
      d == #_module.Klef.C0(a#18#0#0, a#18#1#0, a#18#2#0, a#18#3#0)));

// Constructor $Is
axiom (forall a#19#0#0: int, a#19#1#0: int, a#19#2#0: int, a#19#3#0: int :: 
  { $Is(#_module.Klef.C0(a#19#0#0, a#19#1#0, a#19#2#0, a#19#3#0), Tclass._module.Klef()) } 
  $Is(#_module.Klef.C0(a#19#0#0, a#19#1#0, a#19#2#0, a#19#3#0), Tclass._module.Klef())
     <==> $Is(a#19#0#0, TInt)
       && $Is(a#19#1#0, TInt)
       && $Is(a#19#2#0, TInt)
       && $Is(a#19#3#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Klef._0(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Klef.C0_q(d)
       && $IsAlloc(d, Tclass._module.Klef(), $h)
     ==> $IsAlloc(_module.Klef._0(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Klef._1(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Klef.C0_q(d)
       && $IsAlloc(d, Tclass._module.Klef(), $h)
     ==> $IsAlloc(_module.Klef._1(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Klef._2(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Klef.C0_q(d)
       && $IsAlloc(d, Tclass._module.Klef(), $h)
     ==> $IsAlloc(_module.Klef._2(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Klef.c0(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Klef.C0_q(d)
       && $IsAlloc(d, Tclass._module.Klef(), $h)
     ==> $IsAlloc(_module.Klef.c0(d), TInt, $h));

// Constructor literal
axiom (forall a#20#0#0: int, a#20#1#0: int, a#20#2#0: int, a#20#3#0: int :: 
  { #_module.Klef.C0(LitInt(a#20#0#0), LitInt(a#20#1#0), LitInt(a#20#2#0), LitInt(a#20#3#0)) } 
  #_module.Klef.C0(LitInt(a#20#0#0), LitInt(a#20#1#0), LitInt(a#20#2#0), LitInt(a#20#3#0))
     == Lit(#_module.Klef.C0(a#20#0#0, a#20#1#0, a#20#2#0, a#20#3#0)));

function _module.Klef._0(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#21#0#0: int, a#21#1#0: int, a#21#2#0: int, a#21#3#0: int :: 
  { #_module.Klef.C0(a#21#0#0, a#21#1#0, a#21#2#0, a#21#3#0) } 
  _module.Klef._0(#_module.Klef.C0(a#21#0#0, a#21#1#0, a#21#2#0, a#21#3#0))
     == a#21#0#0);

function _module.Klef._1(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#22#0#0: int, a#22#1#0: int, a#22#2#0: int, a#22#3#0: int :: 
  { #_module.Klef.C0(a#22#0#0, a#22#1#0, a#22#2#0, a#22#3#0) } 
  _module.Klef._1(#_module.Klef.C0(a#22#0#0, a#22#1#0, a#22#2#0, a#22#3#0))
     == a#22#1#0);

function _module.Klef._2(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#23#0#0: int, a#23#1#0: int, a#23#2#0: int, a#23#3#0: int :: 
  { #_module.Klef.C0(a#23#0#0, a#23#1#0, a#23#2#0, a#23#3#0) } 
  _module.Klef._2(#_module.Klef.C0(a#23#0#0, a#23#1#0, a#23#2#0, a#23#3#0))
     == a#23#2#0);

function _module.Klef.c0(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#24#0#0: int, a#24#1#0: int, a#24#2#0: int, a#24#3#0: int :: 
  { #_module.Klef.C0(a#24#0#0, a#24#1#0, a#24#2#0, a#24#3#0) } 
  _module.Klef.c0(#_module.Klef.C0(a#24#0#0, a#24#1#0, a#24#2#0, a#24#3#0))
     == a#24#3#0);

// Constructor function declaration
function #_module.Klef.C1(int, int, int, int) : DatatypeType;

const unique ##_module.Klef.C1: DtCtorId
uses {
// Constructor identifier
axiom (forall a#25#0#0: int, a#25#1#0: int, a#25#2#0: int, a#25#3#0: int :: 
  { #_module.Klef.C1(a#25#0#0, a#25#1#0, a#25#2#0, a#25#3#0) } 
  DatatypeCtorId(#_module.Klef.C1(a#25#0#0, a#25#1#0, a#25#2#0, a#25#3#0))
     == ##_module.Klef.C1);
}

function _module.Klef.C1_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Klef.C1_q(d) } 
  _module.Klef.C1_q(d) <==> DatatypeCtorId(d) == ##_module.Klef.C1);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Klef.C1_q(d) } 
  _module.Klef.C1_q(d)
     ==> (exists a#26#0#0: int, a#26#1#0: int, a#26#2#0: int, a#26#3#0: int :: 
      d == #_module.Klef.C1(a#26#0#0, a#26#1#0, a#26#2#0, a#26#3#0)));

// Constructor $Is
axiom (forall a#27#0#0: int, a#27#1#0: int, a#27#2#0: int, a#27#3#0: int :: 
  { $Is(#_module.Klef.C1(a#27#0#0, a#27#1#0, a#27#2#0, a#27#3#0), Tclass._module.Klef()) } 
  $Is(#_module.Klef.C1(a#27#0#0, a#27#1#0, a#27#2#0, a#27#3#0), Tclass._module.Klef())
     <==> $Is(a#27#0#0, TInt)
       && $Is(a#27#1#0, TInt)
       && $Is(a#27#2#0, TInt)
       && $Is(a#27#3#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Klef._1(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Klef.C1_q(d)
       && $IsAlloc(d, Tclass._module.Klef(), $h)
     ==> $IsAlloc(_module.Klef._1(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Klef._2(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Klef.C1_q(d)
       && $IsAlloc(d, Tclass._module.Klef(), $h)
     ==> $IsAlloc(_module.Klef._2(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Klef._3(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Klef.C1_q(d)
       && $IsAlloc(d, Tclass._module.Klef(), $h)
     ==> $IsAlloc(_module.Klef._3(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Klef.c1(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Klef.C1_q(d)
       && $IsAlloc(d, Tclass._module.Klef(), $h)
     ==> $IsAlloc(_module.Klef.c1(d), TInt, $h));

// Constructor literal
axiom (forall a#28#0#0: int, a#28#1#0: int, a#28#2#0: int, a#28#3#0: int :: 
  { #_module.Klef.C1(LitInt(a#28#0#0), LitInt(a#28#1#0), LitInt(a#28#2#0), LitInt(a#28#3#0)) } 
  #_module.Klef.C1(LitInt(a#28#0#0), LitInt(a#28#1#0), LitInt(a#28#2#0), LitInt(a#28#3#0))
     == Lit(#_module.Klef.C1(a#28#0#0, a#28#1#0, a#28#2#0, a#28#3#0)));

// Constructor injectivity
axiom (forall a#29#0#0: int, a#29#1#0: int, a#29#2#0: int, a#29#3#0: int :: 
  { #_module.Klef.C1(a#29#0#0, a#29#1#0, a#29#2#0, a#29#3#0) } 
  _module.Klef._1(#_module.Klef.C1(a#29#0#0, a#29#1#0, a#29#2#0, a#29#3#0))
     == a#29#0#0);

// Constructor injectivity
axiom (forall a#30#0#0: int, a#30#1#0: int, a#30#2#0: int, a#30#3#0: int :: 
  { #_module.Klef.C1(a#30#0#0, a#30#1#0, a#30#2#0, a#30#3#0) } 
  _module.Klef._2(#_module.Klef.C1(a#30#0#0, a#30#1#0, a#30#2#0, a#30#3#0))
     == a#30#1#0);

function _module.Klef._3(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#31#0#0: int, a#31#1#0: int, a#31#2#0: int, a#31#3#0: int :: 
  { #_module.Klef.C1(a#31#0#0, a#31#1#0, a#31#2#0, a#31#3#0) } 
  _module.Klef._3(#_module.Klef.C1(a#31#0#0, a#31#1#0, a#31#2#0, a#31#3#0))
     == a#31#2#0);

function _module.Klef.c1(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#32#0#0: int, a#32#1#0: int, a#32#2#0: int, a#32#3#0: int :: 
  { #_module.Klef.C1(a#32#0#0, a#32#1#0, a#32#2#0, a#32#3#0) } 
  _module.Klef.c1(#_module.Klef.C1(a#32#0#0, a#32#1#0, a#32#2#0, a#32#3#0))
     == a#32#3#0);

// Constructor function declaration
function #_module.Klef.C2(int, int, int, int) : DatatypeType;

const unique ##_module.Klef.C2: DtCtorId
uses {
// Constructor identifier
axiom (forall a#33#0#0: int, a#33#1#0: int, a#33#2#0: int, a#33#3#0: int :: 
  { #_module.Klef.C2(a#33#0#0, a#33#1#0, a#33#2#0, a#33#3#0) } 
  DatatypeCtorId(#_module.Klef.C2(a#33#0#0, a#33#1#0, a#33#2#0, a#33#3#0))
     == ##_module.Klef.C2);
}

function _module.Klef.C2_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Klef.C2_q(d) } 
  _module.Klef.C2_q(d) <==> DatatypeCtorId(d) == ##_module.Klef.C2);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Klef.C2_q(d) } 
  _module.Klef.C2_q(d)
     ==> (exists a#34#0#0: int, a#34#1#0: int, a#34#2#0: int, a#34#3#0: int :: 
      d == #_module.Klef.C2(a#34#0#0, a#34#1#0, a#34#2#0, a#34#3#0)));

// Constructor $Is
axiom (forall a#35#0#0: int, a#35#1#0: int, a#35#2#0: int, a#35#3#0: int :: 
  { $Is(#_module.Klef.C2(a#35#0#0, a#35#1#0, a#35#2#0, a#35#3#0), Tclass._module.Klef()) } 
  $Is(#_module.Klef.C2(a#35#0#0, a#35#1#0, a#35#2#0, a#35#3#0), Tclass._module.Klef())
     <==> $Is(a#35#0#0, TInt)
       && $Is(a#35#1#0, TInt)
       && $Is(a#35#2#0, TInt)
       && $Is(a#35#3#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Klef._2(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Klef.C2_q(d)
       && $IsAlloc(d, Tclass._module.Klef(), $h)
     ==> $IsAlloc(_module.Klef._2(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Klef._3(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Klef.C2_q(d)
       && $IsAlloc(d, Tclass._module.Klef(), $h)
     ==> $IsAlloc(_module.Klef._3(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Klef._0(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Klef.C2_q(d)
       && $IsAlloc(d, Tclass._module.Klef(), $h)
     ==> $IsAlloc(_module.Klef._0(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Klef.c2(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Klef.C2_q(d)
       && $IsAlloc(d, Tclass._module.Klef(), $h)
     ==> $IsAlloc(_module.Klef.c2(d), TInt, $h));

// Constructor literal
axiom (forall a#36#0#0: int, a#36#1#0: int, a#36#2#0: int, a#36#3#0: int :: 
  { #_module.Klef.C2(LitInt(a#36#0#0), LitInt(a#36#1#0), LitInt(a#36#2#0), LitInt(a#36#3#0)) } 
  #_module.Klef.C2(LitInt(a#36#0#0), LitInt(a#36#1#0), LitInt(a#36#2#0), LitInt(a#36#3#0))
     == Lit(#_module.Klef.C2(a#36#0#0, a#36#1#0, a#36#2#0, a#36#3#0)));

// Constructor injectivity
axiom (forall a#37#0#0: int, a#37#1#0: int, a#37#2#0: int, a#37#3#0: int :: 
  { #_module.Klef.C2(a#37#0#0, a#37#1#0, a#37#2#0, a#37#3#0) } 
  _module.Klef._2(#_module.Klef.C2(a#37#0#0, a#37#1#0, a#37#2#0, a#37#3#0))
     == a#37#0#0);

// Constructor injectivity
axiom (forall a#38#0#0: int, a#38#1#0: int, a#38#2#0: int, a#38#3#0: int :: 
  { #_module.Klef.C2(a#38#0#0, a#38#1#0, a#38#2#0, a#38#3#0) } 
  _module.Klef._3(#_module.Klef.C2(a#38#0#0, a#38#1#0, a#38#2#0, a#38#3#0))
     == a#38#1#0);

// Constructor injectivity
axiom (forall a#39#0#0: int, a#39#1#0: int, a#39#2#0: int, a#39#3#0: int :: 
  { #_module.Klef.C2(a#39#0#0, a#39#1#0, a#39#2#0, a#39#3#0) } 
  _module.Klef._0(#_module.Klef.C2(a#39#0#0, a#39#1#0, a#39#2#0, a#39#3#0))
     == a#39#2#0);

function _module.Klef.c2(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#40#0#0: int, a#40#1#0: int, a#40#2#0: int, a#40#3#0: int :: 
  { #_module.Klef.C2(a#40#0#0, a#40#1#0, a#40#2#0, a#40#3#0) } 
  _module.Klef.c2(#_module.Klef.C2(a#40#0#0, a#40#1#0, a#40#2#0, a#40#3#0))
     == a#40#3#0);

// Constructor function declaration
function #_module.Klef.C3(int, int, int, int) : DatatypeType;

const unique ##_module.Klef.C3: DtCtorId
uses {
// Constructor identifier
axiom (forall a#41#0#0: int, a#41#1#0: int, a#41#2#0: int, a#41#3#0: int :: 
  { #_module.Klef.C3(a#41#0#0, a#41#1#0, a#41#2#0, a#41#3#0) } 
  DatatypeCtorId(#_module.Klef.C3(a#41#0#0, a#41#1#0, a#41#2#0, a#41#3#0))
     == ##_module.Klef.C3);
}

function _module.Klef.C3_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Klef.C3_q(d) } 
  _module.Klef.C3_q(d) <==> DatatypeCtorId(d) == ##_module.Klef.C3);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Klef.C3_q(d) } 
  _module.Klef.C3_q(d)
     ==> (exists a#42#0#0: int, a#42#1#0: int, a#42#2#0: int, a#42#3#0: int :: 
      d == #_module.Klef.C3(a#42#0#0, a#42#1#0, a#42#2#0, a#42#3#0)));

// Constructor $Is
axiom (forall a#43#0#0: int, a#43#1#0: int, a#43#2#0: int, a#43#3#0: int :: 
  { $Is(#_module.Klef.C3(a#43#0#0, a#43#1#0, a#43#2#0, a#43#3#0), Tclass._module.Klef()) } 
  $Is(#_module.Klef.C3(a#43#0#0, a#43#1#0, a#43#2#0, a#43#3#0), Tclass._module.Klef())
     <==> $Is(a#43#0#0, TInt)
       && $Is(a#43#1#0, TInt)
       && $Is(a#43#2#0, TInt)
       && $Is(a#43#3#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Klef._3(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Klef.C3_q(d)
       && $IsAlloc(d, Tclass._module.Klef(), $h)
     ==> $IsAlloc(_module.Klef._3(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Klef._0(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Klef.C3_q(d)
       && $IsAlloc(d, Tclass._module.Klef(), $h)
     ==> $IsAlloc(_module.Klef._0(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Klef._1(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Klef.C3_q(d)
       && $IsAlloc(d, Tclass._module.Klef(), $h)
     ==> $IsAlloc(_module.Klef._1(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Klef.c3(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Klef.C3_q(d)
       && $IsAlloc(d, Tclass._module.Klef(), $h)
     ==> $IsAlloc(_module.Klef.c3(d), TInt, $h));

// Constructor literal
axiom (forall a#44#0#0: int, a#44#1#0: int, a#44#2#0: int, a#44#3#0: int :: 
  { #_module.Klef.C3(LitInt(a#44#0#0), LitInt(a#44#1#0), LitInt(a#44#2#0), LitInt(a#44#3#0)) } 
  #_module.Klef.C3(LitInt(a#44#0#0), LitInt(a#44#1#0), LitInt(a#44#2#0), LitInt(a#44#3#0))
     == Lit(#_module.Klef.C3(a#44#0#0, a#44#1#0, a#44#2#0, a#44#3#0)));

// Constructor injectivity
axiom (forall a#45#0#0: int, a#45#1#0: int, a#45#2#0: int, a#45#3#0: int :: 
  { #_module.Klef.C3(a#45#0#0, a#45#1#0, a#45#2#0, a#45#3#0) } 
  _module.Klef._3(#_module.Klef.C3(a#45#0#0, a#45#1#0, a#45#2#0, a#45#3#0))
     == a#45#0#0);

// Constructor injectivity
axiom (forall a#46#0#0: int, a#46#1#0: int, a#46#2#0: int, a#46#3#0: int :: 
  { #_module.Klef.C3(a#46#0#0, a#46#1#0, a#46#2#0, a#46#3#0) } 
  _module.Klef._0(#_module.Klef.C3(a#46#0#0, a#46#1#0, a#46#2#0, a#46#3#0))
     == a#46#1#0);

// Constructor injectivity
axiom (forall a#47#0#0: int, a#47#1#0: int, a#47#2#0: int, a#47#3#0: int :: 
  { #_module.Klef.C3(a#47#0#0, a#47#1#0, a#47#2#0, a#47#3#0) } 
  _module.Klef._1(#_module.Klef.C3(a#47#0#0, a#47#1#0, a#47#2#0, a#47#3#0))
     == a#47#2#0);

function _module.Klef.c3(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#48#0#0: int, a#48#1#0: int, a#48#2#0: int, a#48#3#0: int :: 
  { #_module.Klef.C3(a#48#0#0, a#48#1#0, a#48#2#0, a#48#3#0) } 
  _module.Klef.c3(#_module.Klef.C3(a#48#0#0, a#48#1#0, a#48#2#0, a#48#3#0))
     == a#48#3#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Klef(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Klef())
     ==> $IsAlloc(d, Tclass._module.Klef(), $h));

// Depth-one case-split function
function $IsA#_module.Klef(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Klef(d) } 
  $IsA#_module.Klef(d)
     ==> _module.Klef.C0_q(d)
       || _module.Klef.C1_q(d)
       || _module.Klef.C2_q(d)
       || _module.Klef.C3_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Klef.C3_q(d), $Is(d, Tclass._module.Klef()) } 
    { _module.Klef.C2_q(d), $Is(d, Tclass._module.Klef()) } 
    { _module.Klef.C1_q(d), $Is(d, Tclass._module.Klef()) } 
    { _module.Klef.C0_q(d), $Is(d, Tclass._module.Klef()) } 
  $Is(d, Tclass._module.Klef())
     ==> _module.Klef.C0_q(d)
       || _module.Klef.C1_q(d)
       || _module.Klef.C2_q(d)
       || _module.Klef.C3_q(d));

// Datatype extensional equality declaration
function _module.Klef#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Klef.C0
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Klef#Equal(a, b), _module.Klef.C0_q(a) } 
    { _module.Klef#Equal(a, b), _module.Klef.C0_q(b) } 
  _module.Klef.C0_q(a) && _module.Klef.C0_q(b)
     ==> (_module.Klef#Equal(a, b)
       <==> _module.Klef._0(a) == _module.Klef._0(b)
         && _module.Klef._1(a) == _module.Klef._1(b)
         && _module.Klef._2(a) == _module.Klef._2(b)
         && _module.Klef.c0(a) == _module.Klef.c0(b)));

// Datatype extensional equality definition: #_module.Klef.C1
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Klef#Equal(a, b), _module.Klef.C1_q(a) } 
    { _module.Klef#Equal(a, b), _module.Klef.C1_q(b) } 
  _module.Klef.C1_q(a) && _module.Klef.C1_q(b)
     ==> (_module.Klef#Equal(a, b)
       <==> _module.Klef._1(a) == _module.Klef._1(b)
         && _module.Klef._2(a) == _module.Klef._2(b)
         && _module.Klef._3(a) == _module.Klef._3(b)
         && _module.Klef.c1(a) == _module.Klef.c1(b)));

// Datatype extensional equality definition: #_module.Klef.C2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Klef#Equal(a, b), _module.Klef.C2_q(a) } 
    { _module.Klef#Equal(a, b), _module.Klef.C2_q(b) } 
  _module.Klef.C2_q(a) && _module.Klef.C2_q(b)
     ==> (_module.Klef#Equal(a, b)
       <==> _module.Klef._2(a) == _module.Klef._2(b)
         && _module.Klef._3(a) == _module.Klef._3(b)
         && _module.Klef._0(a) == _module.Klef._0(b)
         && _module.Klef.c2(a) == _module.Klef.c2(b)));

// Datatype extensional equality definition: #_module.Klef.C3
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Klef#Equal(a, b), _module.Klef.C3_q(a) } 
    { _module.Klef#Equal(a, b), _module.Klef.C3_q(b) } 
  _module.Klef.C3_q(a) && _module.Klef.C3_q(b)
     ==> (_module.Klef#Equal(a, b)
       <==> _module.Klef._3(a) == _module.Klef._3(b)
         && _module.Klef._0(a) == _module.Klef._0(b)
         && _module.Klef._1(a) == _module.Klef._1(b)
         && _module.Klef.c3(a) == _module.Klef.c3(b)));

// Datatype extensionality axiom: _module.Klef
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Klef#Equal(a, b) } 
  _module.Klef#Equal(a, b) <==> a == b);

const unique class._module.Klef: ClassName;

// Constructor function declaration
function #_module.Datte.AA(int, int) : DatatypeType;

const unique ##_module.Datte.AA: DtCtorId
uses {
// Constructor identifier
axiom (forall a#49#0#0: int, a#49#1#0: int :: 
  { #_module.Datte.AA(a#49#0#0, a#49#1#0) } 
  DatatypeCtorId(#_module.Datte.AA(a#49#0#0, a#49#1#0)) == ##_module.Datte.AA);
}

function _module.Datte.AA_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Datte.AA_q(d) } 
  _module.Datte.AA_q(d) <==> DatatypeCtorId(d) == ##_module.Datte.AA);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Datte.AA_q(d) } 
  _module.Datte.AA_q(d)
     ==> (exists a#50#0#0: int, a#50#1#0: int :: 
      d == #_module.Datte.AA(a#50#0#0, a#50#1#0)));

// Constructor $Is
axiom (forall _module.Datte$T: Ty, a#51#0#0: int, a#51#1#0: int :: 
  { $Is(#_module.Datte.AA(a#51#0#0, a#51#1#0), Tclass._module.Datte(_module.Datte$T)) } 
  $Is(#_module.Datte.AA(a#51#0#0, a#51#1#0), Tclass._module.Datte(_module.Datte$T))
     <==> $Is(a#51#0#0, TInt) && $Is(a#51#1#0, TInt));

// Constructor $IsAlloc
axiom (forall _module.Datte$T: Ty, a#51#0#0: int, a#51#1#0: int, $h: Heap :: 
  { $IsAlloc(#_module.Datte.AA(a#51#0#0, a#51#1#0), Tclass._module.Datte(_module.Datte$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Datte.AA(a#51#0#0, a#51#1#0), Tclass._module.Datte(_module.Datte$T), $h)
       <==> $IsAlloc(a#51#0#0, TInt, $h) && $IsAlloc(a#51#1#0, TInt, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Datte.a(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Datte.AA_q(d)
       && (exists _module.Datte$T: Ty :: 
        { $IsAlloc(d, Tclass._module.Datte(_module.Datte$T), $h) } 
        $IsAlloc(d, Tclass._module.Datte(_module.Datte$T), $h))
     ==> $IsAlloc(_module.Datte.a(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Datte.x(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Datte.AA_q(d)
       && (exists _module.Datte$T: Ty :: 
        { $IsAlloc(d, Tclass._module.Datte(_module.Datte$T), $h) } 
        $IsAlloc(d, Tclass._module.Datte(_module.Datte$T), $h))
     ==> $IsAlloc(_module.Datte.x(d), TInt, $h));

// Constructor literal
axiom (forall a#52#0#0: int, a#52#1#0: int :: 
  { #_module.Datte.AA(LitInt(a#52#0#0), LitInt(a#52#1#0)) } 
  #_module.Datte.AA(LitInt(a#52#0#0), LitInt(a#52#1#0))
     == Lit(#_module.Datte.AA(a#52#0#0, a#52#1#0)));

function _module.Datte.a(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#53#0#0: int, a#53#1#0: int :: 
  { #_module.Datte.AA(a#53#0#0, a#53#1#0) } 
  _module.Datte.a(#_module.Datte.AA(a#53#0#0, a#53#1#0)) == a#53#0#0);

function _module.Datte.x(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#54#0#0: int, a#54#1#0: int :: 
  { #_module.Datte.AA(a#54#0#0, a#54#1#0) } 
  _module.Datte.x(#_module.Datte.AA(a#54#0#0, a#54#1#0)) == a#54#1#0);

// Constructor function declaration
function #_module.Datte.BB(bool, int) : DatatypeType;

const unique ##_module.Datte.BB: DtCtorId
uses {
// Constructor identifier
axiom (forall a#55#0#0: bool, a#55#1#0: int :: 
  { #_module.Datte.BB(a#55#0#0, a#55#1#0) } 
  DatatypeCtorId(#_module.Datte.BB(a#55#0#0, a#55#1#0)) == ##_module.Datte.BB);
}

function _module.Datte.BB_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Datte.BB_q(d) } 
  _module.Datte.BB_q(d) <==> DatatypeCtorId(d) == ##_module.Datte.BB);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Datte.BB_q(d) } 
  _module.Datte.BB_q(d)
     ==> (exists a#56#0#0: bool, a#56#1#0: int :: 
      d == #_module.Datte.BB(a#56#0#0, a#56#1#0)));

// Constructor $Is
axiom (forall _module.Datte$T: Ty, a#57#0#0: bool, a#57#1#0: int :: 
  { $Is(#_module.Datte.BB(a#57#0#0, a#57#1#0), Tclass._module.Datte(_module.Datte$T)) } 
  $Is(#_module.Datte.BB(a#57#0#0, a#57#1#0), Tclass._module.Datte(_module.Datte$T))
     <==> $Is(a#57#0#0, TBool) && $Is(a#57#1#0, TInt));

// Constructor $IsAlloc
axiom (forall _module.Datte$T: Ty, a#57#0#0: bool, a#57#1#0: int, $h: Heap :: 
  { $IsAlloc(#_module.Datte.BB(a#57#0#0, a#57#1#0), Tclass._module.Datte(_module.Datte$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Datte.BB(a#57#0#0, a#57#1#0), Tclass._module.Datte(_module.Datte$T), $h)
       <==> $IsAlloc(a#57#0#0, TBool, $h) && $IsAlloc(a#57#1#0, TInt, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Datte.b(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Datte.BB_q(d)
       && (exists _module.Datte$T: Ty :: 
        { $IsAlloc(d, Tclass._module.Datte(_module.Datte$T), $h) } 
        $IsAlloc(d, Tclass._module.Datte(_module.Datte$T), $h))
     ==> $IsAlloc(_module.Datte.b(d), TBool, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Datte.x(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Datte.BB_q(d)
       && (exists _module.Datte$T: Ty :: 
        { $IsAlloc(d, Tclass._module.Datte(_module.Datte$T), $h) } 
        $IsAlloc(d, Tclass._module.Datte(_module.Datte$T), $h))
     ==> $IsAlloc(_module.Datte.x(d), TInt, $h));

// Constructor literal
axiom (forall a#58#0#0: bool, a#58#1#0: int :: 
  { #_module.Datte.BB(Lit(a#58#0#0), LitInt(a#58#1#0)) } 
  #_module.Datte.BB(Lit(a#58#0#0), LitInt(a#58#1#0))
     == Lit(#_module.Datte.BB(a#58#0#0, a#58#1#0)));

function _module.Datte.b(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#59#0#0: bool, a#59#1#0: int :: 
  { #_module.Datte.BB(a#59#0#0, a#59#1#0) } 
  _module.Datte.b(#_module.Datte.BB(a#59#0#0, a#59#1#0)) == a#59#0#0);

// Constructor injectivity
axiom (forall a#60#0#0: bool, a#60#1#0: int :: 
  { #_module.Datte.BB(a#60#0#0, a#60#1#0) } 
  _module.Datte.x(#_module.Datte.BB(a#60#0#0, a#60#1#0)) == a#60#1#0);

// Constructor function declaration
function #_module.Datte.CC(real) : DatatypeType;

const unique ##_module.Datte.CC: DtCtorId
uses {
// Constructor identifier
axiom (forall a#61#0#0: real :: 
  { #_module.Datte.CC(a#61#0#0) } 
  DatatypeCtorId(#_module.Datte.CC(a#61#0#0)) == ##_module.Datte.CC);
}

function _module.Datte.CC_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Datte.CC_q(d) } 
  _module.Datte.CC_q(d) <==> DatatypeCtorId(d) == ##_module.Datte.CC);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Datte.CC_q(d) } 
  _module.Datte.CC_q(d)
     ==> (exists a#62#0#0: real :: d == #_module.Datte.CC(a#62#0#0)));

// Constructor $Is
axiom (forall _module.Datte$T: Ty, a#63#0#0: real :: 
  { $Is(#_module.Datte.CC(a#63#0#0), Tclass._module.Datte(_module.Datte$T)) } 
  $Is(#_module.Datte.CC(a#63#0#0), Tclass._module.Datte(_module.Datte$T))
     <==> $Is(a#63#0#0, TReal));

// Constructor $IsAlloc
axiom (forall _module.Datte$T: Ty, a#63#0#0: real, $h: Heap :: 
  { $IsAlloc(#_module.Datte.CC(a#63#0#0), Tclass._module.Datte(_module.Datte$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Datte.CC(a#63#0#0), Tclass._module.Datte(_module.Datte$T), $h)
       <==> $IsAlloc(a#63#0#0, TReal, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Datte.c(d), TReal, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Datte.CC_q(d)
       && (exists _module.Datte$T: Ty :: 
        { $IsAlloc(d, Tclass._module.Datte(_module.Datte$T), $h) } 
        $IsAlloc(d, Tclass._module.Datte(_module.Datte$T), $h))
     ==> $IsAlloc(_module.Datte.c(d), TReal, $h));

// Constructor literal
axiom (forall a#64#0#0: real :: 
  { #_module.Datte.CC(LitReal(a#64#0#0)) } 
  #_module.Datte.CC(LitReal(a#64#0#0)) == Lit(#_module.Datte.CC(a#64#0#0)));

function _module.Datte.c(DatatypeType) : real;

// Constructor injectivity
axiom (forall a#65#0#0: real :: 
  { #_module.Datte.CC(a#65#0#0) } 
  _module.Datte.c(#_module.Datte.CC(a#65#0#0)) == a#65#0#0);

// Constructor function declaration
function #_module.Datte.DD(int, Set, bv27, Box) : DatatypeType;

const unique ##_module.Datte.DD: DtCtorId
uses {
// Constructor identifier
axiom (forall a#66#0#0: int, a#66#1#0: Set, a#66#2#0: bv27, a#66#3#0: Box :: 
  { #_module.Datte.DD(a#66#0#0, a#66#1#0, a#66#2#0, a#66#3#0) } 
  DatatypeCtorId(#_module.Datte.DD(a#66#0#0, a#66#1#0, a#66#2#0, a#66#3#0))
     == ##_module.Datte.DD);
}

function _module.Datte.DD_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Datte.DD_q(d) } 
  _module.Datte.DD_q(d) <==> DatatypeCtorId(d) == ##_module.Datte.DD);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Datte.DD_q(d) } 
  _module.Datte.DD_q(d)
     ==> (exists a#67#0#0: int, a#67#1#0: Set, a#67#2#0: bv27, a#67#3#0: Box :: 
      d == #_module.Datte.DD(a#67#0#0, a#67#1#0, a#67#2#0, a#67#3#0)));

// Constructor $Is
axiom (forall _module.Datte$T: Ty, a#68#0#0: int, a#68#1#0: Set, a#68#2#0: bv27, a#68#3#0: Box :: 
  { $Is(#_module.Datte.DD(a#68#0#0, a#68#1#0, a#68#2#0, a#68#3#0), 
      Tclass._module.Datte(_module.Datte$T)) } 
  $Is(#_module.Datte.DD(a#68#0#0, a#68#1#0, a#68#2#0, a#68#3#0), 
      Tclass._module.Datte(_module.Datte$T))
     <==> $Is(a#68#0#0, TInt)
       && $Is(a#68#1#0, TSet(TInt))
       && $Is(a#68#2#0, TBitvector(27))
       && $IsBox(a#68#3#0, _module.Datte$T));

// Constructor $IsAlloc
axiom (forall _module.Datte$T: Ty, 
    a#68#0#0: int, 
    a#68#1#0: Set, 
    a#68#2#0: bv27, 
    a#68#3#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_module.Datte.DD(a#68#0#0, a#68#1#0, a#68#2#0, a#68#3#0), 
      Tclass._module.Datte(_module.Datte$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Datte.DD(a#68#0#0, a#68#1#0, a#68#2#0, a#68#3#0), 
        Tclass._module.Datte(_module.Datte$T), 
        $h)
       <==> $IsAlloc(a#68#0#0, TInt, $h)
         && $IsAlloc(a#68#1#0, TSet(TInt), $h)
         && $IsAlloc(a#68#2#0, TBitvector(27), $h)
         && $IsAllocBox(a#68#3#0, _module.Datte$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Datte.x(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Datte.DD_q(d)
       && (exists _module.Datte$T: Ty :: 
        { $IsAlloc(d, Tclass._module.Datte(_module.Datte$T), $h) } 
        $IsAlloc(d, Tclass._module.Datte(_module.Datte$T), $h))
     ==> $IsAlloc(_module.Datte.x(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Datte.o(d), TSet(TInt), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Datte.DD_q(d)
       && (exists _module.Datte$T: Ty :: 
        { $IsAlloc(d, Tclass._module.Datte(_module.Datte$T), $h) } 
        $IsAlloc(d, Tclass._module.Datte(_module.Datte$T), $h))
     ==> $IsAlloc(_module.Datte.o(d), TSet(TInt), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Datte.p(d), TBitvector(27), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Datte.DD_q(d)
       && (exists _module.Datte$T: Ty :: 
        { $IsAlloc(d, Tclass._module.Datte(_module.Datte$T), $h) } 
        $IsAlloc(d, Tclass._module.Datte(_module.Datte$T), $h))
     ==> $IsAlloc(_module.Datte.p(d), TBitvector(27), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Datte$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Datte.q(d), _module.Datte$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Datte.DD_q(d)
       && $IsAlloc(d, Tclass._module.Datte(_module.Datte$T), $h)
     ==> $IsAllocBox(_module.Datte.q(d), _module.Datte$T, $h));

// Constructor literal
axiom (forall a#69#0#0: int, a#69#1#0: Set, a#69#2#0: bv27, a#69#3#0: Box :: 
  { #_module.Datte.DD(LitInt(a#69#0#0), Lit(a#69#1#0), Lit(a#69#2#0), Lit(a#69#3#0)) } 
  #_module.Datte.DD(LitInt(a#69#0#0), Lit(a#69#1#0), Lit(a#69#2#0), Lit(a#69#3#0))
     == Lit(#_module.Datte.DD(a#69#0#0, a#69#1#0, a#69#2#0, a#69#3#0)));

// Constructor injectivity
axiom (forall a#70#0#0: int, a#70#1#0: Set, a#70#2#0: bv27, a#70#3#0: Box :: 
  { #_module.Datte.DD(a#70#0#0, a#70#1#0, a#70#2#0, a#70#3#0) } 
  _module.Datte.x(#_module.Datte.DD(a#70#0#0, a#70#1#0, a#70#2#0, a#70#3#0))
     == a#70#0#0);

function _module.Datte.o(DatatypeType) : Set;

// Constructor injectivity
axiom (forall a#71#0#0: int, a#71#1#0: Set, a#71#2#0: bv27, a#71#3#0: Box :: 
  { #_module.Datte.DD(a#71#0#0, a#71#1#0, a#71#2#0, a#71#3#0) } 
  _module.Datte.o(#_module.Datte.DD(a#71#0#0, a#71#1#0, a#71#2#0, a#71#3#0))
     == a#71#1#0);

// Inductive set element rank
axiom (forall a#72#0#0: int, a#72#1#0: Set, a#72#2#0: bv27, a#72#3#0: Box, d: DatatypeType :: 
  { Set#IsMember(a#72#1#0, $Box(d)), #_module.Datte.DD(a#72#0#0, a#72#1#0, a#72#2#0, a#72#3#0) } 
  Set#IsMember(a#72#1#0, $Box(d))
     ==> DtRank(d) < DtRank(#_module.Datte.DD(a#72#0#0, a#72#1#0, a#72#2#0, a#72#3#0)));

function _module.Datte.p(DatatypeType) : bv27;

// Constructor injectivity
axiom (forall a#73#0#0: int, a#73#1#0: Set, a#73#2#0: bv27, a#73#3#0: Box :: 
  { #_module.Datte.DD(a#73#0#0, a#73#1#0, a#73#2#0, a#73#3#0) } 
  _module.Datte.p(#_module.Datte.DD(a#73#0#0, a#73#1#0, a#73#2#0, a#73#3#0))
     == a#73#2#0);

function _module.Datte.q(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#74#0#0: int, a#74#1#0: Set, a#74#2#0: bv27, a#74#3#0: Box :: 
  { #_module.Datte.DD(a#74#0#0, a#74#1#0, a#74#2#0, a#74#3#0) } 
  _module.Datte.q(#_module.Datte.DD(a#74#0#0, a#74#1#0, a#74#2#0, a#74#3#0))
     == a#74#3#0);

// Inductive rank
axiom (forall a#75#0#0: int, a#75#1#0: Set, a#75#2#0: bv27, a#75#3#0: Box :: 
  { #_module.Datte.DD(a#75#0#0, a#75#1#0, a#75#2#0, a#75#3#0) } 
  BoxRank(a#75#3#0)
     < DtRank(#_module.Datte.DD(a#75#0#0, a#75#1#0, a#75#2#0, a#75#3#0)));

// Depth-one case-split function
function $IsA#_module.Datte(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Datte(d) } 
  $IsA#_module.Datte(d)
     ==> _module.Datte.AA_q(d)
       || _module.Datte.BB_q(d)
       || _module.Datte.CC_q(d)
       || _module.Datte.DD_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Datte$T: Ty, d: DatatypeType :: 
  { _module.Datte.DD_q(d), $Is(d, Tclass._module.Datte(_module.Datte$T)) } 
    { _module.Datte.CC_q(d), $Is(d, Tclass._module.Datte(_module.Datte$T)) } 
    { _module.Datte.BB_q(d), $Is(d, Tclass._module.Datte(_module.Datte$T)) } 
    { _module.Datte.AA_q(d), $Is(d, Tclass._module.Datte(_module.Datte$T)) } 
  $Is(d, Tclass._module.Datte(_module.Datte$T))
     ==> _module.Datte.AA_q(d)
       || _module.Datte.BB_q(d)
       || _module.Datte.CC_q(d)
       || _module.Datte.DD_q(d));

// Datatype extensional equality declaration
function _module.Datte#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Datte.AA
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Datte#Equal(a, b), _module.Datte.AA_q(a) } 
    { _module.Datte#Equal(a, b), _module.Datte.AA_q(b) } 
  _module.Datte.AA_q(a) && _module.Datte.AA_q(b)
     ==> (_module.Datte#Equal(a, b)
       <==> _module.Datte.a(a) == _module.Datte.a(b)
         && _module.Datte.x(a) == _module.Datte.x(b)));

// Datatype extensional equality definition: #_module.Datte.BB
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Datte#Equal(a, b), _module.Datte.BB_q(a) } 
    { _module.Datte#Equal(a, b), _module.Datte.BB_q(b) } 
  _module.Datte.BB_q(a) && _module.Datte.BB_q(b)
     ==> (_module.Datte#Equal(a, b)
       <==> _module.Datte.b(a) == _module.Datte.b(b)
         && _module.Datte.x(a) == _module.Datte.x(b)));

// Datatype extensional equality definition: #_module.Datte.CC
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Datte#Equal(a, b), _module.Datte.CC_q(a) } 
    { _module.Datte#Equal(a, b), _module.Datte.CC_q(b) } 
  _module.Datte.CC_q(a) && _module.Datte.CC_q(b)
     ==> (_module.Datte#Equal(a, b) <==> _module.Datte.c(a) == _module.Datte.c(b)));

// Datatype extensional equality definition: #_module.Datte.DD
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Datte#Equal(a, b), _module.Datte.DD_q(a) } 
    { _module.Datte#Equal(a, b), _module.Datte.DD_q(b) } 
  _module.Datte.DD_q(a) && _module.Datte.DD_q(b)
     ==> (_module.Datte#Equal(a, b)
       <==> _module.Datte.x(a) == _module.Datte.x(b)
         && Set#Equal(_module.Datte.o(a), _module.Datte.o(b))
         && _module.Datte.p(a) == _module.Datte.p(b)
         && _module.Datte.q(a) == _module.Datte.q(b)));

// Datatype extensionality axiom: _module.Datte
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Datte#Equal(a, b) } 
  _module.Datte#Equal(a, b) <==> a == b);

const unique class._module.Datte: ClassName;

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

const unique tytagFamily$MyClass: TyTagFamily;

const unique tytagFamily$Dt: TyTagFamily;

const unique tytagFamily$Klef: TyTagFamily;

const unique tytagFamily$Datte: TyTagFamily;
