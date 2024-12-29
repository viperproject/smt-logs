// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy

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

// Box/unbox axiom for bv19
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(19)) } 
  $IsBox(bx, TBitvector(19))
     ==> $Box($Unbox(bx): bv19) == bx && $Is($Unbox(bx): bv19, TBitvector(19)));

axiom (forall v: bv19 :: { $Is(v, TBitvector(19)) } $Is(v, TBitvector(19)));

axiom (forall v: bv19, heap: Heap :: 
  { $IsAlloc(v, TBitvector(19), heap) } 
  $IsAlloc(v, TBitvector(19), heap));

function {:bvbuiltin "bvand"} and_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvor"} or_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvxor"} xor_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvnot"} not_bv19(bv19) : bv19;

function {:bvbuiltin "bvadd"} add_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvsub"} sub_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvmul"} mul_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvudiv"} div_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvurem"} mod_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvult"} lt_bv19(bv19, bv19) : bool;

function {:bvbuiltin "bvule"} le_bv19(bv19, bv19) : bool;

function {:bvbuiltin "bvuge"} ge_bv19(bv19, bv19) : bool;

function {:bvbuiltin "bvugt"} gt_bv19(bv19, bv19) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvlshr"} RightShift_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "(_ int2bv 19)"} nat_to_bv19(int) : bv19;

function {:bvbuiltin "bv2int"} smt_nat_from_bv19(bv19) : int;

function nat_from_bv19(bv19) : int;

axiom (forall b: bv19 :: 
  { nat_from_bv19(b) } 
  0 <= nat_from_bv19(b)
     && nat_from_bv19(b) < 524288
     && nat_from_bv19(b) == smt_nat_from_bv19(b));

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

function Tclass._System.___hFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc4: TyTag;

// Tclass._System.___hFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hFunc4
     && TagFamily(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#Func4);

function Tclass._System.___hFunc4_0(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_0(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hFunc4_1(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_1(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hFunc4_2(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_2(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hFunc4_3(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_3(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hFunc4_4(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_4(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

function Handle4([Heap,Box,Box,Box,Box]Box, [Heap,Box,Box,Box,Box]bool, [Heap,Box,Box,Box,Box]Set)
   : HandleType;

function Apply4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : Box;

function Requires4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : bool;

function Reads4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Apply4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3) } 
  Apply4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3)
     == h[heap, bx0, bx1, bx2, bx3]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Requires4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3) } 
  r[heap, bx0, bx1, bx2, bx3]
     ==> Requires4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx: Box :: 
  { Set#IsMember(Reads4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3), bx) } 
  Set#IsMember(Reads4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3), bx)
     == Set#IsMember(rd[heap, bx0, bx1, bx2, bx3], bx));

function {:inline} Requires4#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box)
   : bool
{
  true
}

function {:inline} Reads4#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box)
   : bool
{
  true
}

// frame axiom for Reads4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Reads4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Apply4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Apply4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// empty-reads property for Reads4 
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), $IsGoodHeap(heap) } 
    { Reads4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
     ==> (Set#Equal(Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)
       <==> Set#Equal(Reads4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)));

// empty-reads property for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Requires4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), $IsGoodHeap(heap) } 
    { Requires4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && Set#Equal(Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)
     ==> Requires4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty :: 
  { $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4)) } 
  $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
     <==> (forall h: Heap, bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
      { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && $IsBox(bx2, t2)
           && $IsBox(bx3, t3)
           && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
         ==> $IsBox(Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), t4)));

axiom (forall f: HandleType, 
    t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    u0: Ty, 
    u1: Ty, 
    u2: Ty, 
    u3: Ty, 
    u4: Ty :: 
  { $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4)), $Is(f, Tclass._System.___hFunc4(u0, u1, u2, u3, u4)) } 
  $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
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
        { $IsBox(bx, u3) } { $IsBox(bx, t3) } 
        $IsBox(bx, u3) ==> $IsBox(bx, t3))
       && (forall bx: Box :: 
        { $IsBox(bx, t4) } { $IsBox(bx, u4) } 
        $IsBox(bx, t4) ==> $IsBox(bx, u4))
     ==> $Is(f, Tclass._System.___hFunc4(u0, u1, u2, u3, u4)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h)
       <==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
        { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
          { Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && 
            $IsBox(bx2, t2)
             && $IsAllocBox(bx2, t2, h)
             && 
            $IsBox(bx3, t3)
             && $IsAllocBox(bx3, t3, h)
             && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), $Box(r)) } 
            r != null
                 && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h)
     ==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
      { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && $IsAllocBox(bx2, t2, h)
           && $IsAllocBox(bx3, t3, h)
           && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
         ==> $IsAllocBox(Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), t4, h)));

function Tclass._System.___hPartialFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc4: TyTag;

// Tclass._System.___hPartialFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hPartialFunc4
     && TagFamily(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#PartialFunc4);

function Tclass._System.___hPartialFunc4_0(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_0(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc4_1(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_1(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc4_2(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_2(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hPartialFunc4_3(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_3(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hPartialFunc4_4(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_4(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

// $Is axiom for subset type _System._#PartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
           ==> Set#Equal(Reads4(#$T0, #$T1, #$T2, #$T3, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0), 
            Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h));

function Tclass._System.___hTotalFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc4: TyTag;

// Tclass._System.___hTotalFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hTotalFunc4
     && TagFamily(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#TotalFunc4);

function Tclass._System.___hTotalFunc4_0(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_0(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc4_1(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_1(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc4_2(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_2(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hTotalFunc4_3(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_3(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hTotalFunc4_4(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_4(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

// $Is axiom for subset type _System._#TotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
           ==> Requires4(#$T0, #$T1, #$T2, #$T3, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h));

const reveal_TwoStateAt._default.Opaque: bool;

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



function Tclass._module.A() : Ty
uses {
// Tclass._module.A Tag
axiom Tag(Tclass._module.A()) == Tagclass._module.A
   && TagFamily(Tclass._module.A()) == tytagFamily$A;
}

const unique Tagclass._module.A: TyTag;

// Box/unbox axiom for Tclass._module.A
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.A()) } 
  $IsBox(bx, Tclass._module.A())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.A()));

function Tclass._module.A?() : Ty
uses {
// Tclass._module.A? Tag
axiom Tag(Tclass._module.A?()) == Tagclass._module.A?
   && TagFamily(Tclass._module.A?()) == tytagFamily$A;
}

const unique Tagclass._module.A?: TyTag;

// Box/unbox axiom for Tclass._module.A?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.A?()) } 
  $IsBox(bx, Tclass._module.A?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.A?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.A()) && $IsAlloc(c#0, Tclass._module.A(), $Heap);
  var defass#d#0: bool;
  var d#0: ref
     where defass#d#0
       ==> $Is(d#0, Tclass._module.A()) && $IsAlloc(d#0, Tclass._module.A(), $Heap);
  var $rhs#0: ref;
  var $nw: ref;
  var $rhs#1: ref;
  var c##0: ref;
  var d##0: ref;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(5,12)
    assume true;
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.A?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#0 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.A?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#1 := $nw;
    c#0 := $rhs#0;
    defass#c#0 := true;
    d#0 := $rhs#1;
    defass#d#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(6,4)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id706"} defass#c#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    c##0 := c#0;
    assert {:id "id707"} defass#d#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    d##0 := d#0;
    assert {:id "id708"} $IsAlloc(c#0, Tclass._module.A(), old($Heap));
    call {:id "id709"} Call$$_module.__default.L(old($Heap), $Heap, c##0, d##0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "L (well-formedness)"} CheckWellFormed$$_module.__default.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    c#0: ref
       where $Is(c#0, Tclass._module.A()) && $IsAlloc(c#0, Tclass._module.A(), previous$Heap), 
    d#0: ref
       where $Is(d#0, Tclass._module.A()) && $IsAlloc(d#0, Tclass._module.A(), current$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(c#0, Tclass._module.A(), previous$Heap);
  modifies $Heap;



procedure {:verboseName "L (call)"} Call$$_module.__default.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    c#0: ref
       where $Is(c#0, Tclass._module.A()) && $IsAlloc(c#0, Tclass._module.A(), previous$Heap), 
    d#0: ref
       where $Is(d#0, Tclass._module.A()) && $IsAlloc(d#0, Tclass._module.A(), current$Heap));
  requires $IsAlloc(c#0, Tclass._module.A(), previous$Heap);
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "L (correctness)"} Impl$$_module.__default.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    c#0: ref
       where $Is(c#0, Tclass._module.A()) && $IsAlloc(c#0, Tclass._module.A(), previous$Heap), 
    d#0: ref
       where $Is(d#0, Tclass._module.A()) && $IsAlloc(d#0, Tclass._module.A(), current$Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(c#0, Tclass._module.A(), previous$Heap);
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "L (correctness)"} Impl$$_module.__default.L(previous$Heap: Heap, current$Heap: Heap, c#0: ref, d#0: ref)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int;
  var y#0: int;

    // AddMethodImpl: L, Impl$$_module.__default.L
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(11,9)
    assume true;
    assert {:id "id710"} c#0 != null;
    assert {:id "id711"} $IsAlloc(c#0, Tclass._module.A(), old($Heap));
    assume true;
    x#0 := $Unbox(read(old($Heap), c#0, _module.A.f)): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(12,9)
    assume true;
    assert {:id "id713"} d#0 != null;
    assert {:id "id714"} $IsAlloc(d#0, Tclass._module.A(), old($Heap));
    assume true;
    y#0 := $Unbox(read(old($Heap), d#0, _module.A.f)): int;
}



const unique class._module.A?: ClassName;

// $Is axiom for class A
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.A?()) } 
  $Is($o, Tclass._module.A?()) <==> $o == null || dtype($o) == Tclass._module.A?());

// $IsAlloc axiom for class A
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.A?(), $h) } 
  $IsAlloc($o, Tclass._module.A?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.A.f: Field
uses {
axiom FDim(_module.A.f) == 0
   && FieldOfDecl(class._module.A?, field$f) == _module.A.f
   && !$IsGhostField(_module.A.f);
}

// A.f: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.A.f)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.A?()
     ==> $Is($Unbox(read($h, $o, _module.A.f)): int, TInt));

// A.f: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.A.f)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.A?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.A.f)): int, TInt, $h));

const _module.A.g: Field
uses {
axiom FDim(_module.A.g) == 0
   && FieldOfDecl(class._module.A?, field$g) == _module.A.g
   && !$IsGhostField(_module.A.g);
}

// A.g: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.A.g)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.A?()
     ==> $Is($Unbox(read($h, $o, _module.A.g)): ref, Tclass._module.A?()));

// A.g: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.A.g)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.A?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.A.g)): ref, Tclass._module.A?(), $h));

// function declaration for _module.A.GimmieF
function _module.A.GimmieF($heap: Heap, this: ref) : int
uses {
// definition axiom for _module.A.GimmieF (revealed)
axiom {:id "id716"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.A.GimmieF($Heap, this), $IsGoodHeap($Heap) } 
    _module.A.GimmieF#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.A())
           && $IsAlloc(this, Tclass._module.A(), $Heap))
       ==> _module.A.GimmieF($Heap, this) == $Unbox(read($Heap, this, _module.A.f)): int);
}

function _module.A.GimmieF#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.A.GimmieF
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.A.GimmieF($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.A())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.A.GimmieF($h0, this) == _module.A.GimmieF($h1, this));

function _module.A.GimmieF#requires(Heap, ref) : bool;

// #requires axiom for _module.A.GimmieF
axiom (forall $Heap: Heap, this: ref :: 
  { _module.A.GimmieF#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.A())
       && $IsAlloc(this, Tclass._module.A(), $Heap)
     ==> _module.A.GimmieF#requires($Heap, this) == true);

procedure {:verboseName "A.GimmieF (well-formedness)"} CheckWellformed$$_module.A.GimmieF(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.GimmieF (well-formedness)"} CheckWellformed$$_module.A.GimmieF(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
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
        b$reqreads#0 := $_ReadsFrame[this, _module.A.f];
        assume {:id "id717"} _module.A.GimmieF($Heap, this) == $Unbox(read($Heap, this, _module.A.f)): int;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.A.GimmieF($Heap, this), TInt);
        assert {:id "id718"} b$reqreads#0;
        return;

        assume false;
    }
}



procedure {:verboseName "A.L1 (well-formedness)"} CheckWellFormed$$_module.A.L1(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    other#0: ref
       where $Is(other#0, Tclass._module.A())
         && $IsAlloc(other#0, Tclass._module.A(), previous$Heap))
   returns (res#0: bool);
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(other#0, Tclass._module.A(), previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.L1 (well-formedness)"} CheckWellFormed$$_module.A.L1(previous$Heap: Heap, current$Heap: Heap, this: ref, other#0: ref)
   returns (res#0: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: L1, CheckWellFormed$$_module.A.L1
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id719"} $IsAlloc(this, Tclass._module.A(), old($Heap));
    assume {:id "id720"} (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null ==> $o == this ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
    havoc res#0;
    if (*)
    {
        assume {:id "id721"} res#0;
        assume {:id "id722"} this == other#0;
    }
    else
    {
        assume {:id "id723"} res#0 ==> this == other#0;
    }
}



procedure {:verboseName "A.L1 (call)"} Call$$_module.A.L1(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    other#0: ref
       where $Is(other#0, Tclass._module.A())
         && $IsAlloc(other#0, Tclass._module.A(), previous$Heap))
   returns (res#0: bool);
  requires $IsAlloc(other#0, Tclass._module.A(), previous$Heap);
  // user-defined preconditions
  requires {:id "id724"} (forall $o: ref, $f: Field :: 
    { read(current$Heap, $o, $f) } 
    $o != null
       ==> 
      $o == this
       ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id725"} res#0 ==> this == other#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "A.L1 (correctness)"} Impl$$_module.A.L1(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    other#0: ref
       where $Is(other#0, Tclass._module.A())
         && $IsAlloc(other#0, Tclass._module.A(), previous$Heap))
   returns (res#0: bool, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(other#0, Tclass._module.A(), previous$Heap);
  // user-defined preconditions
  requires {:id "id726"} (forall $o: ref, $f: Field :: 
    { read(current$Heap, $o, $f) } 
    $o != null
       ==> 
      $o == this
       ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id727"} res#0 ==> this == other#0;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.L1 (correctness)"} Impl$$_module.A.L1(previous$Heap: Heap, current$Heap: Heap, this: ref, other#0: ref)
   returns (res#0: bool, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: L1, Impl$$_module.A.L1
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(29,9)
    assume true;
    assume true;
    res#0 := this == other#0;
}



procedure {:verboseName "A.L2 (well-formedness)"} CheckWellFormed$$_module.A.L2(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), previous$Heap), 
    b#0: ref
       where $Is(b#0, Tclass._module.A()) && $IsAlloc(b#0, Tclass._module.A(), previous$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(a#0, Tclass._module.A(), previous$Heap);
  requires $IsAlloc(b#0, Tclass._module.A(), previous$Heap);
  modifies $Heap;



procedure {:verboseName "A.L2 (call)"} Call$$_module.A.L2(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), previous$Heap), 
    b#0: ref
       where $Is(b#0, Tclass._module.A()) && $IsAlloc(b#0, Tclass._module.A(), previous$Heap));
  requires $IsAlloc(a#0, Tclass._module.A(), previous$Heap);
  requires $IsAlloc(b#0, Tclass._module.A(), previous$Heap);
  // user-defined preconditions
  requires {:id "id730"} a#0 != b#0;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "A.L2 (correctness)"} Impl$$_module.A.L2(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), previous$Heap), 
    b#0: ref
       where $Is(b#0, Tclass._module.A()) && $IsAlloc(b#0, Tclass._module.A(), previous$Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(a#0, Tclass._module.A(), previous$Heap);
  requires $IsAlloc(b#0, Tclass._module.A(), previous$Heap);
  // user-defined preconditions
  requires {:id "id731"} a#0 != b#0;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "A.L3 (well-formedness)"} CheckWellFormed$$_module.A.L3(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), previous$Heap), 
    b#0: ref
       where $Is(b#0, Tclass._module.A()) && $IsAlloc(b#0, Tclass._module.A(), current$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(a#0, Tclass._module.A(), previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.L3 (well-formedness)"} CheckWellFormed$$_module.A.L3(previous$Heap: Heap, current$Heap: Heap, this: ref, a#0: ref, b#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: L3, CheckWellFormed$$_module.A.L3
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id732"} a#0 != null;
    assert {:id "id733"} $IsAlloc(a#0, Tclass._module.A(), old($Heap));
    assert {:id "id734"} b#0 != null;
    assert {:id "id735"} $IsAlloc(b#0, Tclass._module.A(), old($Heap));
    assume {:id "id736"} $Unbox(read(old($Heap), a#0, _module.A.f)): int
       != $Unbox(read(old($Heap), b#0, _module.A.f)): int;
}



procedure {:verboseName "A.L3 (call)"} Call$$_module.A.L3(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), previous$Heap), 
    b#0: ref
       where $Is(b#0, Tclass._module.A()) && $IsAlloc(b#0, Tclass._module.A(), current$Heap));
  requires $IsAlloc(a#0, Tclass._module.A(), previous$Heap);
  // user-defined preconditions
  requires {:id "id737"} $Unbox(read(previous$Heap, a#0, _module.A.f)): int
     != $Unbox(read(previous$Heap, b#0, _module.A.f)): int;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "A.L3 (correctness)"} Impl$$_module.A.L3(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), previous$Heap), 
    b#0: ref
       where $Is(b#0, Tclass._module.A()) && $IsAlloc(b#0, Tclass._module.A(), current$Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(a#0, Tclass._module.A(), previous$Heap);
  // user-defined preconditions
  requires {:id "id738"} $Unbox(read(previous$Heap, a#0, _module.A.f)): int
     != $Unbox(read(previous$Heap, b#0, _module.A.f)): int;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "A.L3_and_a_half (well-formedness)"} CheckWellFormed$$_module.A.L3__and__a__half(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), previous$Heap), 
    b#0: ref
       where $Is(b#0, Tclass._module.A()) && $IsAlloc(b#0, Tclass._module.A(), current$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(a#0, Tclass._module.A(), previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.L3_and_a_half (well-formedness)"} CheckWellFormed$$_module.A.L3__and__a__half(previous$Heap: Heap, current$Heap: Heap, this: ref, a#0: ref, b#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: L3_and_a_half, CheckWellFormed$$_module.A.L3__and__a__half
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id739"} a#0 != null;
    assert {:id "id740"} $IsAlloc(a#0, Tclass._module.A(), old($Heap));
    assume _module.A.GimmieF#canCall(old($Heap), a#0);
    assert {:id "id741"} b#0 != null;
    assert {:id "id742"} $IsAlloc(b#0, Tclass._module.A(), old($Heap));
    assume _module.A.GimmieF#canCall(old($Heap), b#0);
    assume {:id "id743"} _module.A.GimmieF(old($Heap), a#0) == _module.A.GimmieF(old($Heap), b#0);
}



procedure {:verboseName "A.L3_and_a_half (call)"} Call$$_module.A.L3__and__a__half(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), previous$Heap), 
    b#0: ref
       where $Is(b#0, Tclass._module.A()) && $IsAlloc(b#0, Tclass._module.A(), current$Heap));
  requires $IsAlloc(a#0, Tclass._module.A(), previous$Heap);
  // user-defined preconditions
  requires {:id "id744"} _module.A.GimmieF(previous$Heap, a#0) == _module.A.GimmieF(previous$Heap, b#0);
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "A.L3_and_a_half (correctness)"} Impl$$_module.A.L3__and__a__half(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), previous$Heap), 
    b#0: ref
       where $Is(b#0, Tclass._module.A()) && $IsAlloc(b#0, Tclass._module.A(), current$Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(a#0, Tclass._module.A(), previous$Heap);
  // user-defined preconditions
  requires {:id "id745"} _module.A.GimmieF(previous$Heap, a#0) == _module.A.GimmieF(previous$Heap, b#0);
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "A.L4 (well-formedness)"} CheckWellFormed$$_module.A.L4(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), current$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.L4 (well-formedness)"} CheckWellFormed$$_module.A.L4(previous$Heap: Heap, current$Heap: Heap, this: ref, a#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: L4, CheckWellFormed$$_module.A.L4
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id746"} $IsAllocBox($Box(a#0), Tclass._module.A(), old($Heap));
    assert {:id "id747"} $IsAlloc(a#0, Tclass._module.A(), old($Heap));
    assume {:id "id748"} (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null ==> $o == a#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
}



procedure {:verboseName "A.L4 (call)"} Call$$_module.A.L4(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), current$Heap));
  // user-defined preconditions
  requires {:id "id749"} $IsAllocBox($Box(a#0), Tclass._module.A(), previous$Heap);
  requires {:id "id750"} (forall $o: ref, $f: Field :: 
    { read(current$Heap, $o, $f) } 
    $o != null
       ==> 
      $o == a#0
       ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f));
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "A.L4 (correctness)"} Impl$$_module.A.L4(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), current$Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  // user-defined preconditions
  requires {:id "id751"} $IsAllocBox($Box(a#0), Tclass._module.A(), previous$Heap);
  requires {:id "id752"} (forall $o: ref, $f: Field :: 
    { read(current$Heap, $o, $f) } 
    $o != null
       ==> 
      $o == a#0
       ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f));
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.L4 (correctness)"} Impl$$_module.A.L4(previous$Heap: Heap, current$Heap: Heap, this: ref, a#0: ref)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: L4, Impl$$_module.A.L4
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(47,5)
    assert {:id "id753"} {:subsumption 0} a#0 != null;
    assert {:id "id754"} {:subsumption 0} a#0 != null;
    assert {:id "id755"} $IsAlloc(a#0, Tclass._module.A(), old($Heap));
    assume true;
    assert {:id "id756"} $Unbox(read($Heap, a#0, _module.A.f)): int
       == $Unbox(read(old($Heap), a#0, _module.A.f)): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(48,5)
    assert {:id "id757"} {:subsumption 0} a#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(a#0), Tclass._module.A?(), $Heap);
    assume _module.A.GimmieF#canCall($Heap, a#0);
    assert {:id "id758"} {:subsumption 0} a#0 != null;
    assert {:id "id759"} $IsAlloc(a#0, Tclass._module.A(), old($Heap));
    assume _module.A.GimmieF#canCall(old($Heap), a#0);
    assume _module.A.GimmieF#canCall($Heap, a#0)
       && _module.A.GimmieF#canCall(old($Heap), a#0);
    assert {:id "id760"} _module.A.GimmieF($Heap, a#0) == _module.A.GimmieF(old($Heap), a#0);
}



procedure {:verboseName "A.M4 (well-formedness)"} CheckWellFormed$$_module.A.M4(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "A.M4 (call)"} Call$$_module.A.M4(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "A.M4 (correctness)"} Impl$$_module.A.M4(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.M4 (correctness)"} Impl$$_module.A.M4(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#a#0: bool;
  var a#0: ref
     where defass#a#0
       ==> $Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), $Heap);
  var $nw: ref;

    // AddMethodImpl: M4, Impl$$_module.A.M4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(54,11)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.A?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    defass#a#0 := true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(55,5)
    if (*)
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(56,7)
        assert {:id "id762"} defass#a#0;
        assert {:id "id763"} {:subsumption 0} a#0 != null;
        assert {:id "id764"} defass#a#0;
        assert {:id "id765"} {:subsumption 0} a#0 != null;
        assert {:id "id766"} $IsAlloc(a#0, Tclass._module.A(), old($Heap));
        assume true;
        assert {:id "id767"} $Unbox(read($Heap, a#0, _module.A.f)): int
           == $Unbox(read(old($Heap), a#0, _module.A.f)): int;
    }
    else
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(58,7)
        assert {:id "id768"} defass#a#0;
        assert {:id "id769"} {:subsumption 0} a#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(a#0), Tclass._module.A?(), $Heap);
        assume _module.A.GimmieF#canCall($Heap, a#0);
        assert {:id "id770"} defass#a#0;
        assert {:id "id771"} {:subsumption 0} a#0 != null;
        assert {:id "id772"} $IsAlloc(a#0, Tclass._module.A(), old($Heap));
        assume _module.A.GimmieF#canCall(old($Heap), a#0);
        assume _module.A.GimmieF#canCall($Heap, a#0)
           && _module.A.GimmieF#canCall(old($Heap), a#0);
        assert {:id "id773"} _module.A.GimmieF($Heap, a#0) == _module.A.GimmieF(old($Heap), a#0);
    }
}



procedure {:verboseName "A.L5 (well-formedness)"} CheckWellFormed$$_module.A.L5(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), current$Heap), 
    b#0: ref
       where $Is(b#0, Tclass._module.A()) && $IsAlloc(b#0, Tclass._module.A(), current$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



procedure {:verboseName "A.L5 (call)"} Call$$_module.A.L5(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), current$Heap), 
    b#0: ref
       where $Is(b#0, Tclass._module.A()) && $IsAlloc(b#0, Tclass._module.A(), current$Heap));
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "A.L5 (correctness)"} Impl$$_module.A.L5(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), current$Heap), 
    b#0: ref
       where $Is(b#0, Tclass._module.A()) && $IsAlloc(b#0, Tclass._module.A(), current$Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "A.L6 (well-formedness)"} CheckWellFormed$$_module.A.L6(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), previous$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(a#0, Tclass._module.A(), previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.L6 (well-formedness)"} CheckWellFormed$$_module.A.L6(previous$Heap: Heap, current$Heap: Heap, this: ref, a#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: L6, CheckWellFormed$$_module.A.L6
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id774"} $IsAlloc(a#0, Tclass._module.A(), old($Heap));
    assume {:id "id775"} (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null ==> $o == a#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
}



procedure {:verboseName "A.L6 (call)"} Call$$_module.A.L6(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), previous$Heap));
  requires $IsAlloc(a#0, Tclass._module.A(), previous$Heap);
  // user-defined preconditions
  requires {:id "id776"} (forall $o: ref, $f: Field :: 
    { read(current$Heap, $o, $f) } 
    $o != null
       ==> 
      $o == a#0
       ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f));
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "A.L6 (correctness)"} Impl$$_module.A.L6(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), previous$Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(a#0, Tclass._module.A(), previous$Heap);
  // user-defined preconditions
  requires {:id "id777"} (forall $o: ref, $f: Field :: 
    { read(current$Heap, $o, $f) } 
    $o != null
       ==> 
      $o == a#0
       ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f));
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.L6 (correctness)"} Impl$$_module.A.L6(previous$Heap: Heap, current$Heap: Heap, this: ref, a#0: ref)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: L6, Impl$$_module.A.L6
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(68,5)
    assert {:id "id778"} {:subsumption 0} a#0 != null;
    assert {:id "id779"} {:subsumption 0} a#0 != null;
    assert {:id "id780"} $IsAlloc(a#0, Tclass._module.A(), old($Heap));
    assume true;
    assert {:id "id781"} $Unbox(read($Heap, a#0, _module.A.f)): int
       == $Unbox(read(old($Heap), a#0, _module.A.f)): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(69,5)
    assert {:id "id782"} {:subsumption 0} a#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(a#0), Tclass._module.A?(), $Heap);
    assume _module.A.GimmieF#canCall($Heap, a#0);
    assert {:id "id783"} {:subsumption 0} a#0 != null;
    assert {:id "id784"} $IsAlloc(a#0, Tclass._module.A(), old($Heap));
    assume _module.A.GimmieF#canCall(old($Heap), a#0);
    assume _module.A.GimmieF#canCall($Heap, a#0)
       && _module.A.GimmieF#canCall(old($Heap), a#0);
    assert {:id "id785"} _module.A.GimmieF($Heap, a#0) == _module.A.GimmieF(old($Heap), a#0);
}



procedure {:verboseName "A.L7 (well-formedness)"} CheckWellFormed$$_module.A.L7(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), previous$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(a#0, Tclass._module.A(), previous$Heap);
  modifies $Heap;



procedure {:verboseName "A.L7 (call)"} Call$$_module.A.L7(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), previous$Heap));
  requires $IsAlloc(a#0, Tclass._module.A(), previous$Heap);
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "A.L7 (correctness)"} Impl$$_module.A.L7(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.A()) && $IsAlloc(a#0, Tclass._module.A(), previous$Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(a#0, Tclass._module.A(), previous$Heap);
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.L7 (correctness)"} Impl$$_module.A.L7(previous$Heap: Heap, current$Heap: Heap, this: ref, a#0: ref)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: L7, Impl$$_module.A.L7
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(74,5)
    assert {:id "id786"} {:subsumption 0} a#0 != null;
    assert {:id "id787"} {:subsumption 0} a#0 != null;
    assert {:id "id788"} $IsAlloc(a#0, Tclass._module.A(), old($Heap));
    assume true;
    assert {:id "id789"} $Unbox(read($Heap, a#0, _module.A.f)): int
       == $Unbox(read(old($Heap), a#0, _module.A.f)): int;
}



// $Is axiom for non-null type _module.A
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.A()) } { $Is(c#0, Tclass._module.A?()) } 
  $Is(c#0, Tclass._module.A()) <==> $Is(c#0, Tclass._module.A?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.A
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.A(), $h) } 
    { $IsAlloc(c#0, Tclass._module.A?(), $h) } 
  $IsAlloc(c#0, Tclass._module.A(), $h)
     <==> $IsAlloc(c#0, Tclass._module.A?(), $h));

const unique class._module.Node?: ClassName;

function Tclass._module.Node?() : Ty
uses {
// Tclass._module.Node? Tag
axiom Tag(Tclass._module.Node?()) == Tagclass._module.Node?
   && TagFamily(Tclass._module.Node?()) == tytagFamily$Node;
}

const unique Tagclass._module.Node?: TyTag;

// Box/unbox axiom for Tclass._module.Node?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Node?()) } 
  $IsBox(bx, Tclass._module.Node?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Node?()));

// $Is axiom for class Node
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Node?()) } 
  $Is($o, Tclass._module.Node?())
     <==> $o == null || dtype($o) == Tclass._module.Node?());

// $IsAlloc axiom for class Node
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Node?(), $h) } 
  $IsAlloc($o, Tclass._module.Node?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Node.x: Field
uses {
axiom FDim(_module.Node.x) == 0
   && FieldOfDecl(class._module.Node?, field$x) == _module.Node.x
   && !$IsGhostField(_module.Node.x);
}

// Node.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Node?()
     ==> $Is($Unbox(read($h, $o, _module.Node.x)): int, TInt));

// Node.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Node.x)): int, TInt, $h));

const _module.Node.next: Field
uses {
axiom FDim(_module.Node.next) == 0
   && FieldOfDecl(class._module.Node?, field$next) == _module.Node.next
   && !$IsGhostField(_module.Node.next);
}

// Node.next: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.next)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Node?()
     ==> $Is($Unbox(read($h, $o, _module.Node.next)): ref, Tclass._module.Node?()));

// Node.next: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.next)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Node.next)): ref, Tclass._module.Node?(), $h));

const _module.Node.Repr: Field
uses {
axiom FDim(_module.Node.Repr) == 0
   && FieldOfDecl(class._module.Node?, field$Repr) == _module.Node.Repr
   && $IsGhostField(_module.Node.Repr);
}

function Tclass._module.Node() : Ty
uses {
// Tclass._module.Node Tag
axiom Tag(Tclass._module.Node()) == Tagclass._module.Node
   && TagFamily(Tclass._module.Node()) == tytagFamily$Node;
}

const unique Tagclass._module.Node: TyTag;

// Box/unbox axiom for Tclass._module.Node
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Node()) } 
  $IsBox(bx, Tclass._module.Node())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Node()));

// Node.Repr: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.Repr)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Node?()
     ==> $Is($Unbox(read($h, $o, _module.Node.Repr)): Set, TSet(Tclass._module.Node())));

// Node.Repr: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.Repr)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Node.Repr)): Set, TSet(Tclass._module.Node()), $h));

// function declaration for _module.Node.Valid
function _module.Node.Valid($ly: LayerType, $heap: Heap, this: ref) : bool
uses {
// consequence axiom for _module.Node.Valid
axiom 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref :: 
    { _module.Node.Valid($ly, $Heap, this) } 
    _module.Node.Valid#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Node())
           && $IsAlloc(this, Tclass._module.Node(), $Heap))
       ==> 
      _module.Node.Valid($ly, $Heap, this)
       ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this)));
// definition axiom for _module.Node.Valid (revealed)
axiom {:id "id790"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref :: 
    { _module.Node.Valid($LS($ly), $Heap, this), $IsGoodHeap($Heap) } 
    _module.Node.Valid#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Node())
           && $IsAlloc(this, Tclass._module.Node(), $Heap))
       ==> (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
           ==> 
          $Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
            read($Heap, this, _module.Node.next))
           ==> 
          Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Node.Repr)): Set)
           ==> 
          !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Box(this))
           ==> _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref))
         && _module.Node.Valid($LS($ly), $Heap, this)
           == (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
             && ($Unbox(read($Heap, this, _module.Node.next)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                  read($Heap, this, _module.Node.next))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.Node.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                  $Box(this))
                 && _module.Node.Valid($ly, $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref))));
}

function _module.Node.Valid#canCall($heap: Heap, this: ref) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.Node.Valid($LS($ly), $Heap, this) } 
  _module.Node.Valid($LS($ly), $Heap, this)
     == _module.Node.Valid($ly, $Heap, this));

// fuel synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.Node.Valid(AsFuelBottom($ly), $Heap, this) } 
  _module.Node.Valid($ly, $Heap, this) == _module.Node.Valid($LZ, $Heap, this));

// frame axiom for _module.Node.Valid
axiom (forall $ly: LayerType, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Node.Valid($ly, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Node())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.Node.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Node.Valid($ly, $h0, this) == _module.Node.Valid($ly, $h1, this));

function _module.Node.Valid#requires(LayerType, Heap, ref) : bool;

// #requires axiom for _module.Node.Valid
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.Node.Valid#requires($ly, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Node())
       && $IsAlloc(this, Tclass._module.Node(), $Heap)
     ==> _module.Node.Valid#requires($ly, $Heap, this) == true);

procedure {:verboseName "Node.Valid (well-formedness)"} CheckWellformed$$_module.Node.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id791"} _module.Node.Valid($LS($LZ), $Heap, this)
     ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Valid (well-formedness)"} CheckWellformed$$_module.Node.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var newtype$check#0: ref;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;
  var b$reqreads#8: bool;
  var b$reqreads#9: bool;
  var b$reqreads#10: bool;
  var b$reqreads#11: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;
    b$reqreads#7 := true;
    b$reqreads#8 := true;
    b$reqreads#9 := true;
    b$reqreads#10 := true;
    b$reqreads#11 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.Node.Repr];
    assert {:id "id792"} b$reqreads#0;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            assert {:id "id793"} this == this
               || (Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))))
                 && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this)))));
            assume this == this || _module.Node.Valid#canCall($Heap, this);
            assume {:id "id794"} _module.Node.Valid($LS($LZ), $Heap, this);
            assume {:id "id795"} Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this));
        }
        else
        {
            assume {:id "id796"} _module.Node.Valid($LS($LZ), $Heap, this)
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this));
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#1 := $_ReadsFrame[this, _module.Node.Repr];
        if (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this)))
        {
            b$reqreads#2 := $_ReadsFrame[this, _module.Node.next];
            newtype$check#0 := null;
            if ($Unbox(read($Heap, this, _module.Node.next)): ref != null)
            {
                b$reqreads#3 := $_ReadsFrame[this, _module.Node.next];
                b$reqreads#4 := $_ReadsFrame[this, _module.Node.Repr];
                if (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                  read($Heap, this, _module.Node.next)))
                {
                    b$reqreads#5 := $_ReadsFrame[this, _module.Node.next];
                    assert {:id "id797"} $Unbox(read($Heap, this, _module.Node.next)): ref != null;
                    b$reqreads#6 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr];
                    b$reqreads#7 := $_ReadsFrame[this, _module.Node.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                    read($Heap, this, _module.Node.next))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Node.Repr)): Set))
                {
                    b$reqreads#8 := $_ReadsFrame[this, _module.Node.next];
                    assert {:id "id798"} $Unbox(read($Heap, this, _module.Node.next)): ref != null;
                    b$reqreads#9 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                    read($Heap, this, _module.Node.next))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Node.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                    $Box(this)))
                {
                    b$reqreads#10 := $_ReadsFrame[this, _module.Node.next];
                    assert {:id "id799"} $Unbox(read($Heap, this, _module.Node.next)): ref != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox(read($Heap, this, _module.Node.next), Tclass._module.Node?(), $Heap);
                    b$reqreads#11 := (forall $o: ref, $f: Field :: 
                      $o != null
                           && $Unbox(read($Heap, $o, alloc)): bool
                           && ($o == $Unbox(read($Heap, this, _module.Node.next)): ref
                             || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                              $Box($o)))
                         ==> $_ReadsFrame[$o, $f]);
                    assert {:id "id800"} Set#Subset(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.next))), 
                        Set#Union($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))))
                       && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                        Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.next))));
                    assume _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref);
                }
            }
        }

        assume {:id "id801"} _module.Node.Valid($LS($LZ), $Heap, this)
           == (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
             && ($Unbox(read($Heap, this, _module.Node.next)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                  read($Heap, this, _module.Node.next))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.Node.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                  $Box(this))
                 && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)));
        assume Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
           ==> 
          $Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
            read($Heap, this, _module.Node.next))
           ==> 
          Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Node.Repr)): Set)
           ==> 
          !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Box(this))
           ==> _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Node.Valid($LS($LZ), $Heap, this), TBool);
        assert {:id "id802"} b$reqreads#1;
        assert {:id "id803"} b$reqreads#2;
        assert {:id "id804"} b$reqreads#3;
        assert {:id "id805"} b$reqreads#4;
        assert {:id "id806"} b$reqreads#5;
        assert {:id "id807"} b$reqreads#6;
        assert {:id "id808"} b$reqreads#7;
        assert {:id "id809"} b$reqreads#8;
        assert {:id "id810"} b$reqreads#9;
        assert {:id "id811"} b$reqreads#10;
        assert {:id "id812"} b$reqreads#11;
        return;

        assume false;
    }
}



procedure {:verboseName "Node._ctor (well-formedness)"} CheckWellFormed$$_module.Node.__ctor(y#0: int) returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Node._ctor (call)"} Call$$_module.Node.__ctor(y#0: int)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall($Heap, this);
  free ensures {:id "id815"} _module.Node.Valid#canCall($Heap, this)
     && 
    _module.Node.Valid($LS($LZ), $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
     && ($Unbox(read($Heap, this, _module.Node.next)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.next))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref));
  ensures {:id "id816"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Node._ctor (correctness)"} Impl$$_module.Node.__ctor(y#0: int) returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall($Heap, this);
  ensures {:id "id817"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this));
  ensures {:id "id818"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.next)));
  ensures {:id "id819"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set));
  ensures {:id "id820"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Box(this)));
  ensures {:id "id821"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref));
  ensures {:id "id822"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node._ctor (correctness)"} Impl$$_module.Node.__ctor(y#0: int) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.x: int;
  var this.next: ref;
  var this.Repr: Set;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0: int;
  var $rhs#1: ref;
  var newtype$check#0: ref;

    // AddMethodImpl: _ctor, Impl$$_module.Node.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(91,3)
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(92,13)
    assume true;
    $obj0 := this;
    assume true;
    $obj1 := this;
    assume true;
    $rhs#0 := y#0;
    newtype$check#0 := null;
    assume true;
    $rhs#1 := null;
    this.x := $rhs#0;
    this.next := $rhs#1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(93,10)
    assume true;
    assume true;
    this.Repr := Set#UnionOne(Set#Empty(): Set, $Box(this));
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(91,3)
    assume this != null && $Is(this, Tclass._module.Node?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.Node.x)): int == this.x;
    assume $Unbox(read($Heap, this, _module.Node.next)): ref == this.next;
    assume $Unbox(read($Heap, this, _module.Node.Repr)): Set == this.Repr;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(91,3)
}



procedure {:verboseName "Node.Prepend (well-formedness)"} CheckWellFormed$$_module.Node.Prepend(y#0: int, 
    nxt#0: ref
       where $Is(nxt#0, Tclass._module.Node())
         && $IsAlloc(nxt#0, Tclass._module.Node(), $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Prepend (well-formedness)"} CheckWellFormed$$_module.Node.Prepend(y#0: int, nxt#0: ref) returns (this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Prepend, CheckWellFormed$$_module.Node.Prepend
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id828"} nxt#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(nxt#0), Tclass._module.Node?(), $Heap);
    assume _module.Node.Valid#canCall($Heap, nxt#0);
    assume {:id "id829"} _module.Node.Valid($LS($LZ), $Heap, nxt#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc this;
    assume this != null
       && 
      $Is(this, Tclass._module.Node())
       && $IsAlloc(this, Tclass._module.Node(), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    assume _module.Node.Valid#canCall($Heap, this);
    assume {:id "id830"} _module.Node.Valid($LS($LZ), $Heap, this);
    assert {:id "id831"} nxt#0 != null;
    assume {:id "id832"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, nxt#0, _module.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, nxt#0, _module.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
}



procedure {:verboseName "Node.Prepend (call)"} Call$$_module.Node.Prepend(y#0: int, 
    nxt#0: ref
       where $Is(nxt#0, Tclass._module.Node())
         && $IsAlloc(nxt#0, Tclass._module.Node(), $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap));
  // user-defined preconditions
  requires {:id "id833"} _module.Node.Valid#canCall($Heap, nxt#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, nxt#0)
       || Set#IsMember($Unbox(read($Heap, nxt#0, _module.Node.Repr)): Set, $Box(nxt#0));
  requires {:id "id834"} _module.Node.Valid#canCall($Heap, nxt#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, nxt#0)
       || ($Unbox(read($Heap, nxt#0, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, nxt#0, _module.Node.Repr)): Set, 
          read($Heap, nxt#0, _module.Node.next)));
  requires {:id "id835"} _module.Node.Valid#canCall($Heap, nxt#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, nxt#0)
       || ($Unbox(read($Heap, nxt#0, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, nxt#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, nxt#0, _module.Node.Repr)): Set));
  requires {:id "id836"} _module.Node.Valid#canCall($Heap, nxt#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, nxt#0)
       || ($Unbox(read($Heap, nxt#0, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, nxt#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Box(nxt#0)));
  requires {:id "id837"} _module.Node.Valid#canCall($Heap, nxt#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, nxt#0)
       || ($Unbox(read($Heap, nxt#0, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, nxt#0, _module.Node.next)): ref));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall($Heap, this);
  free ensures {:id "id838"} _module.Node.Valid#canCall($Heap, this)
     && 
    _module.Node.Valid($LS($LZ), $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
     && ($Unbox(read($Heap, this, _module.Node.next)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.next))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref));
  ensures {:id "id839"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read($Heap, nxt#0, _module.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read($Heap, nxt#0, _module.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Node.Prepend (correctness)"} Impl$$_module.Node.Prepend(y#0: int, 
    nxt#0: ref
       where $Is(nxt#0, Tclass._module.Node())
         && $IsAlloc(nxt#0, Tclass._module.Node(), $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id840"} _module.Node.Valid#canCall($Heap, nxt#0)
     && 
    _module.Node.Valid($LS($LZ), $Heap, nxt#0)
     && 
    Set#IsMember($Unbox(read($Heap, nxt#0, _module.Node.Repr)): Set, $Box(nxt#0))
     && ($Unbox(read($Heap, nxt#0, _module.Node.next)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, nxt#0, _module.Node.Repr)): Set, 
          read($Heap, nxt#0, _module.Node.next))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, nxt#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, nxt#0, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, nxt#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Box(nxt#0))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, nxt#0, _module.Node.next)): ref));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall($Heap, this);
  ensures {:id "id841"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this));
  ensures {:id "id842"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.next)));
  ensures {:id "id843"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set));
  ensures {:id "id844"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Box(this)));
  ensures {:id "id845"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref));
  ensures {:id "id846"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read($Heap, nxt#0, _module.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read($Heap, nxt#0, _module.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Prepend (correctness)"} Impl$$_module.Node.Prepend(y#0: int, nxt#0: ref) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.x: int;
  var this.next: ref;
  var this.Repr: Set;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0: int;
  var $rhs#1: ref;

    // AddMethodImpl: Prepend, Impl$$_module.Node.Prepend
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(98,3)
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(99,13)
    assume true;
    $obj0 := this;
    assume true;
    $obj1 := this;
    assume true;
    $rhs#0 := y#0;
    assume true;
    $rhs#1 := nxt#0;
    this.x := $rhs#0;
    this.next := $rhs#1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(100,10)
    assume true;
    assert {:id "id851"} nxt#0 != null;
    assume true;
    this.Repr := Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(this)), 
      $Unbox(read($Heap, nxt#0, _module.Node.Repr)): Set);
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(98,3)
    assume this != null && $Is(this, Tclass._module.Node?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.Node.x)): int == this.x;
    assume $Unbox(read($Heap, this, _module.Node.next)): ref == this.next;
    assume $Unbox(read($Heap, this, _module.Node.Repr)): Set == this.Repr;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(98,3)
}



// function declaration for _module.Node.Sum
function _module.Node.Sum($ly: LayerType, $heap: Heap, this: ref) : int
uses {
// definition axiom for _module.Node.Sum (revealed)
axiom {:id "id853"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref :: 
    { _module.Node.Sum($LS($ly), $Heap, this), $IsGoodHeap($Heap) } 
    _module.Node.Sum#canCall($Heap, this)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Node())
           && $IsAlloc(this, Tclass._module.Node(), $Heap)
           && _module.Node.Valid($LS($LZ), $Heap, this))
       ==> ($Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> _module.Node.Sum#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref))
         && _module.Node.Sum($LS($ly), $Heap, this)
           == (if $Unbox(read($Heap, this, _module.Node.next)): ref == null
             then $Unbox(read($Heap, this, _module.Node.x)): int
             else $Unbox(read($Heap, this, _module.Node.x)): int
               + _module.Node.Sum($ly, $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)));
}

function _module.Node.Sum#canCall($heap: Heap, this: ref) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.Node.Sum($LS($ly), $Heap, this) } 
  _module.Node.Sum($LS($ly), $Heap, this) == _module.Node.Sum($ly, $Heap, this));

// fuel synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.Node.Sum(AsFuelBottom($ly), $Heap, this) } 
  _module.Node.Sum($ly, $Heap, this) == _module.Node.Sum($LZ, $Heap, this));

// frame axiom for _module.Node.Sum
axiom (forall $ly: LayerType, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Node.Sum($ly, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Node())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && Set#IsMember($Unbox(read($h0, this, _module.Node.Repr)): Set, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Node.Sum($ly, $h0, this) == _module.Node.Sum($ly, $h1, this));

function _module.Node.Sum#requires(LayerType, Heap, ref) : bool;

// #requires axiom for _module.Node.Sum
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.Node.Sum#requires($ly, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Node())
       && $IsAlloc(this, Tclass._module.Node(), $Heap)
     ==> _module.Node.Sum#requires($ly, $Heap, this)
       == _module.Node.Valid($LS($LZ), $Heap, this));

procedure {:verboseName "Node.Sum (well-formedness)"} CheckWellformed$$_module.Node.Sum(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Sum (well-formedness)"} CheckWellformed$$_module.Node.Sum(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var newtype$check#0: ref;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    b$reqreads#0 := (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == this
             || Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o)))
         ==> $_ReadsFrame[$o, $f]);
    assume _module.Node.Valid#canCall($Heap, this);
    assume {:id "id854"} _module.Node.Valid($LS($LZ), $Heap, this);
    assert {:id "id855"} b$reqreads#0;
    // Check well-formedness of the reads clause
    b$reqreads#1 := $_ReadsFrame[this, _module.Node.Repr];
    assert {:id "id856"} b$reqreads#1;
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
        b$reqreads#2 := $_ReadsFrame[this, _module.Node.next];
        newtype$check#0 := null;
        if ($Unbox(read($Heap, this, _module.Node.next)): ref == null)
        {
            b$reqreads#3 := $_ReadsFrame[this, _module.Node.x];
            assume {:id "id857"} _module.Node.Sum($LS($LZ), $Heap, this)
               == $Unbox(read($Heap, this, _module.Node.x)): int;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.Node.Sum($LS($LZ), $Heap, this), TInt);
            assert {:id "id858"} b$reqreads#2;
            assert {:id "id859"} b$reqreads#3;
            return;
        }
        else
        {
            b$reqreads#4 := $_ReadsFrame[this, _module.Node.x];
            b$reqreads#5 := $_ReadsFrame[this, _module.Node.next];
            assert {:id "id860"} $Unbox(read($Heap, this, _module.Node.next)): ref != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox(read($Heap, this, _module.Node.next), Tclass._module.Node?(), $Heap);
            assert {:id "id861"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)
                 || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                  read($Heap, this, _module.Node.next));
            assert {:id "id862"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.next)): ref
                     != null
                   ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                    read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.next)));
            assert {:id "id863"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.next)): ref
                     != null
                   ==> Set#Subset($Unbox(read($Heap, 
                        $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.next)): ref, 
                        _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set));
            assert {:id "id864"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.next)): ref
                     != null
                   ==> !Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.next)): ref, 
                        _module.Node.Repr)): Set, 
                    read($Heap, this, _module.Node.next)));
            assert {:id "id865"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.next)): ref
                     != null
                   ==> _module.Node.Valid($LS($LS($LZ)), 
                    $Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.next)): ref));
            assume _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref);
            b$reqreads#6 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]);
            assert {:id "id866"} Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, this, _module.Node.Repr)): Set)
               && !Set#Subset($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set);
            assume _module.Node.Sum#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref);
            assume {:id "id867"} _module.Node.Sum($LS($LZ), $Heap, this)
               == $Unbox(read($Heap, this, _module.Node.x)): int
                 + _module.Node.Sum($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref);
            assume _module.Node.Sum#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.Node.Sum($LS($LZ), $Heap, this), TInt);
            assert {:id "id868"} b$reqreads#2;
            assert {:id "id869"} b$reqreads#3;
            assert {:id "id870"} b$reqreads#4;
            assert {:id "id871"} b$reqreads#5;
            assert {:id "id872"} b$reqreads#6;
            return;
        }

        assume false;
    }
}



procedure {:verboseName "Node.M (well-formedness)"} CheckWellFormed$$_module.Node.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.Node())
         && $IsAlloc(node#0, Tclass._module.Node(), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Node.M (call)"} Call$$_module.Node.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.Node())
         && $IsAlloc(node#0, Tclass._module.Node(), $Heap));
  // user-defined preconditions
  requires {:id "id875"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this));
  requires {:id "id876"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.next)));
  requires {:id "id877"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set));
  requires {:id "id878"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Box(this)));
  requires {:id "id879"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall($Heap, this);
  free ensures {:id "id880"} _module.Node.Valid#canCall($Heap, this)
     && 
    _module.Node.Valid($LS($LZ), $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
     && ($Unbox(read($Heap, this, _module.Node.next)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.next))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == node#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Node.M (correctness)"} Impl$$_module.Node.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.Node())
         && $IsAlloc(node#0, Tclass._module.Node(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id881"} _module.Node.Valid#canCall($Heap, this)
     && 
    _module.Node.Valid($LS($LZ), $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
     && ($Unbox(read($Heap, this, _module.Node.next)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.next))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall($Heap, this);
  ensures {:id "id882"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this));
  ensures {:id "id883"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.next)));
  ensures {:id "id884"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set));
  ensures {:id "id885"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Box(this)));
  ensures {:id "id886"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == node#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.M (correctness)"} Impl$$_module.Node.M(this: ref, node#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: int;
  var $rhs#0: int;
  var node##0: ref;

    // AddMethodImpl: M, Impl$$_module.Node.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == node#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(115,11)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    assert {:id "id887"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
       ==> _module.Node.Valid($LS($LZ), $Heap, this)
         || Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this));
    assert {:id "id888"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
       ==> _module.Node.Valid($LS($LZ), $Heap, this)
         || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
            read($Heap, this, _module.Node.next)));
    assert {:id "id889"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
       ==> _module.Node.Valid($LS($LZ), $Heap, this)
         || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Node.Repr)): Set));
    assert {:id "id890"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
       ==> _module.Node.Valid($LS($LZ), $Heap, this)
         || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Box(this)));
    assert {:id "id891"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
       ==> _module.Node.Valid($LS($LZ), $Heap, this)
         || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref));
    assume _module.Node.Valid($LS($LZ), $Heap, this);
    assume _module.Node.Sum#canCall($Heap, this);
    assume _module.Node.Sum#canCall($Heap, this);
    s#0 := _module.Node.Sum($LS($LZ), $Heap, this);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(116,12)
    assert {:id "id893"} node#0 != null;
    assume true;
    assert {:id "id894"} $_ModifiesFrame[node#0, _module.Node.x];
    assert {:id "id895"} node#0 != null;
    assume true;
    $rhs#0 := $Unbox(read($Heap, node#0, _module.Node.x)): int + 1;
    $Heap := update($Heap, node#0, _module.Node.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(117,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    node##0 := node#0;
    assert {:id "id898"} $IsAlloc(this, Tclass._module.Node(), old($Heap));
    assert {:id "id899"} $IsAlloc(node#0, Tclass._module.Node(), old($Heap));
    call {:id "id900"} Call$$_module.Node.M__Lemma(old($Heap), $Heap, this, node##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(118,5)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    assert {:id "id901"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
       ==> _module.Node.Valid($LS($LZ), $Heap, this)
         || Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this));
    assert {:id "id902"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
       ==> _module.Node.Valid($LS($LZ), $Heap, this)
         || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
            read($Heap, this, _module.Node.next)));
    assert {:id "id903"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
       ==> _module.Node.Valid($LS($LZ), $Heap, this)
         || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Node.Repr)): Set));
    assert {:id "id904"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
       ==> _module.Node.Valid($LS($LZ), $Heap, this)
         || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Box(this)));
    assert {:id "id905"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
       ==> _module.Node.Valid($LS($LZ), $Heap, this)
         || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref));
    assume _module.Node.Sum#canCall($Heap, this);
    assume _module.Node.Sum#canCall($Heap, this);
    assert {:id "id906"} {:subsumption 0} s#0 <= _module.Node.Sum($LS($LS($LZ)), $Heap, this);
    assume {:id "id907"} s#0 <= _module.Node.Sum($LS($LZ), $Heap, this);
}



