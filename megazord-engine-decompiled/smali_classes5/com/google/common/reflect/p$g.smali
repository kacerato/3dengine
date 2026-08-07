.class public final Lcom/google/common/reflect/p$g;
.super Lcom/google/common/reflect/p$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/p<",
        "TT;>.k;"
    }
.end annotation


# static fields
.field public static final h:J


# instance fields
.field public final transient e:Lcom/google/common/reflect/p$k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/reflect/p<",
            "TT;>.k;"
        }
    .end annotation
.end field

.field public transient f:Lcom/google/common/collect/r1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r1<",
            "Lcom/google/common/reflect/p<",
            "-TT;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final synthetic g:Lcom/google/common/reflect/p;


# direct methods
.method public constructor <init>(Lcom/google/common/reflect/p;Lcom/google/common/reflect/p$k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/p<",
            "TT;>.k;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/reflect/p$g;->g:Lcom/google/common/reflect/p;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/p$k;-><init>(Lcom/google/common/reflect/p;)V

    iput-object p2, p0, Lcom/google/common/reflect/p$g;->e:Lcom/google/common/reflect/p$k;

    return-void
.end method

.method private Q0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/reflect/p$g;->g:Lcom/google/common/reflect/p;

    invoke-virtual {v0}, Lcom/google/common/reflect/p;->D()Lcom/google/common/reflect/p$k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/reflect/p$k;->O0()Lcom/google/common/reflect/p$k;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public K0()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/reflect/p<",
            "-TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/p$g;->f:Lcom/google/common/collect/r1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/reflect/p$g;->e:Lcom/google/common/reflect/p$k;

    invoke-static {v0}, Lcom/google/common/collect/p0;->r(Ljava/lang/Iterable;)Lcom/google/common/collect/p0;

    move-result-object v0

    sget-object v1, Lcom/google/common/reflect/p$j;->INTERFACE_ONLY:Lcom/google/common/reflect/p$j;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/p0;->m(LR2/I;)Lcom/google/common/collect/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/p0;->G()Lcom/google/common/collect/r1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/p$g;->f:Lcom/google/common/collect/r1;

    :cond_0
    return-object v0
.end method

.method public N0()Lcom/google/common/reflect/p$k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/p<",
            "TT;>.k;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "interfaces().classes() not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public O0()Lcom/google/common/reflect/p$k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/p<",
            "TT;>.k;"
        }
    .end annotation

    return-object p0
.end method

.method public P0()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/reflect/p$i;->b:Lcom/google/common/reflect/p$i;

    iget-object v1, p0, Lcom/google/common/reflect/p$g;->g:Lcom/google/common/reflect/p;

    invoke-static {v1}, Lcom/google/common/reflect/p;->d(Lcom/google/common/reflect/p;)Lcom/google/common/collect/r1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/p$i;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/p0;->r(Ljava/lang/Iterable;)Lcom/google/common/collect/p0;

    move-result-object v0

    new-instance v1, Lcom/google/common/reflect/q;

    invoke-direct {v1}, Lcom/google/common/reflect/q;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/p0;->m(LR2/I;)Lcom/google/common/collect/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/p0;->G()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/reflect/p$g;->K0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic p0()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/reflect/p$g;->K0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
