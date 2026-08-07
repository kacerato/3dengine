.class public LV2/j$a;
.super LV2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV2/j;->t()LV2/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LV2/f<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:LV2/j;


# direct methods
.method public constructor <init>(LV2/j;)V
    .locals 0

    iput-object p1, p0, LV2/j$a;->a:LV2/j;

    invoke-direct {p0}, LV2/f;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LV2/j$a;->a(Ljava/lang/Object;)Ljava/util/Set;

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
    iget-object v0, p0, LV2/j$a;->a:LV2/j;

    invoke-interface {v0, p1}, LV2/j0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LV2/j$a;->b(Ljava/lang/Object;)Ljava/util/Set;

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
    iget-object v0, p0, LV2/j$a;->a:LV2/j;

    invoke-interface {v0, p1}, LV2/j0;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "LV2/u<",
            "TN;>;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/j$a;->a:LV2/j;

    invoke-virtual {v0}, LV2/j;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, LV2/j$a;->a:LV2/j;

    invoke-interface {v0}, LV2/j0;->e()Z

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    iget-object v0, p0, LV2/j$a;->a:LV2/j;

    invoke-virtual {v0, p1}, LV2/j;->g(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public h()LV2/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/s<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/j$a;->a:LV2/j;

    invoke-interface {v0}, LV2/j0;->h()LV2/s;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    iget-object v0, p0, LV2/j$a;->a:LV2/j;

    invoke-virtual {v0, p1}, LV2/j;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, LV2/j$a;->a:LV2/j;

    invoke-interface {v0}, LV2/j0;->j()Z

    move-result v0

    return v0
.end method

.method public k(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/j$a;->a:LV2/j;

    invoke-interface {v0, p1}, LV2/j0;->k(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public m()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/j$a;->a:LV2/j;

    invoke-interface {v0}, LV2/j0;->m()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    iget-object v0, p0, LV2/j$a;->a:LV2/j;

    invoke-virtual {v0, p1}, LV2/j;->n(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public p()LV2/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/s<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/j$a;->a:LV2/j;

    invoke-virtual {v0}, LV2/j;->p()LV2/s;

    move-result-object v0

    return-object v0
.end method
