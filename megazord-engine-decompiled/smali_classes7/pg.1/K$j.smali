.class public final Lpg/K$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpg/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpg/K;->F2(Lpg/m;Ljava/lang/Iterable;)Lpg/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lpg/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lpg/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/m<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lpg/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Lpg/m<",
            "+TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lpg/K$j;->a:Ljava/lang/Iterable;

    iput-object p2, p0, Lpg/K$j;->b:Lpg/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lpg/K$j;->d(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final d(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lpg/K$j;->a:Ljava/lang/Iterable;

    invoke-static {v0}, LHf/M;->v0(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lpg/K$j;->b:Lpg/m;

    invoke-interface {v0}, Lpg/m;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lpg/K$j;->b:Lpg/m;

    new-instance v2, Lpg/N;

    invoke-direct {v2, v0}, Lpg/N;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lpg/K;->W0(Lpg/m;Leg/l;)Lpg/m;

    move-result-object v0

    invoke-interface {v0}, Lpg/m;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
