.class public abstract Lq0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/g$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lq0/g$a;
    .locals 1

    new-instance v0, Lq0/a$b;

    invoke-direct {v0}, Lq0/a$b;-><init>()V

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;)Lq0/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lp0/j;",
            ">;)",
            "Lq0/g;"
        }
    .end annotation

    invoke-static {}, Lq0/g;->a()Lq0/g$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lq0/g$a;->b(Ljava/lang/Iterable;)Lq0/g$a;

    move-result-object p0

    invoke-virtual {p0}, Lq0/g$a;->a()Lq0/g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract c()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lp0/j;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
