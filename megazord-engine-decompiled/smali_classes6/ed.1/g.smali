.class public Led/g;
.super Lye/X;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Led/g$c;,
        Led/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lye/X<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final y:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Led/g$c<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public final z:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Led/g$b<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lye/X;-><init>()V

    .line 2
    new-instance v0, Led/e;

    invoke-direct {v0}, Led/e;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Led/g;->y:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v0, Led/f;

    invoke-direct {v0}, Led/f;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Led/g;->z:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialCapacity"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lye/X;-><init>(I)V

    .line 5
    new-instance p1, Led/e;

    invoke-direct {p1}, Led/e;-><init>()V

    invoke-static {p1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p1

    iput-object p1, p0, Led/g;->y:Ljava/lang/ThreadLocal;

    .line 6
    new-instance p1, Led/f;

    invoke-direct {p1}, Led/f;-><init>()V

    invoke-static {p1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p1

    iput-object p1, p0, Led/g;->z:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "initialCapacity",
            "loadFactor"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Lye/X;-><init>(IF)V

    .line 8
    new-instance p1, Led/e;

    invoke-direct {p1}, Led/e;-><init>()V

    invoke-static {p1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p1

    iput-object p1, p0, Led/g;->y:Ljava/lang/ThreadLocal;

    .line 9
    new-instance p1, Led/f;

    invoke-direct {p1}, Led/f;-><init>()V

    invoke-static {p1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p1

    iput-object p1, p0, Led/g;->z:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(IFJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "initialCapacity",
            "loadFactor",
            "noEntryKey"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lye/X;-><init>(IFJ)V

    .line 11
    new-instance p1, Led/e;

    invoke-direct {p1}, Led/e;-><init>()V

    invoke-static {p1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p1

    iput-object p1, p0, Led/g;->y:Ljava/lang/ThreadLocal;

    .line 12
    new-instance p1, Led/f;

    invoke-direct {p1}, Led/f;-><init>()V

    invoke-static {p1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p1

    iput-object p1, p0, Led/g;->z:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lwe/V;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lye/X;-><init>(Lwe/V;)V

    .line 14
    new-instance p1, Led/e;

    invoke-direct {p1}, Led/e;-><init>()V

    invoke-static {p1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p1

    iput-object p1, p0, Led/g;->y:Ljava/lang/ThreadLocal;

    .line 15
    new-instance p1, Led/f;

    invoke-direct {p1}, Led/f;-><init>()V

    invoke-static {p1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p1

    iput-object p1, p0, Led/g;->z:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static synthetic He()Led/g$c;
    .locals 1

    invoke-static {}, Led/g;->Le()Led/g$c;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic Ie()Led/g$b;
    .locals 1

    invoke-static {}, Led/g;->Me()Led/g$b;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic Le()Led/g$c;
    .locals 2

    new-instance v0, Led/g$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Led/g$c;-><init>(Led/g$a;)V

    return-object v0
.end method

.method public static synthetic Me()Led/g$b;
    .locals 2

    new-instance v0, Led/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Led/g$b;-><init>(Led/g$a;)V

    return-object v0
.end method


# virtual methods
.method public Je(Ljava/lang/Object;Led/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bundle",
            "procedure"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Led/b<",
            "TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Led/g;->z:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Led/g$b;

    invoke-virtual {v0}, Led/g$b;->a()V

    iput-object p1, v0, Led/g$b;->c:Ljava/lang/Object;

    iput-object p2, v0, Led/g$b;->d:Led/b;

    iget-object p1, v0, Led/g$b;->f:Lze/k0;

    invoke-super {p0, p1}, Lye/X;->f0(Lze/k0;)Z

    iget-object p1, v0, Led/g$b;->a:[Z

    const/4 p2, 0x0

    aget-boolean p1, p1, p2

    return p1
.end method

.method public Ke(Ljava/lang/Object;Led/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bundle",
            "procedure"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Led/d<",
            "TV;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Led/g;->y:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Led/g$c;

    invoke-virtual {v0}, Led/g$c;->a()V

    iput-object p1, v0, Led/g$c;->b:Ljava/lang/Object;

    iput-object p2, v0, Led/g$c;->c:Led/d;

    iget-object p1, v0, Led/g$c;->d:Lze/k0;

    invoke-super {p0, p1}, Lye/X;->f0(Lze/k0;)Z

    iget-object p1, v0, Led/g$c;->a:[Ljava/lang/Object;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    return-object p1
.end method
