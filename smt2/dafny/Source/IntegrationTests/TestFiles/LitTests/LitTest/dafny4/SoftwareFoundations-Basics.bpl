// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy

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

function Tclass._System.___hFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc3: TyTag;

// Tclass._System.___hFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hFunc3
     && TagFamily(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#Func3);

function Tclass._System.___hFunc3_0(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_0(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hFunc3_1(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_1(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hFunc3_2(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_2(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hFunc3_3(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_3(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R)));

function Handle3([Heap,Box,Box,Box]Box, [Heap,Box,Box,Box]bool, [Heap,Box,Box,Box]Set)
   : HandleType;

function Apply3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : Box;

function Requires3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : bool;

function Reads3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Apply3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2) } 
  Apply3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2)
     == h[heap, bx0, bx1, bx2]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Requires3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2) } 
  r[heap, bx0, bx1, bx2]
     ==> Requires3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx: Box :: 
  { Set#IsMember(Reads3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2), bx) } 
  Set#IsMember(Reads3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2), bx)
     == Set#IsMember(rd[heap, bx0, bx1, bx2], bx));

function {:inline} Requires3#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box)
   : bool
{
  true
}

function {:inline} Reads3#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box)
   : bool
{
  true
}

// frame axiom for Reads3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Reads3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Apply3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Apply3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// empty-reads property for Reads3 
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), $IsGoodHeap(heap) } 
    { Reads3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
     ==> (Set#Equal(Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), Set#Empty(): Set)
       <==> Set#Equal(Reads3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2), Set#Empty(): Set)));

// empty-reads property for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Requires3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), $IsGoodHeap(heap) } 
    { Requires3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && Set#Equal(Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), Set#Empty(): Set)
     ==> Requires3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty :: 
  { $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3)) } 
  $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
     <==> (forall h: Heap, bx0: Box, bx1: Box, bx2: Box :: 
      { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && $IsBox(bx2, t2)
           && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
         ==> $IsBox(Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), t3)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, u0: Ty, u1: Ty, u2: Ty, u3: Ty :: 
  { $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3)), $Is(f, Tclass._System.___hFunc3(u0, u1, u2, u3)) } 
  $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, u1) } { $IsBox(bx, t1) } 
        $IsBox(bx, u1) ==> $IsBox(bx, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, u2) } { $IsBox(bx, t2) } 
        $IsBox(bx, u2) ==> $IsBox(bx, t2))
       && (forall bx: Box :: 
        { $IsBox(bx, t3) } { $IsBox(bx, u3) } 
        $IsBox(bx, t3) ==> $IsBox(bx, u3))
     ==> $Is(f, Tclass._System.___hFunc3(u0, u1, u2, u3)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h)
       <==> (forall bx0: Box, bx1: Box, bx2: Box :: 
        { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
          { Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && 
            $IsBox(bx2, t2)
             && $IsAllocBox(bx2, t2, h)
             && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), $Box(r)) } 
            r != null && Set#IsMember(Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h)
     ==> (forall bx0: Box, bx1: Box, bx2: Box :: 
      { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && $IsAllocBox(bx2, t2, h)
           && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
         ==> $IsAllocBox(Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), t3, h)));

function Tclass._System.___hPartialFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc3: TyTag;

