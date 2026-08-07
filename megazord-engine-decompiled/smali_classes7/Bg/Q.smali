.class public final LBg/Q;
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
    .locals 0
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

    sget-object p1, LBg/M;->START:LBg/M;

    invoke-static {p1}, LBg/k;->M0(Ljava/lang/Object;)LBg/i;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "SharingStarted.Eagerly"

    return-object v0
.end method
