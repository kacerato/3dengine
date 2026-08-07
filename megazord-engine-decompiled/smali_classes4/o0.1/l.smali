.class public abstract Lo0/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo0/l$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lo0/l$a;
    .locals 1

    new-instance v0, Lo0/f$b;

    invoke-direct {v0}, Lo0/f$b;-><init>()V

    return-object v0
.end method

.method public static i(Ljava/lang/String;)Lo0/l$a;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lo0/l;->a()Lo0/l$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo0/l$a;->g(Ljava/lang/String;)Lo0/l$a;

    move-result-object p0

    return-object p0
.end method

.method public static j([B)Lo0/l$a;
    .locals 1
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lo0/l;->a()Lo0/l$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo0/l$a;->f([B)Lo0/l$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract b()Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract c()J
.end method

.method public abstract d()J
.end method

.method public abstract e()Lo0/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract f()[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract g()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract h()J
.end method
