.class public final Lpg/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpg/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lpg/m<",
        "TT;>;"
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

.field public final b:Z

.field public final c:Leg/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/l<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpg/m;ZLeg/l;)V
    .locals 1
    .param p1    # Lpg/m;
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
            "+TT;>;Z",
            "Leg/l<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lpg/h;->a:Lpg/m;

    .line 3
    iput-boolean p2, p0, Lpg/h;->b:Z

    .line 4
    iput-object p3, p0, Lpg/h;->c:Leg/l;

    return-void
.end method

.method public synthetic constructor <init>(Lpg/m;ZLeg/l;ILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lpg/h;-><init>(Lpg/m;ZLeg/l;)V

    return-void
.end method

.method public static final synthetic c(Lpg/h;)Leg/l;
    .locals 0

    iget-object p0, p0, Lpg/h;->c:Leg/l;

    return-object p0
.end method

.method public static final synthetic d(Lpg/h;)Z
    .locals 0

    iget-boolean p0, p0, Lpg/h;->b:Z

    return p0
.end method

.method public static final synthetic e(Lpg/h;)Lpg/m;
    .locals 0

    iget-object p0, p0, Lpg/h;->a:Lpg/m;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lpg/h$a;

    invoke-direct {v0, p0}, Lpg/h$a;-><init>(Lpg/h;)V

    return-object v0
.end method
