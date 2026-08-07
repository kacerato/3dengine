.class public final Lpg/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpg/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpg/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lpg/m<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final a:Lpg/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Leg/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/l<",
            "TT;TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Leg/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/l<",
            "TR;",
            "Ljava/util/Iterator<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpg/m;Leg/l;Leg/l;)V
    .locals 1
    .param p1    # Lpg/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/m<",
            "+TT;>;",
            "Leg/l<",
            "-TT;+TR;>;",
            "Leg/l<",
            "-TR;+",
            "Ljava/util/Iterator<",
            "+TE;>;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iterator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpg/i;->a:Lpg/m;

    iput-object p2, p0, Lpg/i;->b:Leg/l;

    iput-object p3, p0, Lpg/i;->c:Leg/l;

    return-void
.end method

.method public static final synthetic c(Lpg/i;)Leg/l;
    .locals 0

    iget-object p0, p0, Lpg/i;->c:Leg/l;

    return-object p0
.end method

.method public static final synthetic d(Lpg/i;)Lpg/m;
    .locals 0

    iget-object p0, p0, Lpg/i;->a:Lpg/m;

    return-object p0
.end method

.method public static final synthetic e(Lpg/i;)Leg/l;
    .locals 0

    iget-object p0, p0, Lpg/i;->b:Leg/l;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lpg/i$b;

    invoke-direct {v0, p0}, Lpg/i$b;-><init>(Lpg/i;)V

    return-object v0
.end method
