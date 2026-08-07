.class public abstract LV2/v;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation runtime LV2/t;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LV2/v$c;,
        LV2/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/c<",
        "LV2/u<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field public final d:LV2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV2/k<",
            "TN;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public g:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LV2/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/k<",
            "TN;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, LV2/v;->f:Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/google/common/collect/r1;->x()Lcom/google/common/collect/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/r1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    iput-object v0, p0, LV2/v;->g:Ljava/util/Iterator;

    .line 5
    iput-object p1, p0, LV2/v;->d:LV2/k;

    .line 6
    invoke-interface {p1}, LV2/k;->m()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, LV2/v;->e:Ljava/util/Iterator;

    return-void
.end method

.method public synthetic constructor <init>(LV2/k;LV2/v$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LV2/v;-><init>(LV2/k;)V

    return-void
.end method

.method public static f(LV2/k;)LV2/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LV2/k<",
            "TN;>;)",
            "LV2/v<",
            "TN;>;"
        }
    .end annotation

    invoke-interface {p0}, LV2/k;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, LV2/v$b;

    invoke-direct {v0, p0, v1}, LV2/v$b;-><init>(LV2/k;LV2/v$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, LV2/v$c;

    invoke-direct {v0, p0, v1}, LV2/v$c;-><init>(LV2/k;LV2/v$a;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final e()Z
    .locals 3

    iget-object v0, p0, LV2/v;->g:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, LR2/H;->g0(Z)V

    iget-object v0, p0, LV2/v;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, LV2/v;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LV2/v;->f:Ljava/lang/Object;

    iget-object v2, p0, LV2/v;->d:LV2/k;

    invoke-interface {v2, v0}, LV2/k;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, LV2/v;->g:Ljava/util/Iterator;

    return v1
.end method
