.class public final Lz0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls0/g<",
        "Lz0/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lz0/j;
    .locals 1

    invoke-static {}, Lz0/j$a;->a()Lz0/j;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lz0/e;
    .locals 2

    invoke-static {}, Lz0/f;->f()Lz0/e;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ls0/p;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz0/e;

    return-object v0
.end method


# virtual methods
.method public b()Lz0/e;
    .locals 1

    invoke-static {}, Lz0/j;->c()Lz0/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lz0/j;->b()Lz0/e;

    move-result-object v0

    return-object v0
.end method
