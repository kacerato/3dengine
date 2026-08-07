.class public final LI/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LC/d<",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/io/File;

.field public final c:LI/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LI/f$d<",
            "TData;>;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TData;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;LI/f$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "LI/f$d<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI/f$c;->b:Ljava/io/File;

    iput-object p2, p0, LI/f$c;->c:LI/f$d;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    iget-object v0, p0, LI/f$c;->c:LI/f$d;

    invoke-interface {v0}, LI/f$d;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/bumptech/glide/h;LC/d$a;)V
    .locals 2
    .param p1    # Lcom/bumptech/glide/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LC/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/h;",
            "LC/d$a<",
            "-TData;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, LI/f$c;->c:LI/f$d;

    iget-object v0, p0, LI/f$c;->b:Ljava/io/File;

    invoke-interface {p1, v0}, LI/f$d;->c(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LI/f$c;->d:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p2, p1}, LC/d$a;->e(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "FileLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to open file"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-interface {p2, p1}, LC/d$a;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public cleanup()V
    .locals 2

    iget-object v0, p0, LI/f$c;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, LI/f$c;->c:LI/f$d;

    invoke-interface {v1, v0}, LI/f$d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public d()LB/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LB/a;->LOCAL:LB/a;

    return-object v0
.end method
