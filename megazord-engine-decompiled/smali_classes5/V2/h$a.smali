.class public LV2/h$a;
.super LV2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV2/h;->t()LV2/z;
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
.field public final synthetic a:LV2/h;


# direct methods
.method public constructor <init>(LV2/h;)V
    .locals 0

    iput-object p1, p0, LV2/h$a;->a:LV2/h;

    invoke-direct {p0}, LV2/f;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LV2/h$a;->a(Ljava/lang/Object;)Ljava/util/Set;

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
    iget-object v0, p0, LV2/h$a;->a:LV2/h;

    invoke-interface {v0, p1}, LV2/T;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LV2/h$a;->b(Ljava/lang/Object;)Ljava/util/Set;

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
    iget-object v0, p0, LV2/h$a;->a:LV2/h;

    invoke-interface {v0, p1}, LV2/T;->b(Ljava/lang/Object;)Ljava/util/Set;

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

    iget-object v0, p0, LV2/h$a;->a:LV2/h;

    invoke-interface {v0}, LV2/T;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, LV2/f;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, LV2/h$a$a;

    invoke-direct {v0, p0}, LV2/h$a$a;-><init>(LV2/h$a;)V

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, LV2/h$a;->a:LV2/h;

    invoke-interface {v0}, LV2/T;->e()Z

    move-result v0

    return v0
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

    iget-object v0, p0, LV2/h$a;->a:LV2/h;

    invoke-interface {v0}, LV2/T;->h()LV2/s;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, LV2/h$a;->a:LV2/h;

    invoke-interface {v0}, LV2/T;->j()Z

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

    iget-object v0, p0, LV2/h$a;->a:LV2/h;

    invoke-interface {v0, p1}, LV2/T;->k(Ljava/lang/Object;)Ljava/util/Set;

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

    iget-object v0, p0, LV2/h$a;->a:LV2/h;

    invoke-interface {v0}, LV2/T;->m()Ljava/util/Set;

    move-result-object v0

    return-object v0
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

    invoke-static {}, LV2/s;->i()LV2/s;

    move-result-object v0

    return-object v0
.end method
