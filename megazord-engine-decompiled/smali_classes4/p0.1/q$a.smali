.class public abstract Lp0/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp0/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lp0/q;
.end method

.method public abstract b(Ll0/c;)Lp0/q$a;
.end method

.method public abstract c(Ll0/d;)Lp0/q$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/d<",
            "*>;)",
            "Lp0/q$a;"
        }
    .end annotation
.end method

.method public d(Ll0/d;Ll0/c;Ll0/g;)Lp0/q$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll0/d<",
            "TT;>;",
            "Ll0/c;",
            "Ll0/g<",
            "TT;[B>;)",
            "Lp0/q$a;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lp0/q$a;->c(Ll0/d;)Lp0/q$a;

    invoke-virtual {p0, p2}, Lp0/q$a;->b(Ll0/c;)Lp0/q$a;

    invoke-virtual {p0, p3}, Lp0/q$a;->e(Ll0/g;)Lp0/q$a;

    return-object p0
.end method

.method public abstract e(Ll0/g;)Lp0/q$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/g<",
            "*[B>;)",
            "Lp0/q$a;"
        }
    .end annotation
.end method

.method public abstract f(Lp0/r;)Lp0/q$a;
.end method

.method public abstract g(Ljava/lang/String;)Lp0/q$a;
.end method
