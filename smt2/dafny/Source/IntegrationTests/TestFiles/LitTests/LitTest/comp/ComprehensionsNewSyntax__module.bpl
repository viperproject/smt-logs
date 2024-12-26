// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy

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
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(5,13)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id28"} Call$$_module.__default.Quantifier();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(6,19)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id29"} Call$$_module.__default.MapComprehension();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(7,24)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id30"} Call$$_module.__default.OutParamsUnderLambdas();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(8,19)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id31"} Call$$_module.__default.SetComprehension();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(9,15)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id32"} Call$$_module.__default.Enumerations();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(10,24)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id33"} Call$$_module.__default.EnumerationsMaybeNull();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(11,29)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id34"} Call$$TestImplicitTypeTests.__default.Test();
    // TrCallStmt: After ProcessCallStmt
}



// function declaration for _module._default.FourMore
function _module.__default.FourMore(x#0: int) : int
uses {
// definition axiom for _module.__default.FourMore (revealed)
axiom {:id "id35"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.__default.FourMore(x#0) } 
    _module.__default.FourMore#canCall(x#0) || 0 < $FunctionContextHeight
       ==> _module.__default.FourMore(x#0) == x#0 + 4);
// definition axiom for _module.__default.FourMore for all literals (revealed)
axiom {:id "id36"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    {:weight 3} { _module.__default.FourMore(LitInt(x#0)) } 
    _module.__default.FourMore#canCall(LitInt(x#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.FourMore(LitInt(x#0)) == LitInt(x#0 + 4));
}

function _module.__default.FourMore#canCall(x#0: int) : bool;

function _module.__default.FourMore#requires(int) : bool;

// #requires axiom for _module.__default.FourMore
axiom (forall x#0: int :: 
  { _module.__default.FourMore#requires(x#0) } 
  _module.__default.FourMore#requires(x#0) == true);

procedure {:verboseName "FourMore (well-formedness)"} CheckWellformed$$_module.__default.FourMore(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Quantifier (well-formedness)"} CheckWellFormed$$_module.__default.Quantifier();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Quantifier (call)"} Call$$_module.__default.Quantifier();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Quantifier (correctness)"} Impl$$_module.__default.Quantifier() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MapComprehension (well-formedness)"} CheckWellFormed$$_module.__default.MapComprehension();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MapComprehension (call)"} Call$$_module.__default.MapComprehension();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MapComprehension (correctness)"} Impl$$_module.__default.MapComprehension() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function map$project$0#0#x#0(int) : int;

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MapComprehension (correctness)"} Impl$$_module.__default.MapComprehension() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap);
  var m#0: Map
     where $Is(m#0, TMap(TInt, TInt)) && $IsAlloc(m#0, TMap(TInt, TInt), $Heap);
  var x#0: int;
  var x#2: int;
  var x#prime#0: int;
  var ##x#0: int;

    // AddMethodImpl: MapComprehension, Impl$$_module.__default.MapComprehension
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(30,9)
    assume true;
    assume true;
    s#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(12))), $Box(LitInt(13))), 
        $Box(LitInt(14))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(31,9)
    assume true;
    // Begin Comprehension WF check
    havoc x#0;
    if (true)
    {
        if (Seq#Contains(s#0, $Box(x#0)))
        {
            assert {:id "id41"} LitInt(2) != 0;
        }
    }

    // End Comprehension WF check
    assume true;
    m#0 := Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: $IsBox($w#0, TInt) && Seq#Contains(s#0, $w#0))), 
      (lambda $w#0: Box :: $Box(Div($Unbox($w#0): int, LitInt(2)))), 
      TMap(TInt, TInt));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(32,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(33,5)
    assume true;
    // Begin Comprehension WF check
    havoc x#2;
    if (true)
    {
        havoc x#prime#0;
        assume true;
        if (Seq#Contains(s#0, $Box(x#2)))
        {
            ##x#0 := x#2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0, TInt, $Heap);
            assume _module.__default.FourMore#canCall(x#2);
        }

        if (Seq#Contains(s#0, $Box(x#2)))
        {
        }

        if (Seq#Contains(s#0, $Box(x#2)) && Seq#Contains(s#0, $Box(x#prime#0)))
        {
            assert {:id "id43"} _module.__default.FourMore(x#2) != _module.__default.FourMore(x#prime#0)
               || x#2 == x#prime#0;
        }
    }

    // End Comprehension WF check
    assume (forall x#3: int :: 
      { _module.__default.FourMore(x#3) } { Seq#Contains(s#0, $Box(x#3)) } 
      _module.__default.FourMore#canCall(x#3)
         && (forall a#1#0#0: int :: 
          { _module.__default.FourMore(a#1#0#0) } { Seq#Contains(s#0, $Box(a#1#0#0)) } 
          Seq#Contains(s#0, $Box(a#1#0#0))
             ==> Seq#Contains(s#0, $Box(map$project$0#0#x#0(_module.__default.FourMore(a#1#0#0))))
               && _module.__default.FourMore(a#1#0#0)
                 == _module.__default.FourMore(map$project$0#0#x#0(_module.__default.FourMore(a#1#0#0)))));
    m#0 := Map#Glue(Set#FromBoogieMap((lambda $w#1: Box :: 
          $IsBox($w#1, TInt)
             && (exists a#0#0#0: int :: 
              Seq#Contains(s#0, $Box(a#0#0#0))
                 && $Unbox($w#1): int == _module.__default.FourMore(a#0#0#0)))), 
      (lambda $w#1: Box :: $Box(map$project$0#0#x#0($Unbox($w#1): int))), 
      TMap(TInt, TInt));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(34,3)
    assume true;
    assume true;
}



procedure {:verboseName "OutParamsUnderLambdas (well-formedness)"} CheckWellFormed$$_module.__default.OutParamsUnderLambdas();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OutParamsUnderLambdas (call)"} Call$$_module.__default.OutParamsUnderLambdas();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "OutParamsUnderLambdas (correctness)"} Impl$$_module.__default.OutParamsUnderLambdas() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OutParamsUnderLambdas (correctness)"} Impl$$_module.__default.OutParamsUnderLambdas() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int;
  var b#0: bool;
  var $rhs##0: int;
  var $rhs##1: bool;
  var m#0: int;
  var $rhs##2: int;

    // AddMethodImpl: OutParamsUnderLambdas, Impl$$_module.__default.OutParamsUnderLambdas
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(38,17)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id45"} $rhs##0, $rhs##1 := Call$$_module.__default.XP();
    // TrCallStmt: After ProcessCallStmt
    x#0 := $rhs##0;
    b#0 := $rhs##1;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(39,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(40,14)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id48"} $rhs##2 := Call$$_module.__default.XM();
    // TrCallStmt: After ProcessCallStmt
    m#0 := $rhs##2;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(41,3)
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "XP (well-formedness)"} CheckWellFormed$$_module.__default.XP() returns (x#0: int, b#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "XP (call)"} Call$$_module.__default.XP() returns (x#0: int, b#0: bool);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "XP (correctness)"} Impl$$_module.__default.XP() returns (x#0: int, b#0: bool, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "XM (well-formedness)"} CheckWellFormed$$_module.__default.XM() returns (x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "XM (call)"} Call$$_module.__default.XM() returns (x#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "XM (correctness)"} Impl$$_module.__default.XM() returns (x#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetComprehension (well-formedness)"} CheckWellFormed$$_module.__default.SetComprehension();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetComprehension (call)"} Call$$_module.__default.SetComprehension();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetComprehension (correctness)"} Impl$$_module.__default.SetComprehension() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SetComprehension (correctness)"} Impl$$_module.__default.SetComprehension() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: SetComprehension, Impl$$_module.__default.SetComprehension
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(71,20)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id62"} Call$$_module.__default.SetComprehension0();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(72,20)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id63"} Call$$_module.__default.SetComprehension1();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(73,20)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id64"} Call$$_module.__default.SetComprehension2();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(74,20)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id65"} Call$$_module.__default.SetComprehension3();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "SetComprehension0 (well-formedness)"} CheckWellFormed$$_module.__default.SetComprehension0();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetComprehension0 (call)"} Call$$_module.__default.SetComprehension0();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetComprehension0 (correctness)"} Impl$$_module.__default.SetComprehension0() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.ClassA() : Ty
uses {
// Tclass._module.ClassA Tag
axiom Tag(Tclass._module.ClassA()) == Tagclass._module.ClassA
   && TagFamily(Tclass._module.ClassA()) == tytagFamily$ClassA;
}

const unique Tagclass._module.ClassA: TyTag;

// Box/unbox axiom for Tclass._module.ClassA
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ClassA()) } 
  $IsBox(bx, Tclass._module.ClassA())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.ClassA()));

function Tclass._module.ClassB() : Ty
uses {
// Tclass._module.ClassB Tag
axiom Tag(Tclass._module.ClassB()) == Tagclass._module.ClassB
   && TagFamily(Tclass._module.ClassB()) == tytagFamily$ClassB;
}

const unique Tagclass._module.ClassB: TyTag;

// Box/unbox axiom for Tclass._module.ClassB
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ClassB()) } 
  $IsBox(bx, Tclass._module.ClassB())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.ClassB()));

function Tclass._module.ClassA?() : Ty
uses {
// Tclass._module.ClassA? Tag
axiom Tag(Tclass._module.ClassA?()) == Tagclass._module.ClassA?
   && TagFamily(Tclass._module.ClassA?()) == tytagFamily$ClassA;
}

const unique Tagclass._module.ClassA?: TyTag;

// Box/unbox axiom for Tclass._module.ClassA?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ClassA?()) } 
  $IsBox(bx, Tclass._module.ClassA?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.ClassA?()));

function Tclass._module.ClassB?() : Ty
uses {
// Tclass._module.ClassB? Tag
axiom Tag(Tclass._module.ClassB?()) == Tagclass._module.ClassB?
   && TagFamily(Tclass._module.ClassB?()) == tytagFamily$ClassB;
axiom implements$_module.NothingInParticular(Tclass._module.ClassB?());
}

const unique Tagclass._module.ClassB?: TyTag;

// Box/unbox axiom for Tclass._module.ClassB?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ClassB?()) } 
  $IsBox(bx, Tclass._module.ClassB?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.ClassB?()));

function Tclass._module.NothingInParticular() : Ty
uses {
// Tclass._module.NothingInParticular Tag
axiom Tag(Tclass._module.NothingInParticular())
     == Tagclass._module.NothingInParticular
   && TagFamily(Tclass._module.NothingInParticular())
     == tytagFamily$NothingInParticular;
}

const unique Tagclass._module.NothingInParticular: TyTag;

// Box/unbox axiom for Tclass._module.NothingInParticular
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NothingInParticular()) } 
  $IsBox(bx, Tclass._module.NothingInParticular())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.NothingInParticular()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SetComprehension0 (correctness)"} Impl$$_module.__default.SetComprehension0() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#w#0: bool;
  var w#0: ref
     where defass#w#0
       ==> $Is(w#0, Tclass._module.ClassA())
         && $IsAlloc(w#0, Tclass._module.ClassA(), $Heap);
  var defass#x#0: bool;
  var x#0: ref
     where defass#x#0
       ==> $Is(x#0, Tclass._module.ClassA())
         && $IsAlloc(x#0, Tclass._module.ClassA(), $Heap);
  var defass#y#0: bool;
  var y#0: ref
     where defass#y#0
       ==> $Is(y#0, Tclass._module.ClassB())
         && $IsAlloc(y#0, Tclass._module.ClassB(), $Heap);
  var defass#z#0: bool;
  var z#0: ref
     where defass#z#0
       ==> $Is(z#0, Tclass._module.ClassB())
         && $IsAlloc(z#0, Tclass._module.ClassB(), $Heap);
  var $rhs#0: ref;
  var $nw: ref;
  var $rhs#1: ref;
  var $rhs#2: ref;
  var $rhs#3: ref;
  var s#0: Set
     where $Is(s#0, TSet(Tclass._System.object()))
       && $IsAlloc(s#0, TSet(Tclass._System.object()), $Heap);
  var all#0: Set
     where $Is(all#0, TSet(Tclass._System.object()))
       && $IsAlloc(all#0, TSet(Tclass._System.object()), $Heap);
  var o#0: ref;
  var aa#0: Set
     where $Is(aa#0, TSet(Tclass._module.ClassA()))
       && $IsAlloc(aa#0, TSet(Tclass._module.ClassA()), $Heap);
  var o#2: ref;
  var bb#0: Set
     where $Is(bb#0, TSet(Tclass._module.ClassB()))
       && $IsAlloc(bb#0, TSet(Tclass._module.ClassB()), $Heap);
  var o#4: ref;
  var nn#0: Set
     where $Is(nn#0, TSet(Tclass._module.NothingInParticular()))
       && $IsAlloc(nn#0, TSet(Tclass._module.NothingInParticular()), $Heap);
  var o#6: ref;

    // AddMethodImpl: SetComprehension0, Impl$$_module.__default.SetComprehension0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(78,18)
    assume true;
    assume true;
    assume true;
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassA?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#0 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassA?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#1 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassB?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#2 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassB?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#3 := $nw;
    w#0 := $rhs#0;
    defass#w#0 := true;
    x#0 := $rhs#1;
    defass#x#0 := true;
    y#0 := $rhs#2;
    defass#y#0 := true;
    z#0 := $rhs#3;
    defass#z#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(79,9)
    assume true;
    assert {:id "id74"} defass#w#0;
    assert {:id "id75"} defass#x#0;
    assert {:id "id76"} defass#y#0;
    assert {:id "id77"} defass#z#0;
    assume true;
    s#0 := Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(w#0)), $Box(x#0)), $Box(y#0)), 
      $Box(z#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(81,11)
    assume true;
    // Begin Comprehension WF check
    havoc o#0;
    if ($Is(o#0, Tclass._System.object())
       && $IsAlloc(o#0, Tclass._System.object(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#0)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    all#0 := Set#FromBoogieMap((lambda $y#0: Box :: 
        $IsBox($y#0, Tclass._System.object()) && Set#IsMember(s#0, $y#0)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(83,10)
    assume true;
    // Begin Comprehension WF check
    havoc o#2;
    if ($Is(o#2, Tclass._module.ClassA())
       && $IsAlloc(o#2, Tclass._module.ClassA(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#2)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    aa#0 := Set#FromBoogieMap((lambda $y#1: Box :: 
        $IsBox($y#1, Tclass._module.ClassA()) && Set#IsMember(s#0, $y#1)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(85,10)
    assume true;
    // Begin Comprehension WF check
    havoc o#4;
    if ($Is(o#4, Tclass._module.ClassB())
       && $IsAlloc(o#4, Tclass._module.ClassB(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#4)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    bb#0 := Set#FromBoogieMap((lambda $y#2: Box :: 
        $IsBox($y#2, Tclass._module.ClassB()) && Set#IsMember(s#0, $y#2)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(87,10)
    assume true;
    // Begin Comprehension WF check
    havoc o#6;
    if ($Is(o#6, Tclass._module.NothingInParticular())
       && $IsAlloc(o#6, Tclass._module.NothingInParticular(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#6)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    nn#0 := Set#FromBoogieMap((lambda $y#3: Box :: 
        $IsBox($y#3, Tclass._module.NothingInParticular()) && Set#IsMember(s#0, $y#3)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(89,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(90,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(91,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(92,3)
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "SetComprehension1 (well-formedness)"} CheckWellFormed$$_module.__default.SetComprehension1();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetComprehension1 (call)"} Call$$_module.__default.SetComprehension1();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetComprehension1 (correctness)"} Impl$$_module.__default.SetComprehension1() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SetComprehension1 (correctness)"} Impl$$_module.__default.SetComprehension1() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#w#0: bool;
  var w#0: ref
     where defass#w#0
       ==> $Is(w#0, Tclass._module.ClassA())
         && $IsAlloc(w#0, Tclass._module.ClassA(), $Heap);
  var defass#x#0: bool;
  var x#0: ref
     where defass#x#0
       ==> $Is(x#0, Tclass._module.ClassA())
         && $IsAlloc(x#0, Tclass._module.ClassA(), $Heap);
  var defass#y#0: bool;
  var y#0: ref
     where defass#y#0
       ==> $Is(y#0, Tclass._module.ClassB())
         && $IsAlloc(y#0, Tclass._module.ClassB(), $Heap);
  var defass#z#0: bool;
  var z#0: ref
     where defass#z#0
       ==> $Is(z#0, Tclass._module.ClassB())
         && $IsAlloc(z#0, Tclass._module.ClassB(), $Heap);
  var $rhs#0: ref;
  var $nw: ref;
  var $rhs#1: ref;
  var $rhs#2: ref;
  var $rhs#3: ref;
  var s#0: Set
     where $Is(s#0, TSet(Tclass._System.object?()))
       && $IsAlloc(s#0, TSet(Tclass._System.object?()), $Heap);
  var newtype$check#0: ref;
  var all#0: Set
     where $Is(all#0, TSet(Tclass._System.object()))
       && $IsAlloc(all#0, TSet(Tclass._System.object()), $Heap);
  var o#0: ref;
  var aa#0: Set
     where $Is(aa#0, TSet(Tclass._module.ClassA()))
       && $IsAlloc(aa#0, TSet(Tclass._module.ClassA()), $Heap);
  var o#2: ref;
  var bb#0: Set
     where $Is(bb#0, TSet(Tclass._module.ClassB()))
       && $IsAlloc(bb#0, TSet(Tclass._module.ClassB()), $Heap);
  var o#4: ref;
  var nn#0: Set
     where $Is(nn#0, TSet(Tclass._module.NothingInParticular()))
       && $IsAlloc(nn#0, TSet(Tclass._module.NothingInParticular()), $Heap);
  var o#6: ref;

    // AddMethodImpl: SetComprehension1, Impl$$_module.__default.SetComprehension1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(97,18)
    assume true;
    assume true;
    assume true;
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassA?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#0 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassA?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#1 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassB?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#2 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassB?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#3 := $nw;
    w#0 := $rhs#0;
    defass#w#0 := true;
    x#0 := $rhs#1;
    defass#x#0 := true;
    y#0 := $rhs#2;
    defass#y#0 := true;
    z#0 := $rhs#3;
    defass#z#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(98,9)
    assume true;
    assert {:id "id91"} defass#w#0;
    assert {:id "id92"} defass#x#0;
    assert {:id "id93"} defass#y#0;
    assert {:id "id94"} defass#z#0;
    newtype$check#0 := null;
    assume true;
    s#0 := Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(w#0)), $Box(x#0)), $Box(y#0)), 
        $Box(z#0)), 
      $Box(null));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(100,11)
    assume true;
    // Begin Comprehension WF check
    havoc o#0;
    if ($Is(o#0, Tclass._System.object())
       && $IsAlloc(o#0, Tclass._System.object(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#0)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    all#0 := Set#FromBoogieMap((lambda $y#0: Box :: 
        $IsBox($y#0, Tclass._System.object()) && Set#IsMember(s#0, $y#0)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(102,10)
    assume true;
    // Begin Comprehension WF check
    havoc o#2;
    if ($Is(o#2, Tclass._module.ClassA())
       && $IsAlloc(o#2, Tclass._module.ClassA(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#2)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    aa#0 := Set#FromBoogieMap((lambda $y#1: Box :: 
        $IsBox($y#1, Tclass._module.ClassA()) && Set#IsMember(s#0, $y#1)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(104,10)
    assume true;
    // Begin Comprehension WF check
    havoc o#4;
    if ($Is(o#4, Tclass._module.ClassB())
       && $IsAlloc(o#4, Tclass._module.ClassB(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#4)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    bb#0 := Set#FromBoogieMap((lambda $y#2: Box :: 
        $IsBox($y#2, Tclass._module.ClassB()) && Set#IsMember(s#0, $y#2)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(106,10)
    assume true;
    // Begin Comprehension WF check
    havoc o#6;
    if ($Is(o#6, Tclass._module.NothingInParticular())
       && $IsAlloc(o#6, Tclass._module.NothingInParticular(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#6)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    nn#0 := Set#FromBoogieMap((lambda $y#3: Box :: 
        $IsBox($y#3, Tclass._module.NothingInParticular()) && Set#IsMember(s#0, $y#3)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(108,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(109,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(110,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(111,3)
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "SetComprehension2 (well-formedness)"} CheckWellFormed$$_module.__default.SetComprehension2();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetComprehension2 (call)"} Call$$_module.__default.SetComprehension2();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetComprehension2 (correctness)"} Impl$$_module.__default.SetComprehension2() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.NothingInParticular?() : Ty
uses {
// Tclass._module.NothingInParticular? Tag
axiom Tag(Tclass._module.NothingInParticular?())
     == Tagclass._module.NothingInParticular?
   && TagFamily(Tclass._module.NothingInParticular?())
     == tytagFamily$NothingInParticular;
}

const unique Tagclass._module.NothingInParticular?: TyTag;

// Box/unbox axiom for Tclass._module.NothingInParticular?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NothingInParticular?()) } 
  $IsBox(bx, Tclass._module.NothingInParticular?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.NothingInParticular?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SetComprehension2 (correctness)"} Impl$$_module.__default.SetComprehension2() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#w#0: bool;
  var w#0: ref
     where defass#w#0
       ==> $Is(w#0, Tclass._module.ClassA())
         && $IsAlloc(w#0, Tclass._module.ClassA(), $Heap);
  var defass#x#0: bool;
  var x#0: ref
     where defass#x#0
       ==> $Is(x#0, Tclass._module.ClassA())
         && $IsAlloc(x#0, Tclass._module.ClassA(), $Heap);
  var defass#y#0: bool;
  var y#0: ref
     where defass#y#0
       ==> $Is(y#0, Tclass._module.ClassB())
         && $IsAlloc(y#0, Tclass._module.ClassB(), $Heap);
  var defass#z#0: bool;
  var z#0: ref
     where defass#z#0
       ==> $Is(z#0, Tclass._module.ClassB())
         && $IsAlloc(z#0, Tclass._module.ClassB(), $Heap);
  var $rhs#0: ref;
  var $nw: ref;
  var $rhs#1: ref;
  var $rhs#2: ref;
  var $rhs#3: ref;
  var s#0: Set
     where $Is(s#0, TSet(Tclass._System.object?()))
       && $IsAlloc(s#0, TSet(Tclass._System.object?()), $Heap);
  var newtype$check#0: ref;
  var all#0: Set
     where $Is(all#0, TSet(Tclass._System.object?()))
       && $IsAlloc(all#0, TSet(Tclass._System.object?()), $Heap);
  var o#0: ref;
  var aa#0: Set
     where $Is(aa#0, TSet(Tclass._module.ClassA?()))
       && $IsAlloc(aa#0, TSet(Tclass._module.ClassA?()), $Heap);
  var o#2: ref;
  var bb#0: Set
     where $Is(bb#0, TSet(Tclass._module.ClassB?()))
       && $IsAlloc(bb#0, TSet(Tclass._module.ClassB?()), $Heap);
  var o#4: ref;
  var nn#0: Set
     where $Is(nn#0, TSet(Tclass._module.NothingInParticular?()))
       && $IsAlloc(nn#0, TSet(Tclass._module.NothingInParticular?()), $Heap);
  var o#6: ref;

    // AddMethodImpl: SetComprehension2, Impl$$_module.__default.SetComprehension2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(116,18)
    assume true;
    assume true;
    assume true;
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassA?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#0 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassA?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#1 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassB?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#2 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ClassB?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#3 := $nw;
    w#0 := $rhs#0;
    defass#w#0 := true;
    x#0 := $rhs#1;
    defass#x#0 := true;
    y#0 := $rhs#2;
    defass#y#0 := true;
    z#0 := $rhs#3;
    defass#z#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(117,9)
    assume true;
    assert {:id "id108"} defass#w#0;
    assert {:id "id109"} defass#x#0;
    assert {:id "id110"} defass#y#0;
    assert {:id "id111"} defass#z#0;
    newtype$check#0 := null;
    assume true;
    s#0 := Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(w#0)), $Box(x#0)), $Box(y#0)), 
        $Box(z#0)), 
      $Box(null));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(119,11)
    assume true;
    // Begin Comprehension WF check
    havoc o#0;
    if ($Is(o#0, Tclass._System.object?())
       && $IsAlloc(o#0, Tclass._System.object?(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#0)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    all#0 := Set#FromBoogieMap((lambda $y#0: Box :: 
        $IsBox($y#0, Tclass._System.object?()) && Set#IsMember(s#0, $y#0)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(121,10)
    assume true;
    // Begin Comprehension WF check
    havoc o#2;
    if ($Is(o#2, Tclass._module.ClassA?())
       && $IsAlloc(o#2, Tclass._module.ClassA?(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#2)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    aa#0 := Set#FromBoogieMap((lambda $y#1: Box :: 
        $IsBox($y#1, Tclass._module.ClassA?()) && Set#IsMember(s#0, $y#1)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(123,10)
    assume true;
    // Begin Comprehension WF check
    havoc o#4;
    if ($Is(o#4, Tclass._module.ClassB?())
       && $IsAlloc(o#4, Tclass._module.ClassB?(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#4)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    bb#0 := Set#FromBoogieMap((lambda $y#2: Box :: 
        $IsBox($y#2, Tclass._module.ClassB?()) && Set#IsMember(s#0, $y#2)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(125,10)
    assume true;
    // Begin Comprehension WF check
    havoc o#6;
    if ($Is(o#6, Tclass._module.NothingInParticular?())
       && $IsAlloc(o#6, Tclass._module.NothingInParticular?(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(o#6)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    nn#0 := Set#FromBoogieMap((lambda $y#3: Box :: 
        $IsBox($y#3, Tclass._module.NothingInParticular?()) && Set#IsMember(s#0, $y#3)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(127,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(128,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(129,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(130,3)
    assume true;
    assume true;
    assume true;
    assume true;
}



// function declaration for _module._default.True
function _module.__default.True(_module._default.True$G: Ty, g#0: Box) : bool
uses {
// definition axiom for _module.__default.True (revealed)
axiom {:id "id117"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.True$G: Ty, g#0: Box :: 
    { _module.__default.True(_module._default.True$G, g#0) } 
    _module.__default.True#canCall(_module._default.True$G, g#0)
         || (0 < $FunctionContextHeight && $IsBox(g#0, _module._default.True$G))
       ==> _module.__default.True(_module._default.True$G, g#0) == Lit(true));
// definition axiom for _module.__default.True for all literals (revealed)
axiom {:id "id118"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.True$G: Ty, g#0: Box :: 
    {:weight 3} { _module.__default.True(_module._default.True$G, Lit(g#0)) } 
    _module.__default.True#canCall(_module._default.True$G, Lit(g#0))
         || (0 < $FunctionContextHeight && $IsBox(g#0, _module._default.True$G))
       ==> _module.__default.True(_module._default.True$G, Lit(g#0)) == Lit(true));
}

function _module.__default.True#canCall(_module._default.True$G: Ty, g#0: Box) : bool;

function _module.__default.True#requires(Ty, Box) : bool;

// #requires axiom for _module.__default.True
axiom (forall _module._default.True$G: Ty, g#0: Box :: 
  { _module.__default.True#requires(_module._default.True$G, g#0) } 
  $IsBox(g#0, _module._default.True$G)
     ==> _module.__default.True#requires(_module._default.True$G, g#0) == true);

procedure {:verboseName "True (well-formedness)"} CheckWellformed$$_module.__default.True(_module._default.True$G: Ty, g#0: Box where $IsBox(g#0, _module._default.True$G));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetComprehension3 (well-formedness)"} CheckWellFormed$$_module.__default.SetComprehension3();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetComprehension3 (call)"} Call$$_module.__default.SetComprehension3();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetComprehension3 (correctness)"} Impl$$_module.__default.SetComprehension3() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Color() : Ty
uses {
// Tclass._module.Color Tag
axiom Tag(Tclass._module.Color()) == Tagclass._module.Color
   && TagFamily(Tclass._module.Color()) == tytagFamily$Color;
}

const unique Tagclass._module.Color: TyTag;

// Box/unbox axiom for Tclass._module.Color
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Color()) } 
  $IsBox(bx, Tclass._module.Color())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Color()));

procedure {:verboseName "Enumerations (well-formedness)"} CheckWellFormed$$_module.__default.Enumerations();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Enumerations (call)"} Call$$_module.__default.Enumerations();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Enumerations (correctness)"} Impl$$_module.__default.Enumerations() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.CellA() : Ty
uses {
// Tclass._module.CellA Tag
axiom Tag(Tclass._module.CellA()) == Tagclass._module.CellA
   && TagFamily(Tclass._module.CellA()) == tytagFamily$CellA;
}

const unique Tagclass._module.CellA: TyTag;

// Box/unbox axiom for Tclass._module.CellA
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.CellA()) } 
  $IsBox(bx, Tclass._module.CellA())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.CellA()));

function Tclass._module.CellB() : Ty
uses {
// Tclass._module.CellB Tag
axiom Tag(Tclass._module.CellB()) == Tagclass._module.CellB
   && TagFamily(Tclass._module.CellB()) == tytagFamily$CellB;
}

const unique Tagclass._module.CellB: TyTag;

// Box/unbox axiom for Tclass._module.CellB
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.CellB()) } 
  $IsBox(bx, Tclass._module.CellB())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.CellB()));

function Tclass._module.CellA?() : Ty
uses {
// Tclass._module.CellA? Tag
axiom Tag(Tclass._module.CellA?()) == Tagclass._module.CellA?
   && TagFamily(Tclass._module.CellA?()) == tytagFamily$CellA;
axiom implements$_module.ICell(Tclass._module.CellA?());
}

const unique Tagclass._module.CellA?: TyTag;

// Box/unbox axiom for Tclass._module.CellA?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.CellA?()) } 
  $IsBox(bx, Tclass._module.CellA?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.CellA?()));

function Tclass._module.CellB?() : Ty
uses {
// Tclass._module.CellB? Tag
axiom Tag(Tclass._module.CellB?()) == Tagclass._module.CellB?
   && TagFamily(Tclass._module.CellB?()) == tytagFamily$CellB;
axiom implements$_module.ICell(Tclass._module.CellB?());
}

const unique Tagclass._module.CellB?: TyTag;

// Box/unbox axiom for Tclass._module.CellB?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.CellB?()) } 
  $IsBox(bx, Tclass._module.CellB?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.CellB?()));

function Tclass._module.ICell?() : Ty
uses {
// Tclass._module.ICell? Tag
axiom Tag(Tclass._module.ICell?()) == Tagclass._module.ICell?
   && TagFamily(Tclass._module.ICell?()) == tytagFamily$ICell;
}

const unique Tagclass._module.ICell?: TyTag;

// Box/unbox axiom for Tclass._module.ICell?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ICell?()) } 
  $IsBox(bx, Tclass._module.ICell?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.ICell?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Enumerations (correctness)"} Impl$$_module.__default.Enumerations() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.CellA()) && $IsAlloc(c#0, Tclass._module.CellA(), $Heap);
  var defass#d#0: bool;
  var d#0: ref
     where defass#d#0
       ==> $Is(d#0, Tclass._module.CellA()) && $IsAlloc(d#0, Tclass._module.CellA(), $Heap);
  var defass#e#0: bool;
  var e#0: ref
     where defass#e#0
       ==> $Is(e#0, Tclass._module.CellB()) && $IsAlloc(e#0, Tclass._module.CellB(), $Heap);
  var $rhs#0: ref;
  var $nw: ref;
  var $rhs#1: ref;
  var $rhs#2: ref;
  var $obj0: ref;
  var $obj1: ref;
  var $obj2: ref;
  var $rhs#3: int;
  var $rhs#4: int;
  var $rhs#5: int;
  var s#0: Set
     where $Is(s#0, TSet(Tclass._module.ICell?()))
       && $IsAlloc(s#0, TSet(Tclass._module.ICell?()), $Heap);
  var newtype$check#0: ref;
  var a#0_0: ref;
  var a#0_1: ref;
  var $prevHeap: Heap;
  var a#1_0: ref;
  var a#1_1: ref;
  var $rhs#6: int;
  var defass#u#0: bool;
  var u#0: ref
     where defass#u#0
       ==> $Is(u#0, Tclass._module.CellA()) && $IsAlloc(u#0, Tclass._module.CellA(), $Heap);
  var u#1: ref;
  var $rhs#7: int;
  var r#0: Set
     where $Is(r#0, TSet(Tclass._module.CellA()))
       && $IsAlloc(r#0, TSet(Tclass._module.CellA()), $Heap);
  var a#0: ref;
  var m#0: Map
     where $Is(m#0, TMap(Tclass._module.CellA(), TInt))
       && $IsAlloc(m#0, TMap(Tclass._module.CellA(), TInt), $Heap);
  var a#2: ref;

    // AddMethodImpl: Enumerations, Impl$$_module.__default.Enumerations
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(159,15)
    assume true;
    assume true;
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.CellA?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#0 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.CellA?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#1 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.CellB?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#2 := $nw;
    c#0 := $rhs#0;
    defass#c#0 := true;
    d#0 := $rhs#1;
    defass#d#0 := true;
    e#0 := $rhs#2;
    defass#e#0 := true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(160,26)
    assert {:id "id132"} defass#c#0;
    assert {:id "id133"} c#0 != null;
    assume true;
    $obj0 := c#0;
    assert {:id "id134"} $_ModifiesFrame[$obj0, _module.ICell.data];
    assert {:id "id135"} defass#d#0;
    assert {:id "id136"} d#0 != null;
    assume true;
    $obj1 := d#0;
    assert {:id "id137"} $_ModifiesFrame[$obj1, _module.ICell.data];
    assert {:id "id138"} defass#e#0;
    assert {:id "id139"} e#0 != null;
    assume true;
    $obj2 := e#0;
    assert {:id "id140"} $_ModifiesFrame[$obj2, _module.ICell.data];
    assume true;
    $rhs#3 := LitInt(4);
    assume true;
    $rhs#4 := LitInt(5);
    assume true;
    $rhs#5 := LitInt(1);
    assert {:id "id144"} d#0 != c#0 || $rhs#4 == $rhs#3;
    assert {:id "id145"} e#0 != c#0 || $rhs#5 == $rhs#3;
    assert {:id "id146"} e#0 != d#0 || $rhs#5 == $rhs#4;
    $Heap := update($Heap, $obj0, _module.ICell.data, $Box($rhs#3));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.ICell.data, $Box($rhs#4));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj2, _module.ICell.data, $Box($rhs#5));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(161,22)
    assume true;
    assert {:id "id150"} defass#c#0;
    assert {:id "id151"} defass#d#0;
    assert {:id "id152"} defass#e#0;
    newtype$check#0 := null;
    assume true;
    s#0 := Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(c#0)), $Box(d#0)), $Box(e#0)), 
      $Box(null));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(162,3)
    assert {:id "id154"} defass#c#0;
    assert {:id "id155"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id156"} defass#d#0;
    assert {:id "id157"} {:subsumption 0} d#0 != null;
    assume true;
    assert {:id "id158"} defass#e#0;
    assert {:id "id159"} {:subsumption 0} e#0 != null;
    assume true;
    assume true;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(165,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc a#0_0;
        assume $Is(a#0_0, Tclass._module.CellA())
           && $IsAlloc(a#0_0, Tclass._module.CellA(), $Heap);
        assume true;
        assume Set#IsMember(s#0, $Box(a#0_0));
        assert {:id "id160"} {:subsumption 0} a#0_0 != null;
        assume true;
        assert {:id "id161"} $_ModifiesFrame[a#0_0, _module.ICell.data];
        assert {:id "id162"} defass#c#0;
        assert {:id "id163"} {:subsumption 0} c#0 != null;
        assert {:id "id164"} {:subsumption 0} a#0_0 != null;
        assume true;
        havoc a#0_1;
        assume $Is(a#0_1, Tclass._module.CellA())
           && $IsAlloc(a#0_1, Tclass._module.CellA(), $Heap);
        assume Set#IsMember(s#0, $Box(a#0_1));
        assume a#0_0 != a#0_1;
        assert {:id "id165"} a#0_0 != a#0_1
           || _module.ICell.data != _module.ICell.data
           || $Unbox(read($Heap, c#0, _module.ICell.data)): int
                 + $Unbox(read($Heap, a#0_0, _module.ICell.data)): int
               - 2
             == $Unbox(read($Heap, c#0, _module.ICell.data)): int
                 + $Unbox(read($Heap, a#0_1, _module.ICell.data)): int
               - 2;
        assume false;
    }
    else
    {
        $prevHeap := $Heap;
        havoc $Heap;
        assume $HeapSucc($prevHeap, $Heap);
        assume (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          read($Heap, $o, $f) == read($prevHeap, $o, $f)
             || (exists a#0_2: ref :: 
              $Is(a#0_2, Tclass._module.CellA())
                 && Set#IsMember(s#0, $Box(a#0_2))
                 && $o == a#0_2
                 && $f == _module.ICell.data));
        assume (forall a#inv#0_0: ref :: 
          { read($Heap, a#inv#0_0, _module.ICell.data) } 
          $Is(a#inv#0_0, Tclass._module.CellA())
               && 
              a#inv#0_0 != null
               && Set#IsMember(s#0, $Box(a#inv#0_0))
             ==> read($Heap, a#inv#0_0, _module.ICell.data)
               == $Box($Unbox(read($prevHeap, c#0, _module.ICell.data)): int
                     + $Unbox(read($prevHeap, a#inv#0_0, _module.ICell.data)): int
                   - 2));
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(168,3)
    assert {:id "id166"} defass#c#0;
    assert {:id "id167"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id168"} defass#d#0;
    assert {:id "id169"} {:subsumption 0} d#0 != null;
    assume true;
    assert {:id "id170"} defass#e#0;
    assert {:id "id171"} {:subsumption 0} e#0 != null;
    assume true;
    assume true;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(171,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc a#1_0;
        assume $Is(a#1_0, Tclass._module.CellA())
           && $IsAlloc(a#1_0, Tclass._module.CellA(), $Heap);
        assume true;
        assume Set#IsMember(s#0, $Box(a#1_0));
        assert {:id "id172"} {:subsumption 0} a#1_0 != null;
        assume true;
        assert {:id "id173"} $_ModifiesFrame[a#1_0, _module.ICell.data];
        assume true;
        havoc a#1_1;
        assume $Is(a#1_1, Tclass._module.CellA())
           && $IsAlloc(a#1_1, Tclass._module.CellA(), $Heap);
        assume Set#IsMember(s#0, $Box(a#1_1));
        assume a#1_0 != a#1_1;
        assert {:id "id174"} a#1_0 != a#1_1
           || _module.ICell.data != _module.ICell.data
           || LitInt(2) == LitInt(2);
        assume false;
    }
    else
    {
        $prevHeap := $Heap;
        havoc $Heap;
        assume $HeapSucc($prevHeap, $Heap);
        assume (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          read($Heap, $o, $f) == read($prevHeap, $o, $f)
             || (exists a#1_2: ref :: 
              $Is(a#1_2, Tclass._module.CellA())
                 && Set#IsMember(s#0, $Box(a#1_2))
                 && $o == a#1_2
                 && $f == _module.ICell.data));
        assume (forall a#inv#1_0: ref :: 
          { read($Heap, a#inv#1_0, _module.ICell.data) } 
          $Is(a#inv#1_0, Tclass._module.CellA())
               && 
              a#inv#1_0 != null
               && Set#IsMember(s#0, $Box(a#inv#1_0))
             ==> read($Heap, a#inv#1_0, _module.ICell.data) == $Box(LitInt(2)));
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(174,3)
    assert {:id "id175"} defass#c#0;
    assert {:id "id176"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id177"} defass#d#0;
    assert {:id "id178"} {:subsumption 0} d#0 != null;
    assume true;
    assert {:id "id179"} defass#e#0;
    assert {:id "id180"} {:subsumption 0} e#0 != null;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(177,10)
    assert {:id "id181"} defass#d#0;
    assert {:id "id182"} d#0 != null;
    assume true;
    assert {:id "id183"} $_ModifiesFrame[d#0, _module.ICell.data];
    assume true;
    $rhs#6 := LitInt(9);
    $Heap := update($Heap, d#0, _module.ICell.data, $Box($rhs#6));
    assume $IsGoodHeap($Heap);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(178,3)
    assert {:id "id186"} defass#d#0;
    assume true;
    assert {:id "id187"} Set#IsMember(s#0, $Box(d#0));
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(179,16)
    havoc u#1;
    if ($Is(u#1, Tclass._module.CellA()) && $IsAlloc(u#1, Tclass._module.CellA(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(u#1)))
        {
            assert {:id "id188"} {:subsumption 0} u#1 != null;
        }

        assume true;
    }

    assert {:id "id189"} ($Is(null, Tclass._module.CellA())
         && 
        Set#IsMember(s#0, $Box(null))
         && LitInt(7) <= $Unbox(read($Heap, null, _module.ICell.data)): int)
       || (exists $as#u0#0: ref :: 
        $Is($as#u0#0, Tclass._module.CellA())
           && 
          Set#IsMember(s#0, $Box($as#u0#0))
           && LitInt(7) <= $Unbox(read($Heap, $as#u0#0, _module.ICell.data)): int);
    defass#u#0 := true;
    havoc u#0;
    assume {:id "id190"} Set#IsMember(s#0, $Box(u#0))
       && LitInt(7) <= $Unbox(read($Heap, u#0, _module.ICell.data)): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(180,10)
    assert {:id "id191"} defass#u#0;
    assert {:id "id192"} u#0 != null;
    assume true;
    assert {:id "id193"} $_ModifiesFrame[u#0, _module.ICell.data];
    assume true;
    $rhs#7 := LitInt(8);
    $Heap := update($Heap, u#0, _module.ICell.data, $Box($rhs#7));
    assume $IsGoodHeap($Heap);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(181,3)
    assert {:id "id196"} defass#c#0;
    assert {:id "id197"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id198"} defass#d#0;
    assert {:id "id199"} {:subsumption 0} d#0 != null;
    assume true;
    assert {:id "id200"} defass#e#0;
    assert {:id "id201"} {:subsumption 0} e#0 != null;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(184,9)
    assume true;
    // Begin Comprehension WF check
    havoc a#0;
    if ($Is(a#0, Tclass._module.CellA()) && $IsAlloc(a#0, Tclass._module.CellA(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(a#0)))
        {
            assert {:id "id202"} a#0 != null;
        }

        if (Set#IsMember(s#0, $Box(a#0))
           && $Unbox(read($Heap, a#0, _module.ICell.data)): int < 6)
        {
        }
    }

    // End Comprehension WF check
    assume true;
    r#0 := Set#FromBoogieMap((lambda $y#0: Box :: 
        $IsBox($y#0, Tclass._module.CellA())
           && 
          Set#IsMember(s#0, $y#0)
           && $Unbox(read($Heap, $Unbox($y#0): ref, _module.ICell.data)): int < 6));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(185,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(188,9)
    assume true;
    // Begin Comprehension WF check
    havoc a#2;
    if ($Is(a#2, Tclass._module.CellA()) && $IsAlloc(a#2, Tclass._module.CellA(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(a#2)))
        {
            assert {:id "id204"} a#2 != null;
        }

        if (Set#IsMember(s#0, $Box(a#2))
           && $Unbox(read($Heap, a#2, _module.ICell.data)): int < 6)
        {
        }
    }

    // End Comprehension WF check
    assume true;
    m#0 := Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
          $IsBox($w#0, Tclass._module.CellA())
             && 
            Set#IsMember(s#0, $w#0)
             && $Unbox(read($Heap, $Unbox($w#0): ref, _module.ICell.data)): int < 6)), 
      (lambda $w#0: Box :: $Box(LitInt(3))), 
      TMap(Tclass._module.CellA(), TInt));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(189,3)
    assert {:id "id206"} defass#c#0;
    assume true;
    assume true;
    assert {:id "id207"} defass#d#0;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "EnumerationsMaybeNull (well-formedness)"} CheckWellFormed$$_module.__default.EnumerationsMaybeNull();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EnumerationsMaybeNull (call)"} Call$$_module.__default.EnumerationsMaybeNull();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "EnumerationsMaybeNull (correctness)"} Impl$$_module.__default.EnumerationsMaybeNull() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EnumerationsMaybeNull (correctness)"} Impl$$_module.__default.EnumerationsMaybeNull() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.CellA()) && $IsAlloc(c#0, Tclass._module.CellA(), $Heap);
  var defass#d#0: bool;
  var d#0: ref
     where defass#d#0
       ==> $Is(d#0, Tclass._module.CellA()) && $IsAlloc(d#0, Tclass._module.CellA(), $Heap);
  var defass#e#0: bool;
  var e#0: ref
     where defass#e#0
       ==> $Is(e#0, Tclass._module.CellB()) && $IsAlloc(e#0, Tclass._module.CellB(), $Heap);
  var $rhs#0: ref;
  var $nw: ref;
  var $rhs#1: ref;
  var $rhs#2: ref;
  var $obj0: ref;
  var $obj1: ref;
  var $obj2: ref;
  var $rhs#3: int;
  var $rhs#4: int;
  var $rhs#5: int;
  var s#0: Set
     where $Is(s#0, TSet(Tclass._module.ICell?()))
       && $IsAlloc(s#0, TSet(Tclass._module.ICell?()), $Heap);
  var newtype$check#0: ref;
  var a#0_0: ref;
  var newtype$check#0_0: ref;
  var newtype$check#0_1: ref;
  var a#0_1: ref;
  var $prevHeap: Heap;
  var a#1_0: ref;
  var newtype$check#1_0: ref;
  var a#1_1: ref;
  var $rhs#6: int;
  var u#0: ref
     where $Is(u#0, Tclass._module.CellA?())
       && $IsAlloc(u#0, Tclass._module.CellA?(), $Heap);
  var u#1: ref;
  var newtype$check#1: ref;
  var $rhs#7: int;
  var r#0: Set
     where $Is(r#0, TSet(Tclass._module.CellA?()))
       && $IsAlloc(r#0, TSet(Tclass._module.CellA?()), $Heap);
  var a#0: ref;
  var newtype$check#2: ref;
  var m#0: Map
     where $Is(m#0, TMap(Tclass._module.CellA?(), TInt))
       && $IsAlloc(m#0, TMap(Tclass._module.CellA?(), TInt), $Heap);
  var a#2: ref;
  var newtype$check#3: ref;
  var newtype$check#4: ref;

    // AddMethodImpl: EnumerationsMaybeNull, Impl$$_module.__default.EnumerationsMaybeNull
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(193,15)
    assume true;
    assume true;
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.CellA?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#0 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.CellA?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#1 := $nw;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.CellB?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#2 := $nw;
    c#0 := $rhs#0;
    defass#c#0 := true;
    d#0 := $rhs#1;
    defass#d#0 := true;
    e#0 := $rhs#2;
    defass#e#0 := true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(194,26)
    assert {:id "id214"} defass#c#0;
    assert {:id "id215"} c#0 != null;
    assume true;
    $obj0 := c#0;
    assert {:id "id216"} $_ModifiesFrame[$obj0, _module.ICell.data];
    assert {:id "id217"} defass#d#0;
    assert {:id "id218"} d#0 != null;
    assume true;
    $obj1 := d#0;
    assert {:id "id219"} $_ModifiesFrame[$obj1, _module.ICell.data];
    assert {:id "id220"} defass#e#0;
    assert {:id "id221"} e#0 != null;
    assume true;
    $obj2 := e#0;
    assert {:id "id222"} $_ModifiesFrame[$obj2, _module.ICell.data];
    assume true;
    $rhs#3 := LitInt(4);
    assume true;
    $rhs#4 := LitInt(5);
    assume true;
    $rhs#5 := LitInt(1);
    assert {:id "id226"} d#0 != c#0 || $rhs#4 == $rhs#3;
    assert {:id "id227"} e#0 != c#0 || $rhs#5 == $rhs#3;
    assert {:id "id228"} e#0 != d#0 || $rhs#5 == $rhs#4;
    $Heap := update($Heap, $obj0, _module.ICell.data, $Box($rhs#3));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.ICell.data, $Box($rhs#4));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj2, _module.ICell.data, $Box($rhs#5));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(195,22)
    assume true;
    assert {:id "id232"} defass#c#0;
    assert {:id "id233"} defass#d#0;
    assert {:id "id234"} defass#e#0;
    newtype$check#0 := null;
    assume true;
    s#0 := Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(c#0)), $Box(d#0)), $Box(e#0)), 
      $Box(null));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(196,3)
    assert {:id "id236"} defass#c#0;
    assert {:id "id237"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id238"} defass#d#0;
    assert {:id "id239"} {:subsumption 0} d#0 != null;
    assume true;
    assert {:id "id240"} defass#e#0;
    assert {:id "id241"} {:subsumption 0} e#0 != null;
    assume true;
    assume true;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(199,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc a#0_0;
        assume $Is(a#0_0, Tclass._module.CellA?())
           && $IsAlloc(a#0_0, Tclass._module.CellA?(), $Heap);
        assume true;
        assume Set#IsMember(s#0, $Box(a#0_0));
        newtype$check#0_0 := null;
        if (a#0_0 == null)
        {
            assert {:id "id242"} defass#c#0;
        }
        else
        {
        }

        assert {:id "id243"} {:subsumption 0} (if a#0_0 == null then c#0 else a#0_0) != null;
        assume true;
        assert {:id "id244"} $_ModifiesFrame[(if a#0_0 == null then c#0 else a#0_0), _module.ICell.data];
        assert {:id "id245"} defass#c#0;
        assert {:id "id246"} {:subsumption 0} c#0 != null;
        newtype$check#0_1 := null;
        if (a#0_0 == null)
        {
            assert {:id "id247"} defass#c#0;
        }
        else
        {
        }

        assert {:id "id248"} {:subsumption 0} (if a#0_0 == null then c#0 else a#0_0) != null;
        assume true;
        havoc a#0_1;
        assume $Is(a#0_1, Tclass._module.CellA?())
           && $IsAlloc(a#0_1, Tclass._module.CellA?(), $Heap);
        assume Set#IsMember(s#0, $Box(a#0_1));
        assume a#0_0 != a#0_1;
        assert {:id "id249"} (if a#0_0 == null then c#0 else a#0_0) != (if a#0_1 == null then c#0 else a#0_1)
           || _module.ICell.data != _module.ICell.data
           || $Unbox(read($Heap, c#0, _module.ICell.data)): int
                 + $Unbox(read($Heap, (if a#0_0 == null then c#0 else a#0_0), _module.ICell.data)): int
               - 2
             == $Unbox(read($Heap, c#0, _module.ICell.data)): int
                 + $Unbox(read($Heap, (if a#0_1 == null then c#0 else a#0_1), _module.ICell.data)): int
               - 2;
        assume false;
    }
    else
    {
        $prevHeap := $Heap;
        havoc $Heap;
        assume $HeapSucc($prevHeap, $Heap);
        assume (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          read($Heap, $o, $f) == read($prevHeap, $o, $f)
             || (exists a#0_2: ref :: 
              $Is(a#0_2, Tclass._module.CellA?())
                 && Set#IsMember(s#0, $Box(a#0_2))
                 && $o == (if a#0_2 == null then c#0 else a#0_2)
                 && $f == _module.ICell.data));
        assume (forall a#inv#0_0: ref :: 
          { read($Heap, a#inv#0_0, _module.ICell.data) } 
          $Is(a#inv#0_0, Tclass._module.CellA?())
               && 
              Set#IsMember(s#0, $Box(null))
               && a#inv#0_0 == c#0
             ==> read($Heap, a#inv#0_0, _module.ICell.data)
               == $Box($Unbox(read($prevHeap, c#0, _module.ICell.data)): int
                     + $Unbox(read($prevHeap, (if null == null then c#0 else null), _module.ICell.data)): int
                   - 2));
        assume (forall a#inv#0_0: ref :: 
          { read($Heap, a#inv#0_0, _module.ICell.data) } 
          $Is(a#inv#0_0, Tclass._module.CellA?())
               && 
              Set#IsMember(s#0, $Box(a#inv#0_0))
               && a#inv#0_0 != null
             ==> read($Heap, a#inv#0_0, _module.ICell.data)
               == $Box($Unbox(read($prevHeap, c#0, _module.ICell.data)): int
                     + $Unbox(read($prevHeap, (if a#inv#0_0 == null then c#0 else a#inv#0_0), _module.ICell.data)): int
                   - 2));
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(202,3)
    assert {:id "id250"} defass#c#0;
    assert {:id "id251"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id252"} defass#d#0;
    assert {:id "id253"} {:subsumption 0} d#0 != null;
    assume true;
    assert {:id "id254"} defass#e#0;
    assert {:id "id255"} {:subsumption 0} e#0 != null;
    assume true;
    assume true;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(205,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc a#1_0;
        assume $Is(a#1_0, Tclass._module.CellA?())
           && $IsAlloc(a#1_0, Tclass._module.CellA?(), $Heap);
        assume true;
        assume Set#IsMember(s#0, $Box(a#1_0));
        newtype$check#1_0 := null;
        if (a#1_0 == null)
        {
            assert {:id "id256"} defass#c#0;
        }
        else
        {
        }

        assert {:id "id257"} {:subsumption 0} (if a#1_0 == null then c#0 else a#1_0) != null;
        assume true;
        assert {:id "id258"} $_ModifiesFrame[(if a#1_0 == null then c#0 else a#1_0), _module.ICell.data];
        assume true;
        havoc a#1_1;
        assume $Is(a#1_1, Tclass._module.CellA?())
           && $IsAlloc(a#1_1, Tclass._module.CellA?(), $Heap);
        assume Set#IsMember(s#0, $Box(a#1_1));
        assume a#1_0 != a#1_1;
        assert {:id "id259"} (if a#1_0 == null then c#0 else a#1_0) != (if a#1_1 == null then c#0 else a#1_1)
           || _module.ICell.data != _module.ICell.data
           || LitInt(2) == LitInt(2);
        assume false;
    }
    else
    {
        $prevHeap := $Heap;
        havoc $Heap;
        assume $HeapSucc($prevHeap, $Heap);
        assume (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          read($Heap, $o, $f) == read($prevHeap, $o, $f)
             || (exists a#1_2: ref :: 
              $Is(a#1_2, Tclass._module.CellA?())
                 && Set#IsMember(s#0, $Box(a#1_2))
                 && $o == (if a#1_2 == null then c#0 else a#1_2)
                 && $f == _module.ICell.data));
        assume (forall a#inv#1_0: ref :: 
          { read($Heap, a#inv#1_0, _module.ICell.data) } 
          $Is(a#inv#1_0, Tclass._module.CellA?())
               && 
              Set#IsMember(s#0, $Box(null))
               && a#inv#1_0 == c#0
             ==> read($Heap, a#inv#1_0, _module.ICell.data) == $Box(LitInt(2)));
        assume (forall a#inv#1_0: ref :: 
          { read($Heap, a#inv#1_0, _module.ICell.data) } 
          $Is(a#inv#1_0, Tclass._module.CellA?())
               && 
              Set#IsMember(s#0, $Box(a#inv#1_0))
               && a#inv#1_0 != null
             ==> read($Heap, a#inv#1_0, _module.ICell.data) == $Box(LitInt(2)));
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(208,3)
    assert {:id "id260"} defass#c#0;
    assert {:id "id261"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id262"} defass#d#0;
    assert {:id "id263"} {:subsumption 0} d#0 != null;
    assume true;
    assert {:id "id264"} defass#e#0;
    assert {:id "id265"} {:subsumption 0} e#0 != null;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(211,10)
    assert {:id "id266"} defass#d#0;
    assert {:id "id267"} d#0 != null;
    assume true;
    assert {:id "id268"} $_ModifiesFrame[d#0, _module.ICell.data];
    assume true;
    $rhs#6 := LitInt(9);
    $Heap := update($Heap, d#0, _module.ICell.data, $Box($rhs#6));
    assume $IsGoodHeap($Heap);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(212,3)
    assert {:id "id271"} defass#d#0;
    assume true;
    assert {:id "id272"} Set#IsMember(s#0, $Box(d#0));
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(213,17)
    havoc u#1;
    if ($Is(u#1, Tclass._module.CellA?())
       && $IsAlloc(u#1, Tclass._module.CellA?(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(u#1)))
        {
            newtype$check#1 := null;
        }

        if (Set#IsMember(s#0, $Box(u#1)) && u#1 != null)
        {
            assert {:id "id273"} {:subsumption 0} u#1 != null;
        }

        assume true;
    }

    assert {:id "id274"} ($Is(null, Tclass._module.CellA?())
         && 
        Set#IsMember(s#0, $Box(null))
         && null != null
         && LitInt(7) <= $Unbox(read($Heap, null, _module.ICell.data)): int)
       || (exists $as#u0#0: ref :: 
        $Is($as#u0#0, Tclass._module.CellA?())
           && 
          Set#IsMember(s#0, $Box($as#u0#0))
           && $as#u0#0 != null
           && LitInt(7) <= $Unbox(read($Heap, $as#u0#0, _module.ICell.data)): int);
    havoc u#0;
    assume {:id "id275"} Set#IsMember(s#0, $Box(u#0))
       && u#0 != null
       && LitInt(7) <= $Unbox(read($Heap, u#0, _module.ICell.data)): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(214,10)
    assert {:id "id276"} u#0 != null;
    assume true;
    assert {:id "id277"} $_ModifiesFrame[u#0, _module.ICell.data];
    assume true;
    $rhs#7 := LitInt(8);
    $Heap := update($Heap, u#0, _module.ICell.data, $Box($rhs#7));
    assume $IsGoodHeap($Heap);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(215,3)
    assert {:id "id280"} defass#c#0;
    assert {:id "id281"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id282"} defass#d#0;
    assert {:id "id283"} {:subsumption 0} d#0 != null;
    assume true;
    assert {:id "id284"} defass#e#0;
    assert {:id "id285"} {:subsumption 0} e#0 != null;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(218,9)
    assume true;
    // Begin Comprehension WF check
    havoc a#0;
    if ($Is(a#0, Tclass._module.CellA?())
       && $IsAlloc(a#0, Tclass._module.CellA?(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(a#0)))
        {
            newtype$check#2 := null;
            if (a#0 != null)
            {
                assert {:id "id286"} a#0 != null;
            }
        }

        if (Set#IsMember(s#0, $Box(a#0))
           && (a#0 == null || $Unbox(read($Heap, a#0, _module.ICell.data)): int < 6))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    r#0 := Set#FromBoogieMap((lambda $y#0: Box :: 
        $IsBox($y#0, Tclass._module.CellA?())
           && 
          Set#IsMember(s#0, $y#0)
           && ($Unbox($y#0): ref == null
             || $Unbox(read($Heap, $Unbox($y#0): ref, _module.ICell.data)): int < 6)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(219,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(222,9)
    assume true;
    // Begin Comprehension WF check
    havoc a#2;
    if ($Is(a#2, Tclass._module.CellA?())
       && $IsAlloc(a#2, Tclass._module.CellA?(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(a#2)))
        {
            newtype$check#3 := null;
            if (a#2 != null)
            {
                assert {:id "id288"} a#2 != null;
            }
        }

        if (Set#IsMember(s#0, $Box(a#2))
           && (a#2 == null || $Unbox(read($Heap, a#2, _module.ICell.data)): int < 6))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    m#0 := Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
          $IsBox($w#0, Tclass._module.CellA?())
             && 
            Set#IsMember(s#0, $w#0)
             && ($Unbox($w#0): ref == null
               || $Unbox(read($Heap, $Unbox($w#0): ref, _module.ICell.data)): int < 6))), 
      (lambda $w#0: Box :: $Box(LitInt(3))), 
      TMap(Tclass._module.CellA?(), TInt));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/ComprehensionsNewSyntax.dfy(223,3)
    newtype$check#4 := null;
    assume true;
    assume true;
    assert {:id "id290"} defass#c#0;
    assume true;
    assume true;
    assert {:id "id291"} defass#d#0;
    assume true;
    assume true;
    assume true;
    assume true;
}



const unique class._module.NothingInParticular?: ClassName;

// $Is axiom for trait NothingInParticular
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.NothingInParticular?()) } 
  $Is($o, Tclass._module.NothingInParticular?())
     <==> $o == null || implements$_module.NothingInParticular(dtype($o)));

// $IsAlloc axiom for trait NothingInParticular
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.NothingInParticular?(), $h) } 
  $IsAlloc($o, Tclass._module.NothingInParticular?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.NothingInParticular(ty: Ty) : bool;

// $Is axiom for non-null type _module.NothingInParticular
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.NothingInParticular()) } 
    { $Is(c#0, Tclass._module.NothingInParticular?()) } 
  $Is(c#0, Tclass._module.NothingInParticular())
     <==> $Is(c#0, Tclass._module.NothingInParticular?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.NothingInParticular
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.NothingInParticular(), $h) } 
    { $IsAlloc(c#0, Tclass._module.NothingInParticular?(), $h) } 
  $IsAlloc(c#0, Tclass._module.NothingInParticular(), $h)
     <==> $IsAlloc(c#0, Tclass._module.NothingInParticular?(), $h));

const unique class._module.ClassA?: ClassName;

// $Is axiom for class ClassA
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.ClassA?()) } 
  $Is($o, Tclass._module.ClassA?())
     <==> $o == null || dtype($o) == Tclass._module.ClassA?());

// $IsAlloc axiom for class ClassA
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.ClassA?(), $h) } 
  $IsAlloc($o, Tclass._module.ClassA?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// $Is axiom for non-null type _module.ClassA
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.ClassA()) } { $Is(c#0, Tclass._module.ClassA?()) } 
  $Is(c#0, Tclass._module.ClassA())
     <==> $Is(c#0, Tclass._module.ClassA?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.ClassA
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.ClassA(), $h) } 
    { $IsAlloc(c#0, Tclass._module.ClassA?(), $h) } 
  $IsAlloc(c#0, Tclass._module.ClassA(), $h)
     <==> $IsAlloc(c#0, Tclass._module.ClassA?(), $h));

const unique class._module.ClassB?: ClassName;

// $Is axiom for class ClassB
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.ClassB?()) } 
  $Is($o, Tclass._module.ClassB?())
     <==> $o == null || dtype($o) == Tclass._module.ClassB?());

// $IsAlloc axiom for class ClassB
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.ClassB?(), $h) } 
  $IsAlloc($o, Tclass._module.ClassB?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// $Is axiom for non-null type _module.ClassB
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.ClassB()) } { $Is(c#0, Tclass._module.ClassB?()) } 
  $Is(c#0, Tclass._module.ClassB())
     <==> $Is(c#0, Tclass._module.ClassB?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.ClassB
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.ClassB(), $h) } 
    { $IsAlloc(c#0, Tclass._module.ClassB?(), $h) } 
  $IsAlloc(c#0, Tclass._module.ClassB(), $h)
     <==> $IsAlloc(c#0, Tclass._module.ClassB?(), $h));

// Constructor function declaration
function #_module.Color.Red() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Red()) == ##_module.Color.Red;
// Constructor $Is
axiom $Is(#_module.Color.Red(), Tclass._module.Color());
// Constructor literal
axiom #_module.Color.Red() == Lit(#_module.Color.Red());
}

const unique ##_module.Color.Red: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Red()) == ##_module.Color.Red;
}

function _module.Color.Red_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Color.Red_q(d) } 
  _module.Color.Red_q(d) <==> DatatypeCtorId(d) == ##_module.Color.Red);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Color.Red_q(d) } 
  _module.Color.Red_q(d) ==> d == #_module.Color.Red());

// Constructor function declaration
function #_module.Color.Green() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Green()) == ##_module.Color.Green;
// Constructor $Is
axiom $Is(#_module.Color.Green(), Tclass._module.Color());
// Constructor literal
axiom #_module.Color.Green() == Lit(#_module.Color.Green());
}

const unique ##_module.Color.Green: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Green()) == ##_module.Color.Green;
}

function _module.Color.Green_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Color.Green_q(d) } 
  _module.Color.Green_q(d) <==> DatatypeCtorId(d) == ##_module.Color.Green);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Color.Green_q(d) } 
  _module.Color.Green_q(d) ==> d == #_module.Color.Green());

// Constructor function declaration
function #_module.Color.Blue() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Blue()) == ##_module.Color.Blue;
// Constructor $Is
axiom $Is(#_module.Color.Blue(), Tclass._module.Color());
// Constructor literal
axiom #_module.Color.Blue() == Lit(#_module.Color.Blue());
}

const unique ##_module.Color.Blue: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Blue()) == ##_module.Color.Blue;
}

function _module.Color.Blue_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Color.Blue_q(d) } 
  _module.Color.Blue_q(d) <==> DatatypeCtorId(d) == ##_module.Color.Blue);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Color.Blue_q(d) } 
  _module.Color.Blue_q(d) ==> d == #_module.Color.Blue());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Color(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Color())
     ==> $IsAlloc(d, Tclass._module.Color(), $h));

// Depth-one case-split function
function $IsA#_module.Color(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Color(d) } 
  $IsA#_module.Color(d)
     ==> _module.Color.Red_q(d) || _module.Color.Green_q(d) || _module.Color.Blue_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Color.Blue_q(d), $Is(d, Tclass._module.Color()) } 
    { _module.Color.Green_q(d), $Is(d, Tclass._module.Color()) } 
    { _module.Color.Red_q(d), $Is(d, Tclass._module.Color()) } 
  $Is(d, Tclass._module.Color())
     ==> _module.Color.Red_q(d) || _module.Color.Green_q(d) || _module.Color.Blue_q(d));

// Datatype extensional equality declaration
function _module.Color#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Color.Red
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Color#Equal(a, b), _module.Color.Red_q(a) } 
    { _module.Color#Equal(a, b), _module.Color.Red_q(b) } 
  _module.Color.Red_q(a) && _module.Color.Red_q(b) ==> _module.Color#Equal(a, b));

// Datatype extensional equality definition: #_module.Color.Green
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Color#Equal(a, b), _module.Color.Green_q(a) } 
    { _module.Color#Equal(a, b), _module.Color.Green_q(b) } 
  _module.Color.Green_q(a) && _module.Color.Green_q(b)
     ==> _module.Color#Equal(a, b));

// Datatype extensional equality definition: #_module.Color.Blue
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Color#Equal(a, b), _module.Color.Blue_q(a) } 
    { _module.Color#Equal(a, b), _module.Color.Blue_q(b) } 
  _module.Color.Blue_q(a) && _module.Color.Blue_q(b) ==> _module.Color#Equal(a, b));

// Datatype extensionality axiom: _module.Color
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Color#Equal(a, b) } 
  _module.Color#Equal(a, b) <==> a == b);

const unique class._module.Color: ClassName;

const unique class._module.ICell?: ClassName;

// $Is axiom for trait ICell
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.ICell?()) } 
  $Is($o, Tclass._module.ICell?())
     <==> $o == null || implements$_module.ICell(dtype($o)));

// $IsAlloc axiom for trait ICell
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.ICell?(), $h) } 
  $IsAlloc($o, Tclass._module.ICell?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.ICell(ty: Ty) : bool;

const _module.ICell.data: Field
uses {
axiom FDim(_module.ICell.data) == 0
   && FieldOfDecl(class._module.ICell?, field$data) == _module.ICell.data
   && !$IsGhostField(_module.ICell.data);
}

// ICell.data: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ICell.data)): int } 
  $IsGoodHeap($h) && $o != null && $Is($o, Tclass._module.ICell?())
     ==> $Is($Unbox(read($h, $o, _module.ICell.data)): int, TInt));

// ICell.data: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ICell.data)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass._module.ICell?())
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.ICell.data)): int, TInt, $h));

function Tclass._module.ICell() : Ty
uses {
// Tclass._module.ICell Tag
axiom Tag(Tclass._module.ICell()) == Tagclass._module.ICell
   && TagFamily(Tclass._module.ICell()) == tytagFamily$ICell;
}

const unique Tagclass._module.ICell: TyTag;

// Box/unbox axiom for Tclass._module.ICell
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ICell()) } 
  $IsBox(bx, Tclass._module.ICell())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.ICell()));

// $Is axiom for non-null type _module.ICell
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.ICell()) } { $Is(c#0, Tclass._module.ICell?()) } 
  $Is(c#0, Tclass._module.ICell())
     <==> $Is(c#0, Tclass._module.ICell?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.ICell
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.ICell(), $h) } 
    { $IsAlloc(c#0, Tclass._module.ICell?(), $h) } 
  $IsAlloc(c#0, Tclass._module.ICell(), $h)
     <==> $IsAlloc(c#0, Tclass._module.ICell?(), $h));

const unique class._module.CellA?: ClassName;

// $Is axiom for class CellA
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.CellA?()) } 
  $Is($o, Tclass._module.CellA?())
     <==> $o == null || dtype($o) == Tclass._module.CellA?());

// $IsAlloc axiom for class CellA
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.CellA?(), $h) } 
  $IsAlloc($o, Tclass._module.CellA?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// $Is axiom for non-null type _module.CellA
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.CellA()) } { $Is(c#0, Tclass._module.CellA?()) } 
  $Is(c#0, Tclass._module.CellA())
     <==> $Is(c#0, Tclass._module.CellA?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.CellA
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.CellA(), $h) } 
    { $IsAlloc(c#0, Tclass._module.CellA?(), $h) } 
  $IsAlloc(c#0, Tclass._module.CellA(), $h)
     <==> $IsAlloc(c#0, Tclass._module.CellA?(), $h));

const unique class._module.CellB?: ClassName;

// $Is axiom for class CellB
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.CellB?()) } 
  $Is($o, Tclass._module.CellB?())
     <==> $o == null || dtype($o) == Tclass._module.CellB?());

// $IsAlloc axiom for class CellB
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.CellB?(), $h) } 
  $IsAlloc($o, Tclass._module.CellB?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// $Is axiom for non-null type _module.CellB
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.CellB()) } { $Is(c#0, Tclass._module.CellB?()) } 
  $Is(c#0, Tclass._module.CellB())
     <==> $Is(c#0, Tclass._module.CellB?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.CellB
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.CellB(), $h) } 
    { $IsAlloc(c#0, Tclass._module.CellB?(), $h) } 
  $IsAlloc(c#0, Tclass._module.CellB(), $h)
     <==> $IsAlloc(c#0, Tclass._module.CellB?(), $h));

const unique class.TestImplicitTypeTests.__default: ClassName;

procedure {:verboseName "TestImplicitTypeTests.Test (well-formedness)"} CheckWellFormed$$TestImplicitTypeTests.__default.Test();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestImplicitTypeTests.Test (call)"} Call$$TestImplicitTypeTests.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class.TestImplicitTypeTests.A?: ClassName;

function Tclass.TestImplicitTypeTests.A?() : Ty
uses {
// Tclass.TestImplicitTypeTests.A? Tag
axiom Tag(Tclass.TestImplicitTypeTests.A?()) == Tagclass.TestImplicitTypeTests.A?
   && TagFamily(Tclass.TestImplicitTypeTests.A?()) == tytagFamily$A;
}

const unique Tagclass.TestImplicitTypeTests.A?: TyTag;

// Box/unbox axiom for Tclass.TestImplicitTypeTests.A?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.A?()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.A?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestImplicitTypeTests.A?()));

// $Is axiom for trait A
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestImplicitTypeTests.A?()) } 
  $Is($o, Tclass.TestImplicitTypeTests.A?())
     <==> $o == null || implements$TestImplicitTypeTests.A(dtype($o)));

// $IsAlloc axiom for trait A
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TestImplicitTypeTests.A?(), $h) } 
  $IsAlloc($o, Tclass.TestImplicitTypeTests.A?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TestImplicitTypeTests.A(ty: Ty) : bool;

function Tclass.TestImplicitTypeTests.A() : Ty
uses {
// Tclass.TestImplicitTypeTests.A Tag
axiom Tag(Tclass.TestImplicitTypeTests.A()) == Tagclass.TestImplicitTypeTests.A
   && TagFamily(Tclass.TestImplicitTypeTests.A()) == tytagFamily$A;
}

const unique Tagclass.TestImplicitTypeTests.A: TyTag;

// Box/unbox axiom for Tclass.TestImplicitTypeTests.A
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.A()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.A())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestImplicitTypeTests.A()));

// $Is axiom for non-null type TestImplicitTypeTests.A
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TestImplicitTypeTests.A()) } 
    { $Is(c#0, Tclass.TestImplicitTypeTests.A?()) } 
  $Is(c#0, Tclass.TestImplicitTypeTests.A())
     <==> $Is(c#0, Tclass.TestImplicitTypeTests.A?()) && c#0 != null);

// $IsAlloc axiom for non-null type TestImplicitTypeTests.A
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TestImplicitTypeTests.A(), $h) } 
    { $IsAlloc(c#0, Tclass.TestImplicitTypeTests.A?(), $h) } 
  $IsAlloc(c#0, Tclass.TestImplicitTypeTests.A(), $h)
     <==> $IsAlloc(c#0, Tclass.TestImplicitTypeTests.A?(), $h));

const unique class.TestImplicitTypeTests.B?: ClassName;

function Tclass.TestImplicitTypeTests.B?() : Ty
uses {
// Tclass.TestImplicitTypeTests.B? Tag
axiom Tag(Tclass.TestImplicitTypeTests.B?()) == Tagclass.TestImplicitTypeTests.B?
   && TagFamily(Tclass.TestImplicitTypeTests.B?()) == tytagFamily$B;
}

const unique Tagclass.TestImplicitTypeTests.B?: TyTag;

// Box/unbox axiom for Tclass.TestImplicitTypeTests.B?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.B?()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.B?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestImplicitTypeTests.B?()));

// $Is axiom for trait B
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestImplicitTypeTests.B?()) } 
  $Is($o, Tclass.TestImplicitTypeTests.B?())
     <==> $o == null || implements$TestImplicitTypeTests.B(dtype($o)));

// $IsAlloc axiom for trait B
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TestImplicitTypeTests.B?(), $h) } 
  $IsAlloc($o, Tclass.TestImplicitTypeTests.B?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TestImplicitTypeTests.B(ty: Ty) : bool;

function Tclass.TestImplicitTypeTests.B() : Ty
uses {
// Tclass.TestImplicitTypeTests.B Tag
axiom Tag(Tclass.TestImplicitTypeTests.B()) == Tagclass.TestImplicitTypeTests.B
   && TagFamily(Tclass.TestImplicitTypeTests.B()) == tytagFamily$B;
}

const unique Tagclass.TestImplicitTypeTests.B: TyTag;

// Box/unbox axiom for Tclass.TestImplicitTypeTests.B
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.B()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.B())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestImplicitTypeTests.B()));

// $Is axiom for non-null type TestImplicitTypeTests.B
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TestImplicitTypeTests.B()) } 
    { $Is(c#0, Tclass.TestImplicitTypeTests.B?()) } 
  $Is(c#0, Tclass.TestImplicitTypeTests.B())
     <==> $Is(c#0, Tclass.TestImplicitTypeTests.B?()) && c#0 != null);

// $IsAlloc axiom for non-null type TestImplicitTypeTests.B
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TestImplicitTypeTests.B(), $h) } 
    { $IsAlloc(c#0, Tclass.TestImplicitTypeTests.B?(), $h) } 
  $IsAlloc(c#0, Tclass.TestImplicitTypeTests.B(), $h)
     <==> $IsAlloc(c#0, Tclass.TestImplicitTypeTests.B?(), $h));

const unique class.TestImplicitTypeTests.C?: ClassName;

function Tclass.TestImplicitTypeTests.C?() : Ty
uses {
// Tclass.TestImplicitTypeTests.C? Tag
axiom Tag(Tclass.TestImplicitTypeTests.C?()) == Tagclass.TestImplicitTypeTests.C?
   && TagFamily(Tclass.TestImplicitTypeTests.C?()) == tytagFamily$C;
axiom implements$TestImplicitTypeTests.B(Tclass.TestImplicitTypeTests.C?());
}

const unique Tagclass.TestImplicitTypeTests.C?: TyTag;

// Box/unbox axiom for Tclass.TestImplicitTypeTests.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.C?()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.C?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestImplicitTypeTests.C?()));

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestImplicitTypeTests.C?()) } 
  $Is($o, Tclass.TestImplicitTypeTests.C?())
     <==> $o == null || dtype($o) == Tclass.TestImplicitTypeTests.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TestImplicitTypeTests.C?(), $h) } 
  $IsAlloc($o, Tclass.TestImplicitTypeTests.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.TestImplicitTypeTests.C() : Ty
uses {
// Tclass.TestImplicitTypeTests.C Tag
axiom Tag(Tclass.TestImplicitTypeTests.C()) == Tagclass.TestImplicitTypeTests.C
   && TagFamily(Tclass.TestImplicitTypeTests.C()) == tytagFamily$C;
}

const unique Tagclass.TestImplicitTypeTests.C: TyTag;

// Box/unbox axiom for Tclass.TestImplicitTypeTests.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.C()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.C())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestImplicitTypeTests.C()));

// $Is axiom for non-null type TestImplicitTypeTests.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TestImplicitTypeTests.C()) } 
    { $Is(c#0, Tclass.TestImplicitTypeTests.C?()) } 
  $Is(c#0, Tclass.TestImplicitTypeTests.C())
     <==> $Is(c#0, Tclass.TestImplicitTypeTests.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type TestImplicitTypeTests.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TestImplicitTypeTests.C(), $h) } 
    { $IsAlloc(c#0, Tclass.TestImplicitTypeTests.C?(), $h) } 
  $IsAlloc(c#0, Tclass.TestImplicitTypeTests.C(), $h)
     <==> $IsAlloc(c#0, Tclass.TestImplicitTypeTests.C?(), $h));

const unique class.TestImplicitTypeTests.A_k?: ClassName;

function Tclass.TestImplicitTypeTests.A_k?() : Ty
uses {
// Tclass.TestImplicitTypeTests.A_k? Tag
axiom Tag(Tclass.TestImplicitTypeTests.A_k?()) == Tagclass.TestImplicitTypeTests.A_k?
   && TagFamily(Tclass.TestImplicitTypeTests.A_k?()) == tytagFamily$A';
axiom implements$TestImplicitTypeTests.A(Tclass.TestImplicitTypeTests.A_k?());
}

const unique Tagclass.TestImplicitTypeTests.A_k?: TyTag;

// Box/unbox axiom for Tclass.TestImplicitTypeTests.A_k?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.A_k?()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.A_k?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestImplicitTypeTests.A_k?()));

// $Is axiom for class A'
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestImplicitTypeTests.A_k?()) } 
  $Is($o, Tclass.TestImplicitTypeTests.A_k?())
     <==> $o == null || dtype($o) == Tclass.TestImplicitTypeTests.A_k?());

// $IsAlloc axiom for class A'
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TestImplicitTypeTests.A_k?(), $h) } 
  $IsAlloc($o, Tclass.TestImplicitTypeTests.A_k?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.TestImplicitTypeTests.A_k() : Ty
uses {
// Tclass.TestImplicitTypeTests.A_k Tag
axiom Tag(Tclass.TestImplicitTypeTests.A_k()) == Tagclass.TestImplicitTypeTests.A_k
   && TagFamily(Tclass.TestImplicitTypeTests.A_k()) == tytagFamily$A';
}

const unique Tagclass.TestImplicitTypeTests.A_k: TyTag;

// Box/unbox axiom for Tclass.TestImplicitTypeTests.A_k
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.A_k()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.A_k())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestImplicitTypeTests.A_k()));

// $Is axiom for non-null type TestImplicitTypeTests.A'
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TestImplicitTypeTests.A_k()) } 
    { $Is(c#0, Tclass.TestImplicitTypeTests.A_k?()) } 
  $Is(c#0, Tclass.TestImplicitTypeTests.A_k())
     <==> $Is(c#0, Tclass.TestImplicitTypeTests.A_k?()) && c#0 != null);

// $IsAlloc axiom for non-null type TestImplicitTypeTests.A'
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TestImplicitTypeTests.A_k(), $h) } 
    { $IsAlloc(c#0, Tclass.TestImplicitTypeTests.A_k?(), $h) } 
  $IsAlloc(c#0, Tclass.TestImplicitTypeTests.A_k(), $h)
     <==> $IsAlloc(c#0, Tclass.TestImplicitTypeTests.A_k?(), $h));

const unique class.TestImplicitTypeTests.B_k?: ClassName;

function Tclass.TestImplicitTypeTests.B_k?() : Ty
uses {
// Tclass.TestImplicitTypeTests.B_k? Tag
axiom Tag(Tclass.TestImplicitTypeTests.B_k?()) == Tagclass.TestImplicitTypeTests.B_k?
   && TagFamily(Tclass.TestImplicitTypeTests.B_k?()) == tytagFamily$B';
axiom implements$TestImplicitTypeTests.B(Tclass.TestImplicitTypeTests.B_k?());
}

const unique Tagclass.TestImplicitTypeTests.B_k?: TyTag;

// Box/unbox axiom for Tclass.TestImplicitTypeTests.B_k?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.B_k?()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.B_k?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestImplicitTypeTests.B_k?()));

// $Is axiom for class B'
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestImplicitTypeTests.B_k?()) } 
  $Is($o, Tclass.TestImplicitTypeTests.B_k?())
     <==> $o == null || dtype($o) == Tclass.TestImplicitTypeTests.B_k?());

// $IsAlloc axiom for class B'
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TestImplicitTypeTests.B_k?(), $h) } 
  $IsAlloc($o, Tclass.TestImplicitTypeTests.B_k?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.TestImplicitTypeTests.B_k() : Ty
uses {
// Tclass.TestImplicitTypeTests.B_k Tag
axiom Tag(Tclass.TestImplicitTypeTests.B_k()) == Tagclass.TestImplicitTypeTests.B_k
   && TagFamily(Tclass.TestImplicitTypeTests.B_k()) == tytagFamily$B';
}

const unique Tagclass.TestImplicitTypeTests.B_k: TyTag;

// Box/unbox axiom for Tclass.TestImplicitTypeTests.B_k
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.B_k()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.B_k())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TestImplicitTypeTests.B_k()));

// $Is axiom for non-null type TestImplicitTypeTests.B'
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TestImplicitTypeTests.B_k()) } 
    { $Is(c#0, Tclass.TestImplicitTypeTests.B_k?()) } 
  $Is(c#0, Tclass.TestImplicitTypeTests.B_k())
     <==> $Is(c#0, Tclass.TestImplicitTypeTests.B_k?()) && c#0 != null);

// $IsAlloc axiom for non-null type TestImplicitTypeTests.B'
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TestImplicitTypeTests.B_k(), $h) } 
    { $IsAlloc(c#0, Tclass.TestImplicitTypeTests.B_k?(), $h) } 
  $IsAlloc(c#0, Tclass.TestImplicitTypeTests.B_k(), $h)
     <==> $IsAlloc(c#0, Tclass.TestImplicitTypeTests.B_k?(), $h));

// type axiom for trait parent: B? extends A?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestImplicitTypeTests.B?()) } 
  $Is($o, Tclass.TestImplicitTypeTests.B?())
     ==> $Is($o, Tclass.TestImplicitTypeTests.A?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.B?()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.B?())
     ==> $IsBox(bx, Tclass.TestImplicitTypeTests.A?()));

// allocation axiom for trait parent: B? extends A?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TestImplicitTypeTests.B?(), $heap) } 
  $IsAlloc($o, Tclass.TestImplicitTypeTests.B?(), $heap)
     ==> $IsAlloc($o, Tclass.TestImplicitTypeTests.A?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TestImplicitTypeTests.B?(), $h) } 
  $IsAllocBox(bx, Tclass.TestImplicitTypeTests.B?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TestImplicitTypeTests.A?(), $h));

// type axiom for trait parent: C? extends B?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestImplicitTypeTests.C?()) } 
  $Is($o, Tclass.TestImplicitTypeTests.C?())
     ==> $Is($o, Tclass.TestImplicitTypeTests.B?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.C?()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.C?())
     ==> $IsBox(bx, Tclass.TestImplicitTypeTests.B?()));

// allocation axiom for trait parent: C? extends B?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TestImplicitTypeTests.C?(), $heap) } 
  $IsAlloc($o, Tclass.TestImplicitTypeTests.C?(), $heap)
     ==> $IsAlloc($o, Tclass.TestImplicitTypeTests.B?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TestImplicitTypeTests.C?(), $h) } 
  $IsAllocBox(bx, Tclass.TestImplicitTypeTests.C?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TestImplicitTypeTests.B?(), $h));

// type axiom for trait parent: A'? extends A?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestImplicitTypeTests.A_k?()) } 
  $Is($o, Tclass.TestImplicitTypeTests.A_k?())
     ==> $Is($o, Tclass.TestImplicitTypeTests.A?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.A_k?()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.A_k?())
     ==> $IsBox(bx, Tclass.TestImplicitTypeTests.A?()));

// allocation axiom for trait parent: A'? extends A?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TestImplicitTypeTests.A_k?(), $heap) } 
  $IsAlloc($o, Tclass.TestImplicitTypeTests.A_k?(), $heap)
     ==> $IsAlloc($o, Tclass.TestImplicitTypeTests.A?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TestImplicitTypeTests.A_k?(), $h) } 
  $IsAllocBox(bx, Tclass.TestImplicitTypeTests.A_k?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TestImplicitTypeTests.A?(), $h));

// type axiom for trait parent: B'? extends B?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TestImplicitTypeTests.B_k?()) } 
  $Is($o, Tclass.TestImplicitTypeTests.B_k?())
     ==> $Is($o, Tclass.TestImplicitTypeTests.B?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestImplicitTypeTests.B_k?()) } 
  $IsBox(bx, Tclass.TestImplicitTypeTests.B_k?())
     ==> $IsBox(bx, Tclass.TestImplicitTypeTests.B?()));

// allocation axiom for trait parent: B'? extends B?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TestImplicitTypeTests.B_k?(), $heap) } 
  $IsAlloc($o, Tclass.TestImplicitTypeTests.B_k?(), $heap)
     ==> $IsAlloc($o, Tclass.TestImplicitTypeTests.B?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TestImplicitTypeTests.B_k?(), $h) } 
  $IsAllocBox(bx, Tclass.TestImplicitTypeTests.B_k?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TestImplicitTypeTests.B?(), $h));

// type axiom for trait parent: ClassB? extends NothingInParticular?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.ClassB?()) } 
  $Is($o, Tclass._module.ClassB?())
     ==> $Is($o, Tclass._module.NothingInParticular?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ClassB?()) } 
  $IsBox(bx, Tclass._module.ClassB?())
     ==> $IsBox(bx, Tclass._module.NothingInParticular?()));

// allocation axiom for trait parent: ClassB? extends NothingInParticular?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.ClassB?(), $heap) } 
  $IsAlloc($o, Tclass._module.ClassB?(), $heap)
     ==> $IsAlloc($o, Tclass._module.NothingInParticular?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.ClassB?(), $h) } 
  $IsAllocBox(bx, Tclass._module.ClassB?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.NothingInParticular?(), $h));

// type axiom for trait parent: CellA? extends ICell?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.CellA?()) } 
  $Is($o, Tclass._module.CellA?()) ==> $Is($o, Tclass._module.ICell?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.CellA?()) } 
  $IsBox(bx, Tclass._module.CellA?()) ==> $IsBox(bx, Tclass._module.ICell?()));

// allocation axiom for trait parent: CellA? extends ICell?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.CellA?(), $heap) } 
  $IsAlloc($o, Tclass._module.CellA?(), $heap)
     ==> $IsAlloc($o, Tclass._module.ICell?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.CellA?(), $h) } 
  $IsAllocBox(bx, Tclass._module.CellA?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.ICell?(), $h));

// type axiom for trait parent: CellB? extends ICell?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.CellB?()) } 
  $Is($o, Tclass._module.CellB?()) ==> $Is($o, Tclass._module.ICell?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.CellB?()) } 
  $IsBox(bx, Tclass._module.CellB?()) ==> $IsBox(bx, Tclass._module.ICell?()));

// allocation axiom for trait parent: CellB? extends ICell?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.CellB?(), $heap) } 
  $IsAlloc($o, Tclass._module.CellB?(), $heap)
     ==> $IsAlloc($o, Tclass._module.ICell?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.CellB?(), $h) } 
  $IsAllocBox(bx, Tclass._module.CellB?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.ICell?(), $h));

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

const unique tytagFamily$ClassA: TyTagFamily;

const unique tytagFamily$ClassB: TyTagFamily;

const unique tytagFamily$NothingInParticular: TyTagFamily;

const unique tytagFamily$Color: TyTagFamily;

const unique tytagFamily$CellA: TyTagFamily;

const unique tytagFamily$CellB: TyTagFamily;

const unique tytagFamily$ICell: TyTagFamily;

const unique tytagFamily$A: TyTagFamily;

const unique tytagFamily$B: TyTagFamily;

const unique tytagFamily$C: TyTagFamily;

const unique tytagFamily$A': TyTagFamily;

const unique tytagFamily$B': TyTagFamily;

const unique field$data: NameFamily;
