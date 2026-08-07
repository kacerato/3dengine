.class public abstract Lp0/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp0/r$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lp0/r$a;
    .locals 2

    new-instance v0, Lp0/d$b;

    invoke-direct {v0}, Lp0/d$b;-><init>()V

    sget-object v1, Ll0/e;->DEFAULT:Ll0/e;

    invoke-virtual {v0, v1}, Lp0/d$b;->d(Ll0/e;)Lp0/r$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract d()Ll0/e;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Lp0/r;->c()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Ll0/e;)Lp0/r;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-static {}, Lp0/r;->a()Lp0/r$a;

    move-result-object v0

    invoke-virtual {p0}, Lp0/r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp0/r$a;->b(Ljava/lang/String;)Lp0/r$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lp0/r$a;->d(Ll0/e;)Lp0/r$a;

    move-result-object p1

    invoke-virtual {p0}, Lp0/r;->c()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lp0/r$a;->c([B)Lp0/r$a;

    move-result-object p1

    invoke-virtual {p1}, Lp0/r$a;->a()Lp0/r;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lp0/r;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lp0/r;->d()Ll0/e;

    move-result-object v1

    invoke-virtual {p0}, Lp0/r;->c()[B

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lp0/r;->c()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    :goto_0
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "TransportContext(%s, %s, %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
