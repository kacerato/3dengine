.class public final Lag/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lag/g;


# instance fields
.field public a:Leg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/p<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            "+",
            "Ljava/nio/file/FileVisitResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Leg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/p<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            "+",
            "Ljava/nio/file/FileVisitResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Leg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/p<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/io/IOException;",
            "+",
            "Ljava/nio/file/FileVisitResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Leg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/p<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/io/IOException;",
            "+",
            "Ljava/nio/file/FileVisitResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leg/p;)V
    .locals 2
    .param p1    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/p<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            "+",
            "Ljava/nio/file/FileVisitResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "function"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lag/h;->f()V

    iget-object v0, p0, Lag/h;->a:Leg/p;

    const-string v1, "onPreVisitDirectory"

    invoke-virtual {p0, v0, v1}, Lag/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lag/h;->a:Leg/p;

    return-void
.end method

.method public b(Leg/p;)V
    .locals 2
    .param p1    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/p<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            "+",
            "Ljava/nio/file/FileVisitResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "function"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lag/h;->f()V

    iget-object v0, p0, Lag/h;->b:Leg/p;

    const-string v1, "onVisitFile"

    invoke-virtual {p0, v0, v1}, Lag/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lag/h;->b:Leg/p;

    return-void
.end method

.method public c(Leg/p;)V
    .locals 2
    .param p1    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/p<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/io/IOException;",
            "+",
            "Ljava/nio/file/FileVisitResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "function"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lag/h;->f()V

    iget-object v0, p0, Lag/h;->c:Leg/p;

    const-string v1, "onVisitFileFailed"

    invoke-virtual {p0, v0, v1}, Lag/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lag/h;->c:Leg/p;

    return-void
.end method

.method public d(Leg/p;)V
    .locals 2
    .param p1    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/p<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/io/IOException;",
            "+",
            "Ljava/nio/file/FileVisitResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "function"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lag/h;->f()V

    iget-object v0, p0, Lag/h;->d:Leg/p;

    const-string v1, "onPostVisitDirectory"

    invoke-virtual {p0, v0, v1}, Lag/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lag/h;->d:Leg/p;

    return-void
.end method

.method public final e()Ljava/nio/file/FileVisitor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/nio/file/FileVisitor<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lag/h;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lag/h;->e:Z

    new-instance v0, Lag/i;

    iget-object v1, p0, Lag/h;->a:Leg/p;

    iget-object v2, p0, Lag/h;->b:Leg/p;

    iget-object v3, p0, Lag/h;->c:Leg/p;

    iget-object v4, p0, Lag/h;->d:Leg/p;

    invoke-direct {v0, v1, v2, v3, v4}, Lag/i;-><init>(Leg/p;Leg/p;Leg/p;Leg/p;)V

    return-object v0
.end method

.method public final f()V
    .locals 2

    iget-boolean v0, p0, Lag/h;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This builder was already built"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " was already defined"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
