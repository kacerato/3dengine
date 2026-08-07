.class public final LB0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LB0/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls0/g<",
        "LB0/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LB0/e;
    .locals 1

    invoke-static {}, LB0/e$a;->a()LB0/e;

    move-result-object v0

    return-object v0
.end method

.method public static b()LB0/a;
    .locals 2

    invoke-static {}, LB0/d;->a()LB0/a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ls0/p;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB0/a;

    return-object v0
.end method


# virtual methods
.method public c()LB0/a;
    .locals 1

    invoke-static {}, LB0/e;->b()LB0/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LB0/e;->c()LB0/a;

    move-result-object v0

    return-object v0
.end method
