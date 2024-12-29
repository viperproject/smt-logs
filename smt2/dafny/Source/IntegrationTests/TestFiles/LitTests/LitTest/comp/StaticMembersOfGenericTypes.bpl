// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy

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

// Constructor function declaration
function #_System._tuple#3._#Make3(Box, Box, Box) : DatatypeType;

const unique ##_System._tuple#3._#Make3: DtCtorId
uses {
// Constructor identifier
axiom (forall a#12#0#0: Box, a#12#1#0: Box, a#12#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#12#0#0, a#12#1#0, a#12#2#0) } 
  DatatypeCtorId(#_System._tuple#3._#Make3(a#12#0#0, a#12#1#0, a#12#2#0))
     == ##_System._tuple#3._#Make3);
}

function _System.Tuple3.___hMake3_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple3.___hMake3_q(d) } 
  _System.Tuple3.___hMake3_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#3._#Make3);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple3.___hMake3_q(d) } 
  _System.Tuple3.___hMake3_q(d)
     ==> (exists a#13#0#0: Box, a#13#1#0: Box, a#13#2#0: Box :: 
      d == #_System._tuple#3._#Make3(a#13#0#0, a#13#1#0, a#13#2#0)));

function Tclass._System.Tuple3(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.Tuple3: TyTag;

// Tclass._System.Tuple3 Tag
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tag(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
       == Tagclass._System.Tuple3
     && TagFamily(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
       == tytagFamily$_tuple#3);

function Tclass._System.Tuple3_0(Ty) : Ty;

// Tclass._System.Tuple3 injectivity 0
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tclass._System.Tuple3_0(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     == _System._tuple#3$T0);

function Tclass._System.Tuple3_1(Ty) : Ty;

// Tclass._System.Tuple3 injectivity 1
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tclass._System.Tuple3_1(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     == _System._tuple#3$T1);

function Tclass._System.Tuple3_2(Ty) : Ty;

// Tclass._System.Tuple3 injectivity 2
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tclass._System.Tuple3_2(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     == _System._tuple#3$T2);

// Box/unbox axiom for Tclass._System.Tuple3
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)) } 
  $IsBox(bx, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)));

// Constructor $Is
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    a#14#0#0: Box, 
    a#14#1#0: Box, 
    a#14#2#0: Box :: 
  { $Is(#_System._tuple#3._#Make3(a#14#0#0, a#14#1#0, a#14#2#0), 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)) } 
  $Is(#_System._tuple#3._#Make3(a#14#0#0, a#14#1#0, a#14#2#0), 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     <==> $IsBox(a#14#0#0, _System._tuple#3$T0)
       && $IsBox(a#14#1#0, _System._tuple#3$T1)
       && $IsBox(a#14#2#0, _System._tuple#3$T2));

// Constructor $IsAlloc
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    a#14#0#0: Box, 
    a#14#1#0: Box, 
    a#14#2#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#3._#Make3(a#14#0#0, a#14#1#0, a#14#2#0), 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#3._#Make3(a#14#0#0, a#14#1#0, a#14#2#0), 
        Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
        $h)
       <==> $IsAllocBox(a#14#0#0, _System._tuple#3$T0, $h)
         && $IsAllocBox(a#14#1#0, _System._tuple#3$T1, $h)
         && $IsAllocBox(a#14#2#0, _System._tuple#3$T2, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3._0(d), _System._tuple#3$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3.___hMake3_q(d)
       && (exists _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3._0(d), _System._tuple#3$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3._1(d), _System._tuple#3$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3.___hMake3_q(d)
       && (exists _System._tuple#3$T0: Ty, _System._tuple#3$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3._1(d), _System._tuple#3$T1, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3$T2: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3._2(d), _System._tuple#3$T2, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3.___hMake3_q(d)
       && (exists _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3._2(d), _System._tuple#3$T2, $h));

// Constructor literal
axiom (forall a#15#0#0: Box, a#15#1#0: Box, a#15#2#0: Box :: 
  { #_System._tuple#3._#Make3(Lit(a#15#0#0), Lit(a#15#1#0), Lit(a#15#2#0)) } 
  #_System._tuple#3._#Make3(Lit(a#15#0#0), Lit(a#15#1#0), Lit(a#15#2#0))
     == Lit(#_System._tuple#3._#Make3(a#15#0#0, a#15#1#0, a#15#2#0)));

function _System.Tuple3._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#16#0#0: Box, a#16#1#0: Box, a#16#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#16#0#0, a#16#1#0, a#16#2#0) } 
  _System.Tuple3._0(#_System._tuple#3._#Make3(a#16#0#0, a#16#1#0, a#16#2#0))
     == a#16#0#0);

// Inductive rank
axiom (forall a#17#0#0: Box, a#17#1#0: Box, a#17#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#17#0#0, a#17#1#0, a#17#2#0) } 
  BoxRank(a#17#0#0)
     < DtRank(#_System._tuple#3._#Make3(a#17#0#0, a#17#1#0, a#17#2#0)));

function _System.Tuple3._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#18#0#0: Box, a#18#1#0: Box, a#18#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#18#0#0, a#18#1#0, a#18#2#0) } 
  _System.Tuple3._1(#_System._tuple#3._#Make3(a#18#0#0, a#18#1#0, a#18#2#0))
     == a#18#1#0);

// Inductive rank
axiom (forall a#19#0#0: Box, a#19#1#0: Box, a#19#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#19#0#0, a#19#1#0, a#19#2#0) } 
  BoxRank(a#19#1#0)
     < DtRank(#_System._tuple#3._#Make3(a#19#0#0, a#19#1#0, a#19#2#0)));

function _System.Tuple3._2(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#20#0#0: Box, a#20#1#0: Box, a#20#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#20#0#0, a#20#1#0, a#20#2#0) } 
  _System.Tuple3._2(#_System._tuple#3._#Make3(a#20#0#0, a#20#1#0, a#20#2#0))
     == a#20#2#0);

// Inductive rank
axiom (forall a#21#0#0: Box, a#21#1#0: Box, a#21#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#21#0#0, a#21#1#0, a#21#2#0) } 
  BoxRank(a#21#2#0)
     < DtRank(#_System._tuple#3._#Make3(a#21#0#0, a#21#1#0, a#21#2#0)));

// Depth-one case-split function
function $IsA#_System.Tuple3(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple3(d) } 
  $IsA#_System.Tuple3(d) ==> _System.Tuple3.___hMake3_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    d: DatatypeType :: 
  { _System.Tuple3.___hMake3_q(d), $Is(d, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)) } 
  $Is(d, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     ==> _System.Tuple3.___hMake3_q(d));

// Datatype extensional equality declaration
function _System.Tuple3#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#3._#Make3
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple3#Equal(a, b) } 
  _System.Tuple3#Equal(a, b)
     <==> _System.Tuple3._0(a) == _System.Tuple3._0(b)
       && _System.Tuple3._1(a) == _System.Tuple3._1(b)
       && _System.Tuple3._2(a) == _System.Tuple3._2(b));

// Datatype extensionality axiom: _System._tuple#3
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple3#Equal(a, b) } 
  _System.Tuple3#Equal(a, b) <==> a == b);

const unique class._System.Tuple3: ClassName;

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

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(4,15)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id0"} Call$$_module.__default.GenericClass();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(5,17)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1"} Call$$_module.__default.FunctionValues();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(6,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id2"} Call$$_module.__default.Coercions();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "GenericClass (well-formedness)"} CheckWellFormed$$_module.__default.GenericClass();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericClass (call)"} Call$$_module.__default.GenericClass();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GenericClass (correctness)"} Impl$$_module.__default.GenericClass() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function _module.Class.F#Handle(_module.Class$A: Ty, _module.Class.F$B: Ty) : HandleType;

// function declaration for _module.Class.F
function _module.Class.F(_module.Class$A: Ty, _module.Class.F$B: Ty, a#0: Box, b#0: Box) : DatatypeType
uses {
// consequence axiom for _module.Class.F
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.Class$A: Ty, _module.Class.F$B: Ty, a#0: Box, b#0: Box :: 
    { _module.Class.F(_module.Class$A, _module.Class.F$B, a#0, b#0) } 
    _module.Class.F#canCall(_module.Class$A, _module.Class.F$B, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(a#0, _module.Class$A)
           && $IsBox(b#0, _module.Class.F$B))
       ==> $Is(_module.Class.F(_module.Class$A, _module.Class.F$B, a#0, b#0), 
        Tclass._System.Tuple2(_module.Class$A, _module.Class.F$B)));
// alloc consequence axiom for _module.Class.F
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module.Class$A: Ty, _module.Class.F$B: Ty, a#0: Box, b#0: Box :: 
    { $IsAlloc(_module.Class.F(_module.Class$A, _module.Class.F$B, a#0, b#0), 
        Tclass._System.Tuple2(_module.Class$A, _module.Class.F$B), 
        $Heap) } 
    (_module.Class.F#canCall(_module.Class$A, _module.Class.F$B, a#0, b#0)
           || (0 < $FunctionContextHeight
             && 
            $IsBox(a#0, _module.Class$A)
             && $IsAllocBox(a#0, _module.Class$A, $Heap)
             && 
            $IsBox(b#0, _module.Class.F$B)
             && $IsAllocBox(b#0, _module.Class.F$B, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.Class.F(_module.Class$A, _module.Class.F$B, a#0, b#0), 
        Tclass._System.Tuple2(_module.Class$A, _module.Class.F$B), 
        $Heap));
// definition axiom for _module.Class.F (revealed)
axiom {:id "id150"} 0 <= $FunctionContextHeight
   ==> (forall _module.Class$A: Ty, _module.Class.F$B: Ty, a#0: Box, b#0: Box :: 
    { _module.Class.F(_module.Class$A, _module.Class.F$B, a#0, b#0) } 
    _module.Class.F#canCall(_module.Class$A, _module.Class.F$B, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(a#0, _module.Class$A)
           && $IsBox(b#0, _module.Class.F$B))
       ==> _module.Class.F(_module.Class$A, _module.Class.F$B, a#0, b#0)
         == #_System._tuple#2._#Make2(a#0, b#0));
// definition axiom for _module.Class.F for all literals (revealed)
axiom {:id "id151"} 0 <= $FunctionContextHeight
   ==> (forall _module.Class$A: Ty, _module.Class.F$B: Ty, a#0: Box, b#0: Box :: 
    {:weight 3} { _module.Class.F(_module.Class$A, _module.Class.F$B, Lit(a#0), Lit(b#0)) } 
    _module.Class.F#canCall(_module.Class$A, _module.Class.F$B, Lit(a#0), Lit(b#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(a#0, _module.Class$A)
           && $IsBox(b#0, _module.Class.F$B))
       ==> _module.Class.F(_module.Class$A, _module.Class.F$B, Lit(a#0), Lit(b#0))
         == Lit(#_System._tuple#2._#Make2(Lit(a#0), Lit(b#0))));
}

function _module.Class.F#canCall(_module.Class$A: Ty, _module.Class.F$B: Ty, a#0: Box, b#0: Box) : bool;

axiom (forall _module.Class$A: Ty, 
    _module.Class.F$B: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Apply2(_module.Class$A, 
      _module.Class.F$B, 
      Tclass._System.Tuple2(_module.Class$A, _module.Class.F$B), 
      $heap, 
      _module.Class.F#Handle(_module.Class$A, _module.Class.F$B), 
      $fh$0x#0, 
      $fh$0x#1) } 
  Apply2(_module.Class$A, 
      _module.Class.F$B, 
      Tclass._System.Tuple2(_module.Class$A, _module.Class.F$B), 
      $heap, 
      _module.Class.F#Handle(_module.Class$A, _module.Class.F$B), 
      $fh$0x#0, 
      $fh$0x#1)
     == $Box(_module.Class.F(_module.Class$A, _module.Class.F$B, $fh$0x#0, $fh$0x#1)));

axiom (forall _module.Class$A: Ty, 
    _module.Class.F$B: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Requires2(_module.Class$A, 
      _module.Class.F$B, 
      Tclass._System.Tuple2(_module.Class$A, _module.Class.F$B), 
      $heap, 
      _module.Class.F#Handle(_module.Class$A, _module.Class.F$B), 
      $fh$0x#0, 
      $fh$0x#1) } 
  Requires2(_module.Class$A, 
      _module.Class.F$B, 
      Tclass._System.Tuple2(_module.Class$A, _module.Class.F$B), 
      $heap, 
      _module.Class.F#Handle(_module.Class$A, _module.Class.F$B), 
      $fh$0x#0, 
      $fh$0x#1)
     == _module.Class.F#requires(_module.Class$A, _module.Class.F$B, $fh$0x#0, $fh$0x#1));

axiom (forall $bx: Box, 
    _module.Class$A: Ty, 
    _module.Class.F$B: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Set#IsMember(Reads2(_module.Class$A, 
        _module.Class.F$B, 
        Tclass._System.Tuple2(_module.Class$A, _module.Class.F$B), 
        $heap, 
        _module.Class.F#Handle(_module.Class$A, _module.Class.F$B), 
        $fh$0x#0, 
        $fh$0x#1), 
      $bx) } 
  Set#IsMember(Reads2(_module.Class$A, 
        _module.Class.F$B, 
        Tclass._System.Tuple2(_module.Class$A, _module.Class.F$B), 
        $heap, 
        _module.Class.F#Handle(_module.Class$A, _module.Class.F$B), 
        $fh$0x#0, 
        $fh$0x#1), 
      $bx)
     == false);

axiom (forall _module.Class$A: Ty, 
    _module.Class.F$B: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { _module.Class.F(_module.Class$A, _module.Class.F$B, $fh$0x#0, $fh$0x#1), $IsGoodHeap($heap) } 
  _module.Class.F(_module.Class$A, _module.Class.F$B, $fh$0x#0, $fh$0x#1)
     == $Unbox(Apply2(_module.Class$A, 
        _module.Class.F$B, 
        Tclass._System.Tuple2(_module.Class$A, _module.Class.F$B), 
        $heap, 
        _module.Class.F#Handle(_module.Class$A, _module.Class.F$B), 
        $fh$0x#0, 
        $fh$0x#1)): DatatypeType);

function _module.Datatype.F#Handle(_module.Datatype$A: Ty, _module.Datatype.F$B: Ty) : HandleType;

// function declaration for _module.Datatype.F
function _module.Datatype.F(_module.Datatype$A: Ty, _module.Datatype.F$B: Ty, a#0: Box, b#0: Box)
   : DatatypeType
uses {
// consequence axiom for _module.Datatype.F
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.Datatype$A: Ty, _module.Datatype.F$B: Ty, a#0: Box, b#0: Box :: 
    { _module.Datatype.F(_module.Datatype$A, _module.Datatype.F$B, a#0, b#0) } 
    _module.Datatype.F#canCall(_module.Datatype$A, _module.Datatype.F$B, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(a#0, _module.Datatype$A)
           && $IsBox(b#0, _module.Datatype.F$B))
       ==> $Is(_module.Datatype.F(_module.Datatype$A, _module.Datatype.F$B, a#0, b#0), 
        Tclass._System.Tuple2(_module.Datatype$A, _module.Datatype.F$B)));
// alloc consequence axiom for _module.Datatype.F
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module.Datatype$A: Ty, 
      _module.Datatype.F$B: Ty, 
      a#0: Box, 
      b#0: Box :: 
    { $IsAlloc(_module.Datatype.F(_module.Datatype$A, _module.Datatype.F$B, a#0, b#0), 
        Tclass._System.Tuple2(_module.Datatype$A, _module.Datatype.F$B), 
        $Heap) } 
    (_module.Datatype.F#canCall(_module.Datatype$A, _module.Datatype.F$B, a#0, b#0)
           || (0 < $FunctionContextHeight
             && 
            $IsBox(a#0, _module.Datatype$A)
             && $IsAllocBox(a#0, _module.Datatype$A, $Heap)
             && 
            $IsBox(b#0, _module.Datatype.F$B)
             && $IsAllocBox(b#0, _module.Datatype.F$B, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.Datatype.F(_module.Datatype$A, _module.Datatype.F$B, a#0, b#0), 
        Tclass._System.Tuple2(_module.Datatype$A, _module.Datatype.F$B), 
        $Heap));
// definition axiom for _module.Datatype.F (revealed)
axiom {:id "id158"} 0 <= $FunctionContextHeight
   ==> (forall _module.Datatype$A: Ty, _module.Datatype.F$B: Ty, a#0: Box, b#0: Box :: 
    { _module.Datatype.F(_module.Datatype$A, _module.Datatype.F$B, a#0, b#0) } 
    _module.Datatype.F#canCall(_module.Datatype$A, _module.Datatype.F$B, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(a#0, _module.Datatype$A)
           && $IsBox(b#0, _module.Datatype.F$B))
       ==> _module.Datatype.F(_module.Datatype$A, _module.Datatype.F$B, a#0, b#0)
         == #_System._tuple#2._#Make2(a#0, b#0));
// definition axiom for _module.Datatype.F for all literals (revealed)
axiom {:id "id159"} 0 <= $FunctionContextHeight
   ==> (forall _module.Datatype$A: Ty, _module.Datatype.F$B: Ty, a#0: Box, b#0: Box :: 
    {:weight 3} { _module.Datatype.F(_module.Datatype$A, _module.Datatype.F$B, Lit(a#0), Lit(b#0)) } 
    _module.Datatype.F#canCall(_module.Datatype$A, _module.Datatype.F$B, Lit(a#0), Lit(b#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(a#0, _module.Datatype$A)
           && $IsBox(b#0, _module.Datatype.F$B))
       ==> _module.Datatype.F(_module.Datatype$A, _module.Datatype.F$B, Lit(a#0), Lit(b#0))
         == Lit(#_System._tuple#2._#Make2(Lit(a#0), Lit(b#0))));
}

function _module.Datatype.F#canCall(_module.Datatype$A: Ty, _module.Datatype.F$B: Ty, a#0: Box, b#0: Box) : bool;

axiom (forall _module.Datatype$A: Ty, 
    _module.Datatype.F$B: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Apply2(_module.Datatype$A, 
      _module.Datatype.F$B, 
      Tclass._System.Tuple2(_module.Datatype$A, _module.Datatype.F$B), 
      $heap, 
      _module.Datatype.F#Handle(_module.Datatype$A, _module.Datatype.F$B), 
      $fh$0x#0, 
      $fh$0x#1) } 
  Apply2(_module.Datatype$A, 
      _module.Datatype.F$B, 
      Tclass._System.Tuple2(_module.Datatype$A, _module.Datatype.F$B), 
      $heap, 
      _module.Datatype.F#Handle(_module.Datatype$A, _module.Datatype.F$B), 
      $fh$0x#0, 
      $fh$0x#1)
     == $Box(_module.Datatype.F(_module.Datatype$A, _module.Datatype.F$B, $fh$0x#0, $fh$0x#1)));

axiom (forall _module.Datatype$A: Ty, 
    _module.Datatype.F$B: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Requires2(_module.Datatype$A, 
      _module.Datatype.F$B, 
      Tclass._System.Tuple2(_module.Datatype$A, _module.Datatype.F$B), 
      $heap, 
      _module.Datatype.F#Handle(_module.Datatype$A, _module.Datatype.F$B), 
      $fh$0x#0, 
      $fh$0x#1) } 
  Requires2(_module.Datatype$A, 
      _module.Datatype.F$B, 
      Tclass._System.Tuple2(_module.Datatype$A, _module.Datatype.F$B), 
      $heap, 
      _module.Datatype.F#Handle(_module.Datatype$A, _module.Datatype.F$B), 
      $fh$0x#0, 
      $fh$0x#1)
     == _module.Datatype.F#requires(_module.Datatype$A, _module.Datatype.F$B, $fh$0x#0, $fh$0x#1));

axiom (forall $bx: Box, 
    _module.Datatype$A: Ty, 
    _module.Datatype.F$B: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Set#IsMember(Reads2(_module.Datatype$A, 
        _module.Datatype.F$B, 
        Tclass._System.Tuple2(_module.Datatype$A, _module.Datatype.F$B), 
        $heap, 
        _module.Datatype.F#Handle(_module.Datatype$A, _module.Datatype.F$B), 
        $fh$0x#0, 
        $fh$0x#1), 
      $bx) } 
  Set#IsMember(Reads2(_module.Datatype$A, 
        _module.Datatype.F$B, 
        Tclass._System.Tuple2(_module.Datatype$A, _module.Datatype.F$B), 
        $heap, 
        _module.Datatype.F#Handle(_module.Datatype$A, _module.Datatype.F$B), 
        $fh$0x#0, 
        $fh$0x#1), 
      $bx)
     == false);

axiom (forall _module.Datatype$A: Ty, 
    _module.Datatype.F$B: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { _module.Datatype.F(_module.Datatype$A, _module.Datatype.F$B, $fh$0x#0, $fh$0x#1), $IsGoodHeap($heap) } 
  _module.Datatype.F(_module.Datatype$A, _module.Datatype.F$B, $fh$0x#0, $fh$0x#1)
     == $Unbox(Apply2(_module.Datatype$A, 
        _module.Datatype.F$B, 
        Tclass._System.Tuple2(_module.Datatype$A, _module.Datatype.F$B), 
        $heap, 
        _module.Datatype.F#Handle(_module.Datatype$A, _module.Datatype.F$B), 
        $fh$0x#0, 
        $fh$0x#1)): DatatypeType);

function _module.Trait.F_k#Handle(_module.Trait$G: Ty, _module.Trait$H: Ty, _module.Trait.F'$B: Ty) : HandleType;

// function declaration for _module.Trait.F'
function _module.Trait.F_k(_module.Trait$G: Ty, 
    _module.Trait$H: Ty, 
    _module.Trait.F'$B: Ty, 
    g#0: Box, 
    h#0: Box, 
    b#0: Box)
   : DatatypeType
uses {
// consequence axiom for _module.Trait.F_k
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.Trait$G: Ty, 
      _module.Trait$H: Ty, 
      _module.Trait.F'$B: Ty, 
      g#0: Box, 
      h#0: Box, 
      b#0: Box :: 
    { _module.Trait.F_k(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B, g#0, h#0, b#0) } 
    _module.Trait.F_k#canCall(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B, g#0, h#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(g#0, _module.Trait$G)
           && $IsBox(h#0, _module.Trait$H)
           && $IsBox(b#0, _module.Trait.F'$B))
       ==> $Is(_module.Trait.F_k(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B, g#0, h#0, b#0), 
        Tclass._System.Tuple3(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B)));
// alloc consequence axiom for _module.Trait.F_k
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module.Trait$G: Ty, 
      _module.Trait$H: Ty, 
      _module.Trait.F'$B: Ty, 
      g#0: Box, 
      h#0: Box, 
      b#0: Box :: 
    { $IsAlloc(_module.Trait.F_k(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B, g#0, h#0, b#0), 
        Tclass._System.Tuple3(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B), 
        $Heap) } 
    (_module.Trait.F_k#canCall(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B, g#0, h#0, b#0)
           || (0 < $FunctionContextHeight
             && 
            $IsBox(g#0, _module.Trait$G)
             && $IsAllocBox(g#0, _module.Trait$G, $Heap)
             && 
            $IsBox(h#0, _module.Trait$H)
             && $IsAllocBox(h#0, _module.Trait$H, $Heap)
             && 
            $IsBox(b#0, _module.Trait.F'$B)
             && $IsAllocBox(b#0, _module.Trait.F'$B, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.Trait.F_k(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B, g#0, h#0, b#0), 
        Tclass._System.Tuple3(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B), 
        $Heap));
// definition axiom for _module.Trait.F_k (revealed)
axiom {:id "id139"} 0 <= $FunctionContextHeight
   ==> (forall _module.Trait$G: Ty, 
      _module.Trait$H: Ty, 
      _module.Trait.F'$B: Ty, 
      g#0: Box, 
      h#0: Box, 
      b#0: Box :: 
    { _module.Trait.F_k(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B, g#0, h#0, b#0) } 
    _module.Trait.F_k#canCall(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B, g#0, h#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(g#0, _module.Trait$G)
           && $IsBox(h#0, _module.Trait$H)
           && $IsBox(b#0, _module.Trait.F'$B))
       ==> _module.Trait.F_k(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B, g#0, h#0, b#0)
         == #_System._tuple#3._#Make3(g#0, h#0, b#0));
// definition axiom for _module.Trait.F_k for all literals (revealed)
axiom {:id "id140"} 0 <= $FunctionContextHeight
   ==> (forall _module.Trait$G: Ty, 
      _module.Trait$H: Ty, 
      _module.Trait.F'$B: Ty, 
      g#0: Box, 
      h#0: Box, 
      b#0: Box :: 
    {:weight 3} { _module.Trait.F_k(_module.Trait$G, 
        _module.Trait$H, 
        _module.Trait.F'$B, 
        Lit(g#0), 
        Lit(h#0), 
        Lit(b#0)) } 
    _module.Trait.F_k#canCall(_module.Trait$G, 
          _module.Trait$H, 
          _module.Trait.F'$B, 
          Lit(g#0), 
          Lit(h#0), 
          Lit(b#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(g#0, _module.Trait$G)
           && $IsBox(h#0, _module.Trait$H)
           && $IsBox(b#0, _module.Trait.F'$B))
       ==> _module.Trait.F_k(_module.Trait$G, 
          _module.Trait$H, 
          _module.Trait.F'$B, 
          Lit(g#0), 
          Lit(h#0), 
          Lit(b#0))
         == Lit(#_System._tuple#3._#Make3(Lit(g#0), Lit(h#0), Lit(b#0))));
}

function _module.Trait.F_k#canCall(_module.Trait$G: Ty, 
    _module.Trait$H: Ty, 
    _module.Trait.F'$B: Ty, 
    g#0: Box, 
    h#0: Box, 
    b#0: Box)
   : bool;

axiom (forall _module.Trait$G: Ty, 
    _module.Trait$H: Ty, 
    _module.Trait.F'$B: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box :: 
  { Apply3(_module.Trait$G, 
      _module.Trait$H, 
      _module.Trait.F'$B, 
      Tclass._System.Tuple3(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B), 
      $heap, 
      _module.Trait.F_k#Handle(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2) } 
  Apply3(_module.Trait$G, 
      _module.Trait$H, 
      _module.Trait.F'$B, 
      Tclass._System.Tuple3(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B), 
      $heap, 
      _module.Trait.F_k#Handle(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2)
     == $Box(_module.Trait.F_k(_module.Trait$G, 
        _module.Trait$H, 
        _module.Trait.F'$B, 
        $fh$0x#0, 
        $fh$0x#1, 
        $fh$0x#2)));

axiom (forall _module.Trait$G: Ty, 
    _module.Trait$H: Ty, 
    _module.Trait.F'$B: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box :: 
  { Requires3(_module.Trait$G, 
      _module.Trait$H, 
      _module.Trait.F'$B, 
      Tclass._System.Tuple3(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B), 
      $heap, 
      _module.Trait.F_k#Handle(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2) } 
  Requires3(_module.Trait$G, 
      _module.Trait$H, 
      _module.Trait.F'$B, 
      Tclass._System.Tuple3(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B), 
      $heap, 
      _module.Trait.F_k#Handle(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2)
     == _module.Trait.F_k#requires(_module.Trait$G, 
      _module.Trait$H, 
      _module.Trait.F'$B, 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2));

axiom (forall $bx: Box, 
    _module.Trait$G: Ty, 
    _module.Trait$H: Ty, 
    _module.Trait.F'$B: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box :: 
  { Set#IsMember(Reads3(_module.Trait$G, 
        _module.Trait$H, 
        _module.Trait.F'$B, 
        Tclass._System.Tuple3(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B), 
        $heap, 
        _module.Trait.F_k#Handle(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B), 
        $fh$0x#0, 
        $fh$0x#1, 
        $fh$0x#2), 
      $bx) } 
  Set#IsMember(Reads3(_module.Trait$G, 
        _module.Trait$H, 
        _module.Trait.F'$B, 
        Tclass._System.Tuple3(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B), 
        $heap, 
        _module.Trait.F_k#Handle(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B), 
        $fh$0x#0, 
        $fh$0x#1, 
        $fh$0x#2), 
      $bx)
     == false);

axiom (forall _module.Trait$G: Ty, 
    _module.Trait$H: Ty, 
    _module.Trait.F'$B: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box :: 
  { _module.Trait.F_k(_module.Trait$G, 
      _module.Trait$H, 
      _module.Trait.F'$B, 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2), $IsGoodHeap($heap) } 
  _module.Trait.F_k(_module.Trait$G, 
      _module.Trait$H, 
      _module.Trait.F'$B, 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2)
     == $Unbox(Apply3(_module.Trait$G, 
        _module.Trait$H, 
        _module.Trait.F'$B, 
        Tclass._System.Tuple3(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B), 
        $heap, 
        _module.Trait.F_k#Handle(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B), 
        $fh$0x#0, 
        $fh$0x#1, 
        $fh$0x#2)): DatatypeType);

function Tclass._module.Class(Ty) : Ty;

const unique Tagclass._module.Class: TyTag;

// Tclass._module.Class Tag
axiom (forall _module.Class$A: Ty :: 
  { Tclass._module.Class(_module.Class$A) } 
  Tag(Tclass._module.Class(_module.Class$A)) == Tagclass._module.Class
     && TagFamily(Tclass._module.Class(_module.Class$A)) == tytagFamily$Class);

function Tclass._module.Class_0(Ty) : Ty;

// Tclass._module.Class injectivity 0
axiom (forall _module.Class$A: Ty :: 
  { Tclass._module.Class(_module.Class$A) } 
  Tclass._module.Class_0(Tclass._module.Class(_module.Class$A)) == _module.Class$A);

// Box/unbox axiom for Tclass._module.Class
axiom (forall _module.Class$A: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Class(_module.Class$A)) } 
  $IsBox(bx, Tclass._module.Class(_module.Class$A))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Class(_module.Class$A)));

function Tclass._module.Class?(Ty) : Ty
uses {
axiom (forall _module.Class$A: Ty :: 
  implements$_module.Trait(Tclass._module.Class?(_module.Class$A), TBool, _module.Class$A));
}

const unique Tagclass._module.Class?: TyTag;

// Tclass._module.Class? Tag
axiom (forall _module.Class$A: Ty :: 
  { Tclass._module.Class?(_module.Class$A) } 
  Tag(Tclass._module.Class?(_module.Class$A)) == Tagclass._module.Class?
     && TagFamily(Tclass._module.Class?(_module.Class$A)) == tytagFamily$Class);

function Tclass._module.Class?_0(Ty) : Ty;

// Tclass._module.Class? injectivity 0
axiom (forall _module.Class$A: Ty :: 
  { Tclass._module.Class?(_module.Class$A) } 
  Tclass._module.Class?_0(Tclass._module.Class?(_module.Class$A))
     == _module.Class$A);

// Box/unbox axiom for Tclass._module.Class?
axiom (forall _module.Class$A: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Class?(_module.Class$A)) } 
  $IsBox(bx, Tclass._module.Class?(_module.Class$A))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Class?(_module.Class$A)));

function Tclass._module.Trait(Ty, Ty) : Ty;

const unique Tagclass._module.Trait: TyTag;

// Tclass._module.Trait Tag
axiom (forall _module.Trait$G: Ty, _module.Trait$H: Ty :: 
  { Tclass._module.Trait(_module.Trait$G, _module.Trait$H) } 
  Tag(Tclass._module.Trait(_module.Trait$G, _module.Trait$H))
       == Tagclass._module.Trait
     && TagFamily(Tclass._module.Trait(_module.Trait$G, _module.Trait$H))
       == tytagFamily$Trait);

function Tclass._module.Trait_0(Ty) : Ty;

// Tclass._module.Trait injectivity 0
axiom (forall _module.Trait$G: Ty, _module.Trait$H: Ty :: 
  { Tclass._module.Trait(_module.Trait$G, _module.Trait$H) } 
  Tclass._module.Trait_0(Tclass._module.Trait(_module.Trait$G, _module.Trait$H))
     == _module.Trait$G);

function Tclass._module.Trait_1(Ty) : Ty;

// Tclass._module.Trait injectivity 1
axiom (forall _module.Trait$G: Ty, _module.Trait$H: Ty :: 
  { Tclass._module.Trait(_module.Trait$G, _module.Trait$H) } 
  Tclass._module.Trait_1(Tclass._module.Trait(_module.Trait$G, _module.Trait$H))
     == _module.Trait$H);

// Box/unbox axiom for Tclass._module.Trait
axiom (forall _module.Trait$G: Ty, _module.Trait$H: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Trait(_module.Trait$G, _module.Trait$H)) } 
  $IsBox(bx, Tclass._module.Trait(_module.Trait$G, _module.Trait$H))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Trait(_module.Trait$G, _module.Trait$H)));

function Tclass._module.Datatype(Ty) : Ty;

const unique Tagclass._module.Datatype: TyTag;

// Tclass._module.Datatype Tag
axiom (forall _module.Datatype$A: Ty :: 
  { Tclass._module.Datatype(_module.Datatype$A) } 
  Tag(Tclass._module.Datatype(_module.Datatype$A)) == Tagclass._module.Datatype
     && TagFamily(Tclass._module.Datatype(_module.Datatype$A)) == tytagFamily$Datatype);

function Tclass._module.Datatype_0(Ty) : Ty;

// Tclass._module.Datatype injectivity 0
axiom (forall _module.Datatype$A: Ty :: 
  { Tclass._module.Datatype(_module.Datatype$A) } 
  Tclass._module.Datatype_0(Tclass._module.Datatype(_module.Datatype$A))
     == _module.Datatype$A);

// Box/unbox axiom for Tclass._module.Datatype
axiom (forall _module.Datatype$A: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Datatype(_module.Datatype$A)) } 
  $IsBox(bx, Tclass._module.Datatype(_module.Datatype$A))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Datatype(_module.Datatype$A)));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericClass (correctness)"} Impl$$_module.__default.GenericClass() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var bb#0: int;
  var aa#0: int;
  var gg#0: bool;
  var hh#0: int;
  var f2#0: HandleType
     where $Is(f2#0, 
        Tclass._System.___hTotalFunc2(TInt, TInt, Tclass._System.Tuple2(TInt, TInt)))
       && $IsAlloc(f2#0, 
        Tclass._System.___hTotalFunc2(TInt, TInt, Tclass._System.Tuple2(TInt, TInt)), 
        $Heap);
  var f3#0: HandleType
     where $Is(f3#0, 
        Tclass._System.___hTotalFunc3(TBool, TInt, TInt, Tclass._System.Tuple3(TBool, TInt, TInt)))
       && $IsAlloc(f3#0, 
        Tclass._System.___hTotalFunc3(TBool, TInt, TInt, Tclass._System.Tuple3(TBool, TInt, TInt)), 
        $Heap);
  var $lambdaHeap#0: Heap;
  var x#0: int;
  var y#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: DatatypeType;
  var $lambdaHeap#1: Heap;
  var x#1: bool;
  var y#1: int;
  var z#0: int;
  var $_Frame#l1: [ref,Field]bool;
  var lambdaResult#1: DatatypeType;
  var $rhs##0: int;
  var $rhs##1: int;
  var a##0: int;
  var b##0: int;
  var $tmp##0: Box;
  var $tmp##1: Box;
  var ##a#0: int;
  var ##b#0: int;
  var $rhs##2: int;
  var $rhs##3: int;
  var a##1: int;
  var b##1: int;
  var $tmp##2: Box;
  var $tmp##3: Box;
  var ##a#1: int;
  var ##b#1: int;
  var $rhs##4: bool;
  var $rhs##5: int;
  var $rhs##6: int;
  var g##0: bool;
  var h##0: int;
  var b##2: int;
  var $tmp##4: Box;
  var $tmp##5: Box;
  var $tmp##6: Box;
  var ##g#0: bool;
  var ##h#0: int;
  var ##b#2: int;
  var $rhs##7: bool;
  var $rhs##8: int;
  var $rhs##9: int;
  var g##1: bool;
  var h##1: int;
  var b##3: int;
  var $tmp##7: Box;
  var $tmp##8: Box;
  var $tmp##9: Box;
  var ##g#1: bool;
  var ##h#1: int;
  var ##b#3: int;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.Class(TInt))
         && $IsAlloc(c#0, Tclass._module.Class(TInt), $Heap);
  var $nw: ref;
  var defass#t#0: bool;
  var t#0: ref
     where defass#t#0
       ==> $Is(t#0, Tclass._module.Trait(TBool, TInt))
         && $IsAlloc(t#0, Tclass._module.Trait(TBool, TInt), $Heap);
  var d#0: DatatypeType
     where $Is(d#0, Tclass._module.Datatype(TInt))
       && $IsAlloc(d#0, Tclass._module.Datatype(TInt), $Heap);
  var $rhs##10: int;
  var $rhs##11: int;
  var a##2: int;
  var b##4: int;
  var $tmp##10: Box;
  var $tmp##11: Box;
  var ##a#2: int;
  var ##b#4: int;
  var $rhs##12: int;
  var $rhs##13: int;
  var a##3: int;
  var b##5: int;
  var $tmp##12: Box;
  var $tmp##13: Box;
  var ##a#3: int;
  var ##b#5: int;
  var $rhs##14: bool;
  var $rhs##15: int;
  var $rhs##16: int;
  var g##2: bool;
  var h##2: int;
  var b##6: int;
  var $tmp##14: Box;
  var $tmp##15: Box;
  var $tmp##16: Box;
  var ##g#2: bool;
  var ##h#2: int;
  var ##b#6: int;
  var $rhs##17: bool;
  var $rhs##18: int;
  var $rhs##19: int;
  var g##3: bool;
  var h##3: int;
  var b##7: int;
  var $tmp##17: Box;
  var $tmp##18: Box;
  var $tmp##19: Box;
  var ##g#3: bool;
  var ##h#3: int;
  var ##b#7: int;

    // AddMethodImpl: GenericClass, Impl$$_module.__default.GenericClass
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc bb#0, aa#0, gg#0, hh#0, f2#0 /* where $Is(f2#0, 
        Tclass._System.___hTotalFunc2(TInt, TInt, Tclass._System.Tuple2(TInt, TInt)))
       && $IsAlloc(f2#0, 
        Tclass._System.___hTotalFunc2(TInt, TInt, Tclass._System.Tuple2(TInt, TInt)), 
        $Heap) */, f3#0 /* where $Is(f3#0, 
        Tclass._System.___hTotalFunc3(TBool, TInt, TInt, Tclass._System.Tuple3(TBool, TInt, TInt)))
       && $IsAlloc(f3#0, 
        Tclass._System.___hTotalFunc3(TBool, TInt, TInt, Tclass._System.Tuple3(TBool, TInt, TInt)), 
        $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(13,6)
    assume true;
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#0;
        assume $IsGoodHeap($lambdaHeap#0);
        assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
        havoc x#0;
        havoc y#0;
        if (true)
        {
            $_Frame#l0 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
            assume {:id "id3"} lambdaResult#0 == #_System._tuple#2._#Make2($Box(x#0), $Box(y#0));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#0, Tclass._System.Tuple2(TInt, TInt));
        }

        assume false;
    }

    // End Comprehension WF check
    assume true;
    f2#0 := Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
          Handle2((lambda $l#0#heap#0: Heap, $l#0#x#0: Box, $l#0#y#0: Box :: 
              $Box(#_System._tuple#2._#Make2($l#0#x#0, $l#0#y#0))), 
            (lambda $l#0#heap#0: Heap, $l#0#x#0: Box, $l#0#y#0: Box :: 
              $IsBox($l#0#x#0, TInt) && $IsBox($l#0#y#0, TInt)), 
            (lambda $l#0#heap#0: Heap, $l#0#x#0: Box, $l#0#y#0: Box :: 
              SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
        $LS($LZ)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(14,6)
    assume true;
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#1;
        assume $IsGoodHeap($lambdaHeap#1);
        assume $Heap == $lambdaHeap#1 || $HeapSucc($Heap, $lambdaHeap#1);
        havoc x#1;
        havoc y#1;
        havoc z#0;
        if (true)
        {
            $_Frame#l1 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#1, $o, alloc)): bool ==> false);
            assume {:id "id5"} lambdaResult#1 == #_System._tuple#3._#Make3($Box(x#1), $Box(y#1), $Box(z#0));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#1, Tclass._System.Tuple3(TBool, TInt, TInt));
        }

        assume false;
    }

    // End Comprehension WF check
    assume true;
    f3#0 := Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
          Handle3((lambda $l#2#heap#0: Heap, $l#2#x#0: Box, $l#2#y#0: Box, $l#2#z#0: Box :: 
              $Box(#_System._tuple#3._#Make3($l#2#x#0, $l#2#y#0, $l#2#z#0))), 
            (lambda $l#2#heap#0: Heap, $l#2#x#0: Box, $l#2#y#0: Box, $l#2#z#0: Box :: 
              $IsBox($l#2#x#0, TBool) && $IsBox($l#2#y#0, TInt) && $IsBox($l#2#z#0, TInt)), 
            (lambda $l#2#heap#0: Heap, $l#2#x#0: Box, $l#2#y#0: Box, $l#2#z#0: Box :: 
              SetRef_to_SetBox((lambda $l#2#o#0: ref :: false))))), 
        $LS($LZ)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(15,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(18,20)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := LitInt(22);
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := LitInt(23);
    call {:id "id7"} $tmp##0, $tmp##1 := Call$$_module.Class.M(TInt, TInt, $Box(a##0), $Box(b##0));
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): int;
    havoc $rhs##1;
    assume $rhs##1 == $Unbox($tmp##1): int;
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##0;
    aa#0 := $rhs##1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(19,6)
    assume true;
    assert {:id "id10"} 0 != $FunctionContextHeight;
    assume true;
    f2#0 := _module.Class.F#Handle(TInt, TInt);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(20,3)
    assume true;
    assume true;
    assume true;
    assume true;
    ##a#0 := LitInt(20);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    ##b#0 := LitInt(21);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TInt, $Heap);
    assume _module.Class.F#canCall(TInt, TInt, $Box(LitInt(20)), $Box(LitInt(21)));
    assume _System.Tuple2.___hMake2_q(Lit(_module.Class.F(TInt, TInt, $Box(LitInt(20)), $Box(LitInt(21)))));
    assume _module.Class.F#canCall(TInt, TInt, $Box(LitInt(20)), $Box(LitInt(21)));
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(23,23)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##1 := LitInt(22);
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##1 := LitInt(23);
    call {:id "id12"} $tmp##2, $tmp##3 := Call$$_module.Datatype.M(TInt, TInt, $Box(a##1), $Box(b##1));
    havoc $rhs##2;
    assume $rhs##2 == $Unbox($tmp##2): int;
    havoc $rhs##3;
    assume $rhs##3 == $Unbox($tmp##3): int;
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##2;
    aa#0 := $rhs##3;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(24,6)
    assume true;
    assert {:id "id15"} 0 != $FunctionContextHeight;
    assume true;
    f2#0 := _module.Datatype.F#Handle(TInt, TInt);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(25,3)
    assume true;
    assume true;
    assume true;
    assume true;
    ##a#1 := LitInt(20);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, TInt, $Heap);
    ##b#1 := LitInt(21);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, TInt, $Heap);
    assume _module.Datatype.F#canCall(TInt, TInt, $Box(LitInt(20)), $Box(LitInt(21)));
    assume _System.Tuple2.___hMake2_q(Lit(_module.Datatype.F(TInt, TInt, $Box(LitInt(20)), $Box(LitInt(21)))));
    assume _module.Datatype.F#canCall(TInt, TInt, $Box(LitInt(20)), $Box(LitInt(21)));
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(28,25)
    assume true;
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##0 := Lit(true);
    assume true;
    // ProcessCallStmt: CheckSubrange
    h##0 := LitInt(22);
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##2 := LitInt(23);
    call {:id "id17"} $tmp##4, $tmp##5, $tmp##6 := Call$$_module.Trait.M_k(TBool, TInt, TInt, $Box(g##0), $Box(h##0), $Box(b##2));
    havoc $rhs##4;
    assume $rhs##4 == $Unbox($tmp##4): bool;
    havoc $rhs##5;
    assume $rhs##5 == $Unbox($tmp##5): int;
    havoc $rhs##6;
    assume $rhs##6 == $Unbox($tmp##6): int;
    // TrCallStmt: After ProcessCallStmt
    gg#0 := $rhs##4;
    hh#0 := $rhs##5;
    bb#0 := $rhs##6;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(29,6)
    assume true;
    assert {:id "id21"} 0 != $FunctionContextHeight;
    assume true;
    f3#0 := _module.Trait.F_k#Handle(TBool, TInt, TInt);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(30,3)
    assume true;
    assume true;
    assume true;
    assume true;
    ##g#0 := Lit(true);
    // assume allocatedness for argument to function
    assume $IsAlloc(##g#0, TBool, $Heap);
    ##h#0 := LitInt(20);
    // assume allocatedness for argument to function
    assume $IsAlloc(##h#0, TInt, $Heap);
    ##b#2 := LitInt(21);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, TInt, $Heap);
    assume _module.Trait.F_k#canCall(TBool, TInt, TInt, $Box(Lit(true)), $Box(LitInt(20)), $Box(LitInt(21)));
    assume _System.Tuple3.___hMake3_q(Lit(_module.Trait.F_k(TBool, TInt, TInt, $Box(Lit(true)), $Box(LitInt(20)), $Box(LitInt(21)))));
    assume _module.Trait.F_k#canCall(TBool, TInt, TInt, $Box(Lit(true)), $Box(LitInt(20)), $Box(LitInt(21)));
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(33,25)
    assume true;
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##1 := Lit(true);
    assume true;
    // ProcessCallStmt: CheckSubrange
    h##1 := LitInt(22);
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##3 := LitInt(23);
    call {:id "id23"} $tmp##7, $tmp##8, $tmp##9 := Call$$_module.Trait.M_k(TBool, TInt, TInt, $Box(g##1), $Box(h##1), $Box(b##3));
    havoc $rhs##7;
    assume $rhs##7 == $Unbox($tmp##7): bool;
    havoc $rhs##8;
    assume $rhs##8 == $Unbox($tmp##8): int;
    havoc $rhs##9;
    assume $rhs##9 == $Unbox($tmp##9): int;
    // TrCallStmt: After ProcessCallStmt
    gg#0 := $rhs##7;
    hh#0 := $rhs##8;
    bb#0 := $rhs##9;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(34,6)
    assume true;
    assert {:id "id27"} 0 != $FunctionContextHeight;
    assume true;
    f3#0 := _module.Trait.F_k#Handle(TBool, TInt, TInt);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(35,3)
    assume true;
    assume true;
    assume true;
    assume true;
    ##g#1 := Lit(true);
    // assume allocatedness for argument to function
    assume $IsAlloc(##g#1, TBool, $Heap);
    ##h#1 := LitInt(20);
    // assume allocatedness for argument to function
    assume $IsAlloc(##h#1, TInt, $Heap);
    ##b#3 := LitInt(21);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#3, TInt, $Heap);
    assume _module.Trait.F_k#canCall(TBool, TInt, TInt, $Box(Lit(true)), $Box(LitInt(20)), $Box(LitInt(21)));
    assume _System.Tuple3.___hMake3_q(Lit(_module.Trait.F_k(TBool, TInt, TInt, $Box(Lit(true)), $Box(LitInt(20)), $Box(LitInt(21)))));
    assume _module.Trait.F_k#canCall(TBool, TInt, TInt, $Box(Lit(true)), $Box(LitInt(20)), $Box(LitInt(21)));
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(38,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Class?(TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    c#0 := $nw;
    defass#c#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(39,16)
    assume true;
    assert {:id "id30"} defass#c#0;
    assume true;
    t#0 := c#0;
    defass#t#0 := true;
    havoc d#0 /* where $Is(d#0, Tclass._module.Datatype(TInt))
       && $IsAlloc(d#0, Tclass._module.Datatype(TInt), $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(43,16)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id32"} defass#c#0;
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##2 := LitInt(22);
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##4 := LitInt(23);
    call {:id "id33"} $tmp##10, $tmp##11 := Call$$_module.Class.M(TInt, TInt, $Box(a##2), $Box(b##4));
    havoc $rhs##10;
    assume $rhs##10 == $Unbox($tmp##10): int;
    havoc $rhs##11;
    assume $rhs##11 == $Unbox($tmp##11): int;
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##10;
    aa#0 := $rhs##11;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(44,6)
    assume true;
    assert {:id "id36"} 0 != $FunctionContextHeight;
    assert {:id "id37"} defass#c#0;
    assume true;
    f2#0 := _module.Class.F#Handle(TInt, TInt);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(45,3)
    assert {:id "id39"} defass#c#0;
    assume true;
    assume true;
    assert {:id "id40"} defass#c#0;
    assume true;
    assume true;
    assert {:id "id41"} defass#c#0;
    ##a#2 := LitInt(20);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#2, TInt, $Heap);
    ##b#4 := LitInt(21);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#4, TInt, $Heap);
    assume _module.Class.F#canCall(TInt, TInt, $Box(LitInt(20)), $Box(LitInt(21)));
    assume _System.Tuple2.___hMake2_q(Lit(_module.Class.F(TInt, TInt, $Box(LitInt(20)), $Box(LitInt(21)))));
    assume _module.Class.F#canCall(TInt, TInt, $Box(LitInt(20)), $Box(LitInt(21)));
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(48,16)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##3 := LitInt(22);
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##5 := LitInt(23);
    call {:id "id42"} $tmp##12, $tmp##13 := Call$$_module.Datatype.M(TInt, TInt, $Box(a##3), $Box(b##5));
    havoc $rhs##12;
    assume $rhs##12 == $Unbox($tmp##12): int;
    havoc $rhs##13;
    assume $rhs##13 == $Unbox($tmp##13): int;
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##12;
    aa#0 := $rhs##13;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(49,6)
    assume true;
    assert {:id "id45"} 0 != $FunctionContextHeight;
    assume true;
    f2#0 := _module.Datatype.F#Handle(TInt, TInt);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(50,3)
    assume true;
    assume true;
    assume true;
    assume true;
    ##a#3 := LitInt(20);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#3, TInt, $Heap);
    ##b#5 := LitInt(21);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#5, TInt, $Heap);
    assume _module.Datatype.F#canCall(TInt, TInt, $Box(LitInt(20)), $Box(LitInt(21)));
    assume _System.Tuple2.___hMake2_q(Lit(_module.Datatype.F(TInt, TInt, $Box(LitInt(20)), $Box(LitInt(21)))));
    assume _module.Datatype.F#canCall(TInt, TInt, $Box(LitInt(20)), $Box(LitInt(21)));
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(53,21)
    assume true;
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id47"} defass#t#0;
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##2 := Lit(true);
    assume true;
    // ProcessCallStmt: CheckSubrange
    h##2 := LitInt(22);
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##6 := LitInt(23);
    call {:id "id48"} $tmp##14, $tmp##15, $tmp##16 := Call$$_module.Trait.M_k(TBool, TInt, TInt, $Box(g##2), $Box(h##2), $Box(b##6));
    havoc $rhs##14;
    assume $rhs##14 == $Unbox($tmp##14): bool;
    havoc $rhs##15;
    assume $rhs##15 == $Unbox($tmp##15): int;
    havoc $rhs##16;
    assume $rhs##16 == $Unbox($tmp##16): int;
    // TrCallStmt: After ProcessCallStmt
    gg#0 := $rhs##14;
    hh#0 := $rhs##15;
    bb#0 := $rhs##16;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(54,6)
    assume true;
    assert {:id "id52"} 0 != $FunctionContextHeight;
    assert {:id "id53"} defass#t#0;
    assume true;
    f3#0 := _module.Trait.F_k#Handle(TBool, TInt, TInt);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(55,3)
    assert {:id "id55"} defass#t#0;
    assume true;
    assume true;
    assert {:id "id56"} defass#t#0;
    assume true;
    assume true;
    assert {:id "id57"} defass#t#0;
    ##g#2 := Lit(true);
    // assume allocatedness for argument to function
    assume $IsAlloc(##g#2, TBool, $Heap);
    ##h#2 := LitInt(20);
    // assume allocatedness for argument to function
    assume $IsAlloc(##h#2, TInt, $Heap);
    ##b#6 := LitInt(21);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#6, TInt, $Heap);
    assume _module.Trait.F_k#canCall(TBool, TInt, TInt, $Box(Lit(true)), $Box(LitInt(20)), $Box(LitInt(21)));
    assume _System.Tuple3.___hMake3_q(Lit(_module.Trait.F_k(TBool, TInt, TInt, $Box(Lit(true)), $Box(LitInt(20)), $Box(LitInt(21)))));
    assume _module.Trait.F_k#canCall(TBool, TInt, TInt, $Box(Lit(true)), $Box(LitInt(20)), $Box(LitInt(21)));
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(58,21)
    assume true;
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id58"} defass#c#0;
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##3 := Lit(true);
    assume true;
    // ProcessCallStmt: CheckSubrange
    h##3 := LitInt(22);
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##7 := LitInt(23);
    call {:id "id59"} $tmp##17, $tmp##18, $tmp##19 := Call$$_module.Trait.M_k(TBool, TInt, TInt, $Box(g##3), $Box(h##3), $Box(b##7));
    havoc $rhs##17;
    assume $rhs##17 == $Unbox($tmp##17): bool;
    havoc $rhs##18;
    assume $rhs##18 == $Unbox($tmp##18): int;
    havoc $rhs##19;
    assume $rhs##19 == $Unbox($tmp##19): int;
    // TrCallStmt: After ProcessCallStmt
    gg#0 := $rhs##17;
    hh#0 := $rhs##18;
    bb#0 := $rhs##19;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(59,6)
    assume true;
    assert {:id "id63"} 0 != $FunctionContextHeight;
    assert {:id "id64"} defass#c#0;
    assume true;
    f3#0 := _module.Trait.F_k#Handle(TBool, TInt, TInt);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(60,3)
    assert {:id "id66"} defass#c#0;
    assume true;
    assume true;
    assert {:id "id67"} defass#c#0;
    assume true;
    assume true;
    assert {:id "id68"} defass#c#0;
    ##g#3 := Lit(true);
    // assume allocatedness for argument to function
    assume $IsAlloc(##g#3, TBool, $Heap);
    ##h#3 := LitInt(20);
    // assume allocatedness for argument to function
    assume $IsAlloc(##h#3, TInt, $Heap);
    ##b#7 := LitInt(21);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#7, TInt, $Heap);
    assume _module.Trait.F_k#canCall(TBool, TInt, TInt, $Box(Lit(true)), $Box(LitInt(20)), $Box(LitInt(21)));
    assume _System.Tuple3.___hMake3_q(Lit(_module.Trait.F_k(TBool, TInt, TInt, $Box(Lit(true)), $Box(LitInt(20)), $Box(LitInt(21)))));
    assume _module.Trait.F_k#canCall(TBool, TInt, TInt, $Box(Lit(true)), $Box(LitInt(20)), $Box(LitInt(21)));
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "FunctionValues (well-formedness)"} CheckWellFormed$$_module.__default.FunctionValues();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FunctionValues (call)"} Call$$_module.__default.FunctionValues();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FunctionValues (correctness)"} Impl$$_module.__default.FunctionValues() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.ClassFunc(Ty) : Ty;

const unique Tagclass._module.ClassFunc: TyTag;

// Tclass._module.ClassFunc Tag
axiom (forall _module.ClassFunc$T: Ty :: 
  { Tclass._module.ClassFunc(_module.ClassFunc$T) } 
  Tag(Tclass._module.ClassFunc(_module.ClassFunc$T)) == Tagclass._module.ClassFunc
     && TagFamily(Tclass._module.ClassFunc(_module.ClassFunc$T))
       == tytagFamily$ClassFunc);

function Tclass._module.ClassFunc_0(Ty) : Ty;

// Tclass._module.ClassFunc injectivity 0
axiom (forall _module.ClassFunc$T: Ty :: 
  { Tclass._module.ClassFunc(_module.ClassFunc$T) } 
  Tclass._module.ClassFunc_0(Tclass._module.ClassFunc(_module.ClassFunc$T))
     == _module.ClassFunc$T);

// Box/unbox axiom for Tclass._module.ClassFunc
axiom (forall _module.ClassFunc$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.ClassFunc(_module.ClassFunc$T)) } 
  $IsBox(bx, Tclass._module.ClassFunc(_module.ClassFunc$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.ClassFunc(_module.ClassFunc$T)));

function Tclass._module.ClassFunc?(Ty) : Ty
uses {
axiom (forall _module.ClassFunc$T: Ty :: 
  implements$_module.TraitFunc(Tclass._module.ClassFunc?(_module.ClassFunc$T), TInt, _module.ClassFunc$T));
}

const unique Tagclass._module.ClassFunc?: TyTag;

// Tclass._module.ClassFunc? Tag
axiom (forall _module.ClassFunc$T: Ty :: 
  { Tclass._module.ClassFunc?(_module.ClassFunc$T) } 
  Tag(Tclass._module.ClassFunc?(_module.ClassFunc$T))
       == Tagclass._module.ClassFunc?
     && TagFamily(Tclass._module.ClassFunc?(_module.ClassFunc$T))
       == tytagFamily$ClassFunc);

function Tclass._module.ClassFunc?_0(Ty) : Ty;

// Tclass._module.ClassFunc? injectivity 0
axiom (forall _module.ClassFunc$T: Ty :: 
  { Tclass._module.ClassFunc?(_module.ClassFunc$T) } 
  Tclass._module.ClassFunc?_0(Tclass._module.ClassFunc?(_module.ClassFunc$T))
     == _module.ClassFunc$T);

// Box/unbox axiom for Tclass._module.ClassFunc?
axiom (forall _module.ClassFunc$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.ClassFunc?(_module.ClassFunc$T)) } 
  $IsBox(bx, Tclass._module.ClassFunc?(_module.ClassFunc$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.ClassFunc?(_module.ClassFunc$T)));

function Tclass._module.TraitFunc(Ty, Ty) : Ty;

const unique Tagclass._module.TraitFunc: TyTag;

// Tclass._module.TraitFunc Tag
axiom (forall _module.TraitFunc$X: Ty, _module.TraitFunc$Y: Ty :: 
  { Tclass._module.TraitFunc(_module.TraitFunc$X, _module.TraitFunc$Y) } 
  Tag(Tclass._module.TraitFunc(_module.TraitFunc$X, _module.TraitFunc$Y))
       == Tagclass._module.TraitFunc
     && TagFamily(Tclass._module.TraitFunc(_module.TraitFunc$X, _module.TraitFunc$Y))
       == tytagFamily$TraitFunc);

function Tclass._module.TraitFunc_0(Ty) : Ty;

// Tclass._module.TraitFunc injectivity 0
axiom (forall _module.TraitFunc$X: Ty, _module.TraitFunc$Y: Ty :: 
  { Tclass._module.TraitFunc(_module.TraitFunc$X, _module.TraitFunc$Y) } 
  Tclass._module.TraitFunc_0(Tclass._module.TraitFunc(_module.TraitFunc$X, _module.TraitFunc$Y))
     == _module.TraitFunc$X);

function Tclass._module.TraitFunc_1(Ty) : Ty;

// Tclass._module.TraitFunc injectivity 1
axiom (forall _module.TraitFunc$X: Ty, _module.TraitFunc$Y: Ty :: 
  { Tclass._module.TraitFunc(_module.TraitFunc$X, _module.TraitFunc$Y) } 
  Tclass._module.TraitFunc_1(Tclass._module.TraitFunc(_module.TraitFunc$X, _module.TraitFunc$Y))
     == _module.TraitFunc$Y);

// Box/unbox axiom for Tclass._module.TraitFunc
axiom (forall _module.TraitFunc$X: Ty, _module.TraitFunc$Y: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.TraitFunc(_module.TraitFunc$X, _module.TraitFunc$Y)) } 
  $IsBox(bx, Tclass._module.TraitFunc(_module.TraitFunc$X, _module.TraitFunc$Y))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass._module.TraitFunc(_module.TraitFunc$X, _module.TraitFunc$Y)));

function Tclass._module.DatatypeFunc(Ty) : Ty;

const unique Tagclass._module.DatatypeFunc: TyTag;

// Tclass._module.DatatypeFunc Tag
axiom (forall _module.DatatypeFunc$T: Ty :: 
  { Tclass._module.DatatypeFunc(_module.DatatypeFunc$T) } 
  Tag(Tclass._module.DatatypeFunc(_module.DatatypeFunc$T))
       == Tagclass._module.DatatypeFunc
     && TagFamily(Tclass._module.DatatypeFunc(_module.DatatypeFunc$T))
       == tytagFamily$DatatypeFunc);

function Tclass._module.DatatypeFunc_0(Ty) : Ty;

// Tclass._module.DatatypeFunc injectivity 0
axiom (forall _module.DatatypeFunc$T: Ty :: 
  { Tclass._module.DatatypeFunc(_module.DatatypeFunc$T) } 
  Tclass._module.DatatypeFunc_0(Tclass._module.DatatypeFunc(_module.DatatypeFunc$T))
     == _module.DatatypeFunc$T);

// Box/unbox axiom for Tclass._module.DatatypeFunc
axiom (forall _module.DatatypeFunc$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.DatatypeFunc(_module.DatatypeFunc$T)) } 
  $IsBox(bx, Tclass._module.DatatypeFunc(_module.DatatypeFunc$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.DatatypeFunc(_module.DatatypeFunc$T)));

function _module.ClassFunc.F#Handle(_module.ClassFunc$T: Ty, _module.ClassFunc.F$U: Ty) : HandleType;

// function declaration for _module.ClassFunc.F
function _module.ClassFunc.F(_module.ClassFunc$T: Ty, _module.ClassFunc.F$U: Ty, t#0: Box, u#0: Box)
   : DatatypeType
uses {
// consequence axiom for _module.ClassFunc.F
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.ClassFunc$T: Ty, _module.ClassFunc.F$U: Ty, t#0: Box, u#0: Box :: 
    { _module.ClassFunc.F(_module.ClassFunc$T, _module.ClassFunc.F$U, t#0, u#0) } 
    _module.ClassFunc.F#canCall(_module.ClassFunc$T, _module.ClassFunc.F$U, t#0, u#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(t#0, _module.ClassFunc$T)
           && $IsBox(u#0, _module.ClassFunc.F$U))
       ==> $Is(_module.ClassFunc.F(_module.ClassFunc$T, _module.ClassFunc.F$U, t#0, u#0), 
        Tclass._System.Tuple2(_module.ClassFunc$T, _module.ClassFunc.F$U)));
// alloc consequence axiom for _module.ClassFunc.F
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module.ClassFunc$T: Ty, 
      _module.ClassFunc.F$U: Ty, 
      t#0: Box, 
      u#0: Box :: 
    { $IsAlloc(_module.ClassFunc.F(_module.ClassFunc$T, _module.ClassFunc.F$U, t#0, u#0), 
        Tclass._System.Tuple2(_module.ClassFunc$T, _module.ClassFunc.F$U), 
        $Heap) } 
    (_module.ClassFunc.F#canCall(_module.ClassFunc$T, _module.ClassFunc.F$U, t#0, u#0)
           || (0 < $FunctionContextHeight
             && 
            $IsBox(t#0, _module.ClassFunc$T)
             && $IsAllocBox(t#0, _module.ClassFunc$T, $Heap)
             && 
            $IsBox(u#0, _module.ClassFunc.F$U)
             && $IsAllocBox(u#0, _module.ClassFunc.F$U, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.ClassFunc.F(_module.ClassFunc$T, _module.ClassFunc.F$U, t#0, u#0), 
        Tclass._System.Tuple2(_module.ClassFunc$T, _module.ClassFunc.F$U), 
        $Heap));
// definition axiom for _module.ClassFunc.F (revealed)
axiom {:id "id172"} 0 <= $FunctionContextHeight
   ==> (forall _module.ClassFunc$T: Ty, _module.ClassFunc.F$U: Ty, t#0: Box, u#0: Box :: 
    { _module.ClassFunc.F(_module.ClassFunc$T, _module.ClassFunc.F$U, t#0, u#0) } 
    _module.ClassFunc.F#canCall(_module.ClassFunc$T, _module.ClassFunc.F$U, t#0, u#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(t#0, _module.ClassFunc$T)
           && $IsBox(u#0, _module.ClassFunc.F$U))
       ==> _module.ClassFunc.F(_module.ClassFunc$T, _module.ClassFunc.F$U, t#0, u#0)
         == #_System._tuple#2._#Make2(t#0, u#0));
// definition axiom for _module.ClassFunc.F for all literals (revealed)
axiom {:id "id173"} 0 <= $FunctionContextHeight
   ==> (forall _module.ClassFunc$T: Ty, _module.ClassFunc.F$U: Ty, t#0: Box, u#0: Box :: 
    {:weight 3} { _module.ClassFunc.F(_module.ClassFunc$T, _module.ClassFunc.F$U, Lit(t#0), Lit(u#0)) } 
    _module.ClassFunc.F#canCall(_module.ClassFunc$T, _module.ClassFunc.F$U, Lit(t#0), Lit(u#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(t#0, _module.ClassFunc$T)
           && $IsBox(u#0, _module.ClassFunc.F$U))
       ==> _module.ClassFunc.F(_module.ClassFunc$T, _module.ClassFunc.F$U, Lit(t#0), Lit(u#0))
         == Lit(#_System._tuple#2._#Make2(Lit(t#0), Lit(u#0))));
}

function _module.ClassFunc.F#canCall(_module.ClassFunc$T: Ty, _module.ClassFunc.F$U: Ty, t#0: Box, u#0: Box) : bool;

axiom (forall _module.ClassFunc$T: Ty, 
    _module.ClassFunc.F$U: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Apply2(_module.ClassFunc$T, 
      _module.ClassFunc.F$U, 
      Tclass._System.Tuple2(_module.ClassFunc$T, _module.ClassFunc.F$U), 
      $heap, 
      _module.ClassFunc.F#Handle(_module.ClassFunc$T, _module.ClassFunc.F$U), 
      $fh$0x#0, 
      $fh$0x#1) } 
  Apply2(_module.ClassFunc$T, 
      _module.ClassFunc.F$U, 
      Tclass._System.Tuple2(_module.ClassFunc$T, _module.ClassFunc.F$U), 
      $heap, 
      _module.ClassFunc.F#Handle(_module.ClassFunc$T, _module.ClassFunc.F$U), 
      $fh$0x#0, 
      $fh$0x#1)
     == $Box(_module.ClassFunc.F(_module.ClassFunc$T, _module.ClassFunc.F$U, $fh$0x#0, $fh$0x#1)));

axiom (forall _module.ClassFunc$T: Ty, 
    _module.ClassFunc.F$U: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Requires2(_module.ClassFunc$T, 
      _module.ClassFunc.F$U, 
      Tclass._System.Tuple2(_module.ClassFunc$T, _module.ClassFunc.F$U), 
      $heap, 
      _module.ClassFunc.F#Handle(_module.ClassFunc$T, _module.ClassFunc.F$U), 
      $fh$0x#0, 
      $fh$0x#1) } 
  Requires2(_module.ClassFunc$T, 
      _module.ClassFunc.F$U, 
      Tclass._System.Tuple2(_module.ClassFunc$T, _module.ClassFunc.F$U), 
      $heap, 
      _module.ClassFunc.F#Handle(_module.ClassFunc$T, _module.ClassFunc.F$U), 
      $fh$0x#0, 
      $fh$0x#1)
     == _module.ClassFunc.F#requires(_module.ClassFunc$T, _module.ClassFunc.F$U, $fh$0x#0, $fh$0x#1));

axiom (forall $bx: Box, 
    _module.ClassFunc$T: Ty, 
    _module.ClassFunc.F$U: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Set#IsMember(Reads2(_module.ClassFunc$T, 
        _module.ClassFunc.F$U, 
        Tclass._System.Tuple2(_module.ClassFunc$T, _module.ClassFunc.F$U), 
        $heap, 
        _module.ClassFunc.F#Handle(_module.ClassFunc$T, _module.ClassFunc.F$U), 
        $fh$0x#0, 
        $fh$0x#1), 
      $bx) } 
  Set#IsMember(Reads2(_module.ClassFunc$T, 
        _module.ClassFunc.F$U, 
        Tclass._System.Tuple2(_module.ClassFunc$T, _module.ClassFunc.F$U), 
        $heap, 
        _module.ClassFunc.F#Handle(_module.ClassFunc$T, _module.ClassFunc.F$U), 
        $fh$0x#0, 
        $fh$0x#1), 
      $bx)
     == false);

axiom (forall _module.ClassFunc$T: Ty, 
    _module.ClassFunc.F$U: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { _module.ClassFunc.F(_module.ClassFunc$T, _module.ClassFunc.F$U, $fh$0x#0, $fh$0x#1), $IsGoodHeap($heap) } 
  _module.ClassFunc.F(_module.ClassFunc$T, _module.ClassFunc.F$U, $fh$0x#0, $fh$0x#1)
     == $Unbox(Apply2(_module.ClassFunc$T, 
        _module.ClassFunc.F$U, 
        Tclass._System.Tuple2(_module.ClassFunc$T, _module.ClassFunc.F$U), 
        $heap, 
        _module.ClassFunc.F#Handle(_module.ClassFunc$T, _module.ClassFunc.F$U), 
        $fh$0x#0, 
        $fh$0x#1)): DatatypeType);

function _module.ClassFunc.G#Handle(_module.ClassFunc$T: Ty, _module.ClassFunc.G$U: Ty, self: ref) : HandleType;

// function declaration for _module.ClassFunc.G
function _module.ClassFunc.G(_module.ClassFunc$T: Ty, 
    _module.ClassFunc.G$U: Ty, 
    this: ref, 
    t#0: Box, 
    u#0: Box)
   : DatatypeType
uses {
// consequence axiom for _module.ClassFunc.G
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.ClassFunc$T: Ty, 
      _module.ClassFunc.G$U: Ty, 
      this: ref, 
      t#0: Box, 
      u#0: Box :: 
    { _module.ClassFunc.G(_module.ClassFunc$T, _module.ClassFunc.G$U, this, t#0, u#0) } 
    _module.ClassFunc.G#canCall(_module.ClassFunc$T, _module.ClassFunc.G$U, this, t#0, u#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.ClassFunc(_module.ClassFunc$T))
           && $IsBox(t#0, _module.ClassFunc$T)
           && $IsBox(u#0, _module.ClassFunc.G$U))
       ==> $Is(_module.ClassFunc.G(_module.ClassFunc$T, _module.ClassFunc.G$U, this, t#0, u#0), 
        Tclass._System.Tuple2(_module.ClassFunc$T, _module.ClassFunc.G$U)));
// alloc consequence axiom for _module.ClassFunc.G
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module.ClassFunc$T: Ty, 
      _module.ClassFunc.G$U: Ty, 
      this: ref, 
      t#0: Box, 
      u#0: Box :: 
    { $IsAlloc(_module.ClassFunc.G(_module.ClassFunc$T, _module.ClassFunc.G$U, this, t#0, u#0), 
        Tclass._System.Tuple2(_module.ClassFunc$T, _module.ClassFunc.G$U), 
        $Heap) } 
    (_module.ClassFunc.G#canCall(_module.ClassFunc$T, _module.ClassFunc.G$U, this, t#0, u#0)
           || (0 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass._module.ClassFunc(_module.ClassFunc$T), $Heap)
             && 
            $IsBox(t#0, _module.ClassFunc$T)
             && $IsAllocBox(t#0, _module.ClassFunc$T, $Heap)
             && 
            $IsBox(u#0, _module.ClassFunc.G$U)
             && $IsAllocBox(u#0, _module.ClassFunc.G$U, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.ClassFunc.G(_module.ClassFunc$T, _module.ClassFunc.G$U, this, t#0, u#0), 
        Tclass._System.Tuple2(_module.ClassFunc$T, _module.ClassFunc.G$U), 
        $Heap));
// definition axiom for _module.ClassFunc.G (revealed)
axiom {:id "id175"} 0 <= $FunctionContextHeight
   ==> (forall _module.ClassFunc$T: Ty, 
      _module.ClassFunc.G$U: Ty, 
      this: ref, 
      t#0: Box, 
      u#0: Box :: 
    { _module.ClassFunc.G(_module.ClassFunc$T, _module.ClassFunc.G$U, this, t#0, u#0) } 
    _module.ClassFunc.G#canCall(_module.ClassFunc$T, _module.ClassFunc.G$U, this, t#0, u#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.ClassFunc(_module.ClassFunc$T))
           && $IsBox(t#0, _module.ClassFunc$T)
           && $IsBox(u#0, _module.ClassFunc.G$U))
       ==> _module.ClassFunc.G(_module.ClassFunc$T, _module.ClassFunc.G$U, this, t#0, u#0)
         == #_System._tuple#2._#Make2(t#0, u#0));
// definition axiom for _module.ClassFunc.G for all literals (revealed)
axiom {:id "id176"} 0 <= $FunctionContextHeight
   ==> (forall _module.ClassFunc$T: Ty, 
      _module.ClassFunc.G$U: Ty, 
      this: ref, 
      t#0: Box, 
      u#0: Box :: 
    {:weight 3} { _module.ClassFunc.G(_module.ClassFunc$T, _module.ClassFunc.G$U, Lit(this), Lit(t#0), Lit(u#0)) } 
    _module.ClassFunc.G#canCall(_module.ClassFunc$T, _module.ClassFunc.G$U, Lit(this), Lit(t#0), Lit(u#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.ClassFunc(_module.ClassFunc$T))
           && $IsBox(t#0, _module.ClassFunc$T)
           && $IsBox(u#0, _module.ClassFunc.G$U))
       ==> _module.ClassFunc.G(_module.ClassFunc$T, _module.ClassFunc.G$U, Lit(this), Lit(t#0), Lit(u#0))
         == Lit(#_System._tuple#2._#Make2(Lit(t#0), Lit(u#0))));
}

function _module.ClassFunc.G#canCall(_module.ClassFunc$T: Ty, 
    _module.ClassFunc.G$U: Ty, 
    this: ref, 
    t#0: Box, 
    u#0: Box)
   : bool;

axiom (forall _module.ClassFunc$T: Ty, 
    _module.ClassFunc.G$U: Ty, 
    $self: ref, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Apply2(_module.ClassFunc$T, 
      _module.ClassFunc.G$U, 
      Tclass._System.Tuple2(_module.ClassFunc$T, _module.ClassFunc.G$U), 
      $heap, 
      _module.ClassFunc.G#Handle(_module.ClassFunc$T, _module.ClassFunc.G$U, $self), 
      $fh$0x#0, 
      $fh$0x#1) } 
  Apply2(_module.ClassFunc$T, 
      _module.ClassFunc.G$U, 
      Tclass._System.Tuple2(_module.ClassFunc$T, _module.ClassFunc.G$U), 
      $heap, 
      _module.ClassFunc.G#Handle(_module.ClassFunc$T, _module.ClassFunc.G$U, $self), 
      $fh$0x#0, 
      $fh$0x#1)
     == $Box(_module.ClassFunc.G(_module.ClassFunc$T, _module.ClassFunc.G$U, $self, $fh$0x#0, $fh$0x#1)));

axiom (forall _module.ClassFunc$T: Ty, 
    _module.ClassFunc.G$U: Ty, 
    $self: ref, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Requires2(_module.ClassFunc$T, 
      _module.ClassFunc.G$U, 
      Tclass._System.Tuple2(_module.ClassFunc$T, _module.ClassFunc.G$U), 
      $heap, 
      _module.ClassFunc.G#Handle(_module.ClassFunc$T, _module.ClassFunc.G$U, $self), 
      $fh$0x#0, 
      $fh$0x#1) } 
  Requires2(_module.ClassFunc$T, 
      _module.ClassFunc.G$U, 
      Tclass._System.Tuple2(_module.ClassFunc$T, _module.ClassFunc.G$U), 
      $heap, 
      _module.ClassFunc.G#Handle(_module.ClassFunc$T, _module.ClassFunc.G$U, $self), 
      $fh$0x#0, 
      $fh$0x#1)
     == _module.ClassFunc.G#requires(_module.ClassFunc$T, _module.ClassFunc.G$U, $self, $fh$0x#0, $fh$0x#1));

axiom (forall $bx: Box, 
    _module.ClassFunc$T: Ty, 
    _module.ClassFunc.G$U: Ty, 
    $self: ref, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Set#IsMember(Reads2(_module.ClassFunc$T, 
        _module.ClassFunc.G$U, 
        Tclass._System.Tuple2(_module.ClassFunc$T, _module.ClassFunc.G$U), 
        $heap, 
        _module.ClassFunc.G#Handle(_module.ClassFunc$T, _module.ClassFunc.G$U, $self), 
        $fh$0x#0, 
        $fh$0x#1), 
      $bx) } 
  Set#IsMember(Reads2(_module.ClassFunc$T, 
        _module.ClassFunc.G$U, 
        Tclass._System.Tuple2(_module.ClassFunc$T, _module.ClassFunc.G$U), 
        $heap, 
        _module.ClassFunc.G#Handle(_module.ClassFunc$T, _module.ClassFunc.G$U, $self), 
        $fh$0x#0, 
        $fh$0x#1), 
      $bx)
     == false);

axiom (forall _module.ClassFunc$T: Ty, 
    _module.ClassFunc.G$U: Ty, 
    $self: ref, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { _module.ClassFunc.G(_module.ClassFunc$T, _module.ClassFunc.G$U, $self, $fh$0x#0, $fh$0x#1), $IsGoodHeap($heap) } 
  _module.ClassFunc.G(_module.ClassFunc$T, _module.ClassFunc.G$U, $self, $fh$0x#0, $fh$0x#1)
     == $Unbox(Apply2(_module.ClassFunc$T, 
        _module.ClassFunc.G$U, 
        Tclass._System.Tuple2(_module.ClassFunc$T, _module.ClassFunc.G$U), 
        $heap, 
        _module.ClassFunc.G#Handle(_module.ClassFunc$T, _module.ClassFunc.G$U, $self), 
        $fh$0x#0, 
        $fh$0x#1)): DatatypeType);

function _module.DatatypeFunc.F#Handle(_module.DatatypeFunc$T: Ty, _module.DatatypeFunc.F$U: Ty) : HandleType;

// function declaration for _module.DatatypeFunc.F
function _module.DatatypeFunc.F(_module.DatatypeFunc$T: Ty, _module.DatatypeFunc.F$U: Ty, t#0: Box, u#0: Box)
   : DatatypeType
uses {
// consequence axiom for _module.DatatypeFunc.F
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.DatatypeFunc$T: Ty, _module.DatatypeFunc.F$U: Ty, t#0: Box, u#0: Box :: 
    { _module.DatatypeFunc.F(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U, t#0, u#0) } 
    _module.DatatypeFunc.F#canCall(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U, t#0, u#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(t#0, _module.DatatypeFunc$T)
           && $IsBox(u#0, _module.DatatypeFunc.F$U))
       ==> $Is(_module.DatatypeFunc.F(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U, t#0, u#0), 
        Tclass._System.Tuple2(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U)));
// alloc consequence axiom for _module.DatatypeFunc.F
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module.DatatypeFunc$T: Ty, 
      _module.DatatypeFunc.F$U: Ty, 
      t#0: Box, 
      u#0: Box :: 
    { $IsAlloc(_module.DatatypeFunc.F(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U, t#0, u#0), 
        Tclass._System.Tuple2(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U), 
        $Heap) } 
    (_module.DatatypeFunc.F#canCall(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U, t#0, u#0)
           || (0 < $FunctionContextHeight
             && 
            $IsBox(t#0, _module.DatatypeFunc$T)
             && $IsAllocBox(t#0, _module.DatatypeFunc$T, $Heap)
             && 
            $IsBox(u#0, _module.DatatypeFunc.F$U)
             && $IsAllocBox(u#0, _module.DatatypeFunc.F$U, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.DatatypeFunc.F(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U, t#0, u#0), 
        Tclass._System.Tuple2(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U), 
        $Heap));
// definition axiom for _module.DatatypeFunc.F (revealed)
axiom {:id "id178"} 0 <= $FunctionContextHeight
   ==> (forall _module.DatatypeFunc$T: Ty, _module.DatatypeFunc.F$U: Ty, t#0: Box, u#0: Box :: 
    { _module.DatatypeFunc.F(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U, t#0, u#0) } 
    _module.DatatypeFunc.F#canCall(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U, t#0, u#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(t#0, _module.DatatypeFunc$T)
           && $IsBox(u#0, _module.DatatypeFunc.F$U))
       ==> _module.DatatypeFunc.F(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U, t#0, u#0)
         == #_System._tuple#2._#Make2(t#0, u#0));
// definition axiom for _module.DatatypeFunc.F for all literals (revealed)
axiom {:id "id179"} 0 <= $FunctionContextHeight
   ==> (forall _module.DatatypeFunc$T: Ty, _module.DatatypeFunc.F$U: Ty, t#0: Box, u#0: Box :: 
    {:weight 3} { _module.DatatypeFunc.F(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U, Lit(t#0), Lit(u#0)) } 
    _module.DatatypeFunc.F#canCall(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U, Lit(t#0), Lit(u#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(t#0, _module.DatatypeFunc$T)
           && $IsBox(u#0, _module.DatatypeFunc.F$U))
       ==> _module.DatatypeFunc.F(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U, Lit(t#0), Lit(u#0))
         == Lit(#_System._tuple#2._#Make2(Lit(t#0), Lit(u#0))));
}

function _module.DatatypeFunc.F#canCall(_module.DatatypeFunc$T: Ty, _module.DatatypeFunc.F$U: Ty, t#0: Box, u#0: Box)
   : bool;

axiom (forall _module.DatatypeFunc$T: Ty, 
    _module.DatatypeFunc.F$U: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Apply2(_module.DatatypeFunc$T, 
      _module.DatatypeFunc.F$U, 
      Tclass._System.Tuple2(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U), 
      $heap, 
      _module.DatatypeFunc.F#Handle(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U), 
      $fh$0x#0, 
      $fh$0x#1) } 
  Apply2(_module.DatatypeFunc$T, 
      _module.DatatypeFunc.F$U, 
      Tclass._System.Tuple2(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U), 
      $heap, 
      _module.DatatypeFunc.F#Handle(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U), 
      $fh$0x#0, 
      $fh$0x#1)
     == $Box(_module.DatatypeFunc.F(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U, $fh$0x#0, $fh$0x#1)));

axiom (forall _module.DatatypeFunc$T: Ty, 
    _module.DatatypeFunc.F$U: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Requires2(_module.DatatypeFunc$T, 
      _module.DatatypeFunc.F$U, 
      Tclass._System.Tuple2(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U), 
      $heap, 
      _module.DatatypeFunc.F#Handle(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U), 
      $fh$0x#0, 
      $fh$0x#1) } 
  Requires2(_module.DatatypeFunc$T, 
      _module.DatatypeFunc.F$U, 
      Tclass._System.Tuple2(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U), 
      $heap, 
      _module.DatatypeFunc.F#Handle(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U), 
      $fh$0x#0, 
      $fh$0x#1)
     == _module.DatatypeFunc.F#requires(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U, $fh$0x#0, $fh$0x#1));

axiom (forall $bx: Box, 
    _module.DatatypeFunc$T: Ty, 
    _module.DatatypeFunc.F$U: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Set#IsMember(Reads2(_module.DatatypeFunc$T, 
        _module.DatatypeFunc.F$U, 
        Tclass._System.Tuple2(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U), 
        $heap, 
        _module.DatatypeFunc.F#Handle(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U), 
        $fh$0x#0, 
        $fh$0x#1), 
      $bx) } 
  Set#IsMember(Reads2(_module.DatatypeFunc$T, 
        _module.DatatypeFunc.F$U, 
        Tclass._System.Tuple2(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U), 
        $heap, 
        _module.DatatypeFunc.F#Handle(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U), 
        $fh$0x#0, 
        $fh$0x#1), 
      $bx)
     == false);

axiom (forall _module.DatatypeFunc$T: Ty, 
    _module.DatatypeFunc.F$U: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { _module.DatatypeFunc.F(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U, $fh$0x#0, $fh$0x#1), $IsGoodHeap($heap) } 
  _module.DatatypeFunc.F(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U, $fh$0x#0, $fh$0x#1)
     == $Unbox(Apply2(_module.DatatypeFunc$T, 
        _module.DatatypeFunc.F$U, 
        Tclass._System.Tuple2(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U), 
        $heap, 
        _module.DatatypeFunc.F#Handle(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U), 
        $fh$0x#0, 
        $fh$0x#1)): DatatypeType);

function _module.DatatypeFunc.G#Handle(_module.DatatypeFunc$T: Ty, _module.DatatypeFunc.G$U: Ty, self: DatatypeType)
   : HandleType;

// function declaration for _module.DatatypeFunc.G
function _module.DatatypeFunc.G(_module.DatatypeFunc$T: Ty, 
    _module.DatatypeFunc.G$U: Ty, 
    this: DatatypeType, 
    t#0: Box, 
    u#0: Box)
   : DatatypeType
uses {
// consequence axiom for _module.DatatypeFunc.G
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.DatatypeFunc$T: Ty, 
      _module.DatatypeFunc.G$U: Ty, 
      this: DatatypeType, 
      t#0: Box, 
      u#0: Box :: 
    { _module.DatatypeFunc.G(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, this, t#0, u#0) } 
    _module.DatatypeFunc.G#canCall(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, this, t#0, u#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.DatatypeFunc(_module.DatatypeFunc$T))
           && $IsBox(t#0, _module.DatatypeFunc$T)
           && $IsBox(u#0, _module.DatatypeFunc.G$U))
       ==> $Is(_module.DatatypeFunc.G(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, this, t#0, u#0), 
        Tclass._System.Tuple2(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U)));
// alloc consequence axiom for _module.DatatypeFunc.G
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module.DatatypeFunc$T: Ty, 
      _module.DatatypeFunc.G$U: Ty, 
      this: DatatypeType, 
      t#0: Box, 
      u#0: Box :: 
    { $IsAlloc(_module.DatatypeFunc.G(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, this, t#0, u#0), 
        Tclass._System.Tuple2(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U), 
        $Heap) } 
    (_module.DatatypeFunc.G#canCall(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, this, t#0, u#0)
           || (0 < $FunctionContextHeight
             && 
            $IsAlloc(this, Tclass._module.DatatypeFunc(_module.DatatypeFunc$T), $Heap)
             && 
            $IsBox(t#0, _module.DatatypeFunc$T)
             && $IsAllocBox(t#0, _module.DatatypeFunc$T, $Heap)
             && 
            $IsBox(u#0, _module.DatatypeFunc.G$U)
             && $IsAllocBox(u#0, _module.DatatypeFunc.G$U, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.DatatypeFunc.G(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, this, t#0, u#0), 
        Tclass._System.Tuple2(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U), 
        $Heap));
// definition axiom for _module.DatatypeFunc.G (revealed)
axiom {:id "id181"} 0 <= $FunctionContextHeight
   ==> (forall _module.DatatypeFunc$T: Ty, 
      _module.DatatypeFunc.G$U: Ty, 
      this: DatatypeType, 
      t#0: Box, 
      u#0: Box :: 
    { _module.DatatypeFunc.G(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, this, t#0, u#0) } 
    _module.DatatypeFunc.G#canCall(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, this, t#0, u#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.DatatypeFunc(_module.DatatypeFunc$T))
           && $IsBox(t#0, _module.DatatypeFunc$T)
           && $IsBox(u#0, _module.DatatypeFunc.G$U))
       ==> _module.DatatypeFunc.G(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, this, t#0, u#0)
         == #_System._tuple#2._#Make2(t#0, u#0));
// definition axiom for _module.DatatypeFunc.G for decreasing-related literals (revealed)
axiom {:id "id182"} 0 <= $FunctionContextHeight
   ==> (forall _module.DatatypeFunc$T: Ty, 
      _module.DatatypeFunc.G$U: Ty, 
      this: DatatypeType, 
      t#0: Box, 
      u#0: Box :: 
    {:weight 3} { _module.DatatypeFunc.G(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, Lit(this), t#0, u#0) } 
    _module.DatatypeFunc.G#canCall(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, Lit(this), t#0, u#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.DatatypeFunc(_module.DatatypeFunc$T))
           && $IsBox(t#0, _module.DatatypeFunc$T)
           && $IsBox(u#0, _module.DatatypeFunc.G$U))
       ==> _module.DatatypeFunc.G(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, Lit(this), t#0, u#0)
         == #_System._tuple#2._#Make2(t#0, u#0));
// definition axiom for _module.DatatypeFunc.G for all literals (revealed)
axiom {:id "id183"} 0 <= $FunctionContextHeight
   ==> (forall _module.DatatypeFunc$T: Ty, 
      _module.DatatypeFunc.G$U: Ty, 
      this: DatatypeType, 
      t#0: Box, 
      u#0: Box :: 
    {:weight 3} { _module.DatatypeFunc.G(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, Lit(this), Lit(t#0), Lit(u#0)) } 
    _module.DatatypeFunc.G#canCall(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, Lit(this), Lit(t#0), Lit(u#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.DatatypeFunc(_module.DatatypeFunc$T))
           && $IsBox(t#0, _module.DatatypeFunc$T)
           && $IsBox(u#0, _module.DatatypeFunc.G$U))
       ==> _module.DatatypeFunc.G(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, Lit(this), Lit(t#0), Lit(u#0))
         == Lit(#_System._tuple#2._#Make2(Lit(t#0), Lit(u#0))));
}

function _module.DatatypeFunc.G#canCall(_module.DatatypeFunc$T: Ty, 
    _module.DatatypeFunc.G$U: Ty, 
    this: DatatypeType, 
    t#0: Box, 
    u#0: Box)
   : bool;

axiom (forall _module.DatatypeFunc$T: Ty, 
    _module.DatatypeFunc.G$U: Ty, 
    $self: DatatypeType, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Apply2(_module.DatatypeFunc$T, 
      _module.DatatypeFunc.G$U, 
      Tclass._System.Tuple2(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U), 
      $heap, 
      _module.DatatypeFunc.G#Handle(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, $self), 
      $fh$0x#0, 
      $fh$0x#1) } 
  Apply2(_module.DatatypeFunc$T, 
      _module.DatatypeFunc.G$U, 
      Tclass._System.Tuple2(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U), 
      $heap, 
      _module.DatatypeFunc.G#Handle(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, $self), 
      $fh$0x#0, 
      $fh$0x#1)
     == $Box(_module.DatatypeFunc.G(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, $self, $fh$0x#0, $fh$0x#1)));

axiom (forall _module.DatatypeFunc$T: Ty, 
    _module.DatatypeFunc.G$U: Ty, 
    $self: DatatypeType, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Requires2(_module.DatatypeFunc$T, 
      _module.DatatypeFunc.G$U, 
      Tclass._System.Tuple2(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U), 
      $heap, 
      _module.DatatypeFunc.G#Handle(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, $self), 
      $fh$0x#0, 
      $fh$0x#1) } 
  Requires2(_module.DatatypeFunc$T, 
      _module.DatatypeFunc.G$U, 
      Tclass._System.Tuple2(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U), 
      $heap, 
      _module.DatatypeFunc.G#Handle(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, $self), 
      $fh$0x#0, 
      $fh$0x#1)
     == _module.DatatypeFunc.G#requires(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, $self, $fh$0x#0, $fh$0x#1));

axiom (forall $bx: Box, 
    _module.DatatypeFunc$T: Ty, 
    _module.DatatypeFunc.G$U: Ty, 
    $self: DatatypeType, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Set#IsMember(Reads2(_module.DatatypeFunc$T, 
        _module.DatatypeFunc.G$U, 
        Tclass._System.Tuple2(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U), 
        $heap, 
        _module.DatatypeFunc.G#Handle(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, $self), 
        $fh$0x#0, 
        $fh$0x#1), 
      $bx) } 
  Set#IsMember(Reads2(_module.DatatypeFunc$T, 
        _module.DatatypeFunc.G$U, 
        Tclass._System.Tuple2(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U), 
        $heap, 
        _module.DatatypeFunc.G#Handle(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, $self), 
        $fh$0x#0, 
        $fh$0x#1), 
      $bx)
     == false);

axiom (forall _module.DatatypeFunc$T: Ty, 
    _module.DatatypeFunc.G$U: Ty, 
    $self: DatatypeType, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { _module.DatatypeFunc.G(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, $self, $fh$0x#0, $fh$0x#1), $IsGoodHeap($heap) } 
  _module.DatatypeFunc.G(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, $self, $fh$0x#0, $fh$0x#1)
     == $Unbox(Apply2(_module.DatatypeFunc$T, 
        _module.DatatypeFunc.G$U, 
        Tclass._System.Tuple2(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U), 
        $heap, 
        _module.DatatypeFunc.G#Handle(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, $self), 
        $fh$0x#0, 
        $fh$0x#1)): DatatypeType);

function _module.NewtypeFunc.F#Handle(_module.NewtypeFunc.F$U: Ty) : HandleType;

// function declaration for _module.NewtypeFunc.F
function _module.NewtypeFunc.F(_module.NewtypeFunc.F$U: Ty, u#0: Box) : Box
uses {
// consequence axiom for _module.NewtypeFunc.F
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.NewtypeFunc.F$U: Ty, u#0: Box :: 
    { _module.NewtypeFunc.F(_module.NewtypeFunc.F$U, u#0) } 
    _module.NewtypeFunc.F#canCall(_module.NewtypeFunc.F$U, u#0)
         || (0 < $FunctionContextHeight && $IsBox(u#0, _module.NewtypeFunc.F$U))
       ==> $IsBox(_module.NewtypeFunc.F(_module.NewtypeFunc.F$U, u#0), _module.NewtypeFunc.F$U));
// alloc consequence axiom for _module.NewtypeFunc.F
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module.NewtypeFunc.F$U: Ty, u#0: Box :: 
    { $IsAllocBox(_module.NewtypeFunc.F(_module.NewtypeFunc.F$U, u#0), 
        _module.NewtypeFunc.F$U, 
        $Heap) } 
    (_module.NewtypeFunc.F#canCall(_module.NewtypeFunc.F$U, u#0)
           || (0 < $FunctionContextHeight
             && 
            $IsBox(u#0, _module.NewtypeFunc.F$U)
             && $IsAllocBox(u#0, _module.NewtypeFunc.F$U, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(_module.NewtypeFunc.F(_module.NewtypeFunc.F$U, u#0), 
        _module.NewtypeFunc.F$U, 
        $Heap));
// definition axiom for _module.NewtypeFunc.F (revealed)
axiom {:id "id188"} 0 <= $FunctionContextHeight
   ==> (forall _module.NewtypeFunc.F$U: Ty, u#0: Box :: 
    { _module.NewtypeFunc.F(_module.NewtypeFunc.F$U, u#0) } 
    _module.NewtypeFunc.F#canCall(_module.NewtypeFunc.F$U, u#0)
         || (0 < $FunctionContextHeight && $IsBox(u#0, _module.NewtypeFunc.F$U))
       ==> _module.NewtypeFunc.F(_module.NewtypeFunc.F$U, u#0) == u#0);
// definition axiom for _module.NewtypeFunc.F for all literals (revealed)
axiom {:id "id189"} 0 <= $FunctionContextHeight
   ==> (forall _module.NewtypeFunc.F$U: Ty, u#0: Box :: 
    {:weight 3} { _module.NewtypeFunc.F(_module.NewtypeFunc.F$U, Lit(u#0)) } 
    _module.NewtypeFunc.F#canCall(_module.NewtypeFunc.F$U, Lit(u#0))
         || (0 < $FunctionContextHeight && $IsBox(u#0, _module.NewtypeFunc.F$U))
       ==> _module.NewtypeFunc.F(_module.NewtypeFunc.F$U, Lit(u#0)) == Lit(u#0));
}

function _module.NewtypeFunc.F#canCall(_module.NewtypeFunc.F$U: Ty, u#0: Box) : bool;

axiom (forall _module.NewtypeFunc.F$U: Ty, $heap: Heap, $fh$0x#0: Box :: 
  { Apply1(_module.NewtypeFunc.F$U, 
      _module.NewtypeFunc.F$U, 
      $heap, 
      _module.NewtypeFunc.F#Handle(_module.NewtypeFunc.F$U), 
      $fh$0x#0) } 
  Apply1(_module.NewtypeFunc.F$U, 
      _module.NewtypeFunc.F$U, 
      $heap, 
      _module.NewtypeFunc.F#Handle(_module.NewtypeFunc.F$U), 
      $fh$0x#0)
     == _module.NewtypeFunc.F(_module.NewtypeFunc.F$U, $fh$0x#0));

axiom (forall _module.NewtypeFunc.F$U: Ty, $heap: Heap, $fh$0x#0: Box :: 
  { Requires1(_module.NewtypeFunc.F$U, 
      _module.NewtypeFunc.F$U, 
      $heap, 
      _module.NewtypeFunc.F#Handle(_module.NewtypeFunc.F$U), 
      $fh$0x#0) } 
  Requires1(_module.NewtypeFunc.F$U, 
      _module.NewtypeFunc.F$U, 
      $heap, 
      _module.NewtypeFunc.F#Handle(_module.NewtypeFunc.F$U), 
      $fh$0x#0)
     == _module.NewtypeFunc.F#requires(_module.NewtypeFunc.F$U, $fh$0x#0));

axiom (forall $bx: Box, _module.NewtypeFunc.F$U: Ty, $heap: Heap, $fh$0x#0: Box :: 
  { Set#IsMember(Reads1(_module.NewtypeFunc.F$U, 
        _module.NewtypeFunc.F$U, 
        $heap, 
        _module.NewtypeFunc.F#Handle(_module.NewtypeFunc.F$U), 
        $fh$0x#0), 
      $bx) } 
  Set#IsMember(Reads1(_module.NewtypeFunc.F$U, 
        _module.NewtypeFunc.F$U, 
        $heap, 
        _module.NewtypeFunc.F#Handle(_module.NewtypeFunc.F$U), 
        $fh$0x#0), 
      $bx)
     == false);

axiom (forall _module.NewtypeFunc.F$U: Ty, $heap: Heap, $fh$0x#0: Box :: 
  { _module.NewtypeFunc.F(_module.NewtypeFunc.F$U, $fh$0x#0), $IsGoodHeap($heap) } 
  _module.NewtypeFunc.F(_module.NewtypeFunc.F$U, $fh$0x#0)
     == Apply1(_module.NewtypeFunc.F$U, 
      _module.NewtypeFunc.F$U, 
      $heap, 
      _module.NewtypeFunc.F#Handle(_module.NewtypeFunc.F$U), 
      $fh$0x#0));

function _module.NewtypeFunc.G#Handle(_module.NewtypeFunc.G$U: Ty, self: int) : HandleType;

// function declaration for _module.NewtypeFunc.G
function _module.NewtypeFunc.G(_module.NewtypeFunc.G$U: Ty, this: int, u#0: Box) : Box
uses {
// consequence axiom for _module.NewtypeFunc.G
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.NewtypeFunc.G$U: Ty, this: int, u#0: Box :: 
    { _module.NewtypeFunc.G(_module.NewtypeFunc.G$U, this, u#0) } 
    _module.NewtypeFunc.G#canCall(_module.NewtypeFunc.G$U, this, u#0)
         || (0 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 25
           && $IsBox(u#0, _module.NewtypeFunc.G$U))
       ==> $IsBox(_module.NewtypeFunc.G(_module.NewtypeFunc.G$U, this, u#0), 
        _module.NewtypeFunc.G$U));
// alloc consequence axiom for _module.NewtypeFunc.G
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module.NewtypeFunc.G$U: Ty, this: int, u#0: Box :: 
    { $IsAllocBox(_module.NewtypeFunc.G(_module.NewtypeFunc.G$U, this, u#0), 
        _module.NewtypeFunc.G$U, 
        $Heap) } 
    (_module.NewtypeFunc.G#canCall(_module.NewtypeFunc.G$U, this, u#0)
           || (0 < $FunctionContextHeight
             && 
            $IsBox(u#0, _module.NewtypeFunc.G$U)
             && $IsAllocBox(u#0, _module.NewtypeFunc.G$U, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(_module.NewtypeFunc.G(_module.NewtypeFunc.G$U, this, u#0), 
        _module.NewtypeFunc.G$U, 
        $Heap));
// definition axiom for _module.NewtypeFunc.G (revealed)
axiom {:id "id191"} 0 <= $FunctionContextHeight
   ==> (forall _module.NewtypeFunc.G$U: Ty, this: int, u#0: Box :: 
    { _module.NewtypeFunc.G(_module.NewtypeFunc.G$U, this, u#0) } 
    _module.NewtypeFunc.G#canCall(_module.NewtypeFunc.G$U, this, u#0)
         || (0 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 25
           && $IsBox(u#0, _module.NewtypeFunc.G$U))
       ==> _module.NewtypeFunc.G(_module.NewtypeFunc.G$U, this, u#0) == u#0);
// definition axiom for _module.NewtypeFunc.G for decreasing-related literals (revealed)
axiom {:id "id192"} 0 <= $FunctionContextHeight
   ==> (forall _module.NewtypeFunc.G$U: Ty, this: int, u#0: Box :: 
    {:weight 3} { _module.NewtypeFunc.G(_module.NewtypeFunc.G$U, LitInt(this), u#0) } 
    _module.NewtypeFunc.G#canCall(_module.NewtypeFunc.G$U, LitInt(this), u#0)
         || (0 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 25
           && $IsBox(u#0, _module.NewtypeFunc.G$U))
       ==> _module.NewtypeFunc.G(_module.NewtypeFunc.G$U, LitInt(this), u#0) == u#0);
// definition axiom for _module.NewtypeFunc.G for all literals (revealed)
axiom {:id "id193"} 0 <= $FunctionContextHeight
   ==> (forall _module.NewtypeFunc.G$U: Ty, this: int, u#0: Box :: 
    {:weight 3} { _module.NewtypeFunc.G(_module.NewtypeFunc.G$U, LitInt(this), Lit(u#0)) } 
    _module.NewtypeFunc.G#canCall(_module.NewtypeFunc.G$U, LitInt(this), Lit(u#0))
         || (0 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 25
           && $IsBox(u#0, _module.NewtypeFunc.G$U))
       ==> _module.NewtypeFunc.G(_module.NewtypeFunc.G$U, LitInt(this), Lit(u#0))
         == Lit(u#0));
}

function _module.NewtypeFunc.G#canCall(_module.NewtypeFunc.G$U: Ty, this: int, u#0: Box) : bool;

axiom (forall _module.NewtypeFunc.G$U: Ty, $self: int, $heap: Heap, $fh$0x#0: Box :: 
  { Apply1(_module.NewtypeFunc.G$U, 
      _module.NewtypeFunc.G$U, 
      $heap, 
      _module.NewtypeFunc.G#Handle(_module.NewtypeFunc.G$U, $self), 
      $fh$0x#0) } 
  Apply1(_module.NewtypeFunc.G$U, 
      _module.NewtypeFunc.G$U, 
      $heap, 
      _module.NewtypeFunc.G#Handle(_module.NewtypeFunc.G$U, $self), 
      $fh$0x#0)
     == _module.NewtypeFunc.G(_module.NewtypeFunc.G$U, $self, $fh$0x#0));

axiom (forall _module.NewtypeFunc.G$U: Ty, $self: int, $heap: Heap, $fh$0x#0: Box :: 
  { Requires1(_module.NewtypeFunc.G$U, 
      _module.NewtypeFunc.G$U, 
      $heap, 
      _module.NewtypeFunc.G#Handle(_module.NewtypeFunc.G$U, $self), 
      $fh$0x#0) } 
  Requires1(_module.NewtypeFunc.G$U, 
      _module.NewtypeFunc.G$U, 
      $heap, 
      _module.NewtypeFunc.G#Handle(_module.NewtypeFunc.G$U, $self), 
      $fh$0x#0)
     == _module.NewtypeFunc.G#requires(_module.NewtypeFunc.G$U, $self, $fh$0x#0));

axiom (forall $bx: Box, _module.NewtypeFunc.G$U: Ty, $self: int, $heap: Heap, $fh$0x#0: Box :: 
  { Set#IsMember(Reads1(_module.NewtypeFunc.G$U, 
        _module.NewtypeFunc.G$U, 
        $heap, 
        _module.NewtypeFunc.G#Handle(_module.NewtypeFunc.G$U, $self), 
        $fh$0x#0), 
      $bx) } 
  Set#IsMember(Reads1(_module.NewtypeFunc.G$U, 
        _module.NewtypeFunc.G$U, 
        $heap, 
        _module.NewtypeFunc.G#Handle(_module.NewtypeFunc.G$U, $self), 
        $fh$0x#0), 
      $bx)
     == false);

axiom (forall _module.NewtypeFunc.G$U: Ty, $self: int, $heap: Heap, $fh$0x#0: Box :: 
  { _module.NewtypeFunc.G(_module.NewtypeFunc.G$U, $self, $fh$0x#0), $IsGoodHeap($heap) } 
  _module.NewtypeFunc.G(_module.NewtypeFunc.G$U, $self, $fh$0x#0)
     == Apply1(_module.NewtypeFunc.G$U, 
      _module.NewtypeFunc.G$U, 
      $heap, 
      _module.NewtypeFunc.G#Handle(_module.NewtypeFunc.G$U, $self), 
      $fh$0x#0));

function _module.TraitFunc.F_k#Handle(_module.TraitFunc$X: Ty, _module.TraitFunc$Y: Ty, _module.TraitFunc.F'$U: Ty)
   : HandleType;

// function declaration for _module.TraitFunc.F'
function _module.TraitFunc.F_k(_module.TraitFunc$X: Ty, 
    _module.TraitFunc$Y: Ty, 
    _module.TraitFunc.F'$U: Ty, 
    x#0: Box, 
    y#0: Box, 
    u#0: Box)
   : DatatypeType
uses {
// consequence axiom for _module.TraitFunc.F_k
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.TraitFunc$X: Ty, 
      _module.TraitFunc$Y: Ty, 
      _module.TraitFunc.F'$U: Ty, 
      x#0: Box, 
      y#0: Box, 
      u#0: Box :: 
    { _module.TraitFunc.F_k(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U, x#0, y#0, u#0) } 
    _module.TraitFunc.F_k#canCall(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U, x#0, y#0, u#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module.TraitFunc$X)
           && $IsBox(y#0, _module.TraitFunc$Y)
           && $IsBox(u#0, _module.TraitFunc.F'$U))
       ==> $Is(_module.TraitFunc.F_k(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U, x#0, y#0, u#0), 
        Tclass._System.Tuple3(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U)));
// alloc consequence axiom for _module.TraitFunc.F_k
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module.TraitFunc$X: Ty, 
      _module.TraitFunc$Y: Ty, 
      _module.TraitFunc.F'$U: Ty, 
      x#0: Box, 
      y#0: Box, 
      u#0: Box :: 
    { $IsAlloc(_module.TraitFunc.F_k(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U, x#0, y#0, u#0), 
        Tclass._System.Tuple3(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U), 
        $Heap) } 
    (_module.TraitFunc.F_k#canCall(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U, x#0, y#0, u#0)
           || (0 < $FunctionContextHeight
             && 
            $IsBox(x#0, _module.TraitFunc$X)
             && $IsAllocBox(x#0, _module.TraitFunc$X, $Heap)
             && 
            $IsBox(y#0, _module.TraitFunc$Y)
             && $IsAllocBox(y#0, _module.TraitFunc$Y, $Heap)
             && 
            $IsBox(u#0, _module.TraitFunc.F'$U)
             && $IsAllocBox(u#0, _module.TraitFunc.F'$U, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.TraitFunc.F_k(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U, x#0, y#0, u#0), 
        Tclass._System.Tuple3(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U), 
        $Heap));
// definition axiom for _module.TraitFunc.F_k (revealed)
axiom {:id "id166"} 0 <= $FunctionContextHeight
   ==> (forall _module.TraitFunc$X: Ty, 
      _module.TraitFunc$Y: Ty, 
      _module.TraitFunc.F'$U: Ty, 
      x#0: Box, 
      y#0: Box, 
      u#0: Box :: 
    { _module.TraitFunc.F_k(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U, x#0, y#0, u#0) } 
    _module.TraitFunc.F_k#canCall(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U, x#0, y#0, u#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module.TraitFunc$X)
           && $IsBox(y#0, _module.TraitFunc$Y)
           && $IsBox(u#0, _module.TraitFunc.F'$U))
       ==> _module.TraitFunc.F_k(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U, x#0, y#0, u#0)
         == #_System._tuple#3._#Make3(x#0, y#0, u#0));
// definition axiom for _module.TraitFunc.F_k for all literals (revealed)
axiom {:id "id167"} 0 <= $FunctionContextHeight
   ==> (forall _module.TraitFunc$X: Ty, 
      _module.TraitFunc$Y: Ty, 
      _module.TraitFunc.F'$U: Ty, 
      x#0: Box, 
      y#0: Box, 
      u#0: Box :: 
    {:weight 3} { _module.TraitFunc.F_k(_module.TraitFunc$X, 
        _module.TraitFunc$Y, 
        _module.TraitFunc.F'$U, 
        Lit(x#0), 
        Lit(y#0), 
        Lit(u#0)) } 
    _module.TraitFunc.F_k#canCall(_module.TraitFunc$X, 
          _module.TraitFunc$Y, 
          _module.TraitFunc.F'$U, 
          Lit(x#0), 
          Lit(y#0), 
          Lit(u#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module.TraitFunc$X)
           && $IsBox(y#0, _module.TraitFunc$Y)
           && $IsBox(u#0, _module.TraitFunc.F'$U))
       ==> _module.TraitFunc.F_k(_module.TraitFunc$X, 
          _module.TraitFunc$Y, 
          _module.TraitFunc.F'$U, 
          Lit(x#0), 
          Lit(y#0), 
          Lit(u#0))
         == Lit(#_System._tuple#3._#Make3(Lit(x#0), Lit(y#0), Lit(u#0))));
}

function _module.TraitFunc.F_k#canCall(_module.TraitFunc$X: Ty, 
    _module.TraitFunc$Y: Ty, 
    _module.TraitFunc.F'$U: Ty, 
    x#0: Box, 
    y#0: Box, 
    u#0: Box)
   : bool;

axiom (forall _module.TraitFunc$X: Ty, 
    _module.TraitFunc$Y: Ty, 
    _module.TraitFunc.F'$U: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box :: 
  { Apply3(_module.TraitFunc$X, 
      _module.TraitFunc$Y, 
      _module.TraitFunc.F'$U, 
      Tclass._System.Tuple3(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U), 
      $heap, 
      _module.TraitFunc.F_k#Handle(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2) } 
  Apply3(_module.TraitFunc$X, 
      _module.TraitFunc$Y, 
      _module.TraitFunc.F'$U, 
      Tclass._System.Tuple3(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U), 
      $heap, 
      _module.TraitFunc.F_k#Handle(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2)
     == $Box(_module.TraitFunc.F_k(_module.TraitFunc$X, 
        _module.TraitFunc$Y, 
        _module.TraitFunc.F'$U, 
        $fh$0x#0, 
        $fh$0x#1, 
        $fh$0x#2)));

axiom (forall _module.TraitFunc$X: Ty, 
    _module.TraitFunc$Y: Ty, 
    _module.TraitFunc.F'$U: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box :: 
  { Requires3(_module.TraitFunc$X, 
      _module.TraitFunc$Y, 
      _module.TraitFunc.F'$U, 
      Tclass._System.Tuple3(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U), 
      $heap, 
      _module.TraitFunc.F_k#Handle(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2) } 
  Requires3(_module.TraitFunc$X, 
      _module.TraitFunc$Y, 
      _module.TraitFunc.F'$U, 
      Tclass._System.Tuple3(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U), 
      $heap, 
      _module.TraitFunc.F_k#Handle(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2)
     == _module.TraitFunc.F_k#requires(_module.TraitFunc$X, 
      _module.TraitFunc$Y, 
      _module.TraitFunc.F'$U, 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2));

axiom (forall $bx: Box, 
    _module.TraitFunc$X: Ty, 
    _module.TraitFunc$Y: Ty, 
    _module.TraitFunc.F'$U: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box :: 
  { Set#IsMember(Reads3(_module.TraitFunc$X, 
        _module.TraitFunc$Y, 
        _module.TraitFunc.F'$U, 
        Tclass._System.Tuple3(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U), 
        $heap, 
        _module.TraitFunc.F_k#Handle(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U), 
        $fh$0x#0, 
        $fh$0x#1, 
        $fh$0x#2), 
      $bx) } 
  Set#IsMember(Reads3(_module.TraitFunc$X, 
        _module.TraitFunc$Y, 
        _module.TraitFunc.F'$U, 
        Tclass._System.Tuple3(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U), 
        $heap, 
        _module.TraitFunc.F_k#Handle(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U), 
        $fh$0x#0, 
        $fh$0x#1, 
        $fh$0x#2), 
      $bx)
     == false);

axiom (forall _module.TraitFunc$X: Ty, 
    _module.TraitFunc$Y: Ty, 
    _module.TraitFunc.F'$U: Ty, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box :: 
  { _module.TraitFunc.F_k(_module.TraitFunc$X, 
      _module.TraitFunc$Y, 
      _module.TraitFunc.F'$U, 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2), $IsGoodHeap($heap) } 
  _module.TraitFunc.F_k(_module.TraitFunc$X, 
      _module.TraitFunc$Y, 
      _module.TraitFunc.F'$U, 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2)
     == $Unbox(Apply3(_module.TraitFunc$X, 
        _module.TraitFunc$Y, 
        _module.TraitFunc.F'$U, 
        Tclass._System.Tuple3(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U), 
        $heap, 
        _module.TraitFunc.F_k#Handle(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U), 
        $fh$0x#0, 
        $fh$0x#1, 
        $fh$0x#2)): DatatypeType);

function _module.TraitFunc.G_k#Handle(_module.TraitFunc$X: Ty, 
    _module.TraitFunc$Y: Ty, 
    _module.TraitFunc.G'$U: Ty, 
    self: ref)
   : HandleType;

// function declaration for _module.TraitFunc.G'
function _module.TraitFunc.G_k(_module.TraitFunc$X: Ty, 
    _module.TraitFunc$Y: Ty, 
    _module.TraitFunc.G'$U: Ty, 
    this: ref, 
    x#0: Box, 
    y#0: Box, 
    u#0: Box)
   : DatatypeType
uses {
// consequence axiom for _module.TraitFunc.G_k
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.TraitFunc$X: Ty, 
      _module.TraitFunc$Y: Ty, 
      _module.TraitFunc.G'$U: Ty, 
      this: ref, 
      x#0: Box, 
      y#0: Box, 
      u#0: Box :: 
    { _module.TraitFunc.G_k(_module.TraitFunc$X, 
        _module.TraitFunc$Y, 
        _module.TraitFunc.G'$U, 
        this, 
        x#0, 
        y#0, 
        u#0) } 
    _module.TraitFunc.G_k#canCall(_module.TraitFunc$X, 
          _module.TraitFunc$Y, 
          _module.TraitFunc.G'$U, 
          this, 
          x#0, 
          y#0, 
          u#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.TraitFunc(_module.TraitFunc$X, _module.TraitFunc$Y))
           && $IsBox(x#0, _module.TraitFunc$X)
           && $IsBox(y#0, _module.TraitFunc$Y)
           && $IsBox(u#0, _module.TraitFunc.G'$U))
       ==> $Is(_module.TraitFunc.G_k(_module.TraitFunc$X, 
          _module.TraitFunc$Y, 
          _module.TraitFunc.G'$U, 
          this, 
          x#0, 
          y#0, 
          u#0), 
        Tclass._System.Tuple3(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.G'$U)));
// alloc consequence axiom for _module.TraitFunc.G_k
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module.TraitFunc$X: Ty, 
      _module.TraitFunc$Y: Ty, 
      _module.TraitFunc.G'$U: Ty, 
      this: ref, 
      x#0: Box, 
      y#0: Box, 
      u#0: Box :: 
    { $IsAlloc(_module.TraitFunc.G_k(_module.TraitFunc$X, 
          _module.TraitFunc$Y, 
          _module.TraitFunc.G'$U, 
          this, 
          x#0, 
          y#0, 
          u#0), 
        Tclass._System.Tuple3(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.G'$U), 
        $Heap) } 
    (_module.TraitFunc.G_k#canCall(_module.TraitFunc$X, 
            _module.TraitFunc$Y, 
            _module.TraitFunc.G'$U, 
            this, 
            x#0, 
            y#0, 
            u#0)
           || (0 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass._module.TraitFunc(_module.TraitFunc$X, _module.TraitFunc$Y), $Heap)
             && 
            $IsBox(x#0, _module.TraitFunc$X)
             && $IsAllocBox(x#0, _module.TraitFunc$X, $Heap)
             && 
            $IsBox(y#0, _module.TraitFunc$Y)
             && $IsAllocBox(y#0, _module.TraitFunc$Y, $Heap)
             && 
            $IsBox(u#0, _module.TraitFunc.G'$U)
             && $IsAllocBox(u#0, _module.TraitFunc.G'$U, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.TraitFunc.G_k(_module.TraitFunc$X, 
          _module.TraitFunc$Y, 
          _module.TraitFunc.G'$U, 
          this, 
          x#0, 
          y#0, 
          u#0), 
        Tclass._System.Tuple3(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.G'$U), 
        $Heap));
// definition axiom for _module.TraitFunc.G_k (revealed)
axiom {:id "id169"} 0 <= $FunctionContextHeight
   ==> (forall _module.TraitFunc$X: Ty, 
      _module.TraitFunc$Y: Ty, 
      _module.TraitFunc.G'$U: Ty, 
      this: ref, 
      x#0: Box, 
      y#0: Box, 
      u#0: Box :: 
    { _module.TraitFunc.G_k(_module.TraitFunc$X, 
        _module.TraitFunc$Y, 
        _module.TraitFunc.G'$U, 
        this, 
        x#0, 
        y#0, 
        u#0) } 
    _module.TraitFunc.G_k#canCall(_module.TraitFunc$X, 
          _module.TraitFunc$Y, 
          _module.TraitFunc.G'$U, 
          this, 
          x#0, 
          y#0, 
          u#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.TraitFunc(_module.TraitFunc$X, _module.TraitFunc$Y))
           && $IsBox(x#0, _module.TraitFunc$X)
           && $IsBox(y#0, _module.TraitFunc$Y)
           && $IsBox(u#0, _module.TraitFunc.G'$U))
       ==> _module.TraitFunc.G_k(_module.TraitFunc$X, 
          _module.TraitFunc$Y, 
          _module.TraitFunc.G'$U, 
          this, 
          x#0, 
          y#0, 
          u#0)
         == #_System._tuple#3._#Make3(x#0, y#0, u#0));
// definition axiom for _module.TraitFunc.G_k for all literals (revealed)
axiom {:id "id170"} 0 <= $FunctionContextHeight
   ==> (forall _module.TraitFunc$X: Ty, 
      _module.TraitFunc$Y: Ty, 
      _module.TraitFunc.G'$U: Ty, 
      this: ref, 
      x#0: Box, 
      y#0: Box, 
      u#0: Box :: 
    {:weight 3} { _module.TraitFunc.G_k(_module.TraitFunc$X, 
        _module.TraitFunc$Y, 
        _module.TraitFunc.G'$U, 
        Lit(this), 
        Lit(x#0), 
        Lit(y#0), 
        Lit(u#0)) } 
    _module.TraitFunc.G_k#canCall(_module.TraitFunc$X, 
          _module.TraitFunc$Y, 
          _module.TraitFunc.G'$U, 
          Lit(this), 
          Lit(x#0), 
          Lit(y#0), 
          Lit(u#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.TraitFunc(_module.TraitFunc$X, _module.TraitFunc$Y))
           && $IsBox(x#0, _module.TraitFunc$X)
           && $IsBox(y#0, _module.TraitFunc$Y)
           && $IsBox(u#0, _module.TraitFunc.G'$U))
       ==> _module.TraitFunc.G_k(_module.TraitFunc$X, 
          _module.TraitFunc$Y, 
          _module.TraitFunc.G'$U, 
          Lit(this), 
          Lit(x#0), 
          Lit(y#0), 
          Lit(u#0))
         == Lit(#_System._tuple#3._#Make3(Lit(x#0), Lit(y#0), Lit(u#0))));
}

function _module.TraitFunc.G_k#canCall(_module.TraitFunc$X: Ty, 
    _module.TraitFunc$Y: Ty, 
    _module.TraitFunc.G'$U: Ty, 
    this: ref, 
    x#0: Box, 
    y#0: Box, 
    u#0: Box)
   : bool;

axiom (forall _module.TraitFunc$X: Ty, 
    _module.TraitFunc$Y: Ty, 
    _module.TraitFunc.G'$U: Ty, 
    $self: ref, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box :: 
  { Apply3(_module.TraitFunc$X, 
      _module.TraitFunc$Y, 
      _module.TraitFunc.G'$U, 
      Tclass._System.Tuple3(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.G'$U), 
      $heap, 
      _module.TraitFunc.G_k#Handle(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.G'$U, $self), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2) } 
  Apply3(_module.TraitFunc$X, 
      _module.TraitFunc$Y, 
      _module.TraitFunc.G'$U, 
      Tclass._System.Tuple3(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.G'$U), 
      $heap, 
      _module.TraitFunc.G_k#Handle(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.G'$U, $self), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2)
     == $Box(_module.TraitFunc.G_k(_module.TraitFunc$X, 
        _module.TraitFunc$Y, 
        _module.TraitFunc.G'$U, 
        $self, 
        $fh$0x#0, 
        $fh$0x#1, 
        $fh$0x#2)));

axiom (forall _module.TraitFunc$X: Ty, 
    _module.TraitFunc$Y: Ty, 
    _module.TraitFunc.G'$U: Ty, 
    $self: ref, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box :: 
  { Requires3(_module.TraitFunc$X, 
      _module.TraitFunc$Y, 
      _module.TraitFunc.G'$U, 
      Tclass._System.Tuple3(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.G'$U), 
      $heap, 
      _module.TraitFunc.G_k#Handle(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.G'$U, $self), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2) } 
  Requires3(_module.TraitFunc$X, 
      _module.TraitFunc$Y, 
      _module.TraitFunc.G'$U, 
      Tclass._System.Tuple3(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.G'$U), 
      $heap, 
      _module.TraitFunc.G_k#Handle(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.G'$U, $self), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2)
     == _module.TraitFunc.G_k#requires(_module.TraitFunc$X, 
      _module.TraitFunc$Y, 
      _module.TraitFunc.G'$U, 
      $self, 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2));

axiom (forall $bx: Box, 
    _module.TraitFunc$X: Ty, 
    _module.TraitFunc$Y: Ty, 
    _module.TraitFunc.G'$U: Ty, 
    $self: ref, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box :: 
  { Set#IsMember(Reads3(_module.TraitFunc$X, 
        _module.TraitFunc$Y, 
        _module.TraitFunc.G'$U, 
        Tclass._System.Tuple3(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.G'$U), 
        $heap, 
        _module.TraitFunc.G_k#Handle(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.G'$U, $self), 
        $fh$0x#0, 
        $fh$0x#1, 
        $fh$0x#2), 
      $bx) } 
  Set#IsMember(Reads3(_module.TraitFunc$X, 
        _module.TraitFunc$Y, 
        _module.TraitFunc.G'$U, 
        Tclass._System.Tuple3(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.G'$U), 
        $heap, 
        _module.TraitFunc.G_k#Handle(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.G'$U, $self), 
        $fh$0x#0, 
        $fh$0x#1, 
        $fh$0x#2), 
      $bx)
     == false);

axiom (forall _module.TraitFunc$X: Ty, 
    _module.TraitFunc$Y: Ty, 
    _module.TraitFunc.G'$U: Ty, 
    $self: ref, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box :: 
  { _module.TraitFunc.G_k(_module.TraitFunc$X, 
      _module.TraitFunc$Y, 
      _module.TraitFunc.G'$U, 
      $self, 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2), $IsGoodHeap($heap) } 
  _module.TraitFunc.G_k(_module.TraitFunc$X, 
      _module.TraitFunc$Y, 
      _module.TraitFunc.G'$U, 
      $self, 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2)
     == $Unbox(Apply3(_module.TraitFunc$X, 
        _module.TraitFunc$Y, 
        _module.TraitFunc.G'$U, 
        Tclass._System.Tuple3(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.G'$U), 
        $heap, 
        _module.TraitFunc.G_k#Handle(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.G'$U, $self), 
        $fh$0x#0, 
        $fh$0x#1, 
        $fh$0x#2)): DatatypeType);

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FunctionValues (correctness)"} Impl$$_module.__default.FunctionValues() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.ClassFunc(TReal))
         && $IsAlloc(c#0, Tclass._module.ClassFunc(TReal), $Heap);
  var $nw: ref;
  var defass#t#0: bool;
  var t#0: ref
     where defass#t#0
       ==> $Is(t#0, Tclass._module.TraitFunc(TInt, TReal))
         && $IsAlloc(t#0, Tclass._module.TraitFunc(TInt, TReal), $Heap);
  var d#0: DatatypeType
     where $Is(d#0, Tclass._module.DatatypeFunc(TReal))
       && $IsAlloc(d#0, Tclass._module.DatatypeFunc(TReal), $Heap);
  var n#0: int where LitInt(0) <= n#0 && n#0 < 25;
  var newtype$check#0: int;
  var h#0: HandleType
     where $Is(h#0, 
        Tclass._System.___hTotalFunc2(TReal, TBool, Tclass._System.Tuple2(TReal, TBool)))
       && $IsAlloc(h#0, 
        Tclass._System.___hTotalFunc2(TReal, TBool, Tclass._System.Tuple2(TReal, TBool)), 
        $Heap);
  var k#0: HandleType
     where $Is(k#0, 
        Tclass._System.___hTotalFunc2(TReal, TBool, Tclass._System.Tuple2(TReal, TBool)))
       && $IsAlloc(k#0, 
        Tclass._System.___hTotalFunc2(TReal, TBool, Tclass._System.Tuple2(TReal, TBool)), 
        $Heap);
  var h#1: HandleType
     where $Is(h#1, 
        Tclass._System.___hTotalFunc2(TReal, TBool, Tclass._System.Tuple2(TReal, TBool)))
       && $IsAlloc(h#1, 
        Tclass._System.___hTotalFunc2(TReal, TBool, Tclass._System.Tuple2(TReal, TBool)), 
        $Heap);
  var k#1: HandleType
     where $Is(k#1, 
        Tclass._System.___hTotalFunc2(TReal, TBool, Tclass._System.Tuple2(TReal, TBool)))
       && $IsAlloc(k#1, 
        Tclass._System.___hTotalFunc2(TReal, TBool, Tclass._System.Tuple2(TReal, TBool)), 
        $Heap);
  var h#2: HandleType
     where $Is(h#2, Tclass._System.___hTotalFunc1(TBool, TBool))
       && $IsAlloc(h#2, Tclass._System.___hTotalFunc1(TBool, TBool), $Heap);
  var k#2: HandleType
     where $Is(k#2, Tclass._System.___hTotalFunc1(TBool, TBool))
       && $IsAlloc(k#2, Tclass._System.___hTotalFunc1(TBool, TBool), $Heap);
  var f0#0: HandleType
     where $Is(f0#0, 
        Tclass._System.___hTotalFunc3(TInt, TReal, TBool, Tclass._System.Tuple3(TInt, TReal, TBool)))
       && $IsAlloc(f0#0, 
        Tclass._System.___hTotalFunc3(TInt, TReal, TBool, Tclass._System.Tuple3(TInt, TReal, TBool)), 
        $Heap);
  var f1#0: HandleType
     where $Is(f1#0, 
        Tclass._System.___hTotalFunc3(TInt, TReal, TBool, Tclass._System.Tuple3(TInt, TReal, TBool)))
       && $IsAlloc(f1#0, 
        Tclass._System.___hTotalFunc3(TInt, TReal, TBool, Tclass._System.Tuple3(TInt, TReal, TBool)), 
        $Heap);
  var g#0: HandleType
     where $Is(g#0, 
        Tclass._System.___hTotalFunc3(TInt, TReal, TBool, Tclass._System.Tuple3(TInt, TReal, TBool)))
       && $IsAlloc(g#0, 
        Tclass._System.___hTotalFunc3(TInt, TReal, TBool, Tclass._System.Tuple3(TInt, TReal, TBool)), 
        $Heap);
  var $rhs#0: HandleType;
  var $rhs#1: HandleType;
  var $rhs#2: HandleType;
  var $rhs#3: HandleType;
  var $rhs#4: HandleType;
  var $rhs#5: HandleType;

    // AddMethodImpl: FunctionValues, Impl$$_module.__default.FunctionValues
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(99,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassFunc?(TReal));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    c#0 := $nw;
    defass#c#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(100,20)
    assume true;
    assert {:id "id70"} defass#c#0;
    assume true;
    t#0 := c#0;
    defass#t#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(101,9)
    assume true;
    assume true;
    d#0 := Lit(#_module.DatatypeFunc.DFMake($Box(LitReal(18e0))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(102,22)
    assume true;
    newtype$check#0 := LitInt(9);
    assert {:id "id73"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 25;
    assume true;
    n#0 := LitInt(9);
    push;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(105,11)
    assume true;
    assert {:id "id75"} 0 != $FunctionContextHeight;
    assume true;
    h#0 := _module.ClassFunc.F#Handle(TReal, TBool);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(106,11)
    assume true;
    assert {:id "id77"} 0 != $FunctionContextHeight;
    assert {:id "id78"} defass#c#0;
    assert {:id "id79"} c#0 != null;
    assume true;
    k#0 := _module.ClassFunc.G#Handle(TReal, TBool, c#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(107,5)
    assume true;
    assume true;
    assume true;
    assume true;
    pop;
    push;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(111,11)
    assume true;
    assert {:id "id81"} 0 != $FunctionContextHeight;
    assume true;
    h#1 := _module.DatatypeFunc.F#Handle(TReal, TBool);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(112,11)
    assume true;
    assert {:id "id83"} 0 != $FunctionContextHeight;
    assume true;
    k#1 := _module.DatatypeFunc.G#Handle(TReal, TBool, d#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(113,5)
    assume true;
    assume true;
    assume true;
    assume true;
    pop;
    push;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(117,11)
    assume true;
    assert {:id "id85"} 0 != $FunctionContextHeight;
    assume true;
    h#2 := _module.NewtypeFunc.F#Handle(TBool);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(118,11)
    assume true;
    assert {:id "id87"} 0 != $FunctionContextHeight;
    assume true;
    k#2 := _module.NewtypeFunc.G#Handle(TBool, n#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(119,5)
    assume true;
    assume true;
    assume true;
    assume true;
    pop;
    havoc f0#0 /* where $Is(f0#0, 
        Tclass._System.___hTotalFunc3(TInt, TReal, TBool, Tclass._System.Tuple3(TInt, TReal, TBool)))
       && $IsAlloc(f0#0, 
        Tclass._System.___hTotalFunc3(TInt, TReal, TBool, Tclass._System.Tuple3(TInt, TReal, TBool)), 
        $Heap) */, f1#0 /* where $Is(f1#0, 
        Tclass._System.___hTotalFunc3(TInt, TReal, TBool, Tclass._System.Tuple3(TInt, TReal, TBool)))
       && $IsAlloc(f1#0, 
        Tclass._System.___hTotalFunc3(TInt, TReal, TBool, Tclass._System.Tuple3(TInt, TReal, TBool)), 
        $Heap) */, g#0 /* where $Is(g#0, 
        Tclass._System.___hTotalFunc3(TInt, TReal, TBool, Tclass._System.Tuple3(TInt, TReal, TBool)))
       && $IsAlloc(g#0, 
        Tclass._System.___hTotalFunc3(TInt, TReal, TBool, Tclass._System.Tuple3(TInt, TReal, TBool)), 
        $Heap) */;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(124,15)
    assume true;
    assume true;
    assume true;
    assert {:id "id89"} 0 != $FunctionContextHeight;
    assume true;
    $rhs#0 := _module.TraitFunc.F_k#Handle(TInt, TReal, TBool);
    assert {:id "id91"} 0 != $FunctionContextHeight;
    assert {:id "id92"} defass#t#0;
    assume true;
    $rhs#1 := _module.TraitFunc.F_k#Handle(TInt, TReal, TBool);
    assert {:id "id94"} 0 != $FunctionContextHeight;
    assert {:id "id95"} defass#t#0;
    assert {:id "id96"} t#0 != null;
    assume true;
    $rhs#2 := _module.TraitFunc.G_k#Handle(TInt, TReal, TBool, t#0);
    f0#0 := $rhs#0;
    f1#0 := $rhs#1;
    g#0 := $rhs#2;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(125,5)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(127,15)
    assume true;
    assume true;
    assume true;
    assert {:id "id101"} 0 != $FunctionContextHeight;
    assume true;
    $rhs#3 := _module.TraitFunc.F_k#Handle(TInt, TReal, TBool);
    assert {:id "id103"} 0 != $FunctionContextHeight;
    assert {:id "id104"} defass#c#0;
    assume true;
    $rhs#4 := _module.TraitFunc.F_k#Handle(TInt, TReal, TBool);
    assert {:id "id106"} 0 != $FunctionContextHeight;
    assert {:id "id107"} defass#c#0;
    assert {:id "id108"} c#0 != null;
    assume true;
    $rhs#5 := _module.TraitFunc.G_k#Handle(TInt, TReal, TBool, c#0);
    f0#0 := $rhs#3;
    f1#0 := $rhs#4;
    g#0 := $rhs#5;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(128,5)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "Coercions (well-formedness)"} CheckWellFormed$$_module.__default.Coercions();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Coercions (call)"} Call$$_module.__default.Coercions();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Coercions (correctness)"} Impl$$_module.__default.Coercions() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Coer(Ty) : Ty;

const unique Tagclass._module.Coer: TyTag;

// Tclass._module.Coer Tag
axiom (forall _module.Coer$T: Ty :: 
  { Tclass._module.Coer(_module.Coer$T) } 
  Tag(Tclass._module.Coer(_module.Coer$T)) == Tagclass._module.Coer
     && TagFamily(Tclass._module.Coer(_module.Coer$T)) == tytagFamily$Coer);

function Tclass._module.Coer_0(Ty) : Ty;

// Tclass._module.Coer injectivity 0
axiom (forall _module.Coer$T: Ty :: 
  { Tclass._module.Coer(_module.Coer$T) } 
  Tclass._module.Coer_0(Tclass._module.Coer(_module.Coer$T)) == _module.Coer$T);

// Box/unbox axiom for Tclass._module.Coer
axiom (forall _module.Coer$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Coer(_module.Coer$T)) } 
  $IsBox(bx, Tclass._module.Coer(_module.Coer$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Coer(_module.Coer$T)));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Coercions (correctness)"} Impl$$_module.__default.Coercions() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.Coer(TInt))
         && $IsAlloc(c#0, Tclass._module.Coer(TInt), $Heap);
  var $nw: ref;
  var u##0: int;
  var y#0: int;
  var $rhs#0: int;
  var z#0: int;
  var ##g#0: int;
  var plus#0: HandleType
     where $Is(plus#0, Tclass._System.___hTotalFunc1(TInt, TInt))
       && $IsAlloc(plus#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap);
  var $lambdaHeap#0: Heap;
  var u#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;
  var p#0: HandleType
     where $Is(p#0, Tclass._System.___hTotalFunc1(TInt, TInt))
       && $IsAlloc(p#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap);
  var ##g#1: HandleType;
  var q#0: HandleType
     where $Is(q#0, Tclass._System.___hTotalFunc1(TInt, TInt))
       && $IsAlloc(q#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap);
  var ##h#0: HandleType;
  var ##g#2: HandleType;
  var ##g#3: HandleType;
  var ##g#4: int;

    // AddMethodImpl: Coercions, Impl$$_module.__default.Coercions
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(171,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(171,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    u##0 := LitInt(50);
    call {:id "id113"} $nw := Call$$_module.Coer.__ctor(TInt, $Box(u##0));
    // TrCallStmt: After ProcessCallStmt
    c#0 := $nw;
    defass#c#0 := true;
    havoc y#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(173,5)
    assume true;
    assert {:id "id115"} defass#c#0;
    assert {:id "id116"} c#0 != null;
    assume true;
    y#0 := $Unbox(read($Heap, c#0, _module.Coer.x)): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(174,7)
    assert {:id "id118"} defass#c#0;
    assert {:id "id119"} c#0 != null;
    assume true;
    assert {:id "id120"} $_ModifiesFrame[c#0, _module.Coer.x];
    assume true;
    $rhs#0 := y#0;
    $Heap := update($Heap, c#0, _module.Coer.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(175,5)
    assume true;
    assert {:id "id123"} defass#c#0;
    assert {:id "id124"} c#0 != null;
    assume true;
    y#0 := $Unbox(read($Heap, c#0, _module.Coer.m)): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(177,9)
    assume true;
    ##g#0 := y#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##g#0, TInt, $Heap);
    assume _module.__default.Id#canCall(TInt, $Box(y#0));
    assume _module.__default.Id#canCall(TInt, $Box(y#0));
    z#0 := $Unbox(_module.__default.Id(TInt, $Box(y#0))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(178,12)
    assume true;
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#0;
        assume $IsGoodHeap($lambdaHeap#0);
        assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
        havoc u#0;
        if (true)
        {
            $_Frame#l0 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
            assume {:id "id127"} lambdaResult#0 == u#0 + 1;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#0, TInt);
        }

        assume false;
    }

    // End Comprehension WF check
    assume true;
    plus#0 := Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
          Handle1((lambda $l#0#heap#0: Heap, $l#0#u#0: Box :: $Box($Unbox($l#0#u#0): int + 1)), 
            (lambda $l#0#heap#0: Heap, $l#0#u#0: Box :: $IsBox($l#0#u#0, TInt)), 
            (lambda $l#0#heap#0: Heap, $l#0#u#0: Box :: 
              SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
        $LS($LZ)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(179,9)
    assume true;
    ##g#1 := plus#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##g#1, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap);
    assume _module.__default.Id#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), $Box(plus#0));
    assume _module.__default.Id#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), $Box(plus#0));
    p#0 := $Unbox(_module.__default.Id(Tclass._System.___hTotalFunc1(TInt, TInt), $Box(plus#0))): HandleType;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(180,9)
    assume true;
    ##h#0 := plus#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##h#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap);
    assume _module.__default.IdFunc#canCall(TInt, plus#0);
    assume _module.__default.IdFunc#canCall(TInt, plus#0);
    q#0 := _module.__default.IdFunc(TInt, plus#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(181,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(182,3)
    assert {:id "id131"} defass#c#0;
    assert {:id "id132"} {:subsumption 0} c#0 != null;
    ##g#3 := plus#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##g#3, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap);
    assume _module.__default.Id#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), $Box(plus#0));
    ##g#2 := $Unbox(_module.__default.Id(Tclass._System.___hTotalFunc1(TInt, TInt), $Box(plus#0))): HandleType;
    // assume allocatedness for argument to function
    assume $IsAlloc(##g#2, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap);
    assume _module.__default.Id#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), 
      _module.__default.Id(Tclass._System.___hTotalFunc1(TInt, TInt), $Box(plus#0)));
    ##g#4 := y#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##g#4, TInt, $Heap);
    assume _module.__default.Id#canCall(TInt, $Box(y#0));
    assume _module.__default.Id#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), $Box(plus#0))
       && _module.__default.Id#canCall(Tclass._System.___hTotalFunc1(TInt, TInt), 
        _module.__default.Id(Tclass._System.___hTotalFunc1(TInt, TInt), $Box(plus#0)))
       && _module.__default.Id#canCall(TInt, $Box(y#0));
    assume true;
}



// function declaration for _module._default.Id
function _module.__default.Id(_module._default.Id$G: Ty, g#0: Box) : Box
uses {
// consequence axiom for _module.__default.Id
axiom 0 <= $FunctionContextHeight
   ==> (forall _module._default.Id$G: Ty, g#0: Box :: 
    { _module.__default.Id(_module._default.Id$G, g#0) } 
    _module.__default.Id#canCall(_module._default.Id$G, g#0)
         || (0 < $FunctionContextHeight && $IsBox(g#0, _module._default.Id$G))
       ==> $IsBox(_module.__default.Id(_module._default.Id$G, g#0), _module._default.Id$G));
// alloc consequence axiom for _module.__default.Id
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module._default.Id$G: Ty, g#0: Box :: 
    { $IsAllocBox(_module.__default.Id(_module._default.Id$G, g#0), _module._default.Id$G, $Heap) } 
    (_module.__default.Id#canCall(_module._default.Id$G, g#0)
           || (0 < $FunctionContextHeight
             && 
            $IsBox(g#0, _module._default.Id$G)
             && $IsAllocBox(g#0, _module._default.Id$G, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(_module.__default.Id(_module._default.Id$G, g#0), _module._default.Id$G, $Heap));
// definition axiom for _module.__default.Id (revealed)
axiom {:id "id133"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Id$G: Ty, g#0: Box :: 
    { _module.__default.Id(_module._default.Id$G, g#0) } 
    _module.__default.Id#canCall(_module._default.Id$G, g#0)
         || (0 < $FunctionContextHeight && $IsBox(g#0, _module._default.Id$G))
       ==> _module.__default.Id(_module._default.Id$G, g#0) == g#0);
// definition axiom for _module.__default.Id for all literals (revealed)
axiom {:id "id134"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Id$G: Ty, g#0: Box :: 
    {:weight 3} { _module.__default.Id(_module._default.Id$G, Lit(g#0)) } 
    _module.__default.Id#canCall(_module._default.Id$G, Lit(g#0))
         || (0 < $FunctionContextHeight && $IsBox(g#0, _module._default.Id$G))
       ==> _module.__default.Id(_module._default.Id$G, Lit(g#0)) == Lit(g#0));
}

function _module.__default.Id#canCall(_module._default.Id$G: Ty, g#0: Box) : bool;

function _module.__default.Id#requires(Ty, Box) : bool;

// #requires axiom for _module.__default.Id
axiom (forall _module._default.Id$G: Ty, g#0: Box :: 
  { _module.__default.Id#requires(_module._default.Id$G, g#0) } 
  $IsBox(g#0, _module._default.Id$G)
     ==> _module.__default.Id#requires(_module._default.Id$G, g#0) == true);

procedure {:verboseName "Id (well-formedness)"} CheckWellformed$$_module.__default.Id(_module._default.Id$G: Ty, g#0: Box where $IsBox(g#0, _module._default.Id$G));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.IdFunc
function _module.__default.IdFunc(_module._default.IdFunc$H: Ty, h#0: HandleType) : HandleType
uses {
// consequence axiom for _module.__default.IdFunc
axiom 0 <= $FunctionContextHeight
   ==> (forall _module._default.IdFunc$H: Ty, h#0: HandleType :: 
    { _module.__default.IdFunc(_module._default.IdFunc$H, h#0) } 
    _module.__default.IdFunc#canCall(_module._default.IdFunc$H, h#0)
         || (0 < $FunctionContextHeight
           && $Is(h#0, 
            Tclass._System.___hTotalFunc1(_module._default.IdFunc$H, _module._default.IdFunc$H)))
       ==> $Is(_module.__default.IdFunc(_module._default.IdFunc$H, h#0), 
        Tclass._System.___hTotalFunc1(_module._default.IdFunc$H, _module._default.IdFunc$H)));
// alloc consequence axiom for _module.__default.IdFunc
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module._default.IdFunc$H: Ty, h#0: HandleType :: 
    { $IsAlloc(_module.__default.IdFunc(_module._default.IdFunc$H, h#0), 
        Tclass._System.___hTotalFunc1(_module._default.IdFunc$H, _module._default.IdFunc$H), 
        $Heap) } 
    (_module.__default.IdFunc#canCall(_module._default.IdFunc$H, h#0)
           || (0 < $FunctionContextHeight
             && 
            $Is(h#0, 
              Tclass._System.___hTotalFunc1(_module._default.IdFunc$H, _module._default.IdFunc$H))
             && $IsAlloc(h#0, 
              Tclass._System.___hTotalFunc1(_module._default.IdFunc$H, _module._default.IdFunc$H), 
              $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.IdFunc(_module._default.IdFunc$H, h#0), 
        Tclass._System.___hTotalFunc1(_module._default.IdFunc$H, _module._default.IdFunc$H), 
        $Heap));
// definition axiom for _module.__default.IdFunc (revealed)
axiom {:id "id136"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.IdFunc$H: Ty, h#0: HandleType :: 
    { _module.__default.IdFunc(_module._default.IdFunc$H, h#0) } 
    _module.__default.IdFunc#canCall(_module._default.IdFunc$H, h#0)
         || (0 < $FunctionContextHeight
           && $Is(h#0, 
            Tclass._System.___hTotalFunc1(_module._default.IdFunc$H, _module._default.IdFunc$H)))
       ==> _module.__default.IdFunc(_module._default.IdFunc$H, h#0) == h#0);
// definition axiom for _module.__default.IdFunc for all literals (revealed)
axiom {:id "id137"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.IdFunc$H: Ty, h#0: HandleType :: 
    {:weight 3} { _module.__default.IdFunc(_module._default.IdFunc$H, Lit(h#0)) } 
    _module.__default.IdFunc#canCall(_module._default.IdFunc$H, Lit(h#0))
         || (0 < $FunctionContextHeight
           && $Is(h#0, 
            Tclass._System.___hTotalFunc1(_module._default.IdFunc$H, _module._default.IdFunc$H)))
       ==> _module.__default.IdFunc(_module._default.IdFunc$H, Lit(h#0)) == Lit(h#0));
}

function _module.__default.IdFunc#canCall(_module._default.IdFunc$H: Ty, h#0: HandleType) : bool;

function _module.__default.IdFunc#requires(Ty, HandleType) : bool;

// #requires axiom for _module.__default.IdFunc
axiom (forall _module._default.IdFunc$H: Ty, h#0: HandleType :: 
  { _module.__default.IdFunc#requires(_module._default.IdFunc$H, h#0) } 
  $Is(h#0, 
      Tclass._System.___hTotalFunc1(_module._default.IdFunc$H, _module._default.IdFunc$H))
     ==> _module.__default.IdFunc#requires(_module._default.IdFunc$H, h#0) == true);

procedure {:verboseName "IdFunc (well-formedness)"} CheckWellformed$$_module.__default.IdFunc(_module._default.IdFunc$H: Ty, 
    h#0: HandleType
       where $Is(h#0, 
        Tclass._System.___hTotalFunc1(_module._default.IdFunc$H, _module._default.IdFunc$H)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



const unique class._module.Trait?: ClassName;

function Tclass._module.Trait?(Ty, Ty) : Ty;

const unique Tagclass._module.Trait?: TyTag;

// Tclass._module.Trait? Tag
axiom (forall _module.Trait$G: Ty, _module.Trait$H: Ty :: 
  { Tclass._module.Trait?(_module.Trait$G, _module.Trait$H) } 
  Tag(Tclass._module.Trait?(_module.Trait$G, _module.Trait$H))
       == Tagclass._module.Trait?
     && TagFamily(Tclass._module.Trait?(_module.Trait$G, _module.Trait$H))
       == tytagFamily$Trait);

function Tclass._module.Trait?_0(Ty) : Ty;

// Tclass._module.Trait? injectivity 0
axiom (forall _module.Trait$G: Ty, _module.Trait$H: Ty :: 
  { Tclass._module.Trait?(_module.Trait$G, _module.Trait$H) } 
  Tclass._module.Trait?_0(Tclass._module.Trait?(_module.Trait$G, _module.Trait$H))
     == _module.Trait$G);

function Tclass._module.Trait?_1(Ty) : Ty;

// Tclass._module.Trait? injectivity 1
axiom (forall _module.Trait$G: Ty, _module.Trait$H: Ty :: 
  { Tclass._module.Trait?(_module.Trait$G, _module.Trait$H) } 
  Tclass._module.Trait?_1(Tclass._module.Trait?(_module.Trait$G, _module.Trait$H))
     == _module.Trait$H);

// Box/unbox axiom for Tclass._module.Trait?
axiom (forall _module.Trait$G: Ty, _module.Trait$H: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Trait?(_module.Trait$G, _module.Trait$H)) } 
  $IsBox(bx, Tclass._module.Trait?(_module.Trait$G, _module.Trait$H))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Trait?(_module.Trait$G, _module.Trait$H)));

// $Is axiom for trait Trait
axiom (forall _module.Trait$G: Ty, _module.Trait$H: Ty, $o: ref :: 
  { $Is($o, Tclass._module.Trait?(_module.Trait$G, _module.Trait$H)) } 
  $Is($o, Tclass._module.Trait?(_module.Trait$G, _module.Trait$H))
     <==> $o == null
       || implements$_module.Trait(dtype($o), _module.Trait$G, _module.Trait$H));

// $IsAlloc axiom for trait Trait
axiom (forall _module.Trait$G: Ty, _module.Trait$H: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Trait?(_module.Trait$G, _module.Trait$H), $h) } 
  $IsAlloc($o, Tclass._module.Trait?(_module.Trait$G, _module.Trait$H), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.Trait(ty: Ty, _module.Trait$G: Ty, _module.Trait$H: Ty) : bool;

function _module.Trait.K_k(_module.Trait$G: Ty, _module.Trait$H: Ty) : Box
uses {
// Trait.K': Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Trait$G: Ty, _module.Trait$H: Ty :: 
    { _module.Trait.K_k(_module.Trait$G, _module.Trait$H) } 
    $IsBox(_module.Trait.K_k(_module.Trait$G, _module.Trait$H), _module.Trait$H));
}

// Trait.K': Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Trait$G: Ty, _module.Trait$H: Ty, $h: Heap :: 
    { $IsAllocBox(_module.Trait.K_k(_module.Trait$G, _module.Trait$H), _module.Trait$H, $h) } 
    $IsGoodHeap($h)
       ==> $IsAllocBox(_module.Trait.K_k(_module.Trait$G, _module.Trait$H), _module.Trait$H, $h));

function _module.Trait.N_k(_module.Trait$G: Ty, _module.Trait$H: Ty) : int
uses {
axiom (forall _module.Trait$G: Ty, _module.Trait$H: Ty :: 
  { _module.Trait.N_k(_module.Trait$G, _module.Trait$H): int } 
  _module.Trait.N_k(_module.Trait$G, _module.Trait$H): int == LitInt(25));
// Trait.N': Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Trait$G: Ty, _module.Trait$H: Ty :: 
    { _module.Trait.N_k(_module.Trait$G, _module.Trait$H) } 
    $Is(_module.Trait.N_k(_module.Trait$G, _module.Trait$H), TInt));
}

procedure {:verboseName "Trait.N' (well-formedness)"} CheckWellFormed$$_module.Trait.N_k(_module.Trait$G: Ty, _module.Trait$H: Ty);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// Trait.N': Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Trait$G: Ty, _module.Trait$H: Ty, $h: Heap :: 
    { $IsAlloc(_module.Trait.N_k(_module.Trait$G, _module.Trait$H), TInt, $h) } 
    $IsGoodHeap($h)
       ==> $IsAlloc(_module.Trait.N_k(_module.Trait$G, _module.Trait$H), TInt, $h));

function _module.Trait.F_k#requires(Ty, Ty, Ty, Box, Box, Box) : bool;

// #requires axiom for _module.Trait.F_k
axiom (forall _module.Trait$G: Ty, 
    _module.Trait$H: Ty, 
    _module.Trait.F'$B: Ty, 
    g#0: Box, 
    h#0: Box, 
    b#0: Box :: 
  { _module.Trait.F_k#requires(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B, g#0, h#0, b#0) } 
  $IsBox(g#0, _module.Trait$G)
       && $IsBox(h#0, _module.Trait$H)
       && $IsBox(b#0, _module.Trait.F'$B)
     ==> _module.Trait.F_k#requires(_module.Trait$G, _module.Trait$H, _module.Trait.F'$B, g#0, h#0, b#0)
       == true);

procedure {:verboseName "Trait.F' (well-formedness)"} CheckWellformed$$_module.Trait.F_k(_module.Trait$G: Ty, 
    _module.Trait$H: Ty, 
    _module.Trait.F'$B: Ty, 
    g#0: Box where $IsBox(g#0, _module.Trait$G), 
    h#0: Box where $IsBox(h#0, _module.Trait$H), 
    b#0: Box where $IsBox(b#0, _module.Trait.F'$B));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Trait.M' (well-formedness)"} CheckWellFormed$$_module.Trait.M_k(_module.Trait$G: Ty, 
    _module.Trait$H: Ty, 
    _module.Trait.M'$B: Ty, 
    g#0: Box
       where $IsBox(g#0, _module.Trait$G) && $IsAllocBox(g#0, _module.Trait$G, $Heap), 
    h#0: Box
       where $IsBox(h#0, _module.Trait$H) && $IsAllocBox(h#0, _module.Trait$H, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module.Trait.M'$B) && $IsAllocBox(b#0, _module.Trait.M'$B, $Heap))
   returns (gg#0: Box
       where $IsBox(gg#0, _module.Trait$G) && $IsAllocBox(gg#0, _module.Trait$G, $Heap), 
    hh#0: Box
       where $IsBox(hh#0, _module.Trait$H) && $IsAllocBox(hh#0, _module.Trait$H, $Heap), 
    bb#0: Box
       where $IsBox(bb#0, _module.Trait.M'$B) && $IsAllocBox(bb#0, _module.Trait.M'$B, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Trait.M' (call)"} Call$$_module.Trait.M_k(_module.Trait$G: Ty, 
    _module.Trait$H: Ty, 
    _module.Trait.M'$B: Ty, 
    g#0: Box
       where $IsBox(g#0, _module.Trait$G) && $IsAllocBox(g#0, _module.Trait$G, $Heap), 
    h#0: Box
       where $IsBox(h#0, _module.Trait$H) && $IsAllocBox(h#0, _module.Trait$H, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module.Trait.M'$B) && $IsAllocBox(b#0, _module.Trait.M'$B, $Heap))
   returns (gg#0: Box
       where $IsBox(gg#0, _module.Trait$G) && $IsAllocBox(gg#0, _module.Trait$G, $Heap), 
    hh#0: Box
       where $IsBox(hh#0, _module.Trait$H) && $IsAllocBox(hh#0, _module.Trait$H, $Heap), 
    bb#0: Box
       where $IsBox(bb#0, _module.Trait.M'$B) && $IsAllocBox(bb#0, _module.Trait.M'$B, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Trait.M' (correctness)"} Impl$$_module.Trait.M_k(_module.Trait$G: Ty, 
    _module.Trait$H: Ty, 
    _module.Trait.M'$B: Ty, 
    g#0: Box
       where $IsBox(g#0, _module.Trait$G) && $IsAllocBox(g#0, _module.Trait$G, $Heap), 
    h#0: Box
       where $IsBox(h#0, _module.Trait$H) && $IsAllocBox(h#0, _module.Trait$H, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module.Trait.M'$B) && $IsAllocBox(b#0, _module.Trait.M'$B, $Heap))
   returns (defass#gg#0: bool, 
    gg#0: Box
       where defass#gg#0
         ==> $IsBox(gg#0, _module.Trait$G) && $IsAllocBox(gg#0, _module.Trait$G, $Heap), 
    hh#0: Box
       where $IsBox(hh#0, _module.Trait$H) && $IsAllocBox(hh#0, _module.Trait$H, $Heap), 
    defass#bb#0: bool, 
    bb#0: Box
       where defass#bb#0
         ==> $IsBox(bb#0, _module.Trait.M'$B) && $IsAllocBox(bb#0, _module.Trait.M'$B, $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Trait.M' (correctness)"} Impl$$_module.Trait.M_k(_module.Trait$G: Ty, 
    _module.Trait$H: Ty, 
    _module.Trait.M'$B: Ty, 
    g#0: Box, 
    h#0: Box, 
    b#0: Box)
   returns (defass#gg#0: bool, 
    gg#0: Box, 
    hh#0: Box, 
    defass#bb#0: bool, 
    bb#0: Box, 
    $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: Box;
  var $rhs#1: Box;
  var $rhs#2: Box;

    // AddMethodImpl: M', Impl$$_module.Trait.M_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(70,16)
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := g#0;
    assume true;
    $rhs#1 := h#0;
    assume true;
    $rhs#2 := b#0;
    gg#0 := $rhs#0;
    defass#gg#0 := true;
    hh#0 := $rhs#1;
    bb#0 := $rhs#2;
    defass#bb#0 := true;
    assert {:id "id148"} defass#gg#0;
    assert {:id "id149"} defass#bb#0;
}



// $Is axiom for non-null type _module.Trait
axiom (forall _module.Trait$G: Ty, _module.Trait$H: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.Trait(_module.Trait$G, _module.Trait$H)) } 
    { $Is(c#0, Tclass._module.Trait?(_module.Trait$G, _module.Trait$H)) } 
  $Is(c#0, Tclass._module.Trait(_module.Trait$G, _module.Trait$H))
     <==> $Is(c#0, Tclass._module.Trait?(_module.Trait$G, _module.Trait$H)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Trait
axiom (forall _module.Trait$G: Ty, _module.Trait$H: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Trait(_module.Trait$G, _module.Trait$H), $h) } 
    { $IsAlloc(c#0, Tclass._module.Trait?(_module.Trait$G, _module.Trait$H), $h) } 
  $IsAlloc(c#0, Tclass._module.Trait(_module.Trait$G, _module.Trait$H), $h)
     <==> $IsAlloc(c#0, Tclass._module.Trait?(_module.Trait$G, _module.Trait$H), $h));

const unique class._module.Class?: ClassName;

// $Is axiom for class Class
axiom (forall _module.Class$A: Ty, $o: ref :: 
  { $Is($o, Tclass._module.Class?(_module.Class$A)) } 
  $Is($o, Tclass._module.Class?(_module.Class$A))
     <==> $o == null || dtype($o) == Tclass._module.Class?(_module.Class$A));

// $IsAlloc axiom for class Class
axiom (forall _module.Class$A: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Class?(_module.Class$A), $h) } 
  $IsAlloc($o, Tclass._module.Class?(_module.Class$A), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _module.Class.K(_module.Class$A: Ty) : Box
uses {
// Class.K: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Class$A: Ty :: 
    { _module.Class.K(_module.Class$A) } 
    $IsBox(_module.Class.K(_module.Class$A), _module.Class$A));
}

// Class.K: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Class$A: Ty, $h: Heap :: 
    { $IsAllocBox(_module.Class.K(_module.Class$A), _module.Class$A, $h) } 
    $IsGoodHeap($h)
       ==> $IsAllocBox(_module.Class.K(_module.Class$A), _module.Class$A, $h));

function _module.Class.N(_module.Class$A: Ty) : int
uses {
axiom (forall _module.Class$A: Ty :: 
  { _module.Class.N(_module.Class$A): int } 
  _module.Class.N(_module.Class$A): int == LitInt(25));
// Class.N: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Class$A: Ty :: 
    { _module.Class.N(_module.Class$A) } 
    $Is(_module.Class.N(_module.Class$A), TInt));
}

procedure {:verboseName "Class.N (well-formedness)"} CheckWellFormed$$_module.Class.N(_module.Class$A: Ty);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// Class.N: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Class$A: Ty, $h: Heap :: 
    { $IsAlloc(_module.Class.N(_module.Class$A), TInt, $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(_module.Class.N(_module.Class$A), TInt, $h));

function _module.Class.F#requires(Ty, Ty, Box, Box) : bool;

// #requires axiom for _module.Class.F
axiom (forall _module.Class$A: Ty, _module.Class.F$B: Ty, a#0: Box, b#0: Box :: 
  { _module.Class.F#requires(_module.Class$A, _module.Class.F$B, a#0, b#0) } 
  $IsBox(a#0, _module.Class$A) && $IsBox(b#0, _module.Class.F$B)
     ==> _module.Class.F#requires(_module.Class$A, _module.Class.F$B, a#0, b#0) == true);

procedure {:verboseName "Class.F (well-formedness)"} CheckWellformed$$_module.Class.F(_module.Class$A: Ty, 
    _module.Class.F$B: Ty, 
    a#0: Box where $IsBox(a#0, _module.Class$A), 
    b#0: Box where $IsBox(b#0, _module.Class.F$B));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Class.M (well-formedness)"} CheckWellFormed$$_module.Class.M(_module.Class$A: Ty, 
    _module.Class.M$B: Ty, 
    a#0: Box
       where $IsBox(a#0, _module.Class$A) && $IsAllocBox(a#0, _module.Class$A, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module.Class.M$B) && $IsAllocBox(b#0, _module.Class.M$B, $Heap))
   returns (bb#0: Box
       where $IsBox(bb#0, _module.Class.M$B) && $IsAllocBox(bb#0, _module.Class.M$B, $Heap), 
    aa#0: Box
       where $IsBox(aa#0, _module.Class$A) && $IsAllocBox(aa#0, _module.Class$A, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Class.M (call)"} Call$$_module.Class.M(_module.Class$A: Ty, 
    _module.Class.M$B: Ty, 
    a#0: Box
       where $IsBox(a#0, _module.Class$A) && $IsAllocBox(a#0, _module.Class$A, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module.Class.M$B) && $IsAllocBox(b#0, _module.Class.M$B, $Heap))
   returns (bb#0: Box
       where $IsBox(bb#0, _module.Class.M$B) && $IsAllocBox(bb#0, _module.Class.M$B, $Heap), 
    aa#0: Box
       where $IsBox(aa#0, _module.Class$A) && $IsAllocBox(aa#0, _module.Class$A, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Class.M (correctness)"} Impl$$_module.Class.M(_module.Class$A: Ty, 
    _module.Class.M$B: Ty, 
    a#0: Box
       where $IsBox(a#0, _module.Class$A) && $IsAllocBox(a#0, _module.Class$A, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module.Class.M$B) && $IsAllocBox(b#0, _module.Class.M$B, $Heap))
   returns (defass#bb#0: bool, 
    bb#0: Box
       where defass#bb#0
         ==> $IsBox(bb#0, _module.Class.M$B) && $IsAllocBox(bb#0, _module.Class.M$B, $Heap), 
    aa#0: Box
       where $IsBox(aa#0, _module.Class$A) && $IsAllocBox(aa#0, _module.Class$A, $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Class.M (correctness)"} Impl$$_module.Class.M(_module.Class$A: Ty, _module.Class.M$B: Ty, a#0: Box, b#0: Box)
   returns (defass#bb#0: bool, bb#0: Box, aa#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: Box;
  var $rhs#1: Box;

    // AddMethodImpl: M, Impl$$_module.Class.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(81,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := b#0;
    assume true;
    $rhs#1 := a#0;
    bb#0 := $rhs#0;
    defass#bb#0 := true;
    aa#0 := $rhs#1;
    assert {:id "id157"} defass#bb#0;
}



// $Is axiom for non-null type _module.Class
axiom (forall _module.Class$A: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.Class(_module.Class$A)) } 
    { $Is(c#0, Tclass._module.Class?(_module.Class$A)) } 
  $Is(c#0, Tclass._module.Class(_module.Class$A))
     <==> $Is(c#0, Tclass._module.Class?(_module.Class$A)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Class
axiom (forall _module.Class$A: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Class(_module.Class$A), $h) } 
    { $IsAlloc(c#0, Tclass._module.Class?(_module.Class$A), $h) } 
  $IsAlloc(c#0, Tclass._module.Class(_module.Class$A), $h)
     <==> $IsAlloc(c#0, Tclass._module.Class?(_module.Class$A), $h));

// Constructor function declaration
function #_module.Datatype.Something() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Datatype.Something()) == ##_module.Datatype.Something;
// Constructor literal
axiom #_module.Datatype.Something() == Lit(#_module.Datatype.Something());
}

const unique ##_module.Datatype.Something: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Datatype.Something()) == ##_module.Datatype.Something;
}

function _module.Datatype.Something_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Datatype.Something_q(d) } 
  _module.Datatype.Something_q(d)
     <==> DatatypeCtorId(d) == ##_module.Datatype.Something);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Datatype.Something_q(d) } 
  _module.Datatype.Something_q(d) ==> d == #_module.Datatype.Something());

// Constructor $Is
axiom (forall _module.Datatype$A: Ty :: 
  { $Is(#_module.Datatype.Something(), Tclass._module.Datatype(_module.Datatype$A)) } 
  $Is(#_module.Datatype.Something(), Tclass._module.Datatype(_module.Datatype$A)));

// Constructor $IsAlloc
axiom (forall _module.Datatype$A: Ty, $h: Heap :: 
  { $IsAlloc(#_module.Datatype.Something(), Tclass._module.Datatype(_module.Datatype$A), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.Datatype.Something(), Tclass._module.Datatype(_module.Datatype$A), $h));

// Depth-one case-split function
function $IsA#_module.Datatype(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Datatype(d) } 
  $IsA#_module.Datatype(d) ==> _module.Datatype.Something_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Datatype$A: Ty, d: DatatypeType :: 
  { _module.Datatype.Something_q(d), $Is(d, Tclass._module.Datatype(_module.Datatype$A)) } 
  $Is(d, Tclass._module.Datatype(_module.Datatype$A))
     ==> _module.Datatype.Something_q(d));

// Datatype extensional equality declaration
function _module.Datatype#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Datatype.Something
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Datatype#Equal(a, b) } 
  _module.Datatype#Equal(a, b));

// Datatype extensionality axiom: _module.Datatype
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Datatype#Equal(a, b) } 
  _module.Datatype#Equal(a, b) <==> a == b);

const unique class._module.Datatype: ClassName;

function _module.Datatype.K(_module.Datatype$A: Ty) : Box
uses {
// Datatype.K: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Datatype$A: Ty :: 
    { _module.Datatype.K(_module.Datatype$A) } 
    $IsBox(_module.Datatype.K(_module.Datatype$A), _module.Datatype$A));
}

// Datatype.K: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Datatype$A: Ty, $h: Heap :: 
    { $IsAllocBox(_module.Datatype.K(_module.Datatype$A), _module.Datatype$A, $h) } 
    $IsGoodHeap($h)
       ==> $IsAllocBox(_module.Datatype.K(_module.Datatype$A), _module.Datatype$A, $h));

function _module.Datatype.N(_module.Datatype$A: Ty) : int
uses {
axiom (forall _module.Datatype$A: Ty :: 
  { _module.Datatype.N(_module.Datatype$A): int } 
  _module.Datatype.N(_module.Datatype$A): int == LitInt(25));
// Datatype.N: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Datatype$A: Ty :: 
    { _module.Datatype.N(_module.Datatype$A) } 
    $Is(_module.Datatype.N(_module.Datatype$A), TInt));
}

procedure {:verboseName "Datatype.N (well-formedness)"} CheckWellFormed$$_module.Datatype.N(_module.Datatype$A: Ty);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// Datatype.N: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Datatype$A: Ty, $h: Heap :: 
    { $IsAlloc(_module.Datatype.N(_module.Datatype$A), TInt, $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(_module.Datatype.N(_module.Datatype$A), TInt, $h));

function _module.Datatype.F#requires(Ty, Ty, Box, Box) : bool;

// #requires axiom for _module.Datatype.F
axiom (forall _module.Datatype$A: Ty, _module.Datatype.F$B: Ty, a#0: Box, b#0: Box :: 
  { _module.Datatype.F#requires(_module.Datatype$A, _module.Datatype.F$B, a#0, b#0) } 
  $IsBox(a#0, _module.Datatype$A) && $IsBox(b#0, _module.Datatype.F$B)
     ==> _module.Datatype.F#requires(_module.Datatype$A, _module.Datatype.F$B, a#0, b#0)
       == true);

procedure {:verboseName "Datatype.F (well-formedness)"} CheckWellformed$$_module.Datatype.F(_module.Datatype$A: Ty, 
    _module.Datatype.F$B: Ty, 
    a#0: Box where $IsBox(a#0, _module.Datatype$A), 
    b#0: Box where $IsBox(b#0, _module.Datatype.F$B));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Datatype.M (well-formedness)"} CheckWellFormed$$_module.Datatype.M(_module.Datatype$A: Ty, 
    _module.Datatype.M$B: Ty, 
    a#0: Box
       where $IsBox(a#0, _module.Datatype$A) && $IsAllocBox(a#0, _module.Datatype$A, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module.Datatype.M$B)
         && $IsAllocBox(b#0, _module.Datatype.M$B, $Heap))
   returns (bb#0: Box
       where $IsBox(bb#0, _module.Datatype.M$B)
         && $IsAllocBox(bb#0, _module.Datatype.M$B, $Heap), 
    aa#0: Box
       where $IsBox(aa#0, _module.Datatype$A) && $IsAllocBox(aa#0, _module.Datatype$A, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Datatype.M (call)"} Call$$_module.Datatype.M(_module.Datatype$A: Ty, 
    _module.Datatype.M$B: Ty, 
    a#0: Box
       where $IsBox(a#0, _module.Datatype$A) && $IsAllocBox(a#0, _module.Datatype$A, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module.Datatype.M$B)
         && $IsAllocBox(b#0, _module.Datatype.M$B, $Heap))
   returns (bb#0: Box
       where $IsBox(bb#0, _module.Datatype.M$B)
         && $IsAllocBox(bb#0, _module.Datatype.M$B, $Heap), 
    aa#0: Box
       where $IsBox(aa#0, _module.Datatype$A) && $IsAllocBox(aa#0, _module.Datatype$A, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Datatype.M (correctness)"} Impl$$_module.Datatype.M(_module.Datatype$A: Ty, 
    _module.Datatype.M$B: Ty, 
    a#0: Box
       where $IsBox(a#0, _module.Datatype$A) && $IsAllocBox(a#0, _module.Datatype$A, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module.Datatype.M$B)
         && $IsAllocBox(b#0, _module.Datatype.M$B, $Heap))
   returns (defass#bb#0: bool, 
    bb#0: Box
       where defass#bb#0
         ==> $IsBox(bb#0, _module.Datatype.M$B)
           && $IsAllocBox(bb#0, _module.Datatype.M$B, $Heap), 
    aa#0: Box
       where $IsBox(aa#0, _module.Datatype$A) && $IsAllocBox(aa#0, _module.Datatype$A, $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Datatype.M (correctness)"} Impl$$_module.Datatype.M(_module.Datatype$A: Ty, _module.Datatype.M$B: Ty, a#0: Box, b#0: Box)
   returns (defass#bb#0: bool, bb#0: Box, aa#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: Box;
  var $rhs#1: Box;

    // AddMethodImpl: M, Impl$$_module.Datatype.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(92,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := b#0;
    assume true;
    $rhs#1 := a#0;
    bb#0 := $rhs#0;
    defass#bb#0 := true;
    aa#0 := $rhs#1;
    assert {:id "id165"} defass#bb#0;
}



const unique class._module.TraitFunc?: ClassName;

function Tclass._module.TraitFunc?(Ty, Ty) : Ty;

const unique Tagclass._module.TraitFunc?: TyTag;

// Tclass._module.TraitFunc? Tag
axiom (forall _module.TraitFunc$X: Ty, _module.TraitFunc$Y: Ty :: 
  { Tclass._module.TraitFunc?(_module.TraitFunc$X, _module.TraitFunc$Y) } 
  Tag(Tclass._module.TraitFunc?(_module.TraitFunc$X, _module.TraitFunc$Y))
       == Tagclass._module.TraitFunc?
     && TagFamily(Tclass._module.TraitFunc?(_module.TraitFunc$X, _module.TraitFunc$Y))
       == tytagFamily$TraitFunc);

function Tclass._module.TraitFunc?_0(Ty) : Ty;

// Tclass._module.TraitFunc? injectivity 0
axiom (forall _module.TraitFunc$X: Ty, _module.TraitFunc$Y: Ty :: 
  { Tclass._module.TraitFunc?(_module.TraitFunc$X, _module.TraitFunc$Y) } 
  Tclass._module.TraitFunc?_0(Tclass._module.TraitFunc?(_module.TraitFunc$X, _module.TraitFunc$Y))
     == _module.TraitFunc$X);

function Tclass._module.TraitFunc?_1(Ty) : Ty;

// Tclass._module.TraitFunc? injectivity 1
axiom (forall _module.TraitFunc$X: Ty, _module.TraitFunc$Y: Ty :: 
  { Tclass._module.TraitFunc?(_module.TraitFunc$X, _module.TraitFunc$Y) } 
  Tclass._module.TraitFunc?_1(Tclass._module.TraitFunc?(_module.TraitFunc$X, _module.TraitFunc$Y))
     == _module.TraitFunc$Y);

// Box/unbox axiom for Tclass._module.TraitFunc?
axiom (forall _module.TraitFunc$X: Ty, _module.TraitFunc$Y: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.TraitFunc?(_module.TraitFunc$X, _module.TraitFunc$Y)) } 
  $IsBox(bx, Tclass._module.TraitFunc?(_module.TraitFunc$X, _module.TraitFunc$Y))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass._module.TraitFunc?(_module.TraitFunc$X, _module.TraitFunc$Y)));

// $Is axiom for trait TraitFunc
axiom (forall _module.TraitFunc$X: Ty, _module.TraitFunc$Y: Ty, $o: ref :: 
  { $Is($o, Tclass._module.TraitFunc?(_module.TraitFunc$X, _module.TraitFunc$Y)) } 
  $Is($o, Tclass._module.TraitFunc?(_module.TraitFunc$X, _module.TraitFunc$Y))
     <==> $o == null
       || implements$_module.TraitFunc(dtype($o), _module.TraitFunc$X, _module.TraitFunc$Y));

// $IsAlloc axiom for trait TraitFunc
axiom (forall _module.TraitFunc$X: Ty, _module.TraitFunc$Y: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.TraitFunc?(_module.TraitFunc$X, _module.TraitFunc$Y), $h) } 
  $IsAlloc($o, Tclass._module.TraitFunc?(_module.TraitFunc$X, _module.TraitFunc$Y), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.TraitFunc(ty: Ty, _module.TraitFunc$X: Ty, _module.TraitFunc$Y: Ty) : bool;

function _module.TraitFunc.F_k#requires(Ty, Ty, Ty, Box, Box, Box) : bool;

// #requires axiom for _module.TraitFunc.F_k
axiom (forall _module.TraitFunc$X: Ty, 
    _module.TraitFunc$Y: Ty, 
    _module.TraitFunc.F'$U: Ty, 
    x#0: Box, 
    y#0: Box, 
    u#0: Box :: 
  { _module.TraitFunc.F_k#requires(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U, x#0, y#0, u#0) } 
  $IsBox(x#0, _module.TraitFunc$X)
       && $IsBox(y#0, _module.TraitFunc$Y)
       && $IsBox(u#0, _module.TraitFunc.F'$U)
     ==> _module.TraitFunc.F_k#requires(_module.TraitFunc$X, _module.TraitFunc$Y, _module.TraitFunc.F'$U, x#0, y#0, u#0)
       == true);

procedure {:verboseName "TraitFunc.F' (well-formedness)"} CheckWellformed$$_module.TraitFunc.F_k(_module.TraitFunc$X: Ty, 
    _module.TraitFunc$Y: Ty, 
    _module.TraitFunc.F'$U: Ty, 
    x#0: Box where $IsBox(x#0, _module.TraitFunc$X), 
    y#0: Box where $IsBox(y#0, _module.TraitFunc$Y), 
    u#0: Box where $IsBox(u#0, _module.TraitFunc.F'$U));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



function _module.TraitFunc.G_k#requires(Ty, Ty, Ty, ref, Box, Box, Box) : bool;

// #requires axiom for _module.TraitFunc.G_k
axiom (forall _module.TraitFunc$X: Ty, 
    _module.TraitFunc$Y: Ty, 
    _module.TraitFunc.G'$U: Ty, 
    this: ref, 
    x#0: Box, 
    y#0: Box, 
    u#0: Box :: 
  { _module.TraitFunc.G_k#requires(_module.TraitFunc$X, 
      _module.TraitFunc$Y, 
      _module.TraitFunc.G'$U, 
      this, 
      x#0, 
      y#0, 
      u#0) } 
  this != null
       && $Is(this, Tclass._module.TraitFunc(_module.TraitFunc$X, _module.TraitFunc$Y))
       && $IsBox(x#0, _module.TraitFunc$X)
       && $IsBox(y#0, _module.TraitFunc$Y)
       && $IsBox(u#0, _module.TraitFunc.G'$U)
     ==> _module.TraitFunc.G_k#requires(_module.TraitFunc$X, 
        _module.TraitFunc$Y, 
        _module.TraitFunc.G'$U, 
        this, 
        x#0, 
        y#0, 
        u#0)
       == true);

procedure {:verboseName "TraitFunc.G' (well-formedness)"} CheckWellformed$$_module.TraitFunc.G_k(_module.TraitFunc$X: Ty, 
    _module.TraitFunc$Y: Ty, 
    _module.TraitFunc.G'$U: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TraitFunc(_module.TraitFunc$X, _module.TraitFunc$Y))
         && $IsAlloc(this, Tclass._module.TraitFunc(_module.TraitFunc$X, _module.TraitFunc$Y), $Heap), 
    x#0: Box where $IsBox(x#0, _module.TraitFunc$X), 
    y#0: Box where $IsBox(y#0, _module.TraitFunc$Y), 
    u#0: Box where $IsBox(u#0, _module.TraitFunc.G'$U));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// $Is axiom for non-null type _module.TraitFunc
axiom (forall _module.TraitFunc$X: Ty, _module.TraitFunc$Y: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.TraitFunc(_module.TraitFunc$X, _module.TraitFunc$Y)) } 
    { $Is(c#0, Tclass._module.TraitFunc?(_module.TraitFunc$X, _module.TraitFunc$Y)) } 
  $Is(c#0, Tclass._module.TraitFunc(_module.TraitFunc$X, _module.TraitFunc$Y))
     <==> $Is(c#0, Tclass._module.TraitFunc?(_module.TraitFunc$X, _module.TraitFunc$Y))
       && c#0 != null);

// $IsAlloc axiom for non-null type _module.TraitFunc
axiom (forall _module.TraitFunc$X: Ty, _module.TraitFunc$Y: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.TraitFunc(_module.TraitFunc$X, _module.TraitFunc$Y), $h) } 
    { $IsAlloc(c#0, Tclass._module.TraitFunc?(_module.TraitFunc$X, _module.TraitFunc$Y), $h) } 
  $IsAlloc(c#0, Tclass._module.TraitFunc(_module.TraitFunc$X, _module.TraitFunc$Y), $h)
     <==> $IsAlloc(c#0, Tclass._module.TraitFunc?(_module.TraitFunc$X, _module.TraitFunc$Y), $h));

const unique class._module.ClassFunc?: ClassName;

// $Is axiom for class ClassFunc
axiom (forall _module.ClassFunc$T: Ty, $o: ref :: 
  { $Is($o, Tclass._module.ClassFunc?(_module.ClassFunc$T)) } 
  $Is($o, Tclass._module.ClassFunc?(_module.ClassFunc$T))
     <==> $o == null || dtype($o) == Tclass._module.ClassFunc?(_module.ClassFunc$T));

// $IsAlloc axiom for class ClassFunc
axiom (forall _module.ClassFunc$T: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.ClassFunc?(_module.ClassFunc$T), $h) } 
  $IsAlloc($o, Tclass._module.ClassFunc?(_module.ClassFunc$T), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _module.ClassFunc.F#requires(Ty, Ty, Box, Box) : bool;

// #requires axiom for _module.ClassFunc.F
axiom (forall _module.ClassFunc$T: Ty, _module.ClassFunc.F$U: Ty, t#0: Box, u#0: Box :: 
  { _module.ClassFunc.F#requires(_module.ClassFunc$T, _module.ClassFunc.F$U, t#0, u#0) } 
  $IsBox(t#0, _module.ClassFunc$T) && $IsBox(u#0, _module.ClassFunc.F$U)
     ==> _module.ClassFunc.F#requires(_module.ClassFunc$T, _module.ClassFunc.F$U, t#0, u#0)
       == true);

procedure {:verboseName "ClassFunc.F (well-formedness)"} CheckWellformed$$_module.ClassFunc.F(_module.ClassFunc$T: Ty, 
    _module.ClassFunc.F$U: Ty, 
    t#0: Box where $IsBox(t#0, _module.ClassFunc$T), 
    u#0: Box where $IsBox(u#0, _module.ClassFunc.F$U));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



function _module.ClassFunc.G#requires(Ty, Ty, ref, Box, Box) : bool;

// #requires axiom for _module.ClassFunc.G
axiom (forall _module.ClassFunc$T: Ty, 
    _module.ClassFunc.G$U: Ty, 
    this: ref, 
    t#0: Box, 
    u#0: Box :: 
  { _module.ClassFunc.G#requires(_module.ClassFunc$T, _module.ClassFunc.G$U, this, t#0, u#0) } 
  this != null
       && $Is(this, Tclass._module.ClassFunc(_module.ClassFunc$T))
       && $IsBox(t#0, _module.ClassFunc$T)
       && $IsBox(u#0, _module.ClassFunc.G$U)
     ==> _module.ClassFunc.G#requires(_module.ClassFunc$T, _module.ClassFunc.G$U, this, t#0, u#0)
       == true);

procedure {:verboseName "ClassFunc.G (well-formedness)"} CheckWellformed$$_module.ClassFunc.G(_module.ClassFunc$T: Ty, 
    _module.ClassFunc.G$U: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ClassFunc(_module.ClassFunc$T))
         && $IsAlloc(this, Tclass._module.ClassFunc(_module.ClassFunc$T), $Heap), 
    t#0: Box where $IsBox(t#0, _module.ClassFunc$T), 
    u#0: Box where $IsBox(u#0, _module.ClassFunc.G$U));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// $Is axiom for non-null type _module.ClassFunc
axiom (forall _module.ClassFunc$T: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.ClassFunc(_module.ClassFunc$T)) } 
    { $Is(c#0, Tclass._module.ClassFunc?(_module.ClassFunc$T)) } 
  $Is(c#0, Tclass._module.ClassFunc(_module.ClassFunc$T))
     <==> $Is(c#0, Tclass._module.ClassFunc?(_module.ClassFunc$T)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.ClassFunc
axiom (forall _module.ClassFunc$T: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.ClassFunc(_module.ClassFunc$T), $h) } 
    { $IsAlloc(c#0, Tclass._module.ClassFunc?(_module.ClassFunc$T), $h) } 
  $IsAlloc(c#0, Tclass._module.ClassFunc(_module.ClassFunc$T), $h)
     <==> $IsAlloc(c#0, Tclass._module.ClassFunc?(_module.ClassFunc$T), $h));

// Constructor function declaration
function #_module.DatatypeFunc.DFMake(Box) : DatatypeType;

const unique ##_module.DatatypeFunc.DFMake: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #_module.DatatypeFunc.DFMake(a#0#0#0) } 
  DatatypeCtorId(#_module.DatatypeFunc.DFMake(a#0#0#0))
     == ##_module.DatatypeFunc.DFMake);
}

function _module.DatatypeFunc.DFMake_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.DatatypeFunc.DFMake_q(d) } 
  _module.DatatypeFunc.DFMake_q(d)
     <==> DatatypeCtorId(d) == ##_module.DatatypeFunc.DFMake);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.DatatypeFunc.DFMake_q(d) } 
  _module.DatatypeFunc.DFMake_q(d)
     ==> (exists a#1#0#0: Box :: d == #_module.DatatypeFunc.DFMake(a#1#0#0)));

// Constructor $Is
axiom (forall _module.DatatypeFunc$T: Ty, a#2#0#0: Box :: 
  { $Is(#_module.DatatypeFunc.DFMake(a#2#0#0), 
      Tclass._module.DatatypeFunc(_module.DatatypeFunc$T)) } 
  $Is(#_module.DatatypeFunc.DFMake(a#2#0#0), 
      Tclass._module.DatatypeFunc(_module.DatatypeFunc$T))
     <==> $IsBox(a#2#0#0, _module.DatatypeFunc$T));

// Constructor $IsAlloc
axiom (forall _module.DatatypeFunc$T: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.DatatypeFunc.DFMake(a#2#0#0), 
      Tclass._module.DatatypeFunc(_module.DatatypeFunc$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.DatatypeFunc.DFMake(a#2#0#0), 
        Tclass._module.DatatypeFunc(_module.DatatypeFunc$T), 
        $h)
       <==> $IsAllocBox(a#2#0#0, _module.DatatypeFunc$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.DatatypeFunc$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.DatatypeFunc._h0(d), _module.DatatypeFunc$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.DatatypeFunc.DFMake_q(d)
       && $IsAlloc(d, Tclass._module.DatatypeFunc(_module.DatatypeFunc$T), $h)
     ==> $IsAllocBox(_module.DatatypeFunc._h0(d), _module.DatatypeFunc$T, $h));

// Constructor literal
axiom (forall a#3#0#0: Box :: 
  { #_module.DatatypeFunc.DFMake(Lit(a#3#0#0)) } 
  #_module.DatatypeFunc.DFMake(Lit(a#3#0#0))
     == Lit(#_module.DatatypeFunc.DFMake(a#3#0#0)));

function _module.DatatypeFunc._h0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box :: 
  { #_module.DatatypeFunc.DFMake(a#4#0#0) } 
  _module.DatatypeFunc._h0(#_module.DatatypeFunc.DFMake(a#4#0#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box :: 
  { #_module.DatatypeFunc.DFMake(a#5#0#0) } 
  BoxRank(a#5#0#0) < DtRank(#_module.DatatypeFunc.DFMake(a#5#0#0)));

// Depth-one case-split function
function $IsA#_module.DatatypeFunc(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.DatatypeFunc(d) } 
  $IsA#_module.DatatypeFunc(d) ==> _module.DatatypeFunc.DFMake_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.DatatypeFunc$T: Ty, d: DatatypeType :: 
  { _module.DatatypeFunc.DFMake_q(d), $Is(d, Tclass._module.DatatypeFunc(_module.DatatypeFunc$T)) } 
  $Is(d, Tclass._module.DatatypeFunc(_module.DatatypeFunc$T))
     ==> _module.DatatypeFunc.DFMake_q(d));

// Datatype extensional equality declaration
function _module.DatatypeFunc#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.DatatypeFunc.DFMake
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.DatatypeFunc#Equal(a, b) } 
  _module.DatatypeFunc#Equal(a, b)
     <==> _module.DatatypeFunc._h0(a) == _module.DatatypeFunc._h0(b));

// Datatype extensionality axiom: _module.DatatypeFunc
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.DatatypeFunc#Equal(a, b) } 
  _module.DatatypeFunc#Equal(a, b) <==> a == b);

const unique class._module.DatatypeFunc: ClassName;

function _module.DatatypeFunc.F#requires(Ty, Ty, Box, Box) : bool;

// #requires axiom for _module.DatatypeFunc.F
axiom (forall _module.DatatypeFunc$T: Ty, _module.DatatypeFunc.F$U: Ty, t#0: Box, u#0: Box :: 
  { _module.DatatypeFunc.F#requires(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U, t#0, u#0) } 
  $IsBox(t#0, _module.DatatypeFunc$T) && $IsBox(u#0, _module.DatatypeFunc.F$U)
     ==> _module.DatatypeFunc.F#requires(_module.DatatypeFunc$T, _module.DatatypeFunc.F$U, t#0, u#0)
       == true);

procedure {:verboseName "DatatypeFunc.F (well-formedness)"} CheckWellformed$$_module.DatatypeFunc.F(_module.DatatypeFunc$T: Ty, 
    _module.DatatypeFunc.F$U: Ty, 
    t#0: Box where $IsBox(t#0, _module.DatatypeFunc$T), 
    u#0: Box where $IsBox(u#0, _module.DatatypeFunc.F$U));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



function _module.DatatypeFunc.G#requires(Ty, Ty, DatatypeType, Box, Box) : bool;

// #requires axiom for _module.DatatypeFunc.G
axiom (forall _module.DatatypeFunc$T: Ty, 
    _module.DatatypeFunc.G$U: Ty, 
    this: DatatypeType, 
    t#0: Box, 
    u#0: Box :: 
  { _module.DatatypeFunc.G#requires(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, this, t#0, u#0) } 
  $Is(this, Tclass._module.DatatypeFunc(_module.DatatypeFunc$T))
       && $IsBox(t#0, _module.DatatypeFunc$T)
       && $IsBox(u#0, _module.DatatypeFunc.G$U)
     ==> _module.DatatypeFunc.G#requires(_module.DatatypeFunc$T, _module.DatatypeFunc.G$U, this, t#0, u#0)
       == true);

procedure {:verboseName "DatatypeFunc.G (well-formedness)"} CheckWellformed$$_module.DatatypeFunc.G(_module.DatatypeFunc$T: Ty, 
    _module.DatatypeFunc.G$U: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.DatatypeFunc(_module.DatatypeFunc$T))
         && $IsAlloc(this, Tclass._module.DatatypeFunc(_module.DatatypeFunc$T), $Heap), 
    t#0: Box where $IsBox(t#0, _module.DatatypeFunc$T), 
    u#0: Box where $IsBox(u#0, _module.DatatypeFunc.G$U));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NewtypeFunc (well-formedness)"} CheckWellFormed$$_module.NewtypeFunc(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NewtypeFunc (well-formedness)"} CheckWellFormed$$_module.NewtypeFunc(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype NewtypeFunc
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id185"} LitInt(0) <= x#0 && x#0 < 25;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id186"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id187"} {:subsumption 0} Lit(0 < 25);
        assume false;
    }
}



function Tclass._module.NewtypeFunc() : Ty
uses {
// Tclass._module.NewtypeFunc Tag
axiom Tag(Tclass._module.NewtypeFunc()) == Tagclass._module.NewtypeFunc
   && TagFamily(Tclass._module.NewtypeFunc()) == tytagFamily$NewtypeFunc;
}

const unique Tagclass._module.NewtypeFunc: TyTag;

// Box/unbox axiom for Tclass._module.NewtypeFunc
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NewtypeFunc()) } 
  $IsBox(bx, Tclass._module.NewtypeFunc())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass._module.NewtypeFunc()));

// $Is axiom for newtype _module.NewtypeFunc
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.NewtypeFunc()) } 
  $Is(x#0, Tclass._module.NewtypeFunc()) <==> LitInt(0) <= x#0 && x#0 < 25);

// $IsAlloc axiom for newtype _module.NewtypeFunc
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.NewtypeFunc(), $h) } 
  $IsAlloc(x#0, Tclass._module.NewtypeFunc(), $h));

const unique class._module.NewtypeFunc: ClassName;

function _module.NewtypeFunc.F#requires(Ty, Box) : bool;

// #requires axiom for _module.NewtypeFunc.F
axiom (forall _module.NewtypeFunc.F$U: Ty, u#0: Box :: 
  { _module.NewtypeFunc.F#requires(_module.NewtypeFunc.F$U, u#0) } 
  $IsBox(u#0, _module.NewtypeFunc.F$U)
     ==> _module.NewtypeFunc.F#requires(_module.NewtypeFunc.F$U, u#0) == true);

procedure {:verboseName "NewtypeFunc.F (well-formedness)"} CheckWellformed$$_module.NewtypeFunc.F(_module.NewtypeFunc.F$U: Ty, u#0: Box where $IsBox(u#0, _module.NewtypeFunc.F$U));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



function _module.NewtypeFunc.G#requires(Ty, int, Box) : bool;

// #requires axiom for _module.NewtypeFunc.G
axiom (forall _module.NewtypeFunc.G$U: Ty, this: int, u#0: Box :: 
  { _module.NewtypeFunc.G#requires(_module.NewtypeFunc.G$U, this, u#0) } 
  LitInt(0) <= this && this < 25 && $IsBox(u#0, _module.NewtypeFunc.G$U)
     ==> _module.NewtypeFunc.G#requires(_module.NewtypeFunc.G$U, this, u#0) == true);

procedure {:verboseName "NewtypeFunc.G (well-formedness)"} CheckWellformed$$_module.NewtypeFunc.G(_module.NewtypeFunc.G$U: Ty, 
    this: int where LitInt(0) <= this && this < 25, 
    u#0: Box where $IsBox(u#0, _module.NewtypeFunc.G$U));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



const unique class._module.Coer?: ClassName;

function Tclass._module.Coer?(Ty) : Ty;

const unique Tagclass._module.Coer?: TyTag;

// Tclass._module.Coer? Tag
axiom (forall _module.Coer$T: Ty :: 
  { Tclass._module.Coer?(_module.Coer$T) } 
  Tag(Tclass._module.Coer?(_module.Coer$T)) == Tagclass._module.Coer?
     && TagFamily(Tclass._module.Coer?(_module.Coer$T)) == tytagFamily$Coer);

function Tclass._module.Coer?_0(Ty) : Ty;

// Tclass._module.Coer? injectivity 0
axiom (forall _module.Coer$T: Ty :: 
  { Tclass._module.Coer?(_module.Coer$T) } 
  Tclass._module.Coer?_0(Tclass._module.Coer?(_module.Coer$T)) == _module.Coer$T);

// Box/unbox axiom for Tclass._module.Coer?
axiom (forall _module.Coer$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Coer?(_module.Coer$T)) } 
  $IsBox(bx, Tclass._module.Coer?(_module.Coer$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Coer?(_module.Coer$T)));

// $Is axiom for class Coer
axiom (forall _module.Coer$T: Ty, $o: ref :: 
  { $Is($o, Tclass._module.Coer?(_module.Coer$T)) } 
  $Is($o, Tclass._module.Coer?(_module.Coer$T))
     <==> $o == null || dtype($o) == Tclass._module.Coer?(_module.Coer$T));

// $IsAlloc axiom for class Coer
axiom (forall _module.Coer$T: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Coer?(_module.Coer$T), $h) } 
  $IsAlloc($o, Tclass._module.Coer?(_module.Coer$T), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

procedure {:verboseName "Coer._ctor (well-formedness)"} CheckWellFormed$$_module.Coer.__ctor(_module.Coer$T: Ty, 
    u#0: Box
       where $IsBox(u#0, _module.Coer$T) && $IsAllocBox(u#0, _module.Coer$T, $Heap))
   returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Coer._ctor (call)"} Call$$_module.Coer.__ctor(_module.Coer$T: Ty, 
    u#0: Box
       where $IsBox(u#0, _module.Coer$T) && $IsAllocBox(u#0, _module.Coer$T, $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Coer(_module.Coer$T))
         && $IsAlloc(this, Tclass._module.Coer(_module.Coer$T), $Heap));
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



procedure {:verboseName "Coer._ctor (correctness)"} Impl$$_module.Coer.__ctor(_module.Coer$T: Ty, 
    u#0: Box
       where $IsBox(u#0, _module.Coer$T) && $IsAllocBox(u#0, _module.Coer$T, $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Coer._ctor (correctness)"} Impl$$_module.Coer.__ctor(_module.Coer$T: Ty, u#0: Box) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.x: Box;
  var this.m: Box;
  var defass#this.x: bool;
  var defass#this.m: bool;

    // AddMethodImpl: _ctor, Impl$$_module.Coer.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(190,22)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(191,7)
    assume true;
    assume true;
    this.x := u#0;
    defass#this.x := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(192,7)
    assume true;
    assume true;
    this.m := u#0;
    defass#this.m := true;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(190,22)
    assert {:id "id197"} defass#this.x;
    assert {:id "id198"} defass#this.m;
    assume this != null && $Is(this, Tclass._module.Coer?(_module.Coer$T));
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume read($Heap, this, _module.Coer.x) == this.x;
    assume read($Heap, this, _module.Coer.m) == this.m;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/StaticMembersOfGenericTypes.dfy(190,22)
}



const _module.Coer.x: Field
uses {
axiom FDim(_module.Coer.x) == 0
   && FieldOfDecl(class._module.Coer?, field$x) == _module.Coer.x
   && !$IsGhostField(_module.Coer.x);
}

// Coer.x: Type axiom
axiom (forall _module.Coer$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Coer.x), Tclass._module.Coer?(_module.Coer$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Coer?(_module.Coer$T)
     ==> $IsBox(read($h, $o, _module.Coer.x), _module.Coer$T));

// Coer.x: Allocation axiom
axiom (forall _module.Coer$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Coer.x), Tclass._module.Coer?(_module.Coer$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Coer?(_module.Coer$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.Coer.x), _module.Coer$T, $h));

const _module.Coer.m: Field
uses {
axiom FDim(_module.Coer.m) == 0
   && FieldOfDecl(class._module.Coer?, field$m) == _module.Coer.m
   && !$IsGhostField(_module.Coer.m);
}

// Coer.m: Type axiom
axiom (forall _module.Coer$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Coer.m), Tclass._module.Coer?(_module.Coer$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Coer?(_module.Coer$T)
     ==> $IsBox(read($h, $o, _module.Coer.m), _module.Coer$T));

// Coer.m: Allocation axiom
axiom (forall _module.Coer$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Coer.m), Tclass._module.Coer?(_module.Coer$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Coer?(_module.Coer$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.Coer.m), _module.Coer$T, $h));

// $Is axiom for non-null type _module.Coer
axiom (forall _module.Coer$T: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.Coer(_module.Coer$T)) } 
    { $Is(c#0, Tclass._module.Coer?(_module.Coer$T)) } 
  $Is(c#0, Tclass._module.Coer(_module.Coer$T))
     <==> $Is(c#0, Tclass._module.Coer?(_module.Coer$T)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Coer
axiom (forall _module.Coer$T: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Coer(_module.Coer$T), $h) } 
    { $IsAlloc(c#0, Tclass._module.Coer?(_module.Coer$T), $h) } 
  $IsAlloc(c#0, Tclass._module.Coer(_module.Coer$T), $h)
     <==> $IsAlloc(c#0, Tclass._module.Coer?(_module.Coer$T), $h));

// type axiom for trait parent: Class? extends Trait?<bool, A>
axiom (forall _module.Class$A: Ty, $o: ref :: 
  { $Is($o, Tclass._module.Class?(_module.Class$A)) } 
  $Is($o, Tclass._module.Class?(_module.Class$A))
     ==> $Is($o, Tclass._module.Trait?(TBool, _module.Class$A)));

axiom (forall _module.Class$A: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Class?(_module.Class$A)) } 
  $IsBox(bx, Tclass._module.Class?(_module.Class$A))
     ==> $IsBox(bx, Tclass._module.Trait?(TBool, _module.Class$A)));

// allocation axiom for trait parent: Class? extends Trait?<bool, A>
axiom (forall _module.Class$A: Ty, $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.Class?(_module.Class$A), $heap) } 
  $IsAlloc($o, Tclass._module.Class?(_module.Class$A), $heap)
     ==> $IsAlloc($o, Tclass._module.Trait?(TBool, _module.Class$A), $heap));

axiom (forall _module.Class$A: Ty, bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.Class?(_module.Class$A), $h) } 
  $IsAllocBox(bx, Tclass._module.Class?(_module.Class$A), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.Trait?(TBool, _module.Class$A), $h));

// type axiom for trait parent: ClassFunc? extends TraitFunc?<int, T>
axiom (forall _module.ClassFunc$T: Ty, $o: ref :: 
  { $Is($o, Tclass._module.ClassFunc?(_module.ClassFunc$T)) } 
  $Is($o, Tclass._module.ClassFunc?(_module.ClassFunc$T))
     ==> $Is($o, Tclass._module.TraitFunc?(TInt, _module.ClassFunc$T)));

axiom (forall _module.ClassFunc$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.ClassFunc?(_module.ClassFunc$T)) } 
  $IsBox(bx, Tclass._module.ClassFunc?(_module.ClassFunc$T))
     ==> $IsBox(bx, Tclass._module.TraitFunc?(TInt, _module.ClassFunc$T)));

// allocation axiom for trait parent: ClassFunc? extends TraitFunc?<int, T>
axiom (forall _module.ClassFunc$T: Ty, $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.ClassFunc?(_module.ClassFunc$T), $heap) } 
  $IsAlloc($o, Tclass._module.ClassFunc?(_module.ClassFunc$T), $heap)
     ==> $IsAlloc($o, Tclass._module.TraitFunc?(TInt, _module.ClassFunc$T), $heap));

axiom (forall _module.ClassFunc$T: Ty, bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.ClassFunc?(_module.ClassFunc$T), $h) } 
  $IsAllocBox(bx, Tclass._module.ClassFunc?(_module.ClassFunc$T), $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.TraitFunc?(TInt, _module.ClassFunc$T), $h));

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

const unique tytagFamily$_tuple#3: TyTagFamily;

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;

const unique tytagFamily$Class: TyTagFamily;

const unique tytagFamily$Trait: TyTagFamily;

const unique tytagFamily$Datatype: TyTagFamily;

const unique tytagFamily$ClassFunc: TyTagFamily;

const unique tytagFamily$TraitFunc: TyTagFamily;

const unique tytagFamily$DatatypeFunc: TyTagFamily;

const unique tytagFamily$Coer: TyTagFamily;

const unique tytagFamily$NewtypeFunc: TyTagFamily;

const unique field$x: NameFamily;

const unique field$m: NameFamily;
