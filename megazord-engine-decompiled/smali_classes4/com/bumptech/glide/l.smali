.class public abstract Lcom/bumptech/glide/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CHI",
        "LD:Lcom/bumptech/glide/l<",
        "TCHI",
        "LD;",
        "TTranscodeType;>;TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public b:LV/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV/g<",
            "-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LV/e;->c()LV/g;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/l;->b:LV/g;

    return-void
.end method


# virtual methods
.method public final a()Lcom/bumptech/glide/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/l;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b()Lcom/bumptech/glide/l;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    invoke-static {}, LV/e;->c()LV/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/l;->f(LV/g;)Lcom/bumptech/glide/l;

    move-result-object v0

    return-object v0
.end method

.method public final c()LV/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV/g<",
            "-TTranscodeType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/l;->b:LV/g;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/l;->a()Lcom/bumptech/glide/l;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/bumptech/glide/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    return-object p0
.end method

.method public final e(I)Lcom/bumptech/glide/l;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCHI",
            "LD;"
        }
    .end annotation

    new-instance v0, LV/h;

    invoke-direct {v0, p1}, LV/h;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/l;->f(LV/g;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public final f(LV/g;)Lcom/bumptech/glide/l;
    .locals 0
    .param p1    # LV/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV/g<",
            "-TTranscodeType;>;)TCHI",
            "LD;"
        }
    .end annotation

    invoke-static {p1}, LX/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LV/g;

    iput-object p1, p0, Lcom/bumptech/glide/l;->b:LV/g;

    invoke-virtual {p0}, Lcom/bumptech/glide/l;->d()Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public final g(LV/j$a;)Lcom/bumptech/glide/l;
    .locals 1
    .param p1    # LV/j$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV/j$a;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    new-instance v0, LV/i;

    invoke-direct {v0, p1}, LV/i;-><init>(LV/j$a;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/l;->f(LV/g;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method
