// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy

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

// Box/unbox axiom for bv11
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(11)) } 
  $IsBox(bx, TBitvector(11))
     ==> $Box($Unbox(bx): bv11) == bx && $Is($Unbox(bx): bv11, TBitvector(11)));

axiom (forall v: bv11 :: { $Is(v, TBitvector(11)) } $Is(v, TBitvector(11)));

axiom (forall v: bv11, heap: Heap :: 
  { $IsAlloc(v, TBitvector(11), heap) } 
  $IsAlloc(v, TBitvector(11), heap));

function {:bvbuiltin "bvand"} and_bv11(bv11, bv11) : bv11;

function {:bvbuiltin "bvor"} or_bv11(bv11, bv11) : bv11;

function {:bvbuiltin "bvxor"} xor_bv11(bv11, bv11) : bv11;

function {:bvbuiltin "bvnot"} not_bv11(bv11) : bv11;

function {:bvbuiltin "bvadd"} add_bv11(bv11, bv11) : bv11;

function {:bvbuiltin "bvsub"} sub_bv11(bv11, bv11) : bv11;

function {:bvbuiltin "bvmul"} mul_bv11(bv11, bv11) : bv11;

function {:bvbuiltin "bvudiv"} div_bv11(bv11, bv11) : bv11;

function {:bvbuiltin "bvurem"} mod_bv11(bv11, bv11) : bv11;

function {:bvbuiltin "bvult"} lt_bv11(bv11, bv11) : bool;

function {:bvbuiltin "bvule"} le_bv11(bv11, bv11) : bool;

function {:bvbuiltin "bvuge"} ge_bv11(bv11, bv11) : bool;

function {:bvbuiltin "bvugt"} gt_bv11(bv11, bv11) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv11(bv11, bv11) : bv11;

function {:bvbuiltin "bvlshr"} RightShift_bv11(bv11, bv11) : bv11;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv11(bv11, bv11) : bv11;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv11(bv11, bv11) : bv11;

function {:bvbuiltin "(_ int2bv 11)"} nat_to_bv11(int) : bv11;

function {:bvbuiltin "bv2int"} smt_nat_from_bv11(bv11) : int;

function nat_from_bv11(bv11) : int;

axiom (forall b: bv11 :: 
  { nat_from_bv11(b) } 
  0 <= nat_from_bv11(b)
     && nat_from_bv11(b) < 2048
     && nat_from_bv11(b) == smt_nat_from_bv11(b));

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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(4,13)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id0"} Call$$_module.__default.BasicTests();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(5,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1"} Call$$_module.__default.MoreTests();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "BasicTests (well-formedness)"} CheckWellFormed$$_module.__default.BasicTests();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BasicTests (call)"} Call$$_module.__default.BasicTests();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "BasicTests (correctness)"} Impl$$_module.__default.BasicTests() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.DaTy() : Ty
uses {
// Tclass._module.DaTy Tag
axiom Tag(Tclass._module.DaTy()) == Tagclass._module.DaTy
   && TagFamily(Tclass._module.DaTy()) == tytagFamily$DaTy;
}

const unique Tagclass._module.DaTy: TyTag;

// Box/unbox axiom for Tclass._module.DaTy
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.DaTy()) } 
  $IsBox(bx, Tclass._module.DaTy())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.DaTy()));

function Tclass._module.Pos() : Ty
uses {
// Tclass._module.Pos Tag
axiom Tag(Tclass._module.Pos()) == Tagclass._module.Pos
   && TagFamily(Tclass._module.Pos()) == tytagFamily$Pos;
}

const unique Tagclass._module.Pos: TyTag;

// Box/unbox axiom for Tclass._module.Pos
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Pos()) } 
  $IsBox(bx, Tclass._module.Pos())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.Pos()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BasicTests (correctness)"} Impl$$_module.__default.BasicTests() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var t#0: DatatypeType
     where $Is(t#0, Tclass._module.DaTy()) && $IsAlloc(t#0, Tclass._module.DaTy(), $Heap);
  var r#0: int;
  var q#0: int;
  var p#0: int where 0 < p#0;
  var newtype$check#0: int;
  var u#0: int;
  var ##y#0: int;
  var v#0: int;
  var w#0: int;
  var $rhs##0: int;
  var y##0: int;
  var x#0: int;
  var $rhs##1: int;

    // AddMethodImpl: BasicTests, Impl$$_module.__default.BasicTests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(11,9)
    assume true;
    assume true;
    t#0 := Lit(#_module.DaTy.Yes());
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(12,9)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(t#0), Tclass._module.DaTy(), $Heap);
    assume _module.DaTy.W#canCall(t#0);
    assume _module.DaTy.W#canCall(t#0);
    r#0 := _module.DaTy.W(t#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(13,9)
    assume true;
    assume _module.DaTy.Q#canCall();
    assume _module.DaTy.Q#canCall();
    assume _module.DaTy.Q#canCall() && _module.DaTy.Q#canCall();
    q#0 := LitInt(_module.DaTy.Q() + _module.DaTy.Q());
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(14,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(16,14)
    assume true;
    newtype$check#0 := LitInt(8);
    assert {:id "id5"} 0 < newtype$check#0;
    assume true;
    p#0 := LitInt(8);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(16,20)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(17,9)
    assume true;
    ##y#0 := p#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##y#0, Tclass._module.Pos(), $Heap);
    assume _module.Pos.Func#canCall(p#0);
    assume _module.Pos.Func#canCall(p#0);
    u#0 := _module.Pos.Func(p#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(17,25)
    assume true;
    assert {:id "id8"} u#0 == LitInt(11);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(17,41)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(18,9)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(p#0), Tclass._module.Pos(), $Heap);
    assume _module.Pos.Gittit#canCall(p#0);
    assume _module.Pos.Gittit#canCall(p#0);
    v#0 := _module.Pos.Gittit(p#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(18,24)
    assume true;
    assert {:id "id10"} v#0 == LitInt(10);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(18,40)
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(19,22)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := p#0;
    call {:id "id11"} $rhs##0 := Call$$_module.Pos.Method(y##0);
    // TrCallStmt: After ProcessCallStmt
    w#0 := $rhs##0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(19,27)
    assume true;
    assert {:id "id13"} w#0 == LitInt(11);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(19,43)
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(20,21)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id14"} $rhs##1 := Call$$_module.Pos.Collect(p#0);
    // TrCallStmt: After ProcessCallStmt
    x#0 := $rhs##1;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(20,25)
    assume true;
    assert {:id "id16"} x#0 == LitInt(10);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(20,41)
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(21,3)
    assume true;
}



procedure {:verboseName "MoreTests (well-formedness)"} CheckWellFormed$$_module.__default.MoreTests();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MoreTests (call)"} Call$$_module.__default.MoreTests();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MoreTests (correctness)"} Impl$$_module.__default.MoreTests() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Dt(Ty) : Ty;

const unique Tagclass._module.Dt: TyTag;

// Tclass._module.Dt Tag
axiom (forall _module.Dt$A: Ty :: 
  { Tclass._module.Dt(_module.Dt$A) } 
  Tag(Tclass._module.Dt(_module.Dt$A)) == Tagclass._module.Dt
     && TagFamily(Tclass._module.Dt(_module.Dt$A)) == tytagFamily$Dt);

function Tclass._module.Dt_0(Ty) : Ty;

// Tclass._module.Dt injectivity 0
axiom (forall _module.Dt$A: Ty :: 
  { Tclass._module.Dt(_module.Dt$A) } 
  Tclass._module.Dt_0(Tclass._module.Dt(_module.Dt$A)) == _module.Dt$A);

// Box/unbox axiom for Tclass._module.Dt
axiom (forall _module.Dt$A: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Dt(_module.Dt$A)) } 
  $IsBox(bx, Tclass._module.Dt(_module.Dt$A))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Dt(_module.Dt$A)));

function Tclass._module.Co(Ty) : Ty;

const unique Tagclass._module.Co: TyTag;

// Tclass._module.Co Tag
axiom (forall _module.Co$A: Ty :: 
  { Tclass._module.Co(_module.Co$A) } 
  Tag(Tclass._module.Co(_module.Co$A)) == Tagclass._module.Co
     && TagFamily(Tclass._module.Co(_module.Co$A)) == tytagFamily$Co);

function Tclass._module.Co_0(Ty) : Ty;

// Tclass._module.Co injectivity 0
axiom (forall _module.Co$A: Ty :: 
  { Tclass._module.Co(_module.Co$A) } 
  Tclass._module.Co_0(Tclass._module.Co(_module.Co$A)) == _module.Co$A);

// Box/unbox axiom for Tclass._module.Co
axiom (forall _module.Co$A: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Co(_module.Co$A)) } 
  $IsBox(bx, Tclass._module.Co(_module.Co$A))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Co(_module.Co$A)));

function Tclass._module.Primes() : Ty
uses {
// Tclass._module.Primes Tag
axiom Tag(Tclass._module.Primes()) == Tagclass._module.Primes
   && TagFamily(Tclass._module.Primes()) == tytagFamily$Primes;
}

const unique Tagclass._module.Primes: TyTag;

// Box/unbox axiom for Tclass._module.Primes
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Primes()) } 
  $IsBox(bx, Tclass._module.Primes())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.Primes()));

function Tclass._module.Small() : Ty
uses {
// Tclass._module.Small Tag
axiom Tag(Tclass._module.Small()) == Tagclass._module.Small
   && TagFamily(Tclass._module.Small()) == tytagFamily$Small;
}

const unique Tagclass._module.Small: TyTag;

