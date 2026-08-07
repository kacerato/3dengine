.class public LV2/D$b;
.super LV2/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LV2/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "LV2/w<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final a:LV2/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV2/z<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LV2/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/z<",
            "TN;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LV2/w;-><init>()V

    iput-object p1, p0, LV2/D$b;->a:LV2/z;

    return-void
.end method

.method public static synthetic R(LV2/D$b;)LV2/z;
    .locals 0

    iget-object p0, p0, LV2/D$b;->a:LV2/z;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic Q()LV2/k;
    .locals 1

    invoke-virtual {p0}, LV2/D$b;->S()LV2/z;

    move-result-object v0

    return-object v0
.end method

.method public S()LV2/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/z<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/D$b;->a:LV2/z;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LV2/D$b;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, LV2/D$b;->S()LV2/z;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/z;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LV2/D$b;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, LV2/D$b;->S()LV2/z;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/z;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    invoke-virtual {p0}, LV2/D$b;->S()LV2/z;

    move-result-object v0

    invoke-interface {v0, p2, p1}, LV2/z;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(LV2/u;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/u<",
            "TN;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, LV2/D$b;->S()LV2/z;

    move-result-object v0

    invoke-static {p1}, LV2/D;->q(LV2/u;)LV2/u;

    move-result-object p1

    invoke-interface {v0, p1}, LV2/z;->f(LV2/u;)Z

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, LV2/D$b;->S()LV2/z;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/z;->n(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public l(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "LV2/u<",
            "TN;>;>;"
        }
    .end annotation

    new-instance v0, LV2/D$b$a;

    invoke-direct {v0, p0, p0, p1}, LV2/D$b$a;-><init>(LV2/D$b;LV2/k;Ljava/lang/Object;)V

    return-object v0
.end method

.method public n(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, LV2/D$b;->S()LV2/z;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/z;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
