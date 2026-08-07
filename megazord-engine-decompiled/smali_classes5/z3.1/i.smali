.class public Lz3/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lo3/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo3/g<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lz3/i$a;

    invoke-direct {v0}, Lz3/i$a;-><init>()V

    const-class v1, Lz3/h;

    invoke-static {v0, v1}, Lo3/g;->o(Ljava/lang/Object;Ljava/lang/Class;)Lo3/g;

    move-result-object v0

    return-object v0
.end method
