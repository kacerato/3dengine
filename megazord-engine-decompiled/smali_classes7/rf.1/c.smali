.class public abstract Lrf/c;
.super LTe/l;
.source "SourceFile"

# interfaces
.implements LCi/a;
.implements LTe/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/l<",
        "TT;>;",
        "LCi/a<",
        "TT;TT;>;",
        "LTe/q<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LTe/l;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract O8()Ljava/lang/Throwable;
    .annotation build LUe/g;
    .end annotation
.end method

.method public abstract P8()Z
.end method

.method public abstract Q8()Z
.end method

.method public abstract R8()Z
.end method

.method public final S8()Lrf/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrf/c<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lrf/g;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lrf/g;

    invoke-direct {v0, p0}, Lrf/g;-><init>(Lrf/c;)V

    return-object v0
.end method
