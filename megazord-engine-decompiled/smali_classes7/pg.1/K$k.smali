.class public final Lpg/K$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpg/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpg/K;->H2(Lpg/m;Lpg/m;)Lpg/m;
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
.field public final synthetic a:Lpg/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/m<",
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
.method public constructor <init>(Lpg/m;Lpg/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/m<",
            "+TT;>;",
            "Lpg/m<",
            "+TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lpg/K$k;->a:Lpg/m;

    iput-object p2, p0, Lpg/K$k;->b:Lpg/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lpg/K$k;->d(Ljava/util/List;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final d(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lpg/K$k;->a:Lpg/m;

    invoke-static {v0}, Lpg/K;->I3(Lpg/m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lpg/K$k;->b:Lpg/m;

    invoke-interface {v0}, Lpg/m;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lpg/K$k;->b:Lpg/m;

    new-instance v2, Lpg/O;

    invoke-direct {v2, v0}, Lpg/O;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Lpg/K;->W0(Lpg/m;Leg/l;)Lpg/m;

    move-result-object v0

    invoke-interface {v0}, Lpg/m;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