procedure {:verboseName "Node.M_Lemma (well-formedness)"} CheckWellFormed$$_module.Node.M__Lemma(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), previous$Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.Node())
         && $IsAlloc(node#0, Tclass._module.Node(), previous$Heap));
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(node#0, Tclass._module.Node(), previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.M_Lemma (well-formedness)"} CheckWellFormed$$_module.Node.M__Lemma(previous$Heap: Heap, current$Heap: Heap, this: ref, node#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $unchanged#x0: ref;


    // AddMethodImpl: M_Lemma, CheckWellFormed$$_module.Node.M__Lemma
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id908"} $IsAlloc(this, Tclass._module.Node(), old($Heap));
    assume _module.Node.Valid#canCall(old($Heap), this);
    assume {:id "id909"} _module.Node.Valid($LS($LZ), old($Heap), this);
    assert {:id "id910"} node#0 != null;
    assert {:id "id911"} $IsAlloc(node#0, Tclass._module.Node(), old($Heap));
    assert {:id "id912"} node#0 != null;
    assume {:id "id913"} $Unbox(read(old($Heap), node#0, _module.Node.x)): int
       <= $Unbox(read($Heap, node#0, _module.Node.x)): int;
    assert {:id "id914"} node#0 != null;
    assert {:id "id915"} $IsAlloc(node#0, Tclass._module.Node(), old($Heap));
    assert {:id "id916"} node#0 != null;
    assert {:id "id917"} $IsAlloc(node#0, Tclass._module.Node(), old($Heap));
    assert {:id "id918"} node#0 != null;
    assert {:id "id919"} node#0 != null;
    assume {:id "id920"} _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(old($Heap), node#0, _module.Node.next), 
        read(old($Heap), node#0, _module.Node.Repr)), 
      #_System._tuple#2._#Make2(read($Heap, node#0, _module.Node.next), read($Heap, node#0, _module.Node.Repr)));
    assert {:id "id921"} $IsAlloc(this, Tclass._module.Node(), old($Heap));
    havoc $unchanged#x0;
    assert {:id "id922"} Set#IsMember(Set#Difference($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(node#0))), 
        $Box($unchanged#x0))
       ==> $IsAlloc($unchanged#x0, Tclass._module.Node(), old($Heap));
    assume {:id "id923"} (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null
         ==> 
        Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box($o))
           && $o != node#0
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    assume _module.Node.Valid#canCall($Heap, this);
    assume {:id "id924"} _module.Node.Valid($LS($LZ), $Heap, this);
    assert {:id "id925"} $IsAlloc(this, Tclass._module.Node(), old($Heap));
    assert {:id "id926"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), this)
       ==> _module.Node.Valid($LS($LZ), old($Heap), this)
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box(this));
    assert {:id "id927"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), this)
       ==> _module.Node.Valid($LS($LZ), old($Heap), this)
         || ($Unbox(read(old($Heap), this, _module.Node.next)): ref != null
           ==> Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, 
            read(old($Heap), this, _module.Node.next)));
    assert {:id "id928"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), this)
       ==> _module.Node.Valid($LS($LZ), old($Heap), this)
         || ($Unbox(read(old($Heap), this, _module.Node.next)): ref != null
           ==> Set#Subset($Unbox(read(old($Heap), 
                $Unbox(read(old($Heap), this, _module.Node.next)): ref, 
                _module.Node.Repr)): Set, 
            $Unbox(read(old($Heap), this, _module.Node.Repr)): Set));
    assert {:id "id929"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), this)
       ==> _module.Node.Valid($LS($LZ), old($Heap), this)
         || ($Unbox(read(old($Heap), this, _module.Node.next)): ref != null
           ==> !Set#IsMember($Unbox(read(old($Heap), 
                $Unbox(read(old($Heap), this, _module.Node.next)): ref, 
                _module.Node.Repr)): Set, 
            $Box(this)));
    assert {:id "id930"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), this)
       ==> _module.Node.Valid($LS($LZ), old($Heap), this)
         || ($Unbox(read(old($Heap), this, _module.Node.next)): ref != null
           ==> _module.Node.Valid($LS($LS($LZ)), 
            old($Heap), 
            $Unbox(read(old($Heap), this, _module.Node.next)): ref));
    assume _module.Node.Valid($LS($LZ), old($Heap), this);
    assume _module.Node.Sum#canCall(old($Heap), this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    assert {:id "id931"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
       ==> _module.Node.Valid($LS($LZ), $Heap, this)
         || Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this));
    assert {:id "id932"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
       ==> _module.Node.Valid($LS($LZ), $Heap, this)
         || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
            read($Heap, this, _module.Node.next)));
    assert {:id "id933"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
       ==> _module.Node.Valid($LS($LZ), $Heap, this)
         || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Node.Repr)): Set));
    assert {:id "id934"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
       ==> _module.Node.Valid($LS($LZ), $Heap, this)
         || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Box(this)));
    assert {:id "id935"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
       ==> _module.Node.Valid($LS($LZ), $Heap, this)
         || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref));
    assume _module.Node.Valid($LS($LZ), $Heap, this);
    assume _module.Node.Sum#canCall($Heap, this);
    assume {:id "id936"} _module.Node.Sum($LS($LZ), old($Heap), this)
       <= _module.Node.Sum($LS($LZ), $Heap, this);
}



