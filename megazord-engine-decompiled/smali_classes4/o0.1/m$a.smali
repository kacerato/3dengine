.class public abstract Lo0/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/m;
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
.method public abstract a()Lo0/m;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract b(Lo0/k;)Lo0/m$a;
    .param p1    # Lo0/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract c(Ljava/util/List;)Lo0/m$a;
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo0/l;",
            ">;)",
            "Lo0/m$a;"
        }
    .end annotation
.end method

.method public abstract d(Ljava/lang/Integer;)Lo0/m$a;
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract e(Ljava/lang/String;)Lo0/m$a;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract f(Lo0/p;)Lo0/m$a;
    .param p1    # Lo0/p;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract g(J)Lo0/m$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract h(J)Lo0/m$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public i(I)Lo0/m$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo0/m$a;->d(Ljava/lang/Integer;)Lo0/m$a;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;)Lo0/m$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lo0/m$a;->e(Ljava/lang/String;)Lo0/m$a;

    move-result-object p1

    return-object p1
.end method
