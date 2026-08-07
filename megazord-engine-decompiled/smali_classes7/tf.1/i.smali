.class public abstract Ltf/i;
.super LTe/B;
.source "SourceFile"

# interfaces
.implements LTe/I;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/B<",
        "TT;>;",
        "LTe/I<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LTe/B;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract j8()Ljava/lang/Throwable;
    .annotation build LUe/g;
    .end annotation
.end method

.method public abstract k8()Z
.end method

.method public abstract l8()Z
.end method

.method public abstract m8()Z
.end method

.method public final n8()Ltf/i;
    .locals 1
    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltf/i<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Ltf/g;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ltf/g;

    invoke-direct {v0, p0}, Ltf/g;-><init>(Ltf/i;)V

    return-object v0
.end method