// Box/unbox axiom for Tclass._module.Small
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Small()) } 
  $IsBox(bx, Tclass._module.Small())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.Small()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MoreTests (correctness)"} Impl$$_module.__default.MoreTests() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var d#0: DatatypeType
     where $Is(d#0, Tclass._module.Dt(TInt))
       && $IsAlloc(d#0, Tclass._module.Dt(TInt), $Heap);
  var v#0: int;
  var ##x#0: int;
  var u#0: int;
  var ##x#1: int;
  var ##x#2: int;
  var yy#0: int;
  var dd#0: DatatypeType
     where $Is(dd#0, Tclass._module.Dt(TInt))
       && $IsAlloc(dd#0, Tclass._module.Dt(TInt), $Heap);
  var $rhs##0: int;
  var $rhs##1: DatatypeType;
  var x##0: int;
  var a0#0: int;
  var $rhs##2: int;
  var x##1: int;
  var a1#0: int;
  var $rhs##3: int;
  var x##2: int;
  var c#0: DatatypeType
     where $Is(c#0, Tclass._module.Co(TReal))
       && $IsAlloc(c#0, Tclass._module.Co(TReal), $Heap);
  var ##x#3: int;
  var ##x#4: int;
  var ##x#5: int;
  var c'#0: DatatypeType
     where $Is(c'#0, Tclass._module.Co(TInt))
       && $IsAlloc(c'#0, Tclass._module.Co(TInt), $Heap);
  var $rhs##4: int;
  var $rhs##5: DatatypeType;
  var x##3: int;
  var $rhs##6: int;
  var x##4: int;
  var $rhs##7: int;
  var x##5: int;
  var pr#0: int
     where LitInt(2) <= pr#0
       && (forall y#0: int :: LitInt(2) <= y#0 && y#0 < pr#0 ==> Mod(pr#0, y#0) != 0);
  var newtype$check#0: int;
  var ##x#6: int;
  var ##x#7: int;
  var ##x#8: int;
  var $rhs##8: int;
  var $rhs##9: int;
  var x##6: int;
  var $rhs##10: int;
  var x##7: int;
  var $rhs##11: int;
  var x##8: int;
  var sm#0: int where LitInt(0) <= sm#0 && sm#0 < 25;
  var newtype$check#1: int;
  var ##x#9: int;
  var ##x#10: int;
  var ##x#11: int;
  var $rhs##12: int;
  var $rhs##13: int;
  var x##9: int;
  var $rhs##14: int;
  var x##10: int;
  var $rhs##15: int;
  var x##11: int;

    // AddMethodImpl: MoreTests, Impl$$_module.__default.MoreTests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(40,9)
    assume true;
    assume true;
    d#0 := Lit(#_module.Dt.Business(Lit(true), $Box(LitInt(5))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(41,9)
    assume true;
    ##x#0 := LitInt(5);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TInt, $Heap);
    assume _module.Dt.G#canCall(TInt, LitInt(5));
    assume _module.Dt.G#canCall(TInt, LitInt(5));
    v#0 := LitInt(_module.Dt.G(TInt, LitInt(5)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(42,9)
    assume true;
    ##x#1 := LitInt(7);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#1, TInt, $Heap);
    assume _module.Dt.G#canCall(TInt, LitInt(7));
    assume _module.Dt.G#canCall(TInt, LitInt(7));
    u#0 := LitInt(_module.Dt.G(TInt, LitInt(7)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(43,3)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(d#0), Tclass._module.Dt(TInt), $Heap);
    ##x#2 := LitInt(10);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#2, TInt, $Heap);
    assume _module.Dt.F#canCall(TInt, d#0, LitInt(10));
    assume _module.Dt.F#canCall(TInt, d#0, LitInt(10));
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(44,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(45,20)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type Dt<int>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(93);
    call {:id "id20"} $rhs##0, $rhs##1 := Call$$_module.Dt.M(TInt, d#0, x##0);
    // TrCallStmt: After ProcessCallStmt
    yy#0 := $rhs##0;
    dd#0 := $rhs##1;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(46,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(47,16)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := LitInt(54);
    call {:id "id23"} $rhs##2 := Call$$_module.Dt.P(TInt, x##1);
    // TrCallStmt: After ProcessCallStmt
    a0#0 := $rhs##2;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(48,23)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##2 := LitInt(55);
    call {:id "id25"} $rhs##3 := Call$$_module.Dt.P(TBool, x##2);
    // TrCallStmt: After ProcessCallStmt
    a1#0 := $rhs##3;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(49,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(50,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(52,19)
    assume true;
    assume true;
    c#0 := Lit(#_module.Co.Cobalt());
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(53,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(54,3)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(c#0), Tclass._module.Co(TReal), $Heap);
    ##x#3 := LitInt(2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#3, TInt, $Heap);
    assume _module.Co.F#canCall(TReal, c#0, LitInt(2));
    assume _module.Co.F#canCall(TReal, c#0, LitInt(2));
    assume true;
    ##x#4 := LitInt(70);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#4, TInt, $Heap);
    assume _module.Co.G#canCall(TBitvector(11), LitInt(70));
    assume _module.Co.G#canCall(TBitvector(11), LitInt(70));
    assume true;
    ##x#5 := LitInt(71);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#5, TInt, $Heap);
    assume _module.Co.G#canCall(TReal, LitInt(71));
    assume _module.Co.G#canCall(TReal, LitInt(71));
    assume true;
    havoc c'#0 /* where $Is(c'#0, Tclass._module.Co(TInt))
       && $IsAlloc(c'#0, Tclass._module.Co(TInt), $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(56,16)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type Co<int>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##3 := LitInt(93);
    call {:id "id28"} $rhs##4, $rhs##5 := Call$$_module.Co.M(TReal, c#0, x##3);
    // TrCallStmt: After ProcessCallStmt
    yy#0 := $rhs##4;
    c'#0 := $rhs##5;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(57,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(58,12)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##4 := LitInt(54);
    call {:id "id31"} $rhs##6 := Call$$_module.Co.P(TReal, x##4);
    // TrCallStmt: After ProcessCallStmt
    a0#0 := $rhs##6;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(59,19)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##5 := LitInt(55);
    call {:id "id33"} $rhs##7 := Call$$_module.Co.P(TBool, x##5);
    // TrCallStmt: After ProcessCallStmt
    a1#0 := $rhs##7;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(60,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(61,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(63,18)
    assume true;
    newtype$check#0 := LitInt(11);
    assert {:id "id35"} LitInt(2) <= newtype$check#0
       && (forall y#1: int :: 
        LitInt(2) <= y#1 && y#1 < newtype$check#0 ==> Mod(newtype$check#0, y#1) != 0);
    assume true;
    pr#0 := LitInt(11);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(64,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(65,3)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(pr#0), Tclass._module.Primes(), $Heap);
    ##x#6 := LitInt(2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#6, TInt, $Heap);
    assume _module.Primes.F#canCall(pr#0, LitInt(2));
    assume _module.Primes.F#canCall(pr#0, LitInt(2));
    assume true;
    ##x#7 := LitInt(70);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#7, TInt, $Heap);
    assume _module.Primes.G#canCall(LitInt(70));
    assume _module.Primes.G#canCall(LitInt(70));
    assume true;
    ##x#8 := LitInt(71);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#8, TInt, $Heap);
    assume _module.Primes.G#canCall(LitInt(71));
    assume _module.Primes.G#canCall(LitInt(71));
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(66,17)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type Primes
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##6 := LitInt(95);
    call {:id "id37"} $rhs##8, $rhs##9 := Call$$_module.Primes.M(pr#0, x##6);
    // TrCallStmt: After ProcessCallStmt
    yy#0 := $rhs##8;
    pr#0 := $rhs##9;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(67,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(68,13)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##7 := LitInt(54);
    call {:id "id40"} $rhs##10 := Call$$_module.Primes.P(x##7);
    // TrCallStmt: After ProcessCallStmt
    a0#0 := $rhs##10;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(69,17)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##8 := LitInt(55);
    call {:id "id42"} $rhs##11 := Call$$_module.Primes.P(x##8);
    // TrCallStmt: After ProcessCallStmt
    a1#0 := $rhs##11;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(70,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(72,17)
    assume true;
    newtype$check#1 := LitInt(11);
    assert {:id "id44"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 25;
    assume true;
    sm#0 := LitInt(11);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(73,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(74,3)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(sm#0), Tclass._module.Small(), $Heap);
    ##x#9 := LitInt(2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#9, TInt, $Heap);
    assume _module.Small.F#canCall(sm#0, LitInt(2));
    assume _module.Small.F#canCall(sm#0, LitInt(2));
    assume true;
    ##x#10 := LitInt(70);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#10, TInt, $Heap);
    assume _module.Small.G#canCall(LitInt(70));
    assume _module.Small.G#canCall(LitInt(70));
    assume true;
    ##x#11 := LitInt(71);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#11, TInt, $Heap);
    assume _module.Small.G#canCall(LitInt(71));
    assume _module.Small.G#canCall(LitInt(71));
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(75,17)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type Small
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##9 := LitInt(95);
    call {:id "id46"} $rhs##12, $rhs##13 := Call$$_module.Small.M(sm#0, x##9);
    // TrCallStmt: After ProcessCallStmt
    yy#0 := $rhs##12;
    sm#0 := $rhs##13;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(76,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(77,13)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##10 := LitInt(54);
    call {:id "id49"} $rhs##14 := Call$$_module.Small.P(x##10);
    // TrCallStmt: After ProcessCallStmt
    a0#0 := $rhs##14;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(78,16)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##11 := LitInt(55);
    call {:id "id51"} $rhs##15 := Call$$_module.Small.P(x##11);
    // TrCallStmt: After ProcessCallStmt
    a1#0 := $rhs##15;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(79,3)
    assume true;
    assume true;
    assume true;
    assume true;
}



// Constructor function declaration
function #_module.DaTy.Yes() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.DaTy.Yes()) == ##_module.DaTy.Yes;
// Constructor $Is
axiom $Is(#_module.DaTy.Yes(), Tclass._module.DaTy());
// Constructor literal
axiom #_module.DaTy.Yes() == Lit(#_module.DaTy.Yes());
}

const unique ##_module.DaTy.Yes: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.DaTy.Yes()) == ##_module.DaTy.Yes;
}

function _module.DaTy.Yes_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.DaTy.Yes_q(d) } 
  _module.DaTy.Yes_q(d) <==> DatatypeCtorId(d) == ##_module.DaTy.Yes);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.DaTy.Yes_q(d) } 
  _module.DaTy.Yes_q(d) ==> d == #_module.DaTy.Yes());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.DaTy(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.DaTy())
     ==> $IsAlloc(d, Tclass._module.DaTy(), $h));

// Depth-one case-split function
function $IsA#_module.DaTy(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.DaTy(d) } 
  $IsA#_module.DaTy(d) ==> _module.DaTy.Yes_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.DaTy.Yes_q(d), $Is(d, Tclass._module.DaTy()) } 
  $Is(d, Tclass._module.DaTy()) ==> _module.DaTy.Yes_q(d));

// Datatype extensional equality declaration
function _module.DaTy#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.DaTy.Yes
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.DaTy#Equal(a, b) } 
  _module.DaTy#Equal(a, b));

// Datatype extensionality axiom: _module.DaTy
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.DaTy#Equal(a, b) } 
  _module.DaTy#Equal(a, b) <==> a == b);

const unique class._module.DaTy: ClassName;

// function declaration for _module.DaTy.W
function _module.DaTy.W(this: DatatypeType) : int
uses {
// definition axiom for _module.DaTy.W (revealed)
axiom {:id "id53"} 0 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    { _module.DaTy.W(this) } 
    _module.DaTy.W#canCall(this)
         || (0 < $FunctionContextHeight && $Is(this, Tclass._module.DaTy()))
       ==> _module.DaTy.W(this) == LitInt(10));
// definition axiom for _module.DaTy.W for all literals (revealed)
axiom {:id "id54"} 0 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    {:weight 3} { _module.DaTy.W(Lit(this)) } 
    _module.DaTy.W#canCall(Lit(this))
         || (0 < $FunctionContextHeight && $Is(this, Tclass._module.DaTy()))
       ==> _module.DaTy.W(Lit(this)) == LitInt(10));
}

function _module.DaTy.W#canCall(this: DatatypeType) : bool;

function _module.DaTy.W#requires(DatatypeType) : bool;

// #requires axiom for _module.DaTy.W
axiom (forall this: DatatypeType :: 
  { _module.DaTy.W#requires(this) } 
  $Is(this, Tclass._module.DaTy()) ==> _module.DaTy.W#requires(this) == true);

procedure {:verboseName "DaTy.W (well-formedness)"} CheckWellformed$$_module.DaTy.W(this: DatatypeType
       where $Is(this, Tclass._module.DaTy()) && $IsAlloc(this, Tclass._module.DaTy(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.DaTy.Q
function _module.DaTy.Q() : int
uses {
// definition axiom for _module.DaTy.Q (revealed)
axiom {:id "id56"} 0 <= $FunctionContextHeight
   ==> 
  _module.DaTy.Q#canCall() || 0 < $FunctionContextHeight
   ==> _module.DaTy.Q() == LitInt(13);
// definition axiom for _module.DaTy.Q for all literals (revealed)
axiom {:id "id57"} 0 <= $FunctionContextHeight
   ==> 
  _module.DaTy.Q#canCall() || 0 < $FunctionContextHeight
   ==> _module.DaTy.Q() == LitInt(13);
}

function _module.DaTy.Q#canCall() : bool;

function _module.DaTy.Q#requires() : bool
uses {
// #requires axiom for _module.DaTy.Q
axiom _module.DaTy.Q#requires() == true;
}

procedure {:verboseName "DaTy.Q (well-formedness)"} CheckWellformed$$_module.DaTy.Q();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Pos (well-formedness)"} CheckWellFormed$$_module.Pos(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Pos (well-formedness)"} CheckWellFormed$$_module.Pos(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype Pos
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        assume {:id "id59"} 0 < x#0;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id60"} Lit(0 < 1);
        assume false;
    }
}



// $Is axiom for newtype _module.Pos
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.Pos()) } 
  $Is(x#0, Tclass._module.Pos()) <==> 0 < x#0);

// $IsAlloc axiom for newtype _module.Pos
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.Pos(), $h) } 
  $IsAlloc(x#0, Tclass._module.Pos(), $h));

const unique class._module.Pos: ClassName;

// function declaration for _module.Pos.Func
function _module.Pos.Func(y#0: int) : int
uses {
// definition axiom for _module.Pos.Func (revealed)
axiom {:id "id61"} 1 <= $FunctionContextHeight
   ==> (forall y#0: int :: 
    { _module.Pos.Func(y#0) } 
    _module.Pos.Func#canCall(y#0) || (1 < $FunctionContextHeight && 0 < y#0)
       ==> _module.Pos.Func(y#0) == y#0 + 3);
// definition axiom for _module.Pos.Func for all literals (revealed)
axiom {:id "id62"} 1 <= $FunctionContextHeight
   ==> (forall y#0: int :: 
    {:weight 3} { _module.Pos.Func(LitInt(y#0)) } 
    _module.Pos.Func#canCall(LitInt(y#0)) || (1 < $FunctionContextHeight && 0 < y#0)
       ==> _module.Pos.Func(LitInt(y#0)) == LitInt(y#0 + 3));
}

function _module.Pos.Func#canCall(y#0: int) : bool;

function _module.Pos.Func#requires(int) : bool;

// #requires axiom for _module.Pos.Func
axiom (forall y#0: int :: 
  { _module.Pos.Func#requires(y#0) } 
  0 < y#0 ==> _module.Pos.Func#requires(y#0) == true);

procedure {:verboseName "Pos.Func (well-formedness)"} CheckWellformed$$_module.Pos.Func(y#0: int where 0 < y#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Pos.Func (well-formedness)"} CheckWellformed$$_module.Pos.Func(y#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
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
        newtype$check#0 := LitInt(3);
        assert {:id "id63"} 0 < newtype$check#0;
        newtype$check#1 := y#0 + 3;
        assert {:id "id64"} 0 < newtype$check#1;
        assume {:id "id65"} _module.Pos.Func(y#0) == y#0 + 3;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Pos.Func(y#0), TInt);
        return;

        assume false;
    }
}



// function declaration for _module.Pos.Gittit
function _module.Pos.Gittit(this: int) : int
uses {
// definition axiom for _module.Pos.Gittit (revealed)
axiom {:id "id66"} 0 <= $FunctionContextHeight
   ==> (forall this: int :: 
    { _module.Pos.Gittit(this) } 
    _module.Pos.Gittit#canCall(this) || (0 < $FunctionContextHeight && 0 < this)
       ==> _module.Pos.Gittit(this) == this + 2);
// definition axiom for _module.Pos.Gittit for all literals (revealed)
axiom {:id "id67"} 0 <= $FunctionContextHeight
   ==> (forall this: int :: 
    {:weight 3} { _module.Pos.Gittit(LitInt(this)) } 
    _module.Pos.Gittit#canCall(LitInt(this))
         || (0 < $FunctionContextHeight && 0 < this)
       ==> _module.Pos.Gittit(LitInt(this)) == LitInt(this + 2));
}

function _module.Pos.Gittit#canCall(this: int) : bool;

function _module.Pos.Gittit#requires(int) : bool;

// #requires axiom for _module.Pos.Gittit
axiom (forall this: int :: 
  { _module.Pos.Gittit#requires(this) } 
  0 < this ==> _module.Pos.Gittit#requires(this) == true);

procedure {:verboseName "Pos.Gittit (well-formedness)"} CheckWellformed$$_module.Pos.Gittit(this: int where 0 < this);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Pos.Gittit (well-formedness)"} CheckWellformed$$_module.Pos.Gittit(this: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
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
        newtype$check#0 := LitInt(2);
        assert {:id "id68"} 0 < newtype$check#0;
        newtype$check#1 := this + 2;
        assert {:id "id69"} 0 < newtype$check#1;
        assume {:id "id70"} _module.Pos.Gittit(this) == this + 2;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Pos.Gittit(this), TInt);
        return;

        assume false;
    }
}



procedure {:verboseName "Pos.Method (well-formedness)"} CheckWellFormed$$_module.Pos.Method(y#0: int where 0 < y#0) returns (r#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Pos.Method (well-formedness)"} CheckWellFormed$$_module.Pos.Method(y#0: int) returns (r#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;


    // AddMethodImpl: Method, CheckWellFormed$$_module.Pos.Method
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc r#0;
    newtype$check#0 := LitInt(3);
    assert {:id "id71"} 0 < newtype$check#0;
    newtype$check#1 := y#0 + 3;
    assert {:id "id72"} 0 < newtype$check#1;
    assume {:id "id73"} r#0 == y#0 + 3;
}



procedure {:verboseName "Pos.Method (call)"} Call$$_module.Pos.Method(y#0: int where 0 < y#0) returns (r#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id74"} r#0 == y#0 + 3;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Pos.Method (correctness)"} Impl$$_module.Pos.Method(y#0: int where 0 < y#0) returns (r#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id75"} r#0 == y#0 + 3;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Pos.Method (correctness)"} Impl$$_module.Pos.Method(y#0: int) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#2: int;
  var newtype$check#3: int;

    // AddMethodImpl: Method, Impl$$_module.Pos.Method
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(33,79)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(33,79)
    assume true;
    newtype$check#2 := LitInt(3);
    assert {:id "id76"} 0 < newtype$check#2;
    newtype$check#3 := y#0 + 3;
    assert {:id "id77"} 0 < newtype$check#3;
    assume true;
    r#0 := y#0 + 3;
    return;
}



procedure {:verboseName "Pos.Collect (well-formedness)"} CheckWellFormed$$_module.Pos.Collect(this: int where 0 < this) returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Pos.Collect (well-formedness)"} CheckWellFormed$$_module.Pos.Collect(this: int) returns (r#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;


    // AddMethodImpl: Collect, CheckWellFormed$$_module.Pos.Collect
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc r#0;
    newtype$check#0 := LitInt(2);
    assert {:id "id79"} 0 < newtype$check#0;
    newtype$check#1 := this + 2;
    assert {:id "id80"} 0 < newtype$check#1;
    assume {:id "id81"} r#0 == this + 2;
}



procedure {:verboseName "Pos.Collect (call)"} Call$$_module.Pos.Collect(this: int where 0 < this) returns (r#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id82"} r#0 == this + 2;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Pos.Collect (correctness)"} Impl$$_module.Pos.Collect(this: int where 0 < this) returns (r#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id83"} r#0 == this + 2;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Pos.Collect (correctness)"} Impl$$_module.Pos.Collect(this: int) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#2: int;
  var newtype$check#3: int;

    // AddMethodImpl: Collect, Impl$$_module.Pos.Collect
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(34,70)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(34,70)
    assume true;
    newtype$check#2 := LitInt(2);
    assert {:id "id84"} 0 < newtype$check#2;
    newtype$check#3 := this + 2;
    assert {:id "id85"} 0 < newtype$check#3;
    assume true;
    r#0 := this + 2;
    return;
}



// Constructor function declaration
function #_module.Dt.Blue() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Dt.Blue()) == ##_module.Dt.Blue;
// Constructor literal
axiom #_module.Dt.Blue() == Lit(#_module.Dt.Blue());
}

const unique ##_module.Dt.Blue: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Dt.Blue()) == ##_module.Dt.Blue;
}

function _module.Dt.Blue_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Dt.Blue_q(d) } 
  _module.Dt.Blue_q(d) <==> DatatypeCtorId(d) == ##_module.Dt.Blue);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Dt.Blue_q(d) } 
  _module.Dt.Blue_q(d) ==> d == #_module.Dt.Blue());

// Constructor $Is
axiom (forall _module.Dt$A: Ty :: 
  { $Is(#_module.Dt.Blue(), Tclass._module.Dt(_module.Dt$A)) } 
  $Is(#_module.Dt.Blue(), Tclass._module.Dt(_module.Dt$A)));

// Constructor $IsAlloc
axiom (forall _module.Dt$A: Ty, $h: Heap :: 
  { $IsAlloc(#_module.Dt.Blue(), Tclass._module.Dt(_module.Dt$A), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.Dt.Blue(), Tclass._module.Dt(_module.Dt$A), $h));

// Constructor function declaration
function #_module.Dt.Bucket(real) : DatatypeType;

const unique ##_module.Dt.Bucket: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: real :: 
  { #_module.Dt.Bucket(a#4#0#0) } 
  DatatypeCtorId(#_module.Dt.Bucket(a#4#0#0)) == ##_module.Dt.Bucket);
}

function _module.Dt.Bucket_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Dt.Bucket_q(d) } 
  _module.Dt.Bucket_q(d) <==> DatatypeCtorId(d) == ##_module.Dt.Bucket);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Dt.Bucket_q(d) } 
  _module.Dt.Bucket_q(d)
     ==> (exists a#5#0#0: real :: d == #_module.Dt.Bucket(a#5#0#0)));

// Constructor $Is
axiom (forall _module.Dt$A: Ty, a#6#0#0: real :: 
  { $Is(#_module.Dt.Bucket(a#6#0#0), Tclass._module.Dt(_module.Dt$A)) } 
  $Is(#_module.Dt.Bucket(a#6#0#0), Tclass._module.Dt(_module.Dt$A))
     <==> $Is(a#6#0#0, TReal));

// Constructor $IsAlloc
axiom (forall _module.Dt$A: Ty, a#6#0#0: real, $h: Heap :: 
  { $IsAlloc(#_module.Dt.Bucket(a#6#0#0), Tclass._module.Dt(_module.Dt$A), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Dt.Bucket(a#6#0#0), Tclass._module.Dt(_module.Dt$A), $h)
       <==> $IsAlloc(a#6#0#0, TReal, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Dt.diameter(d), TReal, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Dt.Bucket_q(d)
       && (exists _module.Dt$A: Ty :: 
        { $IsAlloc(d, Tclass._module.Dt(_module.Dt$A), $h) } 
        $IsAlloc(d, Tclass._module.Dt(_module.Dt$A), $h))
     ==> $IsAlloc(_module.Dt.diameter(d), TReal, $h));

// Constructor literal
axiom (forall a#7#0#0: real :: 
  { #_module.Dt.Bucket(LitReal(a#7#0#0)) } 
  #_module.Dt.Bucket(LitReal(a#7#0#0)) == Lit(#_module.Dt.Bucket(a#7#0#0)));

function _module.Dt.diameter(DatatypeType) : real;

// Constructor injectivity
axiom (forall a#8#0#0: real :: 
  { #_module.Dt.Bucket(a#8#0#0) } 
  _module.Dt.diameter(#_module.Dt.Bucket(a#8#0#0)) == a#8#0#0);

// Constructor function declaration
function #_module.Dt.Business(bool, Box) : DatatypeType;

const unique ##_module.Dt.Business: DtCtorId
uses {
// Constructor identifier
axiom (forall a#9#0#0: bool, a#9#1#0: Box :: 
  { #_module.Dt.Business(a#9#0#0, a#9#1#0) } 
  DatatypeCtorId(#_module.Dt.Business(a#9#0#0, a#9#1#0)) == ##_module.Dt.Business);
}

function _module.Dt.Business_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Dt.Business_q(d) } 
  _module.Dt.Business_q(d) <==> DatatypeCtorId(d) == ##_module.Dt.Business);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Dt.Business_q(d) } 
  _module.Dt.Business_q(d)
     ==> (exists a#10#0#0: bool, a#10#1#0: Box :: 
      d == #_module.Dt.Business(a#10#0#0, a#10#1#0)));

// Constructor $Is
axiom (forall _module.Dt$A: Ty, a#11#0#0: bool, a#11#1#0: Box :: 
  { $Is(#_module.Dt.Business(a#11#0#0, a#11#1#0), Tclass._module.Dt(_module.Dt$A)) } 
  $Is(#_module.Dt.Business(a#11#0#0, a#11#1#0), Tclass._module.Dt(_module.Dt$A))
     <==> $Is(a#11#0#0, TBool) && $IsBox(a#11#1#0, _module.Dt$A));

// Constructor $IsAlloc
axiom (forall _module.Dt$A: Ty, a#11#0#0: bool, a#11#1#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.Dt.Business(a#11#0#0, a#11#1#0), Tclass._module.Dt(_module.Dt$A), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Dt.Business(a#11#0#0, a#11#1#0), Tclass._module.Dt(_module.Dt$A), $h)
       <==> $IsAlloc(a#11#0#0, TBool, $h) && $IsAllocBox(a#11#1#0, _module.Dt$A, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Dt.trendy(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Dt.Business_q(d)
       && (exists _module.Dt$A: Ty :: 
        { $IsAlloc(d, Tclass._module.Dt(_module.Dt$A), $h) } 
        $IsAlloc(d, Tclass._module.Dt(_module.Dt$A), $h))
     ==> $IsAlloc(_module.Dt.trendy(d), TBool, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Dt$A: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Dt.a(d), _module.Dt$A, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Dt.Business_q(d)
       && $IsAlloc(d, Tclass._module.Dt(_module.Dt$A), $h)
     ==> $IsAllocBox(_module.Dt.a(d), _module.Dt$A, $h));

// Constructor literal
axiom (forall a#12#0#0: bool, a#12#1#0: Box :: 
  { #_module.Dt.Business(Lit(a#12#0#0), Lit(a#12#1#0)) } 
  #_module.Dt.Business(Lit(a#12#0#0), Lit(a#12#1#0))
     == Lit(#_module.Dt.Business(a#12#0#0, a#12#1#0)));

function _module.Dt.trendy(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#13#0#0: bool, a#13#1#0: Box :: 
  { #_module.Dt.Business(a#13#0#0, a#13#1#0) } 
  _module.Dt.trendy(#_module.Dt.Business(a#13#0#0, a#13#1#0)) == a#13#0#0);

function _module.Dt.a(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#14#0#0: bool, a#14#1#0: Box :: 
  { #_module.Dt.Business(a#14#0#0, a#14#1#0) } 
  _module.Dt.a(#_module.Dt.Business(a#14#0#0, a#14#1#0)) == a#14#1#0);

// Inductive rank
axiom (forall a#15#0#0: bool, a#15#1#0: Box :: 
  { #_module.Dt.Business(a#15#0#0, a#15#1#0) } 
  BoxRank(a#15#1#0) < DtRank(#_module.Dt.Business(a#15#0#0, a#15#1#0)));

// Depth-one case-split function
function $IsA#_module.Dt(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Dt(d) } 
  $IsA#_module.Dt(d)
     ==> _module.Dt.Blue_q(d) || _module.Dt.Bucket_q(d) || _module.Dt.Business_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Dt$A: Ty, d: DatatypeType :: 
  { _module.Dt.Business_q(d), $Is(d, Tclass._module.Dt(_module.Dt$A)) } 
    { _module.Dt.Bucket_q(d), $Is(d, Tclass._module.Dt(_module.Dt$A)) } 
    { _module.Dt.Blue_q(d), $Is(d, Tclass._module.Dt(_module.Dt$A)) } 
  $Is(d, Tclass._module.Dt(_module.Dt$A))
     ==> _module.Dt.Blue_q(d) || _module.Dt.Bucket_q(d) || _module.Dt.Business_q(d));

// Datatype extensional equality declaration
function _module.Dt#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Dt.Blue
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Dt#Equal(a, b), _module.Dt.Blue_q(a) } 
    { _module.Dt#Equal(a, b), _module.Dt.Blue_q(b) } 
  _module.Dt.Blue_q(a) && _module.Dt.Blue_q(b) ==> _module.Dt#Equal(a, b));

// Datatype extensional equality definition: #_module.Dt.Bucket
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Dt#Equal(a, b), _module.Dt.Bucket_q(a) } 
    { _module.Dt#Equal(a, b), _module.Dt.Bucket_q(b) } 
  _module.Dt.Bucket_q(a) && _module.Dt.Bucket_q(b)
     ==> (_module.Dt#Equal(a, b) <==> _module.Dt.diameter(a) == _module.Dt.diameter(b)));

// Datatype extensional equality definition: #_module.Dt.Business
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Dt#Equal(a, b), _module.Dt.Business_q(a) } 
    { _module.Dt#Equal(a, b), _module.Dt.Business_q(b) } 
  _module.Dt.Business_q(a) && _module.Dt.Business_q(b)
     ==> (_module.Dt#Equal(a, b)
       <==> _module.Dt.trendy(a) == _module.Dt.trendy(b)
         && _module.Dt.a(a) == _module.Dt.a(b)));

// Datatype extensionality axiom: _module.Dt
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Dt#Equal(a, b) } 
  _module.Dt#Equal(a, b) <==> a == b);

const unique class._module.Dt: ClassName;

function _module.Dt.c(_module.Dt$A: Ty, this: DatatypeType) : int
uses {
axiom (forall _module.Dt$A: Ty, this: DatatypeType :: 
  { _module.Dt.c(_module.Dt$A, this): int } 
  _module.Dt.c(_module.Dt$A, this): int
     == (if _module.Dt.Blue_q(this) then 18 else 19));
// Dt.c: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, $o: DatatypeType :: 
    { _module.Dt.c(_module.Dt$A, $o) } 
    $Is($o, Tclass._module.Dt(_module.Dt$A))
       ==> $Is(_module.Dt.c(_module.Dt$A, $o), TInt));
// Dt.c: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, $h: Heap, $o: DatatypeType :: 
    { _module.Dt.c(_module.Dt$A, $o), $IsAlloc($o, Tclass._module.Dt(_module.Dt$A), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.Dt(_module.Dt$A))
         && $IsAlloc($o, Tclass._module.Dt(_module.Dt$A), $h)
       ==> $IsAlloc(_module.Dt.c(_module.Dt$A, $o), TInt, $h));
}

procedure {:verboseName "Dt.c (well-formedness)"} CheckWellFormed$$_module.Dt.c(_module.Dt$A: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Dt(_module.Dt$A))
         && $IsAlloc(this, Tclass._module.Dt(_module.Dt$A), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



function _module.Dt.g(_module.Dt$A: Ty) : int
uses {
axiom (forall _module.Dt$A: Ty :: 
  { _module.Dt.g(_module.Dt$A): int } 
  _module.Dt.g(_module.Dt$A): int == LitInt(22));
// Dt.g: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty :: 
    { _module.Dt.g(_module.Dt$A) } 
    $Is(_module.Dt.g(_module.Dt$A), TInt));
}

procedure {:verboseName "Dt.g (well-formedness)"} CheckWellFormed$$_module.Dt.g(_module.Dt$A: Ty);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// Dt.g: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, $h: Heap :: 
    { $IsAlloc(_module.Dt.g(_module.Dt$A), TInt, $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(_module.Dt.g(_module.Dt$A), TInt, $h));

// function declaration for _module.Dt.F
function _module.Dt.F(_module.Dt$A: Ty, this: DatatypeType, x#0: int) : int
uses {
// definition axiom for _module.Dt.F (revealed)
axiom {:id "id87"} 0 <= $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, this: DatatypeType, x#0: int :: 
    { _module.Dt.F(_module.Dt$A, this, x#0) } 
    _module.Dt.F#canCall(_module.Dt$A, this, x#0)
         || (0 < $FunctionContextHeight && $Is(this, Tclass._module.Dt(_module.Dt$A)))
       ==> _module.Dt.F(_module.Dt$A, this, x#0)
         == x#0
           + (if _module.Dt.Bucket_q(this)
             then _System.real.Floor(_module.Dt.diameter(this))
             else 25));
// definition axiom for _module.Dt.F for all literals (revealed)
axiom {:id "id88"} 0 <= $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, this: DatatypeType, x#0: int :: 
    {:weight 3} { _module.Dt.F(_module.Dt$A, Lit(this), LitInt(x#0)) } 
    _module.Dt.F#canCall(_module.Dt$A, Lit(this), LitInt(x#0))
         || (0 < $FunctionContextHeight && $Is(this, Tclass._module.Dt(_module.Dt$A)))
       ==> _module.Dt.F(_module.Dt$A, Lit(this), LitInt(x#0))
         == x#0
           + (if _module.Dt.Bucket_q(Lit(this))
             then _System.real.Floor(LitReal(_module.Dt.diameter(Lit(this))))
             else 25));
}

function _module.Dt.F#canCall(_module.Dt$A: Ty, this: DatatypeType, x#0: int) : bool;

function _module.Dt.F#requires(Ty, DatatypeType, int) : bool;

// #requires axiom for _module.Dt.F
axiom (forall _module.Dt$A: Ty, this: DatatypeType, x#0: int :: 
  { _module.Dt.F#requires(_module.Dt$A, this, x#0) } 
  $Is(this, Tclass._module.Dt(_module.Dt$A))
     ==> _module.Dt.F#requires(_module.Dt$A, this, x#0) == true);

procedure {:verboseName "Dt.F (well-formedness)"} CheckWellformed$$_module.Dt.F(_module.Dt$A: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Dt(_module.Dt$A))
         && $IsAlloc(this, Tclass._module.Dt(_module.Dt$A), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Dt.F (well-formedness)"} CheckWellformed$$_module.Dt.F(_module.Dt$A: Ty, this: DatatypeType, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
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
        if (_module.Dt.Bucket_q(this))
        {
            assert {:id "id89"} _module.Dt.Bucket_q(this);
        }
        else
        {
        }

        assume {:id "id90"} _module.Dt.F(_module.Dt$A, this, x#0)
           == x#0
             + (if _module.Dt.Bucket_q(this)
               then _System.real.Floor(_module.Dt.diameter(this))
               else 25);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Dt.F(_module.Dt$A, this, x#0), TInt);
        return;

        assume false;
    }
}



// function declaration for _module.Dt.G
function _module.Dt.G(_module.Dt$A: Ty, x#0: int) : int
uses {
// definition axiom for _module.Dt.G (revealed)
axiom {:id "id91"} 0 <= $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, x#0: int :: 
    { _module.Dt.G(_module.Dt$A, x#0) } 
    _module.Dt.G#canCall(_module.Dt$A, x#0) || 0 < $FunctionContextHeight
       ==> _module.Dt.G(_module.Dt$A, x#0) == Mul(LitInt(2), x#0));
// definition axiom for _module.Dt.G for all literals (revealed)
axiom {:id "id92"} 0 <= $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, x#0: int :: 
    {:weight 3} { _module.Dt.G(_module.Dt$A, LitInt(x#0)) } 
    _module.Dt.G#canCall(_module.Dt$A, LitInt(x#0)) || 0 < $FunctionContextHeight
       ==> _module.Dt.G(_module.Dt$A, LitInt(x#0)) == LitInt(Mul(LitInt(2), LitInt(x#0))));
}

function _module.Dt.G#canCall(_module.Dt$A: Ty, x#0: int) : bool;

function _module.Dt.G#requires(Ty, int) : bool;

// #requires axiom for _module.Dt.G
axiom (forall _module.Dt$A: Ty, x#0: int :: 
  { _module.Dt.G#requires(_module.Dt$A, x#0) } 
  _module.Dt.G#requires(_module.Dt$A, x#0) == true);

procedure {:verboseName "Dt.G (well-formedness)"} CheckWellformed$$_module.Dt.G(_module.Dt$A: Ty, x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Dt.M (well-formedness)"} CheckWellFormed$$_module.Dt.M(_module.Dt$A: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Dt(_module.Dt$A))
         && $IsAlloc(this, Tclass._module.Dt(_module.Dt$A), $Heap), 
    x#0: int)
   returns (y#0: int, 
    d#0: DatatypeType
       where $Is(d#0, Tclass._module.Dt(_module.Dt$A))
         && $IsAlloc(d#0, Tclass._module.Dt(_module.Dt$A), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Dt.M (call)"} Call$$_module.Dt.M(_module.Dt$A: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Dt(_module.Dt$A))
         && $IsAlloc(this, Tclass._module.Dt(_module.Dt$A), $Heap), 
    x#0: int)
   returns (y#0: int, 
    d#0: DatatypeType
       where $Is(d#0, Tclass._module.Dt(_module.Dt$A))
         && $IsAlloc(d#0, Tclass._module.Dt(_module.Dt$A), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Dt.M (correctness)"} Impl$$_module.Dt.M(_module.Dt$A: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Dt(_module.Dt$A))
         && $IsAlloc(this, Tclass._module.Dt(_module.Dt$A), $Heap), 
    x#0: int)
   returns (y#0: int, 
    d#0: DatatypeType
       where $Is(d#0, Tclass._module.Dt(_module.Dt$A))
         && $IsAlloc(d#0, Tclass._module.Dt(_module.Dt$A), $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Dt.M (correctness)"} Impl$$_module.Dt.M(_module.Dt$A: Ty, this: DatatypeType, x#0: int)
   returns (y#0: int, d#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var z#0: int;
  var $rhs##0: int;
  var x##0: int;
  var $rhs##1: int;
  var x##1: int;
  var _mcc#1#2_0: bool;
  var _mcc#2#2_0: Box;
  var a#2_0: Box;
  var let#2_0#0#0: Box;
  var t#2_0: bool;
  var let#2_1#0#0: bool;
  var dt_update_tmp#1#Z#2_0: DatatypeType;
  var let#2_2#0#0: DatatypeType;
  var dt_update#trendy#0#Z#2_0: bool;
  var let#2_3#0#0: bool;
  var _mcc#0#3_0: real;
  var dm#3_0: real;
  var let#3_0#0#0: real;
  var dt_update_tmp#0#Z#3_0: DatatypeType;
  var let#3_1#0#0: DatatypeType;
  var dt_update#diameter#0#Z#3_0: real;
  var let#3_2#0#0: real;

    // AddMethodImpl: M, Impl$$_module.Dt.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(93,5)
    assume $IsA#_module.Dt(this);
    if (_module.Dt#Equal(this, #_module.Dt.Blue()))
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(94,9)
        assume true;
        assume true;
        y#0 := x#0;
        pop;
    }
    else
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(96,9)
        assume true;
        assume true;
        y#0 := LitInt(9);
        pop;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(98,27)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(3);
    call {:id "id96"} $rhs##0 := Call$$_module.Dt.RecursiveZero(_module.Dt$A, this, x##0);
    // TrCallStmt: After ProcessCallStmt
    z#0 := $rhs##0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(99,7)
    assume true;
    assume true;
    y#0 := y#0 + z#0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(100,29)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := LitInt(3);
    call {:id "id99"} $rhs##1 := Call$$_module.Dt.StaticRecursiveZero(_module.Dt$A, x##1);
    // TrCallStmt: After ProcessCallStmt
    z#0 := $rhs##1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(101,7)
    assume true;
    assume true;
    y#0 := y#0 + z#0;
    assume true;
    havoc _mcc#1#2_0, _mcc#2#2_0;
    havoc _mcc#0#3_0;
    if (this == #_module.Dt.Blue())
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(104,7)
        assume true;
        assert {:id "id122"} y#0 == x#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(105,9)
        assume true;
        assume true;
        d#0 := Lit(#_module.Dt.Bucket(LitReal(0e0)));
    }
    else if (this == #_module.Dt.Bucket(_mcc#0#3_0))
    {
        havoc dm#3_0;
        assume {:id "id113"} let#3_0#0#0 == _mcc#0#3_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#3_0#0#0, TReal);
        assume {:id "id114"} dm#3_0 == let#3_0#0#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(107,9)
        assume true;
        assert {:id "id115"} _module.Dt.Bucket_q(this);
        havoc dt_update_tmp#0#Z#3_0;
        assume {:id "id116"} let#3_1#0#0 == this;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#3_1#0#0, Tclass._module.Dt(_module.Dt$A));
        assume {:id "id117"} dt_update_tmp#0#Z#3_0 == let#3_1#0#0;
        havoc dt_update#diameter#0#Z#3_0;
        assert {:id "id118"} _module.Dt.Bucket_q(this);
        assume {:id "id119"} let#3_2#0#0 == _module.Dt.diameter(this) + 2e0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#3_2#0#0, TReal);
        assume {:id "id120"} dt_update#diameter#0#Z#3_0 == let#3_2#0#0;
        assume true;
        d#0 := (var dt_update_tmp#0#3_0 := this; 
          (var dt_update#diameter#0#3_0 := _module.Dt.diameter(this) + 2e0; 
            #_module.Dt.Bucket(dt_update#diameter#0#3_0)));
    }
    else if (this == #_module.Dt.Business(_mcc#1#2_0, _mcc#2#2_0))
    {
        assume $IsBox(_mcc#2#2_0, _module.Dt$A) && $IsAllocBox(_mcc#2#2_0, _module.Dt$A, $Heap);
        havoc a#2_0;
        assume $IsBox(a#2_0, _module.Dt$A) && $IsAllocBox(a#2_0, _module.Dt$A, $Heap);
        assume {:id "id102"} let#2_0#0#0 == _mcc#2#2_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $IsBox(let#2_0#0#0, _module.Dt$A);
        assume {:id "id103"} a#2_0 == let#2_0#0#0;
        havoc t#2_0;
        assume {:id "id104"} let#2_1#0#0 == _mcc#1#2_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#2_1#0#0, TBool);
        assume {:id "id105"} t#2_0 == let#2_1#0#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(109,9)
        assume true;
        assert {:id "id106"} _module.Dt.Business_q(this);
        havoc dt_update_tmp#1#Z#2_0;
        assume {:id "id107"} let#2_2#0#0 == this;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#2_2#0#0, Tclass._module.Dt(_module.Dt$A));
        assume {:id "id108"} dt_update_tmp#1#Z#2_0 == let#2_2#0#0;
        havoc dt_update#trendy#0#Z#2_0;
        assume {:id "id109"} let#2_3#0#0 == !t#2_0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#2_3#0#0, TBool);
        assume {:id "id110"} dt_update#trendy#0#Z#2_0 == let#2_3#0#0;
        assert {:id "id111"} _module.Dt.Business_q(dt_update_tmp#1#Z#2_0);
        assume true;
        d#0 := (var dt_update_tmp#1#2_0 := this; 
          (var dt_update#trendy#0#2_0 := !t#2_0; 
            #_module.Dt.Business(dt_update#trendy#0#2_0, _module.Dt.a(dt_update_tmp#1#2_0))));
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "Dt.P (well-formedness)"} CheckWellFormed$$_module.Dt.P(_module.Dt$A: Ty, x#0: int) returns (y#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Dt.P (call)"} Call$$_module.Dt.P(_module.Dt$A: Ty, x#0: int) returns (y#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Dt.P (correctness)"} Impl$$_module.Dt.P(_module.Dt$A: Ty, x#0: int) returns (y#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module.Dt.Toop
function _module.Dt.Toop(_module.Dt$A: Ty, $prevHeap: Heap, $heap: Heap, this: DatatypeType) : bool
uses {
// definition axiom for _module.Dt.Toop (revealed)
axiom {:id "id125"} 0 <= $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, $prevHeap: Heap, $Heap: Heap, this: DatatypeType :: 
    { _module.Dt.Toop(_module.Dt$A, $prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
    _module.Dt.Toop#canCall(_module.Dt$A, $prevHeap, $Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          $Is(this, Tclass._module.Dt(_module.Dt$A))
           && $IsAlloc(this, Tclass._module.Dt(_module.Dt$A), $prevHeap))
       ==> $IsA#_module.Dt(this)
         && $IsA#_module.Dt(this)
         && _module.Dt.Toop(_module.Dt$A, $prevHeap, $Heap, this)
           == _module.Dt#Equal(this, this));
// definition axiom for _module.Dt.Toop for all literals (revealed)
axiom {:id "id126"} 0 <= $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, $prevHeap: Heap, $Heap: Heap, this: DatatypeType :: 
    {:weight 3} { _module.Dt.Toop(_module.Dt$A, $prevHeap, $Heap, Lit(this)), $IsGoodHeap($Heap) } 
    _module.Dt.Toop#canCall(_module.Dt$A, $prevHeap, $Heap, Lit(this))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          $Is(this, Tclass._module.Dt(_module.Dt$A))
           && $IsAlloc(this, Tclass._module.Dt(_module.Dt$A), $prevHeap))
       ==> $IsA#_module.Dt(Lit(this))
         && $IsA#_module.Dt(Lit(this))
         && _module.Dt.Toop(_module.Dt$A, $prevHeap, $Heap, Lit(this))
           == _module.Dt#Equal(this, this));
}

function _module.Dt.Toop#canCall(_module.Dt$A: Ty, $prevHeap: Heap, $heap: Heap, this: DatatypeType) : bool;

// frame axiom for _module.Dt.Toop
axiom (forall _module.Dt$A: Ty, $prevHeap: Heap, $h0: Heap, $h1: Heap, this: DatatypeType :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Dt.Toop(_module.Dt$A, $prevHeap, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && $Is(this, Tclass._module.Dt(_module.Dt$A))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: true)
     ==> _module.Dt.Toop(_module.Dt$A, $prevHeap, $h0, this)
       == _module.Dt.Toop(_module.Dt$A, $prevHeap, $h1, this));

function _module.Dt.Toop#requires(Ty, Heap, Heap, DatatypeType) : bool;

// #requires axiom for _module.Dt.Toop
axiom (forall _module.Dt$A: Ty, $prevHeap: Heap, $Heap: Heap, this: DatatypeType :: 
  { _module.Dt.Toop#requires(_module.Dt$A, $prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      $Is(this, Tclass._module.Dt(_module.Dt$A))
       && $IsAlloc(this, Tclass._module.Dt(_module.Dt$A), $prevHeap)
     ==> _module.Dt.Toop#requires(_module.Dt$A, $prevHeap, $Heap, this) == true);

procedure {:verboseName "Dt.Toop (well-formedness)"} CheckWellformed$$_module.Dt.Toop(_module.Dt$A: Ty, 
    previous$Heap: Heap, 
    current$Heap: Heap, 
    this: DatatypeType
       where $Is(this, Tclass._module.Dt(_module.Dt$A))
         && $IsAlloc(this, Tclass._module.Dt(_module.Dt$A), previous$Heap));
  free requires 0 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



procedure {:verboseName "Dt.Tool (well-formedness)"} CheckWellFormed$$_module.Dt.Tool(previous$Heap: Heap, 
    current$Heap: Heap, 
    _module.Dt$A: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Dt(_module.Dt$A))
         && $IsAlloc(this, Tclass._module.Dt(_module.Dt$A), previous$Heap));
  free requires 0 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



procedure {:verboseName "Dt.Tool (call)"} Call$$_module.Dt.Tool(previous$Heap: Heap, 
    current$Heap: Heap, 
    _module.Dt$A: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Dt(_module.Dt$A))
         && $IsAlloc(this, Tclass._module.Dt(_module.Dt$A), previous$Heap));
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Dt.Tool (correctness)"} Impl$$_module.Dt.Tool(previous$Heap: Heap, 
    current$Heap: Heap, 
    _module.Dt$A: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Dt(_module.Dt$A))
         && $IsAlloc(this, Tclass._module.Dt(_module.Dt$A), previous$Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



// function declaration for _module.Dt.IndP
function _module.Dt.IndP(_module.Dt$A: Ty, this: DatatypeType) : bool
uses {
// definition axiom for _module.Dt.IndP (revealed)
axiom {:id "id128"} 0 <= $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, this: DatatypeType :: 
    { _module.Dt.IndP(_module.Dt$A, this) } 
    _module.Dt.IndP#canCall(_module.Dt$A, this)
         || (0 < $FunctionContextHeight && $Is(this, Tclass._module.Dt(_module.Dt$A)))
       ==> _module.Dt.IndP(_module.Dt$A, this) == Lit(true));
}

function _module.Dt.IndP#canCall(_module.Dt$A: Ty, this: DatatypeType) : bool;

function _module.Dt.IndP#requires(Ty, DatatypeType) : bool;

// #requires axiom for _module.Dt.IndP
axiom (forall _module.Dt$A: Ty, this: DatatypeType :: 
  { _module.Dt.IndP#requires(_module.Dt$A, this) } 
  $Is(this, Tclass._module.Dt(_module.Dt$A))
     ==> _module.Dt.IndP#requires(_module.Dt$A, this) == true);

// 1st prefix predicate axiom for _module.Dt.IndP_h
axiom 1 <= $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, this: DatatypeType :: 
    { _module.Dt.IndP(_module.Dt$A, this) } 
    $Is(this, Tclass._module.Dt(_module.Dt$A))
         && _module.Dt.IndP(_module.Dt$A, this)
       ==> (exists _k#0: Box :: 
        { _module.Dt.IndP_h(_module.Dt$A, this, _k#0) } 
        _module.Dt.IndP_h(_module.Dt$A, this, _k#0)));

// 2nd prefix predicate axiom
axiom 1 <= $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, this: DatatypeType :: 
    { _module.Dt.IndP(_module.Dt$A, this) } 
    $Is(this, Tclass._module.Dt(_module.Dt$A))
         && (exists _k#0: Box :: 
          { _module.Dt.IndP_h(_module.Dt$A, this, _k#0) } 
          _module.Dt.IndP_h(_module.Dt$A, this, _k#0))
       ==> _module.Dt.IndP(_module.Dt$A, this));

// 3rd prefix predicate axiom
axiom 1 <= $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, this: DatatypeType, _k#0: Box :: 
    { _module.Dt.IndP_h(_module.Dt$A, this, _k#0) } 
    $Is(this, Tclass._module.Dt(_module.Dt$A)) && _k#0 == ORD#FromNat(0)
       ==> !_module.Dt.IndP_h(_module.Dt$A, this, _k#0));

// targeted prefix predicate monotonicity axiom
axiom 1 <= $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, this: DatatypeType, _k#0: Box, _m: Box, _limit: Box :: 
    { _module.Dt.IndP_h(_module.Dt$A, this, _k#0), ORD#LessThanLimit(_k#0, _limit), ORD#LessThanLimit(_m, _limit) } 
    ORD#Less(_k#0, _m)
       ==> 
      _module.Dt.IndP_h(_module.Dt$A, this, _k#0)
       ==> _module.Dt.IndP_h(_module.Dt$A, this, _m));

procedure {:verboseName "Dt.IndP (well-formedness)"} CheckWellformed$$_module.Dt.IndP(_module.Dt$A: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Dt(_module.Dt$A))
         && $IsAlloc(this, Tclass._module.Dt(_module.Dt$A), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Dt.IndP#
function _module.Dt.IndP_h(_module.Dt$A: Ty, this: DatatypeType, _k#0: Box) : bool
uses {
// definition axiom for _module.Dt.IndP_h (revealed)
axiom {:id "id130"} 1 <= $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, this: DatatypeType, _k#0: Box :: 
    { _module.Dt.IndP_h(_module.Dt$A, this, _k#0) } 
    _module.Dt.IndP_h#canCall(_module.Dt$A, this, _k#0)
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.Dt(_module.Dt$A)))
       ==> (LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.Dt.IndP_h(_module.Dt$A, this, _k'#0) } 
            ORD#LessThanLimit(_k'#0, _k#0)
               ==> _module.Dt.IndP_h#canCall(_module.Dt$A, this, _k'#0)))
         && _module.Dt.IndP_h(_module.Dt$A, this, _k#0)
           == (LitInt(0) == ORD#Offset(_k#0)
             ==> (exists _k'#0: Box :: 
              { _module.Dt.IndP_h(_module.Dt$A, this, _k'#0) } 
              ORD#LessThanLimit(_k'#0, _k#0) && _module.Dt.IndP_h(_module.Dt$A, this, _k'#0))));
// definition axiom for _module.Dt.IndP_h for decreasing-related literals (revealed)
axiom {:id "id131"} 1 <= $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, this: DatatypeType, _k#0: Box :: 
    {:weight 3} { _module.Dt.IndP_h(_module.Dt$A, this, Lit(_k#0)) } 
    _module.Dt.IndP_h#canCall(_module.Dt$A, this, Lit(_k#0))
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.Dt(_module.Dt$A)))
       ==> (LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.Dt.IndP_h(_module.Dt$A, this, _k'#1) } 
            ORD#LessThanLimit(_k'#1, _k#0)
               ==> _module.Dt.IndP_h#canCall(_module.Dt$A, this, _k'#1)))
         && _module.Dt.IndP_h(_module.Dt$A, this, Lit(_k#0))
           == (LitInt(0) == ORD#Offset(_k#0)
             ==> (exists _k'#1: Box :: 
              { _module.Dt.IndP_h(_module.Dt$A, this, _k'#1) } 
              ORD#LessThanLimit(_k'#1, _k#0) && _module.Dt.IndP_h(_module.Dt$A, this, _k'#1))));
// definition axiom for _module.Dt.IndP_h for all literals (revealed)
axiom {:id "id132"} 1 <= $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, this: DatatypeType, _k#0: Box :: 
    {:weight 3} { _module.Dt.IndP_h(_module.Dt$A, Lit(this), Lit(_k#0)) } 
    _module.Dt.IndP_h#canCall(_module.Dt$A, Lit(this), Lit(_k#0))
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.Dt(_module.Dt$A)))
       ==> (LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.Dt.IndP_h(_module.Dt$A, this, _k'#2) } 
            ORD#LessThanLimit(_k'#2, _k#0)
               ==> _module.Dt.IndP_h#canCall(_module.Dt$A, this, _k'#2)))
         && _module.Dt.IndP_h(_module.Dt$A, Lit(this), Lit(_k#0))
           == (LitInt(0) == ORD#Offset(_k#0)
             ==> (exists _k'#2: Box :: 
              { _module.Dt.IndP_h(_module.Dt$A, this, _k'#2) } 
              ORD#LessThanLimit(_k'#2, _k#0) && _module.Dt.IndP_h(_module.Dt$A, this, _k'#2))));
}

function _module.Dt.IndP_h#canCall(_module.Dt$A: Ty, this: DatatypeType, _k#0: Box) : bool;

function _module.Dt.IndP_h#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for _module.Dt.IndP_h
axiom (forall _module.Dt$A: Ty, this: DatatypeType, _k#0: Box :: 
  { _module.Dt.IndP_h#requires(_module.Dt$A, this, _k#0) } 
  $Is(this, Tclass._module.Dt(_module.Dt$A))
     ==> _module.Dt.IndP_h#requires(_module.Dt$A, this, _k#0) == true);

// function declaration for _module.Dt.CoP
function _module.Dt.CoP(_module.Dt$A: Ty, this: DatatypeType) : bool
uses {
// definition axiom for _module.Dt.CoP (revealed)
axiom {:id "id133"} 0 <= $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, this: DatatypeType :: 
    { _module.Dt.CoP(_module.Dt$A, this) } 
    _module.Dt.CoP#canCall(_module.Dt$A, this)
         || (0 < $FunctionContextHeight && $Is(this, Tclass._module.Dt(_module.Dt$A)))
       ==> _module.Dt.CoP(_module.Dt$A, this) == Lit(true));
}

function _module.Dt.CoP#canCall(_module.Dt$A: Ty, this: DatatypeType) : bool;

function _module.Dt.CoP#requires(Ty, DatatypeType) : bool;

// #requires axiom for _module.Dt.CoP
axiom (forall _module.Dt$A: Ty, this: DatatypeType :: 
  { _module.Dt.CoP#requires(_module.Dt$A, this) } 
  $Is(this, Tclass._module.Dt(_module.Dt$A))
     ==> _module.Dt.CoP#requires(_module.Dt$A, this) == true);

// 1st prefix predicate axiom for _module.Dt.CoP_h
axiom 1 <= $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, this: DatatypeType :: 
    { _module.Dt.CoP(_module.Dt$A, this) } 
    $Is(this, Tclass._module.Dt(_module.Dt$A)) && _module.Dt.CoP(_module.Dt$A, this)
       ==> (forall _k#0: Box :: 
        { _module.Dt.CoP_h(_module.Dt$A, this, _k#0) } 
        _module.Dt.CoP_h(_module.Dt$A, this, _k#0)));

// 2nd prefix predicate axiom
axiom 1 <= $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, this: DatatypeType :: 
    { _module.Dt.CoP(_module.Dt$A, this) } 
    $Is(this, Tclass._module.Dt(_module.Dt$A))
         && (forall _k#0: Box :: 
          { _module.Dt.CoP_h(_module.Dt$A, this, _k#0) } 
          _module.Dt.CoP_h(_module.Dt$A, this, _k#0))
       ==> _module.Dt.CoP(_module.Dt$A, this));

// 3rd prefix predicate axiom
axiom 1 <= $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, this: DatatypeType, _k#0: Box :: 
    { _module.Dt.CoP_h(_module.Dt$A, this, _k#0) } 
    $Is(this, Tclass._module.Dt(_module.Dt$A)) && _k#0 == ORD#FromNat(0)
       ==> _module.Dt.CoP_h(_module.Dt$A, this, _k#0));

procedure {:verboseName "Dt.CoP (well-formedness)"} CheckWellformed$$_module.Dt.CoP(_module.Dt$A: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Dt(_module.Dt$A))
         && $IsAlloc(this, Tclass._module.Dt(_module.Dt$A), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Dt.CoP#
function _module.Dt.CoP_h(_module.Dt$A: Ty, this: DatatypeType, _k#0: Box) : bool
uses {
// definition axiom for _module.Dt.CoP_h (revealed)
axiom {:id "id135"} 1 <= $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, this: DatatypeType, _k#0: Box :: 
    { _module.Dt.CoP_h(_module.Dt$A, this, _k#0) } 
    _module.Dt.CoP_h#canCall(_module.Dt$A, this, _k#0)
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.Dt(_module.Dt$A)))
       ==> (LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.Dt.CoP_h(_module.Dt$A, this, _k'#0) } 
            ORD#Less(_k'#0, _k#0) ==> _module.Dt.CoP_h#canCall(_module.Dt$A, this, _k'#0)))
         && _module.Dt.CoP_h(_module.Dt$A, this, _k#0)
           == (LitInt(0) == ORD#Offset(_k#0)
             ==> (forall _k'#0: Box :: 
              { _module.Dt.CoP_h(_module.Dt$A, this, _k'#0) } 
              ORD#Less(_k'#0, _k#0) ==> _module.Dt.CoP_h(_module.Dt$A, this, _k'#0))));
// definition axiom for _module.Dt.CoP_h for decreasing-related literals (revealed)
axiom {:id "id136"} 1 <= $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, this: DatatypeType, _k#0: Box :: 
    {:weight 3} { _module.Dt.CoP_h(_module.Dt$A, this, Lit(_k#0)) } 
    _module.Dt.CoP_h#canCall(_module.Dt$A, this, Lit(_k#0))
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.Dt(_module.Dt$A)))
       ==> (LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.Dt.CoP_h(_module.Dt$A, this, _k'#1) } 
            ORD#Less(_k'#1, _k#0) ==> _module.Dt.CoP_h#canCall(_module.Dt$A, this, _k'#1)))
         && _module.Dt.CoP_h(_module.Dt$A, this, Lit(_k#0))
           == (LitInt(0) == ORD#Offset(_k#0)
             ==> (forall _k'#1: Box :: 
              { _module.Dt.CoP_h(_module.Dt$A, this, _k'#1) } 
              ORD#Less(_k'#1, _k#0) ==> _module.Dt.CoP_h(_module.Dt$A, this, _k'#1))));
// definition axiom for _module.Dt.CoP_h for all literals (revealed)
axiom {:id "id137"} 1 <= $FunctionContextHeight
   ==> (forall _module.Dt$A: Ty, this: DatatypeType, _k#0: Box :: 
    {:weight 3} { _module.Dt.CoP_h(_module.Dt$A, Lit(this), Lit(_k#0)) } 
    _module.Dt.CoP_h#canCall(_module.Dt$A, Lit(this), Lit(_k#0))
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.Dt(_module.Dt$A)))
       ==> (LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.Dt.CoP_h(_module.Dt$A, this, _k'#2) } 
            ORD#Less(_k'#2, _k#0) ==> _module.Dt.CoP_h#canCall(_module.Dt$A, this, _k'#2)))
         && _module.Dt.CoP_h(_module.Dt$A, Lit(this), Lit(_k#0))
           == (LitInt(0) == ORD#Offset(_k#0)
             ==> (forall _k'#2: Box :: 
              { _module.Dt.CoP_h(_module.Dt$A, this, _k'#2) } 
              ORD#Less(_k'#2, _k#0) ==> _module.Dt.CoP_h(_module.Dt$A, this, _k'#2))));
}

function _module.Dt.CoP_h#canCall(_module.Dt$A: Ty, this: DatatypeType, _k#0: Box) : bool;

function _module.Dt.CoP_h#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for _module.Dt.CoP_h
axiom (forall _module.Dt$A: Ty, this: DatatypeType, _k#0: Box :: 
  { _module.Dt.CoP_h#requires(_module.Dt$A, this, _k#0) } 
  $Is(this, Tclass._module.Dt(_module.Dt$A))
     ==> _module.Dt.CoP_h#requires(_module.Dt$A, this, _k#0) == true);

procedure {:verboseName "Dt.RecursiveZero (well-formedness)"} CheckWellFormed$$_module.Dt.RecursiveZero(_module.Dt$A: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Dt(_module.Dt$A))
         && $IsAlloc(this, Tclass._module.Dt(_module.Dt$A), $Heap), 
    x#0: int)
   returns (z#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Dt.RecursiveZero (call)"} Call$$_module.Dt.RecursiveZero(_module.Dt$A: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Dt(_module.Dt$A))
         && $IsAlloc(this, Tclass._module.Dt(_module.Dt$A), $Heap), 
    x#0: int)
   returns (z#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id139"} z#0 == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Dt.RecursiveZero (correctness)"} Impl$$_module.Dt.RecursiveZero(_module.Dt$A: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Dt(_module.Dt$A))
         && $IsAlloc(this, Tclass._module.Dt(_module.Dt$A), $Heap), 
    x#0: int)
   returns (z#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id140"} z#0 == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Dt.RecursiveZero (correctness)"} Impl$$_module.Dt.RecursiveZero(_module.Dt$A: Ty, this: DatatypeType, x#0: int)
   returns (z#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##1_0: int;
  var x##1_0: int;

    // AddMethodImpl: RecursiveZero, Impl$$_module.Dt.RecursiveZero
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(119,5)
    assume true;
    if (x#0 == LitInt(0))
    {
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(119,17)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(119,17)
        assume true;
        assume true;
        z#0 := LitInt(0);
        return;
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(119,54)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##1_0 := LitInt(0);
        assert {:id "id142"} x##1_0 == 0 && x#0 != 0;
        call {:id "id143"} $rhs##1_0 := Call$$_module.Dt.RecursiveZero(_module.Dt$A, this, x##1_0);
        // TrCallStmt: After ProcessCallStmt
        z#0 := $rhs##1_0;
    }
}



procedure {:verboseName "Dt.StaticRecursiveZero (well-formedness)"} CheckWellFormed$$_module.Dt.StaticRecursiveZero(_module.Dt$A: Ty, x#0: int) returns (z#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Dt.StaticRecursiveZero (call)"} Call$$_module.Dt.StaticRecursiveZero(_module.Dt$A: Ty, x#0: int) returns (z#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id146"} z#0 == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Dt.StaticRecursiveZero (correctness)"} Impl$$_module.Dt.StaticRecursiveZero(_module.Dt$A: Ty, x#0: int) returns (z#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id147"} z#0 == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Dt.StaticRecursiveZero (correctness)"} Impl$$_module.Dt.StaticRecursiveZero(_module.Dt$A: Ty, x#0: int) returns (z#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##1_0: int;
  var x##1_0: int;

    // AddMethodImpl: StaticRecursiveZero, Impl$$_module.Dt.StaticRecursiveZero
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(122,5)
    assume true;
    if (x#0 == LitInt(0))
    {
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(122,17)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(122,17)
        assume true;
        assume true;
        z#0 := LitInt(0);
        return;
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(122,60)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##1_0 := LitInt(0);
        assert {:id "id149"} x##1_0 == 0 && x#0 != 0;
        call {:id "id150"} $rhs##1_0 := Call$$_module.Dt.StaticRecursiveZero(_module.Dt$A, x##1_0);
        // TrCallStmt: After ProcessCallStmt
        z#0 := $rhs##1_0;
    }
}



// Constructor function declaration
function #_module.Co.Cobalt() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Co.Cobalt()) == ##_module.Co.Cobalt;
}

const unique ##_module.Co.Cobalt: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Co.Cobalt()) == ##_module.Co.Cobalt;
}

function _module.Co.Cobalt_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Co.Cobalt_q(d) } 
  _module.Co.Cobalt_q(d) <==> DatatypeCtorId(d) == ##_module.Co.Cobalt);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Co.Cobalt_q(d) } 
  _module.Co.Cobalt_q(d) ==> d == #_module.Co.Cobalt());

// Constructor $Is
axiom (forall _module.Co$A: Ty :: 
  { $Is(#_module.Co.Cobalt(), Tclass._module.Co(_module.Co$A)) } 
  $Is(#_module.Co.Cobalt(), Tclass._module.Co(_module.Co$A)));

// Constructor $IsAlloc
axiom (forall _module.Co$A: Ty, $h: Heap :: 
  { $IsAlloc(#_module.Co.Cobalt(), Tclass._module.Co(_module.Co$A), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.Co.Cobalt(), Tclass._module.Co(_module.Co$A), $h));

// Constructor function declaration
function #_module.Co.Continues(DatatypeType) : DatatypeType;

const unique ##_module.Co.Continues: DtCtorId
uses {
// Constructor identifier
axiom (forall a#3#0#0: DatatypeType :: 
  { #_module.Co.Continues(a#3#0#0) } 
  DatatypeCtorId(#_module.Co.Continues(a#3#0#0)) == ##_module.Co.Continues);
}

function _module.Co.Continues_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Co.Continues_q(d) } 
  _module.Co.Continues_q(d) <==> DatatypeCtorId(d) == ##_module.Co.Continues);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Co.Continues_q(d) } 
  _module.Co.Continues_q(d)
     ==> (exists a#4#0#0: DatatypeType :: d == #_module.Co.Continues(a#4#0#0)));

// Constructor $Is
axiom (forall _module.Co$A: Ty, a#5#0#0: DatatypeType :: 
  { $Is(#_module.Co.Continues(a#5#0#0), Tclass._module.Co(_module.Co$A)) } 
  $Is(#_module.Co.Continues(a#5#0#0), Tclass._module.Co(_module.Co$A))
     <==> $Is(a#5#0#0, Tclass._module.Co(_module.Co$A)));

// Constructor $IsAlloc
axiom (forall _module.Co$A: Ty, a#5#0#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.Co.Continues(a#5#0#0), Tclass._module.Co(_module.Co$A), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Co.Continues(a#5#0#0), Tclass._module.Co(_module.Co$A), $h)
       <==> $IsAlloc(a#5#0#0, Tclass._module.Co(_module.Co$A), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Co$A: Ty, $h: Heap :: 
  { $IsAlloc(_module.Co.next(d), Tclass._module.Co(_module.Co$A), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Co.Continues_q(d)
       && $IsAlloc(d, Tclass._module.Co(_module.Co$A), $h)
     ==> $IsAlloc(_module.Co.next(d), Tclass._module.Co(_module.Co$A), $h));

function _module.Co.next(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#6#0#0: DatatypeType :: 
  { #_module.Co.Continues(a#6#0#0) } 
  _module.Co.next(#_module.Co.Continues(a#6#0#0)) == a#6#0#0);

// Depth-one case-split function
function $IsA#_module.Co(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Co(d) } 
  $IsA#_module.Co(d) ==> _module.Co.Cobalt_q(d) || _module.Co.Continues_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Co$A: Ty, d: DatatypeType :: 
  { _module.Co.Continues_q(d), $Is(d, Tclass._module.Co(_module.Co$A)) } 
    { _module.Co.Cobalt_q(d), $Is(d, Tclass._module.Co(_module.Co$A)) } 
  $Is(d, Tclass._module.Co(_module.Co$A))
     ==> _module.Co.Cobalt_q(d) || _module.Co.Continues_q(d));

function $Eq#_module.Co(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.Co$A#l: Ty, 
    _module.Co$A#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Co(_module.Co$A#l, _module.Co$A#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Co(_module.Co$A#l))
       && $Is(d1, Tclass._module.Co(_module.Co$A#r))
     ==> ($Eq#_module.Co(_module.Co$A#l, _module.Co$A#r, $LS(ly), d0, d1)
       <==> (_module.Co.Cobalt_q(d0) && _module.Co.Cobalt_q(d1))
         || (
          _module.Co.Continues_q(d0)
           && _module.Co.Continues_q(d1)
           && (_module.Co.Continues_q(d0) && _module.Co.Continues_q(d1)
             ==> $Eq#_module.Co(_module.Co$A#l, _module.Co$A#r, ly, _module.Co.next(d0), _module.Co.next(d1))))));

// Unbump layer co-equality axiom
axiom (forall _module.Co$A#l: Ty, 
    _module.Co$A#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Co(_module.Co$A#l, _module.Co$A#r, $LS(ly), d0, d1) } 
  $Eq#_module.Co(_module.Co$A#l, _module.Co$A#r, $LS(ly), d0, d1)
     <==> $Eq#_module.Co(_module.Co$A#l, _module.Co$A#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall _module.Co$A#l: Ty, 
    _module.Co$A#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Co(_module.Co$A#l, _module.Co$A#r, $LS(ly), d0, d1) } 
  $Eq#_module.Co(_module.Co$A#l, _module.Co$A#r, $LS(ly), d0, d1) <==> d0 == d1);

function $PrefixEq#_module.Co(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.Co$A#l: Ty, 
    _module.Co$A#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Co(_module.Co$A#l, _module.Co$A#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Co(_module.Co$A#l))
       && $Is(d1, Tclass._module.Co(_module.Co$A#r))
     ==> ($PrefixEq#_module.Co(_module.Co$A#l, _module.Co$A#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> (_module.Co.Cobalt_q(d0) && _module.Co.Cobalt_q(d1))
             || (
              _module.Co.Continues_q(d0)
               && _module.Co.Continues_q(d1)
               && (_module.Co.Continues_q(d0) && _module.Co.Continues_q(d1)
                 ==> $PrefixEq#_module.Co(_module.Co$A#l, 
                  _module.Co$A#r, 
                  ORD#Minus(k, ORD#FromNat(1)), 
                  ly, 
                  _module.Co.next(d0), 
                  _module.Co.next(d1)))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#_module.Co(_module.Co$A#l, _module.Co$A#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall _module.Co$A#l: Ty, 
    _module.Co$A#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Co(_module.Co$A#l, _module.Co$A#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.Co(_module.Co$A#l, _module.Co$A#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.Co(_module.Co$A#l, _module.Co$A#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.Co$A#l: Ty, 
    _module.Co$A#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Co(_module.Co$A#l, _module.Co$A#r, $LS(ly), d0, d1) } 
  $Eq#_module.Co(_module.Co$A#l, _module.Co$A#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.Co(_module.Co$A#l, _module.Co$A#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.Co(_module.Co$A#l, _module.Co$A#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.Co$A#l: Ty, 
    _module.Co$A#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Co(_module.Co$A#l, _module.Co$A#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.Co(_module.Co$A#l, _module.Co$A#r, ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#_module.Co(_module.Co$A#l, _module.Co$A#r, ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.Co(_module.Co$A#l, _module.Co$A#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall _module.Co$A#l: Ty, 
    _module.Co$A#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#_module.Co(_module.Co$A#l, _module.Co$A#r, k, $LS(ly), d0, d1), $PrefixEq#_module.Co(_module.Co$A#l, _module.Co$A#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#_module.Co(_module.Co$A#l, _module.Co$A#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.Co(_module.Co$A#l, _module.Co$A#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall _module.Co$A#l: Ty, 
    _module.Co$A#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Co(_module.Co$A#l, _module.Co$A#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#_module.Co(_module.Co$A#l, _module.Co$A#r, k, $LS(ly), d0, d1));

const unique class._module.Co: ClassName;

function _module.Co.c(_module.Co$A: Ty, this: DatatypeType) : int
uses {
axiom (forall _module.Co$A: Ty, this: DatatypeType :: 
  { _module.Co.c(_module.Co$A, this): int } 
  _module.Co.c(_module.Co$A, this): int
     == (if _module.Co.Cobalt_q(this) then 18 else 19));
// Co.c: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Co$A: Ty, $o: DatatypeType :: 
    { _module.Co.c(_module.Co$A, $o) } 
    $Is($o, Tclass._module.Co(_module.Co$A))
       ==> $Is(_module.Co.c(_module.Co$A, $o), TInt));
// Co.c: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Co$A: Ty, $h: Heap, $o: DatatypeType :: 
    { _module.Co.c(_module.Co$A, $o), $IsAlloc($o, Tclass._module.Co(_module.Co$A), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.Co(_module.Co$A))
         && $IsAlloc($o, Tclass._module.Co(_module.Co$A), $h)
       ==> $IsAlloc(_module.Co.c(_module.Co$A, $o), TInt, $h));
}

procedure {:verboseName "Co.c (well-formedness)"} CheckWellFormed$$_module.Co.c(_module.Co$A: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Co(_module.Co$A))
         && $IsAlloc(this, Tclass._module.Co(_module.Co$A), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



function _module.Co.g(_module.Co$A: Ty) : int
uses {
// Co.g: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Co$A: Ty :: 
    { _module.Co.g(_module.Co$A) } 
    $Is(_module.Co.g(_module.Co$A), TInt));
}

// Co.g: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Co$A: Ty, $h: Heap :: 
    { $IsAlloc(_module.Co.g(_module.Co$A), TInt, $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(_module.Co.g(_module.Co$A), TInt, $h));

// function declaration for _module.Co.F
function _module.Co.F(_module.Co$A: Ty, this: DatatypeType, x#0: int) : int
uses {
// definition axiom for _module.Co.F (revealed)
axiom {:id "id152"} 0 <= $FunctionContextHeight
   ==> (forall _module.Co$A: Ty, this: DatatypeType, x#0: int :: 
    { _module.Co.F(_module.Co$A, this, x#0) } 
    _module.Co.F#canCall(_module.Co$A, this, x#0)
         || (0 < $FunctionContextHeight && $Is(this, Tclass._module.Co(_module.Co$A)))
       ==> _module.Co.F(_module.Co$A, this, x#0) == LitInt(19));
// definition axiom for _module.Co.F for decreasing-related literals (revealed)
axiom {:id "id153"} 0 <= $FunctionContextHeight
   ==> (forall _module.Co$A: Ty, this: DatatypeType, x#0: int :: 
    {:weight 3} { _module.Co.F(_module.Co$A, this, LitInt(x#0)) } 
    _module.Co.F#canCall(_module.Co$A, this, LitInt(x#0))
         || (0 < $FunctionContextHeight && $Is(this, Tclass._module.Co(_module.Co$A)))
       ==> _module.Co.F(_module.Co$A, this, LitInt(x#0)) == LitInt(19));
// definition axiom for _module.Co.F for all literals (revealed)
axiom {:id "id154"} 0 <= $FunctionContextHeight
   ==> (forall _module.Co$A: Ty, this: DatatypeType, x#0: int :: 
    {:weight 3} { _module.Co.F(_module.Co$A, Lit(this), LitInt(x#0)) } 
    _module.Co.F#canCall(_module.Co$A, Lit(this), LitInt(x#0))
         || (0 < $FunctionContextHeight && $Is(this, Tclass._module.Co(_module.Co$A)))
       ==> _module.Co.F(_module.Co$A, Lit(this), LitInt(x#0)) == LitInt(19));
}

function _module.Co.F#canCall(_module.Co$A: Ty, this: DatatypeType, x#0: int) : bool;

function _module.Co.F#requires(Ty, DatatypeType, int) : bool;

// #requires axiom for _module.Co.F
axiom (forall _module.Co$A: Ty, this: DatatypeType, x#0: int :: 
  { _module.Co.F#requires(_module.Co$A, this, x#0) } 
  $Is(this, Tclass._module.Co(_module.Co$A))
     ==> _module.Co.F#requires(_module.Co$A, this, x#0) == true);

procedure {:verboseName "Co.F (well-formedness)"} CheckWellformed$$_module.Co.F(_module.Co$A: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Co(_module.Co$A))
         && $IsAlloc(this, Tclass._module.Co(_module.Co$A), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Co.G
function _module.Co.G(_module.Co$A: Ty, x#0: int) : int
uses {
// definition axiom for _module.Co.G (revealed)
axiom {:id "id156"} 0 <= $FunctionContextHeight
   ==> (forall _module.Co$A: Ty, x#0: int :: 
    { _module.Co.G(_module.Co$A, x#0) } 
    _module.Co.G#canCall(_module.Co$A, x#0) || 0 < $FunctionContextHeight
       ==> _module.Co.G(_module.Co$A, x#0) == x#0 + 12);
// definition axiom for _module.Co.G for all literals (revealed)
axiom {:id "id157"} 0 <= $FunctionContextHeight
   ==> (forall _module.Co$A: Ty, x#0: int :: 
    {:weight 3} { _module.Co.G(_module.Co$A, LitInt(x#0)) } 
    _module.Co.G#canCall(_module.Co$A, LitInt(x#0)) || 0 < $FunctionContextHeight
       ==> _module.Co.G(_module.Co$A, LitInt(x#0)) == LitInt(x#0 + 12));
}

function _module.Co.G#canCall(_module.Co$A: Ty, x#0: int) : bool;

function _module.Co.G#requires(Ty, int) : bool;

// #requires axiom for _module.Co.G
axiom (forall _module.Co$A: Ty, x#0: int :: 
  { _module.Co.G#requires(_module.Co$A, x#0) } 
  _module.Co.G#requires(_module.Co$A, x#0) == true);

procedure {:verboseName "Co.G (well-formedness)"} CheckWellformed$$_module.Co.G(_module.Co$A: Ty, x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Co.M (well-formedness)"} CheckWellFormed$$_module.Co.M(_module.Co$A: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Co(_module.Co$A))
         && $IsAlloc(this, Tclass._module.Co(_module.Co$A), $Heap), 
    x#0: int)
   returns (y#0: int, 
    d#0: DatatypeType
       where $Is(d#0, Tclass._module.Co(TInt))
         && $IsAlloc(d#0, Tclass._module.Co(TInt), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Co.M (call)"} Call$$_module.Co.M(_module.Co$A: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Co(_module.Co$A))
         && $IsAlloc(this, Tclass._module.Co(_module.Co$A), $Heap), 
    x#0: int)
   returns (y#0: int, 
    d#0: DatatypeType
       where $Is(d#0, Tclass._module.Co(TInt))
         && $IsAlloc(d#0, Tclass._module.Co(TInt), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Co.M (correctness)"} Impl$$_module.Co.M(_module.Co$A: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Co(_module.Co$A))
         && $IsAlloc(this, Tclass._module.Co(_module.Co$A), $Heap), 
    x#0: int)
   returns (y#0: int, 
    d#0: DatatypeType
       where $Is(d#0, Tclass._module.Co(TInt))
         && $IsAlloc(d#0, Tclass._module.Co(TInt), $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Co.M (correctness)"} Impl$$_module.Co.M(_module.Co$A: Ty, this: DatatypeType, x#0: int)
   returns (y#0: int, d#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var z#0: int;
  var $rhs##0: int;
  var x##0: int;
  var $rhs##1: int;
  var x##1: int;

    // AddMethodImpl: M, Impl$$_module.Co.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(132,5)
    assume $IsA#_module.Co(this);
    if ($Eq#_module.Co(_module.Co$A, _module.Co$A, $LS($LS($LZ)), this, #_module.Co.Cobalt()))
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(133,9)
        assume true;
        assume true;
        y#0 := x#0;
        pop;
    }
    else
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(135,9)
        assume true;
        assume true;
        y#0 := LitInt(9);
        pop;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(137,27)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(3);
    call {:id "id161"} $rhs##0 := Call$$_module.Co.RecursiveZero(_module.Co$A, this, x##0);
    // TrCallStmt: After ProcessCallStmt
    z#0 := $rhs##0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(138,7)
    assume true;
    assume true;
    y#0 := y#0 + z#0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(139,29)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := LitInt(3);
    call {:id "id164"} $rhs##1 := Call$$_module.Co.StaticRecursiveZero(_module.Co$A, x##1);
    // TrCallStmt: After ProcessCallStmt
    z#0 := $rhs##1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(140,7)
    assume true;
    assume true;
    y#0 := y#0 + z#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(141,7)
    assume true;
    assume true;
    d#0 := Lit(#_module.Co.Cobalt());
}



procedure {:verboseName "Co.P (well-formedness)"} CheckWellFormed$$_module.Co.P(_module.Co$A: Ty, x#0: int) returns (y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Co.P (call)"} Call$$_module.Co.P(_module.Co$A: Ty, x#0: int) returns (y#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Co.P (correctness)"} Impl$$_module.Co.P(_module.Co$A: Ty, x#0: int) returns (y#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Co.P (correctness)"} Impl$$_module.Co.P(_module.Co$A: Ty, x#0: int) returns (y#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P, Impl$$_module.Co.P
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(144,7)
    assume true;
    assert {:id "id168"} LitInt(2) != 0;
    assume true;
    y#0 := Div(x#0, LitInt(2));
}



procedure {:verboseName "Co.RecursiveZero (well-formedness)"} CheckWellFormed$$_module.Co.RecursiveZero(_module.Co$A: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Co(_module.Co$A))
         && $IsAlloc(this, Tclass._module.Co(_module.Co$A), $Heap), 
    x#0: int)
   returns (z#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Co.RecursiveZero (call)"} Call$$_module.Co.RecursiveZero(_module.Co$A: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Co(_module.Co$A))
         && $IsAlloc(this, Tclass._module.Co(_module.Co$A), $Heap), 
    x#0: int)
   returns (z#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id171"} z#0 == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Co.RecursiveZero (correctness)"} Impl$$_module.Co.RecursiveZero(_module.Co$A: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Co(_module.Co$A))
         && $IsAlloc(this, Tclass._module.Co(_module.Co$A), $Heap), 
    x#0: int)
   returns (z#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id172"} z#0 == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Co.RecursiveZero (correctness)"} Impl$$_module.Co.RecursiveZero(_module.Co$A: Ty, this: DatatypeType, x#0: int)
   returns (z#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##1_0: int;
  var x##1_0: int;

    // AddMethodImpl: RecursiveZero, Impl$$_module.Co.RecursiveZero
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(147,5)
    assume true;
    if (x#0 == LitInt(0))
    {
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(147,17)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(147,17)
        assume true;
        assume true;
        z#0 := LitInt(0);
        return;
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(147,54)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##1_0 := LitInt(0);
        assert {:id "id174"} x##1_0 == 0 && x#0 != 0;
        call {:id "id175"} $rhs##1_0 := Call$$_module.Co.RecursiveZero(_module.Co$A, this, x##1_0);
        // TrCallStmt: After ProcessCallStmt
        z#0 := $rhs##1_0;
    }
}



procedure {:verboseName "Co.StaticRecursiveZero (well-formedness)"} CheckWellFormed$$_module.Co.StaticRecursiveZero(_module.Co$A: Ty, x#0: int) returns (z#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Co.StaticRecursiveZero (call)"} Call$$_module.Co.StaticRecursiveZero(_module.Co$A: Ty, x#0: int) returns (z#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id178"} z#0 == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Co.StaticRecursiveZero (correctness)"} Impl$$_module.Co.StaticRecursiveZero(_module.Co$A: Ty, x#0: int) returns (z#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id179"} z#0 == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Co.StaticRecursiveZero (correctness)"} Impl$$_module.Co.StaticRecursiveZero(_module.Co$A: Ty, x#0: int) returns (z#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##1_0: int;
  var x##1_0: int;

    // AddMethodImpl: StaticRecursiveZero, Impl$$_module.Co.StaticRecursiveZero
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(150,5)
    assume true;
    if (x#0 == LitInt(0))
    {
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(150,17)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(150,17)
        assume true;
        assume true;
        z#0 := LitInt(0);
        return;
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(150,60)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##1_0 := LitInt(0);
        assert {:id "id181"} x##1_0 == 0 && x#0 != 0;
        call {:id "id182"} $rhs##1_0 := Call$$_module.Co.StaticRecursiveZero(_module.Co$A, x##1_0);
        // TrCallStmt: After ProcessCallStmt
        z#0 := $rhs##1_0;
    }
}



procedure {:verboseName "Primes (well-formedness)"} CheckWellFormed$$_module.Primes(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Primes (well-formedness)"} CheckWellFormed$$_module.Primes(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var y#0: int;


    // AddWellformednessCheck for newtype Primes
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        assume {:id "id184"} LitInt(2) <= x#0;
        havoc y#0;
        assume true;
        if (*)
        {
            if (LitInt(2) <= y#0)
            {
            }

            assume {:id "id185"} LitInt(2) <= y#0 && y#0 < x#0;
            assert {:id "id186"} y#0 != 0;
            assume {:id "id187"} Mod(x#0, y#0) != 0;
        }
        else
        {
            assume {:id "id188"} LitInt(2) <= y#0 && y#0 < x#0 ==> Mod(x#0, y#0) != 0;
        }

        assume {:id "id189"} (forall y#1: int :: LitInt(2) <= y#1 && y#1 < x#0 ==> Mod(x#0, y#1) != 0);
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id190"} {:subsumption 0} LitInt(2) <= LitInt(2);
        assert {:id "id191"} {:subsumption 0} (forall y#2: int :: LitInt(2) <= y#2 && y#2 < 2 ==> Mod(2, y#2) != 0);
        assume false;
    }
}



// $Is axiom for newtype _module.Primes
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.Primes()) } 
  $Is(x#0, Tclass._module.Primes())
     <==> LitInt(2) <= x#0
       && (forall y#3: int :: LitInt(2) <= y#3 && y#3 < x#0 ==> Mod(x#0, y#3) != 0));

// $IsAlloc axiom for newtype _module.Primes
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.Primes(), $h) } 
  $IsAlloc(x#0, Tclass._module.Primes(), $h));

const unique class._module.Primes: ClassName;

function _module.Primes.c(this: int) : int
uses {
axiom (forall this: int :: 
  { _module.Primes.c(this): int } 
  _module.Primes.c(this): int == Mul(this, LitInt(2)));
// Primes.c: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $o: int :: 
    { _module.Primes.c($o) } 
    $Is($o, Tclass._module.Primes()) ==> $Is(_module.Primes.c($o), TInt));
// Primes.c: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: int :: 
    { _module.Primes.c($o), $IsAlloc($o, Tclass._module.Primes(), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.Primes())
         && $IsAlloc($o, Tclass._module.Primes(), $h)
       ==> $IsAlloc(_module.Primes.c($o), TInt, $h));
}

procedure {:verboseName "Primes.c (well-formedness)"} CheckWellFormed$$_module.Primes.c(this: int
       where LitInt(2) <= this
         && (forall y#0: int :: LitInt(2) <= y#0 && y#0 < this ==> Mod(this, y#0) != 0));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



function _module.Primes.g() : int
uses {
axiom _module.Primes.g(): int == LitInt(18);
// Primes.g: Type axiom
axiom 0 < $FunctionContextHeight ==> $Is(_module.Primes.g(), TInt);
}

procedure {:verboseName "Primes.g (well-formedness)"} CheckWellFormed$$_module.Primes.g();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// Primes.g: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(_module.Primes.g(), TInt, $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(_module.Primes.g(), TInt, $h));

// function declaration for _module.Primes.F
function _module.Primes.F(this: int, x#0: int) : int
uses {
// definition axiom for _module.Primes.F (revealed)
axiom {:id "id192"} 0 <= $FunctionContextHeight
   ==> (forall this: int, x#0: int :: 
    { _module.Primes.F(this, x#0) } 
    _module.Primes.F#canCall(this, x#0)
         || (0 < $FunctionContextHeight
           && 
          LitInt(2) <= this
           && (forall y#1: int :: LitInt(2) <= y#1 && y#1 < this ==> Mod(this, y#1) != 0))
       ==> _module.Primes.F(this, x#0) == Mul(LitInt(2), x#0) + this);
// definition axiom for _module.Primes.F for all literals (revealed)
axiom {:id "id193"} 0 <= $FunctionContextHeight
   ==> (forall this: int, x#0: int :: 
    {:weight 3} { _module.Primes.F(LitInt(this), LitInt(x#0)) } 
    _module.Primes.F#canCall(LitInt(this), LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          LitInt(2) <= this
           && (forall y#2: int :: LitInt(2) <= y#2 && y#2 < this ==> Mod(this, y#2) != 0))
       ==> _module.Primes.F(LitInt(this), LitInt(x#0))
         == LitInt(Mul(LitInt(2), LitInt(x#0)) + this));
}

function _module.Primes.F#canCall(this: int, x#0: int) : bool;

function _module.Primes.F#requires(int, int) : bool;

// #requires axiom for _module.Primes.F
axiom (forall this: int, x#0: int :: 
  { _module.Primes.F#requires(this, x#0) } 
  LitInt(2) <= this
       && (forall y#1: int :: LitInt(2) <= y#1 && y#1 < this ==> Mod(this, y#1) != 0)
     ==> _module.Primes.F#requires(this, x#0) == true);

procedure {:verboseName "Primes.F (well-formedness)"} CheckWellformed$$_module.Primes.F(this: int
       where LitInt(2) <= this
         && (forall y#3: int :: LitInt(2) <= y#3 && y#3 < this ==> Mod(this, y#3) != 0), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Primes.G
function _module.Primes.G(x#0: int) : int
uses {
// definition axiom for _module.Primes.G (revealed)
axiom {:id "id195"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.Primes.G(x#0) } 
    _module.Primes.G#canCall(x#0) || 0 < $FunctionContextHeight
       ==> _module.Primes.G(x#0) == 100 - x#0);
// definition axiom for _module.Primes.G for all literals (revealed)
axiom {:id "id196"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    {:weight 3} { _module.Primes.G(LitInt(x#0)) } 
    _module.Primes.G#canCall(LitInt(x#0)) || 0 < $FunctionContextHeight
       ==> _module.Primes.G(LitInt(x#0)) == LitInt(100 - x#0));
}

function _module.Primes.G#canCall(x#0: int) : bool;

function _module.Primes.G#requires(int) : bool;

// #requires axiom for _module.Primes.G
axiom (forall x#0: int :: 
  { _module.Primes.G#requires(x#0) } 
  _module.Primes.G#requires(x#0) == true);

procedure {:verboseName "Primes.G (well-formedness)"} CheckWellformed$$_module.Primes.G(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Primes.M (well-formedness)"} CheckWellFormed$$_module.Primes.M(this: int
       where LitInt(2) <= this
         && (forall y#0: int :: LitInt(2) <= y#0 && y#0 < this ==> Mod(this, y#0) != 0), 
    x#0: int)
   returns (y#1: int, 
    d#0: int
       where LitInt(2) <= d#0
         && (forall y#2: int :: LitInt(2) <= y#2 && y#2 < d#0 ==> Mod(d#0, y#2) != 0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Primes.M (call)"} Call$$_module.Primes.M(this: int
       where LitInt(2) <= this
         && (forall y#3: int :: LitInt(2) <= y#3 && y#3 < this ==> Mod(this, y#3) != 0), 
    x#0: int)
   returns (y#1: int, 
    d#0: int
       where LitInt(2) <= d#0
         && (forall y#4: int :: LitInt(2) <= y#4 && y#4 < d#0 ==> Mod(d#0, y#4) != 0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Primes.M (correctness)"} Impl$$_module.Primes.M(this: int
       where LitInt(2) <= this
         && (forall y#5: int :: LitInt(2) <= y#5 && y#5 < this ==> Mod(this, y#5) != 0), 
    x#0: int)
   returns (y#1: int, 
    d#0: int
       where LitInt(2) <= d#0
         && (forall y#6: int :: LitInt(2) <= y#6 && y#6 < d#0 ==> Mod(d#0, y#6) != 0), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Primes.M (correctness)"} Impl$$_module.Primes.M(this: int, x#0: int) returns (y#1: int, d#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var z#0: int;
  var $rhs##0: int;
  var x##0: int;
  var $rhs#0: int;
  var $rhs#1: int;

    // AddMethodImpl: M, Impl$$_module.Primes.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(161,27)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(3);
    call {:id "id198"} $rhs##0 := Call$$_module.Primes.RecursiveZero(this, x##0);
    // TrCallStmt: After ProcessCallStmt
    z#0 := $rhs##0;
    // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(162,5)
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(162,5)
    assume true;
    assume true;
    assume true;
    $rhs#0 := x#0 + z#0;
    assume true;
    $rhs#1 := this;
    y#1 := $rhs#0;
    d#0 := $rhs#1;
    return;
}



procedure {:verboseName "Primes.P (well-formedness)"} CheckWellFormed$$_module.Primes.P(x#0: int) returns (y#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Primes.P (call)"} Call$$_module.Primes.P(x#0: int) returns (y#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Primes.P (correctness)"} Impl$$_module.Primes.P(x#0: int) returns (y#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Primes.P (correctness)"} Impl$$_module.Primes.P(x#0: int) returns (y#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var z#0: int;
  var $rhs##0: int;
  var x##0: int;

    // AddMethodImpl: P, Impl$$_module.Primes.P
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(165,33)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(3);
    call {:id "id204"} $rhs##0 := Call$$_module.Primes.StaticRecursiveZero(x##0);
    // TrCallStmt: After ProcessCallStmt
    z#0 := $rhs##0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(166,7)
    assume true;
    assume true;
    y#0 := Mul(LitInt(3), x#0) + z#0;
}



procedure {:verboseName "Primes.RecursiveZero (well-formedness)"} CheckWellFormed$$_module.Primes.RecursiveZero(this: int
       where LitInt(2) <= this
         && (forall y#0: int :: LitInt(2) <= y#0 && y#0 < this ==> Mod(this, y#0) != 0), 
    x#0: int)
   returns (z#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Primes.RecursiveZero (call)"} Call$$_module.Primes.RecursiveZero(this: int
       where LitInt(2) <= this
         && (forall y#1: int :: LitInt(2) <= y#1 && y#1 < this ==> Mod(this, y#1) != 0), 
    x#0: int)
   returns (z#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id208"} z#0 == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Primes.RecursiveZero (correctness)"} Impl$$_module.Primes.RecursiveZero(this: int
       where LitInt(2) <= this
         && (forall y#2: int :: LitInt(2) <= y#2 && y#2 < this ==> Mod(this, y#2) != 0), 
    x#0: int)
   returns (z#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id209"} z#0 == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Primes.RecursiveZero (correctness)"} Impl$$_module.Primes.RecursiveZero(this: int, x#0: int) returns (z#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##1_0: int;
  var x##1_0: int;

    // AddMethodImpl: RecursiveZero, Impl$$_module.Primes.RecursiveZero
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(169,5)
    assume true;
    if (x#0 == LitInt(0))
    {
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(169,17)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(169,17)
        assume true;
        assume true;
        z#0 := LitInt(0);
        return;
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(169,54)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##1_0 := LitInt(0);
        assert {:id "id211"} x##1_0 == 0 && x#0 != 0;
        call {:id "id212"} $rhs##1_0 := Call$$_module.Primes.RecursiveZero(this, x##1_0);
        // TrCallStmt: After ProcessCallStmt
        z#0 := $rhs##1_0;
    }
}



procedure {:verboseName "Primes.StaticRecursiveZero (well-formedness)"} CheckWellFormed$$_module.Primes.StaticRecursiveZero(x#0: int) returns (z#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Primes.StaticRecursiveZero (call)"} Call$$_module.Primes.StaticRecursiveZero(x#0: int) returns (z#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id215"} z#0 == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Primes.StaticRecursiveZero (correctness)"} Impl$$_module.Primes.StaticRecursiveZero(x#0: int) returns (z#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id216"} z#0 == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Primes.StaticRecursiveZero (correctness)"} Impl$$_module.Primes.StaticRecursiveZero(x#0: int) returns (z#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##1_0: int;
  var x##1_0: int;

    // AddMethodImpl: StaticRecursiveZero, Impl$$_module.Primes.StaticRecursiveZero
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(172,5)
    assume true;
    if (x#0 == LitInt(0))
    {
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(172,17)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(172,17)
        assume true;
        assume true;
        z#0 := LitInt(0);
        return;
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(172,60)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##1_0 := LitInt(0);
        assert {:id "id218"} x##1_0 == 0 && x#0 != 0;
        call {:id "id219"} $rhs##1_0 := Call$$_module.Primes.StaticRecursiveZero(x##1_0);
        // TrCallStmt: After ProcessCallStmt
        z#0 := $rhs##1_0;
    }
}



procedure {:verboseName "Small (well-formedness)"} CheckWellFormed$$_module.Small(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Small (well-formedness)"} CheckWellFormed$$_module.Small(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype Small
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id221"} LitInt(0) <= x#0 && x#0 < 25;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id222"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id223"} {:subsumption 0} Lit(0 < 25);
        assume false;
    }
}



// $Is axiom for newtype _module.Small
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.Small()) } 
  $Is(x#0, Tclass._module.Small()) <==> LitInt(0) <= x#0 && x#0 < 25);

// $IsAlloc axiom for newtype _module.Small
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.Small(), $h) } 
  $IsAlloc(x#0, Tclass._module.Small(), $h));

const unique class._module.Small: ClassName;

function _module.Small.c(this: int) : int
uses {
axiom (forall this: int :: 
  { _module.Small.c(this): int } 
  _module.Small.c(this): int == Mod(this, LitInt(4)));
// Small.c: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $o: int :: 
    { _module.Small.c($o) } 
    $Is($o, Tclass._module.Small()) ==> $Is(_module.Small.c($o), TInt));
// Small.c: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: int :: 
    { _module.Small.c($o), $IsAlloc($o, Tclass._module.Small(), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.Small())
         && $IsAlloc($o, Tclass._module.Small(), $h)
       ==> $IsAlloc(_module.Small.c($o), TInt, $h));
}

procedure {:verboseName "Small.c (well-formedness)"} CheckWellFormed$$_module.Small.c(this: int where LitInt(0) <= this && this < 25);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Small.c (well-formedness)"} CheckWellFormed$$_module.Small.c(this: int)
{
  var $_ReadsFrame: [ref,Field]bool;

    // AddWellformednessCheck for const field c
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id224"} LitInt(4) != 0;
    assume true;
}



function _module.Small.g() : int
uses {
axiom _module.Small.g(): int == LitInt(18);
// Small.g: Type axiom
axiom 0 < $FunctionContextHeight ==> $Is(_module.Small.g(), TInt);
}

procedure {:verboseName "Small.g (well-formedness)"} CheckWellFormed$$_module.Small.g();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// Small.g: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(_module.Small.g(), TInt, $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(_module.Small.g(), TInt, $h));

// function declaration for _module.Small.F
function _module.Small.F(this: int, x#0: int) : int
uses {
// definition axiom for _module.Small.F (revealed)
axiom {:id "id225"} 0 <= $FunctionContextHeight
   ==> (forall this: int, x#0: int :: 
    { _module.Small.F(this, x#0) } 
    _module.Small.F#canCall(this, x#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= this && this < 25)
       ==> _module.Small.F(this, x#0) == Mul(LitInt(2), x#0) + this);
// definition axiom for _module.Small.F for all literals (revealed)
axiom {:id "id226"} 0 <= $FunctionContextHeight
   ==> (forall this: int, x#0: int :: 
    {:weight 3} { _module.Small.F(LitInt(this), LitInt(x#0)) } 
    _module.Small.F#canCall(LitInt(this), LitInt(x#0))
         || (0 < $FunctionContextHeight && LitInt(0) <= this && this < 25)
       ==> _module.Small.F(LitInt(this), LitInt(x#0))
         == LitInt(Mul(LitInt(2), LitInt(x#0)) + this));
}

function _module.Small.F#canCall(this: int, x#0: int) : bool;

function _module.Small.F#requires(int, int) : bool;

// #requires axiom for _module.Small.F
axiom (forall this: int, x#0: int :: 
  { _module.Small.F#requires(this, x#0) } 
  LitInt(0) <= this && this < 25 ==> _module.Small.F#requires(this, x#0) == true);

procedure {:verboseName "Small.F (well-formedness)"} CheckWellformed$$_module.Small.F(this: int where LitInt(0) <= this && this < 25, x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Small.G
function _module.Small.G(x#0: int) : int
uses {
// definition axiom for _module.Small.G (revealed)
axiom {:id "id228"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.Small.G(x#0) } 
    _module.Small.G#canCall(x#0) || 0 < $FunctionContextHeight
       ==> _module.Small.G(x#0) == 100 - x#0);
// definition axiom for _module.Small.G for all literals (revealed)
axiom {:id "id229"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    {:weight 3} { _module.Small.G(LitInt(x#0)) } 
    _module.Small.G#canCall(LitInt(x#0)) || 0 < $FunctionContextHeight
       ==> _module.Small.G(LitInt(x#0)) == LitInt(100 - x#0));
}

function _module.Small.G#canCall(x#0: int) : bool;

function _module.Small.G#requires(int) : bool;

// #requires axiom for _module.Small.G
axiom (forall x#0: int :: 
  { _module.Small.G#requires(x#0) } 
  _module.Small.G#requires(x#0) == true);

procedure {:verboseName "Small.G (well-formedness)"} CheckWellformed$$_module.Small.G(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Small.M (well-formedness)"} CheckWellFormed$$_module.Small.M(this: int where LitInt(0) <= this && this < 25, x#0: int)
   returns (y#0: int, d#0: int where LitInt(0) <= d#0 && d#0 < 25);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Small.M (call)"} Call$$_module.Small.M(this: int where LitInt(0) <= this && this < 25, x#0: int)
   returns (y#0: int, d#0: int where LitInt(0) <= d#0 && d#0 < 25);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Small.M (correctness)"} Impl$$_module.Small.M(this: int where LitInt(0) <= this && this < 25, x#0: int)
   returns (y#0: int, d#0: int where LitInt(0) <= d#0 && d#0 < 25, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Small.M (correctness)"} Impl$$_module.Small.M(this: int, x#0: int) returns (y#0: int, d#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var z#0: int;
  var $rhs##0: int;
  var x##0: int;
  var $rhs#0: int;
  var $rhs#1: int;

    // AddMethodImpl: M, Impl$$_module.Small.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(183,27)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(3);
    call {:id "id231"} $rhs##0 := Call$$_module.Small.RecursiveZero(this, x##0);
    // TrCallStmt: After ProcessCallStmt
    z#0 := $rhs##0;
    // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(184,5)
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(184,5)
    assume true;
    assume true;
    assume true;
    $rhs#0 := x#0 + z#0;
    assume true;
    $rhs#1 := this;
    y#0 := $rhs#0;
    d#0 := $rhs#1;
    return;
}



procedure {:verboseName "Small.P (well-formedness)"} CheckWellFormed$$_module.Small.P(x#0: int) returns (y#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Small.P (call)"} Call$$_module.Small.P(x#0: int) returns (y#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Small.P (correctness)"} Impl$$_module.Small.P(x#0: int) returns (y#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Small.P (correctness)"} Impl$$_module.Small.P(x#0: int) returns (y#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var z#0: int;
  var $rhs##0: int;
  var x##0: int;

    // AddMethodImpl: P, Impl$$_module.Small.P
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(187,33)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(3);
    call {:id "id237"} $rhs##0 := Call$$_module.Small.StaticRecursiveZero(x##0);
    // TrCallStmt: After ProcessCallStmt
    z#0 := $rhs##0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(188,7)
    assume true;
    assume true;
    y#0 := Mul(LitInt(3), x#0) + z#0;
}



procedure {:verboseName "Small.RecursiveZero (well-formedness)"} CheckWellFormed$$_module.Small.RecursiveZero(this: int where LitInt(0) <= this && this < 25, x#0: int) returns (z#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Small.RecursiveZero (call)"} Call$$_module.Small.RecursiveZero(this: int where LitInt(0) <= this && this < 25, x#0: int) returns (z#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id241"} z#0 == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Small.RecursiveZero (correctness)"} Impl$$_module.Small.RecursiveZero(this: int where LitInt(0) <= this && this < 25, x#0: int)
   returns (z#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id242"} z#0 == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Small.RecursiveZero (correctness)"} Impl$$_module.Small.RecursiveZero(this: int, x#0: int) returns (z#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##1_0: int;
  var x##1_0: int;

    // AddMethodImpl: RecursiveZero, Impl$$_module.Small.RecursiveZero
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(191,5)
    assume true;
    if (x#0 == LitInt(0))
    {
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(191,17)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(191,17)
        assume true;
        assume true;
        z#0 := LitInt(0);
        return;
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(191,54)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##1_0 := LitInt(0);
        assert {:id "id244"} x##1_0 == 0 && x#0 != 0;
        call {:id "id245"} $rhs##1_0 := Call$$_module.Small.RecursiveZero(this, x##1_0);
        // TrCallStmt: After ProcessCallStmt
        z#0 := $rhs##1_0;
    }
}



procedure {:verboseName "Small.StaticRecursiveZero (well-formedness)"} CheckWellFormed$$_module.Small.StaticRecursiveZero(x#0: int) returns (z#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Small.StaticRecursiveZero (call)"} Call$$_module.Small.StaticRecursiveZero(x#0: int) returns (z#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id248"} z#0 == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Small.StaticRecursiveZero (correctness)"} Impl$$_module.Small.StaticRecursiveZero(x#0: int) returns (z#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id249"} z#0 == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Small.StaticRecursiveZero (correctness)"} Impl$$_module.Small.StaticRecursiveZero(x#0: int) returns (z#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##1_0: int;
  var x##1_0: int;

    // AddMethodImpl: StaticRecursiveZero, Impl$$_module.Small.StaticRecursiveZero
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(194,5)
    assume true;
    if (x#0 == LitInt(0))
    {
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(194,17)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(194,17)
        assume true;
        assume true;
        z#0 := LitInt(0);
        return;
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeMembers.dfy(194,60)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##1_0 := LitInt(0);
        assert {:id "id251"} x##1_0 == 0 && x#0 != 0;
        call {:id "id252"} $rhs##1_0 := Call$$_module.Small.StaticRecursiveZero(x##1_0);
        // TrCallStmt: After ProcessCallStmt
        z#0 := $rhs##1_0;
    }
}



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

const unique tytagFamily$DaTy: TyTagFamily;

const unique tytagFamily$Pos: TyTagFamily;

const unique tytagFamily$Dt: TyTagFamily;

const unique tytagFamily$Co: TyTagFamily;

const unique tytagFamily$Primes: TyTagFamily;

const unique tytagFamily$Small: TyTagFamily;
