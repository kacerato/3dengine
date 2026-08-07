.class public LV2/D$d;
.super LV2/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LV2/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LV2/y<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field public final a:LV2/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV2/j0<",
            "TN;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LV2/j0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/j0<",
            "TN;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LV2/y;-><init>()V

    iput-object p1, p0, LV2/D$d;->a:LV2/j0;

    return-void
.end method

.method public static synthetic S(LV2/D$d;)LV2/j0;
    .locals 0

    iget-object p0, p0, LV2/D$d;->a:LV2/j0;

    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, LV2/D$d;->R()LV2/j0;

    move-result-object v0

    invoke-interface {v0, p2, p1, p3}, LV2/j0;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public R()LV2/j0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/j0<",
            "TN;TV;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/D$d;->a:LV2/j0;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LV2/D$d;->a(Ljava/lang/Object;)Ljava/util/Set;

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
    invoke-virtual {p0}, LV2/D$d;->R()LV2/j0;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/j0;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LV2/D$d;->b(Ljava/lang/Object;)Ljava/util/Set;

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
    invoke-virtual {p0}, LV2/D$d;->R()LV2/j0;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/j0;->a(Ljava/lang/Object;)Ljava/util/Set;

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

    invoke-virtual {p0}, LV2/D$d;->R()LV2/j0;

    move-result-object v0

    invoke-interface {v0, p2, p1}, LV2/j0;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, LV2/D$d;->R()LV2/j0;

    move-result-object v0

    invoke-static {p1}, LV2/D;->q(LV2/u;)LV2/u;

    move-result-object p1

    invoke-interface {v0, p1}, LV2/j0;->f(LV2/u;)Z

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

    invoke-virtual {p0}, LV2/D$d;->R()LV2/j0;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/j0;->n(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public n(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, LV2/D$d;->R()LV2/j0;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/j0;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public u(LV2/u;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/u<",
            "TN;>;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, LV2/D$d;->R()LV2/j0;

    move-result-object v0

    invoke-static {p1}, LV2/D;->q(LV2/u;)LV2/u;

    move-result-object p1

    invoke-interface {v0, p1, p2}, LV2/j0;->u(LV2/u;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