procedure {:verboseName "Node.M_Lemma (call)"} Call$$_module.Node.M__Lemma(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), previous$Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.Node())
         && $IsAlloc(node#0, Tclass._module.Node(), previous$Heap));
  requires $IsAlloc(node#0, Tclass._module.Node(), previous$Heap);
  // user-defined preconditions
  requires {:id "id937"} _module.Node.Valid#canCall(previous$Heap, this)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, this)
       || Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, $Box(this));
  requires {:id "id938"} _module.Node.Valid#canCall(previous$Heap, this)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, this)
       || ($Unbox(read(previous$Heap, this, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, 
          read(previous$Heap, this, _module.Node.next)));
  requires {:id "id939"} _module.Node.Valid#canCall(previous$Heap, this)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, this)
       || ($Unbox(read(previous$Heap, this, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(previous$Heap, this, _module.Node.Repr)): Set));
  requires {:id "id940"} _module.Node.Valid#canCall(previous$Heap, this)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, this)
       || ($Unbox(read(previous$Heap, this, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(this)));
  requires {:id "id941"} _module.Node.Valid#canCall(previous$Heap, this)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, this)
       || ($Unbox(read(previous$Heap, this, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), 
          previous$Heap, 
          $Unbox(read(previous$Heap, this, _module.Node.next)): ref));
  requires {:id "id942"} $Unbox(read(previous$Heap, node#0, _module.Node.x)): int
     <= $Unbox(read(current$Heap, node#0, _module.Node.x)): int;
  requires {:id "id943"} _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(previous$Heap, node#0, _module.Node.next), 
      read(previous$Heap, node#0, _module.Node.Repr)), 
    #_System._tuple#2._#Make2(read(current$Heap, node#0, _module.Node.next), 
      read(current$Heap, node#0, _module.Node.Repr)));
  requires {:id "id944"} (forall $o: ref, $f: Field :: 
    { read(current$Heap, $o, $f) } 
    $o != null
       ==> 
      Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, $Box($o))
         && $o != node#0
       ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall(current$Heap, this)
     && (_module.Node.Valid($LS($LZ), current$Heap, this)
       ==> _module.Node.Sum#canCall(previous$Heap, this)
         && _module.Node.Sum#canCall(current$Heap, this));
  free ensures {:id "id945"} _module.Node.Valid#canCall(current$Heap, this)
     && 
    _module.Node.Valid($LS($LZ), current$Heap, this)
     && 
    Set#IsMember($Unbox(read(current$Heap, this, _module.Node.Repr)): Set, $Box(this))
     && ($Unbox(read(current$Heap, this, _module.Node.next)): ref != null
       ==> Set#IsMember($Unbox(read(current$Heap, this, _module.Node.Repr)): Set, 
          read(current$Heap, this, _module.Node.next))
         && Set#Subset($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(current$Heap, this, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), current$Heap, $Unbox(read(current$Heap, this, _module.Node.next)): ref));
  ensures {:id "id946"} _module.Node.Sum($LS($LS($LZ)), previous$Heap, this)
     <= _module.Node.Sum($LS($LS($LZ)), current$Heap, this);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Node.M_Lemma (correctness)"} Impl$$_module.Node.M__Lemma(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), previous$Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.Node())
         && $IsAlloc(node#0, Tclass._module.Node(), previous$Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(node#0, Tclass._module.Node(), previous$Heap);
  // user-defined preconditions
  free requires {:id "id947"} _module.Node.Valid#canCall(previous$Heap, this)
     && 
    _module.Node.Valid($LS($LZ), previous$Heap, this)
     && 
    Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, $Box(this))
     && ($Unbox(read(previous$Heap, this, _module.Node.next)): ref != null
       ==> Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, 
          read(previous$Heap, this, _module.Node.next))
         && Set#Subset($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(previous$Heap, this, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), 
          previous$Heap, 
          $Unbox(read(previous$Heap, this, _module.Node.next)): ref));
  requires {:id "id948"} $Unbox(read(previous$Heap, node#0, _module.Node.x)): int
     <= $Unbox(read(current$Heap, node#0, _module.Node.x)): int;
  requires {:id "id949"} _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(previous$Heap, node#0, _module.Node.next), 
      read(previous$Heap, node#0, _module.Node.Repr)), 
    #_System._tuple#2._#Make2(read(current$Heap, node#0, _module.Node.next), 
      read(current$Heap, node#0, _module.Node.Repr)));
  requires {:id "id950"} (forall $o: ref, $f: Field :: 
    { read(current$Heap, $o, $f) } 
    $o != null
       ==> 
      Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, $Box($o))
         && $o != node#0
       ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall(current$Heap, this)
     && (_module.Node.Valid($LS($LZ), current$Heap, this)
       ==> _module.Node.Sum#canCall(previous$Heap, this)
         && _module.Node.Sum#canCall(current$Heap, this));
  ensures {:id "id951"} _module.Node.Valid#canCall(current$Heap, this)
     ==> _module.Node.Valid($LS($LZ), current$Heap, this)
       || Set#IsMember($Unbox(read(current$Heap, this, _module.Node.Repr)): Set, $Box(this));
  ensures {:id "id952"} _module.Node.Valid#canCall(current$Heap, this)
     ==> _module.Node.Valid($LS($LZ), current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read(current$Heap, this, _module.Node.Repr)): Set, 
          read(current$Heap, this, _module.Node.next)));
  ensures {:id "id953"} _module.Node.Valid#canCall(current$Heap, this)
     ==> _module.Node.Valid($LS($LZ), current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(current$Heap, this, _module.Node.Repr)): Set));
  ensures {:id "id954"} _module.Node.Valid#canCall(current$Heap, this)
     ==> _module.Node.Valid($LS($LZ), current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(this)));
  ensures {:id "id955"} _module.Node.Valid#canCall(current$Heap, this)
     ==> _module.Node.Valid($LS($LZ), current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), 
          current$Heap, 
          $Unbox(read(current$Heap, this, _module.Node.next)): ref));
  ensures {:id "id956"} _module.Node.Sum($LS($LS($LZ)), previous$Heap, this)
     <= _module.Node.Sum($LS($LS($LZ)), current$Heap, this);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.M_Lemma (correctness)"} Impl$$_module.Node.M__Lemma(previous$Heap: Heap, current$Heap: Heap, this: ref, node#0: ref)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var newtype$check#0: ref;
  var node##0_0: ref;

    // AddMethodImpl: M_Lemma, Impl$$_module.Node.M__Lemma
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#this0#0: ref :: 
      { _module.Node.Sum($LS($LZ), $initHeapForallStmt#0, $ih#this0#0) } 
        { _module.Node.Sum($LS($LZ), $Heap, $ih#this0#0) } 
        { $Unbox(read($initHeapForallStmt#0, $ih#this0#0, _module.Node.Repr)): Set } 
        { $Unbox(read($Heap, $ih#this0#0, _module.Node.Repr)): Set } 
        { _module.Node.Valid($LS($LZ), $initHeapForallStmt#0, $ih#this0#0) } 
        { _module.Node.Valid($LS($LZ), $Heap, $ih#this0#0) } 
      $Is($ih#this0#0, Tclass._module.Node())
           && 
          _module.Node.Valid($LS($LZ), old($Heap), $ih#this0#0)
           && 
          $Unbox(read(old($Heap), node#0, _module.Node.x)): int
             <= $Unbox(read($initHeapForallStmt#0, node#0, _module.Node.x)): int
           && _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(old($Heap), node#0, _module.Node.next), 
              read(old($Heap), node#0, _module.Node.Repr)), 
            #_System._tuple#2._#Make2(read($initHeapForallStmt#0, node#0, _module.Node.next), 
              read($initHeapForallStmt#0, node#0, _module.Node.Repr)))
           && (forall $o: ref, $f: Field :: 
            { read($initHeapForallStmt#0, $o, $f) } 
            $o != null
               ==> 
              Set#IsMember($Unbox(read(old($Heap), $ih#this0#0, _module.Node.Repr)): Set, $Box($o))
                 && $o != node#0
               ==> read($initHeapForallStmt#0, $o, $f) == read(old($Heap), $o, $f))
           && 
          Set#Subset($Unbox(read($initHeapForallStmt#0, $ih#this0#0, _module.Node.Repr)): Set, 
            $Unbox(read($initHeapForallStmt#0, this, _module.Node.Repr)): Set)
           && !Set#Subset($Unbox(read($initHeapForallStmt#0, this, _module.Node.Repr)): Set, 
            $Unbox(read($initHeapForallStmt#0, $ih#this0#0, _module.Node.Repr)): Set)
         ==> _module.Node.Valid($LS($LZ), $Heap, $ih#this0#0)
           && _module.Node.Sum($LS($LZ), $initHeapForallStmt#0, $ih#this0#0)
             <= _module.Node.Sum($LS($LZ), $Heap, $ih#this0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(128,5)
    newtype$check#0 := null;
    assume true;
    if ($Unbox(read($Heap, this, _module.Node.next)): ref != null)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(129,19)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id957"} $Unbox(read($Heap, this, _module.Node.next)): ref != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        node##0_0 := node#0;
        assert {:id "id958"} $IsAlloc($Unbox(read($Heap, this, _module.Node.next)): ref, 
          Tclass._module.Node?(), 
          old($Heap));
        assert {:id "id959"} $IsAlloc(node#0, Tclass._module.Node(), old($Heap));
        assert {:id "id960"} Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Unbox(read(old($Heap), this, _module.Node.Repr)): Set)
           && !Set#Subset($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set);
        call {:id "id961"} Call$$_module.Node.M__Lemma(old($Heap), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, node##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



procedure {:verboseName "Node.M_Lemma_Static (well-formedness)"} CheckWellFormed$$_module.Node.M__Lemma__Static(previous$Heap: Heap, 
    current$Heap: Heap, 
    self#0: ref
       where $Is(self#0, Tclass._module.Node())
         && $IsAlloc(self#0, Tclass._module.Node(), previous$Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.Node())
         && $IsAlloc(node#0, Tclass._module.Node(), previous$Heap));
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(self#0, Tclass._module.Node(), previous$Heap);
  requires $IsAlloc(node#0, Tclass._module.Node(), previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.M_Lemma_Static (well-formedness)"} CheckWellFormed$$_module.Node.M__Lemma__Static(previous$Heap: Heap, current$Heap: Heap, self#0: ref, node#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $unchanged#x0: ref;


    // AddMethodImpl: M_Lemma_Static, CheckWellFormed$$_module.Node.M__Lemma__Static
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id962"} self#0 != null;
    assert {:id "id963"} $IsAlloc(self#0, Tclass._module.Node(), old($Heap));
    assume _module.Node.Valid#canCall(old($Heap), self#0);
    assume {:id "id964"} _module.Node.Valid($LS($LZ), old($Heap), self#0);
    assert {:id "id965"} node#0 != null;
    assert {:id "id966"} $IsAlloc(node#0, Tclass._module.Node(), old($Heap));
    assert {:id "id967"} node#0 != null;
    assume {:id "id968"} $Unbox(read(old($Heap), node#0, _module.Node.x)): int
       <= $Unbox(read($Heap, node#0, _module.Node.x)): int;
    assert {:id "id969"} node#0 != null;
    assert {:id "id970"} $IsAlloc(node#0, Tclass._module.Node(), old($Heap));
    assert {:id "id971"} node#0 != null;
    assert {:id "id972"} $IsAlloc(node#0, Tclass._module.Node(), old($Heap));
    assert {:id "id973"} node#0 != null;
    assert {:id "id974"} node#0 != null;
    assume {:id "id975"} _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(old($Heap), node#0, _module.Node.next), 
        read(old($Heap), node#0, _module.Node.Repr)), 
      #_System._tuple#2._#Make2(read($Heap, node#0, _module.Node.next), read($Heap, node#0, _module.Node.Repr)));
    assert {:id "id976"} self#0 != null;
    assert {:id "id977"} $IsAlloc(self#0, Tclass._module.Node(), old($Heap));
    havoc $unchanged#x0;
    assert {:id "id978"} Set#IsMember(Set#Difference($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(node#0))), 
        $Box($unchanged#x0))
       ==> $IsAlloc($unchanged#x0, Tclass._module.Node(), old($Heap));
    assume {:id "id979"} (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null
         ==> 
        Set#IsMember($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, $Box($o))
           && $o != node#0
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
    assert {:id "id980"} self#0 != null;
    assert {:id "id981"} self#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(self#0), Tclass._module.Node?(), $Heap);
    assume _module.Node.Valid#canCall($Heap, self#0);
    assume {:id "id982"} _module.Node.Valid($LS($LZ), $Heap, self#0);
    assert {:id "id983"} self#0 != null;
    assert {:id "id984"} $IsAlloc(self#0, Tclass._module.Node(), old($Heap));
    assert {:id "id985"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), self#0)
       ==> _module.Node.Valid($LS($LZ), old($Heap), self#0)
         || Set#IsMember($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, $Box(self#0));
    assert {:id "id986"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), self#0)
       ==> _module.Node.Valid($LS($LZ), old($Heap), self#0)
         || ($Unbox(read(old($Heap), self#0, _module.Node.next)): ref != null
           ==> Set#IsMember($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, 
            read(old($Heap), self#0, _module.Node.next)));
    assert {:id "id987"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), self#0)
       ==> _module.Node.Valid($LS($LZ), old($Heap), self#0)
         || ($Unbox(read(old($Heap), self#0, _module.Node.next)): ref != null
           ==> Set#Subset($Unbox(read(old($Heap), 
                $Unbox(read(old($Heap), self#0, _module.Node.next)): ref, 
                _module.Node.Repr)): Set, 
            $Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set));
    assert {:id "id988"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), self#0)
       ==> _module.Node.Valid($LS($LZ), old($Heap), self#0)
         || ($Unbox(read(old($Heap), self#0, _module.Node.next)): ref != null
           ==> !Set#IsMember($Unbox(read(old($Heap), 
                $Unbox(read(old($Heap), self#0, _module.Node.next)): ref, 
                _module.Node.Repr)): Set, 
            $Box(self#0)));
    assert {:id "id989"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), self#0)
       ==> _module.Node.Valid($LS($LZ), old($Heap), self#0)
         || ($Unbox(read(old($Heap), self#0, _module.Node.next)): ref != null
           ==> _module.Node.Valid($LS($LS($LZ)), 
            old($Heap), 
            $Unbox(read(old($Heap), self#0, _module.Node.next)): ref));
    assume _module.Node.Valid($LS($LZ), old($Heap), self#0);
    assume _module.Node.Sum#canCall(old($Heap), self#0);
    assert {:id "id990"} self#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(self#0), Tclass._module.Node?(), $Heap);
    assert {:id "id991"} {:subsumption 0} _module.Node.Valid#canCall($Heap, self#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, self#0)
         || Set#IsMember($Unbox(read($Heap, self#0, _module.Node.Repr)): Set, $Box(self#0));
    assert {:id "id992"} {:subsumption 0} _module.Node.Valid#canCall($Heap, self#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, self#0)
         || ($Unbox(read($Heap, self#0, _module.Node.next)): ref != null
           ==> Set#IsMember($Unbox(read($Heap, self#0, _module.Node.Repr)): Set, 
            read($Heap, self#0, _module.Node.next)));
    assert {:id "id993"} {:subsumption 0} _module.Node.Valid#canCall($Heap, self#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, self#0)
         || ($Unbox(read($Heap, self#0, _module.Node.next)): ref != null
           ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, self#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, self#0, _module.Node.Repr)): Set));
    assert {:id "id994"} {:subsumption 0} _module.Node.Valid#canCall($Heap, self#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, self#0)
         || ($Unbox(read($Heap, self#0, _module.Node.next)): ref != null
           ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, self#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Box(self#0)));
    assert {:id "id995"} {:subsumption 0} _module.Node.Valid#canCall($Heap, self#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, self#0)
         || ($Unbox(read($Heap, self#0, _module.Node.next)): ref != null
           ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, self#0, _module.Node.next)): ref));
    assume _module.Node.Valid($LS($LZ), $Heap, self#0);
    assume _module.Node.Sum#canCall($Heap, self#0);
    assume {:id "id996"} _module.Node.Sum($LS($LZ), old($Heap), self#0)
       <= _module.Node.Sum($LS($LZ), $Heap, self#0);
}



procedure {:verboseName "Node.M_Lemma_Static (call)"} Call$$_module.Node.M__Lemma__Static(previous$Heap: Heap, 
    current$Heap: Heap, 
    self#0: ref
       where $Is(self#0, Tclass._module.Node())
         && $IsAlloc(self#0, Tclass._module.Node(), previous$Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.Node())
         && $IsAlloc(node#0, Tclass._module.Node(), previous$Heap));
  requires $IsAlloc(self#0, Tclass._module.Node(), previous$Heap);
  requires $IsAlloc(node#0, Tclass._module.Node(), previous$Heap);
  // user-defined preconditions
  requires {:id "id997"} _module.Node.Valid#canCall(previous$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, self#0)
       || Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, $Box(self#0));
  requires {:id "id998"} _module.Node.Valid#canCall(previous$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, self#0)
       || ($Unbox(read(previous$Heap, self#0, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, 
          read(previous$Heap, self#0, _module.Node.next)));
  requires {:id "id999"} _module.Node.Valid#canCall(previous$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, self#0)
       || ($Unbox(read(previous$Heap, self#0, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set));
  requires {:id "id1000"} _module.Node.Valid#canCall(previous$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, self#0)
       || ($Unbox(read(previous$Heap, self#0, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(self#0)));
  requires {:id "id1001"} _module.Node.Valid#canCall(previous$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, self#0)
       || ($Unbox(read(previous$Heap, self#0, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), 
          previous$Heap, 
          $Unbox(read(previous$Heap, self#0, _module.Node.next)): ref));
  requires {:id "id1002"} $Unbox(read(previous$Heap, node#0, _module.Node.x)): int
     <= $Unbox(read(current$Heap, node#0, _module.Node.x)): int;
  requires {:id "id1003"} _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(previous$Heap, node#0, _module.Node.next), 
      read(previous$Heap, node#0, _module.Node.Repr)), 
    #_System._tuple#2._#Make2(read(current$Heap, node#0, _module.Node.next), 
      read(current$Heap, node#0, _module.Node.Repr)));
  requires {:id "id1004"} (forall $o: ref, $f: Field :: 
    { read(current$Heap, $o, $f) } 
    $o != null
       ==> 
      Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, $Box($o))
         && $o != node#0
       ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall(current$Heap, self#0)
     && (_module.Node.Valid($LS($LZ), current$Heap, self#0)
       ==> _module.Node.Sum#canCall(previous$Heap, self#0)
         && _module.Node.Sum#canCall(current$Heap, self#0));
  free ensures {:id "id1005"} _module.Node.Valid#canCall(current$Heap, self#0)
     && 
    _module.Node.Valid($LS($LZ), current$Heap, self#0)
     && 
    Set#IsMember($Unbox(read(current$Heap, self#0, _module.Node.Repr)): Set, $Box(self#0))
     && ($Unbox(read(current$Heap, self#0, _module.Node.next)): ref != null
       ==> Set#IsMember($Unbox(read(current$Heap, self#0, _module.Node.Repr)): Set, 
          read(current$Heap, self#0, _module.Node.next))
         && Set#Subset($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(current$Heap, self#0, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(self#0))
         && _module.Node.Valid($LS($LZ), 
          current$Heap, 
          $Unbox(read(current$Heap, self#0, _module.Node.next)): ref));
  ensures {:id "id1006"} _module.Node.Sum($LS($LS($LZ)), previous$Heap, self#0)
     <= _module.Node.Sum($LS($LS($LZ)), current$Heap, self#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Node.M_Lemma_Static (correctness)"} Impl$$_module.Node.M__Lemma__Static(previous$Heap: Heap, 
    current$Heap: Heap, 
    self#0: ref
       where $Is(self#0, Tclass._module.Node())
         && $IsAlloc(self#0, Tclass._module.Node(), previous$Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.Node())
         && $IsAlloc(node#0, Tclass._module.Node(), previous$Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(self#0, Tclass._module.Node(), previous$Heap);
  requires $IsAlloc(node#0, Tclass._module.Node(), previous$Heap);
  // user-defined preconditions
  free requires {:id "id1007"} _module.Node.Valid#canCall(previous$Heap, self#0)
     && 
    _module.Node.Valid($LS($LZ), previous$Heap, self#0)
     && 
    Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, $Box(self#0))
     && ($Unbox(read(previous$Heap, self#0, _module.Node.next)): ref != null
       ==> Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, 
          read(previous$Heap, self#0, _module.Node.next))
         && Set#Subset($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(self#0))
         && _module.Node.Valid($LS($LZ), 
          previous$Heap, 
          $Unbox(read(previous$Heap, self#0, _module.Node.next)): ref));
  requires {:id "id1008"} $Unbox(read(previous$Heap, node#0, _module.Node.x)): int
     <= $Unbox(read(current$Heap, node#0, _module.Node.x)): int;
  requires {:id "id1009"} _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(previous$Heap, node#0, _module.Node.next), 
      read(previous$Heap, node#0, _module.Node.Repr)), 
    #_System._tuple#2._#Make2(read(current$Heap, node#0, _module.Node.next), 
      read(current$Heap, node#0, _module.Node.Repr)));
  requires {:id "id1010"} (forall $o: ref, $f: Field :: 
    { read(current$Heap, $o, $f) } 
    $o != null
       ==> 
      Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, $Box($o))
         && $o != node#0
       ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall(current$Heap, self#0)
     && (_module.Node.Valid($LS($LZ), current$Heap, self#0)
       ==> _module.Node.Sum#canCall(previous$Heap, self#0)
         && _module.Node.Sum#canCall(current$Heap, self#0));
  ensures {:id "id1011"} _module.Node.Valid#canCall(current$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), current$Heap, self#0)
       || Set#IsMember($Unbox(read(current$Heap, self#0, _module.Node.Repr)): Set, $Box(self#0));
  ensures {:id "id1012"} _module.Node.Valid#canCall(current$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), current$Heap, self#0)
       || ($Unbox(read(current$Heap, self#0, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read(current$Heap, self#0, _module.Node.Repr)): Set, 
          read(current$Heap, self#0, _module.Node.next)));
  ensures {:id "id1013"} _module.Node.Valid#canCall(current$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), current$Heap, self#0)
       || ($Unbox(read(current$Heap, self#0, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(current$Heap, self#0, _module.Node.Repr)): Set));
  ensures {:id "id1014"} _module.Node.Valid#canCall(current$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), current$Heap, self#0)
       || ($Unbox(read(current$Heap, self#0, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(self#0)));
  ensures {:id "id1015"} _module.Node.Valid#canCall(current$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), current$Heap, self#0)
       || ($Unbox(read(current$Heap, self#0, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), 
          current$Heap, 
          $Unbox(read(current$Heap, self#0, _module.Node.next)): ref));
  ensures {:id "id1016"} _module.Node.Sum($LS($LS($LZ)), previous$Heap, self#0)
     <= _module.Node.Sum($LS($LS($LZ)), current$Heap, self#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.M_Lemma_Static (correctness)"} Impl$$_module.Node.M__Lemma__Static(previous$Heap: Heap, current$Heap: Heap, self#0: ref, node#0: ref)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var newtype$check#0: ref;
  var self##0_0: ref;
  var node##0_0: ref;

    // AddMethodImpl: M_Lemma_Static, Impl$$_module.Node.M__Lemma__Static
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#self0#0: ref :: 
      { _module.Node.Sum($LS($LZ), $initHeapForallStmt#0, $ih#self0#0) } 
        { _module.Node.Sum($LS($LZ), $Heap, $ih#self0#0) } 
        { $Unbox(read($initHeapForallStmt#0, $ih#self0#0, _module.Node.Repr)): Set } 
        { $Unbox(read($Heap, $ih#self0#0, _module.Node.Repr)): Set } 
        { _module.Node.Valid($LS($LZ), $initHeapForallStmt#0, $ih#self0#0) } 
        { _module.Node.Valid($LS($LZ), $Heap, $ih#self0#0) } 
      $Is($ih#self0#0, Tclass._module.Node())
           && 
          _module.Node.Valid($LS($LZ), old($Heap), $ih#self0#0)
           && 
          $Unbox(read(old($Heap), node#0, _module.Node.x)): int
             <= $Unbox(read($initHeapForallStmt#0, node#0, _module.Node.x)): int
           && _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(old($Heap), node#0, _module.Node.next), 
              read(old($Heap), node#0, _module.Node.Repr)), 
            #_System._tuple#2._#Make2(read($initHeapForallStmt#0, node#0, _module.Node.next), 
              read($initHeapForallStmt#0, node#0, _module.Node.Repr)))
           && (forall $o: ref, $f: Field :: 
            { read($initHeapForallStmt#0, $o, $f) } 
            $o != null
               ==> 
              Set#IsMember($Unbox(read(old($Heap), $ih#self0#0, _module.Node.Repr)): Set, $Box($o))
                 && $o != node#0
               ==> read($initHeapForallStmt#0, $o, $f) == read(old($Heap), $o, $f))
           && 
          Set#Subset($Unbox(read($initHeapForallStmt#0, $ih#self0#0, _module.Node.Repr)): Set, 
            $Unbox(read($initHeapForallStmt#0, self#0, _module.Node.Repr)): Set)
           && !Set#Subset($Unbox(read($initHeapForallStmt#0, self#0, _module.Node.Repr)): Set, 
            $Unbox(read($initHeapForallStmt#0, $ih#self0#0, _module.Node.Repr)): Set)
         ==> _module.Node.Valid($LS($LZ), $Heap, $ih#self0#0)
           && _module.Node.Sum($LS($LZ), $initHeapForallStmt#0, $ih#self0#0)
             <= _module.Node.Sum($LS($LZ), $Heap, $ih#self0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(140,5)
    assert {:id "id1017"} self#0 != null;
    newtype$check#0 := null;
    assume true;
    if ($Unbox(read($Heap, self#0, _module.Node.next)): ref != null)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(141,21)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id1018"} self#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id1019"} $Is($Unbox(read($Heap, self#0, _module.Node.next)): ref, Tclass._module.Node());
        self##0_0 := $Unbox(read($Heap, self#0, _module.Node.next)): ref;
        assume true;
        // ProcessCallStmt: CheckSubrange
        node##0_0 := node#0;
        assert {:id "id1020"} $IsAlloc($Unbox(read($Heap, self#0, _module.Node.next)): ref, 
          Tclass._module.Node?(), 
          old($Heap));
        assert {:id "id1021"} $IsAlloc(node#0, Tclass._module.Node(), old($Heap));
        assert {:id "id1022"} Set#Subset($Unbox(read($Heap, self##0_0, _module.Node.Repr)): Set, 
            $Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set)
           && !Set#Subset($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, self##0_0, _module.Node.Repr)): Set);
        call {:id "id1023"} Call$$_module.Node.M__Lemma__Static(old($Heap), $Heap, self##0_0, node##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



procedure {:verboseName "Node.M_Lemma_Forall (well-formedness)"} CheckWellFormed$$_module.Node.M__Lemma__Forall(previous$Heap: Heap, 
    current$Heap: Heap, 
    self#0: ref
       where $Is(self#0, Tclass._module.Node())
         && $IsAlloc(self#0, Tclass._module.Node(), previous$Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.Node())
         && $IsAlloc(node#0, Tclass._module.Node(), previous$Heap));
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(self#0, Tclass._module.Node(), previous$Heap);
  requires $IsAlloc(node#0, Tclass._module.Node(), previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.M_Lemma_Forall (well-formedness)"} CheckWellFormed$$_module.Node.M__Lemma__Forall(previous$Heap: Heap, current$Heap: Heap, self#0: ref, node#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $unchanged#x0: ref;


    // AddMethodImpl: M_Lemma_Forall, CheckWellFormed$$_module.Node.M__Lemma__Forall
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id1024"} self#0 != null;
    assert {:id "id1025"} $IsAlloc(self#0, Tclass._module.Node(), old($Heap));
    assume _module.Node.Valid#canCall(old($Heap), self#0);
    assume {:id "id1026"} _module.Node.Valid($LS($LZ), old($Heap), self#0);
    assert {:id "id1027"} node#0 != null;
    assert {:id "id1028"} $IsAlloc(node#0, Tclass._module.Node(), old($Heap));
    assert {:id "id1029"} node#0 != null;
    assume {:id "id1030"} $Unbox(read(old($Heap), node#0, _module.Node.x)): int
       <= $Unbox(read($Heap, node#0, _module.Node.x)): int;
    assert {:id "id1031"} node#0 != null;
    assert {:id "id1032"} $IsAlloc(node#0, Tclass._module.Node(), old($Heap));
    assert {:id "id1033"} node#0 != null;
    assert {:id "id1034"} $IsAlloc(node#0, Tclass._module.Node(), old($Heap));
    assert {:id "id1035"} node#0 != null;
    assert {:id "id1036"} node#0 != null;
    assume {:id "id1037"} _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(old($Heap), node#0, _module.Node.next), 
        read(old($Heap), node#0, _module.Node.Repr)), 
      #_System._tuple#2._#Make2(read($Heap, node#0, _module.Node.next), read($Heap, node#0, _module.Node.Repr)));
    assert {:id "id1038"} self#0 != null;
    assert {:id "id1039"} $IsAlloc(self#0, Tclass._module.Node(), old($Heap));
    havoc $unchanged#x0;
    assert {:id "id1040"} Set#IsMember(Set#Difference($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(node#0))), 
        $Box($unchanged#x0))
       ==> $IsAlloc($unchanged#x0, Tclass._module.Node(), old($Heap));
    assume {:id "id1041"} (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null
         ==> 
        Set#IsMember($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, $Box($o))
           && $o != node#0
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
    assert {:id "id1042"} self#0 != null;
    assert {:id "id1043"} self#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(self#0), Tclass._module.Node?(), $Heap);
    assume _module.Node.Valid#canCall($Heap, self#0);
    assume {:id "id1044"} _module.Node.Valid($LS($LZ), $Heap, self#0);
    assert {:id "id1045"} self#0 != null;
    assert {:id "id1046"} $IsAlloc(self#0, Tclass._module.Node(), old($Heap));
    assert {:id "id1047"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), self#0)
       ==> _module.Node.Valid($LS($LZ), old($Heap), self#0)
         || Set#IsMember($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, $Box(self#0));
    assert {:id "id1048"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), self#0)
       ==> _module.Node.Valid($LS($LZ), old($Heap), self#0)
         || ($Unbox(read(old($Heap), self#0, _module.Node.next)): ref != null
           ==> Set#IsMember($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, 
            read(old($Heap), self#0, _module.Node.next)));
    assert {:id "id1049"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), self#0)
       ==> _module.Node.Valid($LS($LZ), old($Heap), self#0)
         || ($Unbox(read(old($Heap), self#0, _module.Node.next)): ref != null
           ==> Set#Subset($Unbox(read(old($Heap), 
                $Unbox(read(old($Heap), self#0, _module.Node.next)): ref, 
                _module.Node.Repr)): Set, 
            $Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set));
    assert {:id "id1050"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), self#0)
       ==> _module.Node.Valid($LS($LZ), old($Heap), self#0)
         || ($Unbox(read(old($Heap), self#0, _module.Node.next)): ref != null
           ==> !Set#IsMember($Unbox(read(old($Heap), 
                $Unbox(read(old($Heap), self#0, _module.Node.next)): ref, 
                _module.Node.Repr)): Set, 
            $Box(self#0)));
    assert {:id "id1051"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), self#0)
       ==> _module.Node.Valid($LS($LZ), old($Heap), self#0)
         || ($Unbox(read(old($Heap), self#0, _module.Node.next)): ref != null
           ==> _module.Node.Valid($LS($LS($LZ)), 
            old($Heap), 
            $Unbox(read(old($Heap), self#0, _module.Node.next)): ref));
    assume _module.Node.Valid($LS($LZ), old($Heap), self#0);
    assume _module.Node.Sum#canCall(old($Heap), self#0);
    assert {:id "id1052"} self#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(self#0), Tclass._module.Node?(), $Heap);
    assert {:id "id1053"} {:subsumption 0} _module.Node.Valid#canCall($Heap, self#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, self#0)
         || Set#IsMember($Unbox(read($Heap, self#0, _module.Node.Repr)): Set, $Box(self#0));
    assert {:id "id1054"} {:subsumption 0} _module.Node.Valid#canCall($Heap, self#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, self#0)
         || ($Unbox(read($Heap, self#0, _module.Node.next)): ref != null
           ==> Set#IsMember($Unbox(read($Heap, self#0, _module.Node.Repr)): Set, 
            read($Heap, self#0, _module.Node.next)));
    assert {:id "id1055"} {:subsumption 0} _module.Node.Valid#canCall($Heap, self#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, self#0)
         || ($Unbox(read($Heap, self#0, _module.Node.next)): ref != null
           ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, self#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, self#0, _module.Node.Repr)): Set));
    assert {:id "id1056"} {:subsumption 0} _module.Node.Valid#canCall($Heap, self#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, self#0)
         || ($Unbox(read($Heap, self#0, _module.Node.next)): ref != null
           ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, self#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Box(self#0)));
    assert {:id "id1057"} {:subsumption 0} _module.Node.Valid#canCall($Heap, self#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, self#0)
         || ($Unbox(read($Heap, self#0, _module.Node.next)): ref != null
           ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, self#0, _module.Node.next)): ref));
    assume _module.Node.Valid($LS($LZ), $Heap, self#0);
    assume _module.Node.Sum#canCall($Heap, self#0);
    assume {:id "id1058"} _module.Node.Sum($LS($LZ), old($Heap), self#0)
       <= _module.Node.Sum($LS($LZ), $Heap, self#0);
}



procedure {:verboseName "Node.M_Lemma_Forall (call)"} Call$$_module.Node.M__Lemma__Forall(previous$Heap: Heap, 
    current$Heap: Heap, 
    self#0: ref
       where $Is(self#0, Tclass._module.Node())
         && $IsAlloc(self#0, Tclass._module.Node(), previous$Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.Node())
         && $IsAlloc(node#0, Tclass._module.Node(), previous$Heap));
  requires $IsAlloc(self#0, Tclass._module.Node(), previous$Heap);
  requires $IsAlloc(node#0, Tclass._module.Node(), previous$Heap);
  // user-defined preconditions
  requires {:id "id1059"} _module.Node.Valid#canCall(previous$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, self#0)
       || Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, $Box(self#0));
  requires {:id "id1060"} _module.Node.Valid#canCall(previous$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, self#0)
       || ($Unbox(read(previous$Heap, self#0, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, 
          read(previous$Heap, self#0, _module.Node.next)));
  requires {:id "id1061"} _module.Node.Valid#canCall(previous$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, self#0)
       || ($Unbox(read(previous$Heap, self#0, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set));
  requires {:id "id1062"} _module.Node.Valid#canCall(previous$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, self#0)
       || ($Unbox(read(previous$Heap, self#0, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(self#0)));
  requires {:id "id1063"} _module.Node.Valid#canCall(previous$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, self#0)
       || ($Unbox(read(previous$Heap, self#0, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), 
          previous$Heap, 
          $Unbox(read(previous$Heap, self#0, _module.Node.next)): ref));
  requires {:id "id1064"} $Unbox(read(previous$Heap, node#0, _module.Node.x)): int
     <= $Unbox(read(current$Heap, node#0, _module.Node.x)): int;
  requires {:id "id1065"} _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(previous$Heap, node#0, _module.Node.next), 
      read(previous$Heap, node#0, _module.Node.Repr)), 
    #_System._tuple#2._#Make2(read(current$Heap, node#0, _module.Node.next), 
      read(current$Heap, node#0, _module.Node.Repr)));
  requires {:id "id1066"} (forall $o: ref, $f: Field :: 
    { read(current$Heap, $o, $f) } 
    $o != null
       ==> 
      Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, $Box($o))
         && $o != node#0
       ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall(current$Heap, self#0)
     && (_module.Node.Valid($LS($LZ), current$Heap, self#0)
       ==> _module.Node.Sum#canCall(previous$Heap, self#0)
         && _module.Node.Sum#canCall(current$Heap, self#0));
  free ensures {:id "id1067"} _module.Node.Valid#canCall(current$Heap, self#0)
     && 
    _module.Node.Valid($LS($LZ), current$Heap, self#0)
     && 
    Set#IsMember($Unbox(read(current$Heap, self#0, _module.Node.Repr)): Set, $Box(self#0))
     && ($Unbox(read(current$Heap, self#0, _module.Node.next)): ref != null
       ==> Set#IsMember($Unbox(read(current$Heap, self#0, _module.Node.Repr)): Set, 
          read(current$Heap, self#0, _module.Node.next))
         && Set#Subset($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(current$Heap, self#0, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(self#0))
         && _module.Node.Valid($LS($LZ), 
          current$Heap, 
          $Unbox(read(current$Heap, self#0, _module.Node.next)): ref));
  ensures {:id "id1068"} _module.Node.Sum($LS($LS($LZ)), previous$Heap, self#0)
     <= _module.Node.Sum($LS($LS($LZ)), current$Heap, self#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Node.M_Lemma_Forall (correctness)"} Impl$$_module.Node.M__Lemma__Forall(previous$Heap: Heap, 
    current$Heap: Heap, 
    self#0: ref
       where $Is(self#0, Tclass._module.Node())
         && $IsAlloc(self#0, Tclass._module.Node(), previous$Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.Node())
         && $IsAlloc(node#0, Tclass._module.Node(), previous$Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(self#0, Tclass._module.Node(), previous$Heap);
  requires $IsAlloc(node#0, Tclass._module.Node(), previous$Heap);
  // user-defined preconditions
  free requires {:id "id1069"} _module.Node.Valid#canCall(previous$Heap, self#0)
     && 
    _module.Node.Valid($LS($LZ), previous$Heap, self#0)
     && 
    Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, $Box(self#0))
     && ($Unbox(read(previous$Heap, self#0, _module.Node.next)): ref != null
       ==> Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, 
          read(previous$Heap, self#0, _module.Node.next))
         && Set#Subset($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(self#0))
         && _module.Node.Valid($LS($LZ), 
          previous$Heap, 
          $Unbox(read(previous$Heap, self#0, _module.Node.next)): ref));
  requires {:id "id1070"} $Unbox(read(previous$Heap, node#0, _module.Node.x)): int
     <= $Unbox(read(current$Heap, node#0, _module.Node.x)): int;
  requires {:id "id1071"} _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(previous$Heap, node#0, _module.Node.next), 
      read(previous$Heap, node#0, _module.Node.Repr)), 
    #_System._tuple#2._#Make2(read(current$Heap, node#0, _module.Node.next), 
      read(current$Heap, node#0, _module.Node.Repr)));
  requires {:id "id1072"} (forall $o: ref, $f: Field :: 
    { read(current$Heap, $o, $f) } 
    $o != null
       ==> 
      Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, $Box($o))
         && $o != node#0
       ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall(current$Heap, self#0)
     && (_module.Node.Valid($LS($LZ), current$Heap, self#0)
       ==> _module.Node.Sum#canCall(previous$Heap, self#0)
         && _module.Node.Sum#canCall(current$Heap, self#0));
  ensures {:id "id1073"} _module.Node.Valid#canCall(current$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), current$Heap, self#0)
       || Set#IsMember($Unbox(read(current$Heap, self#0, _module.Node.Repr)): Set, $Box(self#0));
  ensures {:id "id1074"} _module.Node.Valid#canCall(current$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), current$Heap, self#0)
       || ($Unbox(read(current$Heap, self#0, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read(current$Heap, self#0, _module.Node.Repr)): Set, 
          read(current$Heap, self#0, _module.Node.next)));
  ensures {:id "id1075"} _module.Node.Valid#canCall(current$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), current$Heap, self#0)
       || ($Unbox(read(current$Heap, self#0, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(current$Heap, self#0, _module.Node.Repr)): Set));
  ensures {:id "id1076"} _module.Node.Valid#canCall(current$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), current$Heap, self#0)
       || ($Unbox(read(current$Heap, self#0, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(self#0)));
  ensures {:id "id1077"} _module.Node.Valid#canCall(current$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), current$Heap, self#0)
       || ($Unbox(read(current$Heap, self#0, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), 
          current$Heap, 
          $Unbox(read(current$Heap, self#0, _module.Node.next)): ref));
  ensures {:id "id1078"} _module.Node.Sum($LS($LS($LZ)), previous$Heap, self#0)
     <= _module.Node.Sum($LS($LS($LZ)), current$Heap, self#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.M_Lemma_Forall (correctness)"} Impl$$_module.Node.M__Lemma__Forall(previous$Heap: Heap, current$Heap: Heap, self#0: ref, node#0: ref)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var n#0_0: ref;
  var self##0_0: ref;
  var node##0_0: ref;
  var n#0: ref
     where $Is(n#0, Tclass._module.Node?()) && $IsAlloc(n#0, Tclass._module.Node?(), $Heap);
  var newtype$check#0: ref;

    // AddMethodImpl: M_Lemma_Forall, Impl$$_module.Node.M__Lemma__Forall
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#self0#0: ref :: 
      { _module.Node.Sum($LS($LZ), $initHeapForallStmt#0, $ih#self0#0) } 
        { _module.Node.Sum($LS($LZ), $Heap, $ih#self0#0) } 
        { $Unbox(read($initHeapForallStmt#0, $ih#self0#0, _module.Node.Repr)): Set } 
        { $Unbox(read($Heap, $ih#self0#0, _module.Node.Repr)): Set } 
        { _module.Node.Valid($LS($LZ), $initHeapForallStmt#0, $ih#self0#0) } 
        { _module.Node.Valid($LS($LZ), $Heap, $ih#self0#0) } 
      $Is($ih#self0#0, Tclass._module.Node())
           && 
          _module.Node.Valid($LS($LZ), old($Heap), $ih#self0#0)
           && 
          $Unbox(read(old($Heap), node#0, _module.Node.x)): int
             <= $Unbox(read($initHeapForallStmt#0, node#0, _module.Node.x)): int
           && _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(old($Heap), node#0, _module.Node.next), 
              read(old($Heap), node#0, _module.Node.Repr)), 
            #_System._tuple#2._#Make2(read($initHeapForallStmt#0, node#0, _module.Node.next), 
              read($initHeapForallStmt#0, node#0, _module.Node.Repr)))
           && (forall $o: ref, $f: Field :: 
            { read($initHeapForallStmt#0, $o, $f) } 
            $o != null
               ==> 
              Set#IsMember($Unbox(read(old($Heap), $ih#self0#0, _module.Node.Repr)): Set, $Box($o))
                 && $o != node#0
               ==> read($initHeapForallStmt#0, $o, $f) == read(old($Heap), $o, $f))
           && 
          Set#Subset($Unbox(read($initHeapForallStmt#0, $ih#self0#0, _module.Node.Repr)): Set, 
            $Unbox(read($initHeapForallStmt#0, self#0, _module.Node.Repr)): Set)
           && !Set#Subset($Unbox(read($initHeapForallStmt#0, self#0, _module.Node.Repr)): Set, 
            $Unbox(read($initHeapForallStmt#0, $ih#self0#0, _module.Node.Repr)): Set)
         ==> _module.Node.Valid($LS($LZ), $Heap, $ih#self0#0)
           && _module.Node.Sum($LS($LZ), $initHeapForallStmt#0, $ih#self0#0)
             <= _module.Node.Sum($LS($LZ), $Heap, $ih#self0#0));
    $_reverifyPost := false;
    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(152,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc n#0_0;
        assume $Is(n#0_0, Tclass._module.Node());
        if ($IsAllocBox($Box(n#0_0), Tclass._module.Node(), old($Heap)))
        {
            assert {:id "id1079"} {:subsumption 0} n#0_0 != null;
            assert {:id "id1080"} $IsAlloc(n#0_0, Tclass._module.Node(), old($Heap));
            assert {:id "id1081"} {:subsumption 0} self#0 != null;
            assert {:id "id1082"} $IsAlloc(self#0, Tclass._module.Node(), old($Heap));
            if (Set#Subset($Unbox(read(old($Heap), n#0_0, _module.Node.Repr)): Set, 
                $Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set)
               && !Set#Subset($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, 
                $Unbox(read(old($Heap), n#0_0, _module.Node.Repr)): Set))
            {
                assert {:id "id1083"} {:subsumption 0} n#0_0 != null;
                assert {:id "id1084"} $IsAlloc(n#0_0, Tclass._module.Node(), old($Heap));
                assume _module.Node.Valid#canCall(old($Heap), n#0_0);
            }
        }

        assume $IsAllocBox($Box(n#0_0), Tclass._module.Node(), old($Heap))
           ==> 
          Set#Subset($Unbox(read(old($Heap), n#0_0, _module.Node.Repr)): Set, 
              $Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set)
             && !Set#Subset($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, 
              $Unbox(read(old($Heap), n#0_0, _module.Node.Repr)): Set)
           ==> _module.Node.Valid#canCall(old($Heap), n#0_0);
        assume {:id "id1085"} $IsAllocBox($Box(n#0_0), Tclass._module.Node(), old($Heap))
           && 
          Set#Subset($Unbox(read(old($Heap), n#0_0, _module.Node.Repr)): Set, 
            $Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set)
           && !Set#Subset($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, 
            $Unbox(read(old($Heap), n#0_0, _module.Node.Repr)): Set)
           && _module.Node.Valid($LS($LZ), old($Heap), n#0_0);
        if (*)
        {
            assert {:id "id1086"} {:subsumption 0} n#0_0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(n#0_0), Tclass._module.Node?(), $Heap);
            assume _module.Node.Valid#canCall($Heap, n#0_0);
            if (_module.Node.Valid($LS($LZ), $Heap, n#0_0))
            {
                assert {:id "id1087"} {:subsumption 0} n#0_0 != null;
                assert {:id "id1088"} $IsAlloc(n#0_0, Tclass._module.Node(), old($Heap));
                assert {:id "id1089"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), n#0_0)
                   ==> _module.Node.Valid($LS($LZ), old($Heap), n#0_0)
                     || Set#IsMember($Unbox(read(old($Heap), n#0_0, _module.Node.Repr)): Set, $Box(n#0_0));
                assert {:id "id1090"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), n#0_0)
                   ==> _module.Node.Valid($LS($LZ), old($Heap), n#0_0)
                     || ($Unbox(read(old($Heap), n#0_0, _module.Node.next)): ref != null
                       ==> Set#IsMember($Unbox(read(old($Heap), n#0_0, _module.Node.Repr)): Set, 
                        read(old($Heap), n#0_0, _module.Node.next)));
                assert {:id "id1091"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), n#0_0)
                   ==> _module.Node.Valid($LS($LZ), old($Heap), n#0_0)
                     || ($Unbox(read(old($Heap), n#0_0, _module.Node.next)): ref != null
                       ==> Set#Subset($Unbox(read(old($Heap), 
                            $Unbox(read(old($Heap), n#0_0, _module.Node.next)): ref, 
                            _module.Node.Repr)): Set, 
                        $Unbox(read(old($Heap), n#0_0, _module.Node.Repr)): Set));
                assert {:id "id1092"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), n#0_0)
                   ==> _module.Node.Valid($LS($LZ), old($Heap), n#0_0)
                     || ($Unbox(read(old($Heap), n#0_0, _module.Node.next)): ref != null
                       ==> !Set#IsMember($Unbox(read(old($Heap), 
                            $Unbox(read(old($Heap), n#0_0, _module.Node.next)): ref, 
                            _module.Node.Repr)): Set, 
                        $Box(n#0_0)));
                assert {:id "id1093"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), n#0_0)
                   ==> _module.Node.Valid($LS($LZ), old($Heap), n#0_0)
                     || ($Unbox(read(old($Heap), n#0_0, _module.Node.next)): ref != null
                       ==> _module.Node.Valid($LS($LS($LZ)), 
                        old($Heap), 
                        $Unbox(read(old($Heap), n#0_0, _module.Node.next)): ref));
                assume _module.Node.Sum#canCall(old($Heap), n#0_0);
                assert {:id "id1094"} {:subsumption 0} n#0_0 != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(n#0_0), Tclass._module.Node?(), $Heap);
                assert {:id "id1095"} {:subsumption 0} _module.Node.Valid#canCall($Heap, n#0_0)
                   ==> _module.Node.Valid($LS($LZ), $Heap, n#0_0)
                     || Set#IsMember($Unbox(read($Heap, n#0_0, _module.Node.Repr)): Set, $Box(n#0_0));
                assert {:id "id1096"} {:subsumption 0} _module.Node.Valid#canCall($Heap, n#0_0)
                   ==> _module.Node.Valid($LS($LZ), $Heap, n#0_0)
                     || ($Unbox(read($Heap, n#0_0, _module.Node.next)): ref != null
                       ==> Set#IsMember($Unbox(read($Heap, n#0_0, _module.Node.Repr)): Set, 
                        read($Heap, n#0_0, _module.Node.next)));
                assert {:id "id1097"} {:subsumption 0} _module.Node.Valid#canCall($Heap, n#0_0)
                   ==> _module.Node.Valid($LS($LZ), $Heap, n#0_0)
                     || ($Unbox(read($Heap, n#0_0, _module.Node.next)): ref != null
                       ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, n#0_0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                        $Unbox(read($Heap, n#0_0, _module.Node.Repr)): Set));
                assert {:id "id1098"} {:subsumption 0} _module.Node.Valid#canCall($Heap, n#0_0)
                   ==> _module.Node.Valid($LS($LZ), $Heap, n#0_0)
                     || ($Unbox(read($Heap, n#0_0, _module.Node.next)): ref != null
                       ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, n#0_0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                        $Box(n#0_0)));
                assert {:id "id1099"} {:subsumption 0} _module.Node.Valid#canCall($Heap, n#0_0)
                   ==> _module.Node.Valid($LS($LZ), $Heap, n#0_0)
                     || ($Unbox(read($Heap, n#0_0, _module.Node.next)): ref != null
                       ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, n#0_0, _module.Node.next)): ref));
                assume _module.Node.Sum#canCall($Heap, n#0_0);
            }

            assume _module.Node.Valid#canCall($Heap, n#0_0)
               && (_module.Node.Valid($LS($LZ), $Heap, n#0_0)
                 ==> _module.Node.Sum#canCall(old($Heap), n#0_0)
                   && _module.Node.Sum#canCall($Heap, n#0_0));
            assume {:id "id1100"} _module.Node.Valid($LS($LZ), $Heap, n#0_0)
               && _module.Node.Sum($LS($LZ), old($Heap), n#0_0)
                 <= _module.Node.Sum($LS($LZ), $Heap, n#0_0);
            assume false;
        }

        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(155,21)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        self##0_0 := n#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        node##0_0 := node#0;
        assert {:id "id1101"} $IsAlloc(n#0_0, Tclass._module.Node(), old($Heap));
        assert {:id "id1102"} $IsAlloc(node#0, Tclass._module.Node(), old($Heap));
        assert {:id "id1103"} Set#Subset($Unbox(read($Heap, self##0_0, _module.Node.Repr)): Set, 
            $Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set)
           && !Set#Subset($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, self##0_0, _module.Node.Repr)): Set);
        call {:id "id1104"} Call$$_module.Node.M__Lemma__Forall(old($Heap), $Heap, self##0_0, node##0_0);
        // TrCallStmt: After ProcessCallStmt
        pop;
        assert {:id "id1105"} _module.Node.Valid#canCall($Heap, n#0_0)
           ==> _module.Node.Valid($LS($LZ), $Heap, n#0_0)
             || Set#IsMember($Unbox(read($Heap, n#0_0, _module.Node.Repr)): Set, $Box(n#0_0));
        assert {:id "id1106"} _module.Node.Valid#canCall($Heap, n#0_0)
           ==> _module.Node.Valid($LS($LZ), $Heap, n#0_0)
             || ($Unbox(read($Heap, n#0_0, _module.Node.next)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, n#0_0, _module.Node.Repr)): Set, 
                read($Heap, n#0_0, _module.Node.next)));
        assert {:id "id1107"} _module.Node.Valid#canCall($Heap, n#0_0)
           ==> _module.Node.Valid($LS($LZ), $Heap, n#0_0)
             || ($Unbox(read($Heap, n#0_0, _module.Node.next)): ref != null
               ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, n#0_0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, n#0_0, _module.Node.Repr)): Set));
        assert {:id "id1108"} _module.Node.Valid#canCall($Heap, n#0_0)
           ==> _module.Node.Valid($LS($LZ), $Heap, n#0_0)
             || ($Unbox(read($Heap, n#0_0, _module.Node.next)): ref != null
               ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, n#0_0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                $Box(n#0_0)));
        assert {:id "id1109"} _module.Node.Valid#canCall($Heap, n#0_0)
           ==> _module.Node.Valid($LS($LZ), $Heap, n#0_0)
             || ($Unbox(read($Heap, n#0_0, _module.Node.next)): ref != null
               ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, n#0_0, _module.Node.next)): ref));
        assert {:id "id1110"} _module.Node.Sum($LS($LS($LZ)), old($Heap), n#0_0)
           <= _module.Node.Sum($LS($LS($LZ)), $Heap, n#0_0);
        assume false;
    }
    else
    {
        assume (forall n#0_1: ref :: 
          { _module.Node.Sum($LS($LZ), $Heap, n#0_1) } 
            { _module.Node.Sum($LS($LZ), old($Heap), n#0_1) } 
            { _module.Node.Valid($LS($LZ), $Heap, n#0_1) } 
            { _module.Node.Valid($LS($LZ), old($Heap), n#0_1) } 
            { $Unbox(read(old($Heap), n#0_1, _module.Node.Repr)): Set } 
          $Is(n#0_1, Tclass._module.Node())
               && 
              $IsAllocBox($Box(n#0_1), Tclass._module.Node(), old($Heap))
               && 
              Set#Subset($Unbox(read(old($Heap), n#0_1, _module.Node.Repr)): Set, 
                $Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set)
               && !Set#Subset($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, 
                $Unbox(read(old($Heap), n#0_1, _module.Node.Repr)): Set)
               && _module.Node.Valid($LS($LZ), old($Heap), n#0_1)
             ==> _module.Node.Valid($LS($LZ), $Heap, n#0_1)
               && _module.Node.Sum($LS($LZ), old($Heap), n#0_1)
                 <= _module.Node.Sum($LS($LZ), $Heap, n#0_1));
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(157,11)
    assume true;
    assert {:id "id1111"} self#0 != null;
    assume true;
    n#0 := $Unbox(read($Heap, self#0, _module.Node.next)): ref;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(158,5)
    newtype$check#0 := null;
    assume true;
    if (n#0 != null)
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(159,7)
        if ($IsAllocBox($Box(n#0), Tclass._module.Node?(), old($Heap)))
        {
            assert {:id "id1113"} {:subsumption 0} n#0 != null;
            assert {:id "id1114"} $IsAlloc(n#0, Tclass._module.Node?(), old($Heap));
            assert {:id "id1115"} {:subsumption 0} self#0 != null;
            assert {:id "id1116"} $IsAlloc(self#0, Tclass._module.Node(), old($Heap));
            if (Set#Subset($Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set, 
                $Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set)
               && !Set#Subset($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, 
                $Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set))
            {
                assert {:id "id1117"} {:subsumption 0} n#0 != null;
                assert {:id "id1118"} $IsAlloc(n#0, Tclass._module.Node?(), old($Heap));
                assume _module.Node.Valid#canCall(old($Heap), n#0);
            }
        }

        assume $IsAllocBox($Box(n#0), Tclass._module.Node?(), old($Heap))
           ==> 
          Set#Subset($Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set, 
              $Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set)
             && !Set#Subset($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, 
              $Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set)
           ==> _module.Node.Valid#canCall(old($Heap), n#0);
        assert {:id "id1119"} {:subsumption 0} $IsAllocBox($Box(n#0), Tclass._module.Node?(), old($Heap));
        assert {:id "id1120"} {:subsumption 0} Set#Subset($Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set, 
            $Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set)
           && !Set#Subset($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, 
            $Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set);
        assert {:id "id1121"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), n#0)
           ==> _module.Node.Valid($LS($LZ), old($Heap), n#0)
             || Set#IsMember($Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set, $Box(n#0));
        assert {:id "id1122"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), n#0)
           ==> _module.Node.Valid($LS($LZ), old($Heap), n#0)
             || ($Unbox(read(old($Heap), n#0, _module.Node.next)): ref != null
               ==> Set#IsMember($Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set, 
                read(old($Heap), n#0, _module.Node.next)));
        assert {:id "id1123"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), n#0)
           ==> _module.Node.Valid($LS($LZ), old($Heap), n#0)
             || ($Unbox(read(old($Heap), n#0, _module.Node.next)): ref != null
               ==> Set#Subset($Unbox(read(old($Heap), 
                    $Unbox(read(old($Heap), n#0, _module.Node.next)): ref, 
                    _module.Node.Repr)): Set, 
                $Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set));
        assert {:id "id1124"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), n#0)
           ==> _module.Node.Valid($LS($LZ), old($Heap), n#0)
             || ($Unbox(read(old($Heap), n#0, _module.Node.next)): ref != null
               ==> !Set#IsMember($Unbox(read(old($Heap), 
                    $Unbox(read(old($Heap), n#0, _module.Node.next)): ref, 
                    _module.Node.Repr)): Set, 
                $Box(n#0)));
        assert {:id "id1125"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), n#0)
           ==> _module.Node.Valid($LS($LZ), old($Heap), n#0)
             || ($Unbox(read(old($Heap), n#0, _module.Node.next)): ref != null
               ==> _module.Node.Valid($LS($LS($LZ)), old($Heap), $Unbox(read(old($Heap), n#0, _module.Node.next)): ref));
        assume {:id "id1126"} $IsAllocBox($Box(n#0), Tclass._module.Node?(), old($Heap))
           && 
          Set#Subset($Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set, 
            $Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set)
           && !Set#Subset($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, 
            $Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set)
           && _module.Node.Valid($LS($LZ), old($Heap), n#0);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(160,7)
        assert {:id "id1127"} {:subsumption 0} n#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(n#0), Tclass._module.Node?(), $Heap);
        assume _module.Node.Valid#canCall($Heap, n#0);
        if (_module.Node.Valid($LS($LZ), $Heap, n#0))
        {
            assert {:id "id1128"} {:subsumption 0} n#0 != null;
            assert {:id "id1129"} $IsAlloc(n#0, Tclass._module.Node?(), old($Heap));
            assert {:id "id1130"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), n#0)
               ==> _module.Node.Valid($LS($LZ), old($Heap), n#0)
                 || Set#IsMember($Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set, $Box(n#0));
            assert {:id "id1131"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), n#0)
               ==> _module.Node.Valid($LS($LZ), old($Heap), n#0)
                 || ($Unbox(read(old($Heap), n#0, _module.Node.next)): ref != null
                   ==> Set#IsMember($Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set, 
                    read(old($Heap), n#0, _module.Node.next)));
            assert {:id "id1132"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), n#0)
               ==> _module.Node.Valid($LS($LZ), old($Heap), n#0)
                 || ($Unbox(read(old($Heap), n#0, _module.Node.next)): ref != null
                   ==> Set#Subset($Unbox(read(old($Heap), 
                        $Unbox(read(old($Heap), n#0, _module.Node.next)): ref, 
                        _module.Node.Repr)): Set, 
                    $Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set));
            assert {:id "id1133"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), n#0)
               ==> _module.Node.Valid($LS($LZ), old($Heap), n#0)
                 || ($Unbox(read(old($Heap), n#0, _module.Node.next)): ref != null
                   ==> !Set#IsMember($Unbox(read(old($Heap), 
                        $Unbox(read(old($Heap), n#0, _module.Node.next)): ref, 
                        _module.Node.Repr)): Set, 
                    $Box(n#0)));
            assert {:id "id1134"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), n#0)
               ==> _module.Node.Valid($LS($LZ), old($Heap), n#0)
                 || ($Unbox(read(old($Heap), n#0, _module.Node.next)): ref != null
                   ==> _module.Node.Valid($LS($LS($LZ)), old($Heap), $Unbox(read(old($Heap), n#0, _module.Node.next)): ref));
            assume _module.Node.Sum#canCall(old($Heap), n#0);
            assert {:id "id1135"} {:subsumption 0} n#0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(n#0), Tclass._module.Node?(), $Heap);
            assert {:id "id1136"} {:subsumption 0} _module.Node.Valid#canCall($Heap, n#0)
               ==> _module.Node.Valid($LS($LZ), $Heap, n#0)
                 || Set#IsMember($Unbox(read($Heap, n#0, _module.Node.Repr)): Set, $Box(n#0));
            assert {:id "id1137"} {:subsumption 0} _module.Node.Valid#canCall($Heap, n#0)
               ==> _module.Node.Valid($LS($LZ), $Heap, n#0)
                 || ($Unbox(read($Heap, n#0, _module.Node.next)): ref != null
                   ==> Set#IsMember($Unbox(read($Heap, n#0, _module.Node.Repr)): Set, 
                    read($Heap, n#0, _module.Node.next)));
            assert {:id "id1138"} {:subsumption 0} _module.Node.Valid#canCall($Heap, n#0)
               ==> _module.Node.Valid($LS($LZ), $Heap, n#0)
                 || ($Unbox(read($Heap, n#0, _module.Node.next)): ref != null
                   ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, n#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, n#0, _module.Node.Repr)): Set));
            assert {:id "id1139"} {:subsumption 0} _module.Node.Valid#canCall($Heap, n#0)
               ==> _module.Node.Valid($LS($LZ), $Heap, n#0)
                 || ($Unbox(read($Heap, n#0, _module.Node.next)): ref != null
                   ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, n#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                    $Box(n#0)));
            assert {:id "id1140"} {:subsumption 0} _module.Node.Valid#canCall($Heap, n#0)
               ==> _module.Node.Valid($LS($LZ), $Heap, n#0)
                 || ($Unbox(read($Heap, n#0, _module.Node.next)): ref != null
                   ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, n#0, _module.Node.next)): ref));
            assume _module.Node.Sum#canCall($Heap, n#0);
        }

        assume _module.Node.Valid#canCall($Heap, n#0)
           && (_module.Node.Valid($LS($LZ), $Heap, n#0)
             ==> _module.Node.Sum#canCall(old($Heap), n#0)
               && _module.Node.Sum#canCall($Heap, n#0));
        assert {:id "id1141"} {:subsumption 0} _module.Node.Valid#canCall($Heap, n#0)
           ==> _module.Node.Valid($LS($LZ), $Heap, n#0)
             || Set#IsMember($Unbox(read($Heap, n#0, _module.Node.Repr)): Set, $Box(n#0));
        assert {:id "id1142"} {:subsumption 0} _module.Node.Valid#canCall($Heap, n#0)
           ==> _module.Node.Valid($LS($LZ), $Heap, n#0)
             || ($Unbox(read($Heap, n#0, _module.Node.next)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, n#0, _module.Node.Repr)): Set, 
                read($Heap, n#0, _module.Node.next)));
        assert {:id "id1143"} {:subsumption 0} _module.Node.Valid#canCall($Heap, n#0)
           ==> _module.Node.Valid($LS($LZ), $Heap, n#0)
             || ($Unbox(read($Heap, n#0, _module.Node.next)): ref != null
               ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, n#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, n#0, _module.Node.Repr)): Set));
        assert {:id "id1144"} {:subsumption 0} _module.Node.Valid#canCall($Heap, n#0)
           ==> _module.Node.Valid($LS($LZ), $Heap, n#0)
             || ($Unbox(read($Heap, n#0, _module.Node.next)): ref != null
               ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, n#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                $Box(n#0)));
        assert {:id "id1145"} {:subsumption 0} _module.Node.Valid#canCall($Heap, n#0)
           ==> _module.Node.Valid($LS($LZ), $Heap, n#0)
             || ($Unbox(read($Heap, n#0, _module.Node.next)): ref != null
               ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, n#0, _module.Node.next)): ref));
        assert {:id "id1146"} {:subsumption 0} _module.Node.Sum($LS($LS($LZ)), old($Heap), n#0)
           <= _module.Node.Sum($LS($LS($LZ)), $Heap, n#0);
        assume {:id "id1147"} _module.Node.Valid($LS($LZ), $Heap, n#0)
           && _module.Node.Sum($LS($LZ), old($Heap), n#0)
             <= _module.Node.Sum($LS($LZ), $Heap, n#0);
    }
    else
    {
    }
}



procedure {:verboseName "Node.M_Lemma_Alt (well-formedness)"} CheckWellFormed$$_module.Node.M__Lemma__Alt(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), previous$Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.Node())
         && $IsAlloc(node#0, Tclass._module.Node(), previous$Heap));
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(node#0, Tclass._module.Node(), previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.M_Lemma_Alt (well-formedness)"} CheckWellFormed$$_module.Node.M__Lemma__Alt(previous$Heap: Heap, current$Heap: Heap, this: ref, node#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: ref;


    // AddMethodImpl: M_Lemma_Alt, CheckWellFormed$$_module.Node.M__Lemma__Alt
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id1148"} $IsAlloc(this, Tclass._module.Node(), old($Heap));
    assume _module.Node.Valid#canCall(old($Heap), this);
    assume {:id "id1149"} _module.Node.Valid($LS($LZ), old($Heap), this);
    assert {:id "id1150"} node#0 != null;
    assert {:id "id1151"} $IsAlloc(node#0, Tclass._module.Node(), old($Heap));
    assert {:id "id1152"} node#0 != null;
    assume {:id "id1153"} $Unbox(read(old($Heap), node#0, _module.Node.x)): int
       <= $Unbox(read($Heap, node#0, _module.Node.x)): int;
    assert {:id "id1154"} node#0 != null;
    assert {:id "id1155"} $IsAlloc(node#0, Tclass._module.Node(), old($Heap));
    assert {:id "id1156"} node#0 != null;
    assert {:id "id1157"} $IsAlloc(node#0, Tclass._module.Node(), old($Heap));
    assert {:id "id1158"} node#0 != null;
    assert {:id "id1159"} node#0 != null;
    assume {:id "id1160"} _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(old($Heap), node#0, _module.Node.next), 
        read(old($Heap), node#0, _module.Node.Repr)), 
      #_System._tuple#2._#Make2(read($Heap, node#0, _module.Node.next), read($Heap, node#0, _module.Node.Repr)));
    havoc n#0;
    assume $Is(n#0, Tclass._module.Node()) && $IsAlloc(n#0, Tclass._module.Node(), $Heap);
    if (*)
    {
        assert {:id "id1161"} $IsAlloc(this, Tclass._module.Node(), old($Heap));
        assume {:id "id1162"} Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box(n#0));
        assume {:id "id1163"} n#0 != node#0;
        assert {:id "id1164"} n#0 != null;
        assert {:id "id1165"} n#0 != null;
        assert {:id "id1166"} $IsAlloc(n#0, Tclass._module.Node(), old($Heap));
        assume {:id "id1167"} $Unbox(read($Heap, n#0, _module.Node.x)): int
           == $Unbox(read(old($Heap), n#0, _module.Node.x)): int;
        assert {:id "id1168"} n#0 != null;
        assert {:id "id1169"} n#0 != null;
        assert {:id "id1170"} $IsAlloc(n#0, Tclass._module.Node(), old($Heap));
        assume {:id "id1171"} $Unbox(read($Heap, n#0, _module.Node.next)): ref
           == $Unbox(read(old($Heap), n#0, _module.Node.next)): ref;
        assert {:id "id1172"} n#0 != null;
        assert {:id "id1173"} n#0 != null;
        assert {:id "id1174"} $IsAlloc(n#0, Tclass._module.Node(), old($Heap));
        assume {:id "id1175"} Set#Equal($Unbox(read($Heap, n#0, _module.Node.Repr)): Set, 
          $Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set);
    }
    else
    {
        assume {:id "id1176"} Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box(n#0))
             && n#0 != node#0
           ==> $Unbox(read($Heap, n#0, _module.Node.x)): int
               == $Unbox(read(old($Heap), n#0, _module.Node.x)): int
             && $Unbox(read($Heap, n#0, _module.Node.next)): ref
               == $Unbox(read(old($Heap), n#0, _module.Node.next)): ref
             && Set#Equal($Unbox(read($Heap, n#0, _module.Node.Repr)): Set, 
              $Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set);
    }

    assume {:id "id1177"} (forall n#1: ref :: 
      { $Unbox(read(old($Heap), n#1, _module.Node.Repr)): Set } 
        { $Unbox(read($Heap, n#1, _module.Node.Repr)): Set } 
        { $Unbox(read(old($Heap), n#1, _module.Node.next)): ref } 
        { $Unbox(read($Heap, n#1, _module.Node.next)): ref } 
        { $Unbox(read(old($Heap), n#1, _module.Node.x)): int } 
        { $Unbox(read($Heap, n#1, _module.Node.x)): int } 
        { Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box(n#1)) } 
      $Is(n#1, Tclass._module.Node())
         ==> (Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box(n#1))
               && n#1 != node#0
             ==> $Unbox(read($Heap, n#1, _module.Node.x)): int
               == $Unbox(read(old($Heap), n#1, _module.Node.x)): int)
           && (Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box(n#1))
               && n#1 != node#0
             ==> $Unbox(read($Heap, n#1, _module.Node.next)): ref
               == $Unbox(read(old($Heap), n#1, _module.Node.next)): ref)
           && (Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box(n#1))
               && n#1 != node#0
             ==> Set#Equal($Unbox(read($Heap, n#1, _module.Node.Repr)): Set, 
              $Unbox(read(old($Heap), n#1, _module.Node.Repr)): Set)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    assume _module.Node.Valid#canCall($Heap, this);
    assume {:id "id1178"} _module.Node.Valid($LS($LZ), $Heap, this);
    assert {:id "id1179"} $IsAlloc(this, Tclass._module.Node(), old($Heap));
    assert {:id "id1180"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), this)
       ==> _module.Node.Valid($LS($LZ), old($Heap), this)
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box(this));
    assert {:id "id1181"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), this)
       ==> _module.Node.Valid($LS($LZ), old($Heap), this)
         || ($Unbox(read(old($Heap), this, _module.Node.next)): ref != null
           ==> Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, 
            read(old($Heap), this, _module.Node.next)));
    assert {:id "id1182"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), this)
       ==> _module.Node.Valid($LS($LZ), old($Heap), this)
         || ($Unbox(read(old($Heap), this, _module.Node.next)): ref != null
           ==> Set#Subset($Unbox(read(old($Heap), 
                $Unbox(read(old($Heap), this, _module.Node.next)): ref, 
                _module.Node.Repr)): Set, 
            $Unbox(read(old($Heap), this, _module.Node.Repr)): Set));
    assert {:id "id1183"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), this)
       ==> _module.Node.Valid($LS($LZ), old($Heap), this)
         || ($Unbox(read(old($Heap), this, _module.Node.next)): ref != null
           ==> !Set#IsMember($Unbox(read(old($Heap), 
                $Unbox(read(old($Heap), this, _module.Node.next)): ref, 
                _module.Node.Repr)): Set, 
            $Box(this)));
    assert {:id "id1184"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), this)
       ==> _module.Node.Valid($LS($LZ), old($Heap), this)
         || ($Unbox(read(old($Heap), this, _module.Node.next)): ref != null
           ==> _module.Node.Valid($LS($LS($LZ)), 
            old($Heap), 
            $Unbox(read(old($Heap), this, _module.Node.next)): ref));
    assume _module.Node.Valid($LS($LZ), old($Heap), this);
    assume _module.Node.Sum#canCall(old($Heap), this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    assert {:id "id1185"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
       ==> _module.Node.Valid($LS($LZ), $Heap, this)
         || Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this));
    assert {:id "id1186"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
       ==> _module.Node.Valid($LS($LZ), $Heap, this)
         || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
            read($Heap, this, _module.Node.next)));
    assert {:id "id1187"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
       ==> _module.Node.Valid($LS($LZ), $Heap, this)
         || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Node.Repr)): Set));
    assert {:id "id1188"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
       ==> _module.Node.Valid($LS($LZ), $Heap, this)
         || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Box(this)));
    assert {:id "id1189"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
       ==> _module.Node.Valid($LS($LZ), $Heap, this)
         || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref));
    assume _module.Node.Valid($LS($LZ), $Heap, this);
    assume _module.Node.Sum#canCall($Heap, this);
    assume {:id "id1190"} _module.Node.Sum($LS($LZ), old($Heap), this)
       <= _module.Node.Sum($LS($LZ), $Heap, this);
}



procedure {:verboseName "Node.M_Lemma_Alt (call)"} Call$$_module.Node.M__Lemma__Alt(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), previous$Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.Node())
         && $IsAlloc(node#0, Tclass._module.Node(), previous$Heap));
  requires $IsAlloc(node#0, Tclass._module.Node(), previous$Heap);
  // user-defined preconditions
  requires {:id "id1191"} _module.Node.Valid#canCall(previous$Heap, this)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, this)
       || Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, $Box(this));
  requires {:id "id1192"} _module.Node.Valid#canCall(previous$Heap, this)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, this)
       || ($Unbox(read(previous$Heap, this, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, 
          read(previous$Heap, this, _module.Node.next)));
  requires {:id "id1193"} _module.Node.Valid#canCall(previous$Heap, this)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, this)
       || ($Unbox(read(previous$Heap, this, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(previous$Heap, this, _module.Node.Repr)): Set));
  requires {:id "id1194"} _module.Node.Valid#canCall(previous$Heap, this)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, this)
       || ($Unbox(read(previous$Heap, this, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(this)));
  requires {:id "id1195"} _module.Node.Valid#canCall(previous$Heap, this)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, this)
       || ($Unbox(read(previous$Heap, this, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), 
          previous$Heap, 
          $Unbox(read(previous$Heap, this, _module.Node.next)): ref));
  requires {:id "id1196"} $Unbox(read(previous$Heap, node#0, _module.Node.x)): int
     <= $Unbox(read(current$Heap, node#0, _module.Node.x)): int;
  requires {:id "id1197"} _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(previous$Heap, node#0, _module.Node.next), 
      read(previous$Heap, node#0, _module.Node.Repr)), 
    #_System._tuple#2._#Make2(read(current$Heap, node#0, _module.Node.next), 
      read(current$Heap, node#0, _module.Node.Repr)));
  requires {:id "id1198"} (forall n#1: ref :: 
    { $Unbox(read(previous$Heap, n#1, _module.Node.Repr)): Set } 
      { $Unbox(read(current$Heap, n#1, _module.Node.Repr)): Set } 
      { $Unbox(read(previous$Heap, n#1, _module.Node.next)): ref } 
      { $Unbox(read(current$Heap, n#1, _module.Node.next)): ref } 
      { $Unbox(read(previous$Heap, n#1, _module.Node.x)): int } 
      { $Unbox(read(current$Heap, n#1, _module.Node.x)): int } 
      { Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, $Box(n#1)) } 
    $Is(n#1, Tclass._module.Node())
       ==> (Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, $Box(n#1))
             && n#1 != node#0
           ==> $Unbox(read(current$Heap, n#1, _module.Node.x)): int
             == $Unbox(read(previous$Heap, n#1, _module.Node.x)): int)
         && (Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, $Box(n#1))
             && n#1 != node#0
           ==> $Unbox(read(current$Heap, n#1, _module.Node.next)): ref
             == $Unbox(read(previous$Heap, n#1, _module.Node.next)): ref)
         && (Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, $Box(n#1))
             && n#1 != node#0
           ==> Set#Equal($Unbox(read(current$Heap, n#1, _module.Node.Repr)): Set, 
            $Unbox(read(previous$Heap, n#1, _module.Node.Repr)): Set)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall(current$Heap, this)
     && (_module.Node.Valid($LS($LZ), current$Heap, this)
       ==> _module.Node.Sum#canCall(previous$Heap, this)
         && _module.Node.Sum#canCall(current$Heap, this));
  free ensures {:id "id1199"} _module.Node.Valid#canCall(current$Heap, this)
     && 
    _module.Node.Valid($LS($LZ), current$Heap, this)
     && 
    Set#IsMember($Unbox(read(current$Heap, this, _module.Node.Repr)): Set, $Box(this))
     && ($Unbox(read(current$Heap, this, _module.Node.next)): ref != null
       ==> Set#IsMember($Unbox(read(current$Heap, this, _module.Node.Repr)): Set, 
          read(current$Heap, this, _module.Node.next))
         && Set#Subset($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(current$Heap, this, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), current$Heap, $Unbox(read(current$Heap, this, _module.Node.next)): ref));
  ensures {:id "id1200"} _module.Node.Sum($LS($LS($LZ)), previous$Heap, this)
     <= _module.Node.Sum($LS($LS($LZ)), current$Heap, this);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Node.M_Lemma_Alt (correctness)"} Impl$$_module.Node.M__Lemma__Alt(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), previous$Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.Node())
         && $IsAlloc(node#0, Tclass._module.Node(), previous$Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(node#0, Tclass._module.Node(), previous$Heap);
  // user-defined preconditions
  free requires {:id "id1201"} _module.Node.Valid#canCall(previous$Heap, this)
     && 
    _module.Node.Valid($LS($LZ), previous$Heap, this)
     && 
    Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, $Box(this))
     && ($Unbox(read(previous$Heap, this, _module.Node.next)): ref != null
       ==> Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, 
          read(previous$Heap, this, _module.Node.next))
         && Set#Subset($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(previous$Heap, this, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), 
          previous$Heap, 
          $Unbox(read(previous$Heap, this, _module.Node.next)): ref));
  requires {:id "id1202"} $Unbox(read(previous$Heap, node#0, _module.Node.x)): int
     <= $Unbox(read(current$Heap, node#0, _module.Node.x)): int;
  requires {:id "id1203"} _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(previous$Heap, node#0, _module.Node.next), 
      read(previous$Heap, node#0, _module.Node.Repr)), 
    #_System._tuple#2._#Make2(read(current$Heap, node#0, _module.Node.next), 
      read(current$Heap, node#0, _module.Node.Repr)));
  requires {:id "id1204"} (forall n#1: ref :: 
    { $Unbox(read(previous$Heap, n#1, _module.Node.Repr)): Set } 
      { $Unbox(read(current$Heap, n#1, _module.Node.Repr)): Set } 
      { $Unbox(read(previous$Heap, n#1, _module.Node.next)): ref } 
      { $Unbox(read(current$Heap, n#1, _module.Node.next)): ref } 
      { $Unbox(read(previous$Heap, n#1, _module.Node.x)): int } 
      { $Unbox(read(current$Heap, n#1, _module.Node.x)): int } 
      { Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, $Box(n#1)) } 
    $Is(n#1, Tclass._module.Node())
       ==> (Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, $Box(n#1))
             && n#1 != node#0
           ==> $Unbox(read(current$Heap, n#1, _module.Node.x)): int
             == $Unbox(read(previous$Heap, n#1, _module.Node.x)): int)
         && (Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, $Box(n#1))
             && n#1 != node#0
           ==> $Unbox(read(current$Heap, n#1, _module.Node.next)): ref
             == $Unbox(read(previous$Heap, n#1, _module.Node.next)): ref)
         && (Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, $Box(n#1))
             && n#1 != node#0
           ==> Set#Equal($Unbox(read(current$Heap, n#1, _module.Node.Repr)): Set, 
            $Unbox(read(previous$Heap, n#1, _module.Node.Repr)): Set)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall(current$Heap, this)
     && (_module.Node.Valid($LS($LZ), current$Heap, this)
       ==> _module.Node.Sum#canCall(previous$Heap, this)
         && _module.Node.Sum#canCall(current$Heap, this));
  ensures {:id "id1205"} _module.Node.Valid#canCall(current$Heap, this)
     ==> _module.Node.Valid($LS($LZ), current$Heap, this)
       || Set#IsMember($Unbox(read(current$Heap, this, _module.Node.Repr)): Set, $Box(this));
  ensures {:id "id1206"} _module.Node.Valid#canCall(current$Heap, this)
     ==> _module.Node.Valid($LS($LZ), current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read(current$Heap, this, _module.Node.Repr)): Set, 
          read(current$Heap, this, _module.Node.next)));
  ensures {:id "id1207"} _module.Node.Valid#canCall(current$Heap, this)
     ==> _module.Node.Valid($LS($LZ), current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(current$Heap, this, _module.Node.Repr)): Set));
  ensures {:id "id1208"} _module.Node.Valid#canCall(current$Heap, this)
     ==> _module.Node.Valid($LS($LZ), current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(this)));
  ensures {:id "id1209"} _module.Node.Valid#canCall(current$Heap, this)
     ==> _module.Node.Valid($LS($LZ), current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), 
          current$Heap, 
          $Unbox(read(current$Heap, this, _module.Node.next)): ref));
  ensures {:id "id1210"} _module.Node.Sum($LS($LS($LZ)), previous$Heap, this)
     <= _module.Node.Sum($LS($LS($LZ)), current$Heap, this);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.M_Lemma_Alt (correctness)"} Impl$$_module.Node.M__Lemma__Alt(previous$Heap: Heap, current$Heap: Heap, this: ref, node#0: ref)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var newtype$check#0: ref;
  var node##0_0: ref;

    // AddMethodImpl: M_Lemma_Alt, Impl$$_module.Node.M__Lemma__Alt
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#this0#0: ref :: 
      { _module.Node.Sum($LS($LZ), $initHeapForallStmt#0, $ih#this0#0) } 
        { _module.Node.Sum($LS($LZ), $Heap, $ih#this0#0) } 
        { $Unbox(read($initHeapForallStmt#0, $ih#this0#0, _module.Node.Repr)): Set } 
        { $Unbox(read($Heap, $ih#this0#0, _module.Node.Repr)): Set } 
        { _module.Node.Valid($LS($LZ), $initHeapForallStmt#0, $ih#this0#0) } 
        { _module.Node.Valid($LS($LZ), $Heap, $ih#this0#0) } 
      $Is($ih#this0#0, Tclass._module.Node())
           && 
          _module.Node.Valid($LS($LZ), old($Heap), $ih#this0#0)
           && 
          $Unbox(read(old($Heap), node#0, _module.Node.x)): int
             <= $Unbox(read($initHeapForallStmt#0, node#0, _module.Node.x)): int
           && _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(old($Heap), node#0, _module.Node.next), 
              read(old($Heap), node#0, _module.Node.Repr)), 
            #_System._tuple#2._#Make2(read($initHeapForallStmt#0, node#0, _module.Node.next), 
              read($initHeapForallStmt#0, node#0, _module.Node.Repr)))
           && (forall n#2: ref :: 
            { $Unbox(read(old($Heap), n#2, _module.Node.Repr)): Set } 
              { $Unbox(read($initHeapForallStmt#0, n#2, _module.Node.Repr)): Set } 
              { $Unbox(read(old($Heap), n#2, _module.Node.next)): ref } 
              { $Unbox(read($initHeapForallStmt#0, n#2, _module.Node.next)): ref } 
              { $Unbox(read(old($Heap), n#2, _module.Node.x)): int } 
              { $Unbox(read($initHeapForallStmt#0, n#2, _module.Node.x)): int } 
              { Set#IsMember($Unbox(read(old($Heap), $ih#this0#0, _module.Node.Repr)): Set, $Box(n#2)) } 
            $Is(n#2, Tclass._module.Node())
               ==> (Set#IsMember($Unbox(read(old($Heap), $ih#this0#0, _module.Node.Repr)): Set, $Box(n#2))
                     && n#2 != node#0
                   ==> $Unbox(read($initHeapForallStmt#0, n#2, _module.Node.x)): int
                     == $Unbox(read(old($Heap), n#2, _module.Node.x)): int)
                 && (Set#IsMember($Unbox(read(old($Heap), $ih#this0#0, _module.Node.Repr)): Set, $Box(n#2))
                     && n#2 != node#0
                   ==> $Unbox(read($initHeapForallStmt#0, n#2, _module.Node.next)): ref
                     == $Unbox(read(old($Heap), n#2, _module.Node.next)): ref)
                 && (Set#IsMember($Unbox(read(old($Heap), $ih#this0#0, _module.Node.Repr)): Set, $Box(n#2))
                     && n#2 != node#0
                   ==> Set#Equal($Unbox(read($initHeapForallStmt#0, n#2, _module.Node.Repr)): Set, 
                    $Unbox(read(old($Heap), n#2, _module.Node.Repr)): Set)))
           && 
          Set#Subset($Unbox(read($initHeapForallStmt#0, $ih#this0#0, _module.Node.Repr)): Set, 
            $Unbox(read($initHeapForallStmt#0, this, _module.Node.Repr)): Set)
           && !Set#Subset($Unbox(read($initHeapForallStmt#0, this, _module.Node.Repr)): Set, 
            $Unbox(read($initHeapForallStmt#0, $ih#this0#0, _module.Node.Repr)): Set)
         ==> _module.Node.Valid($LS($LZ), $Heap, $ih#this0#0)
           && _module.Node.Sum($LS($LZ), $initHeapForallStmt#0, $ih#this0#0)
             <= _module.Node.Sum($LS($LZ), $Heap, $ih#this0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(171,5)
    newtype$check#0 := null;
    assume true;
    if ($Unbox(read($Heap, this, _module.Node.next)): ref != null)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(172,23)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id1211"} $Unbox(read($Heap, this, _module.Node.next)): ref != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        node##0_0 := node#0;
        assert {:id "id1212"} $IsAlloc($Unbox(read($Heap, this, _module.Node.next)): ref, 
          Tclass._module.Node?(), 
          old($Heap));
        assert {:id "id1213"} $IsAlloc(node#0, Tclass._module.Node(), old($Heap));
        assert {:id "id1214"} Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Unbox(read(old($Heap), this, _module.Node.Repr)): Set)
           && !Set#Subset($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set);
        call {:id "id1215"} Call$$_module.Node.M__Lemma__Alt(old($Heap), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, node##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



procedure {:verboseName "Node.M_Lemma_Alt_Static (well-formedness)"} CheckWellFormed$$_module.Node.M__Lemma__Alt__Static(previous$Heap: Heap, 
    current$Heap: Heap, 
    self#0: ref
       where $Is(self#0, Tclass._module.Node())
         && $IsAlloc(self#0, Tclass._module.Node(), previous$Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.Node())
         && $IsAlloc(node#0, Tclass._module.Node(), previous$Heap));
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(self#0, Tclass._module.Node(), previous$Heap);
  requires $IsAlloc(node#0, Tclass._module.Node(), previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.M_Lemma_Alt_Static (well-formedness)"} CheckWellFormed$$_module.Node.M__Lemma__Alt__Static(previous$Heap: Heap, current$Heap: Heap, self#0: ref, node#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: ref;


    // AddMethodImpl: M_Lemma_Alt_Static, CheckWellFormed$$_module.Node.M__Lemma__Alt__Static
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id1216"} self#0 != null;
    assert {:id "id1217"} $IsAlloc(self#0, Tclass._module.Node(), old($Heap));
    assume _module.Node.Valid#canCall(old($Heap), self#0);
    assume {:id "id1218"} _module.Node.Valid($LS($LZ), old($Heap), self#0);
    assert {:id "id1219"} node#0 != null;
    assert {:id "id1220"} $IsAlloc(node#0, Tclass._module.Node(), old($Heap));
    assert {:id "id1221"} node#0 != null;
    assume {:id "id1222"} $Unbox(read(old($Heap), node#0, _module.Node.x)): int
       <= $Unbox(read($Heap, node#0, _module.Node.x)): int;
    assert {:id "id1223"} node#0 != null;
    assert {:id "id1224"} $IsAlloc(node#0, Tclass._module.Node(), old($Heap));
    assert {:id "id1225"} node#0 != null;
    assert {:id "id1226"} $IsAlloc(node#0, Tclass._module.Node(), old($Heap));
    assert {:id "id1227"} node#0 != null;
    assert {:id "id1228"} node#0 != null;
    assume {:id "id1229"} _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(old($Heap), node#0, _module.Node.next), 
        read(old($Heap), node#0, _module.Node.Repr)), 
      #_System._tuple#2._#Make2(read($Heap, node#0, _module.Node.next), read($Heap, node#0, _module.Node.Repr)));
    havoc n#0;
    assume $Is(n#0, Tclass._module.Node()) && $IsAlloc(n#0, Tclass._module.Node(), $Heap);
    if (*)
    {
        assert {:id "id1230"} self#0 != null;
        assert {:id "id1231"} $IsAlloc(self#0, Tclass._module.Node(), old($Heap));
        assume {:id "id1232"} Set#IsMember($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, $Box(n#0));
        assume {:id "id1233"} n#0 != node#0;
        assert {:id "id1234"} n#0 != null;
        assert {:id "id1235"} n#0 != null;
        assert {:id "id1236"} $IsAlloc(n#0, Tclass._module.Node(), old($Heap));
        assume {:id "id1237"} $Unbox(read($Heap, n#0, _module.Node.x)): int
           == $Unbox(read(old($Heap), n#0, _module.Node.x)): int;
        assert {:id "id1238"} n#0 != null;
        assert {:id "id1239"} n#0 != null;
        assert {:id "id1240"} $IsAlloc(n#0, Tclass._module.Node(), old($Heap));
        assume {:id "id1241"} $Unbox(read($Heap, n#0, _module.Node.next)): ref
           == $Unbox(read(old($Heap), n#0, _module.Node.next)): ref;
        assert {:id "id1242"} n#0 != null;
        assert {:id "id1243"} n#0 != null;
        assert {:id "id1244"} $IsAlloc(n#0, Tclass._module.Node(), old($Heap));
        assume {:id "id1245"} Set#Equal($Unbox(read($Heap, n#0, _module.Node.Repr)): Set, 
          $Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set);
    }
    else
    {
        assume {:id "id1246"} Set#IsMember($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, $Box(n#0))
             && n#0 != node#0
           ==> $Unbox(read($Heap, n#0, _module.Node.x)): int
               == $Unbox(read(old($Heap), n#0, _module.Node.x)): int
             && $Unbox(read($Heap, n#0, _module.Node.next)): ref
               == $Unbox(read(old($Heap), n#0, _module.Node.next)): ref
             && Set#Equal($Unbox(read($Heap, n#0, _module.Node.Repr)): Set, 
              $Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set);
    }

    assume {:id "id1247"} (forall n#1: ref :: 
      { $Unbox(read(old($Heap), n#1, _module.Node.Repr)): Set } 
        { $Unbox(read($Heap, n#1, _module.Node.Repr)): Set } 
        { $Unbox(read(old($Heap), n#1, _module.Node.next)): ref } 
        { $Unbox(read($Heap, n#1, _module.Node.next)): ref } 
        { $Unbox(read(old($Heap), n#1, _module.Node.x)): int } 
        { $Unbox(read($Heap, n#1, _module.Node.x)): int } 
        { Set#IsMember($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, $Box(n#1)) } 
      $Is(n#1, Tclass._module.Node())
         ==> (Set#IsMember($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, $Box(n#1))
               && n#1 != node#0
             ==> $Unbox(read($Heap, n#1, _module.Node.x)): int
               == $Unbox(read(old($Heap), n#1, _module.Node.x)): int)
           && (Set#IsMember($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, $Box(n#1))
               && n#1 != node#0
             ==> $Unbox(read($Heap, n#1, _module.Node.next)): ref
               == $Unbox(read(old($Heap), n#1, _module.Node.next)): ref)
           && (Set#IsMember($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, $Box(n#1))
               && n#1 != node#0
             ==> Set#Equal($Unbox(read($Heap, n#1, _module.Node.Repr)): Set, 
              $Unbox(read(old($Heap), n#1, _module.Node.Repr)): Set)));
    assert {:id "id1248"} self#0 != null;
    assert {:id "id1249"} self#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(self#0), Tclass._module.Node?(), $Heap);
    assume _module.Node.Valid#canCall($Heap, self#0);
    assume {:id "id1250"} _module.Node.Valid($LS($LZ), $Heap, self#0);
    assert {:id "id1251"} self#0 != null;
    assert {:id "id1252"} $IsAlloc(self#0, Tclass._module.Node(), old($Heap));
    assert {:id "id1253"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), self#0)
       ==> _module.Node.Valid($LS($LZ), old($Heap), self#0)
         || Set#IsMember($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, $Box(self#0));
    assert {:id "id1254"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), self#0)
       ==> _module.Node.Valid($LS($LZ), old($Heap), self#0)
         || ($Unbox(read(old($Heap), self#0, _module.Node.next)): ref != null
           ==> Set#IsMember($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, 
            read(old($Heap), self#0, _module.Node.next)));
    assert {:id "id1255"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), self#0)
       ==> _module.Node.Valid($LS($LZ), old($Heap), self#0)
         || ($Unbox(read(old($Heap), self#0, _module.Node.next)): ref != null
           ==> Set#Subset($Unbox(read(old($Heap), 
                $Unbox(read(old($Heap), self#0, _module.Node.next)): ref, 
                _module.Node.Repr)): Set, 
            $Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set));
    assert {:id "id1256"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), self#0)
       ==> _module.Node.Valid($LS($LZ), old($Heap), self#0)
         || ($Unbox(read(old($Heap), self#0, _module.Node.next)): ref != null
           ==> !Set#IsMember($Unbox(read(old($Heap), 
                $Unbox(read(old($Heap), self#0, _module.Node.next)): ref, 
                _module.Node.Repr)): Set, 
            $Box(self#0)));
    assert {:id "id1257"} {:subsumption 0} _module.Node.Valid#canCall(old($Heap), self#0)
       ==> _module.Node.Valid($LS($LZ), old($Heap), self#0)
         || ($Unbox(read(old($Heap), self#0, _module.Node.next)): ref != null
           ==> _module.Node.Valid($LS($LS($LZ)), 
            old($Heap), 
            $Unbox(read(old($Heap), self#0, _module.Node.next)): ref));
    assume _module.Node.Valid($LS($LZ), old($Heap), self#0);
    assume _module.Node.Sum#canCall(old($Heap), self#0);
    assert {:id "id1258"} self#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(self#0), Tclass._module.Node?(), $Heap);
    assert {:id "id1259"} {:subsumption 0} _module.Node.Valid#canCall($Heap, self#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, self#0)
         || Set#IsMember($Unbox(read($Heap, self#0, _module.Node.Repr)): Set, $Box(self#0));
    assert {:id "id1260"} {:subsumption 0} _module.Node.Valid#canCall($Heap, self#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, self#0)
         || ($Unbox(read($Heap, self#0, _module.Node.next)): ref != null
           ==> Set#IsMember($Unbox(read($Heap, self#0, _module.Node.Repr)): Set, 
            read($Heap, self#0, _module.Node.next)));
    assert {:id "id1261"} {:subsumption 0} _module.Node.Valid#canCall($Heap, self#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, self#0)
         || ($Unbox(read($Heap, self#0, _module.Node.next)): ref != null
           ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, self#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, self#0, _module.Node.Repr)): Set));
    assert {:id "id1262"} {:subsumption 0} _module.Node.Valid#canCall($Heap, self#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, self#0)
         || ($Unbox(read($Heap, self#0, _module.Node.next)): ref != null
           ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, self#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Box(self#0)));
    assert {:id "id1263"} {:subsumption 0} _module.Node.Valid#canCall($Heap, self#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, self#0)
         || ($Unbox(read($Heap, self#0, _module.Node.next)): ref != null
           ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, self#0, _module.Node.next)): ref));
    assume _module.Node.Valid($LS($LZ), $Heap, self#0);
    assume _module.Node.Sum#canCall($Heap, self#0);
    assume {:id "id1264"} _module.Node.Sum($LS($LZ), old($Heap), self#0)
       <= _module.Node.Sum($LS($LZ), $Heap, self#0);
}



procedure {:verboseName "Node.M_Lemma_Alt_Static (call)"} Call$$_module.Node.M__Lemma__Alt__Static(previous$Heap: Heap, 
    current$Heap: Heap, 
    self#0: ref
       where $Is(self#0, Tclass._module.Node())
         && $IsAlloc(self#0, Tclass._module.Node(), previous$Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.Node())
         && $IsAlloc(node#0, Tclass._module.Node(), previous$Heap));
  requires $IsAlloc(self#0, Tclass._module.Node(), previous$Heap);
  requires $IsAlloc(node#0, Tclass._module.Node(), previous$Heap);
  // user-defined preconditions
  requires {:id "id1265"} _module.Node.Valid#canCall(previous$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, self#0)
       || Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, $Box(self#0));
  requires {:id "id1266"} _module.Node.Valid#canCall(previous$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, self#0)
       || ($Unbox(read(previous$Heap, self#0, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, 
          read(previous$Heap, self#0, _module.Node.next)));
  requires {:id "id1267"} _module.Node.Valid#canCall(previous$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, self#0)
       || ($Unbox(read(previous$Heap, self#0, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set));
  requires {:id "id1268"} _module.Node.Valid#canCall(previous$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, self#0)
       || ($Unbox(read(previous$Heap, self#0, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(self#0)));
  requires {:id "id1269"} _module.Node.Valid#canCall(previous$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, self#0)
       || ($Unbox(read(previous$Heap, self#0, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), 
          previous$Heap, 
          $Unbox(read(previous$Heap, self#0, _module.Node.next)): ref));
  requires {:id "id1270"} $Unbox(read(previous$Heap, node#0, _module.Node.x)): int
     <= $Unbox(read(current$Heap, node#0, _module.Node.x)): int;
  requires {:id "id1271"} _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(previous$Heap, node#0, _module.Node.next), 
      read(previous$Heap, node#0, _module.Node.Repr)), 
    #_System._tuple#2._#Make2(read(current$Heap, node#0, _module.Node.next), 
      read(current$Heap, node#0, _module.Node.Repr)));
  requires {:id "id1272"} (forall n#1: ref :: 
    { $Unbox(read(previous$Heap, n#1, _module.Node.Repr)): Set } 
      { $Unbox(read(current$Heap, n#1, _module.Node.Repr)): Set } 
      { $Unbox(read(previous$Heap, n#1, _module.Node.next)): ref } 
      { $Unbox(read(current$Heap, n#1, _module.Node.next)): ref } 
      { $Unbox(read(previous$Heap, n#1, _module.Node.x)): int } 
      { $Unbox(read(current$Heap, n#1, _module.Node.x)): int } 
      { Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, $Box(n#1)) } 
    $Is(n#1, Tclass._module.Node())
       ==> (Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, $Box(n#1))
             && n#1 != node#0
           ==> $Unbox(read(current$Heap, n#1, _module.Node.x)): int
             == $Unbox(read(previous$Heap, n#1, _module.Node.x)): int)
         && (Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, $Box(n#1))
             && n#1 != node#0
           ==> $Unbox(read(current$Heap, n#1, _module.Node.next)): ref
             == $Unbox(read(previous$Heap, n#1, _module.Node.next)): ref)
         && (Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, $Box(n#1))
             && n#1 != node#0
           ==> Set#Equal($Unbox(read(current$Heap, n#1, _module.Node.Repr)): Set, 
            $Unbox(read(previous$Heap, n#1, _module.Node.Repr)): Set)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall(current$Heap, self#0)
     && (_module.Node.Valid($LS($LZ), current$Heap, self#0)
       ==> _module.Node.Sum#canCall(previous$Heap, self#0)
         && _module.Node.Sum#canCall(current$Heap, self#0));
  free ensures {:id "id1273"} _module.Node.Valid#canCall(current$Heap, self#0)
     && 
    _module.Node.Valid($LS($LZ), current$Heap, self#0)
     && 
    Set#IsMember($Unbox(read(current$Heap, self#0, _module.Node.Repr)): Set, $Box(self#0))
     && ($Unbox(read(current$Heap, self#0, _module.Node.next)): ref != null
       ==> Set#IsMember($Unbox(read(current$Heap, self#0, _module.Node.Repr)): Set, 
          read(current$Heap, self#0, _module.Node.next))
         && Set#Subset($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(current$Heap, self#0, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(self#0))
         && _module.Node.Valid($LS($LZ), 
          current$Heap, 
          $Unbox(read(current$Heap, self#0, _module.Node.next)): ref));
  ensures {:id "id1274"} _module.Node.Sum($LS($LS($LZ)), previous$Heap, self#0)
     <= _module.Node.Sum($LS($LS($LZ)), current$Heap, self#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Node.M_Lemma_Alt_Static (correctness)"} Impl$$_module.Node.M__Lemma__Alt__Static(previous$Heap: Heap, 
    current$Heap: Heap, 
    self#0: ref
       where $Is(self#0, Tclass._module.Node())
         && $IsAlloc(self#0, Tclass._module.Node(), previous$Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.Node())
         && $IsAlloc(node#0, Tclass._module.Node(), previous$Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(self#0, Tclass._module.Node(), previous$Heap);
  requires $IsAlloc(node#0, Tclass._module.Node(), previous$Heap);
  // user-defined preconditions
  free requires {:id "id1275"} _module.Node.Valid#canCall(previous$Heap, self#0)
     && 
    _module.Node.Valid($LS($LZ), previous$Heap, self#0)
     && 
    Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, $Box(self#0))
     && ($Unbox(read(previous$Heap, self#0, _module.Node.next)): ref != null
       ==> Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, 
          read(previous$Heap, self#0, _module.Node.next))
         && Set#Subset($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(self#0))
         && _module.Node.Valid($LS($LZ), 
          previous$Heap, 
          $Unbox(read(previous$Heap, self#0, _module.Node.next)): ref));
  requires {:id "id1276"} $Unbox(read(previous$Heap, node#0, _module.Node.x)): int
     <= $Unbox(read(current$Heap, node#0, _module.Node.x)): int;
  requires {:id "id1277"} _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(previous$Heap, node#0, _module.Node.next), 
      read(previous$Heap, node#0, _module.Node.Repr)), 
    #_System._tuple#2._#Make2(read(current$Heap, node#0, _module.Node.next), 
      read(current$Heap, node#0, _module.Node.Repr)));
  requires {:id "id1278"} (forall n#1: ref :: 
    { $Unbox(read(previous$Heap, n#1, _module.Node.Repr)): Set } 
      { $Unbox(read(current$Heap, n#1, _module.Node.Repr)): Set } 
      { $Unbox(read(previous$Heap, n#1, _module.Node.next)): ref } 
      { $Unbox(read(current$Heap, n#1, _module.Node.next)): ref } 
      { $Unbox(read(previous$Heap, n#1, _module.Node.x)): int } 
      { $Unbox(read(current$Heap, n#1, _module.Node.x)): int } 
      { Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, $Box(n#1)) } 
    $Is(n#1, Tclass._module.Node())
       ==> (Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, $Box(n#1))
             && n#1 != node#0
           ==> $Unbox(read(current$Heap, n#1, _module.Node.x)): int
             == $Unbox(read(previous$Heap, n#1, _module.Node.x)): int)
         && (Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, $Box(n#1))
             && n#1 != node#0
           ==> $Unbox(read(current$Heap, n#1, _module.Node.next)): ref
             == $Unbox(read(previous$Heap, n#1, _module.Node.next)): ref)
         && (Set#IsMember($Unbox(read(previous$Heap, self#0, _module.Node.Repr)): Set, $Box(n#1))
             && n#1 != node#0
           ==> Set#Equal($Unbox(read(current$Heap, n#1, _module.Node.Repr)): Set, 
            $Unbox(read(previous$Heap, n#1, _module.Node.Repr)): Set)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall(current$Heap, self#0)
     && (_module.Node.Valid($LS($LZ), current$Heap, self#0)
       ==> _module.Node.Sum#canCall(previous$Heap, self#0)
         && _module.Node.Sum#canCall(current$Heap, self#0));
  ensures {:id "id1279"} _module.Node.Valid#canCall(current$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), current$Heap, self#0)
       || Set#IsMember($Unbox(read(current$Heap, self#0, _module.Node.Repr)): Set, $Box(self#0));
  ensures {:id "id1280"} _module.Node.Valid#canCall(current$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), current$Heap, self#0)
       || ($Unbox(read(current$Heap, self#0, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read(current$Heap, self#0, _module.Node.Repr)): Set, 
          read(current$Heap, self#0, _module.Node.next)));
  ensures {:id "id1281"} _module.Node.Valid#canCall(current$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), current$Heap, self#0)
       || ($Unbox(read(current$Heap, self#0, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(current$Heap, self#0, _module.Node.Repr)): Set));
  ensures {:id "id1282"} _module.Node.Valid#canCall(current$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), current$Heap, self#0)
       || ($Unbox(read(current$Heap, self#0, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, self#0, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(self#0)));
  ensures {:id "id1283"} _module.Node.Valid#canCall(current$Heap, self#0)
     ==> _module.Node.Valid($LS($LZ), current$Heap, self#0)
       || ($Unbox(read(current$Heap, self#0, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), 
          current$Heap, 
          $Unbox(read(current$Heap, self#0, _module.Node.next)): ref));
  ensures {:id "id1284"} _module.Node.Sum($LS($LS($LZ)), previous$Heap, self#0)
     <= _module.Node.Sum($LS($LS($LZ)), current$Heap, self#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.M_Lemma_Alt_Static (correctness)"} Impl$$_module.Node.M__Lemma__Alt__Static(previous$Heap: Heap, current$Heap: Heap, self#0: ref, node#0: ref)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var newtype$check#0: ref;
  var self##0_0: ref;
  var node##0_0: ref;

    // AddMethodImpl: M_Lemma_Alt_Static, Impl$$_module.Node.M__Lemma__Alt__Static
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#self0#0: ref :: 
      { _module.Node.Sum($LS($LZ), $initHeapForallStmt#0, $ih#self0#0) } 
        { _module.Node.Sum($LS($LZ), $Heap, $ih#self0#0) } 
        { $Unbox(read($initHeapForallStmt#0, $ih#self0#0, _module.Node.Repr)): Set } 
        { $Unbox(read($Heap, $ih#self0#0, _module.Node.Repr)): Set } 
        { _module.Node.Valid($LS($LZ), $initHeapForallStmt#0, $ih#self0#0) } 
        { _module.Node.Valid($LS($LZ), $Heap, $ih#self0#0) } 
      $Is($ih#self0#0, Tclass._module.Node())
           && 
          _module.Node.Valid($LS($LZ), old($Heap), $ih#self0#0)
           && 
          $Unbox(read(old($Heap), node#0, _module.Node.x)): int
             <= $Unbox(read($initHeapForallStmt#0, node#0, _module.Node.x)): int
           && _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(old($Heap), node#0, _module.Node.next), 
              read(old($Heap), node#0, _module.Node.Repr)), 
            #_System._tuple#2._#Make2(read($initHeapForallStmt#0, node#0, _module.Node.next), 
              read($initHeapForallStmt#0, node#0, _module.Node.Repr)))
           && (forall n#2: ref :: 
            { $Unbox(read(old($Heap), n#2, _module.Node.Repr)): Set } 
              { $Unbox(read($initHeapForallStmt#0, n#2, _module.Node.Repr)): Set } 
              { $Unbox(read(old($Heap), n#2, _module.Node.next)): ref } 
              { $Unbox(read($initHeapForallStmt#0, n#2, _module.Node.next)): ref } 
              { $Unbox(read(old($Heap), n#2, _module.Node.x)): int } 
              { $Unbox(read($initHeapForallStmt#0, n#2, _module.Node.x)): int } 
              { Set#IsMember($Unbox(read(old($Heap), $ih#self0#0, _module.Node.Repr)): Set, $Box(n#2)) } 
            $Is(n#2, Tclass._module.Node())
               ==> (Set#IsMember($Unbox(read(old($Heap), $ih#self0#0, _module.Node.Repr)): Set, $Box(n#2))
                     && n#2 != node#0
                   ==> $Unbox(read($initHeapForallStmt#0, n#2, _module.Node.x)): int
                     == $Unbox(read(old($Heap), n#2, _module.Node.x)): int)
                 && (Set#IsMember($Unbox(read(old($Heap), $ih#self0#0, _module.Node.Repr)): Set, $Box(n#2))
                     && n#2 != node#0
                   ==> $Unbox(read($initHeapForallStmt#0, n#2, _module.Node.next)): ref
                     == $Unbox(read(old($Heap), n#2, _module.Node.next)): ref)
                 && (Set#IsMember($Unbox(read(old($Heap), $ih#self0#0, _module.Node.Repr)): Set, $Box(n#2))
                     && n#2 != node#0
                   ==> Set#Equal($Unbox(read($initHeapForallStmt#0, n#2, _module.Node.Repr)): Set, 
                    $Unbox(read(old($Heap), n#2, _module.Node.Repr)): Set)))
           && 
          Set#Subset($Unbox(read($initHeapForallStmt#0, $ih#self0#0, _module.Node.Repr)): Set, 
            $Unbox(read($initHeapForallStmt#0, self#0, _module.Node.Repr)): Set)
           && !Set#Subset($Unbox(read($initHeapForallStmt#0, self#0, _module.Node.Repr)): Set, 
            $Unbox(read($initHeapForallStmt#0, $ih#self0#0, _module.Node.Repr)): Set)
         ==> _module.Node.Valid($LS($LZ), $Heap, $ih#self0#0)
           && _module.Node.Sum($LS($LZ), $initHeapForallStmt#0, $ih#self0#0)
             <= _module.Node.Sum($LS($LZ), $Heap, $ih#self0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(183,5)
    assert {:id "id1285"} self#0 != null;
    newtype$check#0 := null;
    assume true;
    if ($Unbox(read($Heap, self#0, _module.Node.next)): ref != null)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(184,25)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id1286"} self#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id1287"} $Is($Unbox(read($Heap, self#0, _module.Node.next)): ref, Tclass._module.Node());
        self##0_0 := $Unbox(read($Heap, self#0, _module.Node.next)): ref;
        assume true;
        // ProcessCallStmt: CheckSubrange
        node##0_0 := node#0;
        assert {:id "id1288"} $IsAlloc($Unbox(read($Heap, self#0, _module.Node.next)): ref, 
          Tclass._module.Node?(), 
          old($Heap));
        assert {:id "id1289"} $IsAlloc(node#0, Tclass._module.Node(), old($Heap));
        assert {:id "id1290"} Set#Subset($Unbox(read($Heap, self##0_0, _module.Node.Repr)): Set, 
            $Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set)
           && !Set#Subset($Unbox(read(old($Heap), self#0, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, self##0_0, _module.Node.Repr)): Set);
        call {:id "id1291"} Call$$_module.Node.M__Lemma__Alt__Static(old($Heap), $Heap, self##0_0, node##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



// $Is axiom for non-null type _module.Node
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Node()) } { $Is(c#0, Tclass._module.Node?()) } 
  $Is(c#0, Tclass._module.Node())
     <==> $Is(c#0, Tclass._module.Node?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Node
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Node(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Node?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Node(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Node?(), $h));

const unique class._module.NodeAuto?: ClassName;

function Tclass._module.NodeAuto?() : Ty
uses {
// Tclass._module.NodeAuto? Tag
axiom Tag(Tclass._module.NodeAuto?()) == Tagclass._module.NodeAuto?
   && TagFamily(Tclass._module.NodeAuto?()) == tytagFamily$NodeAuto;
}

const unique Tagclass._module.NodeAuto?: TyTag;

// Box/unbox axiom for Tclass._module.NodeAuto?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NodeAuto?()) } 
  $IsBox(bx, Tclass._module.NodeAuto?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.NodeAuto?()));

// $Is axiom for class NodeAuto
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.NodeAuto?()) } 
  $Is($o, Tclass._module.NodeAuto?())
     <==> $o == null || dtype($o) == Tclass._module.NodeAuto?());

// $IsAlloc axiom for class NodeAuto
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.NodeAuto?(), $h) } 
  $IsAlloc($o, Tclass._module.NodeAuto?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.NodeAuto.x: Field
uses {
axiom FDim(_module.NodeAuto.x) == 0
   && FieldOfDecl(class._module.NodeAuto?, field$x) == _module.NodeAuto.x
   && !$IsGhostField(_module.NodeAuto.x);
}

// NodeAuto.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.NodeAuto.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.NodeAuto?()
     ==> $Is($Unbox(read($h, $o, _module.NodeAuto.x)): int, TInt));

// NodeAuto.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.NodeAuto.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.NodeAuto?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.NodeAuto.x)): int, TInt, $h));

const _module.NodeAuto.next: Field
uses {
axiom FDim(_module.NodeAuto.next) == 0
   && FieldOfDecl(class._module.NodeAuto?, field$next) == _module.NodeAuto.next
   && !$IsGhostField(_module.NodeAuto.next);
}

// NodeAuto.next: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.NodeAuto.next)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.NodeAuto?()
     ==> $Is($Unbox(read($h, $o, _module.NodeAuto.next)): ref, Tclass._module.NodeAuto?()));

// NodeAuto.next: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.NodeAuto.next)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.NodeAuto?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.NodeAuto.next)): ref, Tclass._module.NodeAuto?(), $h));

procedure {:verboseName "NodeAuto._ctor (well-formedness)"} CheckWellFormed$$_module.NodeAuto.__ctor(y#0: int) returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.NodeAuto() : Ty
uses {
// Tclass._module.NodeAuto Tag
axiom Tag(Tclass._module.NodeAuto()) == Tagclass._module.NodeAuto
   && TagFamily(Tclass._module.NodeAuto()) == tytagFamily$NodeAuto;
}

const unique Tagclass._module.NodeAuto: TyTag;

// Box/unbox axiom for Tclass._module.NodeAuto
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NodeAuto()) } 
  $IsBox(bx, Tclass._module.NodeAuto())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.NodeAuto()));

procedure {:verboseName "NodeAuto._ctor (call)"} Call$$_module.NodeAuto.__ctor(y#0: int)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NodeAuto())
         && $IsAlloc(this, Tclass._module.NodeAuto(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.NodeAuto.Valid#canCall($Heap, this);
  free ensures {:id "id1294"} _module.NodeAuto.Valid#canCall($Heap, this)
     && 
    _module.NodeAuto.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(this))
     && !Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(null))
     && 
    ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
          read($Heap, this, _module.NodeAuto.next))
         && 
        Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Box(this))
         && _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref))
     && true;
  free ensures true;
  ensures {:id "id1295"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NodeAuto._ctor (correctness)"} Impl$$_module.NodeAuto.__ctor(y#0: int) returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.NodeAuto.Valid#canCall($Heap, this);
  ensures {:id "id1296"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(this));
  ensures {:id "id1297"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || !Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(null));
  ensures {:id "id1298"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
          read($Heap, this, _module.NodeAuto.next)));
  ensures {:id "id1299"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
         ==> Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set));
  ensures {:id "id1300"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Box(this)));
  ensures {:id "id1301"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
         ==> _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref));
  ensures {:id "id1302"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this) || Lit(true);
  free ensures true;
  ensures {:id "id1303"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NodeAuto._ctor (correctness)"} Impl$$_module.NodeAuto.__ctor(y#0: int) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.x: int;
  var this.next: ref;
  var this.Repr: Set;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0: int;
  var $rhs#1: ref;
  var newtype$check#0: ref;
  var $rhs#2: Set;
  var newtype$check#1: ref;
  var $rhs#0_0: Set;

    // AddMethodImpl: _ctor, Impl$$_module.NodeAuto.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(193,3)
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(194,13)
    assume true;
    $obj0 := this;
    assume true;
    $obj1 := this;
    assume true;
    $rhs#0 := y#0;
    newtype$check#0 := null;
    assume true;
    $rhs#1 := null;
    this.x := $rhs#0;
    this.next := $rhs#1;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(193,3)
    assume this != null && $Is(this, Tclass._module.NodeAuto?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.NodeAuto.x)): int == this.x;
    assume $Unbox(read($Heap, this, _module.NodeAuto.next)): ref == this.next;
    assume $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set == this.Repr;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(193,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(189,24)
    assume true;
    assert {:id "id1308"} $_ModifiesFrame[this, _module.NodeAuto.Repr];
    assume true;
    $rhs#2 := Set#UnionOne(Set#Empty(): Set, $Box(this));
    $Heap := update($Heap, this, _module.NodeAuto.Repr, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(192,3)
    newtype$check#1 := null;
    if ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null)
    {
        if (Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
          read($Heap, this, _module.NodeAuto.next)))
        {
            assert {:id "id1311"} $Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null;
        }
    }

    assume true;
    if ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
       && !
      (Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
        read($Heap, this, _module.NodeAuto.next))
       && Set#Subset($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
            _module.NodeAuto.Repr)): Set, 
        $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set)))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(189,24)
        assume true;
        assert {:id "id1312"} $_ModifiesFrame[this, _module.NodeAuto.Repr];
        assert {:id "id1313"} $Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null;
        assume true;
        $rhs#0_0 := Set#Union(Set#Union($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
            Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.NodeAuto.next))), 
          $Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set);
        $Heap := update($Heap, this, _module.NodeAuto.Repr, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
    }
    else
    {
    }
}



procedure {:verboseName "NodeAuto.Prepend (well-formedness)"} CheckWellFormed$$_module.NodeAuto.Prepend(y#0: int, 
    nxt#0: ref
       where $Is(nxt#0, Tclass._module.NodeAuto())
         && $IsAlloc(nxt#0, Tclass._module.NodeAuto(), $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NodeAuto.Prepend (well-formedness)"} CheckWellFormed$$_module.NodeAuto.Prepend(y#0: int, nxt#0: ref) returns (this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Prepend, CheckWellFormed$$_module.NodeAuto.Prepend
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id1316"} nxt#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(nxt#0), Tclass._module.NodeAuto?(), $Heap);
    assume _module.NodeAuto.Valid#canCall($Heap, nxt#0);
    assume {:id "id1317"} _module.NodeAuto.Valid($Heap, nxt#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc this;
    assume this != null
       && 
      $Is(this, Tclass._module.NodeAuto())
       && $IsAlloc(this, Tclass._module.NodeAuto(), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.NodeAuto?(), $Heap);
    assume _module.NodeAuto.Valid#canCall($Heap, this);
    assume {:id "id1318"} _module.NodeAuto.Valid($Heap, this);
    assert {:id "id1319"} nxt#0 != null;
    assume {:id "id1320"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, nxt#0, _module.NodeAuto.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($Heap, nxt#0, _module.NodeAuto.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
}



procedure {:verboseName "NodeAuto.Prepend (call)"} Call$$_module.NodeAuto.Prepend(y#0: int, 
    nxt#0: ref
       where $Is(nxt#0, Tclass._module.NodeAuto())
         && $IsAlloc(nxt#0, Tclass._module.NodeAuto(), $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NodeAuto())
         && $IsAlloc(this, Tclass._module.NodeAuto(), $Heap));
  // user-defined preconditions
  requires {:id "id1321"} _module.NodeAuto.Valid#canCall($Heap, nxt#0)
     ==> _module.NodeAuto.Valid($Heap, nxt#0)
       || Set#IsMember($Unbox(read($Heap, nxt#0, _module.NodeAuto.Repr)): Set, $Box(nxt#0));
  requires {:id "id1322"} _module.NodeAuto.Valid#canCall($Heap, nxt#0)
     ==> _module.NodeAuto.Valid($Heap, nxt#0)
       || !Set#IsMember($Unbox(read($Heap, nxt#0, _module.NodeAuto.Repr)): Set, $Box(null));
  requires {:id "id1323"} _module.NodeAuto.Valid#canCall($Heap, nxt#0)
     ==> _module.NodeAuto.Valid($Heap, nxt#0)
       || ($Unbox(read($Heap, nxt#0, _module.NodeAuto.next)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, nxt#0, _module.NodeAuto.Repr)): Set, 
          read($Heap, nxt#0, _module.NodeAuto.next)));
  requires {:id "id1324"} _module.NodeAuto.Valid#canCall($Heap, nxt#0)
     ==> _module.NodeAuto.Valid($Heap, nxt#0)
       || ($Unbox(read($Heap, nxt#0, _module.NodeAuto.next)): ref != null
         ==> Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, nxt#0, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Unbox(read($Heap, nxt#0, _module.NodeAuto.Repr)): Set));
  requires {:id "id1325"} _module.NodeAuto.Valid#canCall($Heap, nxt#0)
     ==> _module.NodeAuto.Valid($Heap, nxt#0)
       || ($Unbox(read($Heap, nxt#0, _module.NodeAuto.next)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, nxt#0, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Box(nxt#0)));
  requires {:id "id1326"} _module.NodeAuto.Valid#canCall($Heap, nxt#0)
     ==> _module.NodeAuto.Valid($Heap, nxt#0)
       || ($Unbox(read($Heap, nxt#0, _module.NodeAuto.next)): ref != null
         ==> _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, nxt#0, _module.NodeAuto.next)): ref));
  requires {:id "id1327"} _module.NodeAuto.Valid#canCall($Heap, nxt#0)
     ==> _module.NodeAuto.Valid($Heap, nxt#0) || Lit(true);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.NodeAuto.Valid#canCall($Heap, this);
  free ensures {:id "id1328"} _module.NodeAuto.Valid#canCall($Heap, this)
     && 
    _module.NodeAuto.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(this))
     && !Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(null))
     && 
    ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
          read($Heap, this, _module.NodeAuto.next))
         && 
        Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Box(this))
         && _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref))
     && true;
  ensures {:id "id1329"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read($Heap, nxt#0, _module.NodeAuto.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read($Heap, nxt#0, _module.NodeAuto.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NodeAuto.Prepend (correctness)"} Impl$$_module.NodeAuto.Prepend(y#0: int, 
    nxt#0: ref
       where $Is(nxt#0, Tclass._module.NodeAuto())
         && $IsAlloc(nxt#0, Tclass._module.NodeAuto(), $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id1330"} _module.NodeAuto.Valid#canCall($Heap, nxt#0)
     && 
    _module.NodeAuto.Valid($Heap, nxt#0)
     && 
    Set#IsMember($Unbox(read($Heap, nxt#0, _module.NodeAuto.Repr)): Set, $Box(nxt#0))
     && !Set#IsMember($Unbox(read($Heap, nxt#0, _module.NodeAuto.Repr)): Set, $Box(null))
     && 
    ($Unbox(read($Heap, nxt#0, _module.NodeAuto.next)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, nxt#0, _module.NodeAuto.Repr)): Set, 
          read($Heap, nxt#0, _module.NodeAuto.next))
         && 
        Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, nxt#0, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Unbox(read($Heap, nxt#0, _module.NodeAuto.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, nxt#0, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Box(nxt#0))
         && _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, nxt#0, _module.NodeAuto.next)): ref))
     && true;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.NodeAuto.Valid#canCall($Heap, this);
  ensures {:id "id1331"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(this));
  ensures {:id "id1332"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || !Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(null));
  ensures {:id "id1333"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
          read($Heap, this, _module.NodeAuto.next)));
  ensures {:id "id1334"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
         ==> Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set));
  ensures {:id "id1335"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Box(this)));
  ensures {:id "id1336"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
         ==> _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref));
  ensures {:id "id1337"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this) || Lit(true);
  ensures {:id "id1338"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read($Heap, nxt#0, _module.NodeAuto.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read($Heap, nxt#0, _module.NodeAuto.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NodeAuto.Prepend (correctness)"} Impl$$_module.NodeAuto.Prepend(y#0: int, nxt#0: ref) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.x: int;
  var this.next: ref;
  var this.Repr: Set;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0: int;
  var $rhs#1: ref;

    // AddMethodImpl: Prepend, Impl$$_module.NodeAuto.Prepend
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(199,3)
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(200,13)
    assume true;
    $obj0 := this;
    assume true;
    $obj1 := this;
    assume true;
    $rhs#0 := y#0;
    assume true;
    $rhs#1 := nxt#0;
    this.x := $rhs#0;
    this.next := $rhs#1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(201,10)
    assume true;
    assert {:id "id1343"} nxt#0 != null;
    assume true;
    this.Repr := Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(this)), 
      $Unbox(read($Heap, nxt#0, _module.NodeAuto.Repr)): Set);
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(199,3)
    assume this != null && $Is(this, Tclass._module.NodeAuto?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.NodeAuto.x)): int == this.x;
    assume $Unbox(read($Heap, this, _module.NodeAuto.next)): ref == this.next;
    assume $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set == this.Repr;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(199,3)
}



// function declaration for _module.NodeAuto.Sum
function _module.NodeAuto.Sum($ly: LayerType, $heap: Heap, this: ref) : int
uses {
// definition axiom for _module.NodeAuto.Sum (revealed)
axiom {:id "id1345"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref :: 
    { _module.NodeAuto.Sum($LS($ly), $Heap, this), $IsGoodHeap($Heap) } 
    _module.NodeAuto.Sum#canCall($Heap, this)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.NodeAuto())
           && $IsAlloc(this, Tclass._module.NodeAuto(), $Heap)
           && _module.NodeAuto.Valid($Heap, this))
       ==> ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
           ==> _module.NodeAuto.Sum#canCall($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref))
         && _module.NodeAuto.Sum($LS($ly), $Heap, this)
           == (if $Unbox(read($Heap, this, _module.NodeAuto.next)): ref == null
             then $Unbox(read($Heap, this, _module.NodeAuto.x)): int
             else $Unbox(read($Heap, this, _module.NodeAuto.x)): int
               + _module.NodeAuto.Sum($ly, $Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref)));
}

function _module.NodeAuto.Sum#canCall($heap: Heap, this: ref) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.NodeAuto.Sum($LS($ly), $Heap, this) } 
  _module.NodeAuto.Sum($LS($ly), $Heap, this)
     == _module.NodeAuto.Sum($ly, $Heap, this));

// fuel synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.NodeAuto.Sum(AsFuelBottom($ly), $Heap, this) } 
  _module.NodeAuto.Sum($ly, $Heap, this) == _module.NodeAuto.Sum($LZ, $Heap, this));

// frame axiom for _module.NodeAuto.Sum
axiom (forall $ly: LayerType, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.NodeAuto.Sum($ly, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.NodeAuto())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && Set#IsMember($Unbox(read($h0, this, _module.NodeAuto.Repr)): Set, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.NodeAuto.Sum($ly, $h0, this) == _module.NodeAuto.Sum($ly, $h1, this));

function _module.NodeAuto.Sum#requires(LayerType, Heap, ref) : bool;

// #requires axiom for _module.NodeAuto.Sum
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.NodeAuto.Sum#requires($ly, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.NodeAuto())
       && $IsAlloc(this, Tclass._module.NodeAuto(), $Heap)
     ==> _module.NodeAuto.Sum#requires($ly, $Heap, this)
       == _module.NodeAuto.Valid($Heap, this));

procedure {:verboseName "NodeAuto.Sum (well-formedness)"} CheckWellformed$$_module.NodeAuto.Sum(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NodeAuto())
         && $IsAlloc(this, Tclass._module.NodeAuto(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NodeAuto.Sum (well-formedness)"} CheckWellformed$$_module.NodeAuto.Sum(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var newtype$check#0: ref;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.NodeAuto?(), $Heap);
    b$reqreads#0 := (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == this
             || Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box($o)))
         ==> $_ReadsFrame[$o, $f]);
    assume _module.NodeAuto.Valid#canCall($Heap, this);
    assume {:id "id1346"} _module.NodeAuto.Valid($Heap, this);
    assert {:id "id1347"} b$reqreads#0;
    // Check well-formedness of the reads clause
    b$reqreads#1 := $_ReadsFrame[this, _module.NodeAuto.Repr];
    assert {:id "id1348"} b$reqreads#1;
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
        b$reqreads#2 := $_ReadsFrame[this, _module.NodeAuto.next];
        newtype$check#0 := null;
        if ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref == null)
        {
            b$reqreads#3 := $_ReadsFrame[this, _module.NodeAuto.x];
            assume {:id "id1349"} _module.NodeAuto.Sum($LS($LZ), $Heap, this)
               == $Unbox(read($Heap, this, _module.NodeAuto.x)): int;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.NodeAuto.Sum($LS($LZ), $Heap, this), TInt);
            assert {:id "id1350"} b$reqreads#2;
            assert {:id "id1351"} b$reqreads#3;
            return;
        }
        else
        {
            b$reqreads#4 := $_ReadsFrame[this, _module.NodeAuto.x];
            b$reqreads#5 := $_ReadsFrame[this, _module.NodeAuto.next];
            assert {:id "id1352"} $Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox(read($Heap, this, _module.NodeAuto.next), Tclass._module.NodeAuto?(), $Heap);
            assert {:id "id1353"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref)
               ==> _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref)
                 || Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                      _module.NodeAuto.Repr)): Set, 
                  read($Heap, this, _module.NodeAuto.next));
            assert {:id "id1354"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref)
               ==> _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref)
                 || !Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                      _module.NodeAuto.Repr)): Set, 
                  $Box(null));
            assert {:id "id1355"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref)
               ==> _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref)
                 || ($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                        _module.NodeAuto.next)): ref
                     != null
                   ==> Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                        _module.NodeAuto.Repr)): Set, 
                    read($Heap, 
                      $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                      _module.NodeAuto.next)));
            assert {:id "id1356"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref)
               ==> _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref)
                 || ($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                        _module.NodeAuto.next)): ref
                     != null
                   ==> Set#Subset($Unbox(read($Heap, 
                        $Unbox(read($Heap, 
                            $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                            _module.NodeAuto.next)): ref, 
                        _module.NodeAuto.Repr)): Set, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                        _module.NodeAuto.Repr)): Set));
            assert {:id "id1357"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref)
               ==> _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref)
                 || ($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                        _module.NodeAuto.next)): ref
                     != null
                   ==> !Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, 
                            $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                            _module.NodeAuto.next)): ref, 
                        _module.NodeAuto.Repr)): Set, 
                    read($Heap, this, _module.NodeAuto.next)));
            assert {:id "id1358"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref)
               ==> _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref)
                 || ($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                        _module.NodeAuto.next)): ref
                     != null
                   ==> _module.NodeAuto.Valid($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                        _module.NodeAuto.next)): ref));
            assert {:id "id1359"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref)
               ==> _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref)
                 || Lit(true);
            assume _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref);
            b$reqreads#6 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                        _module.NodeAuto.Repr)): Set, 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]);
            assert {:id "id1360"} Set#Subset($Unbox(read($Heap, 
                    $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                    _module.NodeAuto.Repr)): Set, 
                $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set)
               && !Set#Subset($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                    _module.NodeAuto.Repr)): Set);
            assume _module.NodeAuto.Sum#canCall($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref);
            assume {:id "id1361"} _module.NodeAuto.Sum($LS($LZ), $Heap, this)
               == $Unbox(read($Heap, this, _module.NodeAuto.x)): int
                 + _module.NodeAuto.Sum($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref);
            assume _module.NodeAuto.Sum#canCall($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.NodeAuto.Sum($LS($LZ), $Heap, this), TInt);
            assert {:id "id1362"} b$reqreads#2;
            assert {:id "id1363"} b$reqreads#3;
            assert {:id "id1364"} b$reqreads#4;
            assert {:id "id1365"} b$reqreads#5;
            assert {:id "id1366"} b$reqreads#6;
            return;
        }

        assume false;
    }
}



procedure {:verboseName "NodeAuto.M (well-formedness)"} CheckWellFormed$$_module.NodeAuto.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NodeAuto())
         && $IsAlloc(this, Tclass._module.NodeAuto(), $Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.NodeAuto())
         && $IsAlloc(node#0, Tclass._module.NodeAuto(), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NodeAuto.M (well-formedness)"} CheckWellFormed$$_module.NodeAuto.M(this: ref, node#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: M, CheckWellFormed$$_module.NodeAuto.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == node#0);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.NodeAuto?(), $Heap);
    assume _module.NodeAuto.Valid#canCall($Heap, this);
    assume {:id "id1367"} _module.NodeAuto.Valid($Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == node#0);
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.NodeAuto?(), $Heap);
    assume _module.NodeAuto.Valid#canCall($Heap, this);
    assume {:id "id1368"} _module.NodeAuto.Valid($Heap, this);
    assert {:id "id1369"} $IsAlloc(this, Tclass._module.NodeAuto(), old($Heap));
    assume {:id "id1370"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
}



procedure {:verboseName "NodeAuto.M (call)"} Call$$_module.NodeAuto.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NodeAuto())
         && $IsAlloc(this, Tclass._module.NodeAuto(), $Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.NodeAuto())
         && $IsAlloc(node#0, Tclass._module.NodeAuto(), $Heap));
  // user-defined preconditions
  requires {:id "id1371"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(this));
  requires {:id "id1372"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || !Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(null));
  requires {:id "id1373"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
          read($Heap, this, _module.NodeAuto.next)));
  requires {:id "id1374"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
         ==> Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set));
  requires {:id "id1375"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Box(this)));
  requires {:id "id1376"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
         ==> _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref));
  requires {:id "id1377"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this) || Lit(true);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.NodeAuto.Valid#canCall($Heap, this);
  free ensures {:id "id1378"} _module.NodeAuto.Valid#canCall($Heap, this)
     && 
    _module.NodeAuto.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(this))
     && !Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(null))
     && 
    ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
          read($Heap, this, _module.NodeAuto.next))
         && 
        Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Box(this))
         && _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref))
     && true;
  free ensures true;
  ensures {:id "id1379"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == node#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NodeAuto.M (correctness)"} Impl$$_module.NodeAuto.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NodeAuto())
         && $IsAlloc(this, Tclass._module.NodeAuto(), $Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.NodeAuto())
         && $IsAlloc(node#0, Tclass._module.NodeAuto(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id1380"} _module.NodeAuto.Valid#canCall($Heap, this)
     && 
    _module.NodeAuto.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(this))
     && !Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(null))
     && 
    ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
          read($Heap, this, _module.NodeAuto.next))
         && 
        Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Box(this))
         && _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref))
     && true;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.NodeAuto.Valid#canCall($Heap, this);
  ensures {:id "id1381"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(this));
  ensures {:id "id1382"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || !Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(null));
  ensures {:id "id1383"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
          read($Heap, this, _module.NodeAuto.next)));
  ensures {:id "id1384"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
         ==> Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set));
  ensures {:id "id1385"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Box(this)));
  ensures {:id "id1386"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
         ==> _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref));
  ensures {:id "id1387"} _module.NodeAuto.Valid#canCall($Heap, this)
     ==> _module.NodeAuto.Valid($Heap, this) || Lit(true);
  free ensures true;
  ensures {:id "id1388"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == node#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NodeAuto.M (correctness)"} Impl$$_module.NodeAuto.M(this: ref, node#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: int;
  var $rhs#0: int;
  var node##0: ref;

    // AddMethodImpl: M, Impl$$_module.NodeAuto.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == node#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(212,11)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.NodeAuto?(), $Heap);
    assert {:id "id1389"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(this));
    assert {:id "id1390"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || !Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(null));
    assert {:id "id1391"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
           ==> Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
            read($Heap, this, _module.NodeAuto.next)));
    assert {:id "id1392"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
           ==> Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                _module.NodeAuto.Repr)): Set, 
            $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set));
    assert {:id "id1393"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
           ==> !Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                _module.NodeAuto.Repr)): Set, 
            $Box(this)));
    assert {:id "id1394"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
           ==> _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref));
    assert {:id "id1395"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this) || Lit(true);
    assume _module.NodeAuto.Valid($Heap, this);
    assume _module.NodeAuto.Sum#canCall($Heap, this);
    assume _module.NodeAuto.Sum#canCall($Heap, this);
    s#0 := _module.NodeAuto.Sum($LS($LZ), $Heap, this);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(213,12)
    assert {:id "id1397"} node#0 != null;
    assume true;
    assert {:id "id1398"} $_ModifiesFrame[node#0, _module.NodeAuto.x];
    assert {:id "id1399"} node#0 != null;
    assume true;
    $rhs#0 := $Unbox(read($Heap, node#0, _module.NodeAuto.x)): int + 1;
    $Heap := update($Heap, node#0, _module.NodeAuto.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(214,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    node##0 := node#0;
    assert {:id "id1402"} $IsAlloc(this, Tclass._module.NodeAuto(), old($Heap));
    assert {:id "id1403"} $IsAlloc(node#0, Tclass._module.NodeAuto(), old($Heap));
    call {:id "id1404"} Call$$_module.NodeAuto.M__Lemma(old($Heap), $Heap, this, node##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(215,5)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.NodeAuto?(), $Heap);
    assert {:id "id1405"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(this));
    assert {:id "id1406"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || !Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(null));
    assert {:id "id1407"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
           ==> Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
            read($Heap, this, _module.NodeAuto.next)));
    assert {:id "id1408"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
           ==> Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                _module.NodeAuto.Repr)): Set, 
            $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set));
    assert {:id "id1409"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
           ==> !Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                _module.NodeAuto.Repr)): Set, 
            $Box(this)));
    assert {:id "id1410"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
           ==> _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref));
    assert {:id "id1411"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this) || Lit(true);
    assume _module.NodeAuto.Sum#canCall($Heap, this);
    assume _module.NodeAuto.Sum#canCall($Heap, this);
    assert {:id "id1412"} {:subsumption 0} s#0 <= _module.NodeAuto.Sum($LS($LS($LZ)), $Heap, this);
    assume {:id "id1413"} s#0 <= _module.NodeAuto.Sum($LS($LZ), $Heap, this);
}



procedure {:verboseName "NodeAuto.M_Lemma (well-formedness)"} CheckWellFormed$$_module.NodeAuto.M__Lemma(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NodeAuto())
         && $IsAlloc(this, Tclass._module.NodeAuto(), previous$Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.NodeAuto())
         && $IsAlloc(node#0, Tclass._module.NodeAuto(), previous$Heap));
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(node#0, Tclass._module.NodeAuto(), previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NodeAuto.M_Lemma (well-formedness)"} CheckWellFormed$$_module.NodeAuto.M__Lemma(previous$Heap: Heap, current$Heap: Heap, this: ref, node#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $unchanged#x0: ref;


    // AddMethodImpl: M_Lemma, CheckWellFormed$$_module.NodeAuto.M__Lemma
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id1414"} $IsAlloc(this, Tclass._module.NodeAuto(), old($Heap));
    assume _module.NodeAuto.Valid#canCall(old($Heap), this);
    assume {:id "id1415"} _module.NodeAuto.Valid(old($Heap), this);
    assert {:id "id1416"} node#0 != null;
    assert {:id "id1417"} $IsAlloc(node#0, Tclass._module.NodeAuto(), old($Heap));
    assert {:id "id1418"} node#0 != null;
    assume {:id "id1419"} $Unbox(read(old($Heap), node#0, _module.NodeAuto.x)): int
       <= $Unbox(read($Heap, node#0, _module.NodeAuto.x)): int;
    assert {:id "id1420"} node#0 != null;
    assert {:id "id1421"} $IsAlloc(node#0, Tclass._module.NodeAuto(), old($Heap));
    assert {:id "id1422"} node#0 != null;
    assert {:id "id1423"} $IsAlloc(node#0, Tclass._module.NodeAuto(), old($Heap));
    assert {:id "id1424"} node#0 != null;
    assert {:id "id1425"} node#0 != null;
    assume {:id "id1426"} _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(old($Heap), node#0, _module.NodeAuto.next), 
        read(old($Heap), node#0, _module.NodeAuto.Repr)), 
      #_System._tuple#2._#Make2(read($Heap, node#0, _module.NodeAuto.next), 
        read($Heap, node#0, _module.NodeAuto.Repr)));
    assert {:id "id1427"} $IsAlloc(this, Tclass._module.NodeAuto(), old($Heap));
    havoc $unchanged#x0;
    assert {:id "id1428"} Set#IsMember(Set#Difference($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(node#0))), 
        $Box($unchanged#x0))
       ==> $unchanged#x0 != null;
    assert {:id "id1429"} Set#IsMember(Set#Difference($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, 
            Set#UnionOne(Set#Empty(): Set, $Box(node#0))), 
          $Box($unchanged#x0))
         && $unchanged#x0 != null
       ==> $IsAlloc($unchanged#x0, Tclass._System.object?(), old($Heap));
    assume {:id "id1430"} (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null
         ==> 
        Set#IsMember($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, $Box($o))
           && $o != node#0
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.NodeAuto?(), $Heap);
    assume _module.NodeAuto.Valid#canCall($Heap, this);
    assume {:id "id1431"} _module.NodeAuto.Valid($Heap, this);
    assert {:id "id1432"} $IsAlloc(this, Tclass._module.NodeAuto(), old($Heap));
    assert {:id "id1433"} {:subsumption 0} _module.NodeAuto.Valid#canCall(old($Heap), this)
       ==> _module.NodeAuto.Valid(old($Heap), this)
         || Set#IsMember($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, $Box(this));
    assert {:id "id1434"} {:subsumption 0} _module.NodeAuto.Valid#canCall(old($Heap), this)
       ==> _module.NodeAuto.Valid(old($Heap), this)
         || !Set#IsMember($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, $Box(null));
    assert {:id "id1435"} {:subsumption 0} _module.NodeAuto.Valid#canCall(old($Heap), this)
       ==> _module.NodeAuto.Valid(old($Heap), this)
         || ($Unbox(read(old($Heap), this, _module.NodeAuto.next)): ref != null
           ==> Set#IsMember($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, 
            read(old($Heap), this, _module.NodeAuto.next)));
    assert {:id "id1436"} {:subsumption 0} _module.NodeAuto.Valid#canCall(old($Heap), this)
       ==> _module.NodeAuto.Valid(old($Heap), this)
         || ($Unbox(read(old($Heap), this, _module.NodeAuto.next)): ref != null
           ==> Set#Subset($Unbox(read(old($Heap), 
                $Unbox(read(old($Heap), this, _module.NodeAuto.next)): ref, 
                _module.NodeAuto.Repr)): Set, 
            $Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set));
    assert {:id "id1437"} {:subsumption 0} _module.NodeAuto.Valid#canCall(old($Heap), this)
       ==> _module.NodeAuto.Valid(old($Heap), this)
         || ($Unbox(read(old($Heap), this, _module.NodeAuto.next)): ref != null
           ==> !Set#IsMember($Unbox(read(old($Heap), 
                $Unbox(read(old($Heap), this, _module.NodeAuto.next)): ref, 
                _module.NodeAuto.Repr)): Set, 
            $Box(this)));
    assert {:id "id1438"} {:subsumption 0} _module.NodeAuto.Valid#canCall(old($Heap), this)
       ==> _module.NodeAuto.Valid(old($Heap), this)
         || ($Unbox(read(old($Heap), this, _module.NodeAuto.next)): ref != null
           ==> _module.NodeAuto.Valid(old($Heap), $Unbox(read(old($Heap), this, _module.NodeAuto.next)): ref));
    assert {:id "id1439"} {:subsumption 0} _module.NodeAuto.Valid#canCall(old($Heap), this)
       ==> _module.NodeAuto.Valid(old($Heap), this) || Lit(true);
    assume _module.NodeAuto.Valid(old($Heap), this);
    assume _module.NodeAuto.Sum#canCall(old($Heap), this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.NodeAuto?(), $Heap);
    assert {:id "id1440"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(this));
    assert {:id "id1441"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || !Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(null));
    assert {:id "id1442"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
           ==> Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
            read($Heap, this, _module.NodeAuto.next)));
    assert {:id "id1443"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
           ==> Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                _module.NodeAuto.Repr)): Set, 
            $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set));
    assert {:id "id1444"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
           ==> !Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                _module.NodeAuto.Repr)): Set, 
            $Box(this)));
    assert {:id "id1445"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
           ==> _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref));
    assert {:id "id1446"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this) || Lit(true);
    assume _module.NodeAuto.Valid($Heap, this);
    assume _module.NodeAuto.Sum#canCall($Heap, this);
    assume {:id "id1447"} _module.NodeAuto.Sum($LS($LZ), old($Heap), this)
       <= _module.NodeAuto.Sum($LS($LZ), $Heap, this);
}



procedure {:verboseName "NodeAuto.M_Lemma (call)"} Call$$_module.NodeAuto.M__Lemma(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NodeAuto())
         && $IsAlloc(this, Tclass._module.NodeAuto(), previous$Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.NodeAuto())
         && $IsAlloc(node#0, Tclass._module.NodeAuto(), previous$Heap));
  requires $IsAlloc(node#0, Tclass._module.NodeAuto(), previous$Heap);
  // user-defined preconditions
  requires {:id "id1448"} _module.NodeAuto.Valid#canCall(previous$Heap, this)
     ==> _module.NodeAuto.Valid(previous$Heap, this)
       || Set#IsMember($Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set, $Box(this));
  requires {:id "id1449"} _module.NodeAuto.Valid#canCall(previous$Heap, this)
     ==> _module.NodeAuto.Valid(previous$Heap, this)
       || !Set#IsMember($Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set, $Box(null));
  requires {:id "id1450"} _module.NodeAuto.Valid#canCall(previous$Heap, this)
     ==> _module.NodeAuto.Valid(previous$Heap, this)
       || ($Unbox(read(previous$Heap, this, _module.NodeAuto.next)): ref != null
         ==> Set#IsMember($Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set, 
          read(previous$Heap, this, _module.NodeAuto.next)));
  requires {:id "id1451"} _module.NodeAuto.Valid#canCall(previous$Heap, this)
     ==> _module.NodeAuto.Valid(previous$Heap, this)
       || ($Unbox(read(previous$Heap, this, _module.NodeAuto.next)): ref != null
         ==> Set#Subset($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set));
  requires {:id "id1452"} _module.NodeAuto.Valid#canCall(previous$Heap, this)
     ==> _module.NodeAuto.Valid(previous$Heap, this)
       || ($Unbox(read(previous$Heap, this, _module.NodeAuto.next)): ref != null
         ==> !Set#IsMember($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Box(this)));
  requires {:id "id1453"} _module.NodeAuto.Valid#canCall(previous$Heap, this)
     ==> _module.NodeAuto.Valid(previous$Heap, this)
       || ($Unbox(read(previous$Heap, this, _module.NodeAuto.next)): ref != null
         ==> _module.NodeAuto.Valid(previous$Heap, $Unbox(read(previous$Heap, this, _module.NodeAuto.next)): ref));
  requires {:id "id1454"} _module.NodeAuto.Valid#canCall(previous$Heap, this)
     ==> _module.NodeAuto.Valid(previous$Heap, this) || Lit(true);
  requires {:id "id1455"} $Unbox(read(previous$Heap, node#0, _module.NodeAuto.x)): int
     <= $Unbox(read(current$Heap, node#0, _module.NodeAuto.x)): int;
  requires {:id "id1456"} _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(previous$Heap, node#0, _module.NodeAuto.next), 
      read(previous$Heap, node#0, _module.NodeAuto.Repr)), 
    #_System._tuple#2._#Make2(read(current$Heap, node#0, _module.NodeAuto.next), 
      read(current$Heap, node#0, _module.NodeAuto.Repr)));
  requires {:id "id1457"} (forall $o: ref, $f: Field :: 
    { read(current$Heap, $o, $f) } 
    $o != null
       ==> 
      Set#IsMember($Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set, $Box($o))
         && $o != node#0
       ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.NodeAuto.Valid#canCall(current$Heap, this)
     && (_module.NodeAuto.Valid(current$Heap, this)
       ==> _module.NodeAuto.Sum#canCall(previous$Heap, this)
         && _module.NodeAuto.Sum#canCall(current$Heap, this));
  free ensures {:id "id1458"} _module.NodeAuto.Valid#canCall(current$Heap, this)
     && 
    _module.NodeAuto.Valid(current$Heap, this)
     && 
    Set#IsMember($Unbox(read(current$Heap, this, _module.NodeAuto.Repr)): Set, $Box(this))
     && !Set#IsMember($Unbox(read(current$Heap, this, _module.NodeAuto.Repr)): Set, $Box(null))
     && 
    ($Unbox(read(current$Heap, this, _module.NodeAuto.next)): ref != null
       ==> Set#IsMember($Unbox(read(current$Heap, this, _module.NodeAuto.Repr)): Set, 
          read(current$Heap, this, _module.NodeAuto.next))
         && 
        Set#Subset($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Unbox(read(current$Heap, this, _module.NodeAuto.Repr)): Set)
         && !Set#IsMember($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Box(this))
         && _module.NodeAuto.Valid(current$Heap, $Unbox(read(current$Heap, this, _module.NodeAuto.next)): ref))
     && true;
  ensures {:id "id1459"} _module.NodeAuto.Sum($LS($LS($LZ)), previous$Heap, this)
     <= _module.NodeAuto.Sum($LS($LS($LZ)), current$Heap, this);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NodeAuto.M_Lemma (correctness)"} Impl$$_module.NodeAuto.M__Lemma(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NodeAuto())
         && $IsAlloc(this, Tclass._module.NodeAuto(), previous$Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.NodeAuto())
         && $IsAlloc(node#0, Tclass._module.NodeAuto(), previous$Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(node#0, Tclass._module.NodeAuto(), previous$Heap);
  // user-defined preconditions
  free requires {:id "id1460"} _module.NodeAuto.Valid#canCall(previous$Heap, this)
     && 
    _module.NodeAuto.Valid(previous$Heap, this)
     && 
    Set#IsMember($Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set, $Box(this))
     && !Set#IsMember($Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set, $Box(null))
     && 
    ($Unbox(read(previous$Heap, this, _module.NodeAuto.next)): ref != null
       ==> Set#IsMember($Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set, 
          read(previous$Heap, this, _module.NodeAuto.next))
         && 
        Set#Subset($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set)
         && !Set#IsMember($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Box(this))
         && _module.NodeAuto.Valid(previous$Heap, $Unbox(read(previous$Heap, this, _module.NodeAuto.next)): ref))
     && true;
  requires {:id "id1461"} $Unbox(read(previous$Heap, node#0, _module.NodeAuto.x)): int
     <= $Unbox(read(current$Heap, node#0, _module.NodeAuto.x)): int;
  requires {:id "id1462"} _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(previous$Heap, node#0, _module.NodeAuto.next), 
      read(previous$Heap, node#0, _module.NodeAuto.Repr)), 
    #_System._tuple#2._#Make2(read(current$Heap, node#0, _module.NodeAuto.next), 
      read(current$Heap, node#0, _module.NodeAuto.Repr)));
  requires {:id "id1463"} (forall $o: ref, $f: Field :: 
    { read(current$Heap, $o, $f) } 
    $o != null
       ==> 
      Set#IsMember($Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set, $Box($o))
         && $o != node#0
       ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.NodeAuto.Valid#canCall(current$Heap, this)
     && (_module.NodeAuto.Valid(current$Heap, this)
       ==> _module.NodeAuto.Sum#canCall(previous$Heap, this)
         && _module.NodeAuto.Sum#canCall(current$Heap, this));
  ensures {:id "id1464"} _module.NodeAuto.Valid#canCall(current$Heap, this)
     ==> _module.NodeAuto.Valid(current$Heap, this)
       || Set#IsMember($Unbox(read(current$Heap, this, _module.NodeAuto.Repr)): Set, $Box(this));
  ensures {:id "id1465"} _module.NodeAuto.Valid#canCall(current$Heap, this)
     ==> _module.NodeAuto.Valid(current$Heap, this)
       || !Set#IsMember($Unbox(read(current$Heap, this, _module.NodeAuto.Repr)): Set, $Box(null));
  ensures {:id "id1466"} _module.NodeAuto.Valid#canCall(current$Heap, this)
     ==> _module.NodeAuto.Valid(current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.NodeAuto.next)): ref != null
         ==> Set#IsMember($Unbox(read(current$Heap, this, _module.NodeAuto.Repr)): Set, 
          read(current$Heap, this, _module.NodeAuto.next)));
  ensures {:id "id1467"} _module.NodeAuto.Valid#canCall(current$Heap, this)
     ==> _module.NodeAuto.Valid(current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.NodeAuto.next)): ref != null
         ==> Set#Subset($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Unbox(read(current$Heap, this, _module.NodeAuto.Repr)): Set));
  ensures {:id "id1468"} _module.NodeAuto.Valid#canCall(current$Heap, this)
     ==> _module.NodeAuto.Valid(current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.NodeAuto.next)): ref != null
         ==> !Set#IsMember($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Box(this)));
  ensures {:id "id1469"} _module.NodeAuto.Valid#canCall(current$Heap, this)
     ==> _module.NodeAuto.Valid(current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.NodeAuto.next)): ref != null
         ==> _module.NodeAuto.Valid(current$Heap, $Unbox(read(current$Heap, this, _module.NodeAuto.next)): ref));
  ensures {:id "id1470"} _module.NodeAuto.Valid#canCall(current$Heap, this)
     ==> _module.NodeAuto.Valid(current$Heap, this) || Lit(true);
  ensures {:id "id1471"} _module.NodeAuto.Sum($LS($LS($LZ)), previous$Heap, this)
     <= _module.NodeAuto.Sum($LS($LS($LZ)), current$Heap, this);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NodeAuto.M_Lemma (correctness)"} Impl$$_module.NodeAuto.M__Lemma(previous$Heap: Heap, current$Heap: Heap, this: ref, node#0: ref)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var newtype$check#0: ref;
  var node##0_0: ref;

    // AddMethodImpl: M_Lemma, Impl$$_module.NodeAuto.M__Lemma
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#this0#0: ref :: 
      { _module.NodeAuto.Sum($LS($LZ), $initHeapForallStmt#0, $ih#this0#0) } 
        { _module.NodeAuto.Sum($LS($LZ), $Heap, $ih#this0#0) } 
        { $Unbox(read($initHeapForallStmt#0, $ih#this0#0, _module.NodeAuto.Repr)): Set } 
        { $Unbox(read($Heap, $ih#this0#0, _module.NodeAuto.Repr)): Set } 
        { _module.NodeAuto.Valid($initHeapForallStmt#0, $ih#this0#0) } 
        { _module.NodeAuto.Valid($Heap, $ih#this0#0) } 
      $Is($ih#this0#0, Tclass._module.NodeAuto())
           && 
          _module.NodeAuto.Valid(old($Heap), $ih#this0#0)
           && 
          $Unbox(read(old($Heap), node#0, _module.NodeAuto.x)): int
             <= $Unbox(read($initHeapForallStmt#0, node#0, _module.NodeAuto.x)): int
           && _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(old($Heap), node#0, _module.NodeAuto.next), 
              read(old($Heap), node#0, _module.NodeAuto.Repr)), 
            #_System._tuple#2._#Make2(read($initHeapForallStmt#0, node#0, _module.NodeAuto.next), 
              read($initHeapForallStmt#0, node#0, _module.NodeAuto.Repr)))
           && (forall $o: ref, $f: Field :: 
            { read($initHeapForallStmt#0, $o, $f) } 
            $o != null
               ==> 
              Set#IsMember($Unbox(read(old($Heap), $ih#this0#0, _module.NodeAuto.Repr)): Set, $Box($o))
                 && $o != node#0
               ==> read($initHeapForallStmt#0, $o, $f) == read(old($Heap), $o, $f))
           && 
          Set#Subset($Unbox(read($initHeapForallStmt#0, $ih#this0#0, _module.NodeAuto.Repr)): Set, 
            $Unbox(read($initHeapForallStmt#0, this, _module.NodeAuto.Repr)): Set)
           && !Set#Subset($Unbox(read($initHeapForallStmt#0, this, _module.NodeAuto.Repr)): Set, 
            $Unbox(read($initHeapForallStmt#0, $ih#this0#0, _module.NodeAuto.Repr)): Set)
         ==> _module.NodeAuto.Valid($Heap, $ih#this0#0)
           && _module.NodeAuto.Sum($LS($LZ), $initHeapForallStmt#0, $ih#this0#0)
             <= _module.NodeAuto.Sum($LS($LZ), $Heap, $ih#this0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(224,5)
    newtype$check#0 := null;
    assume true;
    if ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(225,19)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id1472"} $Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        node##0_0 := node#0;
        assert {:id "id1473"} $IsAlloc($Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
          Tclass._module.NodeAuto?(), 
          old($Heap));
        assert {:id "id1474"} $IsAlloc(node#0, Tclass._module.NodeAuto(), old($Heap));
        assert {:id "id1475"} Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                _module.NodeAuto.Repr)): Set, 
            $Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set)
           && !Set#Subset($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                _module.NodeAuto.Repr)): Set);
        call {:id "id1476"} Call$$_module.NodeAuto.M__Lemma(old($Heap), $Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, node##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



procedure {:verboseName "NodeAuto.M_Lemma_Alt (well-formedness)"} CheckWellFormed$$_module.NodeAuto.M__Lemma__Alt(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NodeAuto())
         && $IsAlloc(this, Tclass._module.NodeAuto(), previous$Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.NodeAuto())
         && $IsAlloc(node#0, Tclass._module.NodeAuto(), previous$Heap));
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(node#0, Tclass._module.NodeAuto(), previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NodeAuto.M_Lemma_Alt (well-formedness)"} CheckWellFormed$$_module.NodeAuto.M__Lemma__Alt(previous$Heap: Heap, current$Heap: Heap, this: ref, node#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: ref;


    // AddMethodImpl: M_Lemma_Alt, CheckWellFormed$$_module.NodeAuto.M__Lemma__Alt
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id1477"} $IsAlloc(this, Tclass._module.NodeAuto(), old($Heap));
    assume _module.NodeAuto.Valid#canCall(old($Heap), this);
    assume {:id "id1478"} _module.NodeAuto.Valid(old($Heap), this);
    assert {:id "id1479"} node#0 != null;
    assert {:id "id1480"} $IsAlloc(node#0, Tclass._module.NodeAuto(), old($Heap));
    assert {:id "id1481"} node#0 != null;
    assume {:id "id1482"} $Unbox(read(old($Heap), node#0, _module.NodeAuto.x)): int
       <= $Unbox(read($Heap, node#0, _module.NodeAuto.x)): int;
    assert {:id "id1483"} node#0 != null;
    assert {:id "id1484"} $IsAlloc(node#0, Tclass._module.NodeAuto(), old($Heap));
    assert {:id "id1485"} node#0 != null;
    assert {:id "id1486"} $IsAlloc(node#0, Tclass._module.NodeAuto(), old($Heap));
    assert {:id "id1487"} node#0 != null;
    assert {:id "id1488"} node#0 != null;
    assume {:id "id1489"} _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(old($Heap), node#0, _module.NodeAuto.next), 
        read(old($Heap), node#0, _module.NodeAuto.Repr)), 
      #_System._tuple#2._#Make2(read($Heap, node#0, _module.NodeAuto.next), 
        read($Heap, node#0, _module.NodeAuto.Repr)));
    havoc n#0;
    assume $Is(n#0, Tclass._module.NodeAuto())
       && $IsAlloc(n#0, Tclass._module.NodeAuto(), $Heap);
    if (*)
    {
        assert {:id "id1490"} $IsAlloc(this, Tclass._module.NodeAuto(), old($Heap));
        assume {:id "id1491"} Set#IsMember($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, $Box(n#0));
        assume {:id "id1492"} n#0 != node#0;
        assert {:id "id1493"} n#0 != null;
        assert {:id "id1494"} n#0 != null;
        assert {:id "id1495"} $IsAlloc(n#0, Tclass._module.NodeAuto(), old($Heap));
        assume {:id "id1496"} $Unbox(read($Heap, n#0, _module.NodeAuto.x)): int
           == $Unbox(read(old($Heap), n#0, _module.NodeAuto.x)): int;
        assert {:id "id1497"} n#0 != null;
        assert {:id "id1498"} n#0 != null;
        assert {:id "id1499"} $IsAlloc(n#0, Tclass._module.NodeAuto(), old($Heap));
        assume {:id "id1500"} $Unbox(read($Heap, n#0, _module.NodeAuto.next)): ref
           == $Unbox(read(old($Heap), n#0, _module.NodeAuto.next)): ref;
        assert {:id "id1501"} n#0 != null;
        assert {:id "id1502"} n#0 != null;
        assert {:id "id1503"} $IsAlloc(n#0, Tclass._module.NodeAuto(), old($Heap));
        assume {:id "id1504"} Set#Equal($Unbox(read($Heap, n#0, _module.NodeAuto.Repr)): Set, 
          $Unbox(read(old($Heap), n#0, _module.NodeAuto.Repr)): Set);
    }
    else
    {
        assume {:id "id1505"} Set#IsMember($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, $Box(n#0))
             && n#0 != node#0
           ==> $Unbox(read($Heap, n#0, _module.NodeAuto.x)): int
               == $Unbox(read(old($Heap), n#0, _module.NodeAuto.x)): int
             && $Unbox(read($Heap, n#0, _module.NodeAuto.next)): ref
               == $Unbox(read(old($Heap), n#0, _module.NodeAuto.next)): ref
             && Set#Equal($Unbox(read($Heap, n#0, _module.NodeAuto.Repr)): Set, 
              $Unbox(read(old($Heap), n#0, _module.NodeAuto.Repr)): Set);
    }

    assume {:id "id1506"} (forall n#1: ref :: 
      { $Unbox(read(old($Heap), n#1, _module.NodeAuto.Repr)): Set } 
        { $Unbox(read($Heap, n#1, _module.NodeAuto.Repr)): Set } 
        { $Unbox(read(old($Heap), n#1, _module.NodeAuto.next)): ref } 
        { $Unbox(read($Heap, n#1, _module.NodeAuto.next)): ref } 
        { $Unbox(read(old($Heap), n#1, _module.NodeAuto.x)): int } 
        { $Unbox(read($Heap, n#1, _module.NodeAuto.x)): int } 
        { Set#IsMember($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, $Box(n#1)) } 
      $Is(n#1, Tclass._module.NodeAuto())
         ==> (Set#IsMember($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, $Box(n#1))
               && n#1 != node#0
             ==> $Unbox(read($Heap, n#1, _module.NodeAuto.x)): int
               == $Unbox(read(old($Heap), n#1, _module.NodeAuto.x)): int)
           && (Set#IsMember($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, $Box(n#1))
               && n#1 != node#0
             ==> $Unbox(read($Heap, n#1, _module.NodeAuto.next)): ref
               == $Unbox(read(old($Heap), n#1, _module.NodeAuto.next)): ref)
           && (Set#IsMember($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, $Box(n#1))
               && n#1 != node#0
             ==> Set#Equal($Unbox(read($Heap, n#1, _module.NodeAuto.Repr)): Set, 
              $Unbox(read(old($Heap), n#1, _module.NodeAuto.Repr)): Set)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.NodeAuto?(), $Heap);
    assume _module.NodeAuto.Valid#canCall($Heap, this);
    assume {:id "id1507"} _module.NodeAuto.Valid($Heap, this);
    assert {:id "id1508"} $IsAlloc(this, Tclass._module.NodeAuto(), old($Heap));
    assert {:id "id1509"} {:subsumption 0} _module.NodeAuto.Valid#canCall(old($Heap), this)
       ==> _module.NodeAuto.Valid(old($Heap), this)
         || Set#IsMember($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, $Box(this));
    assert {:id "id1510"} {:subsumption 0} _module.NodeAuto.Valid#canCall(old($Heap), this)
       ==> _module.NodeAuto.Valid(old($Heap), this)
         || !Set#IsMember($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, $Box(null));
    assert {:id "id1511"} {:subsumption 0} _module.NodeAuto.Valid#canCall(old($Heap), this)
       ==> _module.NodeAuto.Valid(old($Heap), this)
         || ($Unbox(read(old($Heap), this, _module.NodeAuto.next)): ref != null
           ==> Set#IsMember($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, 
            read(old($Heap), this, _module.NodeAuto.next)));
    assert {:id "id1512"} {:subsumption 0} _module.NodeAuto.Valid#canCall(old($Heap), this)
       ==> _module.NodeAuto.Valid(old($Heap), this)
         || ($Unbox(read(old($Heap), this, _module.NodeAuto.next)): ref != null
           ==> Set#Subset($Unbox(read(old($Heap), 
                $Unbox(read(old($Heap), this, _module.NodeAuto.next)): ref, 
                _module.NodeAuto.Repr)): Set, 
            $Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set));
    assert {:id "id1513"} {:subsumption 0} _module.NodeAuto.Valid#canCall(old($Heap), this)
       ==> _module.NodeAuto.Valid(old($Heap), this)
         || ($Unbox(read(old($Heap), this, _module.NodeAuto.next)): ref != null
           ==> !Set#IsMember($Unbox(read(old($Heap), 
                $Unbox(read(old($Heap), this, _module.NodeAuto.next)): ref, 
                _module.NodeAuto.Repr)): Set, 
            $Box(this)));
    assert {:id "id1514"} {:subsumption 0} _module.NodeAuto.Valid#canCall(old($Heap), this)
       ==> _module.NodeAuto.Valid(old($Heap), this)
         || ($Unbox(read(old($Heap), this, _module.NodeAuto.next)): ref != null
           ==> _module.NodeAuto.Valid(old($Heap), $Unbox(read(old($Heap), this, _module.NodeAuto.next)): ref));
    assert {:id "id1515"} {:subsumption 0} _module.NodeAuto.Valid#canCall(old($Heap), this)
       ==> _module.NodeAuto.Valid(old($Heap), this) || Lit(true);
    assume _module.NodeAuto.Valid(old($Heap), this);
    assume _module.NodeAuto.Sum#canCall(old($Heap), this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.NodeAuto?(), $Heap);
    assert {:id "id1516"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(this));
    assert {:id "id1517"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || !Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(null));
    assert {:id "id1518"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
           ==> Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
            read($Heap, this, _module.NodeAuto.next)));
    assert {:id "id1519"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
           ==> Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                _module.NodeAuto.Repr)): Set, 
            $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set));
    assert {:id "id1520"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
           ==> !Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                _module.NodeAuto.Repr)): Set, 
            $Box(this)));
    assert {:id "id1521"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this)
         || ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
           ==> _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref));
    assert {:id "id1522"} {:subsumption 0} _module.NodeAuto.Valid#canCall($Heap, this)
       ==> _module.NodeAuto.Valid($Heap, this) || Lit(true);
    assume _module.NodeAuto.Valid($Heap, this);
    assume _module.NodeAuto.Sum#canCall($Heap, this);
    assume {:id "id1523"} _module.NodeAuto.Sum($LS($LZ), old($Heap), this)
       <= _module.NodeAuto.Sum($LS($LZ), $Heap, this);
}



procedure {:verboseName "NodeAuto.M_Lemma_Alt (call)"} Call$$_module.NodeAuto.M__Lemma__Alt(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NodeAuto())
         && $IsAlloc(this, Tclass._module.NodeAuto(), previous$Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.NodeAuto())
         && $IsAlloc(node#0, Tclass._module.NodeAuto(), previous$Heap));
  requires $IsAlloc(node#0, Tclass._module.NodeAuto(), previous$Heap);
  // user-defined preconditions
  requires {:id "id1524"} _module.NodeAuto.Valid#canCall(previous$Heap, this)
     ==> _module.NodeAuto.Valid(previous$Heap, this)
       || Set#IsMember($Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set, $Box(this));
  requires {:id "id1525"} _module.NodeAuto.Valid#canCall(previous$Heap, this)
     ==> _module.NodeAuto.Valid(previous$Heap, this)
       || !Set#IsMember($Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set, $Box(null));
  requires {:id "id1526"} _module.NodeAuto.Valid#canCall(previous$Heap, this)
     ==> _module.NodeAuto.Valid(previous$Heap, this)
       || ($Unbox(read(previous$Heap, this, _module.NodeAuto.next)): ref != null
         ==> Set#IsMember($Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set, 
          read(previous$Heap, this, _module.NodeAuto.next)));
  requires {:id "id1527"} _module.NodeAuto.Valid#canCall(previous$Heap, this)
     ==> _module.NodeAuto.Valid(previous$Heap, this)
       || ($Unbox(read(previous$Heap, this, _module.NodeAuto.next)): ref != null
         ==> Set#Subset($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set));
  requires {:id "id1528"} _module.NodeAuto.Valid#canCall(previous$Heap, this)
     ==> _module.NodeAuto.Valid(previous$Heap, this)
       || ($Unbox(read(previous$Heap, this, _module.NodeAuto.next)): ref != null
         ==> !Set#IsMember($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Box(this)));
  requires {:id "id1529"} _module.NodeAuto.Valid#canCall(previous$Heap, this)
     ==> _module.NodeAuto.Valid(previous$Heap, this)
       || ($Unbox(read(previous$Heap, this, _module.NodeAuto.next)): ref != null
         ==> _module.NodeAuto.Valid(previous$Heap, $Unbox(read(previous$Heap, this, _module.NodeAuto.next)): ref));
  requires {:id "id1530"} _module.NodeAuto.Valid#canCall(previous$Heap, this)
     ==> _module.NodeAuto.Valid(previous$Heap, this) || Lit(true);
  requires {:id "id1531"} $Unbox(read(previous$Heap, node#0, _module.NodeAuto.x)): int
     <= $Unbox(read(current$Heap, node#0, _module.NodeAuto.x)): int;
  requires {:id "id1532"} _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(previous$Heap, node#0, _module.NodeAuto.next), 
      read(previous$Heap, node#0, _module.NodeAuto.Repr)), 
    #_System._tuple#2._#Make2(read(current$Heap, node#0, _module.NodeAuto.next), 
      read(current$Heap, node#0, _module.NodeAuto.Repr)));
  requires {:id "id1533"} (forall n#1: ref :: 
    { $Unbox(read(previous$Heap, n#1, _module.NodeAuto.Repr)): Set } 
      { $Unbox(read(current$Heap, n#1, _module.NodeAuto.Repr)): Set } 
      { $Unbox(read(previous$Heap, n#1, _module.NodeAuto.next)): ref } 
      { $Unbox(read(current$Heap, n#1, _module.NodeAuto.next)): ref } 
      { $Unbox(read(previous$Heap, n#1, _module.NodeAuto.x)): int } 
      { $Unbox(read(current$Heap, n#1, _module.NodeAuto.x)): int } 
      { Set#IsMember($Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set, $Box(n#1)) } 
    $Is(n#1, Tclass._module.NodeAuto())
       ==> (Set#IsMember($Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set, $Box(n#1))
             && n#1 != node#0
           ==> $Unbox(read(current$Heap, n#1, _module.NodeAuto.x)): int
             == $Unbox(read(previous$Heap, n#1, _module.NodeAuto.x)): int)
         && (Set#IsMember($Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set, $Box(n#1))
             && n#1 != node#0
           ==> $Unbox(read(current$Heap, n#1, _module.NodeAuto.next)): ref
             == $Unbox(read(previous$Heap, n#1, _module.NodeAuto.next)): ref)
         && (Set#IsMember($Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set, $Box(n#1))
             && n#1 != node#0
           ==> Set#Equal($Unbox(read(current$Heap, n#1, _module.NodeAuto.Repr)): Set, 
            $Unbox(read(previous$Heap, n#1, _module.NodeAuto.Repr)): Set)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.NodeAuto.Valid#canCall(current$Heap, this)
     && (_module.NodeAuto.Valid(current$Heap, this)
       ==> _module.NodeAuto.Sum#canCall(previous$Heap, this)
         && _module.NodeAuto.Sum#canCall(current$Heap, this));
  free ensures {:id "id1534"} _module.NodeAuto.Valid#canCall(current$Heap, this)
     && 
    _module.NodeAuto.Valid(current$Heap, this)
     && 
    Set#IsMember($Unbox(read(current$Heap, this, _module.NodeAuto.Repr)): Set, $Box(this))
     && !Set#IsMember($Unbox(read(current$Heap, this, _module.NodeAuto.Repr)): Set, $Box(null))
     && 
    ($Unbox(read(current$Heap, this, _module.NodeAuto.next)): ref != null
       ==> Set#IsMember($Unbox(read(current$Heap, this, _module.NodeAuto.Repr)): Set, 
          read(current$Heap, this, _module.NodeAuto.next))
         && 
        Set#Subset($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Unbox(read(current$Heap, this, _module.NodeAuto.Repr)): Set)
         && !Set#IsMember($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Box(this))
         && _module.NodeAuto.Valid(current$Heap, $Unbox(read(current$Heap, this, _module.NodeAuto.next)): ref))
     && true;
  ensures {:id "id1535"} _module.NodeAuto.Sum($LS($LS($LZ)), previous$Heap, this)
     <= _module.NodeAuto.Sum($LS($LS($LZ)), current$Heap, this);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NodeAuto.M_Lemma_Alt (correctness)"} Impl$$_module.NodeAuto.M__Lemma__Alt(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NodeAuto())
         && $IsAlloc(this, Tclass._module.NodeAuto(), previous$Heap), 
    node#0: ref
       where $Is(node#0, Tclass._module.NodeAuto())
         && $IsAlloc(node#0, Tclass._module.NodeAuto(), previous$Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(node#0, Tclass._module.NodeAuto(), previous$Heap);
  // user-defined preconditions
  free requires {:id "id1536"} _module.NodeAuto.Valid#canCall(previous$Heap, this)
     && 
    _module.NodeAuto.Valid(previous$Heap, this)
     && 
    Set#IsMember($Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set, $Box(this))
     && !Set#IsMember($Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set, $Box(null))
     && 
    ($Unbox(read(previous$Heap, this, _module.NodeAuto.next)): ref != null
       ==> Set#IsMember($Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set, 
          read(previous$Heap, this, _module.NodeAuto.next))
         && 
        Set#Subset($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set)
         && !Set#IsMember($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Box(this))
         && _module.NodeAuto.Valid(previous$Heap, $Unbox(read(previous$Heap, this, _module.NodeAuto.next)): ref))
     && true;
  requires {:id "id1537"} $Unbox(read(previous$Heap, node#0, _module.NodeAuto.x)): int
     <= $Unbox(read(current$Heap, node#0, _module.NodeAuto.x)): int;
  requires {:id "id1538"} _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(previous$Heap, node#0, _module.NodeAuto.next), 
      read(previous$Heap, node#0, _module.NodeAuto.Repr)), 
    #_System._tuple#2._#Make2(read(current$Heap, node#0, _module.NodeAuto.next), 
      read(current$Heap, node#0, _module.NodeAuto.Repr)));
  requires {:id "id1539"} (forall n#1: ref :: 
    { $Unbox(read(previous$Heap, n#1, _module.NodeAuto.Repr)): Set } 
      { $Unbox(read(current$Heap, n#1, _module.NodeAuto.Repr)): Set } 
      { $Unbox(read(previous$Heap, n#1, _module.NodeAuto.next)): ref } 
      { $Unbox(read(current$Heap, n#1, _module.NodeAuto.next)): ref } 
      { $Unbox(read(previous$Heap, n#1, _module.NodeAuto.x)): int } 
      { $Unbox(read(current$Heap, n#1, _module.NodeAuto.x)): int } 
      { Set#IsMember($Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set, $Box(n#1)) } 
    $Is(n#1, Tclass._module.NodeAuto())
       ==> (Set#IsMember($Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set, $Box(n#1))
             && n#1 != node#0
           ==> $Unbox(read(current$Heap, n#1, _module.NodeAuto.x)): int
             == $Unbox(read(previous$Heap, n#1, _module.NodeAuto.x)): int)
         && (Set#IsMember($Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set, $Box(n#1))
             && n#1 != node#0
           ==> $Unbox(read(current$Heap, n#1, _module.NodeAuto.next)): ref
             == $Unbox(read(previous$Heap, n#1, _module.NodeAuto.next)): ref)
         && (Set#IsMember($Unbox(read(previous$Heap, this, _module.NodeAuto.Repr)): Set, $Box(n#1))
             && n#1 != node#0
           ==> Set#Equal($Unbox(read(current$Heap, n#1, _module.NodeAuto.Repr)): Set, 
            $Unbox(read(previous$Heap, n#1, _module.NodeAuto.Repr)): Set)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.NodeAuto.Valid#canCall(current$Heap, this)
     && (_module.NodeAuto.Valid(current$Heap, this)
       ==> _module.NodeAuto.Sum#canCall(previous$Heap, this)
         && _module.NodeAuto.Sum#canCall(current$Heap, this));
  ensures {:id "id1540"} _module.NodeAuto.Valid#canCall(current$Heap, this)
     ==> _module.NodeAuto.Valid(current$Heap, this)
       || Set#IsMember($Unbox(read(current$Heap, this, _module.NodeAuto.Repr)): Set, $Box(this));
  ensures {:id "id1541"} _module.NodeAuto.Valid#canCall(current$Heap, this)
     ==> _module.NodeAuto.Valid(current$Heap, this)
       || !Set#IsMember($Unbox(read(current$Heap, this, _module.NodeAuto.Repr)): Set, $Box(null));
  ensures {:id "id1542"} _module.NodeAuto.Valid#canCall(current$Heap, this)
     ==> _module.NodeAuto.Valid(current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.NodeAuto.next)): ref != null
         ==> Set#IsMember($Unbox(read(current$Heap, this, _module.NodeAuto.Repr)): Set, 
          read(current$Heap, this, _module.NodeAuto.next)));
  ensures {:id "id1543"} _module.NodeAuto.Valid#canCall(current$Heap, this)
     ==> _module.NodeAuto.Valid(current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.NodeAuto.next)): ref != null
         ==> Set#Subset($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Unbox(read(current$Heap, this, _module.NodeAuto.Repr)): Set));
  ensures {:id "id1544"} _module.NodeAuto.Valid#canCall(current$Heap, this)
     ==> _module.NodeAuto.Valid(current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.NodeAuto.next)): ref != null
         ==> !Set#IsMember($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.NodeAuto.next)): ref, 
              _module.NodeAuto.Repr)): Set, 
          $Box(this)));
  ensures {:id "id1545"} _module.NodeAuto.Valid#canCall(current$Heap, this)
     ==> _module.NodeAuto.Valid(current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.NodeAuto.next)): ref != null
         ==> _module.NodeAuto.Valid(current$Heap, $Unbox(read(current$Heap, this, _module.NodeAuto.next)): ref));
  ensures {:id "id1546"} _module.NodeAuto.Valid#canCall(current$Heap, this)
     ==> _module.NodeAuto.Valid(current$Heap, this) || Lit(true);
  ensures {:id "id1547"} _module.NodeAuto.Sum($LS($LS($LZ)), previous$Heap, this)
     <= _module.NodeAuto.Sum($LS($LS($LZ)), current$Heap, this);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NodeAuto.M_Lemma_Alt (correctness)"} Impl$$_module.NodeAuto.M__Lemma__Alt(previous$Heap: Heap, current$Heap: Heap, this: ref, node#0: ref)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var newtype$check#0: ref;
  var node##0_0: ref;

    // AddMethodImpl: M_Lemma_Alt, Impl$$_module.NodeAuto.M__Lemma__Alt
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#this0#0: ref :: 
      { _module.NodeAuto.Sum($LS($LZ), $initHeapForallStmt#0, $ih#this0#0) } 
        { _module.NodeAuto.Sum($LS($LZ), $Heap, $ih#this0#0) } 
        { $Unbox(read($initHeapForallStmt#0, $ih#this0#0, _module.NodeAuto.Repr)): Set } 
        { $Unbox(read($Heap, $ih#this0#0, _module.NodeAuto.Repr)): Set } 
        { _module.NodeAuto.Valid($initHeapForallStmt#0, $ih#this0#0) } 
        { _module.NodeAuto.Valid($Heap, $ih#this0#0) } 
      $Is($ih#this0#0, Tclass._module.NodeAuto())
           && 
          _module.NodeAuto.Valid(old($Heap), $ih#this0#0)
           && 
          $Unbox(read(old($Heap), node#0, _module.NodeAuto.x)): int
             <= $Unbox(read($initHeapForallStmt#0, node#0, _module.NodeAuto.x)): int
           && _System.Tuple2#Equal(#_System._tuple#2._#Make2(read(old($Heap), node#0, _module.NodeAuto.next), 
              read(old($Heap), node#0, _module.NodeAuto.Repr)), 
            #_System._tuple#2._#Make2(read($initHeapForallStmt#0, node#0, _module.NodeAuto.next), 
              read($initHeapForallStmt#0, node#0, _module.NodeAuto.Repr)))
           && (forall n#2: ref :: 
            { $Unbox(read(old($Heap), n#2, _module.NodeAuto.Repr)): Set } 
              { $Unbox(read($initHeapForallStmt#0, n#2, _module.NodeAuto.Repr)): Set } 
              { $Unbox(read(old($Heap), n#2, _module.NodeAuto.next)): ref } 
              { $Unbox(read($initHeapForallStmt#0, n#2, _module.NodeAuto.next)): ref } 
              { $Unbox(read(old($Heap), n#2, _module.NodeAuto.x)): int } 
              { $Unbox(read($initHeapForallStmt#0, n#2, _module.NodeAuto.x)): int } 
              { Set#IsMember($Unbox(read(old($Heap), $ih#this0#0, _module.NodeAuto.Repr)): Set, $Box(n#2)) } 
            $Is(n#2, Tclass._module.NodeAuto())
               ==> (Set#IsMember($Unbox(read(old($Heap), $ih#this0#0, _module.NodeAuto.Repr)): Set, $Box(n#2))
                     && n#2 != node#0
                   ==> $Unbox(read($initHeapForallStmt#0, n#2, _module.NodeAuto.x)): int
                     == $Unbox(read(old($Heap), n#2, _module.NodeAuto.x)): int)
                 && (Set#IsMember($Unbox(read(old($Heap), $ih#this0#0, _module.NodeAuto.Repr)): Set, $Box(n#2))
                     && n#2 != node#0
                   ==> $Unbox(read($initHeapForallStmt#0, n#2, _module.NodeAuto.next)): ref
                     == $Unbox(read(old($Heap), n#2, _module.NodeAuto.next)): ref)
                 && (Set#IsMember($Unbox(read(old($Heap), $ih#this0#0, _module.NodeAuto.Repr)): Set, $Box(n#2))
                     && n#2 != node#0
                   ==> Set#Equal($Unbox(read($initHeapForallStmt#0, n#2, _module.NodeAuto.Repr)): Set, 
                    $Unbox(read(old($Heap), n#2, _module.NodeAuto.Repr)): Set)))
           && 
          Set#Subset($Unbox(read($initHeapForallStmt#0, $ih#this0#0, _module.NodeAuto.Repr)): Set, 
            $Unbox(read($initHeapForallStmt#0, this, _module.NodeAuto.Repr)): Set)
           && !Set#Subset($Unbox(read($initHeapForallStmt#0, this, _module.NodeAuto.Repr)): Set, 
            $Unbox(read($initHeapForallStmt#0, $ih#this0#0, _module.NodeAuto.Repr)): Set)
         ==> _module.NodeAuto.Valid($Heap, $ih#this0#0)
           && _module.NodeAuto.Sum($LS($LZ), $initHeapForallStmt#0, $ih#this0#0)
             <= _module.NodeAuto.Sum($LS($LZ), $Heap, $ih#this0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(235,5)
    newtype$check#0 := null;
    assume true;
    if ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(236,23)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id1548"} $Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        node##0_0 := node#0;
        assert {:id "id1549"} $IsAlloc($Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
          Tclass._module.NodeAuto?(), 
          old($Heap));
        assert {:id "id1550"} $IsAlloc(node#0, Tclass._module.NodeAuto(), old($Heap));
        assert {:id "id1551"} Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                _module.NodeAuto.Repr)): Set, 
            $Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set)
           && !Set#Subset($Unbox(read(old($Heap), this, _module.NodeAuto.Repr)): Set, 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                _module.NodeAuto.Repr)): Set);
        call {:id "id1552"} Call$$_module.NodeAuto.M__Lemma__Alt(old($Heap), $Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, node##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



const _module.NodeAuto.Repr: Field
uses {
axiom FDim(_module.NodeAuto.Repr) == 0
   && FieldOfDecl(class._module.NodeAuto?, field$Repr) == _module.NodeAuto.Repr
   && $IsGhostField(_module.NodeAuto.Repr);
}

// NodeAuto.Repr: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.NodeAuto.Repr)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.NodeAuto?()
     ==> $Is($Unbox(read($h, $o, _module.NodeAuto.Repr)): Set, TSet(Tclass._System.object?())));

// NodeAuto.Repr: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.NodeAuto.Repr)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.NodeAuto?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.NodeAuto.Repr)): Set, 
      TSet(Tclass._System.object?()), 
      $h));

// function declaration for _module.NodeAuto.Valid
function _module.NodeAuto.Valid($heap: Heap, this: ref) : bool
uses {
// consequence axiom for _module.NodeAuto.Valid
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.NodeAuto.Valid($Heap, this) } 
    _module.NodeAuto.Valid#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.NodeAuto())
           && $IsAlloc(this, Tclass._module.NodeAuto(), $Heap))
       ==> 
      _module.NodeAuto.Valid($Heap, this)
       ==> Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(this)));
// definition axiom for _module.NodeAuto.Valid (revealed)
axiom {:id "id1553"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.NodeAuto.Valid($Heap, this), $IsGoodHeap($Heap) } 
    _module.NodeAuto.Valid#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.NodeAuto())
           && $IsAlloc(this, Tclass._module.NodeAuto(), $Heap))
       ==> (Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(this))
           ==> 
          !Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(null))
           ==> 
          $Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
            read($Heap, this, _module.NodeAuto.next))
           ==> 
          Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                _module.NodeAuto.Repr)): Set, 
            $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set)
           ==> 
          !Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                _module.NodeAuto.Repr)): Set, 
            $Box(this))
           ==> _module.NodeAuto.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref))
         && _module.NodeAuto.Valid($Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(this))
             && !Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(null))
             && 
            ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
                  read($Heap, this, _module.NodeAuto.next))
                 && 
                Set#Subset($Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                      _module.NodeAuto.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                      _module.NodeAuto.Repr)): Set, 
                  $Box(this))
                 && _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref))
             && true));
}

function _module.NodeAuto.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.NodeAuto.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.NodeAuto.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.NodeAuto())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.NodeAuto.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.NodeAuto.Valid($h0, this) == _module.NodeAuto.Valid($h1, this));

function _module.NodeAuto.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.NodeAuto.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.NodeAuto.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.NodeAuto())
       && $IsAlloc(this, Tclass._module.NodeAuto(), $Heap)
     ==> _module.NodeAuto.Valid#requires($Heap, this) == true);

procedure {:verboseName "NodeAuto.Valid (well-formedness)"} CheckWellformed$$_module.NodeAuto.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NodeAuto())
         && $IsAlloc(this, Tclass._module.NodeAuto(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id1554"} _module.NodeAuto.Valid($Heap, this)
     ==> Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(this));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NodeAuto.Valid (well-formedness)"} CheckWellformed$$_module.NodeAuto.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;
  var b$reqreads#8: bool;
  var b$reqreads#9: bool;
  var b$reqreads#10: bool;
  var b$reqreads#11: bool;
  var b$reqreads#12: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;
    b$reqreads#7 := true;
    b$reqreads#8 := true;
    b$reqreads#9 := true;
    b$reqreads#10 := true;
    b$reqreads#11 := true;
    b$reqreads#12 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.NodeAuto.Repr];
    assert {:id "id1555"} b$reqreads#0;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.NodeAuto?(), $Heap);
            assert {:id "id1556"} this == this
               || (Set#Subset(Set#Union($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))))
                 && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this)))));
            assume this == this || _module.NodeAuto.Valid#canCall($Heap, this);
            assume {:id "id1557"} _module.NodeAuto.Valid($Heap, this);
            assume {:id "id1558"} Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(this));
        }
        else
        {
            assume {:id "id1559"} _module.NodeAuto.Valid($Heap, this)
               ==> Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(this));
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#1 := $_ReadsFrame[this, _module.NodeAuto.Repr];
        if (Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(this)))
        {
            newtype$check#0 := null;
            b$reqreads#2 := $_ReadsFrame[this, _module.NodeAuto.Repr];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(this))
           && !Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(null)))
        {
            b$reqreads#3 := $_ReadsFrame[this, _module.NodeAuto.next];
            newtype$check#1 := null;
            if ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null)
            {
                b$reqreads#4 := $_ReadsFrame[this, _module.NodeAuto.next];
                b$reqreads#5 := $_ReadsFrame[this, _module.NodeAuto.Repr];
                if (Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
                  read($Heap, this, _module.NodeAuto.next)))
                {
                    b$reqreads#6 := $_ReadsFrame[this, _module.NodeAuto.next];
                    assert {:id "id1560"} $Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null;
                    b$reqreads#7 := $_ReadsFrame[$Unbox(read($Heap, this, _module.NodeAuto.next)): ref, _module.NodeAuto.Repr];
                    b$reqreads#8 := $_ReadsFrame[this, _module.NodeAuto.Repr];
                    if (Set#Subset($Unbox(read($Heap, 
                          $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                          _module.NodeAuto.Repr)): Set, 
                      $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set))
                    {
                        b$reqreads#9 := $_ReadsFrame[this, _module.NodeAuto.next];
                        assert {:id "id1561"} $Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null;
                        b$reqreads#10 := $_ReadsFrame[$Unbox(read($Heap, this, _module.NodeAuto.next)): ref, _module.NodeAuto.Repr];
                    }
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
                    read($Heap, this, _module.NodeAuto.next))
                   && 
                  Set#Subset($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                        _module.NodeAuto.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                        _module.NodeAuto.Repr)): Set, 
                    $Box(this)))
                {
                    b$reqreads#11 := $_ReadsFrame[this, _module.NodeAuto.next];
                    assert {:id "id1562"} $Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox(read($Heap, this, _module.NodeAuto.next), Tclass._module.NodeAuto?(), $Heap);
                    b$reqreads#12 := (forall $o: ref, $f: Field :: 
                      $o != null
                           && $Unbox(read($Heap, $o, alloc)): bool
                           && ($o == $Unbox(read($Heap, this, _module.NodeAuto.next)): ref
                             || Set#IsMember($Unbox(read($Heap, 
                                  $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                                  _module.NodeAuto.Repr)): Set, 
                              $Box($o)))
                         ==> $_ReadsFrame[$o, $f]);
                    assert {:id "id1563"} Set#Subset(Set#Union($Unbox(read($Heap, 
                              $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                              _module.NodeAuto.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.NodeAuto.next))), 
                        Set#Union($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))))
                       && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                        Set#Union($Unbox(read($Heap, 
                              $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                              _module.NodeAuto.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.NodeAuto.next))));
                    assume _module.NodeAuto.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref);
                }
            }

            if ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
                  read($Heap, this, _module.NodeAuto.next))
                 && 
                Set#Subset($Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                      _module.NodeAuto.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                      _module.NodeAuto.Repr)): Set, 
                  $Box(this))
                 && _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref))
            {
            }
        }

        assume {:id "id1564"} _module.NodeAuto.Valid($Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(this))
             && !Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(null))
             && 
            ($Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
                  read($Heap, this, _module.NodeAuto.next))
                 && 
                Set#Subset($Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                      _module.NodeAuto.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                      _module.NodeAuto.Repr)): Set, 
                  $Box(this))
                 && _module.NodeAuto.Valid($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref))
             && true);
        assume Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(this))
           ==> 
          !Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, $Box(null))
           ==> 
          $Unbox(read($Heap, this, _module.NodeAuto.next)): ref != null
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set, 
            read($Heap, this, _module.NodeAuto.next))
           ==> 
          Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                _module.NodeAuto.Repr)): Set, 
            $Unbox(read($Heap, this, _module.NodeAuto.Repr)): Set)
           ==> 
          !Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.NodeAuto.next)): ref, 
                _module.NodeAuto.Repr)): Set, 
            $Box(this))
           ==> _module.NodeAuto.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.NodeAuto.next)): ref);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.NodeAuto.Valid($Heap, this), TBool);
        assert {:id "id1565"} b$reqreads#1;
        assert {:id "id1566"} b$reqreads#2;
        assert {:id "id1567"} b$reqreads#3;
        assert {:id "id1568"} b$reqreads#4;
        assert {:id "id1569"} b$reqreads#5;
        assert {:id "id1570"} b$reqreads#6;
        assert {:id "id1571"} b$reqreads#7;
        assert {:id "id1572"} b$reqreads#8;
        assert {:id "id1573"} b$reqreads#9;
        assert {:id "id1574"} b$reqreads#10;
        assert {:id "id1575"} b$reqreads#11;
        assert {:id "id1576"} b$reqreads#12;
        return;

        assume false;
    }
}



// $Is axiom for non-null type _module.NodeAuto
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.NodeAuto()) } 
    { $Is(c#0, Tclass._module.NodeAuto?()) } 
  $Is(c#0, Tclass._module.NodeAuto())
     <==> $Is(c#0, Tclass._module.NodeAuto?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.NodeAuto
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.NodeAuto(), $h) } 
    { $IsAlloc(c#0, Tclass._module.NodeAuto?(), $h) } 
  $IsAlloc(c#0, Tclass._module.NodeAuto(), $h)
     <==> $IsAlloc(c#0, Tclass._module.NodeAuto?(), $h));

const unique class.TwoStateAt.__default: ClassName;

// function declaration for TwoStateAt._default.SP
function TwoStateAt.__default.SP(TwoStateAt._default.SP$Y: Ty, $prevHeap: Heap, $heap: Heap, c#0: ref, y#0: Box)
   : int;

function TwoStateAt.__default.SP#canCall(TwoStateAt._default.SP$Y: Ty, $prevHeap: Heap, $heap: Heap, c#0: ref, y#0: Box)
   : bool;

function Tclass.TwoStateAt.Cell() : Ty
uses {
// Tclass.TwoStateAt.Cell Tag
axiom Tag(Tclass.TwoStateAt.Cell()) == Tagclass.TwoStateAt.Cell
   && TagFamily(Tclass.TwoStateAt.Cell()) == tytagFamily$Cell;
}

const unique Tagclass.TwoStateAt.Cell: TyTag;

// Box/unbox axiom for Tclass.TwoStateAt.Cell
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TwoStateAt.Cell()) } 
  $IsBox(bx, Tclass.TwoStateAt.Cell())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.TwoStateAt.Cell()));

// frame axiom for TwoStateAt.__default.SP
axiom (forall TwoStateAt._default.SP$Y: Ty, 
    $prevHeap: Heap, 
    $h0: Heap, 
    $h1: Heap, 
    c#0: ref, 
    y#0: Box :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.__default.SP(TwoStateAt._default.SP$Y, $prevHeap, $h1, c#0, y#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (TwoStateAt.__default.SP#canCall(TwoStateAt._default.SP$Y, $prevHeap, $h0, c#0, y#0)
         || ($Is(c#0, Tclass.TwoStateAt.Cell()) && $IsBox(y#0, TwoStateAt._default.SP$Y)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == c#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TwoStateAt.__default.SP(TwoStateAt._default.SP$Y, $prevHeap, $h0, c#0, y#0)
       == TwoStateAt.__default.SP(TwoStateAt._default.SP$Y, $prevHeap, $h1, c#0, y#0));

function TwoStateAt.__default.SP#requires(Ty, Heap, Heap, ref, Box) : bool;

// #requires axiom for TwoStateAt.__default.SP
axiom (forall TwoStateAt._default.SP$Y: Ty, $prevHeap: Heap, $Heap: Heap, c#0: ref, y#0: Box :: 
  { TwoStateAt.__default.SP#requires(TwoStateAt._default.SP$Y, $prevHeap, $Heap, c#0, y#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $Is(c#0, Tclass.TwoStateAt.Cell())
       && $IsBox(y#0, TwoStateAt._default.SP$Y)
     ==> TwoStateAt.__default.SP#requires(TwoStateAt._default.SP$Y, $prevHeap, $Heap, c#0, y#0)
       == ($IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $prevHeap)
         && $IsAllocBox(y#0, TwoStateAt._default.SP$Y, $prevHeap)));

// definition axiom for TwoStateAt.__default.SP (revealed)
axiom {:id "id1577"} (forall TwoStateAt._default.SP$Y: Ty, $prevHeap: Heap, $Heap: Heap, c#0: ref, y#0: Box :: 
  { TwoStateAt.__default.SP(TwoStateAt._default.SP$Y, $prevHeap, $Heap, c#0, y#0), $IsGoodHeap($Heap) } 
  TwoStateAt.__default.SP#canCall(TwoStateAt._default.SP$Y, $prevHeap, $Heap, c#0, y#0)
       || (
        $IsGoodHeap($prevHeap)
         && $IsGoodHeap($Heap)
         && $HeapSucc($prevHeap, $Heap)
         && $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsBox(y#0, TwoStateAt._default.SP$Y))
     ==> TwoStateAt.__default.SP(TwoStateAt._default.SP$Y, $prevHeap, $Heap, c#0, y#0)
       == $Unbox(read($prevHeap, c#0, TwoStateAt.Cell.data)): int
         + $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int);

// function declaration for TwoStateAt._default.Opaque
function TwoStateAt.__default.Opaque($reveal: bool, $prevHeap: Heap, $heap: Heap, c#0: ref) : int;

function TwoStateAt.__default.Opaque#canCall($prevHeap: Heap, $heap: Heap, c#0: ref) : bool;

// frame axiom for TwoStateAt.__default.Opaque
axiom (forall $reveal: bool, $prevHeap: Heap, $h0: Heap, $h1: Heap, c#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.__default.Opaque($reveal, $prevHeap, $h1, c#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (TwoStateAt.__default.Opaque#canCall($prevHeap, $h0, c#0)
         || $Is(c#0, Tclass.TwoStateAt.Cell()))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: true)
     ==> TwoStateAt.__default.Opaque($reveal, $prevHeap, $h0, c#0)
       == TwoStateAt.__default.Opaque($reveal, $prevHeap, $h1, c#0));

function TwoStateAt.__default.Opaque#requires(Heap, Heap, ref) : bool;

// #requires axiom for TwoStateAt.__default.Opaque
axiom (forall $prevHeap: Heap, $Heap: Heap, c#0: ref :: 
  { TwoStateAt.__default.Opaque#requires($prevHeap, $Heap, c#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $Is(c#0, Tclass.TwoStateAt.Cell())
     ==> TwoStateAt.__default.Opaque#requires($prevHeap, $Heap, c#0)
       == $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $prevHeap));

// definition axiom for TwoStateAt.__default.Opaque (revealed)
axiom {:id "id1578"} (forall $prevHeap: Heap, $Heap: Heap, c#0: ref :: 
  { TwoStateAt.__default.Opaque(true, $prevHeap, $Heap, c#0), $IsGoodHeap($Heap) } 
  TwoStateAt.__default.Opaque#canCall($prevHeap, $Heap, c#0)
       || (
        $IsGoodHeap($prevHeap)
         && $IsGoodHeap($Heap)
         && $HeapSucc($prevHeap, $Heap)
         && $Is(c#0, Tclass.TwoStateAt.Cell()))
     ==> TwoStateAt.__default.Opaque(true, $prevHeap, $Heap, c#0)
       == $Unbox(read($prevHeap, c#0, TwoStateAt.Cell.data)): int + 12);

// definition axiom for TwoStateAt.__default.Opaque for all literals (revealed)
axiom {:id "id1579"} (forall $prevHeap: Heap, $Heap: Heap, c#0: ref :: 
  {:weight 3} { TwoStateAt.__default.Opaque(true, $prevHeap, $Heap, Lit(c#0)), $IsGoodHeap($Heap) } 
  TwoStateAt.__default.Opaque#canCall($prevHeap, $Heap, Lit(c#0))
       || (
        $IsGoodHeap($prevHeap)
         && $IsGoodHeap($Heap)
         && $HeapSucc($prevHeap, $Heap)
         && $Is(c#0, Tclass.TwoStateAt.Cell()))
     ==> TwoStateAt.__default.Opaque(true, $prevHeap, $Heap, Lit(c#0))
       == $Unbox(read($prevHeap, Lit(c#0), TwoStateAt.Cell.data)): int + 12);

// function declaration for TwoStateAt._default.FuncUseOpaque
function TwoStateAt.__default.FuncUseOpaque($prevHeap: Heap, $heap: Heap, c#0: ref, b#0: bool) : int;

function TwoStateAt.__default.FuncUseOpaque#canCall($prevHeap: Heap, $heap: Heap, c#0: ref, b#0: bool) : bool;

// frame axiom for TwoStateAt.__default.FuncUseOpaque
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, c#0: ref, b#0: bool :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.__default.FuncUseOpaque($prevHeap, $h1, c#0, b#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (TwoStateAt.__default.FuncUseOpaque#canCall($prevHeap, $h0, c#0, b#0)
         || $Is(c#0, Tclass.TwoStateAt.Cell()))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: true)
     ==> TwoStateAt.__default.FuncUseOpaque($prevHeap, $h0, c#0, b#0)
       == TwoStateAt.__default.FuncUseOpaque($prevHeap, $h1, c#0, b#0));

function TwoStateAt.__default.FuncUseOpaque#requires(Heap, Heap, ref, bool) : bool;

// #requires axiom for TwoStateAt.__default.FuncUseOpaque
axiom (forall $prevHeap: Heap, $Heap: Heap, c#0: ref, b#0: bool :: 
  { TwoStateAt.__default.FuncUseOpaque#requires($prevHeap, $Heap, c#0, b#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $Is(c#0, Tclass.TwoStateAt.Cell())
     ==> TwoStateAt.__default.FuncUseOpaque#requires($prevHeap, $Heap, c#0, b#0)
       == ($IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $prevHeap)
         && $IsAlloc(b#0, TBool, $prevHeap)));

// definition axiom for TwoStateAt.__default.FuncUseOpaque (revealed)
axiom {:id "id1580"} (forall $prevHeap: Heap, $Heap: Heap, c#0: ref, b#0: bool :: 
  { TwoStateAt.__default.FuncUseOpaque($prevHeap, $Heap, c#0, b#0), $IsGoodHeap($Heap) } 
  TwoStateAt.__default.FuncUseOpaque#canCall($prevHeap, $Heap, c#0, b#0)
       || (
        $IsGoodHeap($prevHeap)
         && $IsGoodHeap($Heap)
         && $HeapSucc($prevHeap, $Heap)
         && $Is(c#0, Tclass.TwoStateAt.Cell()))
     ==> TwoStateAt.__default.FuncUseOpaque($prevHeap, $Heap, c#0, b#0) == LitInt(10));

// definition axiom for TwoStateAt.__default.FuncUseOpaque for all literals (revealed)
axiom {:id "id1581"} (forall $prevHeap: Heap, $Heap: Heap, c#0: ref, b#0: bool :: 
  {:weight 3} { TwoStateAt.__default.FuncUseOpaque($prevHeap, $Heap, Lit(c#0), Lit(b#0)), $IsGoodHeap($Heap) } 
  TwoStateAt.__default.FuncUseOpaque#canCall($prevHeap, $Heap, Lit(c#0), Lit(b#0))
       || (
        $IsGoodHeap($prevHeap)
         && $IsGoodHeap($Heap)
         && $HeapSucc($prevHeap, $Heap)
         && $Is(c#0, Tclass.TwoStateAt.Cell()))
     ==> TwoStateAt.__default.FuncUseOpaque($prevHeap, $Heap, Lit(c#0), Lit(b#0))
       == LitInt(10));

// function declaration for TwoStateAt._default.FuncMoreParams
function TwoStateAt.__default.FuncMoreParams($prevHeap: Heap, $heap: Heap, c#0: ref, d#0: ref) : int;

function TwoStateAt.__default.FuncMoreParams#canCall($prevHeap: Heap, $heap: Heap, c#0: ref, d#0: ref) : bool;

// frame axiom for TwoStateAt.__default.FuncMoreParams
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, c#0: ref, d#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.__default.FuncMoreParams($prevHeap, $h1, c#0, d#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (TwoStateAt.__default.FuncMoreParams#canCall($prevHeap, $h0, c#0, d#0)
         || ($Is(c#0, Tclass.TwoStateAt.Cell()) && $Is(d#0, Tclass.TwoStateAt.Cell())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: true)
     ==> TwoStateAt.__default.FuncMoreParams($prevHeap, $h0, c#0, d#0)
       == TwoStateAt.__default.FuncMoreParams($prevHeap, $h1, c#0, d#0));

function TwoStateAt.__default.FuncMoreParams#requires(Heap, Heap, ref, ref) : bool;

// #requires axiom for TwoStateAt.__default.FuncMoreParams
axiom (forall $prevHeap: Heap, $Heap: Heap, c#0: ref, d#0: ref :: 
  { TwoStateAt.__default.FuncMoreParams#requires($prevHeap, $Heap, c#0, d#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $Is(c#0, Tclass.TwoStateAt.Cell())
       && $Is(d#0, Tclass.TwoStateAt.Cell())
     ==> TwoStateAt.__default.FuncMoreParams#requires($prevHeap, $Heap, c#0, d#0)
       == $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $prevHeap));

// definition axiom for TwoStateAt.__default.FuncMoreParams (revealed)
axiom {:id "id1582"} (forall $prevHeap: Heap, $Heap: Heap, c#0: ref, d#0: ref :: 
  { TwoStateAt.__default.FuncMoreParams($prevHeap, $Heap, c#0, d#0), $IsGoodHeap($Heap) } 
  TwoStateAt.__default.FuncMoreParams#canCall($prevHeap, $Heap, c#0, d#0)
       || (
        $IsGoodHeap($prevHeap)
         && $IsGoodHeap($Heap)
         && $HeapSucc($prevHeap, $Heap)
         && $Is(c#0, Tclass.TwoStateAt.Cell())
         && $Is(d#0, Tclass.TwoStateAt.Cell()))
     ==> TwoStateAt.__default.FuncMoreParams($prevHeap, $Heap, c#0, d#0) == LitInt(7));

// definition axiom for TwoStateAt.__default.FuncMoreParams for all literals (revealed)
axiom {:id "id1583"} (forall $prevHeap: Heap, $Heap: Heap, c#0: ref, d#0: ref :: 
  {:weight 3} { TwoStateAt.__default.FuncMoreParams($prevHeap, $Heap, Lit(c#0), Lit(d#0)), $IsGoodHeap($Heap) } 
  TwoStateAt.__default.FuncMoreParams#canCall($prevHeap, $Heap, Lit(c#0), Lit(d#0))
       || (
        $IsGoodHeap($prevHeap)
         && $IsGoodHeap($Heap)
         && $HeapSucc($prevHeap, $Heap)
         && $Is(c#0, Tclass.TwoStateAt.Cell())
         && $Is(d#0, Tclass.TwoStateAt.Cell()))
     ==> TwoStateAt.__default.FuncMoreParams($prevHeap, $Heap, Lit(c#0), Lit(d#0))
       == LitInt(7));

const unique class.TwoStateAt.Cell?: ClassName;

function Tclass.TwoStateAt.Cell?() : Ty
uses {
// Tclass.TwoStateAt.Cell? Tag
axiom Tag(Tclass.TwoStateAt.Cell?()) == Tagclass.TwoStateAt.Cell?
   && TagFamily(Tclass.TwoStateAt.Cell?()) == tytagFamily$Cell;
}

const unique Tagclass.TwoStateAt.Cell?: TyTag;

// Box/unbox axiom for Tclass.TwoStateAt.Cell?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TwoStateAt.Cell?()) } 
  $IsBox(bx, Tclass.TwoStateAt.Cell?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.TwoStateAt.Cell?()));

// $Is axiom for class Cell
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TwoStateAt.Cell?()) } 
  $Is($o, Tclass.TwoStateAt.Cell?())
     <==> $o == null || dtype($o) == Tclass.TwoStateAt.Cell?());

// $IsAlloc axiom for class Cell
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TwoStateAt.Cell?(), $h) } 
  $IsAlloc($o, Tclass.TwoStateAt.Cell?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const TwoStateAt.Cell.data: Field
uses {
axiom FDim(TwoStateAt.Cell.data) == 0
   && FieldOfDecl(class.TwoStateAt.Cell?, field$data) == TwoStateAt.Cell.data
   && !$IsGhostField(TwoStateAt.Cell.data);
}

// Cell.data: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, TwoStateAt.Cell.data)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.TwoStateAt.Cell?()
     ==> $Is($Unbox(read($h, $o, TwoStateAt.Cell.data)): int, TInt));

// Cell.data: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, TwoStateAt.Cell.data)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.TwoStateAt.Cell?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, TwoStateAt.Cell.data)): int, TInt, $h));

// function declaration for TwoStateAt.Cell.Sum
function TwoStateAt.Cell.Sum(TwoStateAt.Cell.Sum$Y: Ty, $prevHeap: Heap, $heap: Heap, c#0: ref, y#0: Box)
   : int;

function TwoStateAt.Cell.Sum#canCall(TwoStateAt.Cell.Sum$Y: Ty, $prevHeap: Heap, $heap: Heap, c#0: ref, y#0: Box)
   : bool;

// frame axiom for TwoStateAt.Cell.Sum
axiom (forall TwoStateAt.Cell.Sum$Y: Ty, 
    $prevHeap: Heap, 
    $h0: Heap, 
    $h1: Heap, 
    c#0: ref, 
    y#0: Box :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.Cell.Sum(TwoStateAt.Cell.Sum$Y, $prevHeap, $h1, c#0, y#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (TwoStateAt.Cell.Sum#canCall(TwoStateAt.Cell.Sum$Y, $prevHeap, $h0, c#0, y#0)
         || ($Is(c#0, Tclass.TwoStateAt.Cell()) && $IsBox(y#0, TwoStateAt.Cell.Sum$Y)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == c#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TwoStateAt.Cell.Sum(TwoStateAt.Cell.Sum$Y, $prevHeap, $h0, c#0, y#0)
       == TwoStateAt.Cell.Sum(TwoStateAt.Cell.Sum$Y, $prevHeap, $h1, c#0, y#0));

function TwoStateAt.Cell.Sum#requires(Ty, Heap, Heap, ref, Box) : bool;

// #requires axiom for TwoStateAt.Cell.Sum
axiom (forall TwoStateAt.Cell.Sum$Y: Ty, $prevHeap: Heap, $Heap: Heap, c#0: ref, y#0: Box :: 
  { TwoStateAt.Cell.Sum#requires(TwoStateAt.Cell.Sum$Y, $prevHeap, $Heap, c#0, y#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $Is(c#0, Tclass.TwoStateAt.Cell())
       && $IsBox(y#0, TwoStateAt.Cell.Sum$Y)
     ==> TwoStateAt.Cell.Sum#requires(TwoStateAt.Cell.Sum$Y, $prevHeap, $Heap, c#0, y#0)
       == ($IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $prevHeap)
         && $IsAllocBox(y#0, TwoStateAt.Cell.Sum$Y, $prevHeap)));

// definition axiom for TwoStateAt.Cell.Sum (revealed)
axiom {:id "id1584"} (forall TwoStateAt.Cell.Sum$Y: Ty, $prevHeap: Heap, $Heap: Heap, c#0: ref, y#0: Box :: 
  { TwoStateAt.Cell.Sum(TwoStateAt.Cell.Sum$Y, $prevHeap, $Heap, c#0, y#0), $IsGoodHeap($Heap) } 
  TwoStateAt.Cell.Sum#canCall(TwoStateAt.Cell.Sum$Y, $prevHeap, $Heap, c#0, y#0)
       || (
        $IsGoodHeap($prevHeap)
         && $IsGoodHeap($Heap)
         && $HeapSucc($prevHeap, $Heap)
         && $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsBox(y#0, TwoStateAt.Cell.Sum$Y))
     ==> TwoStateAt.Cell.Plus#canCall(TwoStateAt.Cell.Sum$Y, $prevHeap, $Heap, c#0, y#0)
       && TwoStateAt.Cell.Sum(TwoStateAt.Cell.Sum$Y, $prevHeap, $Heap, c#0, y#0)
         == TwoStateAt.Cell.Plus(TwoStateAt.Cell.Sum$Y, $prevHeap, $Heap, c#0, y#0));

// function declaration for TwoStateAt.Cell.Plus
function TwoStateAt.Cell.Plus(TwoStateAt.Cell.Plus$Y: Ty, $prevHeap: Heap, $heap: Heap, this: ref, y#0: Box)
   : int;

function TwoStateAt.Cell.Plus#canCall(TwoStateAt.Cell.Plus$Y: Ty, $prevHeap: Heap, $heap: Heap, this: ref, y#0: Box)
   : bool;

// frame axiom for TwoStateAt.Cell.Plus
axiom (forall TwoStateAt.Cell.Plus$Y: Ty, 
    $prevHeap: Heap, 
    $h0: Heap, 
    $h1: Heap, 
    this: ref, 
    y#0: Box :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.Cell.Plus(TwoStateAt.Cell.Plus$Y, $prevHeap, $h1, this, y#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.TwoStateAt.Cell())
       && (TwoStateAt.Cell.Plus#canCall(TwoStateAt.Cell.Plus$Y, $prevHeap, $h0, this, y#0)
         || $IsBox(y#0, TwoStateAt.Cell.Plus$Y))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TwoStateAt.Cell.Plus(TwoStateAt.Cell.Plus$Y, $prevHeap, $h0, this, y#0)
       == TwoStateAt.Cell.Plus(TwoStateAt.Cell.Plus$Y, $prevHeap, $h1, this, y#0));

function TwoStateAt.Cell.Plus#requires(Ty, Heap, Heap, ref, Box) : bool;

// #requires axiom for TwoStateAt.Cell.Plus
axiom (forall TwoStateAt.Cell.Plus$Y: Ty, $prevHeap: Heap, $Heap: Heap, this: ref, y#0: Box :: 
  { TwoStateAt.Cell.Plus#requires(TwoStateAt.Cell.Plus$Y, $prevHeap, $Heap, this, y#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.TwoStateAt.Cell())
       && $IsAlloc(this, Tclass.TwoStateAt.Cell(), $prevHeap)
       && $IsBox(y#0, TwoStateAt.Cell.Plus$Y)
     ==> TwoStateAt.Cell.Plus#requires(TwoStateAt.Cell.Plus$Y, $prevHeap, $Heap, this, y#0)
       == $IsAllocBox(y#0, TwoStateAt.Cell.Plus$Y, $prevHeap));

// definition axiom for TwoStateAt.Cell.Plus (revealed)
axiom {:id "id1585"} (forall TwoStateAt.Cell.Plus$Y: Ty, $prevHeap: Heap, $Heap: Heap, this: ref, y#0: Box :: 
  { TwoStateAt.Cell.Plus(TwoStateAt.Cell.Plus$Y, $prevHeap, $Heap, this, y#0), $IsGoodHeap($Heap) } 
  TwoStateAt.Cell.Plus#canCall(TwoStateAt.Cell.Plus$Y, $prevHeap, $Heap, this, y#0)
       || (
        $IsGoodHeap($prevHeap)
         && $IsGoodHeap($Heap)
         && $HeapSucc($prevHeap, $Heap)
         && 
        this != null
         && 
        $Is(this, Tclass.TwoStateAt.Cell())
         && $IsAlloc(this, Tclass.TwoStateAt.Cell(), $prevHeap)
         && $IsBox(y#0, TwoStateAt.Cell.Plus$Y))
     ==> TwoStateAt.__default.SP#canCall(TwoStateAt.Cell.Plus$Y, $prevHeap, $Heap, this, y#0)
       && TwoStateAt.Cell.Plus(TwoStateAt.Cell.Plus$Y, $prevHeap, $Heap, this, y#0)
         == TwoStateAt.__default.SP(TwoStateAt.Cell.Plus$Y, $prevHeap, $Heap, this, y#0));

// $Is axiom for non-null type TwoStateAt.Cell
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TwoStateAt.Cell()) } { $Is(c#0, Tclass.TwoStateAt.Cell?()) } 
  $Is(c#0, Tclass.TwoStateAt.Cell())
     <==> $Is(c#0, Tclass.TwoStateAt.Cell?()) && c#0 != null);

// $IsAlloc axiom for non-null type TwoStateAt.Cell
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $h) } 
    { $IsAlloc(c#0, Tclass.TwoStateAt.Cell?(), $h) } 
  $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $h)
     <==> $IsAlloc(c#0, Tclass.TwoStateAt.Cell?(), $h));

// Constructor function declaration
function #TwoStateAt.DT.Green() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#TwoStateAt.DT.Green()) == ##TwoStateAt.DT.Green;
// Constructor literal
axiom #TwoStateAt.DT.Green() == Lit(#TwoStateAt.DT.Green());
}

const unique ##TwoStateAt.DT.Green: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#TwoStateAt.DT.Green()) == ##TwoStateAt.DT.Green;
}

function TwoStateAt.DT.Green_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TwoStateAt.DT.Green_q(d) } 
  TwoStateAt.DT.Green_q(d) <==> DatatypeCtorId(d) == ##TwoStateAt.DT.Green);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TwoStateAt.DT.Green_q(d) } 
  TwoStateAt.DT.Green_q(d) ==> d == #TwoStateAt.DT.Green());

function Tclass.TwoStateAt.DT(Ty) : Ty;

const unique Tagclass.TwoStateAt.DT: TyTag;

// Tclass.TwoStateAt.DT Tag
axiom (forall TwoStateAt.DT$X: Ty :: 
  { Tclass.TwoStateAt.DT(TwoStateAt.DT$X) } 
  Tag(Tclass.TwoStateAt.DT(TwoStateAt.DT$X)) == Tagclass.TwoStateAt.DT
     && TagFamily(Tclass.TwoStateAt.DT(TwoStateAt.DT$X)) == tytagFamily$DT);

function Tclass.TwoStateAt.DT_0(Ty) : Ty;

// Tclass.TwoStateAt.DT injectivity 0
axiom (forall TwoStateAt.DT$X: Ty :: 
  { Tclass.TwoStateAt.DT(TwoStateAt.DT$X) } 
  Tclass.TwoStateAt.DT_0(Tclass.TwoStateAt.DT(TwoStateAt.DT$X)) == TwoStateAt.DT$X);

// Box/unbox axiom for Tclass.TwoStateAt.DT
axiom (forall TwoStateAt.DT$X: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TwoStateAt.DT(TwoStateAt.DT$X)) } 
  $IsBox(bx, Tclass.TwoStateAt.DT(TwoStateAt.DT$X))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.TwoStateAt.DT(TwoStateAt.DT$X)));

// Constructor $Is
axiom (forall TwoStateAt.DT$X: Ty :: 
  { $Is(#TwoStateAt.DT.Green(), Tclass.TwoStateAt.DT(TwoStateAt.DT$X)) } 
  $Is(#TwoStateAt.DT.Green(), Tclass.TwoStateAt.DT(TwoStateAt.DT$X)));

// Constructor $IsAlloc
axiom (forall TwoStateAt.DT$X: Ty, $h: Heap :: 
  { $IsAlloc(#TwoStateAt.DT.Green(), Tclass.TwoStateAt.DT(TwoStateAt.DT$X), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#TwoStateAt.DT.Green(), Tclass.TwoStateAt.DT(TwoStateAt.DT$X), $h));

// Constructor function declaration
function #TwoStateAt.DT.Blue(Box) : DatatypeType;

const unique ##TwoStateAt.DT.Blue: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box :: 
  { #TwoStateAt.DT.Blue(a#4#0#0) } 
  DatatypeCtorId(#TwoStateAt.DT.Blue(a#4#0#0)) == ##TwoStateAt.DT.Blue);
}

function TwoStateAt.DT.Blue_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TwoStateAt.DT.Blue_q(d) } 
  TwoStateAt.DT.Blue_q(d) <==> DatatypeCtorId(d) == ##TwoStateAt.DT.Blue);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TwoStateAt.DT.Blue_q(d) } 
  TwoStateAt.DT.Blue_q(d)
     ==> (exists a#5#0#0: Box :: d == #TwoStateAt.DT.Blue(a#5#0#0)));

// Constructor $Is
axiom (forall TwoStateAt.DT$X: Ty, a#6#0#0: Box :: 
  { $Is(#TwoStateAt.DT.Blue(a#6#0#0), Tclass.TwoStateAt.DT(TwoStateAt.DT$X)) } 
  $Is(#TwoStateAt.DT.Blue(a#6#0#0), Tclass.TwoStateAt.DT(TwoStateAt.DT$X))
     <==> $IsBox(a#6#0#0, TwoStateAt.DT$X));

// Constructor $IsAlloc
axiom (forall TwoStateAt.DT$X: Ty, a#6#0#0: Box, $h: Heap :: 
  { $IsAlloc(#TwoStateAt.DT.Blue(a#6#0#0), Tclass.TwoStateAt.DT(TwoStateAt.DT$X), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#TwoStateAt.DT.Blue(a#6#0#0), Tclass.TwoStateAt.DT(TwoStateAt.DT$X), $h)
       <==> $IsAllocBox(a#6#0#0, TwoStateAt.DT$X, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, TwoStateAt.DT$X: Ty, $h: Heap :: 
  { $IsAllocBox(TwoStateAt.DT.value(d), TwoStateAt.DT$X, $h) } 
  $IsGoodHeap($h)
       && 
      TwoStateAt.DT.Blue_q(d)
       && $IsAlloc(d, Tclass.TwoStateAt.DT(TwoStateAt.DT$X), $h)
     ==> $IsAllocBox(TwoStateAt.DT.value(d), TwoStateAt.DT$X, $h));

// Constructor literal
axiom (forall a#7#0#0: Box :: 
  { #TwoStateAt.DT.Blue(Lit(a#7#0#0)) } 
  #TwoStateAt.DT.Blue(Lit(a#7#0#0)) == Lit(#TwoStateAt.DT.Blue(a#7#0#0)));

function TwoStateAt.DT.value(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box :: 
  { #TwoStateAt.DT.Blue(a#8#0#0) } 
  TwoStateAt.DT.value(#TwoStateAt.DT.Blue(a#8#0#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box :: 
  { #TwoStateAt.DT.Blue(a#9#0#0) } 
  BoxRank(a#9#0#0) < DtRank(#TwoStateAt.DT.Blue(a#9#0#0)));

// Depth-one case-split function
function $IsA#TwoStateAt.DT(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#TwoStateAt.DT(d) } 
  $IsA#TwoStateAt.DT(d) ==> TwoStateAt.DT.Green_q(d) || TwoStateAt.DT.Blue_q(d));

// Questionmark data type disjunctivity
axiom (forall TwoStateAt.DT$X: Ty, d: DatatypeType :: 
  { TwoStateAt.DT.Blue_q(d), $Is(d, Tclass.TwoStateAt.DT(TwoStateAt.DT$X)) } 
    { TwoStateAt.DT.Green_q(d), $Is(d, Tclass.TwoStateAt.DT(TwoStateAt.DT$X)) } 
  $Is(d, Tclass.TwoStateAt.DT(TwoStateAt.DT$X))
     ==> TwoStateAt.DT.Green_q(d) || TwoStateAt.DT.Blue_q(d));

// Datatype extensional equality declaration
function TwoStateAt.DT#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #TwoStateAt.DT.Green
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TwoStateAt.DT#Equal(a, b), TwoStateAt.DT.Green_q(a) } 
    { TwoStateAt.DT#Equal(a, b), TwoStateAt.DT.Green_q(b) } 
  TwoStateAt.DT.Green_q(a) && TwoStateAt.DT.Green_q(b)
     ==> TwoStateAt.DT#Equal(a, b));

// Datatype extensional equality definition: #TwoStateAt.DT.Blue
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TwoStateAt.DT#Equal(a, b), TwoStateAt.DT.Blue_q(a) } 
    { TwoStateAt.DT#Equal(a, b), TwoStateAt.DT.Blue_q(b) } 
  TwoStateAt.DT.Blue_q(a) && TwoStateAt.DT.Blue_q(b)
     ==> (TwoStateAt.DT#Equal(a, b)
       <==> TwoStateAt.DT.value(a) == TwoStateAt.DT.value(b)));

// Datatype extensionality axiom: TwoStateAt.DT
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TwoStateAt.DT#Equal(a, b) } 
  TwoStateAt.DT#Equal(a, b) <==> a == b);

const unique class.TwoStateAt.DT: ClassName;

function TwoStateAt.DT.sc(TwoStateAt.DT$X: Ty) : int
uses {
axiom (forall TwoStateAt.DT$X: Ty :: 
  { TwoStateAt.DT.sc(TwoStateAt.DT$X): int } 
  TwoStateAt.DT.sc(TwoStateAt.DT$X): int == LitInt(18));
}

// DT.sc: Type axiom
axiom (forall TwoStateAt.DT$X: Ty :: 
  { TwoStateAt.DT.sc(TwoStateAt.DT$X) } 
  $Is(TwoStateAt.DT.sc(TwoStateAt.DT$X), TInt));

// DT.sc: Allocation axiom
axiom (forall TwoStateAt.DT$X: Ty, $h: Heap :: 
  { $IsAlloc(TwoStateAt.DT.sc(TwoStateAt.DT$X), TInt, $h) } 
  $IsGoodHeap($h) ==> $IsAlloc(TwoStateAt.DT.sc(TwoStateAt.DT$X), TInt, $h));

// function declaration for TwoStateAt.DT.F
function TwoStateAt.DT.F(TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.F$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    this: DatatypeType, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   : int;

function TwoStateAt.DT.F#canCall(TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.F$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    this: DatatypeType, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   : bool;

// frame axiom for TwoStateAt.DT.F
axiom (forall TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.F$Y: Ty, 
    $prevHeap: Heap, 
    $h0: Heap, 
    $h1: Heap, 
    this: DatatypeType, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.DT.F(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $h1, this, x#0, y#0, c#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && $Is(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X))
       && (TwoStateAt.DT.F#canCall(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $h0, this, x#0, y#0, c#0)
         || (
          $IsBox(x#0, TwoStateAt.DT$X)
           && $IsBox(y#0, TwoStateAt.DT.F$Y)
           && $Is(c#0, Tclass.TwoStateAt.Cell())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == c#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TwoStateAt.DT.F(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $h0, this, x#0, y#0, c#0)
       == TwoStateAt.DT.F(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $h1, this, x#0, y#0, c#0));

function TwoStateAt.DT.F#requires(Ty, Ty, Heap, Heap, DatatypeType, Box, Box, ref) : bool;

// #requires axiom for TwoStateAt.DT.F
axiom (forall TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.F$Y: Ty, 
    $prevHeap: Heap, 
    $Heap: Heap, 
    this: DatatypeType, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref :: 
  { TwoStateAt.DT.F#requires(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $Heap, this, x#0, y#0, c#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      $Is(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X))
       && $IsAlloc(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X), $prevHeap)
       && $IsBox(x#0, TwoStateAt.DT$X)
       && $IsBox(y#0, TwoStateAt.DT.F$Y)
       && $Is(c#0, Tclass.TwoStateAt.Cell())
     ==> TwoStateAt.DT.F#requires(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $Heap, this, x#0, y#0, c#0)
       == (
        $IsAllocBox(x#0, TwoStateAt.DT$X, $prevHeap)
         && $IsAllocBox(y#0, TwoStateAt.DT.F$Y, $prevHeap)
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $prevHeap)));

// definition axiom for TwoStateAt.DT.F (revealed)
axiom {:id "id1586"} (forall TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.F$Y: Ty, 
    $prevHeap: Heap, 
    $Heap: Heap, 
    this: DatatypeType, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref :: 
  { TwoStateAt.DT.F(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $Heap, this, x#0, y#0, c#0), $IsGoodHeap($Heap) } 
  TwoStateAt.DT.F#canCall(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $Heap, this, x#0, y#0, c#0)
       || (
        $IsGoodHeap($prevHeap)
         && $IsGoodHeap($Heap)
         && $HeapSucc($prevHeap, $Heap)
         && 
        $Is(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X))
         && $IsAlloc(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X), $prevHeap)
         && $IsBox(x#0, TwoStateAt.DT$X)
         && $IsBox(y#0, TwoStateAt.DT.F$Y)
         && $Is(c#0, Tclass.TwoStateAt.Cell()))
     ==> TwoStateAt.DT.F(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $Heap, this, x#0, y#0, c#0)
       == $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int
         - $Unbox(read($prevHeap, c#0, TwoStateAt.Cell.data)): int);

procedure {:verboseName "TwoStateAt.DT.L (well-formedness)"} CheckWellFormed$$TwoStateAt.DT.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.L$Y: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X))
         && $IsAlloc(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X), previous$Heap), 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.DT$X) && $IsAllocBox(x#0, TwoStateAt.DT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.DT.L$Y)
         && $IsAllocBox(y#0, TwoStateAt.DT.L$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAllocBox(x#0, TwoStateAt.DT$X, previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.DT.L$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  modifies $Heap;



procedure {:verboseName "TwoStateAt.DT.L (call)"} Call$$TwoStateAt.DT.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.L$Y: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X))
         && $IsAlloc(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X), previous$Heap), 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.DT$X) && $IsAllocBox(x#0, TwoStateAt.DT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.DT.L$Y)
         && $IsAllocBox(y#0, TwoStateAt.DT.L$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  requires $IsAllocBox(x#0, TwoStateAt.DT$X, previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.DT.L$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  // user-defined preconditions
  requires {:id "id1587"} $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
     <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



// function declaration for TwoStateAt.DT.G
function TwoStateAt.DT.G(TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.G$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   : int;

function TwoStateAt.DT.G#canCall(TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.G$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   : bool;

// frame axiom for TwoStateAt.DT.G
axiom (forall TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.G$Y: Ty, 
    $prevHeap: Heap, 
    $h0: Heap, 
    $h1: Heap, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.DT.G(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap, $h1, x#0, y#0, c#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (TwoStateAt.DT.G#canCall(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap, $h0, x#0, y#0, c#0)
         || (
          $IsBox(x#0, TwoStateAt.DT$X)
           && $IsBox(y#0, TwoStateAt.DT.G$Y)
           && $Is(c#0, Tclass.TwoStateAt.Cell())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == c#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TwoStateAt.DT.G(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap, $h0, x#0, y#0, c#0)
       == TwoStateAt.DT.G(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap, $h1, x#0, y#0, c#0));

function TwoStateAt.DT.G#requires(Ty, Ty, Heap, Heap, Box, Box, ref) : bool;

// #requires axiom for TwoStateAt.DT.G
axiom (forall TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.G$Y: Ty, 
    $prevHeap: Heap, 
    $Heap: Heap, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref :: 
  { TwoStateAt.DT.G#requires(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap, $Heap, x#0, y#0, c#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $IsBox(x#0, TwoStateAt.DT$X)
       && $IsBox(y#0, TwoStateAt.DT.G$Y)
       && $Is(c#0, Tclass.TwoStateAt.Cell())
     ==> TwoStateAt.DT.G#requires(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap, $Heap, x#0, y#0, c#0)
       == (
        $IsAllocBox(x#0, TwoStateAt.DT$X, $prevHeap)
         && $IsAllocBox(y#0, TwoStateAt.DT.G$Y, $prevHeap)
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $prevHeap)));

// definition axiom for TwoStateAt.DT.G (revealed)
axiom {:id "id1588"} (forall TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.G$Y: Ty, 
    $prevHeap: Heap, 
    $Heap: Heap, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref :: 
  { TwoStateAt.DT.G(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap, $Heap, x#0, y#0, c#0), $IsGoodHeap($Heap) } 
  TwoStateAt.DT.G#canCall(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap, $Heap, x#0, y#0, c#0)
       || (
        $IsGoodHeap($prevHeap)
         && $IsGoodHeap($Heap)
         && $HeapSucc($prevHeap, $Heap)
         && $IsBox(x#0, TwoStateAt.DT$X)
         && $IsBox(y#0, TwoStateAt.DT.G$Y)
         && $Is(c#0, Tclass.TwoStateAt.Cell()))
     ==> TwoStateAt.DT.F#canCall(TwoStateAt.DT$X, 
        TwoStateAt.DT.G$Y, 
        $prevHeap, 
        $Heap, 
        Lit(#TwoStateAt.DT.Green()), 
        x#0, 
        y#0, 
        c#0)
       && TwoStateAt.DT.G(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap, $Heap, x#0, y#0, c#0)
         == TwoStateAt.DT.F(TwoStateAt.DT$X, 
          TwoStateAt.DT.G$Y, 
          $prevHeap, 
          $Heap, 
          Lit(#TwoStateAt.DT.Green()), 
          x#0, 
          y#0, 
          c#0));

procedure {:verboseName "TwoStateAt.DT.M (well-formedness)"} CheckWellFormed$$TwoStateAt.DT.M(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.M$Y: Ty, 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.DT$X) && $IsAllocBox(x#0, TwoStateAt.DT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.DT.M$Y)
         && $IsAllocBox(y#0, TwoStateAt.DT.M$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  free requires 3 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAllocBox(x#0, TwoStateAt.DT$X, previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.DT.M$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  modifies $Heap;



procedure {:verboseName "TwoStateAt.DT.M (call)"} Call$$TwoStateAt.DT.M(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.M$Y: Ty, 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.DT$X) && $IsAllocBox(x#0, TwoStateAt.DT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.DT.M$Y)
         && $IsAllocBox(y#0, TwoStateAt.DT.M$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  requires $IsAllocBox(x#0, TwoStateAt.DT$X, previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.DT.M$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  // user-defined preconditions
  requires {:id "id1589"} $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
     <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



function Tclass.TwoStateAt.NT() : Ty
uses {
// Tclass.TwoStateAt.NT Tag
axiom Tag(Tclass.TwoStateAt.NT()) == Tagclass.TwoStateAt.NT
   && TagFamily(Tclass.TwoStateAt.NT()) == tytagFamily$NT;
}

const unique Tagclass.TwoStateAt.NT: TyTag;

// Box/unbox axiom for Tclass.TwoStateAt.NT
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TwoStateAt.NT()) } 
  $IsBox(bx, Tclass.TwoStateAt.NT())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.TwoStateAt.NT()));

// $Is axiom for newtype TwoStateAt.NT
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.TwoStateAt.NT()) } 
  $Is(x#0, Tclass.TwoStateAt.NT()) <==> LitInt(0) <= x#0 && x#0 < 86);

// $IsAlloc axiom for newtype TwoStateAt.NT
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.TwoStateAt.NT(), $h) } 
  $IsAlloc(x#0, Tclass.TwoStateAt.NT(), $h));

const unique class.TwoStateAt.NT: ClassName;

function TwoStateAt.NT.value(this: int) : int
uses {
axiom (forall this: int :: 
  { TwoStateAt.NT.value(this): int } 
  TwoStateAt.NT.value(this): int == LitInt(18));
}

// NT.value: Type axiom
axiom (forall $o: int :: 
  { TwoStateAt.NT.value($o) } 
  $Is($o, Tclass.TwoStateAt.NT()) ==> $Is(TwoStateAt.NT.value($o), TInt));

// NT.value: Allocation axiom
axiom (forall $h: Heap, $o: int :: 
  { TwoStateAt.NT.value($o), $IsAlloc($o, Tclass.TwoStateAt.NT(), $h) } 
  $IsGoodHeap($h)
       && $Is($o, Tclass.TwoStateAt.NT())
       && $IsAlloc($o, Tclass.TwoStateAt.NT(), $h)
     ==> $IsAlloc(TwoStateAt.NT.value($o), TInt, $h));

function TwoStateAt.NT.sc() : int
uses {
axiom TwoStateAt.NT.sc(): int == LitInt(18);
// NT.sc: Type axiom
axiom $Is(TwoStateAt.NT.sc(), TInt);
}

// NT.sc: Allocation axiom
axiom (forall $h: Heap :: 
  { $IsAlloc(TwoStateAt.NT.sc(), TInt, $h) } 
  $IsGoodHeap($h) ==> $IsAlloc(TwoStateAt.NT.sc(), TInt, $h));

// function declaration for TwoStateAt.NT.F
function TwoStateAt.NT.F(TwoStateAt.NT.F$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    this: int, 
    y#0: Box, 
    c#0: ref)
   : int;

function TwoStateAt.NT.F#canCall(TwoStateAt.NT.F$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    this: int, 
    y#0: Box, 
    c#0: ref)
   : bool;

// frame axiom for TwoStateAt.NT.F
axiom (forall TwoStateAt.NT.F$Y: Ty, 
    $prevHeap: Heap, 
    $h0: Heap, 
    $h1: Heap, 
    this: int, 
    y#0: Box, 
    c#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.NT.F(TwoStateAt.NT.F$Y, $prevHeap, $h1, this, y#0, c#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      LitInt(0) <= this
       && this < 86
       && (TwoStateAt.NT.F#canCall(TwoStateAt.NT.F$Y, $prevHeap, $h0, this, y#0, c#0)
         || ($IsBox(y#0, TwoStateAt.NT.F$Y) && $Is(c#0, Tclass.TwoStateAt.Cell())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == c#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TwoStateAt.NT.F(TwoStateAt.NT.F$Y, $prevHeap, $h0, this, y#0, c#0)
       == TwoStateAt.NT.F(TwoStateAt.NT.F$Y, $prevHeap, $h1, this, y#0, c#0));

function TwoStateAt.NT.F#requires(Ty, Heap, Heap, int, Box, ref) : bool;

// #requires axiom for TwoStateAt.NT.F
axiom (forall TwoStateAt.NT.F$Y: Ty, 
    $prevHeap: Heap, 
    $Heap: Heap, 
    this: int, 
    y#0: Box, 
    c#0: ref :: 
  { TwoStateAt.NT.F#requires(TwoStateAt.NT.F$Y, $prevHeap, $Heap, this, y#0, c#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      LitInt(0) <= this
       && this < 86
       && $IsBox(y#0, TwoStateAt.NT.F$Y)
       && $Is(c#0, Tclass.TwoStateAt.Cell())
     ==> TwoStateAt.NT.F#requires(TwoStateAt.NT.F$Y, $prevHeap, $Heap, this, y#0, c#0)
       == ($IsAllocBox(y#0, TwoStateAt.NT.F$Y, $prevHeap)
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $prevHeap)));

// definition axiom for TwoStateAt.NT.F (revealed)
axiom {:id "id1590"} (forall TwoStateAt.NT.F$Y: Ty, 
    $prevHeap: Heap, 
    $Heap: Heap, 
    this: int, 
    y#0: Box, 
    c#0: ref :: 
  { TwoStateAt.NT.F(TwoStateAt.NT.F$Y, $prevHeap, $Heap, this, y#0, c#0), $IsGoodHeap($Heap) } 
  TwoStateAt.NT.F#canCall(TwoStateAt.NT.F$Y, $prevHeap, $Heap, this, y#0, c#0)
       || (
        $IsGoodHeap($prevHeap)
         && $IsGoodHeap($Heap)
         && $HeapSucc($prevHeap, $Heap)
         && 
        LitInt(0) <= this
         && this < 86
         && $IsBox(y#0, TwoStateAt.NT.F$Y)
         && $Is(c#0, Tclass.TwoStateAt.Cell()))
     ==> TwoStateAt.NT.F(TwoStateAt.NT.F$Y, $prevHeap, $Heap, this, y#0, c#0)
       == $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int
         - $Unbox(read($prevHeap, c#0, TwoStateAt.Cell.data)): int);

procedure {:verboseName "TwoStateAt.NT.L (well-formedness)"} CheckWellFormed$$TwoStateAt.NT.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.NT.L$Y: Ty, 
    this: int where LitInt(0) <= this && this < 86, 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.NT.L$Y)
         && $IsAllocBox(y#0, TwoStateAt.NT.L$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.NT.L$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  modifies $Heap;



procedure {:verboseName "TwoStateAt.NT.L (call)"} Call$$TwoStateAt.NT.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.NT.L$Y: Ty, 
    this: int where LitInt(0) <= this && this < 86, 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.NT.L$Y)
         && $IsAllocBox(y#0, TwoStateAt.NT.L$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  requires $IsAllocBox(y#0, TwoStateAt.NT.L$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  // user-defined preconditions
  requires {:id "id1591"} $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
     <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



// function declaration for TwoStateAt.NT.G
function TwoStateAt.NT.G(TwoStateAt.NT.G$Y: Ty, $prevHeap: Heap, $heap: Heap, y#0: Box, c#0: ref) : int;

function TwoStateAt.NT.G#canCall(TwoStateAt.NT.G$Y: Ty, $prevHeap: Heap, $heap: Heap, y#0: Box, c#0: ref) : bool;

// frame axiom for TwoStateAt.NT.G
axiom (forall TwoStateAt.NT.G$Y: Ty, $prevHeap: Heap, $h0: Heap, $h1: Heap, y#0: Box, c#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.NT.G(TwoStateAt.NT.G$Y, $prevHeap, $h1, y#0, c#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (TwoStateAt.NT.G#canCall(TwoStateAt.NT.G$Y, $prevHeap, $h0, y#0, c#0)
         || ($IsBox(y#0, TwoStateAt.NT.G$Y) && $Is(c#0, Tclass.TwoStateAt.Cell())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == c#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TwoStateAt.NT.G(TwoStateAt.NT.G$Y, $prevHeap, $h0, y#0, c#0)
       == TwoStateAt.NT.G(TwoStateAt.NT.G$Y, $prevHeap, $h1, y#0, c#0));

function TwoStateAt.NT.G#requires(Ty, Heap, Heap, Box, ref) : bool;

// #requires axiom for TwoStateAt.NT.G
axiom (forall TwoStateAt.NT.G$Y: Ty, $prevHeap: Heap, $Heap: Heap, y#0: Box, c#0: ref :: 
  { TwoStateAt.NT.G#requires(TwoStateAt.NT.G$Y, $prevHeap, $Heap, y#0, c#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $IsBox(y#0, TwoStateAt.NT.G$Y)
       && $Is(c#0, Tclass.TwoStateAt.Cell())
     ==> TwoStateAt.NT.G#requires(TwoStateAt.NT.G$Y, $prevHeap, $Heap, y#0, c#0)
       == ($IsAllocBox(y#0, TwoStateAt.NT.G$Y, $prevHeap)
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $prevHeap)));

// definition axiom for TwoStateAt.NT.G (revealed)
axiom {:id "id1592"} (forall TwoStateAt.NT.G$Y: Ty, $prevHeap: Heap, $Heap: Heap, y#0: Box, c#0: ref :: 
  { TwoStateAt.NT.G(TwoStateAt.NT.G$Y, $prevHeap, $Heap, y#0, c#0), $IsGoodHeap($Heap) } 
  TwoStateAt.NT.G#canCall(TwoStateAt.NT.G$Y, $prevHeap, $Heap, y#0, c#0)
       || (
        $IsGoodHeap($prevHeap)
         && $IsGoodHeap($Heap)
         && $HeapSucc($prevHeap, $Heap)
         && $IsBox(y#0, TwoStateAt.NT.G$Y)
         && $Is(c#0, Tclass.TwoStateAt.Cell()))
     ==> TwoStateAt.NT.F#canCall(TwoStateAt.NT.G$Y, $prevHeap, $Heap, LitInt(82), y#0, c#0)
       && TwoStateAt.NT.G(TwoStateAt.NT.G$Y, $prevHeap, $Heap, y#0, c#0)
         == TwoStateAt.NT.F(TwoStateAt.NT.G$Y, $prevHeap, $Heap, LitInt(82), y#0, c#0));

procedure {:verboseName "TwoStateAt.NT.M (well-formedness)"} CheckWellFormed$$TwoStateAt.NT.M(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.NT.M$Y: Ty, 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.NT.M$Y)
         && $IsAllocBox(y#0, TwoStateAt.NT.M$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  free requires 3 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.NT.M$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  modifies $Heap;



procedure {:verboseName "TwoStateAt.NT.M (call)"} Call$$TwoStateAt.NT.M(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.NT.M$Y: Ty, 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.NT.M$Y)
         && $IsAllocBox(y#0, TwoStateAt.NT.M$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  requires $IsAllocBox(y#0, TwoStateAt.NT.M$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  // user-defined preconditions
  requires {:id "id1593"} $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
     <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



const unique class.TwoStateAt.OT: ClassName;

function TwoStateAt.OT.value(TwoStateAt.OT$X: Ty, this: Box) : int
uses {
axiom (forall TwoStateAt.OT$X: Ty, this: Box :: 
  { TwoStateAt.OT.value(TwoStateAt.OT$X, this): int } 
  TwoStateAt.OT.value(TwoStateAt.OT$X, this): int == LitInt(18));
}

function Tclass.TwoStateAt.OT(Ty) : Ty;

// OT.value: Type axiom
axiom (forall TwoStateAt.OT$X: Ty, $o: Box :: 
  { TwoStateAt.OT.value(TwoStateAt.OT$X, $o) } 
  $IsBox($o, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
     ==> $Is(TwoStateAt.OT.value(TwoStateAt.OT$X, $o), TInt));

// OT.value: Allocation axiom
axiom (forall TwoStateAt.OT$X: Ty, $h: Heap, $o: Box :: 
  { TwoStateAt.OT.value(TwoStateAt.OT$X, $o), $IsAllocBox($o, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), $h) } 
  $IsGoodHeap($h)
       && $IsBox($o, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
       && $IsAllocBox($o, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), $h)
     ==> $IsAlloc(TwoStateAt.OT.value(TwoStateAt.OT$X, $o), TInt, $h));

function TwoStateAt.OT.sc(TwoStateAt.OT$X: Ty) : int
uses {
axiom (forall TwoStateAt.OT$X: Ty :: 
  { TwoStateAt.OT.sc(TwoStateAt.OT$X): int } 
  TwoStateAt.OT.sc(TwoStateAt.OT$X): int == LitInt(18));
}

// OT.sc: Type axiom
axiom (forall TwoStateAt.OT$X: Ty :: 
  { TwoStateAt.OT.sc(TwoStateAt.OT$X) } 
  $Is(TwoStateAt.OT.sc(TwoStateAt.OT$X), TInt));

// OT.sc: Allocation axiom
axiom (forall TwoStateAt.OT$X: Ty, $h: Heap :: 
  { $IsAlloc(TwoStateAt.OT.sc(TwoStateAt.OT$X), TInt, $h) } 
  $IsGoodHeap($h) ==> $IsAlloc(TwoStateAt.OT.sc(TwoStateAt.OT$X), TInt, $h));

// function declaration for TwoStateAt.OT.F
function TwoStateAt.OT.F(TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.F$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    this: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   : int;

function TwoStateAt.OT.F#canCall(TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.F$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    this: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   : bool;

// frame axiom for TwoStateAt.OT.F
axiom (forall TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.F$Y: Ty, 
    $prevHeap: Heap, 
    $h0: Heap, 
    $h1: Heap, 
    this: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.OT.F(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $h1, this, x#0, y#0, c#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && $IsBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
       && (TwoStateAt.OT.F#canCall(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $h0, this, x#0, y#0, c#0)
         || (
          $IsBox(x#0, TwoStateAt.OT$X)
           && $IsBox(y#0, TwoStateAt.OT.F$Y)
           && $Is(c#0, Tclass.TwoStateAt.Cell())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == c#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TwoStateAt.OT.F(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $h0, this, x#0, y#0, c#0)
       == TwoStateAt.OT.F(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $h1, this, x#0, y#0, c#0));

function TwoStateAt.OT.F#requires(Ty, Ty, Heap, Heap, Box, Box, Box, ref) : bool;

// #requires axiom for TwoStateAt.OT.F
axiom (forall TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.F$Y: Ty, 
    $prevHeap: Heap, 
    $Heap: Heap, 
    this: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref :: 
  { TwoStateAt.OT.F#requires(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $Heap, this, x#0, y#0, c#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      $IsBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
       && $IsAllocBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), $prevHeap)
       && $IsBox(x#0, TwoStateAt.OT$X)
       && $IsBox(y#0, TwoStateAt.OT.F$Y)
       && $Is(c#0, Tclass.TwoStateAt.Cell())
     ==> TwoStateAt.OT.F#requires(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $Heap, this, x#0, y#0, c#0)
       == (
        $IsAllocBox(x#0, TwoStateAt.OT$X, $prevHeap)
         && $IsAllocBox(y#0, TwoStateAt.OT.F$Y, $prevHeap)
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $prevHeap)));

// definition axiom for TwoStateAt.OT.F (revealed)
axiom {:id "id1594"} (forall TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.F$Y: Ty, 
    $prevHeap: Heap, 
    $Heap: Heap, 
    this: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref :: 
  { TwoStateAt.OT.F(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $Heap, this, x#0, y#0, c#0), $IsGoodHeap($Heap) } 
  TwoStateAt.OT.F#canCall(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $Heap, this, x#0, y#0, c#0)
       || (
        $IsGoodHeap($prevHeap)
         && $IsGoodHeap($Heap)
         && $HeapSucc($prevHeap, $Heap)
         && 
        $IsBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
         && $IsAllocBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), $prevHeap)
         && $IsBox(x#0, TwoStateAt.OT$X)
         && $IsBox(y#0, TwoStateAt.OT.F$Y)
         && $Is(c#0, Tclass.TwoStateAt.Cell()))
     ==> TwoStateAt.OT.F(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $Heap, this, x#0, y#0, c#0)
       == $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int
         - $Unbox(read($prevHeap, c#0, TwoStateAt.Cell.data)): int);

procedure {:verboseName "TwoStateAt.OT.L (well-formedness)"} CheckWellFormed$$TwoStateAt.OT.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.L$Y: Ty, 
    this: Box
       where $IsBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
         && $IsAllocBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), previous$Heap), 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.OT$X) && $IsAllocBox(x#0, TwoStateAt.OT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.OT.L$Y)
         && $IsAllocBox(y#0, TwoStateAt.OT.L$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAllocBox(x#0, TwoStateAt.OT$X, previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.OT.L$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  modifies $Heap;



procedure {:verboseName "TwoStateAt.OT.L (call)"} Call$$TwoStateAt.OT.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.L$Y: Ty, 
    this: Box
       where $IsBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
         && $IsAllocBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), previous$Heap), 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.OT$X) && $IsAllocBox(x#0, TwoStateAt.OT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.OT.L$Y)
         && $IsAllocBox(y#0, TwoStateAt.OT.L$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  requires $IsAllocBox(x#0, TwoStateAt.OT$X, previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.OT.L$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  // user-defined preconditions
  requires {:id "id1595"} $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
     <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



// function declaration for TwoStateAt.OT.G
function TwoStateAt.OT.G(TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.G$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    ot#0: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   : int;

function TwoStateAt.OT.G#canCall(TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.G$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    ot#0: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   : bool;

// frame axiom for TwoStateAt.OT.G
axiom (forall TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.G$Y: Ty, 
    $prevHeap: Heap, 
    $h0: Heap, 
    $h1: Heap, 
    ot#0: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.OT.G(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap, $h1, ot#0, x#0, y#0, c#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (TwoStateAt.OT.G#canCall(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap, $h0, ot#0, x#0, y#0, c#0)
         || (
          $IsBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
           && $IsBox(x#0, TwoStateAt.OT$X)
           && $IsBox(y#0, TwoStateAt.OT.G$Y)
           && $Is(c#0, Tclass.TwoStateAt.Cell())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == c#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TwoStateAt.OT.G(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap, $h0, ot#0, x#0, y#0, c#0)
       == TwoStateAt.OT.G(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap, $h1, ot#0, x#0, y#0, c#0));

function TwoStateAt.OT.G#requires(Ty, Ty, Heap, Heap, Box, Box, Box, ref) : bool;

// #requires axiom for TwoStateAt.OT.G
axiom (forall TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.G$Y: Ty, 
    $prevHeap: Heap, 
    $Heap: Heap, 
    ot#0: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref :: 
  { TwoStateAt.OT.G#requires(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap, $Heap, ot#0, x#0, y#0, c#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $IsBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
       && $IsBox(x#0, TwoStateAt.OT$X)
       && $IsBox(y#0, TwoStateAt.OT.G$Y)
       && $Is(c#0, Tclass.TwoStateAt.Cell())
     ==> TwoStateAt.OT.G#requires(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap, $Heap, ot#0, x#0, y#0, c#0)
       == (
        $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), $prevHeap)
         && $IsAllocBox(x#0, TwoStateAt.OT$X, $prevHeap)
         && $IsAllocBox(y#0, TwoStateAt.OT.G$Y, $prevHeap)
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $prevHeap)));

// definition axiom for TwoStateAt.OT.G (revealed)
axiom {:id "id1596"} (forall TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.G$Y: Ty, 
    $prevHeap: Heap, 
    $Heap: Heap, 
    ot#0: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref :: 
  { TwoStateAt.OT.G(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap, $Heap, ot#0, x#0, y#0, c#0), $IsGoodHeap($Heap) } 
  TwoStateAt.OT.G#canCall(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap, $Heap, ot#0, x#0, y#0, c#0)
       || (
        $IsGoodHeap($prevHeap)
         && $IsGoodHeap($Heap)
         && $HeapSucc($prevHeap, $Heap)
         && $IsBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
         && $IsBox(x#0, TwoStateAt.OT$X)
         && $IsBox(y#0, TwoStateAt.OT.G$Y)
         && $Is(c#0, Tclass.TwoStateAt.Cell()))
     ==> TwoStateAt.OT.F#canCall(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap, $Heap, ot#0, x#0, y#0, c#0)
       && TwoStateAt.OT.G(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap, $Heap, ot#0, x#0, y#0, c#0)
         == TwoStateAt.OT.F(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap, $Heap, ot#0, x#0, y#0, c#0));

procedure {:verboseName "TwoStateAt.OT.M (well-formedness)"} CheckWellFormed$$TwoStateAt.OT.M(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.M$Y: Ty, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), previous$Heap), 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.OT$X) && $IsAllocBox(x#0, TwoStateAt.OT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.OT.M$Y)
         && $IsAllocBox(y#0, TwoStateAt.OT.M$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  free requires 3 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), previous$Heap);
  requires $IsAllocBox(x#0, TwoStateAt.OT$X, previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.OT.M$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  modifies $Heap;



procedure {:verboseName "TwoStateAt.OT.M (call)"} Call$$TwoStateAt.OT.M(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.M$Y: Ty, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), previous$Heap), 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.OT$X) && $IsAllocBox(x#0, TwoStateAt.OT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.OT.M$Y)
         && $IsAllocBox(y#0, TwoStateAt.OT.M$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  requires $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), previous$Heap);
  requires $IsAllocBox(x#0, TwoStateAt.OT$X, previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.OT.M$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  // user-defined preconditions
  requires {:id "id1597"} $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
     <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



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

const unique tytagFamily$_#Func4: TyTagFamily;

const unique tytagFamily$_#PartialFunc4: TyTagFamily;

const unique tytagFamily$_#TotalFunc4: TyTagFamily;

const unique tytagFamily$A: TyTagFamily;

const unique tytagFamily$Node: TyTagFamily;

const unique tytagFamily$NodeAuto: TyTagFamily;

const unique tytagFamily$Cell: TyTagFamily;

const unique tytagFamily$DT: TyTagFamily;

const unique tytagFamily$NT: TyTagFamily;

const unique field$f: NameFamily;

const unique field$g: NameFamily;

const unique field$x: NameFamily;

const unique field$next: NameFamily;

const unique field$Repr: NameFamily;

const unique field$data: NameFamily;
