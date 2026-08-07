.class public final LBg/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBg/O;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LBg/U;)LBg/i;
    .locals 2
    .param p1    # LBg/U;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/U<",
            "Ljava/lang/Integer;",
            ">;)",
            "LBg/i<",
            "LBg/M;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LBg/S$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LBg/S$a;-><init>(LBg/U;LQf/f;)V

    invoke-static {v0}, LBg/k;->J0(Leg/p;)LBg/i;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "SharingStarted.Lazily"

    return-object v0
.end method