// Tclass._System.___hPartialFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hPartialFunc3
     && TagFamily(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#PartialFunc3);

function Tclass._System.___hPartialFunc3_0(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_0(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc3_1(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_1(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc3_2(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_2(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hPartialFunc3_3(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_3(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)));

// $Is axiom for subset type _System._#PartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1) && $IsBox(x2#0, #$T2)
           ==> Set#Equal(Reads3(#$T0, #$T1, #$T2, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0), Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R), $h));

function Tclass._System.___hTotalFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc3: TyTag;

// Tclass._System.___hTotalFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hTotalFunc3
     && TagFamily(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#TotalFunc3);

function Tclass._System.___hTotalFunc3_0(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_0(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc3_1(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_1(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc3_2(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_2(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hTotalFunc3_3(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_3(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)));

// $Is axiom for subset type _System._#TotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1) && $IsBox(x2#0, #$T2)
           ==> Requires3(#$T0, #$T1, #$T2, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h));

const unique class._module.__default: ClassName;

// function declaration for _module._default.next_weekday
function _module.__default.next__weekday(d#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.next__weekday
axiom 1 <= $FunctionContextHeight
   ==> (forall d#0: DatatypeType :: 
    { _module.__default.next__weekday(d#0) } 
    _module.__default.next__weekday#canCall(d#0)
         || (1 < $FunctionContextHeight && $Is(d#0, Tclass._module.day()))
       ==> $Is(_module.__default.next__weekday(d#0), Tclass._module.day()));
// definition axiom for _module.__default.next__weekday (revealed)
axiom {:id "id0"} 1 <= $FunctionContextHeight
   ==> (forall d#0: DatatypeType :: 
    { _module.__default.next__weekday(d#0) } 
    _module.__default.next__weekday#canCall(d#0)
         || (1 < $FunctionContextHeight && $Is(d#0, Tclass._module.day()))
       ==> _module.__default.next__weekday(d#0)
         == (if _module.day.monday_q(d#0)
           then #_module.day.tuesday()
           else (if _module.day.tuesday_q(d#0)
             then #_module.day.wednesday()
             else (if _module.day.wednesday_q(d#0)
               then #_module.day.thursday()
               else (if _module.day.thursday_q(d#0)
                 then #_module.day.friday()
                 else (if _module.day.friday_q(d#0)
                   then #_module.day.monday()
                   else (if _module.day.saturday_q(d#0)
                     then #_module.day.monday()
                     else #_module.day.monday())))))));
// definition axiom for _module.__default.next__weekday for all literals (revealed)
axiom {:id "id1"} 1 <= $FunctionContextHeight
   ==> (forall d#0: DatatypeType :: 
    {:weight 3} { _module.__default.next__weekday(Lit(d#0)) } 
    _module.__default.next__weekday#canCall(Lit(d#0))
         || (1 < $FunctionContextHeight && $Is(d#0, Tclass._module.day()))
       ==> _module.__default.next__weekday(Lit(d#0))
         == (if _module.day.monday_q(Lit(d#0))
           then #_module.day.tuesday()
           else (if _module.day.tuesday_q(Lit(d#0))
             then #_module.day.wednesday()
             else (if _module.day.wednesday_q(Lit(d#0))
               then #_module.day.thursday()
               else (if _module.day.thursday_q(Lit(d#0))
                 then #_module.day.friday()
                 else (if _module.day.friday_q(Lit(d#0))
                   then #_module.day.monday()
                   else (if _module.day.saturday_q(Lit(d#0))
                     then #_module.day.monday()
                     else #_module.day.monday())))))));
}

function _module.__default.next__weekday#canCall(d#0: DatatypeType) : bool;

function Tclass._module.day() : Ty
uses {
// Tclass._module.day Tag
axiom Tag(Tclass._module.day()) == Tagclass._module.day
   && TagFamily(Tclass._module.day()) == tytagFamily$day;
}

const unique Tagclass._module.day: TyTag;

// Box/unbox axiom for Tclass._module.day
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.day()) } 
  $IsBox(bx, Tclass._module.day())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.day()));

function _module.__default.next__weekday#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.next__weekday
axiom (forall d#0: DatatypeType :: 
  { _module.__default.next__weekday#requires(d#0) } 
  $Is(d#0, Tclass._module.day())
     ==> _module.__default.next__weekday#requires(d#0) == true);

procedure {:verboseName "next_weekday (well-formedness)"} CheckWellformed$$_module.__default.next__weekday(d#0: DatatypeType where $Is(d#0, Tclass._module.day()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test_next_weekday (well-formedness)"} CheckWellFormed$$_module.__default.test__next__weekday();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test_next_weekday (call)"} Call$$_module.__default.test__next__weekday();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test_next_weekday (correctness)"} Impl$$_module.__default.test__next__weekday() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test_next_weekday (correctness)"} Impl$$_module.__default.test__next__weekday() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##d#0: DatatypeType;
  var ##d#1: DatatypeType;
  var ##d#2: DatatypeType;
  var d#0: DatatypeType
     where $Is(d#0, Tclass._module.day()) && $IsAlloc(d#0, Tclass._module.day(), $Heap);
  var ##d#3: DatatypeType;
  var ##d#4: DatatypeType;
  var ##d#5: DatatypeType;

    // AddMethodImpl: test_next_weekday, Impl$$_module.__default.test__next__weekday
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(35,3)
    ##d#0 := Lit(#_module.day.friday());
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#0, Tclass._module.day(), $Heap);
    assume _module.__default.next__weekday#canCall(Lit(#_module.day.friday()));
    assume $IsA#_module.day(Lit(_module.__default.next__weekday(Lit(#_module.day.friday()))))
       && _module.__default.next__weekday#canCall(Lit(#_module.day.friday()));
    assert {:id "id9"} _module.day#Equal(_module.__default.next__weekday(Lit(#_module.day.friday())), 
      #_module.day.monday());
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(36,3)
    ##d#2 := Lit(#_module.day.saturday());
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#2, Tclass._module.day(), $Heap);
    assume _module.__default.next__weekday#canCall(Lit(#_module.day.saturday()));
    ##d#1 := Lit(_module.__default.next__weekday(Lit(#_module.day.saturday())));
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#1, Tclass._module.day(), $Heap);
    assume _module.__default.next__weekday#canCall(Lit(_module.__default.next__weekday(Lit(#_module.day.saturday()))));
    assume $IsA#_module.day(Lit(_module.__default.next__weekday(Lit(_module.__default.next__weekday(Lit(#_module.day.saturday()))))))
       && 
      _module.__default.next__weekday#canCall(Lit(#_module.day.saturday()))
       && _module.__default.next__weekday#canCall(Lit(_module.__default.next__weekday(Lit(#_module.day.saturday()))));
    assert {:id "id10"} _module.day#Equal(_module.__default.next__weekday(Lit(_module.__default.next__weekday(Lit(#_module.day.saturday())))), 
      #_module.day.tuesday());
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(40,9)
    assume true;
    ##d#4 := Lit(#_module.day.tuesday());
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#4, Tclass._module.day(), $Heap);
    assume _module.__default.next__weekday#canCall(Lit(#_module.day.tuesday()));
    ##d#3 := Lit(_module.__default.next__weekday(Lit(#_module.day.tuesday())));
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#3, Tclass._module.day(), $Heap);
    assume _module.__default.next__weekday#canCall(Lit(_module.__default.next__weekday(Lit(#_module.day.tuesday()))));
    assume _module.__default.next__weekday#canCall(Lit(#_module.day.tuesday()))
       && _module.__default.next__weekday#canCall(Lit(_module.__default.next__weekday(Lit(#_module.day.tuesday()))));
    d#0 := Lit(_module.__default.next__weekday(Lit(_module.__default.next__weekday(Lit(#_module.day.tuesday())))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(41,3)
    assume $IsA#_module.day(d#0);
    assert {:id "id12"} _module.day#Equal(d#0, #_module.day.friday());
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(61,3)
    ##d#5 := Lit(#_module.day.wednesday());
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#5, Tclass._module.day(), $Heap);
    assume _module.__default.next__weekday#canCall(Lit(#_module.day.wednesday()));
    assume _module.__default.next__weekday#canCall(Lit(#_module.day.wednesday()));
}



// function declaration for _module._default.negb
function _module.__default.negb(b#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.negb
axiom 1 <= $FunctionContextHeight
   ==> (forall b#0: DatatypeType :: 
    { _module.__default.negb(b#0) } 
    _module.__default.negb#canCall(b#0)
         || (1 < $FunctionContextHeight && $Is(b#0, Tclass._module.Bool()))
       ==> $Is(_module.__default.negb(b#0), Tclass._module.Bool()));
// definition axiom for _module.__default.negb (revealed)
axiom {:id "id13"} 1 <= $FunctionContextHeight
   ==> (forall b#0: DatatypeType :: 
    { _module.__default.negb(b#0) } 
    _module.__default.negb#canCall(b#0)
         || (1 < $FunctionContextHeight && $Is(b#0, Tclass._module.Bool()))
       ==> _module.__default.negb(b#0)
         == (if _module.Bool.True_q(b#0)
           then #_module.Bool.False()
           else #_module.Bool.True()));
// definition axiom for _module.__default.negb for all literals (revealed)
axiom {:id "id14"} 1 <= $FunctionContextHeight
   ==> (forall b#0: DatatypeType :: 
    {:weight 3} { _module.__default.negb(Lit(b#0)) } 
    _module.__default.negb#canCall(Lit(b#0))
         || (1 < $FunctionContextHeight && $Is(b#0, Tclass._module.Bool()))
       ==> _module.__default.negb(Lit(b#0))
         == (if _module.Bool.True_q(Lit(b#0))
           then #_module.Bool.False()
           else #_module.Bool.True()));
}

function _module.__default.negb#canCall(b#0: DatatypeType) : bool;

function Tclass._module.Bool() : Ty
uses {
// Tclass._module.Bool Tag
axiom Tag(Tclass._module.Bool()) == Tagclass._module.Bool
   && TagFamily(Tclass._module.Bool()) == tytagFamily$Bool;
}

const unique Tagclass._module.Bool: TyTag;

// Box/unbox axiom for Tclass._module.Bool
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Bool()) } 
  $IsBox(bx, Tclass._module.Bool())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Bool()));

function _module.__default.negb#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.negb
axiom (forall b#0: DatatypeType :: 
  { _module.__default.negb#requires(b#0) } 
  $Is(b#0, Tclass._module.Bool()) ==> _module.__default.negb#requires(b#0) == true);

procedure {:verboseName "negb (well-formedness)"} CheckWellformed$$_module.__default.negb(b#0: DatatypeType where $Is(b#0, Tclass._module.Bool()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.andb
function _module.__default.andb(b1#0: DatatypeType, b2#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.andb
axiom 1 <= $FunctionContextHeight
   ==> (forall b1#0: DatatypeType, b2#0: DatatypeType :: 
    { _module.__default.andb(b1#0, b2#0) } 
    _module.__default.andb#canCall(b1#0, b2#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(b1#0, Tclass._module.Bool())
           && $Is(b2#0, Tclass._module.Bool()))
       ==> $Is(_module.__default.andb(b1#0, b2#0), Tclass._module.Bool()));
// definition axiom for _module.__default.andb (revealed)
axiom {:id "id17"} 1 <= $FunctionContextHeight
   ==> (forall b1#0: DatatypeType, b2#0: DatatypeType :: 
    { _module.__default.andb(b1#0, b2#0) } 
    _module.__default.andb#canCall(b1#0, b2#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(b1#0, Tclass._module.Bool())
           && $Is(b2#0, Tclass._module.Bool()))
       ==> _module.__default.andb(b1#0, b2#0)
         == (if _module.Bool.True_q(b1#0) then b2#0 else #_module.Bool.False()));
// definition axiom for _module.__default.andb for all literals (revealed)
axiom {:id "id18"} 1 <= $FunctionContextHeight
   ==> (forall b1#0: DatatypeType, b2#0: DatatypeType :: 
    {:weight 3} { _module.__default.andb(Lit(b1#0), Lit(b2#0)) } 
    _module.__default.andb#canCall(Lit(b1#0), Lit(b2#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(b1#0, Tclass._module.Bool())
           && $Is(b2#0, Tclass._module.Bool()))
       ==> _module.__default.andb(Lit(b1#0), Lit(b2#0))
         == (if _module.Bool.True_q(Lit(b1#0)) then b2#0 else #_module.Bool.False()));
}

function _module.__default.andb#canCall(b1#0: DatatypeType, b2#0: DatatypeType) : bool;

function _module.__default.andb#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.andb
axiom (forall b1#0: DatatypeType, b2#0: DatatypeType :: 
  { _module.__default.andb#requires(b1#0, b2#0) } 
  $Is(b1#0, Tclass._module.Bool()) && $Is(b2#0, Tclass._module.Bool())
     ==> _module.__default.andb#requires(b1#0, b2#0) == true);

procedure {:verboseName "andb (well-formedness)"} CheckWellformed$$_module.__default.andb(b1#0: DatatypeType where $Is(b1#0, Tclass._module.Bool()), 
    b2#0: DatatypeType where $Is(b2#0, Tclass._module.Bool()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.orb
function _module.__default.orb(b1#0: DatatypeType, b2#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.orb
axiom 1 <= $FunctionContextHeight
   ==> (forall b1#0: DatatypeType, b2#0: DatatypeType :: 
    { _module.__default.orb(b1#0, b2#0) } 
    _module.__default.orb#canCall(b1#0, b2#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(b1#0, Tclass._module.Bool())
           && $Is(b2#0, Tclass._module.Bool()))
       ==> $Is(_module.__default.orb(b1#0, b2#0), Tclass._module.Bool()));
// definition axiom for _module.__default.orb (revealed)
axiom {:id "id21"} 1 <= $FunctionContextHeight
   ==> (forall b1#0: DatatypeType, b2#0: DatatypeType :: 
    { _module.__default.orb(b1#0, b2#0) } 
    _module.__default.orb#canCall(b1#0, b2#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(b1#0, Tclass._module.Bool())
           && $Is(b2#0, Tclass._module.Bool()))
       ==> _module.__default.orb(b1#0, b2#0)
         == (if _module.Bool.True_q(b1#0) then #_module.Bool.True() else b2#0));
// definition axiom for _module.__default.orb for all literals (revealed)
axiom {:id "id22"} 1 <= $FunctionContextHeight
   ==> (forall b1#0: DatatypeType, b2#0: DatatypeType :: 
    {:weight 3} { _module.__default.orb(Lit(b1#0), Lit(b2#0)) } 
    _module.__default.orb#canCall(Lit(b1#0), Lit(b2#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(b1#0, Tclass._module.Bool())
           && $Is(b2#0, Tclass._module.Bool()))
       ==> _module.__default.orb(Lit(b1#0), Lit(b2#0))
         == (if _module.Bool.True_q(Lit(b1#0)) then #_module.Bool.True() else b2#0));
}

function _module.__default.orb#canCall(b1#0: DatatypeType, b2#0: DatatypeType) : bool;

function _module.__default.orb#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.orb
axiom (forall b1#0: DatatypeType, b2#0: DatatypeType :: 
  { _module.__default.orb#requires(b1#0, b2#0) } 
  $Is(b1#0, Tclass._module.Bool()) && $Is(b2#0, Tclass._module.Bool())
     ==> _module.__default.orb#requires(b1#0, b2#0) == true);

procedure {:verboseName "orb (well-formedness)"} CheckWellformed$$_module.__default.orb(b1#0: DatatypeType where $Is(b1#0, Tclass._module.Bool()), 
    b2#0: DatatypeType where $Is(b2#0, Tclass._module.Bool()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test_orb (well-formedness)"} CheckWellFormed$$_module.__default.test__orb();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test_orb (call)"} Call$$_module.__default.test__orb();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test_orb (correctness)"} Impl$$_module.__default.test__orb() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test_orb (correctness)"} Impl$$_module.__default.test__orb() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##b1#0: DatatypeType;
  var ##b2#0: DatatypeType;
  var ##b1#1: DatatypeType;
  var ##b2#1: DatatypeType;
  var ##b1#2: DatatypeType;
  var ##b2#2: DatatypeType;
  var ##b1#3: DatatypeType;
  var ##b2#3: DatatypeType;

    // AddMethodImpl: test_orb, Impl$$_module.__default.test__orb
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(96,3)
    ##b1#0 := Lit(#_module.Bool.True());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b1#0, Tclass._module.Bool(), $Heap);
    ##b2#0 := Lit(#_module.Bool.False());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b2#0, Tclass._module.Bool(), $Heap);
    assume _module.__default.orb#canCall(Lit(#_module.Bool.True()), Lit(#_module.Bool.False()));
    assume $IsA#_module.Bool(Lit(_module.__default.orb(Lit(#_module.Bool.True()), Lit(#_module.Bool.False()))))
       && _module.__default.orb#canCall(Lit(#_module.Bool.True()), Lit(#_module.Bool.False()));
    assert {:id "id25"} _module.Bool#Equal(_module.__default.orb(Lit(#_module.Bool.True()), Lit(#_module.Bool.False())), 
      #_module.Bool.True());
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(97,3)
    ##b1#1 := Lit(#_module.Bool.False());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b1#1, Tclass._module.Bool(), $Heap);
    ##b2#1 := Lit(#_module.Bool.False());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b2#1, Tclass._module.Bool(), $Heap);
    assume _module.__default.orb#canCall(Lit(#_module.Bool.False()), Lit(#_module.Bool.False()));
    assume $IsA#_module.Bool(Lit(_module.__default.orb(Lit(#_module.Bool.False()), Lit(#_module.Bool.False()))))
       && _module.__default.orb#canCall(Lit(#_module.Bool.False()), Lit(#_module.Bool.False()));
    assert {:id "id26"} _module.Bool#Equal(_module.__default.orb(Lit(#_module.Bool.False()), Lit(#_module.Bool.False())), 
      #_module.Bool.False());
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(98,3)
    ##b1#2 := Lit(#_module.Bool.False());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b1#2, Tclass._module.Bool(), $Heap);
    ##b2#2 := Lit(#_module.Bool.True());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b2#2, Tclass._module.Bool(), $Heap);
    assume _module.__default.orb#canCall(Lit(#_module.Bool.False()), Lit(#_module.Bool.True()));
    assume $IsA#_module.Bool(Lit(_module.__default.orb(Lit(#_module.Bool.False()), Lit(#_module.Bool.True()))))
       && _module.__default.orb#canCall(Lit(#_module.Bool.False()), Lit(#_module.Bool.True()));
    assert {:id "id27"} _module.Bool#Equal(_module.__default.orb(Lit(#_module.Bool.False()), Lit(#_module.Bool.True())), 
      #_module.Bool.True());
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(99,3)
    ##b1#3 := Lit(#_module.Bool.True());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b1#3, Tclass._module.Bool(), $Heap);
    ##b2#3 := Lit(#_module.Bool.True());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b2#3, Tclass._module.Bool(), $Heap);
    assume _module.__default.orb#canCall(Lit(#_module.Bool.True()), Lit(#_module.Bool.True()));
    assume $IsA#_module.Bool(Lit(_module.__default.orb(Lit(#_module.Bool.True()), Lit(#_module.Bool.True()))))
       && _module.__default.orb#canCall(Lit(#_module.Bool.True()), Lit(#_module.Bool.True()));
    assert {:id "id28"} _module.Bool#Equal(_module.__default.orb(Lit(#_module.Bool.True()), Lit(#_module.Bool.True())), 
      #_module.Bool.True());
}



// function declaration for _module._default.nandb
function _module.__default.nandb(b1#0: DatatypeType, b2#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.nandb
axiom 2 <= $FunctionContextHeight
   ==> (forall b1#0: DatatypeType, b2#0: DatatypeType :: 
    { _module.__default.nandb(b1#0, b2#0) } 
    _module.__default.nandb#canCall(b1#0, b2#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(b1#0, Tclass._module.Bool())
           && $Is(b2#0, Tclass._module.Bool()))
       ==> $Is(_module.__default.nandb(b1#0, b2#0), Tclass._module.Bool()));
// definition axiom for _module.__default.nandb (revealed)
axiom {:id "id29"} 2 <= $FunctionContextHeight
   ==> (forall b1#0: DatatypeType, b2#0: DatatypeType :: 
    { _module.__default.nandb(b1#0, b2#0) } 
    _module.__default.nandb#canCall(b1#0, b2#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(b1#0, Tclass._module.Bool())
           && $Is(b2#0, Tclass._module.Bool()))
       ==> _module.__default.andb#canCall(b1#0, b2#0)
         && _module.__default.negb#canCall(_module.__default.andb(b1#0, b2#0))
         && _module.__default.nandb(b1#0, b2#0)
           == _module.__default.negb(_module.__default.andb(b1#0, b2#0)));
// definition axiom for _module.__default.nandb for all literals (revealed)
axiom {:id "id30"} 2 <= $FunctionContextHeight
   ==> (forall b1#0: DatatypeType, b2#0: DatatypeType :: 
    {:weight 3} { _module.__default.nandb(Lit(b1#0), Lit(b2#0)) } 
    _module.__default.nandb#canCall(Lit(b1#0), Lit(b2#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(b1#0, Tclass._module.Bool())
           && $Is(b2#0, Tclass._module.Bool()))
       ==> _module.__default.andb#canCall(Lit(b1#0), Lit(b2#0))
         && _module.__default.negb#canCall(Lit(_module.__default.andb(Lit(b1#0), Lit(b2#0))))
         && _module.__default.nandb(Lit(b1#0), Lit(b2#0))
           == Lit(_module.__default.negb(Lit(_module.__default.andb(Lit(b1#0), Lit(b2#0))))));
}

function _module.__default.nandb#canCall(b1#0: DatatypeType, b2#0: DatatypeType) : bool;

function _module.__default.nandb#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.nandb
axiom (forall b1#0: DatatypeType, b2#0: DatatypeType :: 
  { _module.__default.nandb#requires(b1#0, b2#0) } 
  $Is(b1#0, Tclass._module.Bool()) && $Is(b2#0, Tclass._module.Bool())
     ==> _module.__default.nandb#requires(b1#0, b2#0) == true);

procedure {:verboseName "nandb (well-formedness)"} CheckWellformed$$_module.__default.nandb(b1#0: DatatypeType where $Is(b1#0, Tclass._module.Bool()), 
    b2#0: DatatypeType where $Is(b2#0, Tclass._module.Bool()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test_nandb (well-formedness)"} CheckWellFormed$$_module.__default.test__nandb();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test_nandb (call)"} Call$$_module.__default.test__nandb();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test_nandb (correctness)"} Impl$$_module.__default.test__nandb() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test_nandb (correctness)"} Impl$$_module.__default.test__nandb() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##b1#0: DatatypeType;
  var ##b2#0: DatatypeType;
  var ##b1#1: DatatypeType;
  var ##b2#1: DatatypeType;
  var ##b1#2: DatatypeType;
  var ##b2#2: DatatypeType;
  var ##b1#3: DatatypeType;
  var ##b2#3: DatatypeType;

    // AddMethodImpl: test_nandb, Impl$$_module.__default.test__nandb
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(111,3)
    ##b1#0 := Lit(#_module.Bool.True());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b1#0, Tclass._module.Bool(), $Heap);
    ##b2#0 := Lit(#_module.Bool.False());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b2#0, Tclass._module.Bool(), $Heap);
    assume _module.__default.nandb#canCall(Lit(#_module.Bool.True()), Lit(#_module.Bool.False()));
    assume $IsA#_module.Bool(Lit(_module.__default.nandb(Lit(#_module.Bool.True()), Lit(#_module.Bool.False()))))
       && _module.__default.nandb#canCall(Lit(#_module.Bool.True()), Lit(#_module.Bool.False()));
    assert {:id "id32"} _module.Bool#Equal(_module.__default.nandb(Lit(#_module.Bool.True()), Lit(#_module.Bool.False())), 
      #_module.Bool.True());
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(112,3)
    ##b1#1 := Lit(#_module.Bool.False());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b1#1, Tclass._module.Bool(), $Heap);
    ##b2#1 := Lit(#_module.Bool.False());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b2#1, Tclass._module.Bool(), $Heap);
    assume _module.__default.nandb#canCall(Lit(#_module.Bool.False()), Lit(#_module.Bool.False()));
    assume $IsA#_module.Bool(Lit(_module.__default.nandb(Lit(#_module.Bool.False()), Lit(#_module.Bool.False()))))
       && _module.__default.nandb#canCall(Lit(#_module.Bool.False()), Lit(#_module.Bool.False()));
    assert {:id "id33"} _module.Bool#Equal(_module.__default.nandb(Lit(#_module.Bool.False()), Lit(#_module.Bool.False())), 
      #_module.Bool.True());
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(113,3)
    ##b1#2 := Lit(#_module.Bool.False());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b1#2, Tclass._module.Bool(), $Heap);
    ##b2#2 := Lit(#_module.Bool.True());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b2#2, Tclass._module.Bool(), $Heap);
    assume _module.__default.nandb#canCall(Lit(#_module.Bool.False()), Lit(#_module.Bool.True()));
    assume $IsA#_module.Bool(Lit(_module.__default.nandb(Lit(#_module.Bool.False()), Lit(#_module.Bool.True()))))
       && _module.__default.nandb#canCall(Lit(#_module.Bool.False()), Lit(#_module.Bool.True()));
    assert {:id "id34"} _module.Bool#Equal(_module.__default.nandb(Lit(#_module.Bool.False()), Lit(#_module.Bool.True())), 
      #_module.Bool.True());
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(114,3)
    ##b1#3 := Lit(#_module.Bool.True());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b1#3, Tclass._module.Bool(), $Heap);
    ##b2#3 := Lit(#_module.Bool.True());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b2#3, Tclass._module.Bool(), $Heap);
    assume _module.__default.nandb#canCall(Lit(#_module.Bool.True()), Lit(#_module.Bool.True()));
    assume $IsA#_module.Bool(Lit(_module.__default.nandb(Lit(#_module.Bool.True()), Lit(#_module.Bool.True()))))
       && _module.__default.nandb#canCall(Lit(#_module.Bool.True()), Lit(#_module.Bool.True()));
    assert {:id "id35"} _module.Bool#Equal(_module.__default.nandb(Lit(#_module.Bool.True()), Lit(#_module.Bool.True())), 
      #_module.Bool.False());
}



// function declaration for _module._default.andb3
function _module.__default.andb3(b1#0: DatatypeType, b2#0: DatatypeType, b3#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.andb3
axiom 2 <= $FunctionContextHeight
   ==> (forall b1#0: DatatypeType, b2#0: DatatypeType, b3#0: DatatypeType :: 
    { _module.__default.andb3(b1#0, b2#0, b3#0) } 
    _module.__default.andb3#canCall(b1#0, b2#0, b3#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(b1#0, Tclass._module.Bool())
           && $Is(b2#0, Tclass._module.Bool())
           && $Is(b3#0, Tclass._module.Bool()))
       ==> $Is(_module.__default.andb3(b1#0, b2#0, b3#0), Tclass._module.Bool()));
// definition axiom for _module.__default.andb3 (revealed)
axiom {:id "id36"} 2 <= $FunctionContextHeight
   ==> (forall b1#0: DatatypeType, b2#0: DatatypeType, b3#0: DatatypeType :: 
    { _module.__default.andb3(b1#0, b2#0, b3#0) } 
    _module.__default.andb3#canCall(b1#0, b2#0, b3#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(b1#0, Tclass._module.Bool())
           && $Is(b2#0, Tclass._module.Bool())
           && $Is(b3#0, Tclass._module.Bool()))
       ==> _module.__default.andb#canCall(b1#0, b2#0)
         && _module.__default.andb#canCall(_module.__default.andb(b1#0, b2#0), b3#0)
         && _module.__default.andb3(b1#0, b2#0, b3#0)
           == _module.__default.andb(_module.__default.andb(b1#0, b2#0), b3#0));
// definition axiom for _module.__default.andb3 for all literals (revealed)
axiom {:id "id37"} 2 <= $FunctionContextHeight
   ==> (forall b1#0: DatatypeType, b2#0: DatatypeType, b3#0: DatatypeType :: 
    {:weight 3} { _module.__default.andb3(Lit(b1#0), Lit(b2#0), Lit(b3#0)) } 
    _module.__default.andb3#canCall(Lit(b1#0), Lit(b2#0), Lit(b3#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(b1#0, Tclass._module.Bool())
           && $Is(b2#0, Tclass._module.Bool())
           && $Is(b3#0, Tclass._module.Bool()))
       ==> _module.__default.andb#canCall(Lit(b1#0), Lit(b2#0))
         && _module.__default.andb#canCall(Lit(_module.__default.andb(Lit(b1#0), Lit(b2#0))), Lit(b3#0))
         && _module.__default.andb3(Lit(b1#0), Lit(b2#0), Lit(b3#0))
           == Lit(_module.__default.andb(Lit(_module.__default.andb(Lit(b1#0), Lit(b2#0))), Lit(b3#0))));
}

function _module.__default.andb3#canCall(b1#0: DatatypeType, b2#0: DatatypeType, b3#0: DatatypeType) : bool;

function _module.__default.andb3#requires(DatatypeType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.andb3
axiom (forall b1#0: DatatypeType, b2#0: DatatypeType, b3#0: DatatypeType :: 
  { _module.__default.andb3#requires(b1#0, b2#0, b3#0) } 
  $Is(b1#0, Tclass._module.Bool())
       && $Is(b2#0, Tclass._module.Bool())
       && $Is(b3#0, Tclass._module.Bool())
     ==> _module.__default.andb3#requires(b1#0, b2#0, b3#0) == true);

procedure {:verboseName "andb3 (well-formedness)"} CheckWellformed$$_module.__default.andb3(b1#0: DatatypeType where $Is(b1#0, Tclass._module.Bool()), 
    b2#0: DatatypeType where $Is(b2#0, Tclass._module.Bool()), 
    b3#0: DatatypeType where $Is(b3#0, Tclass._module.Bool()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test_andb3 (well-formedness)"} CheckWellFormed$$_module.__default.test__andb3();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test_andb3 (call)"} Call$$_module.__default.test__andb3();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test_andb3 (correctness)"} Impl$$_module.__default.test__andb3() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test_andb3 (correctness)"} Impl$$_module.__default.test__andb3() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##b1#0: DatatypeType;
  var ##b2#0: DatatypeType;
  var ##b3#0: DatatypeType;
  var ##b1#1: DatatypeType;
  var ##b2#1: DatatypeType;
  var ##b3#1: DatatypeType;
  var ##b1#2: DatatypeType;
  var ##b2#2: DatatypeType;
  var ##b3#2: DatatypeType;
  var ##b1#3: DatatypeType;
  var ##b2#3: DatatypeType;
  var ##b3#3: DatatypeType;

    // AddMethodImpl: test_andb3, Impl$$_module.__default.test__andb3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(126,3)
    ##b1#0 := Lit(#_module.Bool.True());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b1#0, Tclass._module.Bool(), $Heap);
    ##b2#0 := Lit(#_module.Bool.True());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b2#0, Tclass._module.Bool(), $Heap);
    ##b3#0 := Lit(#_module.Bool.True());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b3#0, Tclass._module.Bool(), $Heap);
    assume _module.__default.andb3#canCall(Lit(#_module.Bool.True()), Lit(#_module.Bool.True()), Lit(#_module.Bool.True()));
    assume $IsA#_module.Bool(Lit(_module.__default.andb3(Lit(#_module.Bool.True()), Lit(#_module.Bool.True()), Lit(#_module.Bool.True()))))
       && _module.__default.andb3#canCall(Lit(#_module.Bool.True()), Lit(#_module.Bool.True()), Lit(#_module.Bool.True()));
    assert {:id "id39"} _module.Bool#Equal(_module.__default.andb3(Lit(#_module.Bool.True()), Lit(#_module.Bool.True()), Lit(#_module.Bool.True())), 
      #_module.Bool.True());
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(127,3)
    ##b1#1 := Lit(#_module.Bool.False());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b1#1, Tclass._module.Bool(), $Heap);
    ##b2#1 := Lit(#_module.Bool.True());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b2#1, Tclass._module.Bool(), $Heap);
    ##b3#1 := Lit(#_module.Bool.True());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b3#1, Tclass._module.Bool(), $Heap);
    assume _module.__default.andb3#canCall(Lit(#_module.Bool.False()), Lit(#_module.Bool.True()), Lit(#_module.Bool.True()));
    assume $IsA#_module.Bool(Lit(_module.__default.andb3(Lit(#_module.Bool.False()), Lit(#_module.Bool.True()), Lit(#_module.Bool.True()))))
       && _module.__default.andb3#canCall(Lit(#_module.Bool.False()), Lit(#_module.Bool.True()), Lit(#_module.Bool.True()));
    assert {:id "id40"} _module.Bool#Equal(_module.__default.andb3(Lit(#_module.Bool.False()), Lit(#_module.Bool.True()), Lit(#_module.Bool.True())), 
      #_module.Bool.False());
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(128,3)
    ##b1#2 := Lit(#_module.Bool.True());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b1#2, Tclass._module.Bool(), $Heap);
    ##b2#2 := Lit(#_module.Bool.False());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b2#2, Tclass._module.Bool(), $Heap);
    ##b3#2 := Lit(#_module.Bool.True());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b3#2, Tclass._module.Bool(), $Heap);
    assume _module.__default.andb3#canCall(Lit(#_module.Bool.True()), Lit(#_module.Bool.False()), Lit(#_module.Bool.True()));
    assume $IsA#_module.Bool(Lit(_module.__default.andb3(Lit(#_module.Bool.True()), Lit(#_module.Bool.False()), Lit(#_module.Bool.True()))))
       && _module.__default.andb3#canCall(Lit(#_module.Bool.True()), Lit(#_module.Bool.False()), Lit(#_module.Bool.True()));
    assert {:id "id41"} _module.Bool#Equal(_module.__default.andb3(Lit(#_module.Bool.True()), Lit(#_module.Bool.False()), Lit(#_module.Bool.True())), 
      #_module.Bool.False());
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(129,3)
    ##b1#3 := Lit(#_module.Bool.True());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b1#3, Tclass._module.Bool(), $Heap);
    ##b2#3 := Lit(#_module.Bool.True());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b2#3, Tclass._module.Bool(), $Heap);
    ##b3#3 := Lit(#_module.Bool.False());
    // assume allocatedness for argument to function
    assume $IsAlloc(##b3#3, Tclass._module.Bool(), $Heap);
    assume _module.__default.andb3#canCall(Lit(#_module.Bool.True()), Lit(#_module.Bool.True()), Lit(#_module.Bool.False()));
    assume $IsA#_module.Bool(Lit(_module.__default.andb3(Lit(#_module.Bool.True()), Lit(#_module.Bool.True()), Lit(#_module.Bool.False()))))
       && _module.__default.andb3#canCall(Lit(#_module.Bool.True()), Lit(#_module.Bool.True()), Lit(#_module.Bool.False()));
    assert {:id "id42"} _module.Bool#Equal(_module.__default.andb3(Lit(#_module.Bool.True()), Lit(#_module.Bool.True()), Lit(#_module.Bool.False())), 
      #_module.Bool.False());
}



// function declaration for _module._default.pred
function _module.__default.pred(n#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.pred
axiom 1 <= $FunctionContextHeight
   ==> (forall n#0: DatatypeType :: 
    { _module.__default.pred(n#0) } 
    _module.__default.pred#canCall(n#0)
         || (1 < $FunctionContextHeight && $Is(n#0, Tclass._module.Nat()))
       ==> $Is(_module.__default.pred(n#0), Tclass._module.Nat()));
// definition axiom for _module.__default.pred (revealed)
axiom {:id "id43"} 1 <= $FunctionContextHeight
   ==> (forall n#0: DatatypeType :: 
    { _module.__default.pred(n#0) } 
    _module.__default.pred#canCall(n#0)
         || (1 < $FunctionContextHeight && $Is(n#0, Tclass._module.Nat()))
       ==> _module.__default.pred(n#0)
         == (if _module.Nat.O_q(n#0)
           then #_module.Nat.O()
           else (var n'#0 := _module.Nat._h0(n#0); n'#0)));
// definition axiom for _module.__default.pred for all literals (revealed)
axiom {:id "id44"} 1 <= $FunctionContextHeight
   ==> (forall n#0: DatatypeType :: 
    {:weight 3} { _module.__default.pred(Lit(n#0)) } 
    _module.__default.pred#canCall(Lit(n#0))
         || (1 < $FunctionContextHeight && $Is(n#0, Tclass._module.Nat()))
       ==> _module.__default.pred(Lit(n#0))
         == (if _module.Nat.O_q(Lit(n#0))
           then #_module.Nat.O()
           else (var n'#2 := Lit(_module.Nat._h0(Lit(n#0))); n'#2)));
}

function _module.__default.pred#canCall(n#0: DatatypeType) : bool;

function Tclass._module.Nat() : Ty
uses {
// Tclass._module.Nat Tag
axiom Tag(Tclass._module.Nat()) == Tagclass._module.Nat
   && TagFamily(Tclass._module.Nat()) == tytagFamily$Nat;
}

const unique Tagclass._module.Nat: TyTag;

// Box/unbox axiom for Tclass._module.Nat
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Nat()) } 
  $IsBox(bx, Tclass._module.Nat())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Nat()));

function _module.__default.pred#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.pred
axiom (forall n#0: DatatypeType :: 
  { _module.__default.pred#requires(n#0) } 
  $Is(n#0, Tclass._module.Nat()) ==> _module.__default.pred#requires(n#0) == true);

procedure {:verboseName "pred (well-formedness)"} CheckWellformed$$_module.__default.pred(n#0: DatatypeType where $Is(n#0, Tclass._module.Nat()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.minustwo
function _module.__default.minustwo(n#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.minustwo
axiom 1 <= $FunctionContextHeight
   ==> (forall n#0: DatatypeType :: 
    { _module.__default.minustwo(n#0) } 
    _module.__default.minustwo#canCall(n#0)
         || (1 < $FunctionContextHeight && $Is(n#0, Tclass._module.Nat()))
       ==> $Is(_module.__default.minustwo(n#0), Tclass._module.Nat()));
// definition axiom for _module.__default.minustwo (revealed)
axiom {:id "id49"} 1 <= $FunctionContextHeight
   ==> (forall n#0: DatatypeType :: 
    { _module.__default.minustwo(n#0) } 
    _module.__default.minustwo#canCall(n#0)
         || (1 < $FunctionContextHeight && $Is(n#0, Tclass._module.Nat()))
       ==> _module.__default.minustwo(n#0)
         == (if _module.Nat.O_q(n#0)
           then #_module.Nat.O()
           else (var nn#0 := _module.Nat._h0(n#0); 
            (if _module.Nat.O_q(nn#0)
               then #_module.Nat.O()
               else (var n'#0 := _module.Nat._h0(nn#0); n'#0)))));
// definition axiom for _module.__default.minustwo for all literals (revealed)
axiom {:id "id50"} 1 <= $FunctionContextHeight
   ==> (forall n#0: DatatypeType :: 
    {:weight 3} { _module.__default.minustwo(Lit(n#0)) } 
    _module.__default.minustwo#canCall(Lit(n#0))
         || (1 < $FunctionContextHeight && $Is(n#0, Tclass._module.Nat()))
       ==> _module.__default.minustwo(Lit(n#0))
         == (if _module.Nat.O_q(Lit(n#0))
           then #_module.Nat.O()
           else (var nn#2 := Lit(_module.Nat._h0(Lit(n#0))); 
            (if _module.Nat.O_q(nn#2)
               then #_module.Nat.O()
               else (var n'#2 := Lit(_module.Nat._h0(nn#2)); n'#2)))));
}

function _module.__default.minustwo#canCall(n#0: DatatypeType) : bool;

function _module.__default.minustwo#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.minustwo
axiom (forall n#0: DatatypeType :: 
  { _module.__default.minustwo#requires(n#0) } 
  $Is(n#0, Tclass._module.Nat())
     ==> _module.__default.minustwo#requires(n#0) == true);

procedure {:verboseName "minustwo (well-formedness)"} CheckWellformed$$_module.__default.minustwo(n#0: DatatypeType where $Is(n#0, Tclass._module.Nat()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.evenb
function _module.__default.evenb($ly: LayerType, n#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.evenb
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType :: 
    { _module.__default.evenb($ly, n#0) } 
    _module.__default.evenb#canCall(n#0)
         || (1 < $FunctionContextHeight && $Is(n#0, Tclass._module.Nat()))
       ==> $Is(_module.__default.evenb($ly, n#0), Tclass._module.Bool()));
// definition axiom for _module.__default.evenb (revealed)
axiom {:id "id58"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType :: 
    { _module.__default.evenb($LS($ly), n#0) } 
    _module.__default.evenb#canCall(n#0)
         || (1 < $FunctionContextHeight && $Is(n#0, Tclass._module.Nat()))
       ==> (!_module.Nat.O_q(n#0)
           ==> (var nn#1 := _module.Nat._h0(n#0); 
            !_module.Nat.O_q(nn#1)
               ==> (var n'#1 := _module.Nat._h0(nn#1); _module.__default.evenb#canCall(n'#1))))
         && _module.__default.evenb($LS($ly), n#0)
           == (if _module.Nat.O_q(n#0)
             then #_module.Bool.True()
             else (var nn#0 := _module.Nat._h0(n#0); 
              (if _module.Nat.O_q(nn#0)
                 then #_module.Bool.False()
                 else (var n'#0 := _module.Nat._h0(nn#0); _module.__default.evenb($ly, n'#0))))));
// definition axiom for _module.__default.evenb for all literals (revealed)
axiom {:id "id59"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType :: 
    {:weight 3} { _module.__default.evenb($LS($ly), Lit(n#0)) } 
    _module.__default.evenb#canCall(Lit(n#0))
         || (1 < $FunctionContextHeight && $Is(n#0, Tclass._module.Nat()))
       ==> (!Lit(_module.Nat.O_q(Lit(n#0)))
           ==> (var nn#3 := Lit(_module.Nat._h0(Lit(n#0))); 
            !_module.Nat.O_q(nn#3)
               ==> (var n'#3 := _module.Nat._h0(nn#3); _module.__default.evenb#canCall(n'#3))))
         && _module.__default.evenb($LS($ly), Lit(n#0))
           == (if _module.Nat.O_q(Lit(n#0))
             then #_module.Bool.True()
             else (var nn#2 := Lit(_module.Nat._h0(Lit(n#0))); 
              (if _module.Nat.O_q(nn#2)
                 then #_module.Bool.False()
                 else (var n'#2 := Lit(_module.Nat._h0(nn#2)); 
                  Lit(_module.__default.evenb($LS($ly), n'#2)))))));
}

function _module.__default.evenb#canCall(n#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType :: 
  { _module.__default.evenb($LS($ly), n#0) } 
  _module.__default.evenb($LS($ly), n#0) == _module.__default.evenb($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType :: 
  { _module.__default.evenb(AsFuelBottom($ly), n#0) } 
  _module.__default.evenb($ly, n#0) == _module.__default.evenb($LZ, n#0));

function _module.__default.evenb#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.evenb
axiom (forall $ly: LayerType, n#0: DatatypeType :: 
  { _module.__default.evenb#requires($ly, n#0) } 
  $Is(n#0, Tclass._module.Nat())
     ==> _module.__default.evenb#requires($ly, n#0) == true);

procedure {:verboseName "evenb (well-formedness)"} CheckWellformed$$_module.__default.evenb(n#0: DatatypeType where $Is(n#0, Tclass._module.Nat()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "evenb (well-formedness)"} CheckWellformed$$_module.__default.evenb(n#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var nn#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var n'#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##n#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.evenb($LS($LZ), n#0), Tclass._module.Bool());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == #_module.Nat.O())
        {
            assume {:id "id67"} _module.__default.evenb($LS($LZ), n#0) == Lit(#_module.Bool.True());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.evenb($LS($LZ), n#0), Tclass._module.Bool());
            return;
        }
        else if (n#0 == #_module.Nat.S(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            havoc nn#Z#0;
            assume {:id "id60"} let#0#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Nat());
            assume {:id "id61"} nn#Z#0 == let#0#0#0;
            if (nn#Z#0 == #_module.Nat.O())
            {
                assume {:id "id66"} _module.__default.evenb($LS($LZ), n#0) == Lit(#_module.Bool.False());
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.evenb($LS($LZ), n#0), Tclass._module.Bool());
                return;
            }
            else if (nn#Z#0 == #_module.Nat.S(_mcc#1#0))
            {
                assume $Is(_mcc#1#0, Tclass._module.Nat());
                havoc n'#Z#0;
                assume {:id "id62"} let#1#0#0 == _mcc#1#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#1#0#0, Tclass._module.Nat());
                assume {:id "id63"} n'#Z#0 == let#1#0#0;
                ##n#0 := n'#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
                assert {:id "id64"} DtRank(##n#0) < DtRank(n#0);
                assume _module.__default.evenb#canCall(n'#Z#0);
                assume {:id "id65"} _module.__default.evenb($LS($LZ), n#0)
                   == _module.__default.evenb($LS($LZ), n'#Z#0);
                assume _module.__default.evenb#canCall(n'#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.evenb($LS($LZ), n#0), Tclass._module.Bool());
                return;
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

        assume false;
    }
}



// function declaration for _module._default.oddb
function _module.__default.oddb(n#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.oddb
axiom 2 <= $FunctionContextHeight
   ==> (forall n#0: DatatypeType :: 
    { _module.__default.oddb(n#0) } 
    _module.__default.oddb#canCall(n#0)
         || (2 < $FunctionContextHeight && $Is(n#0, Tclass._module.Nat()))
       ==> $Is(_module.__default.oddb(n#0), Tclass._module.Bool()));
// definition axiom for _module.__default.oddb (revealed)
axiom {:id "id68"} 2 <= $FunctionContextHeight
   ==> (forall n#0: DatatypeType :: 
    { _module.__default.oddb(n#0) } 
    _module.__default.oddb#canCall(n#0)
         || (2 < $FunctionContextHeight && $Is(n#0, Tclass._module.Nat()))
       ==> _module.__default.evenb#canCall(n#0)
         && _module.__default.negb#canCall(_module.__default.evenb($LS($LZ), n#0))
         && _module.__default.oddb(n#0)
           == _module.__default.negb(_module.__default.evenb($LS($LZ), n#0)));
// definition axiom for _module.__default.oddb for all literals (revealed)
axiom {:id "id69"} 2 <= $FunctionContextHeight
   ==> (forall n#0: DatatypeType :: 
    {:weight 3} { _module.__default.oddb(Lit(n#0)) } 
    _module.__default.oddb#canCall(Lit(n#0))
         || (2 < $FunctionContextHeight && $Is(n#0, Tclass._module.Nat()))
       ==> _module.__default.evenb#canCall(Lit(n#0))
         && _module.__default.negb#canCall(Lit(_module.__default.evenb($LS($LZ), Lit(n#0))))
         && _module.__default.oddb(Lit(n#0))
           == Lit(_module.__default.negb(Lit(_module.__default.evenb($LS($LZ), Lit(n#0))))));
}

function _module.__default.oddb#canCall(n#0: DatatypeType) : bool;

function _module.__default.oddb#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.oddb
axiom (forall n#0: DatatypeType :: 
  { _module.__default.oddb#requires(n#0) } 
  $Is(n#0, Tclass._module.Nat()) ==> _module.__default.oddb#requires(n#0) == true);

procedure {:verboseName "oddb (well-formedness)"} CheckWellformed$$_module.__default.oddb(n#0: DatatypeType where $Is(n#0, Tclass._module.Nat()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test_oddb (well-formedness)"} CheckWellFormed$$_module.__default.test__oddb();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test_oddb (call)"} Call$$_module.__default.test__oddb();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test_oddb (correctness)"} Impl$$_module.__default.test__oddb() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test_oddb (correctness)"} Impl$$_module.__default.test__oddb() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##n#0: DatatypeType;
  var ##n#1: DatatypeType;

    // AddMethodImpl: test_oddb, Impl$$_module.__default.test__oddb
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(176,3)
    ##n#0 := Lit(#_module.Nat.S(Lit(#_module.Nat.O())));
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
    assume _module.__default.oddb#canCall(Lit(#_module.Nat.S(Lit(#_module.Nat.O()))));
    assume $IsA#_module.Bool(Lit(_module.__default.oddb(Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))))
       && _module.__default.oddb#canCall(Lit(#_module.Nat.S(Lit(#_module.Nat.O()))));
    assert {:id "id71"} _module.Bool#Equal(_module.__default.oddb(Lit(#_module.Nat.S(Lit(#_module.Nat.O())))), 
      #_module.Bool.True());
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(177,3)
    ##n#1 := Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O())))))))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._module.Nat(), $Heap);
    assume _module.__default.oddb#canCall(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))))))));
    assume $IsA#_module.Bool(Lit(_module.__default.oddb(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))))))))))
       && _module.__default.oddb#canCall(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))))))));
    assert {:id "id72"} _module.Bool#Equal(_module.__default.oddb(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O())))))))))), 
      #_module.Bool.False());
}



// function declaration for _module._default.plus
function _module.__default.plus($ly: LayerType, n#0: DatatypeType, m#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.plus
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
    { _module.__default.plus($ly, n#0, m#0) } 
    _module.__default.plus#canCall(n#0, m#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat()))
       ==> $Is(_module.__default.plus($ly, n#0, m#0), Tclass._module.Nat()));
// definition axiom for _module.__default.plus (revealed)
axiom {:id "id73"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
    { _module.__default.plus($LS($ly), n#0, m#0) } 
    _module.__default.plus#canCall(n#0, m#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat()))
       ==> (!_module.Nat.O_q(n#0)
           ==> (var n'#1 := _module.Nat._h0(n#0); _module.__default.plus#canCall(n'#1, m#0)))
         && _module.__default.plus($LS($ly), n#0, m#0)
           == (if _module.Nat.O_q(n#0)
             then m#0
             else (var n'#0 := _module.Nat._h0(n#0); 
              #_module.Nat.S(_module.__default.plus($ly, n'#0, m#0)))));
// definition axiom for _module.__default.plus for all literals (revealed)
axiom {:id "id74"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
    {:weight 3} { _module.__default.plus($LS($ly), Lit(n#0), Lit(m#0)) } 
    _module.__default.plus#canCall(Lit(n#0), Lit(m#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat()))
       ==> (!Lit(_module.Nat.O_q(Lit(n#0)))
           ==> (var n'#3 := Lit(_module.Nat._h0(Lit(n#0))); 
            _module.__default.plus#canCall(n'#3, Lit(m#0))))
         && _module.__default.plus($LS($ly), Lit(n#0), Lit(m#0))
           == (if _module.Nat.O_q(Lit(n#0))
             then m#0
             else (var n'#2 := Lit(_module.Nat._h0(Lit(n#0))); 
              Lit(#_module.Nat.S(Lit(_module.__default.plus($LS($ly), n'#2, Lit(m#0))))))));
}

function _module.__default.plus#canCall(n#0: DatatypeType, m#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { _module.__default.plus($LS($ly), n#0, m#0) } 
  _module.__default.plus($LS($ly), n#0, m#0)
     == _module.__default.plus($ly, n#0, m#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { _module.__default.plus(AsFuelBottom($ly), n#0, m#0) } 
  _module.__default.plus($ly, n#0, m#0) == _module.__default.plus($LZ, n#0, m#0));

function _module.__default.plus#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.plus
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { _module.__default.plus#requires($ly, n#0, m#0) } 
  $Is(n#0, Tclass._module.Nat()) && $Is(m#0, Tclass._module.Nat())
     ==> _module.__default.plus#requires($ly, n#0, m#0) == true);

procedure {:verboseName "plus (well-formedness)"} CheckWellformed$$_module.__default.plus(n#0: DatatypeType where $Is(n#0, Tclass._module.Nat()), 
    m#0: DatatypeType where $Is(m#0, Tclass._module.Nat()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "plus (well-formedness)"} CheckWellformed$$_module.__default.plus(n#0: DatatypeType, m#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var n'#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var ##n#0: DatatypeType;
  var ##m#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.plus($LS($LZ), n#0, m#0), Tclass._module.Nat());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == #_module.Nat.O())
        {
            assume {:id "id79"} _module.__default.plus($LS($LZ), n#0, m#0) == m#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.plus($LS($LZ), n#0, m#0), Tclass._module.Nat());
            return;
        }
        else if (n#0 == #_module.Nat.S(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            havoc n'#Z#0;
            assume {:id "id75"} let#0#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Nat());
            assume {:id "id76"} n'#Z#0 == let#0#0#0;
            ##n#0 := n'#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
            ##m#0 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0, Tclass._module.Nat(), $Heap);
            assert {:id "id77"} DtRank(##n#0) < DtRank(n#0)
               || (DtRank(##n#0) == DtRank(n#0) && DtRank(##m#0) < DtRank(m#0));
            assume _module.__default.plus#canCall(n'#Z#0, m#0);
            assume {:id "id78"} _module.__default.plus($LS($LZ), n#0, m#0)
               == #_module.Nat.S(_module.__default.plus($LS($LZ), n'#Z#0, m#0));
            assume _module.__default.plus#canCall(n'#Z#0, m#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.plus($LS($LZ), n#0, m#0), Tclass._module.Nat());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "test_plus (well-formedness)"} CheckWellFormed$$_module.__default.test__plus();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test_plus (call)"} Call$$_module.__default.test__plus();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test_plus (correctness)"} Impl$$_module.__default.test__plus() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test_plus (correctness)"} Impl$$_module.__default.test__plus() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##n#0: DatatypeType;
  var ##m#0: DatatypeType;

    // AddMethodImpl: test_plus, Impl$$_module.__default.test__plus
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(189,3)
    ##n#0 := Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O())))))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
    ##m#0 := Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O())))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#0, Tclass._module.Nat(), $Heap);
    assume _module.__default.plus#canCall(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))))), 
      Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))));
    assume $IsA#_module.Nat(Lit(_module.__default.plus($LS($LZ), 
            Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))))), 
            Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))))))
       && _module.__default.plus#canCall(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))))), 
        Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))));
    assert {:id "id80"} {:subsumption 0} _module.Nat#Equal(_module.__default.plus($LS($LS($LZ)), 
        Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))))), 
        Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O())))))), 
      #_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O())))))))))));
    assume {:id "id81"} _module.Nat#Equal(_module.__default.plus($LS($LZ), 
        Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))))), 
        Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O())))))), 
      #_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O())))))))))));
}



// function declaration for _module._default.mult
function _module.__default.mult($ly: LayerType, n#0: DatatypeType, m#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.mult
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
    { _module.__default.mult($ly, n#0, m#0) } 
    _module.__default.mult#canCall(n#0, m#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat()))
       ==> $Is(_module.__default.mult($ly, n#0, m#0), Tclass._module.Nat()));
// definition axiom for _module.__default.mult (revealed)
axiom {:id "id82"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
    { _module.__default.mult($LS($ly), n#0, m#0) } 
    _module.__default.mult#canCall(n#0, m#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat()))
       ==> (!_module.Nat.O_q(n#0)
           ==> (var n'#1 := _module.Nat._h0(n#0); 
            _module.__default.mult#canCall(n'#1, m#0)
               && _module.__default.plus#canCall(m#0, _module.__default.mult($ly, n'#1, m#0))))
         && _module.__default.mult($LS($ly), n#0, m#0)
           == (if _module.Nat.O_q(n#0)
             then #_module.Nat.O()
             else (var n'#0 := _module.Nat._h0(n#0); 
              _module.__default.plus($LS($LZ), m#0, _module.__default.mult($ly, n'#0, m#0)))));
// definition axiom for _module.__default.mult for all literals (revealed)
axiom {:id "id83"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
    {:weight 3} { _module.__default.mult($LS($ly), Lit(n#0), Lit(m#0)) } 
    _module.__default.mult#canCall(Lit(n#0), Lit(m#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat()))
       ==> (!Lit(_module.Nat.O_q(Lit(n#0)))
           ==> (var n'#3 := Lit(_module.Nat._h0(Lit(n#0))); 
            _module.__default.mult#canCall(n'#3, Lit(m#0))
               && _module.__default.plus#canCall(Lit(m#0), _module.__default.mult($LS($ly), n'#3, Lit(m#0)))))
         && _module.__default.mult($LS($ly), Lit(n#0), Lit(m#0))
           == (if _module.Nat.O_q(Lit(n#0))
             then #_module.Nat.O()
             else (var n'#2 := Lit(_module.Nat._h0(Lit(n#0))); 
              Lit(_module.__default.plus($LS($LZ), Lit(m#0), Lit(_module.__default.mult($LS($ly), n'#2, Lit(m#0))))))));
}

function _module.__default.mult#canCall(n#0: DatatypeType, m#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { _module.__default.mult($LS($ly), n#0, m#0) } 
  _module.__default.mult($LS($ly), n#0, m#0)
     == _module.__default.mult($ly, n#0, m#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { _module.__default.mult(AsFuelBottom($ly), n#0, m#0) } 
  _module.__default.mult($ly, n#0, m#0) == _module.__default.mult($LZ, n#0, m#0));

function _module.__default.mult#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.mult
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { _module.__default.mult#requires($ly, n#0, m#0) } 
  $Is(n#0, Tclass._module.Nat()) && $Is(m#0, Tclass._module.Nat())
     ==> _module.__default.mult#requires($ly, n#0, m#0) == true);

procedure {:verboseName "mult (well-formedness)"} CheckWellformed$$_module.__default.mult(n#0: DatatypeType where $Is(n#0, Tclass._module.Nat()), 
    m#0: DatatypeType where $Is(m#0, Tclass._module.Nat()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "mult (well-formedness)"} CheckWellformed$$_module.__default.mult(n#0: DatatypeType, m#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var n'#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var ##n#0: DatatypeType;
  var ##m#0: DatatypeType;
  var ##n#1: DatatypeType;
  var ##m#1: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.mult($LS($LZ), n#0, m#0), Tclass._module.Nat());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == #_module.Nat.O())
        {
            assume {:id "id88"} _module.__default.mult($LS($LZ), n#0, m#0) == Lit(#_module.Nat.O());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.mult($LS($LZ), n#0, m#0), Tclass._module.Nat());
            return;
        }
        else if (n#0 == #_module.Nat.S(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            havoc n'#Z#0;
            assume {:id "id84"} let#0#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Nat());
            assume {:id "id85"} n'#Z#0 == let#0#0#0;
            ##n#0 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
            ##n#1 := n'#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, Tclass._module.Nat(), $Heap);
            ##m#1 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1, Tclass._module.Nat(), $Heap);
            assert {:id "id86"} DtRank(##n#1) < DtRank(n#0)
               || (DtRank(##n#1) == DtRank(n#0) && DtRank(##m#1) < DtRank(m#0));
            assume _module.__default.mult#canCall(n'#Z#0, m#0);
            ##m#0 := _module.__default.mult($LS($LZ), n'#Z#0, m#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(m#0, _module.__default.mult($LS($LZ), n'#Z#0, m#0));
            assume {:id "id87"} _module.__default.mult($LS($LZ), n#0, m#0)
               == _module.__default.plus($LS($LZ), m#0, _module.__default.mult($LS($LZ), n'#Z#0, m#0));
            assume _module.__default.mult#canCall(n'#Z#0, m#0)
               && _module.__default.plus#canCall(m#0, _module.__default.mult($LS($LZ), n'#Z#0, m#0));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.mult($LS($LZ), n#0, m#0), Tclass._module.Nat());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "test_mult (well-formedness)"} CheckWellFormed$$_module.__default.test__mult();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test_mult (call)"} Call$$_module.__default.test__mult();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test_mult (correctness)"} Impl$$_module.__default.test__mult() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test_mult (correctness)"} Impl$$_module.__default.test__mult() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n3#0: DatatypeType
     where $Is(n3#0, Tclass._module.Nat()) && $IsAlloc(n3#0, Tclass._module.Nat(), $Heap);
  var n9#0: DatatypeType
     where $Is(n9#0, Tclass._module.Nat()) && $IsAlloc(n9#0, Tclass._module.Nat(), $Heap);
  var ##n#0: DatatypeType;
  var ##m#0: DatatypeType;

    // AddMethodImpl: test_mult, Impl$$_module.__default.test__mult
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(201,10)
    assume true;
    assume true;
    n3#0 := Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O())))))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(202,10)
    assume true;
    assume true;
    n9#0 := Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O())))))))))))))))))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(203,3)
    ##n#0 := n3#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
    ##m#0 := n3#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#0, Tclass._module.Nat(), $Heap);
    assume _module.__default.mult#canCall(n3#0, n3#0);
    assume $IsA#_module.Nat(_module.__default.mult($LS($LZ), n3#0, n3#0))
       && $IsA#_module.Nat(n9#0)
       && _module.__default.mult#canCall(n3#0, n3#0);
    assert {:id "id91"} {:subsumption 0} _module.Nat#Equal(_module.__default.mult($LS($LS($LZ)), n3#0, n3#0), n9#0);
    assume {:id "id92"} _module.Nat#Equal(_module.__default.mult($LS($LZ), n3#0, n3#0), n9#0);
}



// function declaration for _module._default.minus
function _module.__default.minus($ly: LayerType, n#0: DatatypeType, m#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.minus
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
    { _module.__default.minus($ly, n#0, m#0) } 
    _module.__default.minus#canCall(n#0, m#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat()))
       ==> $Is(_module.__default.minus($ly, n#0, m#0), Tclass._module.Nat()));
// definition axiom for _module.__default.minus (revealed)
axiom {:id "id93"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
    { _module.__default.minus($LS($ly), n#0, m#0) } 
    _module.__default.minus#canCall(n#0, m#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat()))
       ==> (!_module.Nat.O_q(n#0)
           ==> (var n'#1 := _module.Nat._h0(n#0); 
            !_module.Nat.O_q(m#0)
               ==> (var m'#1 := _module.Nat._h0(m#0); _module.__default.minus#canCall(n'#1, m'#1))))
         && _module.__default.minus($LS($ly), n#0, m#0)
           == (if _module.Nat.O_q(n#0)
             then #_module.Nat.O()
             else (var n'#0 := _module.Nat._h0(n#0); 
              (if _module.Nat.O_q(m#0)
                 then n#0
                 else (var m'#0 := _module.Nat._h0(m#0); _module.__default.minus($ly, n'#0, m'#0))))));
// definition axiom for _module.__default.minus for all literals (revealed)
axiom {:id "id94"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
    {:weight 3} { _module.__default.minus($LS($ly), Lit(n#0), Lit(m#0)) } 
    _module.__default.minus#canCall(Lit(n#0), Lit(m#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat()))
       ==> (!Lit(_module.Nat.O_q(Lit(n#0)))
           ==> (var n'#3 := Lit(_module.Nat._h0(Lit(n#0))); 
            !Lit(_module.Nat.O_q(Lit(m#0)))
               ==> (var m'#3 := Lit(_module.Nat._h0(Lit(m#0))); 
                _module.__default.minus#canCall(n'#3, m'#3))))
         && _module.__default.minus($LS($ly), Lit(n#0), Lit(m#0))
           == (if _module.Nat.O_q(Lit(n#0))
             then #_module.Nat.O()
             else (var n'#2 := Lit(_module.Nat._h0(Lit(n#0))); 
              (if _module.Nat.O_q(Lit(m#0))
                 then n#0
                 else (var m'#2 := Lit(_module.Nat._h0(Lit(m#0))); 
                  Lit(_module.__default.minus($LS($ly), n'#2, m'#2)))))));
}

function _module.__default.minus#canCall(n#0: DatatypeType, m#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { _module.__default.minus($LS($ly), n#0, m#0) } 
  _module.__default.minus($LS($ly), n#0, m#0)
     == _module.__default.minus($ly, n#0, m#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { _module.__default.minus(AsFuelBottom($ly), n#0, m#0) } 
  _module.__default.minus($ly, n#0, m#0) == _module.__default.minus($LZ, n#0, m#0));

function _module.__default.minus#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.minus
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { _module.__default.minus#requires($ly, n#0, m#0) } 
  $Is(n#0, Tclass._module.Nat()) && $Is(m#0, Tclass._module.Nat())
     ==> _module.__default.minus#requires($ly, n#0, m#0) == true);

procedure {:verboseName "minus (well-formedness)"} CheckWellformed$$_module.__default.minus(n#0: DatatypeType where $Is(n#0, Tclass._module.Nat()), 
    m#0: DatatypeType where $Is(m#0, Tclass._module.Nat()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "minus (well-formedness)"} CheckWellformed$$_module.__default.minus(n#0: DatatypeType, m#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var n'#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var m'#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##n#0: DatatypeType;
  var ##m#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.minus($LS($LZ), n#0, m#0), Tclass._module.Nat());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == #_module.Nat.O())
        {
            assume {:id "id102"} _module.__default.minus($LS($LZ), n#0, m#0) == Lit(#_module.Nat.O());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.minus($LS($LZ), n#0, m#0), Tclass._module.Nat());
            return;
        }
        else if (n#0 == #_module.Nat.S(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            havoc n'#Z#0;
            assume {:id "id95"} let#0#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Nat());
            assume {:id "id96"} n'#Z#0 == let#0#0#0;
            if (m#0 == #_module.Nat.O())
            {
                assume {:id "id101"} _module.__default.minus($LS($LZ), n#0, m#0) == n#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.minus($LS($LZ), n#0, m#0), Tclass._module.Nat());
                return;
            }
            else if (m#0 == #_module.Nat.S(_mcc#1#0))
            {
                assume $Is(_mcc#1#0, Tclass._module.Nat());
                havoc m'#Z#0;
                assume {:id "id97"} let#1#0#0 == _mcc#1#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#1#0#0, Tclass._module.Nat());
                assume {:id "id98"} m'#Z#0 == let#1#0#0;
                ##n#0 := n'#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
                ##m#0 := m'#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##m#0, Tclass._module.Nat(), $Heap);
                assert {:id "id99"} DtRank(##n#0) < DtRank(n#0)
                   || (DtRank(##n#0) == DtRank(n#0) && DtRank(##m#0) < DtRank(m#0));
                assume _module.__default.minus#canCall(n'#Z#0, m'#Z#0);
                assume {:id "id100"} _module.__default.minus($LS($LZ), n#0, m#0)
                   == _module.__default.minus($LS($LZ), n'#Z#0, m'#Z#0);
                assume _module.__default.minus#canCall(n'#Z#0, m'#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.minus($LS($LZ), n#0, m#0), Tclass._module.Nat());
                return;
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

        assume false;
    }
}



// function declaration for _module._default.exp
function _module.__default.exp($ly: LayerType, base#0: DatatypeType, power#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.exp
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, base#0: DatatypeType, power#0: DatatypeType :: 
    { _module.__default.exp($ly, base#0, power#0) } 
    _module.__default.exp#canCall(base#0, power#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(base#0, Tclass._module.Nat())
           && $Is(power#0, Tclass._module.Nat()))
       ==> $Is(_module.__default.exp($ly, base#0, power#0), Tclass._module.Nat()));
// definition axiom for _module.__default.exp (revealed)
axiom {:id "id103"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, base#0: DatatypeType, power#0: DatatypeType :: 
    { _module.__default.exp($LS($ly), base#0, power#0) } 
    _module.__default.exp#canCall(base#0, power#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(base#0, Tclass._module.Nat())
           && $Is(power#0, Tclass._module.Nat()))
       ==> (!_module.Nat.O_q(power#0)
           ==> (var p#1 := _module.Nat._h0(power#0); 
            _module.__default.exp#canCall(base#0, p#1)
               && _module.__default.mult#canCall(base#0, _module.__default.exp($ly, base#0, p#1))))
         && _module.__default.exp($LS($ly), base#0, power#0)
           == (if _module.Nat.O_q(power#0)
             then #_module.Nat.S(Lit(#_module.Nat.O()))
             else (var p#0 := _module.Nat._h0(power#0); 
              _module.__default.mult($LS($LZ), base#0, _module.__default.exp($ly, base#0, p#0)))));
// definition axiom for _module.__default.exp for all literals (revealed)
axiom {:id "id104"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, base#0: DatatypeType, power#0: DatatypeType :: 
    {:weight 3} { _module.__default.exp($LS($ly), Lit(base#0), Lit(power#0)) } 
    _module.__default.exp#canCall(Lit(base#0), Lit(power#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(base#0, Tclass._module.Nat())
           && $Is(power#0, Tclass._module.Nat()))
       ==> (!Lit(_module.Nat.O_q(Lit(power#0)))
           ==> (var p#3 := Lit(_module.Nat._h0(Lit(power#0))); 
            _module.__default.exp#canCall(Lit(base#0), p#3)
               && _module.__default.mult#canCall(Lit(base#0), _module.__default.exp($LS($ly), Lit(base#0), p#3))))
         && _module.__default.exp($LS($ly), Lit(base#0), Lit(power#0))
           == (if _module.Nat.O_q(Lit(power#0))
             then #_module.Nat.S(Lit(#_module.Nat.O()))
             else (var p#2 := Lit(_module.Nat._h0(Lit(power#0))); 
              Lit(_module.__default.mult($LS($LZ), Lit(base#0), Lit(_module.__default.exp($LS($ly), Lit(base#0), p#2)))))));
}

function _module.__default.exp#canCall(base#0: DatatypeType, power#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, base#0: DatatypeType, power#0: DatatypeType :: 
  { _module.__default.exp($LS($ly), base#0, power#0) } 
  _module.__default.exp($LS($ly), base#0, power#0)
     == _module.__default.exp($ly, base#0, power#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, base#0: DatatypeType, power#0: DatatypeType :: 
  { _module.__default.exp(AsFuelBottom($ly), base#0, power#0) } 
  _module.__default.exp($ly, base#0, power#0)
     == _module.__default.exp($LZ, base#0, power#0));

function _module.__default.exp#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.exp
axiom (forall $ly: LayerType, base#0: DatatypeType, power#0: DatatypeType :: 
  { _module.__default.exp#requires($ly, base#0, power#0) } 
  $Is(base#0, Tclass._module.Nat()) && $Is(power#0, Tclass._module.Nat())
     ==> _module.__default.exp#requires($ly, base#0, power#0) == true);

procedure {:verboseName "exp (well-formedness)"} CheckWellformed$$_module.__default.exp(base#0: DatatypeType where $Is(base#0, Tclass._module.Nat()), 
    power#0: DatatypeType where $Is(power#0, Tclass._module.Nat()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "exp (well-formedness)"} CheckWellformed$$_module.__default.exp(base#0: DatatypeType, power#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var p#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var ##n#0: DatatypeType;
  var ##m#0: DatatypeType;
  var ##base#0: DatatypeType;
  var ##power#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.exp($LS($LZ), base#0, power#0), Tclass._module.Nat());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (power#0 == #_module.Nat.O())
        {
            assume {:id "id109"} _module.__default.exp($LS($LZ), base#0, power#0)
               == Lit(#_module.Nat.S(Lit(#_module.Nat.O())));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.exp($LS($LZ), base#0, power#0), Tclass._module.Nat());
            return;
        }
        else if (power#0 == #_module.Nat.S(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            havoc p#Z#0;
            assume {:id "id105"} let#0#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Nat());
            assume {:id "id106"} p#Z#0 == let#0#0#0;
            ##n#0 := base#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
            ##base#0 := base#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#0, Tclass._module.Nat(), $Heap);
            ##power#0 := p#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##power#0, Tclass._module.Nat(), $Heap);
            assert {:id "id107"} DtRank(##base#0) < DtRank(base#0)
               || (DtRank(##base#0) == DtRank(base#0) && DtRank(##power#0) < DtRank(power#0));
            assume _module.__default.exp#canCall(base#0, p#Z#0);
            ##m#0 := _module.__default.exp($LS($LZ), base#0, p#Z#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0, Tclass._module.Nat(), $Heap);
            assume _module.__default.mult#canCall(base#0, _module.__default.exp($LS($LZ), base#0, p#Z#0));
            assume {:id "id108"} _module.__default.exp($LS($LZ), base#0, power#0)
               == _module.__default.mult($LS($LZ), base#0, _module.__default.exp($LS($LZ), base#0, p#Z#0));
            assume _module.__default.exp#canCall(base#0, p#Z#0)
               && _module.__default.mult#canCall(base#0, _module.__default.exp($LS($LZ), base#0, p#Z#0));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.exp($LS($LZ), base#0, power#0), Tclass._module.Nat());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.factorial
function _module.__default.factorial($ly: LayerType, n#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.factorial
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType :: 
    { _module.__default.factorial($ly, n#0) } 
    _module.__default.factorial#canCall(n#0)
         || (3 < $FunctionContextHeight && $Is(n#0, Tclass._module.Nat()))
       ==> $Is(_module.__default.factorial($ly, n#0), Tclass._module.Nat()));
// definition axiom for _module.__default.factorial (revealed)
axiom {:id "id110"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType :: 
    { _module.__default.factorial($LS($ly), n#0) } 
    _module.__default.factorial#canCall(n#0)
         || (3 < $FunctionContextHeight && $Is(n#0, Tclass._module.Nat()))
       ==> (!_module.Nat.O_q(n#0)
           ==> (var n'#1 := _module.Nat._h0(n#0); 
            _module.__default.factorial#canCall(n'#1)
               && _module.__default.mult#canCall(n#0, _module.__default.factorial($ly, n'#1))))
         && _module.__default.factorial($LS($ly), n#0)
           == (if _module.Nat.O_q(n#0)
             then #_module.Nat.S(Lit(#_module.Nat.O()))
             else (var n'#0 := _module.Nat._h0(n#0); 
              _module.__default.mult($LS($LZ), n#0, _module.__default.factorial($ly, n'#0)))));
// definition axiom for _module.__default.factorial for all literals (revealed)
axiom {:id "id111"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType :: 
    {:weight 3} { _module.__default.factorial($LS($ly), Lit(n#0)) } 
    _module.__default.factorial#canCall(Lit(n#0))
         || (3 < $FunctionContextHeight && $Is(n#0, Tclass._module.Nat()))
       ==> (!Lit(_module.Nat.O_q(Lit(n#0)))
           ==> (var n'#3 := Lit(_module.Nat._h0(Lit(n#0))); 
            _module.__default.factorial#canCall(n'#3)
               && _module.__default.mult#canCall(Lit(n#0), _module.__default.factorial($LS($ly), n'#3))))
         && _module.__default.factorial($LS($ly), Lit(n#0))
           == (if _module.Nat.O_q(Lit(n#0))
             then #_module.Nat.S(Lit(#_module.Nat.O()))
             else (var n'#2 := Lit(_module.Nat._h0(Lit(n#0))); 
              Lit(_module.__default.mult($LS($LZ), Lit(n#0), Lit(_module.__default.factorial($LS($ly), n'#2)))))));
}

function _module.__default.factorial#canCall(n#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType :: 
  { _module.__default.factorial($LS($ly), n#0) } 
  _module.__default.factorial($LS($ly), n#0)
     == _module.__default.factorial($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType :: 
  { _module.__default.factorial(AsFuelBottom($ly), n#0) } 
  _module.__default.factorial($ly, n#0) == _module.__default.factorial($LZ, n#0));

function _module.__default.factorial#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.factorial
axiom (forall $ly: LayerType, n#0: DatatypeType :: 
  { _module.__default.factorial#requires($ly, n#0) } 
  $Is(n#0, Tclass._module.Nat())
     ==> _module.__default.factorial#requires($ly, n#0) == true);

procedure {:verboseName "factorial (well-formedness)"} CheckWellformed$$_module.__default.factorial(n#0: DatatypeType where $Is(n#0, Tclass._module.Nat()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "factorial (well-formedness)"} CheckWellformed$$_module.__default.factorial(n#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var n'#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var ##n#0: DatatypeType;
  var ##m#0: DatatypeType;
  var ##n#1: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.factorial($LS($LZ), n#0), Tclass._module.Nat());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == #_module.Nat.O())
        {
            assume {:id "id116"} _module.__default.factorial($LS($LZ), n#0)
               == Lit(#_module.Nat.S(Lit(#_module.Nat.O())));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.factorial($LS($LZ), n#0), Tclass._module.Nat());
            return;
        }
        else if (n#0 == #_module.Nat.S(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            havoc n'#Z#0;
            assume {:id "id112"} let#0#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Nat());
            assume {:id "id113"} n'#Z#0 == let#0#0#0;
            ##n#0 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
            ##n#1 := n'#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, Tclass._module.Nat(), $Heap);
            assert {:id "id114"} DtRank(##n#1) < DtRank(n#0);
            assume _module.__default.factorial#canCall(n'#Z#0);
            ##m#0 := _module.__default.factorial($LS($LZ), n'#Z#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0, Tclass._module.Nat(), $Heap);
            assume _module.__default.mult#canCall(n#0, _module.__default.factorial($LS($LZ), n'#Z#0));
            assume {:id "id115"} _module.__default.factorial($LS($LZ), n#0)
               == _module.__default.mult($LS($LZ), n#0, _module.__default.factorial($LS($LZ), n'#Z#0));
            assume _module.__default.factorial#canCall(n'#Z#0)
               && _module.__default.mult#canCall(n#0, _module.__default.factorial($LS($LZ), n'#Z#0));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.factorial($LS($LZ), n#0), Tclass._module.Nat());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "test_factorial1 (well-formedness)"} CheckWellFormed$$_module.__default.test__factorial1();
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test_factorial1 (call)"} Call$$_module.__default.test__factorial1();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test_factorial1 (correctness)"} Impl$$_module.__default.test__factorial1() returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test_factorial1 (correctness)"} Impl$$_module.__default.test__factorial1() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n2#0: DatatypeType
     where $Is(n2#0, Tclass._module.Nat()) && $IsAlloc(n2#0, Tclass._module.Nat(), $Heap);
  var n3#0: DatatypeType
     where $Is(n3#0, Tclass._module.Nat()) && $IsAlloc(n3#0, Tclass._module.Nat(), $Heap);
  var n5#0: DatatypeType
     where $Is(n5#0, Tclass._module.Nat()) && $IsAlloc(n5#0, Tclass._module.Nat(), $Heap);
  var n6#0: DatatypeType
     where $Is(n6#0, Tclass._module.Nat()) && $IsAlloc(n6#0, Tclass._module.Nat(), $Heap);
  var ##n#0: DatatypeType;
  var n10#0: DatatypeType
     where $Is(n10#0, Tclass._module.Nat()) && $IsAlloc(n10#0, Tclass._module.Nat(), $Heap);
  var n12#0: DatatypeType
     where $Is(n12#0, Tclass._module.Nat()) && $IsAlloc(n12#0, Tclass._module.Nat(), $Heap);
  var ##n#1: DatatypeType;
  var ##n#2: DatatypeType;
  var ##m#0: DatatypeType;

    // AddMethodImpl: test_factorial1, Impl$$_module.__default.test__factorial1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(234,10)
    assume true;
    assume true;
    n2#0 := Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O())))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(235,10)
    assume true;
    assume true;
    n3#0 := #_module.Nat.S(n2#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(236,10)
    assume true;
    assume true;
    n5#0 := #_module.Nat.S(#_module.Nat.S(n3#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(237,10)
    assume true;
    assume true;
    n6#0 := #_module.Nat.S(n5#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(238,3)
    ##n#0 := n3#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
    assume _module.__default.factorial#canCall(n3#0);
    assume $IsA#_module.Nat(_module.__default.factorial($LS($LZ), n3#0))
       && $IsA#_module.Nat(n6#0)
       && _module.__default.factorial#canCall(n3#0);
    assert {:id "id121"} {:subsumption 0} _module.Nat#Equal(_module.__default.factorial($LS($LS($LZ)), n3#0), n6#0);
    assume {:id "id122"} _module.Nat#Equal(_module.__default.factorial($LS($LZ), n3#0), n6#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(240,11)
    assume true;
    assume true;
    n10#0 := #_module.Nat.S(#_module.Nat.S(#_module.Nat.S(#_module.Nat.S(n6#0))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(241,11)
    assume true;
    assume true;
    n12#0 := #_module.Nat.S(#_module.Nat.S(n10#0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(243,3)
    ##n#1 := n5#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._module.Nat(), $Heap);
    assume _module.__default.factorial#canCall(n5#0);
    ##n#2 := n10#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#2, Tclass._module.Nat(), $Heap);
    ##m#0 := n12#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#0, Tclass._module.Nat(), $Heap);
    assume _module.__default.mult#canCall(n10#0, n12#0);
    assume $IsA#_module.Nat(_module.__default.factorial($LS($LZ), n5#0))
       && $IsA#_module.Nat(_module.__default.mult($LS($LZ), n10#0, n12#0))
       && 
      _module.__default.factorial#canCall(n5#0)
       && _module.__default.mult#canCall(n10#0, n12#0);
    assert {:id "id125"} {:subsumption 0} _module.Nat#Equal(_module.__default.factorial($LS($LS($LZ)), n5#0), 
      _module.__default.mult($LS($LS($LZ)), n10#0, n12#0));
    assume {:id "id126"} _module.Nat#Equal(_module.__default.factorial($LS($LZ), n5#0), 
      _module.__default.mult($LS($LZ), n10#0, n12#0));
}



procedure {:verboseName "test_factorial1_old (well-formedness)"} CheckWellFormed$$_module.__default.test__factorial1__old();
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test_factorial1_old (call)"} Call$$_module.__default.test__factorial1__old();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test_factorial1_old (correctness)"} Impl$$_module.__default.test__factorial1__old() returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test_factorial1_old (correctness)"} Impl$$_module.__default.test__factorial1__old() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n2#0: DatatypeType
     where $Is(n2#0, Tclass._module.Nat()) && $IsAlloc(n2#0, Tclass._module.Nat(), $Heap);
  var n3#0: DatatypeType
     where $Is(n3#0, Tclass._module.Nat()) && $IsAlloc(n3#0, Tclass._module.Nat(), $Heap);
  var n5#0: DatatypeType
     where $Is(n5#0, Tclass._module.Nat()) && $IsAlloc(n5#0, Tclass._module.Nat(), $Heap);
  var n6#0: DatatypeType
     where $Is(n6#0, Tclass._module.Nat()) && $IsAlloc(n6#0, Tclass._module.Nat(), $Heap);
  var ##n#0: DatatypeType;
  var n10#0: DatatypeType
     where $Is(n10#0, Tclass._module.Nat()) && $IsAlloc(n10#0, Tclass._module.Nat(), $Heap);
  var n12#0: DatatypeType
     where $Is(n12#0, Tclass._module.Nat()) && $IsAlloc(n12#0, Tclass._module.Nat(), $Heap);
  var ##n#0_0_0: DatatypeType;
  var ##m#0_0_0: DatatypeType;
  var ##n#0_0_1: DatatypeType;
  var ##n#0_0_2: DatatypeType;
  var ##m#0_0_1: DatatypeType;
  var ##m#0_0_2: DatatypeType;
  var ##n#0_0_3: DatatypeType;
  var ##n#0_0_4: DatatypeType;
  var ##m#0_0_3: DatatypeType;
  var ##m#0_0_4: DatatypeType;
  var m##0_0_0: DatatypeType;
  var n##0_0_0: DatatypeType;
  var ##n#0_0_5: DatatypeType;
  var ##m#0_0_5: DatatypeType;
  var ##n#0_0_6: DatatypeType;
  var ##m#0_0_6: DatatypeType;
  var ##n#0_1_0: DatatypeType;
  var m##0_1_0: DatatypeType;
  var n##0_1_0: DatatypeType;
  var ##n#0_1_1: DatatypeType;
  var ##m#0_1_0: DatatypeType;
  var ##n#0_1_2: DatatypeType;
  var ##n#0_1_3: DatatypeType;
  var ##m#0_1_1: DatatypeType;
  var ##m#0_1_2: DatatypeType;
  var ##n#0_1_4: DatatypeType;
  var ##n#0_1_5: DatatypeType;
  var ##m#0_1_3: DatatypeType;
  var ##m#0_1_4: DatatypeType;
  var ##n#0_0: DatatypeType;

    // AddMethodImpl: test_factorial1_old, Impl$$_module.__default.test__factorial1__old
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(248,10)
    assume true;
    assume true;
    n2#0 := Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O())))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(249,10)
    assume true;
    assume true;
    n3#0 := #_module.Nat.S(n2#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(250,10)
    assume true;
    assume true;
    n5#0 := #_module.Nat.S(#_module.Nat.S(n3#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(251,10)
    assume true;
    assume true;
    n6#0 := #_module.Nat.S(n5#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(252,3)
    ##n#0 := n3#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
    assume _module.__default.factorial#canCall(n3#0);
    assume $IsA#_module.Nat(_module.__default.factorial($LS($LZ), n3#0))
       && $IsA#_module.Nat(n6#0)
       && _module.__default.factorial#canCall(n3#0);
    assert {:id "id131"} {:subsumption 0} _module.Nat#Equal(_module.__default.factorial($LS($LS($LZ)), n3#0), n6#0);
    assume {:id "id132"} _module.Nat#Equal(_module.__default.factorial($LS($LZ), n3#0), n6#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(254,11)
    assume true;
    assume true;
    n10#0 := #_module.Nat.S(#_module.Nat.S(#_module.Nat.S(#_module.Nat.S(n6#0))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(255,11)
    assume true;
    assume true;
    n12#0 := #_module.Nat.S(#_module.Nat.S(n10#0));
    // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(258,3)
    // Assume Fuel Constant
    if (*)
    {
        // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(258,3)
        ##n#0_0 := n5#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_0, Tclass._module.Nat(), $Heap);
        assume _module.__default.factorial#canCall(n5#0);
        assume _module.__default.factorial#canCall(n5#0);
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(258,3)
        ##n#0_1_0 := n5#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_1_0, Tclass._module.Nat(), $Heap);
        assume _module.__default.factorial#canCall(n5#0);
        assume _module.__default.factorial#canCall(n5#0);
        // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(258,3)
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(260,19)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        m##0_1_0 := n2#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        n##0_1_0 := n6#0;
        call {:id "id137"} Call$$_module.__default.mult__lemma(m##0_1_0, n##0_1_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(258,3)
        ##n#0_1_1 := n5#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_1_1, Tclass._module.Nat(), $Heap);
        ##n#0_1_3 := n6#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_1_3, Tclass._module.Nat(), $Heap);
        ##m#0_1_1 := n6#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##m#0_1_1, Tclass._module.Nat(), $Heap);
        assume _module.__default.plus#canCall(n6#0, n6#0);
        ##n#0_1_2 := _module.__default.plus($LS($LZ), n6#0, n6#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_1_2, Tclass._module.Nat(), $Heap);
        ##n#0_1_5 := n6#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_1_5, Tclass._module.Nat(), $Heap);
        ##m#0_1_3 := n6#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##m#0_1_3, Tclass._module.Nat(), $Heap);
        assume _module.__default.plus#canCall(n6#0, n6#0);
        ##n#0_1_4 := _module.__default.plus($LS($LZ), n6#0, n6#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_1_4, Tclass._module.Nat(), $Heap);
        ##m#0_1_4 := Lit(#_module.Nat.O());
        // assume allocatedness for argument to function
        assume $IsAlloc(##m#0_1_4, Tclass._module.Nat(), $Heap);
        assume _module.__default.plus#canCall(_module.__default.plus($LS($LZ), n6#0, n6#0), Lit(#_module.Nat.O()));
        ##m#0_1_2 := _module.__default.plus($LS($LZ), _module.__default.plus($LS($LZ), n6#0, n6#0), Lit(#_module.Nat.O()));
        // assume allocatedness for argument to function
        assume $IsAlloc(##m#0_1_2, Tclass._module.Nat(), $Heap);
        assume _module.__default.plus#canCall(_module.__default.plus($LS($LZ), n6#0, n6#0), 
          _module.__default.plus($LS($LZ), _module.__default.plus($LS($LZ), n6#0, n6#0), Lit(#_module.Nat.O())));
        ##m#0_1_0 := _module.__default.plus($LS($LZ), 
          _module.__default.plus($LS($LZ), n6#0, n6#0), 
          _module.__default.plus($LS($LZ), _module.__default.plus($LS($LZ), n6#0, n6#0), Lit(#_module.Nat.O())));
        // assume allocatedness for argument to function
        assume $IsAlloc(##m#0_1_0, Tclass._module.Nat(), $Heap);
        assume _module.__default.mult#canCall(n5#0, 
          _module.__default.plus($LS($LZ), 
            _module.__default.plus($LS($LZ), n6#0, n6#0), 
            _module.__default.plus($LS($LZ), _module.__default.plus($LS($LZ), n6#0, n6#0), Lit(#_module.Nat.O()))));
        assume _module.__default.plus#canCall(n6#0, n6#0)
           && 
          _module.__default.plus#canCall(n6#0, n6#0)
           && _module.__default.plus#canCall(_module.__default.plus($LS($LZ), n6#0, n6#0), Lit(#_module.Nat.O()))
           && _module.__default.plus#canCall(_module.__default.plus($LS($LZ), n6#0, n6#0), 
            _module.__default.plus($LS($LZ), _module.__default.plus($LS($LZ), n6#0, n6#0), Lit(#_module.Nat.O())))
           && _module.__default.mult#canCall(n5#0, 
            _module.__default.plus($LS($LZ), 
              _module.__default.plus($LS($LZ), n6#0, n6#0), 
              _module.__default.plus($LS($LZ), _module.__default.plus($LS($LZ), n6#0, n6#0), Lit(#_module.Nat.O()))));
        // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(258,3)
        assert {:id "id138"} {:subsumption 0} _module.Nat#Equal(_module.__default.factorial($LS($LS($LZ)), n5#0), 
          _module.__default.mult($LS($LS($LZ)), 
            n5#0, 
            _module.__default.plus($LS($LS($LZ)), 
              _module.__default.plus($LS($LS($LZ)), n6#0, n6#0), 
              _module.__default.plus($LS($LS($LZ)), 
                _module.__default.plus($LS($LS($LZ)), n6#0, n6#0), 
                Lit(#_module.Nat.O())))));
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(258,3)
        ##n#0_0_0 := n5#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_0_0, Tclass._module.Nat(), $Heap);
        ##n#0_0_2 := n6#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_0_2, Tclass._module.Nat(), $Heap);
        ##m#0_0_1 := n6#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##m#0_0_1, Tclass._module.Nat(), $Heap);
        assume _module.__default.plus#canCall(n6#0, n6#0);
        ##n#0_0_1 := _module.__default.plus($LS($LZ), n6#0, n6#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_0_1, Tclass._module.Nat(), $Heap);
        ##n#0_0_4 := n6#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_0_4, Tclass._module.Nat(), $Heap);
        ##m#0_0_3 := n6#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##m#0_0_3, Tclass._module.Nat(), $Heap);
        assume _module.__default.plus#canCall(n6#0, n6#0);
        ##n#0_0_3 := _module.__default.plus($LS($LZ), n6#0, n6#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_0_3, Tclass._module.Nat(), $Heap);
        ##m#0_0_4 := Lit(#_module.Nat.O());
        // assume allocatedness for argument to function
        assume $IsAlloc(##m#0_0_4, Tclass._module.Nat(), $Heap);
        assume _module.__default.plus#canCall(_module.__default.plus($LS($LZ), n6#0, n6#0), Lit(#_module.Nat.O()));
        ##m#0_0_2 := _module.__default.plus($LS($LZ), _module.__default.plus($LS($LZ), n6#0, n6#0), Lit(#_module.Nat.O()));
        // assume allocatedness for argument to function
        assume $IsAlloc(##m#0_0_2, Tclass._module.Nat(), $Heap);
        assume _module.__default.plus#canCall(_module.__default.plus($LS($LZ), n6#0, n6#0), 
          _module.__default.plus($LS($LZ), _module.__default.plus($LS($LZ), n6#0, n6#0), Lit(#_module.Nat.O())));
        ##m#0_0_0 := _module.__default.plus($LS($LZ), 
          _module.__default.plus($LS($LZ), n6#0, n6#0), 
          _module.__default.plus($LS($LZ), _module.__default.plus($LS($LZ), n6#0, n6#0), Lit(#_module.Nat.O())));
        // assume allocatedness for argument to function
        assume $IsAlloc(##m#0_0_0, Tclass._module.Nat(), $Heap);
        assume _module.__default.mult#canCall(n5#0, 
          _module.__default.plus($LS($LZ), 
            _module.__default.plus($LS($LZ), n6#0, n6#0), 
            _module.__default.plus($LS($LZ), _module.__default.plus($LS($LZ), n6#0, n6#0), Lit(#_module.Nat.O()))));
        assume _module.__default.plus#canCall(n6#0, n6#0)
           && 
          _module.__default.plus#canCall(n6#0, n6#0)
           && _module.__default.plus#canCall(_module.__default.plus($LS($LZ), n6#0, n6#0), Lit(#_module.Nat.O()))
           && _module.__default.plus#canCall(_module.__default.plus($LS($LZ), n6#0, n6#0), 
            _module.__default.plus($LS($LZ), _module.__default.plus($LS($LZ), n6#0, n6#0), Lit(#_module.Nat.O())))
           && _module.__default.mult#canCall(n5#0, 
            _module.__default.plus($LS($LZ), 
              _module.__default.plus($LS($LZ), n6#0, n6#0), 
              _module.__default.plus($LS($LZ), _module.__default.plus($LS($LZ), n6#0, n6#0), Lit(#_module.Nat.O()))));
        // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(258,3)
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(262,19)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        m##0_0_0 := n5#0;
        ##n#0_0_5 := n6#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_0_5, Tclass._module.Nat(), $Heap);
        ##m#0_0_5 := n6#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##m#0_0_5, Tclass._module.Nat(), $Heap);
        assume _module.__default.plus#canCall(n6#0, n6#0);
        assume _module.__default.plus#canCall(n6#0, n6#0);
        // ProcessCallStmt: CheckSubrange
        n##0_0_0 := _module.__default.plus($LS($LZ), n6#0, n6#0);
        call {:id "id135"} Call$$_module.__default.mult__lemma(m##0_0_0, n##0_0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(258,3)
        ##n#0_0_6 := n10#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_0_6, Tclass._module.Nat(), $Heap);
        ##m#0_0_6 := n12#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##m#0_0_6, Tclass._module.Nat(), $Heap);
        assume _module.__default.mult#canCall(n10#0, n12#0);
        assume _module.__default.mult#canCall(n10#0, n12#0);
        // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(258,3)
        assert {:id "id136"} {:subsumption 0} _module.Nat#Equal(_module.__default.mult($LS($LS($LZ)), 
            n5#0, 
            _module.__default.plus($LS($LS($LZ)), 
              _module.__default.plus($LS($LS($LZ)), n6#0, n6#0), 
              _module.__default.plus($LS($LS($LZ)), 
                _module.__default.plus($LS($LS($LZ)), n6#0, n6#0), 
                Lit(#_module.Nat.O())))), 
          _module.__default.mult($LS($LS($LZ)), n10#0, n12#0));
        assume false;
    }

    assume {:id "id139"} _module.Nat#Equal(_module.__default.factorial($LS($LZ), n5#0), 
      _module.__default.mult($LS($LZ), n10#0, n12#0));
}



procedure {:verboseName "plus_lemma (well-formedness)"} CheckWellFormed$$_module.__default.plus__lemma(a#0: DatatypeType
       where $Is(a#0, Tclass._module.Nat())
         && $IsAlloc(a#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(a#0), 
    b#0: DatatypeType
       where $Is(b#0, Tclass._module.Nat())
         && $IsAlloc(b#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(b#0), 
    c#0: DatatypeType
       where $Is(c#0, Tclass._module.Nat())
         && $IsAlloc(c#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(c#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "plus_lemma (call)"} Call$$_module.__default.plus__lemma(a#0: DatatypeType
       where $Is(a#0, Tclass._module.Nat())
         && $IsAlloc(a#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(a#0), 
    b#0: DatatypeType
       where $Is(b#0, Tclass._module.Nat())
         && $IsAlloc(b#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(b#0), 
    c#0: DatatypeType
       where $Is(c#0, Tclass._module.Nat())
         && $IsAlloc(c#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(c#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Nat(_module.__default.plus($LS($LZ), _module.__default.plus($LS($LZ), a#0, b#0), c#0))
     && $IsA#_module.Nat(_module.__default.plus($LS($LZ), a#0, _module.__default.plus($LS($LZ), b#0, c#0)))
     && 
    _module.__default.plus#canCall(a#0, b#0)
     && _module.__default.plus#canCall(_module.__default.plus($LS($LZ), a#0, b#0), c#0)
     && 
    _module.__default.plus#canCall(b#0, c#0)
     && _module.__default.plus#canCall(a#0, _module.__default.plus($LS($LZ), b#0, c#0));
  ensures {:id "id141"} _module.Nat#Equal(_module.__default.plus($LS($LS($LZ)), _module.__default.plus($LS($LS($LZ)), a#0, b#0), c#0), 
    _module.__default.plus($LS($LS($LZ)), a#0, _module.__default.plus($LS($LS($LZ)), b#0, c#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "plus_lemma (correctness)"} Impl$$_module.__default.plus__lemma(a#0: DatatypeType
       where $Is(a#0, Tclass._module.Nat())
         && $IsAlloc(a#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(a#0), 
    b#0: DatatypeType
       where $Is(b#0, Tclass._module.Nat())
         && $IsAlloc(b#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(b#0), 
    c#0: DatatypeType
       where $Is(c#0, Tclass._module.Nat())
         && $IsAlloc(c#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(c#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Nat(_module.__default.plus($LS($LZ), _module.__default.plus($LS($LZ), a#0, b#0), c#0))
     && $IsA#_module.Nat(_module.__default.plus($LS($LZ), a#0, _module.__default.plus($LS($LZ), b#0, c#0)))
     && 
    _module.__default.plus#canCall(a#0, b#0)
     && _module.__default.plus#canCall(_module.__default.plus($LS($LZ), a#0, b#0), c#0)
     && 
    _module.__default.plus#canCall(b#0, c#0)
     && _module.__default.plus#canCall(a#0, _module.__default.plus($LS($LZ), b#0, c#0));
  ensures {:id "id142"} _module.Nat#Equal(_module.__default.plus($LS($LS($LZ)), _module.__default.plus($LS($LS($LZ)), a#0, b#0), c#0), 
    _module.__default.plus($LS($LS($LZ)), a#0, _module.__default.plus($LS($LS($LZ)), b#0, c#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "plus_lemma (correctness)"} Impl$$_module.__default.plus__lemma(a#0: DatatypeType, b#0: DatatypeType, c#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: plus_lemma, Impl$$_module.__default.plus__lemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Nat(a#0);
    assume $IsA#_module.Nat(b#0);
    assume $IsA#_module.Nat(c#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#a0#0: DatatypeType, $ih#b0#0: DatatypeType, $ih#c0#0: DatatypeType :: 
      { _module.__default.plus($LS($LZ), $ih#a0#0, _module.__default.plus($LS($LZ), $ih#b0#0, $ih#c0#0)) } 
        { _module.__default.plus($LS($LZ), _module.__default.plus($LS($LZ), $ih#a0#0, $ih#b0#0), $ih#c0#0) } 
      $Is($ih#a0#0, Tclass._module.Nat())
           && $Is($ih#b0#0, Tclass._module.Nat())
           && $Is($ih#c0#0, Tclass._module.Nat())
           && Lit(true)
           && (DtRank($ih#a0#0) < DtRank(a#0)
             || (DtRank($ih#a0#0) == DtRank(a#0)
               && (DtRank($ih#b0#0) < DtRank(b#0)
                 || (DtRank($ih#b0#0) == DtRank(b#0) && DtRank($ih#c0#0) < DtRank(c#0)))))
         ==> _module.Nat#Equal(_module.__default.plus($LS($LZ), _module.__default.plus($LS($LZ), $ih#a0#0, $ih#b0#0), $ih#c0#0), 
          _module.__default.plus($LS($LZ), $ih#a0#0, _module.__default.plus($LS($LZ), $ih#b0#0, $ih#c0#0))));
    $_reverifyPost := false;
}



procedure {:verboseName "mult_lemma (well-formedness)"} {:vcs_split_on_every_assert} CheckWellFormed$$_module.__default.mult__lemma(m#0: DatatypeType
       where $Is(m#0, Tclass._module.Nat())
         && $IsAlloc(m#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(m#0), 
    n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "mult_lemma (call)"} {:vcs_split_on_every_assert} Call$$_module.__default.mult__lemma(m#0: DatatypeType
       where $Is(m#0, Tclass._module.Nat())
         && $IsAlloc(m#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(m#0), 
    n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Nat(_module.__default.mult($LS($LZ), m#0, _module.__default.plus($LS($LZ), n#0, n#0)))
     && $IsA#_module.Nat(_module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), m#0, m#0), n#0))
     && 
    _module.__default.plus#canCall(n#0, n#0)
     && _module.__default.mult#canCall(m#0, _module.__default.plus($LS($LZ), n#0, n#0))
     && 
    _module.__default.plus#canCall(m#0, m#0)
     && _module.__default.mult#canCall(_module.__default.plus($LS($LZ), m#0, m#0), n#0);
  ensures {:id "id144"} _module.Nat#Equal(_module.__default.mult($LS($LS($LZ)), m#0, _module.__default.plus($LS($LS($LZ)), n#0, n#0)), 
    _module.__default.mult($LS($LS($LZ)), _module.__default.plus($LS($LS($LZ)), m#0, m#0), n#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "mult_lemma (correctness)"} {:vcs_split_on_every_assert} Impl$$_module.__default.mult__lemma(m#0: DatatypeType
       where $Is(m#0, Tclass._module.Nat())
         && $IsAlloc(m#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(m#0), 
    n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Nat(_module.__default.mult($LS($LZ), m#0, _module.__default.plus($LS($LZ), n#0, n#0)))
     && $IsA#_module.Nat(_module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), m#0, m#0), n#0))
     && 
    _module.__default.plus#canCall(n#0, n#0)
     && _module.__default.mult#canCall(m#0, _module.__default.plus($LS($LZ), n#0, n#0))
     && 
    _module.__default.plus#canCall(m#0, m#0)
     && _module.__default.mult#canCall(_module.__default.plus($LS($LZ), m#0, m#0), n#0);
  ensures {:id "id145"} _module.Nat#Equal(_module.__default.mult($LS($LS($LZ)), m#0, _module.__default.plus($LS($LS($LZ)), n#0, n#0)), 
    _module.__default.mult($LS($LS($LZ)), _module.__default.plus($LS($LS($LZ)), m#0, m#0), n#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "mult_lemma (correctness)"} {:vcs_split_on_every_assert} Impl$$_module.__default.mult__lemma(m#0: DatatypeType, n#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0_0: DatatypeType;
  var m'#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var ##n#0_0_0_0: DatatypeType;
  var ##n#0_0_0_1: DatatypeType;
  var ##m#0_0_0_0: DatatypeType;
  var ##m#0_0_0_1: DatatypeType;
  var a#0_0_0_0: DatatypeType;
  var b#0_0_0_0: DatatypeType;
  var ##n#0_0_0_2: DatatypeType;
  var ##m#0_0_0_2: DatatypeType;
  var ##n#0_0_0_3: DatatypeType;
  var ##m#0_0_0_3: DatatypeType;
  var ##n#0_0_0_4: DatatypeType;
  var ##n#0_0_0_5: DatatypeType;
  var ##m#0_0_0_4: DatatypeType;
  var ##m#0_0_0_5: DatatypeType;
  var ##n#0_0_1_0: DatatypeType;
  var ##n#0_0_1_1: DatatypeType;
  var ##m#0_0_1_0: DatatypeType;
  var ##m#0_0_1_1: DatatypeType;
  var ##n#0_0_1_2: DatatypeType;
  var ##n#0_0_1_3: DatatypeType;
  var ##m#0_0_1_2: DatatypeType;
  var ##m#0_0_1_3: DatatypeType;
  var ##n#0_0_2_0: DatatypeType;
  var ##m#0_0_2_0: DatatypeType;
  var ##n#0_0_2_1: DatatypeType;
  var ##m#0_0_2_1: DatatypeType;
  var ##n#0_0_2_2: DatatypeType;
  var ##n#0_0_2_3: DatatypeType;
  var ##m#0_0_2_2: DatatypeType;
  var ##m#0_0_2_3: DatatypeType;
  var ##n#0_0_2_4: DatatypeType;
  var ##n#0_0_2_5: DatatypeType;
  var ##m#0_0_2_4: DatatypeType;
  var ##m#0_0_2_5: DatatypeType;
  var ##n#0_0_3_0: DatatypeType;
  var ##n#0_0_3_1: DatatypeType;
  var ##m#0_0_3_0: DatatypeType;
  var ##m#0_0_3_1: DatatypeType;
  var ##n#0_0_3_2: DatatypeType;
  var ##n#0_0_3_3: DatatypeType;
  var ##m#0_0_3_2: DatatypeType;
  var ##m#0_0_3_3: DatatypeType;
  var a##0_0_3_0: DatatypeType;
  var b##0_0_3_0: DatatypeType;
  var c##0_0_3_0: DatatypeType;
  var ##n#0_0_3_4: DatatypeType;
  var ##n#0_0_3_5: DatatypeType;
  var ##m#0_0_3_4: DatatypeType;
  var ##m#0_0_3_5: DatatypeType;
  var ##n#0_0_3_6: DatatypeType;
  var ##m#0_0_3_6: DatatypeType;
  var ##n#0_0_3_7: DatatypeType;
  var ##m#0_0_3_7: DatatypeType;
  var ##n#0_0_3_8: DatatypeType;
  var ##n#0_0_3_9: DatatypeType;
  var ##m#0_0_3_8: DatatypeType;
  var ##m#0_0_3_9: DatatypeType;
  var ##n#0_0_4_0: DatatypeType;
  var ##n#0_0_4_1: DatatypeType;
  var ##m#0_0_4_0: DatatypeType;
  var ##m#0_0_4_1: DatatypeType;
  var ##n#0_0_4_2: DatatypeType;
  var ##m#0_0_4_2: DatatypeType;
  var ##n#0_0_4_3: DatatypeType;
  var ##m#0_0_4_3: DatatypeType;
  var ##n#0_0_4_4: DatatypeType;
  var ##n#0_0_4_5: DatatypeType;
  var ##m#0_0_4_4: DatatypeType;
  var ##m#0_0_4_5: DatatypeType;
  var ##n#0_0_4_6: DatatypeType;
  var ##n#0_0_4_7: DatatypeType;
  var ##m#0_0_4_6: DatatypeType;
  var ##m#0_0_4_7: DatatypeType;
  var ##n#0_0_5_0: DatatypeType;
  var ##m#0_0_5_0: DatatypeType;
  var ##n#0_0_5_1: DatatypeType;
  var ##m#0_0_5_1: DatatypeType;
  var ##n#0_0_5_2: DatatypeType;
  var ##n#0_0_5_3: DatatypeType;
  var ##m#0_0_5_2: DatatypeType;
  var ##m#0_0_5_3: DatatypeType;
  var ##n#0_0_5_4: DatatypeType;
  var ##m#0_0_5_4: DatatypeType;
  var ##n#0_0_5_5: DatatypeType;
  var ##m#0_0_5_5: DatatypeType;
  var ##n#0_0_0: DatatypeType;
  var ##m#0_0_0: DatatypeType;
  var ##n#0_0_1: DatatypeType;
  var ##m#0_0_1: DatatypeType;

    // AddMethodImpl: mult_lemma, Impl$$_module.__default.mult__lemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Nat(m#0);
    assume $IsA#_module.Nat(n#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#m0#0: DatatypeType, $ih#n0#0: DatatypeType :: 
      { _module.__default.plus($LS($LZ), $ih#m0#0, $ih#m0#0), _module.__default.plus($LS($LZ), $ih#n0#0, $ih#n0#0) } 
      $Is($ih#m0#0, Tclass._module.Nat())
           && $Is($ih#n0#0, Tclass._module.Nat())
           && Lit(true)
           && (DtRank($ih#m0#0) < DtRank(m#0)
             || (DtRank($ih#m0#0) == DtRank(m#0) && DtRank($ih#n0#0) < DtRank(n#0)))
         ==> _module.Nat#Equal(_module.__default.mult($LS($LZ), $ih#m0#0, _module.__default.plus($LS($LZ), $ih#n0#0, $ih#n0#0)), 
          _module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), $ih#m0#0, $ih#m0#0), $ih#n0#0)));
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0;
    if (m#0 == #_module.Nat.O())
    {
    }
    else if (m#0 == #_module.Nat.S(_mcc#0#0_0))
    {
        assume $Is(_mcc#0#0_0, Tclass._module.Nat());
        havoc m'#0_0;
        assume $Is(m'#0_0, Tclass._module.Nat())
           && $IsAlloc(m'#0_0, Tclass._module.Nat(), $Heap);
        assume {:id "id146"} let#0_0#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.Nat());
        assume {:id "id147"} m'#0_0 == let#0_0#0#0;
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            ##n#0_0_0 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_0, Tclass._module.Nat(), $Heap);
            ##n#0_0_1 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_1, Tclass._module.Nat(), $Heap);
            ##m#0_0_1 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_1, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(n#0, n#0);
            ##m#0_0_0 := _module.__default.plus($LS($LZ), n#0, n#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_0, Tclass._module.Nat(), $Heap);
            assume _module.__default.mult#canCall(m#0, _module.__default.plus($LS($LZ), n#0, n#0));
            assume _module.__default.plus#canCall(n#0, n#0)
               && _module.__default.mult#canCall(m#0, _module.__default.plus($LS($LZ), n#0, n#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            ##n#0_0_5_0 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_5_0, Tclass._module.Nat(), $Heap);
            ##n#0_0_5_1 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_5_1, Tclass._module.Nat(), $Heap);
            ##m#0_0_5_1 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_5_1, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(n#0, n#0);
            ##m#0_0_5_0 := _module.__default.plus($LS($LZ), n#0, n#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_5_0, Tclass._module.Nat(), $Heap);
            assume _module.__default.mult#canCall(m#0, _module.__default.plus($LS($LZ), n#0, n#0));
            assume _module.__default.plus#canCall(n#0, n#0)
               && _module.__default.mult#canCall(m#0, _module.__default.plus($LS($LZ), n#0, n#0));
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            ##n#0_0_5_3 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_5_3, Tclass._module.Nat(), $Heap);
            ##m#0_0_5_2 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_5_2, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(n#0, n#0);
            ##n#0_0_5_2 := _module.__default.plus($LS($LZ), n#0, n#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_5_2, Tclass._module.Nat(), $Heap);
            ##n#0_0_5_4 := m'#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_5_4, Tclass._module.Nat(), $Heap);
            ##n#0_0_5_5 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_5_5, Tclass._module.Nat(), $Heap);
            ##m#0_0_5_5 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_5_5, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(n#0, n#0);
            ##m#0_0_5_4 := _module.__default.plus($LS($LZ), n#0, n#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_5_4, Tclass._module.Nat(), $Heap);
            assume _module.__default.mult#canCall(m'#0_0, _module.__default.plus($LS($LZ), n#0, n#0));
            ##m#0_0_5_3 := _module.__default.mult($LS($LZ), m'#0_0, _module.__default.plus($LS($LZ), n#0, n#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_5_3, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(_module.__default.plus($LS($LZ), n#0, n#0), 
              _module.__default.mult($LS($LZ), m'#0_0, _module.__default.plus($LS($LZ), n#0, n#0)));
            assume _module.__default.plus#canCall(n#0, n#0)
               && 
              _module.__default.plus#canCall(n#0, n#0)
               && _module.__default.mult#canCall(m'#0_0, _module.__default.plus($LS($LZ), n#0, n#0))
               && _module.__default.plus#canCall(_module.__default.plus($LS($LZ), n#0, n#0), 
                _module.__default.mult($LS($LZ), m'#0_0, _module.__default.plus($LS($LZ), n#0, n#0)));
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            assert {:id "id159"} {:subsumption 0} _module.Nat#Equal(_module.__default.mult($LS($LS($LZ)), m#0, _module.__default.plus($LS($LS($LZ)), n#0, n#0)), 
              _module.__default.plus($LS($LS($LZ)), 
                _module.__default.plus($LS($LS($LZ)), n#0, n#0), 
                _module.__default.mult($LS($LS($LZ)), m'#0_0, _module.__default.plus($LS($LS($LZ)), n#0, n#0))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            ##n#0_0_4_1 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_4_1, Tclass._module.Nat(), $Heap);
            ##m#0_0_4_0 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_4_0, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(n#0, n#0);
            ##n#0_0_4_0 := _module.__default.plus($LS($LZ), n#0, n#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_4_0, Tclass._module.Nat(), $Heap);
            ##n#0_0_4_2 := m'#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_4_2, Tclass._module.Nat(), $Heap);
            ##n#0_0_4_3 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_4_3, Tclass._module.Nat(), $Heap);
            ##m#0_0_4_3 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_4_3, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(n#0, n#0);
            ##m#0_0_4_2 := _module.__default.plus($LS($LZ), n#0, n#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_4_2, Tclass._module.Nat(), $Heap);
            assume _module.__default.mult#canCall(m'#0_0, _module.__default.plus($LS($LZ), n#0, n#0));
            ##m#0_0_4_1 := _module.__default.mult($LS($LZ), m'#0_0, _module.__default.plus($LS($LZ), n#0, n#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_4_1, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(_module.__default.plus($LS($LZ), n#0, n#0), 
              _module.__default.mult($LS($LZ), m'#0_0, _module.__default.plus($LS($LZ), n#0, n#0)));
            assume _module.__default.plus#canCall(n#0, n#0)
               && 
              _module.__default.plus#canCall(n#0, n#0)
               && _module.__default.mult#canCall(m'#0_0, _module.__default.plus($LS($LZ), n#0, n#0))
               && _module.__default.plus#canCall(_module.__default.plus($LS($LZ), n#0, n#0), 
                _module.__default.mult($LS($LZ), m'#0_0, _module.__default.plus($LS($LZ), n#0, n#0)));
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            ##n#0_0_4_5 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_4_5, Tclass._module.Nat(), $Heap);
            ##m#0_0_4_4 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_4_4, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(n#0, n#0);
            ##n#0_0_4_4 := _module.__default.plus($LS($LZ), n#0, n#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_4_4, Tclass._module.Nat(), $Heap);
            ##n#0_0_4_7 := m'#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_4_7, Tclass._module.Nat(), $Heap);
            ##m#0_0_4_6 := m'#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_4_6, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(m'#0_0, m'#0_0);
            ##n#0_0_4_6 := _module.__default.plus($LS($LZ), m'#0_0, m'#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_4_6, Tclass._module.Nat(), $Heap);
            ##m#0_0_4_7 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_4_7, Tclass._module.Nat(), $Heap);
            assume _module.__default.mult#canCall(_module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0);
            ##m#0_0_4_5 := _module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_4_5, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(_module.__default.plus($LS($LZ), n#0, n#0), 
              _module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0));
            assume _module.__default.plus#canCall(n#0, n#0)
               && 
              _module.__default.plus#canCall(m'#0_0, m'#0_0)
               && _module.__default.mult#canCall(_module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0)
               && _module.__default.plus#canCall(_module.__default.plus($LS($LZ), n#0, n#0), 
                _module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0));
            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            assert {:id "id158"} {:subsumption 0} _module.Nat#Equal(_module.__default.plus($LS($LS($LZ)), 
                _module.__default.plus($LS($LS($LZ)), n#0, n#0), 
                _module.__default.mult($LS($LS($LZ)), m'#0_0, _module.__default.plus($LS($LS($LZ)), n#0, n#0))), 
              _module.__default.plus($LS($LS($LZ)), 
                _module.__default.plus($LS($LS($LZ)), n#0, n#0), 
                _module.__default.mult($LS($LS($LZ)), _module.__default.plus($LS($LS($LZ)), m'#0_0, m'#0_0), n#0)));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            ##n#0_0_3_1 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_3_1, Tclass._module.Nat(), $Heap);
            ##m#0_0_3_0 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_3_0, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(n#0, n#0);
            ##n#0_0_3_0 := _module.__default.plus($LS($LZ), n#0, n#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_3_0, Tclass._module.Nat(), $Heap);
            ##n#0_0_3_3 := m'#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_3_3, Tclass._module.Nat(), $Heap);
            ##m#0_0_3_2 := m'#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_3_2, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(m'#0_0, m'#0_0);
            ##n#0_0_3_2 := _module.__default.plus($LS($LZ), m'#0_0, m'#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_3_2, Tclass._module.Nat(), $Heap);
            ##m#0_0_3_3 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_3_3, Tclass._module.Nat(), $Heap);
            assume _module.__default.mult#canCall(_module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0);
            ##m#0_0_3_1 := _module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_3_1, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(_module.__default.plus($LS($LZ), n#0, n#0), 
              _module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0));
            assume _module.__default.plus#canCall(n#0, n#0)
               && 
              _module.__default.plus#canCall(m'#0_0, m'#0_0)
               && _module.__default.mult#canCall(_module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0)
               && _module.__default.plus#canCall(_module.__default.plus($LS($LZ), n#0, n#0), 
                _module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0));
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(284,23)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##0_0_3_0 := n#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            b##0_0_3_0 := n#0;
            ##n#0_0_3_5 := m'#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_3_5, Tclass._module.Nat(), $Heap);
            ##m#0_0_3_4 := m'#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_3_4, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(m'#0_0, m'#0_0);
            ##n#0_0_3_4 := _module.__default.plus($LS($LZ), m'#0_0, m'#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_3_4, Tclass._module.Nat(), $Heap);
            ##m#0_0_3_5 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_3_5, Tclass._module.Nat(), $Heap);
            assume _module.__default.mult#canCall(_module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0);
            assume _module.__default.plus#canCall(m'#0_0, m'#0_0)
               && _module.__default.mult#canCall(_module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0);
            // ProcessCallStmt: CheckSubrange
            c##0_0_3_0 := _module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0);
            call {:id "id156"} Call$$_module.__default.plus__lemma(a##0_0_3_0, b##0_0_3_0, c##0_0_3_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            ##n#0_0_3_6 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_3_6, Tclass._module.Nat(), $Heap);
            ##n#0_0_3_7 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_3_7, Tclass._module.Nat(), $Heap);
            ##n#0_0_3_9 := m'#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_3_9, Tclass._module.Nat(), $Heap);
            ##m#0_0_3_8 := m'#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_3_8, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(m'#0_0, m'#0_0);
            ##n#0_0_3_8 := _module.__default.plus($LS($LZ), m'#0_0, m'#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_3_8, Tclass._module.Nat(), $Heap);
            ##m#0_0_3_9 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_3_9, Tclass._module.Nat(), $Heap);
            assume _module.__default.mult#canCall(_module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0);
            ##m#0_0_3_7 := _module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_3_7, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(n#0, 
              _module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0));
            ##m#0_0_3_6 := _module.__default.plus($LS($LZ), 
              n#0, 
              _module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_3_6, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(n#0, 
              _module.__default.plus($LS($LZ), 
                n#0, 
                _module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0)));
            assume _module.__default.plus#canCall(m'#0_0, m'#0_0)
               && _module.__default.mult#canCall(_module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0)
               && _module.__default.plus#canCall(n#0, 
                _module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0))
               && _module.__default.plus#canCall(n#0, 
                _module.__default.plus($LS($LZ), 
                  n#0, 
                  _module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0)));
            // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            assert {:id "id157"} {:subsumption 0} _module.Nat#Equal(_module.__default.plus($LS($LS($LZ)), 
                _module.__default.plus($LS($LS($LZ)), n#0, n#0), 
                _module.__default.mult($LS($LS($LZ)), _module.__default.plus($LS($LS($LZ)), m'#0_0, m'#0_0), n#0)), 
              _module.__default.plus($LS($LS($LZ)), 
                n#0, 
                _module.__default.plus($LS($LS($LZ)), 
                  n#0, 
                  _module.__default.mult($LS($LS($LZ)), _module.__default.plus($LS($LS($LZ)), m'#0_0, m'#0_0), n#0))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            ##n#0_0_2_0 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_2_0, Tclass._module.Nat(), $Heap);
            ##n#0_0_2_1 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_2_1, Tclass._module.Nat(), $Heap);
            ##n#0_0_2_3 := m'#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_2_3, Tclass._module.Nat(), $Heap);
            ##m#0_0_2_2 := m'#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_2_2, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(m'#0_0, m'#0_0);
            ##n#0_0_2_2 := _module.__default.plus($LS($LZ), m'#0_0, m'#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_2_2, Tclass._module.Nat(), $Heap);
            ##m#0_0_2_3 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_2_3, Tclass._module.Nat(), $Heap);
            assume _module.__default.mult#canCall(_module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0);
            ##m#0_0_2_1 := _module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_2_1, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(n#0, 
              _module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0));
            ##m#0_0_2_0 := _module.__default.plus($LS($LZ), 
              n#0, 
              _module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_2_0, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(n#0, 
              _module.__default.plus($LS($LZ), 
                n#0, 
                _module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0)));
            assume _module.__default.plus#canCall(m'#0_0, m'#0_0)
               && _module.__default.mult#canCall(_module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0)
               && _module.__default.plus#canCall(n#0, 
                _module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0))
               && _module.__default.plus#canCall(n#0, 
                _module.__default.plus($LS($LZ), 
                  n#0, 
                  _module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), m'#0_0, m'#0_0), n#0)));
            // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            ##n#0_0_2_5 := m'#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_2_5, Tclass._module.Nat(), $Heap);
            ##m#0_0_2_4 := m'#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_2_4, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(m'#0_0, m'#0_0);
            ##n#0_0_2_4 := #_module.Nat.S(#_module.Nat.S(_module.__default.plus($LS($LZ), m'#0_0, m'#0_0)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_2_4, Tclass._module.Nat(), $Heap);
            ##m#0_0_2_5 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_2_5, Tclass._module.Nat(), $Heap);
            assume _module.__default.mult#canCall(#_module.Nat.S(#_module.Nat.S(_module.__default.plus($LS($LZ), m'#0_0, m'#0_0))), 
              n#0);
            assume _module.__default.plus#canCall(m'#0_0, m'#0_0)
               && _module.__default.mult#canCall(#_module.Nat.S(#_module.Nat.S(_module.__default.plus($LS($LZ), m'#0_0, m'#0_0))), 
                n#0);
            // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            assert {:id "id155"} {:subsumption 0} _module.Nat#Equal(_module.__default.plus($LS($LS($LZ)), 
                n#0, 
                _module.__default.plus($LS($LS($LZ)), 
                  n#0, 
                  _module.__default.mult($LS($LS($LZ)), _module.__default.plus($LS($LS($LZ)), m'#0_0, m'#0_0), n#0))), 
              _module.__default.mult($LS($LS($LZ)), 
                #_module.Nat.S(#_module.Nat.S(_module.__default.plus($LS($LS($LZ)), m'#0_0, m'#0_0))), 
                n#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            ##n#0_0_1_1 := m'#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_1_1, Tclass._module.Nat(), $Heap);
            ##m#0_0_1_0 := m'#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_1_0, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(m'#0_0, m'#0_0);
            ##n#0_0_1_0 := #_module.Nat.S(#_module.Nat.S(_module.__default.plus($LS($LZ), m'#0_0, m'#0_0)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_1_0, Tclass._module.Nat(), $Heap);
            ##m#0_0_1_1 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_1_1, Tclass._module.Nat(), $Heap);
            assume _module.__default.mult#canCall(#_module.Nat.S(#_module.Nat.S(_module.__default.plus($LS($LZ), m'#0_0, m'#0_0))), 
              n#0);
            assume _module.__default.plus#canCall(m'#0_0, m'#0_0)
               && _module.__default.mult#canCall(#_module.Nat.S(#_module.Nat.S(_module.__default.plus($LS($LZ), m'#0_0, m'#0_0))), 
                n#0);
            // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            ##n#0_0_1_3 := #_module.Nat.S(m'#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_1_3, Tclass._module.Nat(), $Heap);
            ##m#0_0_1_2 := m'#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_1_2, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(#_module.Nat.S(m'#0_0), m'#0_0);
            ##n#0_0_1_2 := #_module.Nat.S(_module.__default.plus($LS($LZ), #_module.Nat.S(m'#0_0), m'#0_0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_1_2, Tclass._module.Nat(), $Heap);
            ##m#0_0_1_3 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_1_3, Tclass._module.Nat(), $Heap);
            assume _module.__default.mult#canCall(#_module.Nat.S(_module.__default.plus($LS($LZ), #_module.Nat.S(m'#0_0), m'#0_0)), 
              n#0);
            assume _module.__default.plus#canCall(#_module.Nat.S(m'#0_0), m'#0_0)
               && _module.__default.mult#canCall(#_module.Nat.S(_module.__default.plus($LS($LZ), #_module.Nat.S(m'#0_0), m'#0_0)), 
                n#0);
            // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            assert {:id "id154"} {:subsumption 0} _module.Nat#Equal(_module.__default.mult($LS($LS($LZ)), 
                #_module.Nat.S(#_module.Nat.S(_module.__default.plus($LS($LS($LZ)), m'#0_0, m'#0_0))), 
                n#0), 
              _module.__default.mult($LS($LS($LZ)), 
                #_module.Nat.S(_module.__default.plus($LS($LS($LZ)), #_module.Nat.S(m'#0_0), m'#0_0)), 
                n#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            ##n#0_0_0_1 := #_module.Nat.S(m'#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_0_1, Tclass._module.Nat(), $Heap);
            ##m#0_0_0_0 := m'#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_0_0, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(#_module.Nat.S(m'#0_0), m'#0_0);
            ##n#0_0_0_0 := #_module.Nat.S(_module.__default.plus($LS($LZ), #_module.Nat.S(m'#0_0), m'#0_0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_0_0, Tclass._module.Nat(), $Heap);
            ##m#0_0_0_1 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_0_1, Tclass._module.Nat(), $Heap);
            assume _module.__default.mult#canCall(#_module.Nat.S(_module.__default.plus($LS($LZ), #_module.Nat.S(m'#0_0), m'#0_0)), 
              n#0);
            assume _module.__default.plus#canCall(#_module.Nat.S(m'#0_0), m'#0_0)
               && _module.__default.mult#canCall(#_module.Nat.S(_module.__default.plus($LS($LZ), #_module.Nat.S(m'#0_0), m'#0_0)), 
                n#0);
            // ----- Hint5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(290,13)
            // Begin Comprehension WF check
            havoc a#0_0_0_0;
            havoc b#0_0_0_0;
            if ($Is(a#0_0_0_0, Tclass._module.Nat())
               && $IsAlloc(a#0_0_0_0, Tclass._module.Nat(), $Heap)
               && 
              $Is(b#0_0_0_0, Tclass._module.Nat())
               && $IsAlloc(b#0_0_0_0, Tclass._module.Nat(), $Heap))
            {
                ##n#0_0_0_2 := a#0_0_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0_0_0_2, Tclass._module.Nat(), $Heap);
                ##m#0_0_0_2 := b#0_0_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##m#0_0_0_2, Tclass._module.Nat(), $Heap);
                assume _module.__default.plus#canCall(a#0_0_0_0, b#0_0_0_0);
                ##n#0_0_0_3 := a#0_0_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0_0_0_3, Tclass._module.Nat(), $Heap);
                ##m#0_0_0_3 := #_module.Nat.S(b#0_0_0_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##m#0_0_0_3, Tclass._module.Nat(), $Heap);
                assume _module.__default.plus#canCall(a#0_0_0_0, #_module.Nat.S(b#0_0_0_0));
            }

            // End Comprehension WF check
            assume (forall a#0_0_0_1: DatatypeType, b#0_0_0_1: DatatypeType :: 
              { _module.__default.plus($LS($LZ), a#0_0_0_1, #_module.Nat.S(b#0_0_0_1)) } 
                { #_module.Nat.S(_module.__default.plus($LS($LZ), a#0_0_0_1, b#0_0_0_1)) } 
              $Is(a#0_0_0_1, Tclass._module.Nat()) && $Is(b#0_0_0_1, Tclass._module.Nat())
                 ==> $IsA#_module.Nat(_module.__default.plus($LS($LZ), a#0_0_0_1, #_module.Nat.S(b#0_0_0_1)))
                   && 
                  _module.__default.plus#canCall(a#0_0_0_1, b#0_0_0_1)
                   && _module.__default.plus#canCall(a#0_0_0_1, #_module.Nat.S(b#0_0_0_1)));
            assert {:id "id148"} {:subsumption 0} (forall a#0_0_0_1: DatatypeType, b#0_0_0_1: DatatypeType :: 
              { _module.__default.plus($LS($LS($LZ)), a#0_0_0_1, #_module.Nat.S(b#0_0_0_1)) } 
                { #_module.Nat.S(_module.__default.plus($LS($LS($LZ)), a#0_0_0_1, b#0_0_0_1)) } 
              $Is(a#0_0_0_1, Tclass._module.Nat())
                   && $Is(b#0_0_0_1, Tclass._module.Nat())
                   && (forall a$ih#0_0_0_0#0_0_0_0: DatatypeType, b$ih#0_0_0_0#0_0_0_0: DatatypeType :: 
                    { _module.__default.plus($LS($LZ), a$ih#0_0_0_0#0_0_0_0, #_module.Nat.S(b$ih#0_0_0_0#0_0_0_0)) } 
                      { #_module.Nat.S(_module.__default.plus($LS($LZ), a$ih#0_0_0_0#0_0_0_0, b$ih#0_0_0_0#0_0_0_0)) } 
                    $Is(a$ih#0_0_0_0#0_0_0_0, Tclass._module.Nat())
                         && $Is(b$ih#0_0_0_0#0_0_0_0, Tclass._module.Nat())
                       ==> 
                      DtRank(a$ih#0_0_0_0#0_0_0_0) < DtRank(a#0_0_0_1)
                         || (DtRank(a$ih#0_0_0_0#0_0_0_0) == DtRank(a#0_0_0_1)
                           && DtRank(b$ih#0_0_0_0#0_0_0_0) < DtRank(b#0_0_0_1))
                       ==> _module.Nat#Equal(#_module.Nat.S(_module.__default.plus($LS($LZ), a$ih#0_0_0_0#0_0_0_0, b$ih#0_0_0_0#0_0_0_0)), 
                        _module.__default.plus($LS($LZ), a$ih#0_0_0_0#0_0_0_0, #_module.Nat.S(b$ih#0_0_0_0#0_0_0_0))))
                   && 
                  true
                   && #_module.Nat.O() == a#0_0_0_1
                   && #_module.Nat.O() == b#0_0_0_1
                 ==> _module.Nat#Equal(#_module.Nat.S(_module.__default.plus($LS($LS($LZ)), a#0_0_0_1, b#0_0_0_1)), 
                  _module.__default.plus($LS($LS($LZ)), a#0_0_0_1, #_module.Nat.S(b#0_0_0_1))));
            assert {:id "id149"} {:subsumption 0} (forall a#0_0_0_1: DatatypeType, b#0_0_0_1: DatatypeType :: 
              { _module.__default.plus($LS($LS($LZ)), a#0_0_0_1, #_module.Nat.S(b#0_0_0_1)) } 
                { #_module.Nat.S(_module.__default.plus($LS($LS($LZ)), a#0_0_0_1, b#0_0_0_1)) } 
              $Is(a#0_0_0_1, Tclass._module.Nat())
                   && $Is(b#0_0_0_1, Tclass._module.Nat())
                   && (forall a$ih#0_0_0_0#0_0_0_0: DatatypeType, b$ih#0_0_0_0#0_0_0_0: DatatypeType :: 
                    { _module.__default.plus($LS($LZ), a$ih#0_0_0_0#0_0_0_0, #_module.Nat.S(b$ih#0_0_0_0#0_0_0_0)) } 
                      { #_module.Nat.S(_module.__default.plus($LS($LZ), a$ih#0_0_0_0#0_0_0_0, b$ih#0_0_0_0#0_0_0_0)) } 
                    $Is(a$ih#0_0_0_0#0_0_0_0, Tclass._module.Nat())
                         && $Is(b$ih#0_0_0_0#0_0_0_0, Tclass._module.Nat())
                       ==> 
                      DtRank(a$ih#0_0_0_0#0_0_0_0) < DtRank(a#0_0_0_1)
                         || (DtRank(a$ih#0_0_0_0#0_0_0_0) == DtRank(a#0_0_0_1)
                           && DtRank(b$ih#0_0_0_0#0_0_0_0) < DtRank(b#0_0_0_1))
                       ==> _module.Nat#Equal(#_module.Nat.S(_module.__default.plus($LS($LZ), a$ih#0_0_0_0#0_0_0_0, b$ih#0_0_0_0#0_0_0_0)), 
                        _module.__default.plus($LS($LZ), a$ih#0_0_0_0#0_0_0_0, #_module.Nat.S(b$ih#0_0_0_0#0_0_0_0))))
                   && 
                  true
                   && (exists a#0_0_0_3#0#0: DatatypeType :: 
                    { #_module.Nat.S(a#0_0_0_3#0#0) } 
                    $Is(a#0_0_0_3#0#0, Tclass._module.Nat())
                       && #_module.Nat.S(a#0_0_0_3#0#0) == a#0_0_0_1)
                   && #_module.Nat.O() == b#0_0_0_1
                 ==> _module.Nat#Equal(#_module.Nat.S(_module.__default.plus($LS($LS($LZ)), a#0_0_0_1, b#0_0_0_1)), 
                  _module.__default.plus($LS($LS($LZ)), a#0_0_0_1, #_module.Nat.S(b#0_0_0_1))));
            assert {:id "id150"} {:subsumption 0} (forall a#0_0_0_1: DatatypeType, b#0_0_0_1: DatatypeType :: 
              { _module.__default.plus($LS($LS($LZ)), a#0_0_0_1, #_module.Nat.S(b#0_0_0_1)) } 
                { #_module.Nat.S(_module.__default.plus($LS($LS($LZ)), a#0_0_0_1, b#0_0_0_1)) } 
              $Is(a#0_0_0_1, Tclass._module.Nat())
                   && $Is(b#0_0_0_1, Tclass._module.Nat())
                   && (forall a$ih#0_0_0_0#0_0_0_0: DatatypeType, b$ih#0_0_0_0#0_0_0_0: DatatypeType :: 
                    { _module.__default.plus($LS($LZ), a$ih#0_0_0_0#0_0_0_0, #_module.Nat.S(b$ih#0_0_0_0#0_0_0_0)) } 
                      { #_module.Nat.S(_module.__default.plus($LS($LZ), a$ih#0_0_0_0#0_0_0_0, b$ih#0_0_0_0#0_0_0_0)) } 
                    $Is(a$ih#0_0_0_0#0_0_0_0, Tclass._module.Nat())
                         && $Is(b$ih#0_0_0_0#0_0_0_0, Tclass._module.Nat())
                       ==> 
                      DtRank(a$ih#0_0_0_0#0_0_0_0) < DtRank(a#0_0_0_1)
                         || (DtRank(a$ih#0_0_0_0#0_0_0_0) == DtRank(a#0_0_0_1)
                           && DtRank(b$ih#0_0_0_0#0_0_0_0) < DtRank(b#0_0_0_1))
                       ==> _module.Nat#Equal(#_module.Nat.S(_module.__default.plus($LS($LZ), a$ih#0_0_0_0#0_0_0_0, b$ih#0_0_0_0#0_0_0_0)), 
                        _module.__default.plus($LS($LZ), a$ih#0_0_0_0#0_0_0_0, #_module.Nat.S(b$ih#0_0_0_0#0_0_0_0))))
                   && 
                  true
                   && #_module.Nat.O() == a#0_0_0_1
                   && (exists a#0_0_0_5#0#0: DatatypeType :: 
                    { #_module.Nat.S(a#0_0_0_5#0#0) } 
                    $Is(a#0_0_0_5#0#0, Tclass._module.Nat())
                       && #_module.Nat.S(a#0_0_0_5#0#0) == b#0_0_0_1)
                 ==> _module.Nat#Equal(#_module.Nat.S(_module.__default.plus($LS($LS($LZ)), a#0_0_0_1, b#0_0_0_1)), 
                  _module.__default.plus($LS($LS($LZ)), a#0_0_0_1, #_module.Nat.S(b#0_0_0_1))));
            assert {:id "id151"} {:subsumption 0} (forall a#0_0_0_1: DatatypeType, b#0_0_0_1: DatatypeType :: 
              { _module.__default.plus($LS($LS($LZ)), a#0_0_0_1, #_module.Nat.S(b#0_0_0_1)) } 
                { #_module.Nat.S(_module.__default.plus($LS($LS($LZ)), a#0_0_0_1, b#0_0_0_1)) } 
              $Is(a#0_0_0_1, Tclass._module.Nat())
                   && $Is(b#0_0_0_1, Tclass._module.Nat())
                   && (forall a$ih#0_0_0_0#0_0_0_0: DatatypeType, b$ih#0_0_0_0#0_0_0_0: DatatypeType :: 
                    { _module.__default.plus($LS($LZ), a$ih#0_0_0_0#0_0_0_0, #_module.Nat.S(b$ih#0_0_0_0#0_0_0_0)) } 
                      { #_module.Nat.S(_module.__default.plus($LS($LZ), a$ih#0_0_0_0#0_0_0_0, b$ih#0_0_0_0#0_0_0_0)) } 
                    $Is(a$ih#0_0_0_0#0_0_0_0, Tclass._module.Nat())
                         && $Is(b$ih#0_0_0_0#0_0_0_0, Tclass._module.Nat())
                       ==> 
                      DtRank(a$ih#0_0_0_0#0_0_0_0) < DtRank(a#0_0_0_1)
                         || (DtRank(a$ih#0_0_0_0#0_0_0_0) == DtRank(a#0_0_0_1)
                           && DtRank(b$ih#0_0_0_0#0_0_0_0) < DtRank(b#0_0_0_1))
                       ==> _module.Nat#Equal(#_module.Nat.S(_module.__default.plus($LS($LZ), a$ih#0_0_0_0#0_0_0_0, b$ih#0_0_0_0#0_0_0_0)), 
                        _module.__default.plus($LS($LZ), a$ih#0_0_0_0#0_0_0_0, #_module.Nat.S(b$ih#0_0_0_0#0_0_0_0))))
                   && 
                  true
                   && (exists a#0_0_0_3#0#0: DatatypeType :: 
                    { #_module.Nat.S(a#0_0_0_3#0#0) } 
                    $Is(a#0_0_0_3#0#0, Tclass._module.Nat())
                       && #_module.Nat.S(a#0_0_0_3#0#0) == a#0_0_0_1)
                   && (exists a#0_0_0_5#0#0: DatatypeType :: 
                    { #_module.Nat.S(a#0_0_0_5#0#0) } 
                    $Is(a#0_0_0_5#0#0, Tclass._module.Nat())
                       && #_module.Nat.S(a#0_0_0_5#0#0) == b#0_0_0_1)
                 ==> _module.Nat#Equal(#_module.Nat.S(_module.__default.plus($LS($LS($LZ)), a#0_0_0_1, b#0_0_0_1)), 
                  _module.__default.plus($LS($LS($LZ)), a#0_0_0_1, #_module.Nat.S(b#0_0_0_1))));
            assume {:id "id152"} (forall a#0_0_0_1: DatatypeType, b#0_0_0_1: DatatypeType :: 
              { _module.__default.plus($LS($LZ), a#0_0_0_1, #_module.Nat.S(b#0_0_0_1)) } 
                { #_module.Nat.S(_module.__default.plus($LS($LZ), a#0_0_0_1, b#0_0_0_1)) } 
              $Is(a#0_0_0_1, Tclass._module.Nat()) && $Is(b#0_0_0_1, Tclass._module.Nat())
                 ==> _module.Nat#Equal(#_module.Nat.S(_module.__default.plus($LS($LZ), a#0_0_0_1, b#0_0_0_1)), 
                  _module.__default.plus($LS($LZ), a#0_0_0_1, #_module.Nat.S(b#0_0_0_1))));
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            ##n#0_0_0_5 := #_module.Nat.S(m'#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_0_5, Tclass._module.Nat(), $Heap);
            ##m#0_0_0_4 := #_module.Nat.S(m'#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_0_4, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(#_module.Nat.S(m'#0_0), #_module.Nat.S(m'#0_0));
            ##n#0_0_0_4 := _module.__default.plus($LS($LZ), #_module.Nat.S(m'#0_0), #_module.Nat.S(m'#0_0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_0_4, Tclass._module.Nat(), $Heap);
            ##m#0_0_0_5 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_0_5, Tclass._module.Nat(), $Heap);
            assume _module.__default.mult#canCall(_module.__default.plus($LS($LZ), #_module.Nat.S(m'#0_0), #_module.Nat.S(m'#0_0)), 
              n#0);
            assume _module.__default.plus#canCall(#_module.Nat.S(m'#0_0), #_module.Nat.S(m'#0_0))
               && _module.__default.mult#canCall(_module.__default.plus($LS($LZ), #_module.Nat.S(m'#0_0), #_module.Nat.S(m'#0_0)), 
                n#0);
            // ----- assert line5 == line6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(278,7)
            assert {:id "id153"} {:subsumption 0} _module.Nat#Equal(_module.__default.mult($LS($LS($LZ)), 
                #_module.Nat.S(_module.__default.plus($LS($LS($LZ)), #_module.Nat.S(m'#0_0), m'#0_0)), 
                n#0), 
              _module.__default.mult($LS($LS($LZ)), 
                _module.__default.plus($LS($LS($LZ)), #_module.Nat.S(m'#0_0), #_module.Nat.S(m'#0_0)), 
                n#0));
            assume false;
        }

        assume {:id "id160"} _module.Nat#Equal(_module.__default.mult($LS($LZ), m#0, _module.__default.plus($LS($LZ), n#0, n#0)), 
          _module.__default.mult($LS($LZ), 
            _module.__default.plus($LS($LZ), #_module.Nat.S(m'#0_0), #_module.Nat.S(m'#0_0)), 
            n#0));
    }
    else
    {
        assume false;
    }
}



// function declaration for _module._default.beq_nat
function _module.__default.beq__nat($ly: LayerType, n#0: DatatypeType, m#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.beq__nat
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
    { _module.__default.beq__nat($ly, n#0, m#0) } 
    _module.__default.beq__nat#canCall(n#0, m#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat()))
       ==> $Is(_module.__default.beq__nat($ly, n#0, m#0), Tclass._module.Bool()));
// definition axiom for _module.__default.beq__nat (revealed)
axiom {:id "id161"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
    { _module.__default.beq__nat($LS($ly), n#0, m#0) } 
    _module.__default.beq__nat#canCall(n#0, m#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat()))
       ==> (!_module.Nat.O_q(n#0)
           ==> (var n'#1 := _module.Nat._h0(n#0); 
            !_module.Nat.O_q(m#0)
               ==> (var m'#3 := _module.Nat._h0(m#0); 
                _module.__default.beq__nat#canCall(n'#1, m'#3))))
         && _module.__default.beq__nat($LS($ly), n#0, m#0)
           == (if _module.Nat.O_q(n#0)
             then (if _module.Nat.O_q(m#0)
               then #_module.Bool.True()
               else (var m'#0 := _module.Nat._h0(m#0); Lit(#_module.Bool.False())))
             else (var n'#0 := _module.Nat._h0(n#0); 
              (if _module.Nat.O_q(m#0)
                 then #_module.Bool.False()
                 else (var m'#1 := _module.Nat._h0(m#0); _module.__default.beq__nat($ly, n'#0, m'#1))))));
// definition axiom for _module.__default.beq__nat for all literals (revealed)
axiom {:id "id162"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
    {:weight 3} { _module.__default.beq__nat($LS($ly), Lit(n#0), Lit(m#0)) } 
    _module.__default.beq__nat#canCall(Lit(n#0), Lit(m#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat()))
       ==> (!Lit(_module.Nat.O_q(Lit(n#0)))
           ==> (var n'#3 := Lit(_module.Nat._h0(Lit(n#0))); 
            !Lit(_module.Nat.O_q(Lit(m#0)))
               ==> (var m'#7 := Lit(_module.Nat._h0(Lit(m#0))); 
                _module.__default.beq__nat#canCall(n'#3, m'#7))))
         && _module.__default.beq__nat($LS($ly), Lit(n#0), Lit(m#0))
           == (if _module.Nat.O_q(Lit(n#0))
             then (if _module.Nat.O_q(Lit(m#0))
               then #_module.Bool.True()
               else (var m'#4 := Lit(_module.Nat._h0(Lit(m#0))); Lit(#_module.Bool.False())))
             else (var n'#2 := Lit(_module.Nat._h0(Lit(n#0))); 
              (if _module.Nat.O_q(Lit(m#0))
                 then #_module.Bool.False()
                 else (var m'#5 := Lit(_module.Nat._h0(Lit(m#0))); 
                  Lit(_module.__default.beq__nat($LS($ly), n'#2, m'#5)))))));
}

function _module.__default.beq__nat#canCall(n#0: DatatypeType, m#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { _module.__default.beq__nat($LS($ly), n#0, m#0) } 
  _module.__default.beq__nat($LS($ly), n#0, m#0)
     == _module.__default.beq__nat($ly, n#0, m#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { _module.__default.beq__nat(AsFuelBottom($ly), n#0, m#0) } 
  _module.__default.beq__nat($ly, n#0, m#0)
     == _module.__default.beq__nat($LZ, n#0, m#0));

function _module.__default.beq__nat#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.beq__nat
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { _module.__default.beq__nat#requires($ly, n#0, m#0) } 
  $Is(n#0, Tclass._module.Nat()) && $Is(m#0, Tclass._module.Nat())
     ==> _module.__default.beq__nat#requires($ly, n#0, m#0) == true);

procedure {:verboseName "beq_nat (well-formedness)"} CheckWellformed$$_module.__default.beq__nat(n#0: DatatypeType where $Is(n#0, Tclass._module.Nat()), 
    m#0: DatatypeType where $Is(m#0, Tclass._module.Nat()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "beq_nat (well-formedness)"} CheckWellformed$$_module.__default.beq__nat(n#0: DatatypeType, m#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var n'#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var _mcc#2#0: DatatypeType;
  var m'#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##n#0: DatatypeType;
  var ##m#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var m'#Z#1: DatatypeType;
  var let#2#0#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.beq__nat($LS($LZ), n#0, m#0), Tclass._module.Bool());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == #_module.Nat.O())
        {
            if (m#0 == #_module.Nat.O())
            {
                assume {:id "id173"} _module.__default.beq__nat($LS($LZ), n#0, m#0) == Lit(#_module.Bool.True());
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.beq__nat($LS($LZ), n#0, m#0), Tclass._module.Bool());
                return;
            }
            else if (m#0 == #_module.Nat.S(_mcc#1#0))
            {
                assume $Is(_mcc#1#0, Tclass._module.Nat());
                havoc m'#Z#1;
                assume {:id "id170"} let#2#0#0 == _mcc#1#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#2#0#0, Tclass._module.Nat());
                assume {:id "id171"} m'#Z#1 == let#2#0#0;
                assume {:id "id172"} _module.__default.beq__nat($LS($LZ), n#0, m#0) == Lit(#_module.Bool.False());
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.beq__nat($LS($LZ), n#0, m#0), Tclass._module.Bool());
                return;
            }
            else
            {
                assume false;
            }
        }
        else if (n#0 == #_module.Nat.S(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            havoc n'#Z#0;
            assume {:id "id163"} let#0#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Nat());
            assume {:id "id164"} n'#Z#0 == let#0#0#0;
            if (m#0 == #_module.Nat.O())
            {
                assume {:id "id169"} _module.__default.beq__nat($LS($LZ), n#0, m#0) == Lit(#_module.Bool.False());
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.beq__nat($LS($LZ), n#0, m#0), Tclass._module.Bool());
                return;
            }
            else if (m#0 == #_module.Nat.S(_mcc#2#0))
            {
                assume $Is(_mcc#2#0, Tclass._module.Nat());
                havoc m'#Z#0;
                assume {:id "id165"} let#1#0#0 == _mcc#2#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#1#0#0, Tclass._module.Nat());
                assume {:id "id166"} m'#Z#0 == let#1#0#0;
                ##n#0 := n'#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
                ##m#0 := m'#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##m#0, Tclass._module.Nat(), $Heap);
                assert {:id "id167"} DtRank(##n#0) < DtRank(n#0)
                   || (DtRank(##n#0) == DtRank(n#0) && DtRank(##m#0) < DtRank(m#0));
                assume _module.__default.beq__nat#canCall(n'#Z#0, m'#Z#0);
                assume {:id "id168"} _module.__default.beq__nat($LS($LZ), n#0, m#0)
                   == _module.__default.beq__nat($LS($LZ), n'#Z#0, m'#Z#0);
                assume _module.__default.beq__nat#canCall(n'#Z#0, m'#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.beq__nat($LS($LZ), n#0, m#0), Tclass._module.Bool());
                return;
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

        assume false;
    }
}



// function declaration for _module._default.ble_nat
function _module.__default.ble__nat($ly: LayerType, n#0: DatatypeType, m#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.ble__nat
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
    { _module.__default.ble__nat($ly, n#0, m#0) } 
    _module.__default.ble__nat#canCall(n#0, m#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat()))
       ==> $Is(_module.__default.ble__nat($ly, n#0, m#0), Tclass._module.Bool()));
// definition axiom for _module.__default.ble__nat (revealed)
axiom {:id "id174"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
    { _module.__default.ble__nat($LS($ly), n#0, m#0) } 
    _module.__default.ble__nat#canCall(n#0, m#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat()))
       ==> (!_module.Nat.O_q(n#0)
           ==> (var n'#1 := _module.Nat._h0(n#0); 
            !_module.Nat.O_q(m#0)
               ==> (var m'#1 := _module.Nat._h0(m#0); 
                _module.__default.ble__nat#canCall(n'#1, m'#1))))
         && _module.__default.ble__nat($LS($ly), n#0, m#0)
           == (if _module.Nat.O_q(n#0)
             then #_module.Bool.True()
             else (var n'#0 := _module.Nat._h0(n#0); 
              (if _module.Nat.O_q(m#0)
                 then #_module.Bool.False()
                 else (var m'#0 := _module.Nat._h0(m#0); _module.__default.ble__nat($ly, n'#0, m'#0))))));
// definition axiom for _module.__default.ble__nat for all literals (revealed)
axiom {:id "id175"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
    {:weight 3} { _module.__default.ble__nat($LS($ly), Lit(n#0), Lit(m#0)) } 
    _module.__default.ble__nat#canCall(Lit(n#0), Lit(m#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat()))
       ==> (!Lit(_module.Nat.O_q(Lit(n#0)))
           ==> (var n'#3 := Lit(_module.Nat._h0(Lit(n#0))); 
            !Lit(_module.Nat.O_q(Lit(m#0)))
               ==> (var m'#3 := Lit(_module.Nat._h0(Lit(m#0))); 
                _module.__default.ble__nat#canCall(n'#3, m'#3))))
         && _module.__default.ble__nat($LS($ly), Lit(n#0), Lit(m#0))
           == (if _module.Nat.O_q(Lit(n#0))
             then #_module.Bool.True()
             else (var n'#2 := Lit(_module.Nat._h0(Lit(n#0))); 
              (if _module.Nat.O_q(Lit(m#0))
                 then #_module.Bool.False()
                 else (var m'#2 := Lit(_module.Nat._h0(Lit(m#0))); 
                  Lit(_module.__default.ble__nat($LS($ly), n'#2, m'#2)))))));
}

function _module.__default.ble__nat#canCall(n#0: DatatypeType, m#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { _module.__default.ble__nat($LS($ly), n#0, m#0) } 
  _module.__default.ble__nat($LS($ly), n#0, m#0)
     == _module.__default.ble__nat($ly, n#0, m#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { _module.__default.ble__nat(AsFuelBottom($ly), n#0, m#0) } 
  _module.__default.ble__nat($ly, n#0, m#0)
     == _module.__default.ble__nat($LZ, n#0, m#0));

function _module.__default.ble__nat#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.ble__nat
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { _module.__default.ble__nat#requires($ly, n#0, m#0) } 
  $Is(n#0, Tclass._module.Nat()) && $Is(m#0, Tclass._module.Nat())
     ==> _module.__default.ble__nat#requires($ly, n#0, m#0) == true);

procedure {:verboseName "ble_nat (well-formedness)"} CheckWellformed$$_module.__default.ble__nat(n#0: DatatypeType where $Is(n#0, Tclass._module.Nat()), 
    m#0: DatatypeType where $Is(m#0, Tclass._module.Nat()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ble_nat (well-formedness)"} CheckWellformed$$_module.__default.ble__nat(n#0: DatatypeType, m#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var n'#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var m'#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##n#0: DatatypeType;
  var ##m#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.ble__nat($LS($LZ), n#0, m#0), Tclass._module.Bool());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == #_module.Nat.O())
        {
            assume {:id "id183"} _module.__default.ble__nat($LS($LZ), n#0, m#0) == Lit(#_module.Bool.True());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.ble__nat($LS($LZ), n#0, m#0), Tclass._module.Bool());
            return;
        }
        else if (n#0 == #_module.Nat.S(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            havoc n'#Z#0;
            assume {:id "id176"} let#0#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Nat());
            assume {:id "id177"} n'#Z#0 == let#0#0#0;
            if (m#0 == #_module.Nat.O())
            {
                assume {:id "id182"} _module.__default.ble__nat($LS($LZ), n#0, m#0) == Lit(#_module.Bool.False());
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.ble__nat($LS($LZ), n#0, m#0), Tclass._module.Bool());
                return;
            }
            else if (m#0 == #_module.Nat.S(_mcc#1#0))
            {
                assume $Is(_mcc#1#0, Tclass._module.Nat());
                havoc m'#Z#0;
                assume {:id "id178"} let#1#0#0 == _mcc#1#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#1#0#0, Tclass._module.Nat());
                assume {:id "id179"} m'#Z#0 == let#1#0#0;
                ##n#0 := n'#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
                ##m#0 := m'#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##m#0, Tclass._module.Nat(), $Heap);
                assert {:id "id180"} DtRank(##n#0) < DtRank(n#0)
                   || (DtRank(##n#0) == DtRank(n#0) && DtRank(##m#0) < DtRank(m#0));
                assume _module.__default.ble__nat#canCall(n'#Z#0, m'#Z#0);
                assume {:id "id181"} _module.__default.ble__nat($LS($LZ), n#0, m#0)
                   == _module.__default.ble__nat($LS($LZ), n'#Z#0, m'#Z#0);
                assume _module.__default.ble__nat#canCall(n'#Z#0, m'#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.ble__nat($LS($LZ), n#0, m#0), Tclass._module.Bool());
                return;
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

        assume false;
    }
}



procedure {:verboseName "test_ble_nat1 (well-formedness)"} CheckWellFormed$$_module.__default.test__ble__nat1();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test_ble_nat1 (call)"} Call$$_module.__default.test__ble__nat1();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test_ble_nat1 (correctness)"} Impl$$_module.__default.test__ble__nat1() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test_ble_nat1 (correctness)"} Impl$$_module.__default.test__ble__nat1() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n2#0: DatatypeType
     where $Is(n2#0, Tclass._module.Nat()) && $IsAlloc(n2#0, Tclass._module.Nat(), $Heap);
  var n4#0: DatatypeType
     where $Is(n4#0, Tclass._module.Nat()) && $IsAlloc(n4#0, Tclass._module.Nat(), $Heap);
  var ##n#0: DatatypeType;
  var ##m#0: DatatypeType;
  var ##n#1: DatatypeType;
  var ##m#1: DatatypeType;
  var ##n#2: DatatypeType;
  var ##m#2: DatatypeType;

    // AddMethodImpl: test_ble_nat1, Impl$$_module.__default.test__ble__nat1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(322,10)
    assume true;
    assume true;
    n2#0 := Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O())))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(323,10)
    assume true;
    assume true;
    n4#0 := #_module.Nat.S(#_module.Nat.S(n2#0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(324,3)
    ##n#0 := n2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
    ##m#0 := n2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#0, Tclass._module.Nat(), $Heap);
    assume _module.__default.ble__nat#canCall(n2#0, n2#0);
    assume $IsA#_module.Bool(_module.__default.ble__nat($LS($LZ), n2#0, n2#0))
       && _module.__default.ble__nat#canCall(n2#0, n2#0);
    assert {:id "id186"} {:subsumption 0} _module.Bool#Equal(_module.__default.ble__nat($LS($LS($LZ)), n2#0, n2#0), #_module.Bool.True());
    assume {:id "id187"} _module.Bool#Equal(_module.__default.ble__nat($LS($LZ), n2#0, n2#0), #_module.Bool.True());
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(325,3)
    ##n#1 := n2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._module.Nat(), $Heap);
    ##m#1 := n4#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#1, Tclass._module.Nat(), $Heap);
    assume _module.__default.ble__nat#canCall(n2#0, n4#0);
    assume $IsA#_module.Bool(_module.__default.ble__nat($LS($LZ), n2#0, n4#0))
       && _module.__default.ble__nat#canCall(n2#0, n4#0);
    assert {:id "id188"} {:subsumption 0} _module.Bool#Equal(_module.__default.ble__nat($LS($LS($LZ)), n2#0, n4#0), #_module.Bool.True());
    assume {:id "id189"} _module.Bool#Equal(_module.__default.ble__nat($LS($LZ), n2#0, n4#0), #_module.Bool.True());
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(326,3)
    ##n#2 := n4#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#2, Tclass._module.Nat(), $Heap);
    ##m#2 := n2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#2, Tclass._module.Nat(), $Heap);
    assume _module.__default.ble__nat#canCall(n4#0, n2#0);
    assume $IsA#_module.Bool(_module.__default.ble__nat($LS($LZ), n4#0, n2#0))
       && _module.__default.ble__nat#canCall(n4#0, n2#0);
    assert {:id "id190"} {:subsumption 0} _module.Bool#Equal(_module.__default.ble__nat($LS($LS($LZ)), n4#0, n2#0), #_module.Bool.False());
    assume {:id "id191"} _module.Bool#Equal(_module.__default.ble__nat($LS($LZ), n4#0, n2#0), #_module.Bool.False());
}



// function declaration for _module._default.blt_nat
function _module.__default.blt__nat(n#0: DatatypeType, m#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.blt__nat
axiom 2 <= $FunctionContextHeight
   ==> (forall n#0: DatatypeType, m#0: DatatypeType :: 
    { _module.__default.blt__nat(n#0, m#0) } 
    _module.__default.blt__nat#canCall(n#0, m#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat()))
       ==> $Is(_module.__default.blt__nat(n#0, m#0), Tclass._module.Bool()));
// definition axiom for _module.__default.blt__nat (revealed)
axiom {:id "id192"} 2 <= $FunctionContextHeight
   ==> (forall n#0: DatatypeType, m#0: DatatypeType :: 
    { _module.__default.blt__nat(n#0, m#0) } 
    _module.__default.blt__nat#canCall(n#0, m#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat()))
       ==> _module.__default.ble__nat#canCall(n#0, m#0)
         && 
        _module.__default.beq__nat#canCall(n#0, m#0)
         && _module.__default.negb#canCall(_module.__default.beq__nat($LS($LZ), n#0, m#0))
         && _module.__default.andb#canCall(_module.__default.ble__nat($LS($LZ), n#0, m#0), 
          _module.__default.negb(_module.__default.beq__nat($LS($LZ), n#0, m#0)))
         && _module.__default.blt__nat(n#0, m#0)
           == _module.__default.andb(_module.__default.ble__nat($LS($LZ), n#0, m#0), 
            _module.__default.negb(_module.__default.beq__nat($LS($LZ), n#0, m#0))));
// definition axiom for _module.__default.blt__nat for all literals (revealed)
axiom {:id "id193"} 2 <= $FunctionContextHeight
   ==> (forall n#0: DatatypeType, m#0: DatatypeType :: 
    {:weight 3} { _module.__default.blt__nat(Lit(n#0), Lit(m#0)) } 
    _module.__default.blt__nat#canCall(Lit(n#0), Lit(m#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat()))
       ==> _module.__default.ble__nat#canCall(Lit(n#0), Lit(m#0))
         && 
        _module.__default.beq__nat#canCall(Lit(n#0), Lit(m#0))
         && _module.__default.negb#canCall(Lit(_module.__default.beq__nat($LS($LZ), Lit(n#0), Lit(m#0))))
         && _module.__default.andb#canCall(Lit(_module.__default.ble__nat($LS($LZ), Lit(n#0), Lit(m#0))), 
          Lit(_module.__default.negb(Lit(_module.__default.beq__nat($LS($LZ), Lit(n#0), Lit(m#0))))))
         && _module.__default.blt__nat(Lit(n#0), Lit(m#0))
           == Lit(_module.__default.andb(Lit(_module.__default.ble__nat($LS($LZ), Lit(n#0), Lit(m#0))), 
              Lit(_module.__default.negb(Lit(_module.__default.beq__nat($LS($LZ), Lit(n#0), Lit(m#0))))))));
}

function _module.__default.blt__nat#canCall(n#0: DatatypeType, m#0: DatatypeType) : bool;

function _module.__default.blt__nat#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.blt__nat
axiom (forall n#0: DatatypeType, m#0: DatatypeType :: 
  { _module.__default.blt__nat#requires(n#0, m#0) } 
  $Is(n#0, Tclass._module.Nat()) && $Is(m#0, Tclass._module.Nat())
     ==> _module.__default.blt__nat#requires(n#0, m#0) == true);

procedure {:verboseName "blt_nat (well-formedness)"} CheckWellformed$$_module.__default.blt__nat(n#0: DatatypeType where $Is(n#0, Tclass._module.Nat()), 
    m#0: DatatypeType where $Is(m#0, Tclass._module.Nat()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test_blt_nat1 (well-formedness)"} CheckWellFormed$$_module.__default.test__blt__nat1();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test_blt_nat1 (call)"} Call$$_module.__default.test__blt__nat1();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test_blt_nat1 (correctness)"} Impl$$_module.__default.test__blt__nat1() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test_blt_nat1 (correctness)"} Impl$$_module.__default.test__blt__nat1() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n2#0: DatatypeType
     where $Is(n2#0, Tclass._module.Nat()) && $IsAlloc(n2#0, Tclass._module.Nat(), $Heap);
  var n4#0: DatatypeType
     where $Is(n4#0, Tclass._module.Nat()) && $IsAlloc(n4#0, Tclass._module.Nat(), $Heap);
  var ##n#0: DatatypeType;
  var ##m#0: DatatypeType;
  var ##n#1: DatatypeType;
  var ##m#1: DatatypeType;
  var ##n#2: DatatypeType;
  var ##m#2: DatatypeType;

    // AddMethodImpl: test_blt_nat1, Impl$$_module.__default.test__blt__nat1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(338,10)
    assume true;
    assume true;
    n2#0 := Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O())))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(339,10)
    assume true;
    assume true;
    n4#0 := #_module.Nat.S(#_module.Nat.S(n2#0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(340,3)
    ##n#0 := n2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
    ##m#0 := n2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#0, Tclass._module.Nat(), $Heap);
    assume _module.__default.blt__nat#canCall(n2#0, n2#0);
    assume $IsA#_module.Bool(_module.__default.blt__nat(n2#0, n2#0))
       && _module.__default.blt__nat#canCall(n2#0, n2#0);
    assert {:id "id197"} _module.Bool#Equal(_module.__default.blt__nat(n2#0, n2#0), #_module.Bool.False());
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(341,3)
    ##n#1 := n2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._module.Nat(), $Heap);
    ##m#1 := n4#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#1, Tclass._module.Nat(), $Heap);
    assume _module.__default.blt__nat#canCall(n2#0, n4#0);
    assume $IsA#_module.Bool(_module.__default.blt__nat(n2#0, n4#0))
       && _module.__default.blt__nat#canCall(n2#0, n4#0);
    assert {:id "id198"} _module.Bool#Equal(_module.__default.blt__nat(n2#0, n4#0), #_module.Bool.True());
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(342,3)
    ##n#2 := n4#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#2, Tclass._module.Nat(), $Heap);
    ##m#2 := n2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#2, Tclass._module.Nat(), $Heap);
    assume _module.__default.blt__nat#canCall(n4#0, n2#0);
    assume $IsA#_module.Bool(_module.__default.blt__nat(n4#0, n2#0))
       && _module.__default.blt__nat#canCall(n4#0, n2#0);
    assert {:id "id199"} _module.Bool#Equal(_module.__default.blt__nat(n4#0, n2#0), #_module.Bool.False());
}



procedure {:verboseName "plus_O_n (well-formedness)"} CheckWellFormed$$_module.__default.plus__O__n(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "plus_O_n (call)"} Call$$_module.__default.plus__O__n(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Nat(_module.__default.plus($LS($LZ), Lit(#_module.Nat.O()), n#0))
     && $IsA#_module.Nat(n#0)
     && _module.__default.plus#canCall(Lit(#_module.Nat.O()), n#0);
  ensures {:id "id201"} _module.Nat#Equal(_module.__default.plus($LS($LS($LZ)), Lit(#_module.Nat.O()), n#0), n#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "plus_O_n (correctness)"} Impl$$_module.__default.plus__O__n(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Nat(_module.__default.plus($LS($LZ), Lit(#_module.Nat.O()), n#0))
     && $IsA#_module.Nat(n#0)
     && _module.__default.plus#canCall(Lit(#_module.Nat.O()), n#0);
  ensures {:id "id202"} _module.Nat#Equal(_module.__default.plus($LS($LS($LZ)), Lit(#_module.Nat.O()), n#0), n#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "plus_O_n (correctness)"} Impl$$_module.__default.plus__O__n(n#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: plus_O_n, Impl$$_module.__default.plus__O__n
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Nat(n#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: DatatypeType :: 
      { _module.__default.plus($LS($LZ), Lit(#_module.Nat.O()), $ih#n0#0) } 
      $Is($ih#n0#0, Tclass._module.Nat())
           && Lit(true)
           && DtRank($ih#n0#0) < DtRank(n#0)
         ==> _module.Nat#Equal(_module.__default.plus($LS($LZ), Lit(#_module.Nat.O()), $ih#n0#0), $ih#n0#0));
    $_reverifyPost := false;
}



procedure {:verboseName "plus_1_l (well-formedness)"} CheckWellFormed$$_module.__default.plus__1__l(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "plus_1_l (call)"} Call$$_module.__default.plus__1__l(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Nat(_module.__default.plus($LS($LZ), Lit(#_module.Nat.S(Lit(#_module.Nat.O()))), n#0))
     && _module.__default.plus#canCall(Lit(#_module.Nat.S(Lit(#_module.Nat.O()))), n#0);
  ensures {:id "id204"} _module.Nat#Equal(_module.__default.plus($LS($LS($LZ)), Lit(#_module.Nat.S(Lit(#_module.Nat.O()))), n#0), 
    #_module.Nat.S(n#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "plus_1_l (correctness)"} Impl$$_module.__default.plus__1__l(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Nat(_module.__default.plus($LS($LZ), Lit(#_module.Nat.S(Lit(#_module.Nat.O()))), n#0))
     && _module.__default.plus#canCall(Lit(#_module.Nat.S(Lit(#_module.Nat.O()))), n#0);
  ensures {:id "id205"} _module.Nat#Equal(_module.__default.plus($LS($LS($LZ)), Lit(#_module.Nat.S(Lit(#_module.Nat.O()))), n#0), 
    #_module.Nat.S(n#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "plus_1_l (correctness)"} Impl$$_module.__default.plus__1__l(n#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: plus_1_l, Impl$$_module.__default.plus__1__l
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Nat(n#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: DatatypeType :: 
      { #_module.Nat.S($ih#n0#0) } 
        { _module.__default.plus($LS($LZ), Lit(#_module.Nat.S(Lit(#_module.Nat.O()))), $ih#n0#0) } 
      $Is($ih#n0#0, Tclass._module.Nat())
           && Lit(true)
           && DtRank($ih#n0#0) < DtRank(n#0)
         ==> _module.Nat#Equal(_module.__default.plus($LS($LZ), Lit(#_module.Nat.S(Lit(#_module.Nat.O()))), $ih#n0#0), 
          #_module.Nat.S($ih#n0#0)));
    $_reverifyPost := false;
}



procedure {:verboseName "mult_0_l (well-formedness)"} CheckWellFormed$$_module.__default.mult__0__l(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "mult_0_l (call)"} Call$$_module.__default.mult__0__l(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Nat(_module.__default.mult($LS($LZ), Lit(#_module.Nat.O()), n#0))
     && _module.__default.mult#canCall(Lit(#_module.Nat.O()), n#0);
  ensures {:id "id207"} _module.Nat#Equal(_module.__default.mult($LS($LS($LZ)), Lit(#_module.Nat.O()), n#0), 
    #_module.Nat.O());
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "mult_0_l (correctness)"} Impl$$_module.__default.mult__0__l(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Nat(_module.__default.mult($LS($LZ), Lit(#_module.Nat.O()), n#0))
     && _module.__default.mult#canCall(Lit(#_module.Nat.O()), n#0);
  ensures {:id "id208"} _module.Nat#Equal(_module.__default.mult($LS($LS($LZ)), Lit(#_module.Nat.O()), n#0), 
    #_module.Nat.O());
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "mult_0_l (correctness)"} Impl$$_module.__default.mult__0__l(n#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: mult_0_l, Impl$$_module.__default.mult__0__l
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Nat(n#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: DatatypeType :: 
      { _module.__default.mult($LS($LZ), Lit(#_module.Nat.O()), $ih#n0#0) } 
      $Is($ih#n0#0, Tclass._module.Nat())
           && Lit(true)
           && DtRank($ih#n0#0) < DtRank(n#0)
         ==> _module.Nat#Equal(_module.__default.mult($LS($LZ), Lit(#_module.Nat.O()), $ih#n0#0), 
          #_module.Nat.O()));
    $_reverifyPost := false;
}



procedure {:verboseName "plus_id_example (well-formedness)"} CheckWellFormed$$_module.__default.plus__id__example(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0), 
    m#0: DatatypeType
       where $Is(m#0, Tclass._module.Nat())
         && $IsAlloc(m#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(m#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "plus_id_example (call)"} Call$$_module.__default.plus__id__example(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0), 
    m#0: DatatypeType
       where $Is(m#0, Tclass._module.Nat())
         && $IsAlloc(m#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(m#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Nat(n#0)
     && $IsA#_module.Nat(m#0)
     && (_module.Nat#Equal(n#0, m#0)
       ==> $IsA#_module.Nat(_module.__default.plus($LS($LZ), n#0, n#0))
         && $IsA#_module.Nat(_module.__default.plus($LS($LZ), m#0, m#0))
         && 
        _module.__default.plus#canCall(n#0, n#0)
         && _module.__default.plus#canCall(m#0, m#0));
  ensures {:id "id212"} _module.Nat#Equal(n#0, m#0)
     ==> _module.Nat#Equal(_module.__default.plus($LS($LS($LZ)), n#0, n#0), 
      _module.__default.plus($LS($LS($LZ)), m#0, m#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "plus_id_example (correctness)"} Impl$$_module.__default.plus__id__example(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0), 
    m#0: DatatypeType
       where $Is(m#0, Tclass._module.Nat())
         && $IsAlloc(m#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(m#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Nat(n#0)
     && $IsA#_module.Nat(m#0)
     && (_module.Nat#Equal(n#0, m#0)
       ==> $IsA#_module.Nat(_module.__default.plus($LS($LZ), n#0, n#0))
         && $IsA#_module.Nat(_module.__default.plus($LS($LZ), m#0, m#0))
         && 
        _module.__default.plus#canCall(n#0, n#0)
         && _module.__default.plus#canCall(m#0, m#0));
  ensures {:id "id213"} _module.Nat#Equal(n#0, m#0)
     ==> _module.Nat#Equal(_module.__default.plus($LS($LS($LZ)), n#0, n#0), 
      _module.__default.plus($LS($LS($LZ)), m#0, m#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "plus_id_example (correctness)"} Impl$$_module.__default.plus__id__example(n#0: DatatypeType, m#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: plus_id_example, Impl$$_module.__default.plus__id__example
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Nat(n#0);
    assume $IsA#_module.Nat(m#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: DatatypeType, $ih#m0#0: DatatypeType :: 
      { _module.__default.plus($LS($LZ), $ih#m0#0, $ih#m0#0), _module.__default.plus($LS($LZ), $ih#n0#0, $ih#n0#0) } 
      $Is($ih#n0#0, Tclass._module.Nat())
           && $Is($ih#m0#0, Tclass._module.Nat())
           && Lit(true)
           && (DtRank($ih#n0#0) < DtRank(n#0)
             || (DtRank($ih#n0#0) == DtRank(n#0) && DtRank($ih#m0#0) < DtRank(m#0)))
         ==> 
        _module.Nat#Equal($ih#n0#0, $ih#m0#0)
         ==> _module.Nat#Equal(_module.__default.plus($LS($LZ), $ih#n0#0, $ih#n0#0), 
          _module.__default.plus($LS($LZ), $ih#m0#0, $ih#m0#0)));
    $_reverifyPost := false;
}



procedure {:verboseName "plus_id_exercise (well-formedness)"} CheckWellFormed$$_module.__default.plus__id__exercise(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0), 
    m#0: DatatypeType
       where $Is(m#0, Tclass._module.Nat())
         && $IsAlloc(m#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(m#0), 
    o#0: DatatypeType
       where $Is(o#0, Tclass._module.Nat())
         && $IsAlloc(o#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(o#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "plus_id_exercise (call)"} Call$$_module.__default.plus__id__exercise(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0), 
    m#0: DatatypeType
       where $Is(m#0, Tclass._module.Nat())
         && $IsAlloc(m#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(m#0), 
    o#0: DatatypeType
       where $Is(o#0, Tclass._module.Nat())
         && $IsAlloc(o#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(o#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Nat(n#0)
     && $IsA#_module.Nat(m#0)
     && (_module.Nat#Equal(n#0, m#0)
       ==> $IsA#_module.Nat(m#0)
         && $IsA#_module.Nat(o#0)
         && (_module.Nat#Equal(m#0, o#0)
           ==> $IsA#_module.Nat(_module.__default.plus($LS($LZ), n#0, m#0))
             && $IsA#_module.Nat(_module.__default.plus($LS($LZ), m#0, o#0))
             && 
            _module.__default.plus#canCall(n#0, m#0)
             && _module.__default.plus#canCall(m#0, o#0)));
  ensures {:id "id219"} _module.Nat#Equal(n#0, m#0)
     ==> 
    _module.Nat#Equal(m#0, o#0)
     ==> _module.Nat#Equal(_module.__default.plus($LS($LS($LZ)), n#0, m#0), 
      _module.__default.plus($LS($LS($LZ)), m#0, o#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "plus_id_exercise (correctness)"} Impl$$_module.__default.plus__id__exercise(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0), 
    m#0: DatatypeType
       where $Is(m#0, Tclass._module.Nat())
         && $IsAlloc(m#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(m#0), 
    o#0: DatatypeType
       where $Is(o#0, Tclass._module.Nat())
         && $IsAlloc(o#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(o#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Nat(n#0)
     && $IsA#_module.Nat(m#0)
     && (_module.Nat#Equal(n#0, m#0)
       ==> $IsA#_module.Nat(m#0)
         && $IsA#_module.Nat(o#0)
         && (_module.Nat#Equal(m#0, o#0)
           ==> $IsA#_module.Nat(_module.__default.plus($LS($LZ), n#0, m#0))
             && $IsA#_module.Nat(_module.__default.plus($LS($LZ), m#0, o#0))
             && 
            _module.__default.plus#canCall(n#0, m#0)
             && _module.__default.plus#canCall(m#0, o#0)));
  ensures {:id "id220"} _module.Nat#Equal(n#0, m#0)
     ==> 
    _module.Nat#Equal(m#0, o#0)
     ==> _module.Nat#Equal(_module.__default.plus($LS($LS($LZ)), n#0, m#0), 
      _module.__default.plus($LS($LS($LZ)), m#0, o#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "plus_id_exercise (correctness)"} Impl$$_module.__default.plus__id__exercise(n#0: DatatypeType, m#0: DatatypeType, o#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: plus_id_exercise, Impl$$_module.__default.plus__id__exercise
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Nat(n#0);
    assume $IsA#_module.Nat(m#0);
    assume $IsA#_module.Nat(o#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: DatatypeType, $ih#m0#0: DatatypeType, $ih#o0#0: DatatypeType :: 
      { _module.__default.plus($LS($LZ), $ih#m0#0, $ih#o0#0), _module.__default.plus($LS($LZ), $ih#n0#0, $ih#m0#0) } 
      $Is($ih#n0#0, Tclass._module.Nat())
           && $Is($ih#m0#0, Tclass._module.Nat())
           && $Is($ih#o0#0, Tclass._module.Nat())
           && Lit(true)
           && (DtRank($ih#n0#0) < DtRank(n#0)
             || (DtRank($ih#n0#0) == DtRank(n#0)
               && (DtRank($ih#m0#0) < DtRank(m#0)
                 || (DtRank($ih#m0#0) == DtRank(m#0) && DtRank($ih#o0#0) < DtRank(o#0)))))
         ==> 
        _module.Nat#Equal($ih#n0#0, $ih#m0#0)
         ==> 
        _module.Nat#Equal($ih#m0#0, $ih#o0#0)
         ==> _module.Nat#Equal(_module.__default.plus($LS($LZ), $ih#n0#0, $ih#m0#0), 
          _module.__default.plus($LS($LZ), $ih#m0#0, $ih#o0#0)));
    $_reverifyPost := false;
}



procedure {:verboseName "mult_0_plus (well-formedness)"} CheckWellFormed$$_module.__default.mult__0__plus(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0), 
    m#0: DatatypeType
       where $Is(m#0, Tclass._module.Nat())
         && $IsAlloc(m#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(m#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "mult_0_plus (call)"} Call$$_module.__default.mult__0__plus(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0), 
    m#0: DatatypeType
       where $Is(m#0, Tclass._module.Nat())
         && $IsAlloc(m#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(m#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Nat(_module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), Lit(#_module.Nat.O()), n#0), m#0))
     && $IsA#_module.Nat(_module.__default.mult($LS($LZ), n#0, m#0))
     && 
    _module.__default.plus#canCall(Lit(#_module.Nat.O()), n#0)
     && _module.__default.mult#canCall(_module.__default.plus($LS($LZ), Lit(#_module.Nat.O()), n#0), m#0)
     && _module.__default.mult#canCall(n#0, m#0);
  ensures {:id "id222"} _module.Nat#Equal(_module.__default.mult($LS($LS($LZ)), 
      _module.__default.plus($LS($LS($LZ)), Lit(#_module.Nat.O()), n#0), 
      m#0), 
    _module.__default.mult($LS($LS($LZ)), n#0, m#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "mult_0_plus (correctness)"} Impl$$_module.__default.mult__0__plus(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0), 
    m#0: DatatypeType
       where $Is(m#0, Tclass._module.Nat())
         && $IsAlloc(m#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(m#0))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Nat(_module.__default.mult($LS($LZ), _module.__default.plus($LS($LZ), Lit(#_module.Nat.O()), n#0), m#0))
     && $IsA#_module.Nat(_module.__default.mult($LS($LZ), n#0, m#0))
     && 
    _module.__default.plus#canCall(Lit(#_module.Nat.O()), n#0)
     && _module.__default.mult#canCall(_module.__default.plus($LS($LZ), Lit(#_module.Nat.O()), n#0), m#0)
     && _module.__default.mult#canCall(n#0, m#0);
  ensures {:id "id223"} _module.Nat#Equal(_module.__default.mult($LS($LS($LZ)), 
      _module.__default.plus($LS($LS($LZ)), Lit(#_module.Nat.O()), n#0), 
      m#0), 
    _module.__default.mult($LS($LS($LZ)), n#0, m#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "mult_0_plus (correctness)"} Impl$$_module.__default.mult__0__plus(n#0: DatatypeType, m#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: mult_0_plus, Impl$$_module.__default.mult__0__plus
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Nat(n#0);
    assume $IsA#_module.Nat(m#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: DatatypeType, $ih#m0#0: DatatypeType :: 
      { _module.__default.mult($LS($LZ), 
          _module.__default.plus($LS($LZ), Lit(#_module.Nat.O()), $ih#n0#0), 
          $ih#m0#0) } 
      $Is($ih#n0#0, Tclass._module.Nat())
           && $Is($ih#m0#0, Tclass._module.Nat())
           && Lit(true)
           && (DtRank($ih#n0#0) < DtRank(n#0)
             || (DtRank($ih#n0#0) == DtRank(n#0) && DtRank($ih#m0#0) < DtRank(m#0)))
         ==> _module.Nat#Equal(_module.__default.mult($LS($LZ), 
            _module.__default.plus($LS($LZ), Lit(#_module.Nat.O()), $ih#n0#0), 
            $ih#m0#0), 
          _module.__default.mult($LS($LZ), $ih#n0#0, $ih#m0#0)));
    $_reverifyPost := false;
}



procedure {:verboseName "mult_S_1 (well-formedness)"} CheckWellFormed$$_module.__default.mult__S__1(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0), 
    m#0: DatatypeType
       where $Is(m#0, Tclass._module.Nat())
         && $IsAlloc(m#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(m#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "mult_S_1 (call)"} Call$$_module.__default.mult__S__1(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0), 
    m#0: DatatypeType
       where $Is(m#0, Tclass._module.Nat())
         && $IsAlloc(m#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(m#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Nat(m#0)
     && (_module.Nat#Equal(m#0, #_module.Nat.S(n#0))
       ==> $IsA#_module.Nat(_module.__default.mult($LS($LZ), 
            m#0, 
            _module.__default.plus($LS($LZ), Lit(#_module.Nat.S(Lit(#_module.Nat.O()))), n#0)))
         && $IsA#_module.Nat(_module.__default.mult($LS($LZ), m#0, m#0))
         && 
        _module.__default.plus#canCall(Lit(#_module.Nat.S(Lit(#_module.Nat.O()))), n#0)
         && _module.__default.mult#canCall(m#0, 
          _module.__default.plus($LS($LZ), Lit(#_module.Nat.S(Lit(#_module.Nat.O()))), n#0))
         && _module.__default.mult#canCall(m#0, m#0));
  ensures {:id "id227"} _module.Nat#Equal(m#0, #_module.Nat.S(n#0))
     ==> _module.Nat#Equal(_module.__default.mult($LS($LS($LZ)), 
        m#0, 
        _module.__default.plus($LS($LS($LZ)), Lit(#_module.Nat.S(Lit(#_module.Nat.O()))), n#0)), 
      _module.__default.mult($LS($LS($LZ)), m#0, m#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "mult_S_1 (correctness)"} Impl$$_module.__default.mult__S__1(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0), 
    m#0: DatatypeType
       where $Is(m#0, Tclass._module.Nat())
         && $IsAlloc(m#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(m#0))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Nat(m#0)
     && (_module.Nat#Equal(m#0, #_module.Nat.S(n#0))
       ==> $IsA#_module.Nat(_module.__default.mult($LS($LZ), 
            m#0, 
            _module.__default.plus($LS($LZ), Lit(#_module.Nat.S(Lit(#_module.Nat.O()))), n#0)))
         && $IsA#_module.Nat(_module.__default.mult($LS($LZ), m#0, m#0))
         && 
        _module.__default.plus#canCall(Lit(#_module.Nat.S(Lit(#_module.Nat.O()))), n#0)
         && _module.__default.mult#canCall(m#0, 
          _module.__default.plus($LS($LZ), Lit(#_module.Nat.S(Lit(#_module.Nat.O()))), n#0))
         && _module.__default.mult#canCall(m#0, m#0));
  ensures {:id "id228"} _module.Nat#Equal(m#0, #_module.Nat.S(n#0))
     ==> _module.Nat#Equal(_module.__default.mult($LS($LS($LZ)), 
        m#0, 
        _module.__default.plus($LS($LS($LZ)), Lit(#_module.Nat.S(Lit(#_module.Nat.O()))), n#0)), 
      _module.__default.mult($LS($LS($LZ)), m#0, m#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "mult_S_1 (correctness)"} Impl$$_module.__default.mult__S__1(n#0: DatatypeType, m#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: mult_S_1, Impl$$_module.__default.mult__S__1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Nat(n#0);
    assume $IsA#_module.Nat(m#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: DatatypeType, $ih#m0#0: DatatypeType :: 
      { _module.__default.mult($LS($LZ), $ih#m0#0, $ih#m0#0), _module.__default.plus($LS($LZ), Lit(#_module.Nat.S(Lit(#_module.Nat.O()))), $ih#n0#0) } 
        { _module.__default.mult($LS($LZ), $ih#m0#0, $ih#m0#0), #_module.Nat.S($ih#n0#0) } 
      $Is($ih#n0#0, Tclass._module.Nat())
           && $Is($ih#m0#0, Tclass._module.Nat())
           && Lit(true)
           && (DtRank($ih#n0#0) < DtRank(n#0)
             || (DtRank($ih#n0#0) == DtRank(n#0) && DtRank($ih#m0#0) < DtRank(m#0)))
         ==> 
        _module.Nat#Equal($ih#m0#0, #_module.Nat.S($ih#n0#0))
         ==> _module.Nat#Equal(_module.__default.mult($LS($LZ), 
            $ih#m0#0, 
            _module.__default.plus($LS($LZ), Lit(#_module.Nat.S(Lit(#_module.Nat.O()))), $ih#n0#0)), 
          _module.__default.mult($LS($LZ), $ih#m0#0, $ih#m0#0)));
    $_reverifyPost := false;
}



procedure {:verboseName "plus_1_neq_0_firsttry (well-formedness)"} CheckWellFormed$$_module.__default.plus__1__neq__0__firsttry(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "plus_1_neq_0_firsttry (call)"} Call$$_module.__default.plus__1__neq__0__firsttry(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Bool(_module.__default.beq__nat($LS($LZ), 
        _module.__default.plus($LS($LZ), n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))), 
        Lit(#_module.Nat.O())))
     && 
    _module.__default.plus#canCall(n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))
     && _module.__default.beq__nat#canCall(_module.__default.plus($LS($LZ), n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))), 
      Lit(#_module.Nat.O()));
  ensures {:id "id230"} _module.Bool#Equal(_module.__default.beq__nat($LS($LS($LZ)), 
      _module.__default.plus($LS($LS($LZ)), n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))), 
      Lit(#_module.Nat.O())), 
    #_module.Bool.False());
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "plus_1_neq_0_firsttry (correctness)"} Impl$$_module.__default.plus__1__neq__0__firsttry(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Bool(_module.__default.beq__nat($LS($LZ), 
        _module.__default.plus($LS($LZ), n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))), 
        Lit(#_module.Nat.O())))
     && 
    _module.__default.plus#canCall(n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))
     && _module.__default.beq__nat#canCall(_module.__default.plus($LS($LZ), n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))), 
      Lit(#_module.Nat.O()));
  ensures {:id "id231"} _module.Bool#Equal(_module.__default.beq__nat($LS($LS($LZ)), 
      _module.__default.plus($LS($LS($LZ)), n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))), 
      Lit(#_module.Nat.O())), 
    #_module.Bool.False());
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "plus_1_neq_0_firsttry (correctness)"} Impl$$_module.__default.plus__1__neq__0__firsttry(n#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: plus_1_neq_0_firsttry, Impl$$_module.__default.plus__1__neq__0__firsttry
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Nat(n#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: DatatypeType :: 
      { _module.__default.plus($LS($LZ), $ih#n0#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))) } 
      $Is($ih#n0#0, Tclass._module.Nat())
           && Lit(true)
           && DtRank($ih#n0#0) < DtRank(n#0)
         ==> _module.Bool#Equal(_module.__default.beq__nat($LS($LZ), 
            _module.__default.plus($LS($LZ), $ih#n0#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))), 
            Lit(#_module.Nat.O())), 
          #_module.Bool.False()));
    $_reverifyPost := false;
}



procedure {:verboseName "plus_1_neq_0 (well-formedness)"} CheckWellFormed$$_module.__default.plus__1__neq__0(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "plus_1_neq_0 (call)"} Call$$_module.__default.plus__1__neq__0(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Bool(_module.__default.beq__nat($LS($LZ), 
        _module.__default.plus($LS($LZ), n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))), 
        Lit(#_module.Nat.O())))
     && 
    _module.__default.plus#canCall(n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))
     && _module.__default.beq__nat#canCall(_module.__default.plus($LS($LZ), n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))), 
      Lit(#_module.Nat.O()));
  ensures {:id "id233"} _module.Bool#Equal(_module.__default.beq__nat($LS($LS($LZ)), 
      _module.__default.plus($LS($LS($LZ)), n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))), 
      Lit(#_module.Nat.O())), 
    #_module.Bool.False());
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "plus_1_neq_0 (correctness)"} Impl$$_module.__default.plus__1__neq__0(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Bool(_module.__default.beq__nat($LS($LZ), 
        _module.__default.plus($LS($LZ), n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))), 
        Lit(#_module.Nat.O())))
     && 
    _module.__default.plus#canCall(n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))
     && _module.__default.beq__nat#canCall(_module.__default.plus($LS($LZ), n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))), 
      Lit(#_module.Nat.O()));
  ensures {:id "id234"} _module.Bool#Equal(_module.__default.beq__nat($LS($LS($LZ)), 
      _module.__default.plus($LS($LS($LZ)), n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))), 
      Lit(#_module.Nat.O())), 
    #_module.Bool.False());
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "plus_1_neq_0 (correctness)"} Impl$$_module.__default.plus__1__neq__0(n#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: plus_1_neq_0, Impl$$_module.__default.plus__1__neq__0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Nat(n#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: DatatypeType :: 
      { _module.__default.plus($LS($LZ), $ih#n0#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))) } 
      $Is($ih#n0#0, Tclass._module.Nat())
           && Lit(true)
           && DtRank($ih#n0#0) < DtRank(n#0)
         ==> _module.Bool#Equal(_module.__default.beq__nat($LS($LZ), 
            _module.__default.plus($LS($LZ), $ih#n0#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))), 
            Lit(#_module.Nat.O())), 
          #_module.Bool.False()));
    $_reverifyPost := false;
}



procedure {:verboseName "negb_involutive (well-formedness)"} CheckWellFormed$$_module.__default.negb__involutive(b#0: DatatypeType
       where $Is(b#0, Tclass._module.Bool())
         && $IsAlloc(b#0, Tclass._module.Bool(), $Heap)
         && $IsA#_module.Bool(b#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "negb_involutive (call)"} Call$$_module.__default.negb__involutive(b#0: DatatypeType
       where $Is(b#0, Tclass._module.Bool())
         && $IsAlloc(b#0, Tclass._module.Bool(), $Heap)
         && $IsA#_module.Bool(b#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Bool(_module.__default.negb(_module.__default.negb(b#0)))
     && $IsA#_module.Bool(b#0)
     && 
    _module.__default.negb#canCall(b#0)
     && _module.__default.negb#canCall(_module.__default.negb(b#0));
  ensures {:id "id236"} _module.Bool#Equal(_module.__default.negb(_module.__default.negb(b#0)), b#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "negb_involutive (correctness)"} Impl$$_module.__default.negb__involutive(b#0: DatatypeType
       where $Is(b#0, Tclass._module.Bool())
         && $IsAlloc(b#0, Tclass._module.Bool(), $Heap)
         && $IsA#_module.Bool(b#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Bool(_module.__default.negb(_module.__default.negb(b#0)))
     && $IsA#_module.Bool(b#0)
     && 
    _module.__default.negb#canCall(b#0)
     && _module.__default.negb#canCall(_module.__default.negb(b#0));
  ensures {:id "id237"} _module.Bool#Equal(_module.__default.negb(_module.__default.negb(b#0)), b#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "negb_involutive (correctness)"} Impl$$_module.__default.negb__involutive(b#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: negb_involutive, Impl$$_module.__default.negb__involutive
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "zero_nbeq_plus_1 (well-formedness)"} CheckWellFormed$$_module.__default.zero__nbeq__plus__1(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "zero_nbeq_plus_1 (call)"} Call$$_module.__default.zero__nbeq__plus__1(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Bool(_module.__default.beq__nat($LS($LZ), 
        Lit(#_module.Nat.O()), 
        _module.__default.plus($LS($LZ), n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))))
     && 
    _module.__default.plus#canCall(n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))
     && _module.__default.beq__nat#canCall(Lit(#_module.Nat.O()), 
      _module.__default.plus($LS($LZ), n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))));
  ensures {:id "id239"} _module.Bool#Equal(_module.__default.beq__nat($LS($LS($LZ)), 
      Lit(#_module.Nat.O()), 
      _module.__default.plus($LS($LS($LZ)), n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))), 
    #_module.Bool.False());
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "zero_nbeq_plus_1 (correctness)"} Impl$$_module.__default.zero__nbeq__plus__1(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Bool(_module.__default.beq__nat($LS($LZ), 
        Lit(#_module.Nat.O()), 
        _module.__default.plus($LS($LZ), n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))))
     && 
    _module.__default.plus#canCall(n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))
     && _module.__default.beq__nat#canCall(Lit(#_module.Nat.O()), 
      _module.__default.plus($LS($LZ), n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))));
  ensures {:id "id240"} _module.Bool#Equal(_module.__default.beq__nat($LS($LS($LZ)), 
      Lit(#_module.Nat.O()), 
      _module.__default.plus($LS($LS($LZ)), n#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))), 
    #_module.Bool.False());
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "zero_nbeq_plus_1 (correctness)"} Impl$$_module.__default.zero__nbeq__plus__1(n#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: zero_nbeq_plus_1, Impl$$_module.__default.zero__nbeq__plus__1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Nat(n#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: DatatypeType :: 
      { _module.__default.plus($LS($LZ), $ih#n0#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))) } 
      $Is($ih#n0#0, Tclass._module.Nat())
           && Lit(true)
           && DtRank($ih#n0#0) < DtRank(n#0)
         ==> _module.Bool#Equal(_module.__default.beq__nat($LS($LZ), 
            Lit(#_module.Nat.O()), 
            _module.__default.plus($LS($LZ), $ih#n0#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))), 
          #_module.Bool.False()));
    $_reverifyPost := false;
}



// function declaration for _module._default.f
function _module.__default.f(x#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.f
axiom 1 <= $FunctionContextHeight
   ==> (forall x#0: DatatypeType :: 
    { _module.__default.f(x#0) } 
    _module.__default.f#canCall(x#0)
         || (1 < $FunctionContextHeight && $Is(x#0, Tclass._module.Bool()))
       ==> $Is(_module.__default.f(x#0), Tclass._module.Bool()));
}

function _module.__default.f#canCall(x#0: DatatypeType) : bool;

function _module.__default.f#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.f
axiom (forall x#0: DatatypeType :: 
  { _module.__default.f#requires(x#0) } 
  $Is(x#0, Tclass._module.Bool()) ==> _module.__default.f#requires(x#0) == true);

procedure {:verboseName "f (well-formedness)"} CheckWellformed$$_module.__default.f(x#0: DatatypeType where $Is(x#0, Tclass._module.Bool()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "identity_fn_applied_twice (well-formedness)"} CheckWellFormed$$_module.__default.identity__fn__applied__twice(b#0: DatatypeType
       where $Is(b#0, Tclass._module.Bool())
         && $IsAlloc(b#0, Tclass._module.Bool(), $Heap)
         && $IsA#_module.Bool(b#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "identity_fn_applied_twice (call)"} Call$$_module.__default.identity__fn__applied__twice(b#0: DatatypeType
       where $Is(b#0, Tclass._module.Bool())
         && $IsAlloc(b#0, Tclass._module.Bool(), $Heap)
         && $IsA#_module.Bool(b#0));
  // user-defined preconditions
  requires {:id "id244"} (forall x#1: DatatypeType :: 
    { _module.__default.f(x#1) } 
    $Is(x#1, Tclass._module.Bool())
       ==> _module.Bool#Equal(_module.__default.f(x#1), x#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Bool(_module.__default.f(_module.__default.f(b#0)))
     && $IsA#_module.Bool(b#0)
     && 
    _module.__default.f#canCall(b#0)
     && _module.__default.f#canCall(_module.__default.f(b#0));
  ensures {:id "id245"} _module.Bool#Equal(_module.__default.f(_module.__default.f(b#0)), b#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "identity_fn_applied_twice (correctness)"} Impl$$_module.__default.identity__fn__applied__twice(b#0: DatatypeType
       where $Is(b#0, Tclass._module.Bool())
         && $IsAlloc(b#0, Tclass._module.Bool(), $Heap)
         && $IsA#_module.Bool(b#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id246"} (forall x#1: DatatypeType :: 
    { _module.__default.f(x#1) } 
    $Is(x#1, Tclass._module.Bool())
       ==> _module.Bool#Equal(_module.__default.f(x#1), x#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Bool(_module.__default.f(_module.__default.f(b#0)))
     && $IsA#_module.Bool(b#0)
     && 
    _module.__default.f#canCall(b#0)
     && _module.__default.f#canCall(_module.__default.f(b#0));
  ensures {:id "id247"} _module.Bool#Equal(_module.__default.f(_module.__default.f(b#0)), b#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "identity_fn_applied_twice (correctness)"} Impl$$_module.__default.identity__fn__applied__twice(b#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: identity_fn_applied_twice, Impl$$_module.__default.identity__fn__applied__twice
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "negation_fn_applied_twice (well-formedness)"} CheckWellFormed$$_module.__default.negation__fn__applied__twice(b#0: DatatypeType
       where $Is(b#0, Tclass._module.Bool())
         && $IsAlloc(b#0, Tclass._module.Bool(), $Heap)
         && $IsA#_module.Bool(b#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "negation_fn_applied_twice (call)"} Call$$_module.__default.negation__fn__applied__twice(b#0: DatatypeType
       where $Is(b#0, Tclass._module.Bool())
         && $IsAlloc(b#0, Tclass._module.Bool(), $Heap)
         && $IsA#_module.Bool(b#0));
  // user-defined preconditions
  requires {:id "id251"} (forall x#1: DatatypeType :: 
    { _module.__default.negb(x#1) } { _module.__default.f(x#1) } 
    $Is(x#1, Tclass._module.Bool())
       ==> _module.Bool#Equal(_module.__default.f(x#1), _module.__default.negb(x#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Bool(_module.__default.f(_module.__default.f(b#0)))
     && $IsA#_module.Bool(b#0)
     && 
    _module.__default.f#canCall(b#0)
     && _module.__default.f#canCall(_module.__default.f(b#0));
  ensures {:id "id252"} _module.Bool#Equal(_module.__default.f(_module.__default.f(b#0)), b#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "negation_fn_applied_twice (correctness)"} Impl$$_module.__default.negation__fn__applied__twice(b#0: DatatypeType
       where $Is(b#0, Tclass._module.Bool())
         && $IsAlloc(b#0, Tclass._module.Bool(), $Heap)
         && $IsA#_module.Bool(b#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id253"} (forall x#1: DatatypeType :: 
    { _module.__default.negb(x#1) } { _module.__default.f(x#1) } 
    $Is(x#1, Tclass._module.Bool())
       ==> _module.Bool#Equal(_module.__default.f(x#1), _module.__default.negb(x#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Bool(_module.__default.f(_module.__default.f(b#0)))
     && $IsA#_module.Bool(b#0)
     && 
    _module.__default.f#canCall(b#0)
     && _module.__default.f#canCall(_module.__default.f(b#0));
  ensures {:id "id254"} _module.Bool#Equal(_module.__default.f(_module.__default.f(b#0)), b#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "negation_fn_applied_twice (correctness)"} Impl$$_module.__default.negation__fn__applied__twice(b#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: negation_fn_applied_twice, Impl$$_module.__default.negation__fn__applied__twice
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "andb_true (well-formedness)"} CheckWellFormed$$_module.__default.andb__true(b#0: DatatypeType
       where $Is(b#0, Tclass._module.Bool())
         && $IsAlloc(b#0, Tclass._module.Bool(), $Heap)
         && $IsA#_module.Bool(b#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "andb_true (call)"} Call$$_module.__default.andb__true(b#0: DatatypeType
       where $Is(b#0, Tclass._module.Bool())
         && $IsAlloc(b#0, Tclass._module.Bool(), $Heap)
         && $IsA#_module.Bool(b#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Bool(_module.__default.andb(Lit(#_module.Bool.True()), b#0))
     && $IsA#_module.Bool(b#0)
     && _module.__default.andb#canCall(Lit(#_module.Bool.True()), b#0);
  ensures {:id "id256"} _module.Bool#Equal(_module.__default.andb(Lit(#_module.Bool.True()), b#0), b#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "andb_true (correctness)"} Impl$$_module.__default.andb__true(b#0: DatatypeType
       where $Is(b#0, Tclass._module.Bool())
         && $IsAlloc(b#0, Tclass._module.Bool(), $Heap)
         && $IsA#_module.Bool(b#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Bool(_module.__default.andb(Lit(#_module.Bool.True()), b#0))
     && $IsA#_module.Bool(b#0)
     && _module.__default.andb#canCall(Lit(#_module.Bool.True()), b#0);
  ensures {:id "id257"} _module.Bool#Equal(_module.__default.andb(Lit(#_module.Bool.True()), b#0), b#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "andb_true (correctness)"} Impl$$_module.__default.andb__true(b#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: andb_true, Impl$$_module.__default.andb__true
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "orb_false (well-formedness)"} CheckWellFormed$$_module.__default.orb__false(b#0: DatatypeType
       where $Is(b#0, Tclass._module.Bool())
         && $IsAlloc(b#0, Tclass._module.Bool(), $Heap)
         && $IsA#_module.Bool(b#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "orb_false (call)"} Call$$_module.__default.orb__false(b#0: DatatypeType
       where $Is(b#0, Tclass._module.Bool())
         && $IsAlloc(b#0, Tclass._module.Bool(), $Heap)
         && $IsA#_module.Bool(b#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Bool(_module.__default.orb(Lit(#_module.Bool.False()), b#0))
     && $IsA#_module.Bool(b#0)
     && _module.__default.orb#canCall(Lit(#_module.Bool.False()), b#0);
  ensures {:id "id259"} _module.Bool#Equal(_module.__default.orb(Lit(#_module.Bool.False()), b#0), b#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "orb_false (correctness)"} Impl$$_module.__default.orb__false(b#0: DatatypeType
       where $Is(b#0, Tclass._module.Bool())
         && $IsAlloc(b#0, Tclass._module.Bool(), $Heap)
         && $IsA#_module.Bool(b#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Bool(_module.__default.orb(Lit(#_module.Bool.False()), b#0))
     && $IsA#_module.Bool(b#0)
     && _module.__default.orb#canCall(Lit(#_module.Bool.False()), b#0);
  ensures {:id "id260"} _module.Bool#Equal(_module.__default.orb(Lit(#_module.Bool.False()), b#0), b#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "orb_false (correctness)"} Impl$$_module.__default.orb__false(b#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: orb_false, Impl$$_module.__default.orb__false
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "andb_eq_orb (well-formedness)"} CheckWellFormed$$_module.__default.andb__eq__orb(b#0: DatatypeType
       where $Is(b#0, Tclass._module.Bool())
         && $IsAlloc(b#0, Tclass._module.Bool(), $Heap)
         && $IsA#_module.Bool(b#0), 
    c#0: DatatypeType
       where $Is(c#0, Tclass._module.Bool())
         && $IsAlloc(c#0, Tclass._module.Bool(), $Heap)
         && $IsA#_module.Bool(c#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "andb_eq_orb (call)"} Call$$_module.__default.andb__eq__orb(b#0: DatatypeType
       where $Is(b#0, Tclass._module.Bool())
         && $IsAlloc(b#0, Tclass._module.Bool(), $Heap)
         && $IsA#_module.Bool(b#0), 
    c#0: DatatypeType
       where $Is(c#0, Tclass._module.Bool())
         && $IsAlloc(c#0, Tclass._module.Bool(), $Heap)
         && $IsA#_module.Bool(c#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Bool(_module.__default.andb(b#0, c#0))
     && $IsA#_module.Bool(_module.__default.orb(b#0, c#0))
     && 
    _module.__default.andb#canCall(b#0, c#0)
     && _module.__default.orb#canCall(b#0, c#0)
     && (_module.Bool#Equal(_module.__default.andb(b#0, c#0), _module.__default.orb(b#0, c#0))
       ==> $IsA#_module.Bool(b#0) && $IsA#_module.Bool(c#0));
  ensures {:id "id264"} _module.Bool#Equal(_module.__default.andb(b#0, c#0), _module.__default.orb(b#0, c#0))
     ==> _module.Bool#Equal(b#0, c#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "andb_eq_orb (correctness)"} Impl$$_module.__default.andb__eq__orb(b#0: DatatypeType
       where $Is(b#0, Tclass._module.Bool())
         && $IsAlloc(b#0, Tclass._module.Bool(), $Heap)
         && $IsA#_module.Bool(b#0), 
    c#0: DatatypeType
       where $Is(c#0, Tclass._module.Bool())
         && $IsAlloc(c#0, Tclass._module.Bool(), $Heap)
         && $IsA#_module.Bool(c#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Bool(_module.__default.andb(b#0, c#0))
     && $IsA#_module.Bool(_module.__default.orb(b#0, c#0))
     && 
    _module.__default.andb#canCall(b#0, c#0)
     && _module.__default.orb#canCall(b#0, c#0)
     && (_module.Bool#Equal(_module.__default.andb(b#0, c#0), _module.__default.orb(b#0, c#0))
       ==> $IsA#_module.Bool(b#0) && $IsA#_module.Bool(c#0));
  ensures {:id "id265"} _module.Bool#Equal(_module.__default.andb(b#0, c#0), _module.__default.orb(b#0, c#0))
     ==> _module.Bool#Equal(b#0, c#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "andb_eq_orb (correctness)"} Impl$$_module.__default.andb__eq__orb(b#0: DatatypeType, c#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: andb_eq_orb, Impl$$_module.__default.andb__eq__orb
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



// function declaration for _module._default.increment
function _module.__default.increment($ly: LayerType, b#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.increment
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, b#0: DatatypeType :: 
    { _module.__default.increment($ly, b#0) } 
    _module.__default.increment#canCall(b#0)
         || (1 < $FunctionContextHeight && $Is(b#0, Tclass._module.bin()))
       ==> $Is(_module.__default.increment($ly, b#0), Tclass._module.bin()));
// definition axiom for _module.__default.increment (revealed)
axiom {:id "id266"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, b#0: DatatypeType :: 
    { _module.__default.increment($LS($ly), b#0) } 
    _module.__default.increment#canCall(b#0)
         || (1 < $FunctionContextHeight && $Is(b#0, Tclass._module.bin()))
       ==> (!_module.bin.Zero_q(b#0)
           ==> 
          !_module.bin.Twice_q(b#0)
           ==> (var b'#3 := _module.bin._h2(b#0); _module.__default.increment#canCall(b'#3)))
         && _module.__default.increment($LS($ly), b#0)
           == (if _module.bin.Zero_q(b#0)
             then #_module.bin.TwicePlusOne(Lit(#_module.bin.Zero()))
             else (if _module.bin.Twice_q(b#0)
               then (var b'#0 := _module.bin._h1(b#0); #_module.bin.TwicePlusOne(b'#0))
               else (var b'#1 := _module.bin._h2(b#0); 
                #_module.bin.Twice(_module.__default.increment($ly, b'#1))))));
// definition axiom for _module.__default.increment for all literals (revealed)
axiom {:id "id267"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, b#0: DatatypeType :: 
    {:weight 3} { _module.__default.increment($LS($ly), Lit(b#0)) } 
    _module.__default.increment#canCall(Lit(b#0))
         || (1 < $FunctionContextHeight && $Is(b#0, Tclass._module.bin()))
       ==> (!Lit(_module.bin.Zero_q(Lit(b#0)))
           ==> 
          !Lit(_module.bin.Twice_q(Lit(b#0)))
           ==> (var b'#7 := Lit(_module.bin._h2(Lit(b#0))); 
            _module.__default.increment#canCall(b'#7)))
         && _module.__default.increment($LS($ly), Lit(b#0))
           == (if _module.bin.Zero_q(Lit(b#0))
             then #_module.bin.TwicePlusOne(Lit(#_module.bin.Zero()))
             else (if _module.bin.Twice_q(Lit(b#0))
               then (var b'#4 := Lit(_module.bin._h1(Lit(b#0))); 
                Lit(#_module.bin.TwicePlusOne(b'#4)))
               else (var b'#5 := Lit(_module.bin._h2(Lit(b#0))); 
                Lit(#_module.bin.Twice(Lit(_module.__default.increment($LS($ly), b'#5))))))));
}

function _module.__default.increment#canCall(b#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, b#0: DatatypeType :: 
  { _module.__default.increment($LS($ly), b#0) } 
  _module.__default.increment($LS($ly), b#0)
     == _module.__default.increment($ly, b#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, b#0: DatatypeType :: 
  { _module.__default.increment(AsFuelBottom($ly), b#0) } 
  _module.__default.increment($ly, b#0) == _module.__default.increment($LZ, b#0));

function Tclass._module.bin() : Ty
uses {
// Tclass._module.bin Tag
axiom Tag(Tclass._module.bin()) == Tagclass._module.bin
   && TagFamily(Tclass._module.bin()) == tytagFamily$bin;
}

const unique Tagclass._module.bin: TyTag;

// Box/unbox axiom for Tclass._module.bin
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.bin()) } 
  $IsBox(bx, Tclass._module.bin())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.bin()));

function _module.__default.increment#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.increment
axiom (forall $ly: LayerType, b#0: DatatypeType :: 
  { _module.__default.increment#requires($ly, b#0) } 
  $Is(b#0, Tclass._module.bin())
     ==> _module.__default.increment#requires($ly, b#0) == true);

procedure {:verboseName "increment (well-formedness)"} CheckWellformed$$_module.__default.increment(b#0: DatatypeType where $Is(b#0, Tclass._module.bin()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "increment (well-formedness)"} CheckWellformed$$_module.__default.increment(b#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#1#0: DatatypeType;
  var b'#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var ##b#0: DatatypeType;
  var _mcc#0#0: DatatypeType;
  var b'#Z#1: DatatypeType;
  var let#1#0#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.increment($LS($LZ), b#0), Tclass._module.bin());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (b#0 == #_module.bin.Zero())
        {
            assume {:id "id275"} _module.__default.increment($LS($LZ), b#0)
               == Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero())));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.increment($LS($LZ), b#0), Tclass._module.bin());
            return;
        }
        else if (b#0 == #_module.bin.Twice(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.bin());
            havoc b'#Z#1;
            assume {:id "id272"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.bin());
            assume {:id "id273"} b'#Z#1 == let#1#0#0;
            assume {:id "id274"} _module.__default.increment($LS($LZ), b#0) == #_module.bin.TwicePlusOne(b'#Z#1);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.increment($LS($LZ), b#0), Tclass._module.bin());
            return;
        }
        else if (b#0 == #_module.bin.TwicePlusOne(_mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.bin());
            havoc b'#Z#0;
            assume {:id "id268"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.bin());
            assume {:id "id269"} b'#Z#0 == let#0#0#0;
            ##b#0 := b'#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#0, Tclass._module.bin(), $Heap);
            assert {:id "id270"} DtRank(##b#0) < DtRank(b#0);
            assume _module.__default.increment#canCall(b'#Z#0);
            assume {:id "id271"} _module.__default.increment($LS($LZ), b#0)
               == #_module.bin.Twice(_module.__default.increment($LS($LZ), b'#Z#0));
            assume _module.__default.increment#canCall(b'#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.increment($LS($LZ), b#0), Tclass._module.bin());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.BinToUnary
function _module.__default.BinToUnary($ly: LayerType, b#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.BinToUnary
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, b#0: DatatypeType :: 
    { _module.__default.BinToUnary($ly, b#0) } 
    _module.__default.BinToUnary#canCall(b#0)
         || (2 < $FunctionContextHeight && $Is(b#0, Tclass._module.bin()))
       ==> $Is(_module.__default.BinToUnary($ly, b#0), Tclass._module.Nat()));
// definition axiom for _module.__default.BinToUnary (revealed)
axiom {:id "id276"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, b#0: DatatypeType :: 
    { _module.__default.BinToUnary($LS($ly), b#0) } 
    _module.__default.BinToUnary#canCall(b#0)
         || (2 < $FunctionContextHeight && $Is(b#0, Tclass._module.bin()))
       ==> (!_module.bin.Zero_q(b#0)
           ==> (_module.bin.Twice_q(b#0)
               ==> (var b'#2 := _module.bin._h1(b#0); 
                _module.__default.BinToUnary#canCall(b'#2)
                   && (var t#2 := _module.__default.BinToUnary($ly, b'#2); 
                    _module.__default.plus#canCall(t#2, t#2))))
             && (!_module.bin.Twice_q(b#0)
               ==> (var b'#3 := _module.bin._h2(b#0); 
                _module.__default.BinToUnary#canCall(b'#3)
                   && (var t#3 := _module.__default.BinToUnary($ly, b'#3); 
                    _module.__default.plus#canCall(t#3, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))
                       && _module.__default.plus#canCall(t#3, 
                        _module.__default.plus($LS($LZ), t#3, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))))))))
         && _module.__default.BinToUnary($LS($ly), b#0)
           == (if _module.bin.Zero_q(b#0)
             then #_module.Nat.O()
             else (if _module.bin.Twice_q(b#0)
               then (var b'#0 := _module.bin._h1(b#0); 
                (var t#0 := _module.__default.BinToUnary($ly, b'#0); 
                  _module.__default.plus($LS($LZ), t#0, t#0)))
               else (var b'#1 := _module.bin._h2(b#0); 
                (var t#1 := _module.__default.BinToUnary($ly, b'#1); 
                  _module.__default.plus($LS($LZ), 
                    t#1, 
                    _module.__default.plus($LS($LZ), t#1, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))))))));
// definition axiom for _module.__default.BinToUnary for all literals (revealed)
axiom {:id "id277"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, b#0: DatatypeType :: 
    {:weight 3} { _module.__default.BinToUnary($LS($ly), Lit(b#0)) } 
    _module.__default.BinToUnary#canCall(Lit(b#0))
         || (2 < $FunctionContextHeight && $Is(b#0, Tclass._module.bin()))
       ==> (!Lit(_module.bin.Zero_q(Lit(b#0)))
           ==> (Lit(_module.bin.Twice_q(Lit(b#0)))
               ==> (var b'#6 := Lit(_module.bin._h1(Lit(b#0))); 
                _module.__default.BinToUnary#canCall(b'#6)
                   && (var t#6 := _module.__default.BinToUnary($LS($ly), b'#6); 
                    _module.__default.plus#canCall(t#6, t#6))))
             && (!Lit(_module.bin.Twice_q(Lit(b#0)))
               ==> (var b'#7 := Lit(_module.bin._h2(Lit(b#0))); 
                _module.__default.BinToUnary#canCall(b'#7)
                   && (var t#7 := _module.__default.BinToUnary($LS($ly), b'#7); 
                    _module.__default.plus#canCall(t#7, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))
                       && _module.__default.plus#canCall(t#7, 
                        _module.__default.plus($LS($LZ), t#7, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))))))))
         && _module.__default.BinToUnary($LS($ly), Lit(b#0))
           == (if _module.bin.Zero_q(Lit(b#0))
             then #_module.Nat.O()
             else (if _module.bin.Twice_q(Lit(b#0))
               then (var b'#4 := Lit(_module.bin._h1(Lit(b#0))); 
                (var t#4 := Lit(_module.__default.BinToUnary($LS($ly), b'#4)); 
                  Lit(_module.__default.plus($LS($LZ), t#4, t#4))))
               else (var b'#5 := Lit(_module.bin._h2(Lit(b#0))); 
                (var t#5 := Lit(_module.__default.BinToUnary($LS($ly), b'#5)); 
                  Lit(_module.__default.plus($LS($LZ), 
                      t#5, 
                      Lit(_module.__default.plus($LS($LZ), t#5, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))))))))));
}

function _module.__default.BinToUnary#canCall(b#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, b#0: DatatypeType :: 
  { _module.__default.BinToUnary($LS($ly), b#0) } 
  _module.__default.BinToUnary($LS($ly), b#0)
     == _module.__default.BinToUnary($ly, b#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, b#0: DatatypeType :: 
  { _module.__default.BinToUnary(AsFuelBottom($ly), b#0) } 
  _module.__default.BinToUnary($ly, b#0) == _module.__default.BinToUnary($LZ, b#0));

function _module.__default.BinToUnary#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.BinToUnary
axiom (forall $ly: LayerType, b#0: DatatypeType :: 
  { _module.__default.BinToUnary#requires($ly, b#0) } 
  $Is(b#0, Tclass._module.bin())
     ==> _module.__default.BinToUnary#requires($ly, b#0) == true);

procedure {:verboseName "BinToUnary (well-formedness)"} CheckWellformed$$_module.__default.BinToUnary(b#0: DatatypeType where $Is(b#0, Tclass._module.bin()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BinToUnary (well-formedness)"} CheckWellformed$$_module.__default.BinToUnary(b#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#1#0: DatatypeType;
  var b'#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var t#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##b#0: DatatypeType;
  var ##n#0: DatatypeType;
  var ##m#0: DatatypeType;
  var ##n#1: DatatypeType;
  var ##m#1: DatatypeType;
  var _mcc#0#0: DatatypeType;
  var b'#Z#1: DatatypeType;
  var let#2#0#0: DatatypeType;
  var t#Z#1: DatatypeType;
  var let#3#0#0: DatatypeType;
  var ##b#1: DatatypeType;
  var ##n#2: DatatypeType;
  var ##m#2: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.BinToUnary($LS($LZ), b#0), Tclass._module.Nat());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (b#0 == #_module.bin.Zero())
        {
            assume {:id "id290"} _module.__default.BinToUnary($LS($LZ), b#0) == Lit(#_module.Nat.O());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.BinToUnary($LS($LZ), b#0), Tclass._module.Nat());
            return;
        }
        else if (b#0 == #_module.bin.Twice(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.bin());
            havoc b'#Z#1;
            assume {:id "id284"} let#2#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, Tclass._module.bin());
            assume {:id "id285"} b'#Z#1 == let#2#0#0;
            havoc t#Z#1;
            ##b#1 := b'#Z#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1, Tclass._module.bin(), $Heap);
            assert {:id "id286"} DtRank(##b#1) < DtRank(b#0);
            assume _module.__default.BinToUnary#canCall(b'#Z#1);
            assume {:id "id287"} let#3#0#0 == _module.__default.BinToUnary($LS($LZ), b'#Z#1);
            assume _module.__default.BinToUnary#canCall(b'#Z#1);
            // CheckWellformedWithResult: any expression
            assume $Is(let#3#0#0, Tclass._module.Nat());
            assume {:id "id288"} t#Z#1 == let#3#0#0;
            ##n#2 := t#Z#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#2, Tclass._module.Nat(), $Heap);
            ##m#2 := t#Z#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#2, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(t#Z#1, t#Z#1);
            assume {:id "id289"} _module.__default.BinToUnary($LS($LZ), b#0)
               == _module.__default.plus($LS($LZ), t#Z#1, t#Z#1);
            assume _module.__default.plus#canCall(t#Z#1, t#Z#1);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.BinToUnary($LS($LZ), b#0), Tclass._module.Nat());
            return;
        }
        else if (b#0 == #_module.bin.TwicePlusOne(_mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.bin());
            havoc b'#Z#0;
            assume {:id "id278"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.bin());
            assume {:id "id279"} b'#Z#0 == let#0#0#0;
            havoc t#Z#0;
            ##b#0 := b'#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#0, Tclass._module.bin(), $Heap);
            assert {:id "id280"} DtRank(##b#0) < DtRank(b#0);
            assume _module.__default.BinToUnary#canCall(b'#Z#0);
            assume {:id "id281"} let#1#0#0 == _module.__default.BinToUnary($LS($LZ), b'#Z#0);
            assume _module.__default.BinToUnary#canCall(b'#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Nat());
            assume {:id "id282"} t#Z#0 == let#1#0#0;
            ##n#0 := t#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
            ##n#1 := t#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, Tclass._module.Nat(), $Heap);
            ##m#1 := Lit(#_module.Nat.S(Lit(#_module.Nat.O())));
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(t#Z#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))));
            ##m#0 := _module.__default.plus($LS($LZ), t#Z#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0, Tclass._module.Nat(), $Heap);
            assume _module.__default.plus#canCall(t#Z#0, 
              _module.__default.plus($LS($LZ), t#Z#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))));
            assume {:id "id283"} _module.__default.BinToUnary($LS($LZ), b#0)
               == _module.__default.plus($LS($LZ), 
                t#Z#0, 
                _module.__default.plus($LS($LZ), t#Z#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))));
            assume _module.__default.plus#canCall(t#Z#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))
               && _module.__default.plus#canCall(t#Z#0, 
                _module.__default.plus($LS($LZ), t#Z#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O())))));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.BinToUnary($LS($LZ), b#0), Tclass._module.Nat());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "test_bin (well-formedness)"} CheckWellFormed$$_module.__default.test__bin();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test_bin (call)"} Call$$_module.__default.test__bin();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test_bin (correctness)"} Impl$$_module.__default.test__bin() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test_bin (correctness)"} Impl$$_module.__default.test__bin() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n6#0: DatatypeType
     where $Is(n6#0, Tclass._module.Nat()) && $IsAlloc(n6#0, Tclass._module.Nat(), $Heap);
  var n13#0: DatatypeType
     where $Is(n13#0, Tclass._module.Nat()) && $IsAlloc(n13#0, Tclass._module.Nat(), $Heap);
  var ##b#0: DatatypeType;
  var ##b#1: DatatypeType;

    // AddMethodImpl: test_bin, Impl$$_module.__default.test__bin
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(482,10)
    assume true;
    assume true;
    n6#0 := Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O())))))))))))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(483,11)
    assume true;
    assume true;
    n13#0 := #_module.Nat.S(#_module.Nat.S(#_module.Nat.S(#_module.Nat.S(#_module.Nat.S(#_module.Nat.S(#_module.Nat.S(n6#0)))))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(484,3)
    ##b#0 := Lit(#_module.bin.Twice(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero())))))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, Tclass._module.bin(), $Heap);
    assume _module.__default.BinToUnary#canCall(Lit(#_module.bin.Twice(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero()))))))));
    assume $IsA#_module.Nat(Lit(_module.__default.BinToUnary($LS($LZ), 
            Lit(#_module.bin.Twice(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero()))))))))))
       && $IsA#_module.Nat(n6#0)
       && _module.__default.BinToUnary#canCall(Lit(#_module.bin.Twice(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero()))))))));
    assert {:id "id293"} {:subsumption 0} _module.Nat#Equal(_module.__default.BinToUnary($LS($LS($LZ)), 
        Lit(#_module.bin.Twice(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero())))))))), 
      n6#0);
    assume {:id "id294"} _module.Nat#Equal(_module.__default.BinToUnary($LS($LZ), 
        Lit(#_module.bin.Twice(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero())))))))), 
      n6#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(485,3)
    ##b#1 := Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Twice(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero())))))))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, Tclass._module.bin(), $Heap);
    assume _module.__default.BinToUnary#canCall(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Twice(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero()))))))))));
    assume $IsA#_module.Nat(Lit(_module.__default.BinToUnary($LS($LZ), 
            Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Twice(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero()))))))))))))
       && $IsA#_module.Nat(n13#0)
       && _module.__default.BinToUnary#canCall(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Twice(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero()))))))))));
    assert {:id "id295"} {:subsumption 0} _module.Nat#Equal(_module.__default.BinToUnary($LS($LS($LZ)), 
        Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Twice(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero())))))))))), 
      n13#0);
    assume {:id "id296"} _module.Nat#Equal(_module.__default.BinToUnary($LS($LZ), 
        Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Twice(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero())))))))))), 
      n13#0);
}



procedure {:verboseName "test_increment (well-formedness)"} CheckWellFormed$$_module.__default.test__increment();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test_increment (call)"} Call$$_module.__default.test__increment();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test_increment (correctness)"} Impl$$_module.__default.test__increment() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test_increment (correctness)"} Impl$$_module.__default.test__increment() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var b13#0: DatatypeType
     where $Is(b13#0, Tclass._module.bin()) && $IsAlloc(b13#0, Tclass._module.bin(), $Heap);
  var n13#0: DatatypeType
     where $Is(n13#0, Tclass._module.Nat()) && $IsAlloc(n13#0, Tclass._module.Nat(), $Heap);
  var n14#0: DatatypeType
     where $Is(n14#0, Tclass._module.Nat()) && $IsAlloc(n14#0, Tclass._module.Nat(), $Heap);
  var ##b#0: DatatypeType;
  var ##b#1: DatatypeType;
  var ##b#2: DatatypeType;
  var ##b#3: DatatypeType;
  var ##n#0: DatatypeType;
  var ##b#4: DatatypeType;
  var ##m#0: DatatypeType;

    // AddMethodImpl: test_increment, Impl$$_module.__default.test__increment
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(490,11)
    assume true;
    assume true;
    b13#0 := Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Twice(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero())))))))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(491,11)
    assume true;
    assume true;
    n13#0 := Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.S(Lit(#_module.Nat.O())))))))))))))))))))))))))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(492,11)
    assume true;
    assume true;
    n14#0 := #_module.Nat.S(n13#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(494,3)
    ##b#0 := Lit(#_module.bin.Twice(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero())))))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, Tclass._module.bin(), $Heap);
    assume _module.__default.increment#canCall(Lit(#_module.bin.Twice(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero()))))))));
    assume $IsA#_module.bin(Lit(_module.__default.increment($LS($LZ), 
            Lit(#_module.bin.Twice(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero()))))))))))
       && _module.__default.increment#canCall(Lit(#_module.bin.Twice(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero()))))))));
    assert {:id "id300"} {:subsumption 0} _module.bin#Equal(_module.__default.increment($LS($LS($LZ)), 
        Lit(#_module.bin.Twice(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero())))))))), 
      #_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero())))))));
    assume {:id "id301"} _module.bin#Equal(_module.__default.increment($LS($LZ), 
        Lit(#_module.bin.Twice(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero())))))))), 
      #_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero())))))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(495,3)
    ##b#1 := b13#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, Tclass._module.bin(), $Heap);
    assume _module.__default.increment#canCall(b13#0);
    assume $IsA#_module.bin(_module.__default.increment($LS($LZ), b13#0))
       && _module.__default.increment#canCall(b13#0);
    assert {:id "id302"} {:subsumption 0} _module.bin#Equal(_module.__default.increment($LS($LS($LZ)), b13#0), 
      #_module.bin.Twice(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero())))))))));
    assume {:id "id303"} _module.bin#Equal(_module.__default.increment($LS($LZ), b13#0), 
      #_module.bin.Twice(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.TwicePlusOne(Lit(#_module.bin.Zero())))))))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/SoftwareFoundations-Basics.dfy(497,3)
    ##b#3 := b13#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#3, Tclass._module.bin(), $Heap);
    assume _module.__default.increment#canCall(b13#0);
    ##b#2 := _module.__default.increment($LS($LZ), b13#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, Tclass._module.bin(), $Heap);
    assume _module.__default.BinToUnary#canCall(_module.__default.increment($LS($LZ), b13#0));
    ##b#4 := b13#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#4, Tclass._module.bin(), $Heap);
    assume _module.__default.BinToUnary#canCall(b13#0);
    ##n#0 := _module.__default.BinToUnary($LS($LZ), b13#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
    ##m#0 := Lit(#_module.Nat.S(Lit(#_module.Nat.O())));
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#0, Tclass._module.Nat(), $Heap);
    assume _module.__default.plus#canCall(_module.__default.BinToUnary($LS($LZ), b13#0), 
      Lit(#_module.Nat.S(Lit(#_module.Nat.O()))));
    assume $IsA#_module.Nat(_module.__default.BinToUnary($LS($LZ), _module.__default.increment($LS($LZ), b13#0)))
       && $IsA#_module.Nat(_module.__default.plus($LS($LZ), 
          _module.__default.BinToUnary($LS($LZ), b13#0), 
          Lit(#_module.Nat.S(Lit(#_module.Nat.O())))))
       && 
      _module.__default.increment#canCall(b13#0)
       && _module.__default.BinToUnary#canCall(_module.__default.increment($LS($LZ), b13#0))
       && 
      _module.__default.BinToUnary#canCall(b13#0)
       && _module.__default.plus#canCall(_module.__default.BinToUnary($LS($LZ), b13#0), 
        Lit(#_module.Nat.S(Lit(#_module.Nat.O()))));
    assert {:id "id304"} {:subsumption 0} _module.Nat#Equal(_module.__default.BinToUnary($LS($LS($LZ)), _module.__default.increment($LS($LS($LZ)), b13#0)), 
      _module.__default.plus($LS($LS($LZ)), 
        _module.__default.BinToUnary($LS($LS($LZ)), b13#0), 
        Lit(#_module.Nat.S(Lit(#_module.Nat.O())))));
    assume {:id "id305"} _module.Nat#Equal(_module.__default.BinToUnary($LS($LZ), _module.__default.increment($LS($LZ), b13#0)), 
      _module.__default.plus($LS($LZ), 
        _module.__default.BinToUnary($LS($LZ), b13#0), 
        Lit(#_module.Nat.S(Lit(#_module.Nat.O())))));
}



// function declaration for _module._default.plus'
function _module.__default.plus_k($ly: LayerType, n#0: DatatypeType, m#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.plus_k
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
    { _module.__default.plus_k($ly, n#0, m#0) } 
    _module.__default.plus_k#canCall(n#0, m#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat()))
       ==> $Is(_module.__default.plus_k($ly, n#0, m#0), Tclass._module.Nat()));
// definition axiom for _module.__default.plus_k (revealed)
axiom {:id "id306"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
    { _module.__default.plus_k($LS($ly), n#0, m#0) } 
    _module.__default.plus_k#canCall(n#0, m#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat()))
       ==> (!_module.Nat.O_q(n#0)
           ==> (var n'#1 := _module.Nat._h0(n#0); _module.__default.plus_k#canCall(n'#1, m#0)))
         && _module.__default.plus_k($LS($ly), n#0, m#0)
           == (if _module.Nat.O_q(n#0)
             then m#0
             else (var n'#0 := _module.Nat._h0(n#0); 
              #_module.Nat.S(_module.__default.plus_k($ly, n'#0, m#0)))));
// definition axiom for _module.__default.plus_k for all literals (revealed)
axiom {:id "id307"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
    {:weight 3} { _module.__default.plus_k($LS($ly), Lit(n#0), Lit(m#0)) } 
    _module.__default.plus_k#canCall(Lit(n#0), Lit(m#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat()))
       ==> (!Lit(_module.Nat.O_q(Lit(n#0)))
           ==> (var n'#3 := Lit(_module.Nat._h0(Lit(n#0))); 
            _module.__default.plus_k#canCall(n'#3, Lit(m#0))))
         && _module.__default.plus_k($LS($ly), Lit(n#0), Lit(m#0))
           == (if _module.Nat.O_q(Lit(n#0))
             then m#0
             else (var n'#2 := Lit(_module.Nat._h0(Lit(n#0))); 
              Lit(#_module.Nat.S(Lit(_module.__default.plus_k($LS($ly), n'#2, Lit(m#0))))))));
}

function _module.__default.plus_k#canCall(n#0: DatatypeType, m#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { _module.__default.plus_k($LS($ly), n#0, m#0) } 
  _module.__default.plus_k($LS($ly), n#0, m#0)
     == _module.__default.plus_k($ly, n#0, m#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { _module.__default.plus_k(AsFuelBottom($ly), n#0, m#0) } 
  _module.__default.plus_k($ly, n#0, m#0)
     == _module.__default.plus_k($LZ, n#0, m#0));

function _module.__default.plus_k#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.plus_k
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType :: 
  { _module.__default.plus_k#requires($ly, n#0, m#0) } 
  $Is(n#0, Tclass._module.Nat()) && $Is(m#0, Tclass._module.Nat())
     ==> _module.__default.plus_k#requires($ly, n#0, m#0) == true);

procedure {:verboseName "plus' (well-formedness)"} CheckWellformed$$_module.__default.plus_k(n#0: DatatypeType where $Is(n#0, Tclass._module.Nat()), 
    m#0: DatatypeType where $Is(m#0, Tclass._module.Nat()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "plus' (well-formedness)"} CheckWellformed$$_module.__default.plus_k(n#0: DatatypeType, m#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var n'#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var ##n#0: DatatypeType;
  var ##m#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.plus_k($LS($LZ), n#0, m#0), Tclass._module.Nat());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == #_module.Nat.O())
        {
            assume {:id "id312"} _module.__default.plus_k($LS($LZ), n#0, m#0) == m#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.plus_k($LS($LZ), n#0, m#0), Tclass._module.Nat());
            return;
        }
        else if (n#0 == #_module.Nat.S(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            havoc n'#Z#0;
            assume {:id "id308"} let#0#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Nat());
            assume {:id "id309"} n'#Z#0 == let#0#0#0;
            ##n#0 := n'#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
            ##m#0 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0, Tclass._module.Nat(), $Heap);
            assert {:id "id310"} DtRank(##n#0) < DtRank(n#0)
               || (DtRank(##n#0) == DtRank(n#0) && DtRank(##m#0) < DtRank(m#0));
            assume _module.__default.plus_k#canCall(n'#Z#0, m#0);
            assume {:id "id311"} _module.__default.plus_k($LS($LZ), n#0, m#0)
               == #_module.Nat.S(_module.__default.plus_k($LS($LZ), n'#Z#0, m#0));
            assume _module.__default.plus_k#canCall(n'#Z#0, m#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.plus_k($LS($LZ), n#0, m#0), Tclass._module.Nat());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.decreasingOnTwo
function _module.__default.decreasingOnTwo($ly: LayerType, n#0: DatatypeType, m#0: DatatypeType, p#0: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for _module.__default.decreasingOnTwo
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType, p#0: DatatypeType :: 
    { _module.__default.decreasingOnTwo($ly, n#0, m#0, p#0) } 
    _module.__default.decreasingOnTwo#canCall(n#0, m#0, p#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat())
           && $Is(p#0, Tclass._module.Nat()))
       ==> $Is(_module.__default.decreasingOnTwo($ly, n#0, m#0, p#0), Tclass._module.Nat()));
// definition axiom for _module.__default.decreasingOnTwo (revealed)
axiom {:id "id313"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType, p#0: DatatypeType :: 
    { _module.__default.decreasingOnTwo($LS($ly), n#0, m#0, p#0) } 
    _module.__default.decreasingOnTwo#canCall(n#0, m#0, p#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat())
           && $Is(p#0, Tclass._module.Nat()))
       ==> (_module.Nat.O_q(p#0)
           ==> 
          !_module.Nat.O_q(n#0)
           ==> (var n'#1 := _module.Nat._h0(n#0); 
            _module.__default.decreasingOnTwo#canCall(n'#1, m#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))))
         && (!_module.Nat.O_q(p#0)
           ==> 
          !_module.Nat.O_q(m#0)
           ==> (var m'#1 := _module.Nat._h0(m#0); 
            _module.__default.decreasingOnTwo#canCall(n#0, m'#1, Lit(#_module.Nat.O()))))
         && _module.__default.decreasingOnTwo($LS($ly), n#0, m#0, p#0)
           == (if _module.Nat.O_q(p#0)
             then (if _module.Nat.O_q(n#0)
               then #_module.Nat.O()
               else (var n'#0 := _module.Nat._h0(n#0); 
                _module.__default.decreasingOnTwo($ly, n'#0, m#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))))
             else (if _module.Nat.O_q(m#0)
               then #_module.Nat.S(Lit(#_module.Nat.O()))
               else (var m'#0 := _module.Nat._h0(m#0); 
                _module.__default.decreasingOnTwo($ly, n#0, m'#0, Lit(#_module.Nat.O()))))));
// definition axiom for _module.__default.decreasingOnTwo for all literals (revealed)
axiom {:id "id314"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType, p#0: DatatypeType :: 
    {:weight 3} { _module.__default.decreasingOnTwo($LS($ly), Lit(n#0), Lit(m#0), Lit(p#0)) } 
    _module.__default.decreasingOnTwo#canCall(Lit(n#0), Lit(m#0), Lit(p#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(m#0, Tclass._module.Nat())
           && $Is(p#0, Tclass._module.Nat()))
       ==> (Lit(_module.Nat.O_q(Lit(p#0)))
           ==> 
          !Lit(_module.Nat.O_q(Lit(n#0)))
           ==> (var n'#3 := Lit(_module.Nat._h0(Lit(n#0))); 
            _module.__default.decreasingOnTwo#canCall(n'#3, Lit(m#0), Lit(#_module.Nat.S(Lit(#_module.Nat.O()))))))
         && (!Lit(_module.Nat.O_q(Lit(p#0)))
           ==> 
          !Lit(_module.Nat.O_q(Lit(m#0)))
           ==> (var m'#3 := Lit(_module.Nat._h0(Lit(m#0))); 
            _module.__default.decreasingOnTwo#canCall(Lit(n#0), m'#3, Lit(#_module.Nat.O()))))
         && _module.__default.decreasingOnTwo($LS($ly), Lit(n#0), Lit(m#0), Lit(p#0))
           == (if _module.Nat.O_q(Lit(p#0))
             then (if _module.Nat.O_q(Lit(n#0))
               then #_module.Nat.O()
               else (var n'#2 := Lit(_module.Nat._h0(Lit(n#0))); 
                Lit(_module.__default.decreasingOnTwo($LS($ly), n'#2, Lit(m#0), Lit(#_module.Nat.S(Lit(#_module.Nat.O())))))))
             else (if _module.Nat.O_q(Lit(m#0))
               then #_module.Nat.S(Lit(#_module.Nat.O()))
               else (var m'#2 := Lit(_module.Nat._h0(Lit(m#0))); 
                Lit(_module.__default.decreasingOnTwo($LS($ly), Lit(n#0), m'#2, Lit(#_module.Nat.O())))))));
}

function _module.__default.decreasingOnTwo#canCall(n#0: DatatypeType, m#0: DatatypeType, p#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType, p#0: DatatypeType :: 
  { _module.__default.decreasingOnTwo($LS($ly), n#0, m#0, p#0) } 
  _module.__default.decreasingOnTwo($LS($ly), n#0, m#0, p#0)
     == _module.__default.decreasingOnTwo($ly, n#0, m#0, p#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType, p#0: DatatypeType :: 
  { _module.__default.decreasingOnTwo(AsFuelBottom($ly), n#0, m#0, p#0) } 
  _module.__default.decreasingOnTwo($ly, n#0, m#0, p#0)
     == _module.__default.decreasingOnTwo($LZ, n#0, m#0, p#0));

function _module.__default.decreasingOnTwo#requires(LayerType, DatatypeType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.decreasingOnTwo
axiom (forall $ly: LayerType, n#0: DatatypeType, m#0: DatatypeType, p#0: DatatypeType :: 
  { _module.__default.decreasingOnTwo#requires($ly, n#0, m#0, p#0) } 
  $Is(n#0, Tclass._module.Nat())
       && $Is(m#0, Tclass._module.Nat())
       && $Is(p#0, Tclass._module.Nat())
     ==> _module.__default.decreasingOnTwo#requires($ly, n#0, m#0, p#0) == true);

procedure {:verboseName "decreasingOnTwo (well-formedness)"} CheckWellformed$$_module.__default.decreasingOnTwo(n#0: DatatypeType where $Is(n#0, Tclass._module.Nat()), 
    m#0: DatatypeType where $Is(m#0, Tclass._module.Nat()), 
    p#0: DatatypeType where $Is(p#0, Tclass._module.Nat()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "decreasingOnTwo (well-formedness)"} CheckWellformed$$_module.__default.decreasingOnTwo(n#0: DatatypeType, m#0: DatatypeType, p#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#2#0: DatatypeType;
  var m'#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var ##n#0: DatatypeType;
  var ##m#0: DatatypeType;
  var ##p#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var n'#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##n#1: DatatypeType;
  var ##m#1: DatatypeType;
  var ##p#1: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.decreasingOnTwo($LS($LZ), n#0, m#0, p#0), Tclass._module.Nat());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (p#0 == #_module.Nat.O())
        {
            if (n#0 == #_module.Nat.O())
            {
                assume {:id "id324"} _module.__default.decreasingOnTwo($LS($LZ), n#0, m#0, p#0)
                   == Lit(#_module.Nat.O());
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.decreasingOnTwo($LS($LZ), n#0, m#0, p#0), Tclass._module.Nat());
                return;
            }
            else if (n#0 == #_module.Nat.S(_mcc#1#0))
            {
                assume $Is(_mcc#1#0, Tclass._module.Nat());
                havoc n'#Z#0;
                assume {:id "id320"} let#1#0#0 == _mcc#1#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#1#0#0, Tclass._module.Nat());
                assume {:id "id321"} n'#Z#0 == let#1#0#0;
                ##n#1 := n'#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1, Tclass._module.Nat(), $Heap);
                ##m#1 := m#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##m#1, Tclass._module.Nat(), $Heap);
                ##p#1 := Lit(#_module.Nat.S(Lit(#_module.Nat.O())));
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#1, Tclass._module.Nat(), $Heap);
                assert {:id "id322"} DtRank(##n#1) < DtRank(n#0)
                   || (DtRank(##n#1) == DtRank(n#0)
                     && (DtRank(##m#1) < DtRank(m#0)
                       || (DtRank(##m#1) == DtRank(m#0) && DtRank(##p#1) < DtRank(p#0))));
                assume _module.__default.decreasingOnTwo#canCall(n'#Z#0, m#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))));
                assume {:id "id323"} _module.__default.decreasingOnTwo($LS($LZ), n#0, m#0, p#0)
                   == _module.__default.decreasingOnTwo($LS($LZ), n'#Z#0, m#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))));
                assume _module.__default.decreasingOnTwo#canCall(n'#Z#0, m#0, Lit(#_module.Nat.S(Lit(#_module.Nat.O()))));
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.decreasingOnTwo($LS($LZ), n#0, m#0, p#0), Tclass._module.Nat());
                return;
            }
            else
            {
                assume false;
            }
        }
        else if (p#0 == #_module.Nat.S(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            if (m#0 == #_module.Nat.O())
            {
                assume {:id "id319"} _module.__default.decreasingOnTwo($LS($LZ), n#0, m#0, p#0)
                   == Lit(#_module.Nat.S(Lit(#_module.Nat.O())));
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.decreasingOnTwo($LS($LZ), n#0, m#0, p#0), Tclass._module.Nat());
                return;
            }
            else if (m#0 == #_module.Nat.S(_mcc#2#0))
            {
                assume $Is(_mcc#2#0, Tclass._module.Nat());
                havoc m'#Z#0;
                assume {:id "id315"} let#0#0#0 == _mcc#2#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#0#0#0, Tclass._module.Nat());
                assume {:id "id316"} m'#Z#0 == let#0#0#0;
                ##n#0 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
                ##m#0 := m'#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##m#0, Tclass._module.Nat(), $Heap);
                ##p#0 := Lit(#_module.Nat.O());
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#0, Tclass._module.Nat(), $Heap);
                assert {:id "id317"} DtRank(##n#0) < DtRank(n#0)
                   || (DtRank(##n#0) == DtRank(n#0)
                     && (DtRank(##m#0) < DtRank(m#0)
                       || (DtRank(##m#0) == DtRank(m#0) && DtRank(##p#0) < DtRank(p#0))));
                assume _module.__default.decreasingOnTwo#canCall(n#0, m'#Z#0, Lit(#_module.Nat.O()));
                assume {:id "id318"} _module.__default.decreasingOnTwo($LS($LZ), n#0, m#0, p#0)
                   == _module.__default.decreasingOnTwo($LS($LZ), n#0, m'#Z#0, Lit(#_module.Nat.O()));
                assume _module.__default.decreasingOnTwo#canCall(n#0, m'#Z#0, Lit(#_module.Nat.O()));
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.decreasingOnTwo($LS($LZ), n#0, m#0, p#0), Tclass._module.Nat());
                return;
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

        assume false;
    }
}



// Constructor function declaration
function #_module.day.monday() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.day.monday()) == ##_module.day.monday;
// Constructor $Is
axiom $Is(#_module.day.monday(), Tclass._module.day());
// Constructor literal
axiom #_module.day.monday() == Lit(#_module.day.monday());
}

const unique ##_module.day.monday: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.day.monday()) == ##_module.day.monday;
}

function _module.day.monday_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.day.monday_q(d) } 
  _module.day.monday_q(d) <==> DatatypeCtorId(d) == ##_module.day.monday);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.day.monday_q(d) } 
  _module.day.monday_q(d) ==> d == #_module.day.monday());

// Constructor function declaration
function #_module.day.tuesday() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.day.tuesday()) == ##_module.day.tuesday;
// Constructor $Is
axiom $Is(#_module.day.tuesday(), Tclass._module.day());
// Constructor literal
axiom #_module.day.tuesday() == Lit(#_module.day.tuesday());
}

const unique ##_module.day.tuesday: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.day.tuesday()) == ##_module.day.tuesday;
}

function _module.day.tuesday_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.day.tuesday_q(d) } 
  _module.day.tuesday_q(d) <==> DatatypeCtorId(d) == ##_module.day.tuesday);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.day.tuesday_q(d) } 
  _module.day.tuesday_q(d) ==> d == #_module.day.tuesday());

// Constructor function declaration
function #_module.day.wednesday() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.day.wednesday()) == ##_module.day.wednesday;
// Constructor $Is
axiom $Is(#_module.day.wednesday(), Tclass._module.day());
// Constructor literal
axiom #_module.day.wednesday() == Lit(#_module.day.wednesday());
}

const unique ##_module.day.wednesday: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.day.wednesday()) == ##_module.day.wednesday;
}

function _module.day.wednesday_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.day.wednesday_q(d) } 
  _module.day.wednesday_q(d) <==> DatatypeCtorId(d) == ##_module.day.wednesday);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.day.wednesday_q(d) } 
  _module.day.wednesday_q(d) ==> d == #_module.day.wednesday());

// Constructor function declaration
function #_module.day.thursday() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.day.thursday()) == ##_module.day.thursday;
// Constructor $Is
axiom $Is(#_module.day.thursday(), Tclass._module.day());
// Constructor literal
axiom #_module.day.thursday() == Lit(#_module.day.thursday());
}

const unique ##_module.day.thursday: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.day.thursday()) == ##_module.day.thursday;
}

function _module.day.thursday_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.day.thursday_q(d) } 
  _module.day.thursday_q(d) <==> DatatypeCtorId(d) == ##_module.day.thursday);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.day.thursday_q(d) } 
  _module.day.thursday_q(d) ==> d == #_module.day.thursday());

// Constructor function declaration
function #_module.day.friday() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.day.friday()) == ##_module.day.friday;
// Constructor $Is
axiom $Is(#_module.day.friday(), Tclass._module.day());
// Constructor literal
axiom #_module.day.friday() == Lit(#_module.day.friday());
}

const unique ##_module.day.friday: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.day.friday()) == ##_module.day.friday;
}

function _module.day.friday_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.day.friday_q(d) } 
  _module.day.friday_q(d) <==> DatatypeCtorId(d) == ##_module.day.friday);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.day.friday_q(d) } 
  _module.day.friday_q(d) ==> d == #_module.day.friday());

// Constructor function declaration
function #_module.day.saturday() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.day.saturday()) == ##_module.day.saturday;
// Constructor $Is
axiom $Is(#_module.day.saturday(), Tclass._module.day());
// Constructor literal
axiom #_module.day.saturday() == Lit(#_module.day.saturday());
}

const unique ##_module.day.saturday: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.day.saturday()) == ##_module.day.saturday;
}

function _module.day.saturday_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.day.saturday_q(d) } 
  _module.day.saturday_q(d) <==> DatatypeCtorId(d) == ##_module.day.saturday);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.day.saturday_q(d) } 
  _module.day.saturday_q(d) ==> d == #_module.day.saturday());

// Constructor function declaration
function #_module.day.sunday() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.day.sunday()) == ##_module.day.sunday;
// Constructor $Is
axiom $Is(#_module.day.sunday(), Tclass._module.day());
// Constructor literal
axiom #_module.day.sunday() == Lit(#_module.day.sunday());
}

const unique ##_module.day.sunday: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.day.sunday()) == ##_module.day.sunday;
}

function _module.day.sunday_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.day.sunday_q(d) } 
  _module.day.sunday_q(d) <==> DatatypeCtorId(d) == ##_module.day.sunday);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.day.sunday_q(d) } 
  _module.day.sunday_q(d) ==> d == #_module.day.sunday());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.day(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.day())
     ==> $IsAlloc(d, Tclass._module.day(), $h));

// Depth-one case-split function
function $IsA#_module.day(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.day(d) } 
  $IsA#_module.day(d)
     ==> _module.day.monday_q(d)
       || _module.day.tuesday_q(d)
       || _module.day.wednesday_q(d)
       || _module.day.thursday_q(d)
       || _module.day.friday_q(d)
       || _module.day.saturday_q(d)
       || _module.day.sunday_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.day.sunday_q(d), $Is(d, Tclass._module.day()) } 
    { _module.day.saturday_q(d), $Is(d, Tclass._module.day()) } 
    { _module.day.friday_q(d), $Is(d, Tclass._module.day()) } 
    { _module.day.thursday_q(d), $Is(d, Tclass._module.day()) } 
    { _module.day.wednesday_q(d), $Is(d, Tclass._module.day()) } 
    { _module.day.tuesday_q(d), $Is(d, Tclass._module.day()) } 
    { _module.day.monday_q(d), $Is(d, Tclass._module.day()) } 
  $Is(d, Tclass._module.day())
     ==> _module.day.monday_q(d)
       || _module.day.tuesday_q(d)
       || _module.day.wednesday_q(d)
       || _module.day.thursday_q(d)
       || _module.day.friday_q(d)
       || _module.day.saturday_q(d)
       || _module.day.sunday_q(d));

// Datatype extensional equality declaration
function _module.day#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.day.monday
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.day#Equal(a, b), _module.day.monday_q(a) } 
    { _module.day#Equal(a, b), _module.day.monday_q(b) } 
  _module.day.monday_q(a) && _module.day.monday_q(b) ==> _module.day#Equal(a, b));

// Datatype extensional equality definition: #_module.day.tuesday
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.day#Equal(a, b), _module.day.tuesday_q(a) } 
    { _module.day#Equal(a, b), _module.day.tuesday_q(b) } 
  _module.day.tuesday_q(a) && _module.day.tuesday_q(b) ==> _module.day#Equal(a, b));

// Datatype extensional equality definition: #_module.day.wednesday
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.day#Equal(a, b), _module.day.wednesday_q(a) } 
    { _module.day#Equal(a, b), _module.day.wednesday_q(b) } 
  _module.day.wednesday_q(a) && _module.day.wednesday_q(b)
     ==> _module.day#Equal(a, b));

// Datatype extensional equality definition: #_module.day.thursday
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.day#Equal(a, b), _module.day.thursday_q(a) } 
    { _module.day#Equal(a, b), _module.day.thursday_q(b) } 
  _module.day.thursday_q(a) && _module.day.thursday_q(b)
     ==> _module.day#Equal(a, b));

// Datatype extensional equality definition: #_module.day.friday
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.day#Equal(a, b), _module.day.friday_q(a) } 
    { _module.day#Equal(a, b), _module.day.friday_q(b) } 
  _module.day.friday_q(a) && _module.day.friday_q(b) ==> _module.day#Equal(a, b));

// Datatype extensional equality definition: #_module.day.saturday
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.day#Equal(a, b), _module.day.saturday_q(a) } 
    { _module.day#Equal(a, b), _module.day.saturday_q(b) } 
  _module.day.saturday_q(a) && _module.day.saturday_q(b)
     ==> _module.day#Equal(a, b));

// Datatype extensional equality definition: #_module.day.sunday
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.day#Equal(a, b), _module.day.sunday_q(a) } 
    { _module.day#Equal(a, b), _module.day.sunday_q(b) } 
  _module.day.sunday_q(a) && _module.day.sunday_q(b) ==> _module.day#Equal(a, b));

// Datatype extensionality axiom: _module.day
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.day#Equal(a, b) } 
  _module.day#Equal(a, b) <==> a == b);

const unique class._module.day: ClassName;

// Constructor function declaration
function #_module.Bool.True() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Bool.True()) == ##_module.Bool.True;
// Constructor $Is
axiom $Is(#_module.Bool.True(), Tclass._module.Bool());
// Constructor literal
axiom #_module.Bool.True() == Lit(#_module.Bool.True());
}

const unique ##_module.Bool.True: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Bool.True()) == ##_module.Bool.True;
}

function _module.Bool.True_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Bool.True_q(d) } 
  _module.Bool.True_q(d) <==> DatatypeCtorId(d) == ##_module.Bool.True);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Bool.True_q(d) } 
  _module.Bool.True_q(d) ==> d == #_module.Bool.True());

// Constructor function declaration
function #_module.Bool.False() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Bool.False()) == ##_module.Bool.False;
// Constructor $Is
axiom $Is(#_module.Bool.False(), Tclass._module.Bool());
// Constructor literal
axiom #_module.Bool.False() == Lit(#_module.Bool.False());
}

const unique ##_module.Bool.False: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Bool.False()) == ##_module.Bool.False;
}

function _module.Bool.False_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Bool.False_q(d) } 
  _module.Bool.False_q(d) <==> DatatypeCtorId(d) == ##_module.Bool.False);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Bool.False_q(d) } 
  _module.Bool.False_q(d) ==> d == #_module.Bool.False());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Bool(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Bool())
     ==> $IsAlloc(d, Tclass._module.Bool(), $h));

// Depth-one case-split function
function $IsA#_module.Bool(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Bool(d) } 
  $IsA#_module.Bool(d) ==> _module.Bool.True_q(d) || _module.Bool.False_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Bool.False_q(d), $Is(d, Tclass._module.Bool()) } 
    { _module.Bool.True_q(d), $Is(d, Tclass._module.Bool()) } 
  $Is(d, Tclass._module.Bool())
     ==> _module.Bool.True_q(d) || _module.Bool.False_q(d));

// Datatype extensional equality declaration
function _module.Bool#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Bool.True
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Bool#Equal(a, b), _module.Bool.True_q(a) } 
    { _module.Bool#Equal(a, b), _module.Bool.True_q(b) } 
  _module.Bool.True_q(a) && _module.Bool.True_q(b) ==> _module.Bool#Equal(a, b));

// Datatype extensional equality definition: #_module.Bool.False
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Bool#Equal(a, b), _module.Bool.False_q(a) } 
    { _module.Bool#Equal(a, b), _module.Bool.False_q(b) } 
  _module.Bool.False_q(a) && _module.Bool.False_q(b) ==> _module.Bool#Equal(a, b));

// Datatype extensionality axiom: _module.Bool
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Bool#Equal(a, b) } 
  _module.Bool#Equal(a, b) <==> a == b);

const unique class._module.Bool: ClassName;

// Constructor function declaration
function #_module.Nat.O() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Nat.O()) == ##_module.Nat.O;
// Constructor $Is
axiom $Is(#_module.Nat.O(), Tclass._module.Nat());
// Constructor literal
axiom #_module.Nat.O() == Lit(#_module.Nat.O());
}

const unique ##_module.Nat.O: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Nat.O()) == ##_module.Nat.O;
}

function _module.Nat.O_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Nat.O_q(d) } 
  _module.Nat.O_q(d) <==> DatatypeCtorId(d) == ##_module.Nat.O);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Nat.O_q(d) } 
  _module.Nat.O_q(d) ==> d == #_module.Nat.O());

// Constructor function declaration
function #_module.Nat.S(DatatypeType) : DatatypeType;

const unique ##_module.Nat.S: DtCtorId
uses {
// Constructor identifier
axiom (forall a#40#0#0: DatatypeType :: 
  { #_module.Nat.S(a#40#0#0) } 
  DatatypeCtorId(#_module.Nat.S(a#40#0#0)) == ##_module.Nat.S);
}

function _module.Nat.S_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Nat.S_q(d) } 
  _module.Nat.S_q(d) <==> DatatypeCtorId(d) == ##_module.Nat.S);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Nat.S_q(d) } 
  _module.Nat.S_q(d)
     ==> (exists a#41#0#0: DatatypeType :: d == #_module.Nat.S(a#41#0#0)));

// Constructor $Is
axiom (forall a#42#0#0: DatatypeType :: 
  { $Is(#_module.Nat.S(a#42#0#0), Tclass._module.Nat()) } 
  $Is(#_module.Nat.S(a#42#0#0), Tclass._module.Nat())
     <==> $Is(a#42#0#0, Tclass._module.Nat()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Nat._h0(d), Tclass._module.Nat(), $h) } 
  $IsGoodHeap($h) && _module.Nat.S_q(d) && $IsAlloc(d, Tclass._module.Nat(), $h)
     ==> $IsAlloc(_module.Nat._h0(d), Tclass._module.Nat(), $h));

// Constructor literal
axiom (forall a#43#0#0: DatatypeType :: 
  { #_module.Nat.S(Lit(a#43#0#0)) } 
  #_module.Nat.S(Lit(a#43#0#0)) == Lit(#_module.Nat.S(a#43#0#0)));

function _module.Nat._h0(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#44#0#0: DatatypeType :: 
  { #_module.Nat.S(a#44#0#0) } 
  _module.Nat._h0(#_module.Nat.S(a#44#0#0)) == a#44#0#0);

// Inductive rank
axiom (forall a#45#0#0: DatatypeType :: 
  { #_module.Nat.S(a#45#0#0) } 
  DtRank(a#45#0#0) < DtRank(#_module.Nat.S(a#45#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Nat(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Nat())
     ==> $IsAlloc(d, Tclass._module.Nat(), $h));

// Depth-one case-split function
function $IsA#_module.Nat(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Nat(d) } 
  $IsA#_module.Nat(d) ==> _module.Nat.O_q(d) || _module.Nat.S_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Nat.S_q(d), $Is(d, Tclass._module.Nat()) } 
    { _module.Nat.O_q(d), $Is(d, Tclass._module.Nat()) } 
  $Is(d, Tclass._module.Nat()) ==> _module.Nat.O_q(d) || _module.Nat.S_q(d));

// Datatype extensional equality declaration
function _module.Nat#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Nat.O
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Nat#Equal(a, b), _module.Nat.O_q(a) } 
    { _module.Nat#Equal(a, b), _module.Nat.O_q(b) } 
  _module.Nat.O_q(a) && _module.Nat.O_q(b) ==> _module.Nat#Equal(a, b));

// Datatype extensional equality definition: #_module.Nat.S
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Nat#Equal(a, b), _module.Nat.S_q(a) } 
    { _module.Nat#Equal(a, b), _module.Nat.S_q(b) } 
  _module.Nat.S_q(a) && _module.Nat.S_q(b)
     ==> (_module.Nat#Equal(a, b)
       <==> _module.Nat#Equal(_module.Nat._h0(a), _module.Nat._h0(b))));

// Datatype extensionality axiom: _module.Nat
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Nat#Equal(a, b) } 
  _module.Nat#Equal(a, b) <==> a == b);

const unique class._module.Nat: ClassName;

// Constructor function declaration
function #_module.bin.Zero() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.bin.Zero()) == ##_module.bin.Zero;
// Constructor $Is
axiom $Is(#_module.bin.Zero(), Tclass._module.bin());
// Constructor literal
axiom #_module.bin.Zero() == Lit(#_module.bin.Zero());
}

const unique ##_module.bin.Zero: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.bin.Zero()) == ##_module.bin.Zero;
}

function _module.bin.Zero_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.bin.Zero_q(d) } 
  _module.bin.Zero_q(d) <==> DatatypeCtorId(d) == ##_module.bin.Zero);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.bin.Zero_q(d) } 
  _module.bin.Zero_q(d) ==> d == #_module.bin.Zero());

// Constructor function declaration
function #_module.bin.Twice(DatatypeType) : DatatypeType;

const unique ##_module.bin.Twice: DtCtorId
uses {
// Constructor identifier
axiom (forall a#50#0#0: DatatypeType :: 
  { #_module.bin.Twice(a#50#0#0) } 
  DatatypeCtorId(#_module.bin.Twice(a#50#0#0)) == ##_module.bin.Twice);
}

function _module.bin.Twice_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.bin.Twice_q(d) } 
  _module.bin.Twice_q(d) <==> DatatypeCtorId(d) == ##_module.bin.Twice);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.bin.Twice_q(d) } 
  _module.bin.Twice_q(d)
     ==> (exists a#51#0#0: DatatypeType :: d == #_module.bin.Twice(a#51#0#0)));

// Constructor $Is
axiom (forall a#52#0#0: DatatypeType :: 
  { $Is(#_module.bin.Twice(a#52#0#0), Tclass._module.bin()) } 
  $Is(#_module.bin.Twice(a#52#0#0), Tclass._module.bin())
     <==> $Is(a#52#0#0, Tclass._module.bin()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.bin._h1(d), Tclass._module.bin(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.bin.Twice_q(d)
       && $IsAlloc(d, Tclass._module.bin(), $h)
     ==> $IsAlloc(_module.bin._h1(d), Tclass._module.bin(), $h));

// Constructor literal
axiom (forall a#53#0#0: DatatypeType :: 
  { #_module.bin.Twice(Lit(a#53#0#0)) } 
  #_module.bin.Twice(Lit(a#53#0#0)) == Lit(#_module.bin.Twice(a#53#0#0)));

function _module.bin._h1(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#54#0#0: DatatypeType :: 
  { #_module.bin.Twice(a#54#0#0) } 
  _module.bin._h1(#_module.bin.Twice(a#54#0#0)) == a#54#0#0);

// Inductive rank
axiom (forall a#55#0#0: DatatypeType :: 
  { #_module.bin.Twice(a#55#0#0) } 
  DtRank(a#55#0#0) < DtRank(#_module.bin.Twice(a#55#0#0)));

// Constructor function declaration
function #_module.bin.TwicePlusOne(DatatypeType) : DatatypeType;

const unique ##_module.bin.TwicePlusOne: DtCtorId
uses {
// Constructor identifier
axiom (forall a#56#0#0: DatatypeType :: 
  { #_module.bin.TwicePlusOne(a#56#0#0) } 
  DatatypeCtorId(#_module.bin.TwicePlusOne(a#56#0#0))
     == ##_module.bin.TwicePlusOne);
}

function _module.bin.TwicePlusOne_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.bin.TwicePlusOne_q(d) } 
  _module.bin.TwicePlusOne_q(d)
     <==> DatatypeCtorId(d) == ##_module.bin.TwicePlusOne);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.bin.TwicePlusOne_q(d) } 
  _module.bin.TwicePlusOne_q(d)
     ==> (exists a#57#0#0: DatatypeType :: d == #_module.bin.TwicePlusOne(a#57#0#0)));

// Constructor $Is
axiom (forall a#58#0#0: DatatypeType :: 
  { $Is(#_module.bin.TwicePlusOne(a#58#0#0), Tclass._module.bin()) } 
  $Is(#_module.bin.TwicePlusOne(a#58#0#0), Tclass._module.bin())
     <==> $Is(a#58#0#0, Tclass._module.bin()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.bin._h2(d), Tclass._module.bin(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.bin.TwicePlusOne_q(d)
       && $IsAlloc(d, Tclass._module.bin(), $h)
     ==> $IsAlloc(_module.bin._h2(d), Tclass._module.bin(), $h));

// Constructor literal
axiom (forall a#59#0#0: DatatypeType :: 
  { #_module.bin.TwicePlusOne(Lit(a#59#0#0)) } 
  #_module.bin.TwicePlusOne(Lit(a#59#0#0))
     == Lit(#_module.bin.TwicePlusOne(a#59#0#0)));

function _module.bin._h2(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#60#0#0: DatatypeType :: 
  { #_module.bin.TwicePlusOne(a#60#0#0) } 
  _module.bin._h2(#_module.bin.TwicePlusOne(a#60#0#0)) == a#60#0#0);

// Inductive rank
axiom (forall a#61#0#0: DatatypeType :: 
  { #_module.bin.TwicePlusOne(a#61#0#0) } 
  DtRank(a#61#0#0) < DtRank(#_module.bin.TwicePlusOne(a#61#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.bin(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.bin())
     ==> $IsAlloc(d, Tclass._module.bin(), $h));

// Depth-one case-split function
function $IsA#_module.bin(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.bin(d) } 
  $IsA#_module.bin(d)
     ==> _module.bin.Zero_q(d) || _module.bin.Twice_q(d) || _module.bin.TwicePlusOne_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.bin.TwicePlusOne_q(d), $Is(d, Tclass._module.bin()) } 
    { _module.bin.Twice_q(d), $Is(d, Tclass._module.bin()) } 
    { _module.bin.Zero_q(d), $Is(d, Tclass._module.bin()) } 
  $Is(d, Tclass._module.bin())
     ==> _module.bin.Zero_q(d) || _module.bin.Twice_q(d) || _module.bin.TwicePlusOne_q(d));

// Datatype extensional equality declaration
function _module.bin#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.bin.Zero
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.bin#Equal(a, b), _module.bin.Zero_q(a) } 
    { _module.bin#Equal(a, b), _module.bin.Zero_q(b) } 
  _module.bin.Zero_q(a) && _module.bin.Zero_q(b) ==> _module.bin#Equal(a, b));

// Datatype extensional equality definition: #_module.bin.Twice
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.bin#Equal(a, b), _module.bin.Twice_q(a) } 
    { _module.bin#Equal(a, b), _module.bin.Twice_q(b) } 
  _module.bin.Twice_q(a) && _module.bin.Twice_q(b)
     ==> (_module.bin#Equal(a, b)
       <==> _module.bin#Equal(_module.bin._h1(a), _module.bin._h1(b))));

// Datatype extensional equality definition: #_module.bin.TwicePlusOne
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.bin#Equal(a, b), _module.bin.TwicePlusOne_q(a) } 
    { _module.bin#Equal(a, b), _module.bin.TwicePlusOne_q(b) } 
  _module.bin.TwicePlusOne_q(a) && _module.bin.TwicePlusOne_q(b)
     ==> (_module.bin#Equal(a, b)
       <==> _module.bin#Equal(_module.bin._h2(a), _module.bin._h2(b))));

// Datatype extensionality axiom: _module.bin
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.bin#Equal(a, b) } 
  _module.bin#Equal(a, b) <==> a == b);

const unique class._module.bin: ClassName;

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

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;

const unique tytagFamily$day: TyTagFamily;

const unique tytagFamily$Bool: TyTagFamily;

const unique tytagFamily$Nat: TyTagFamily;

const unique tytagFamily$bin: TyTagFamily;
