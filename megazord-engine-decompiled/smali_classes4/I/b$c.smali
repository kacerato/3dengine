.class public LI/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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
.field public final b:[B

.field public final c:LI/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LI/b$b<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLI/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "LI/b$b<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI/b$c;->b:[B

    iput-object p2, p0, LI/b$c;->c:LI/b$b;

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

    iget-object v0, p0, LI/b$c;->c:LI/b$b;

    invoke-interface {v0}, LI/b$b;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/bumptech/glide/h;LC/d$a;)V
    .locals 1
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

    iget-object p1, p0, LI/b$c;->c:LI/b$b;

    iget-object v0, p0, LI/b$c;->b:[B

    invoke-interface {p1, v0}, LI/b$b;->b([B)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, LC/d$a;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public cleanup()V
    .locals 0

    return-void
.end method

.method public d()LB/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LB/a;->LOCAL:LB/a;

    return-object v0
.end method
