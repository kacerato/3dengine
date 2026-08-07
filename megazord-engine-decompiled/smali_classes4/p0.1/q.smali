.class public abstract Lp0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp0/q$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lp0/q$a;
    .locals 1

    new-instance v0, Lp0/c$b;

    invoke-direct {v0}, Lp0/c$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ll0/c;
.end method

.method public abstract c()Ll0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll0/d<",
            "*>;"
        }
    .end annotation
.end method

.method public d()[B
    .locals 2

    invoke-virtual {p0}, Lp0/q;->e()Ll0/g;

    move-result-object v0

    invoke-virtual {p0}, Lp0/q;->c()Ll0/d;

    move-result-object v1

    invoke-virtual {v1}, Ll0/d;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ll0/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public abstract e()Ll0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll0/g<",
            "*[B>;"
        }
    .end annotation
.end method

.method public abstract f()Lp0/r;
.end method

.method public abstract g()Ljava/lang/String;
.end method
