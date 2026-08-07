.class public final Lgf/o$a;
.super Lof/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;B:",
        "Ljava/lang/Object;",
        ">",
        "Lof/e<",
        "TB;>;"
    }
.end annotation


# instance fields
.field public final c:Lgf/o$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/o$b<",
            "TT;TU;TB;>;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(Lgf/o$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgf/o$b<",
            "TT;TU;TB;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lof/e;-><init>()V

    iput-object p1, p0, Lgf/o$a;->c:Lgf/o$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lgf/o$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/o$a;->d:Z

    iget-object v0, p0, Lgf/o$a;->c:Lgf/o$b;

    invoke-virtual {v0}, Lgf/o$b;->p()V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    iget-boolean p1, p0, Lgf/o$a;->d:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lgf/o$a;->d:Z

    invoke-virtual {p0}, Lof/e;->dispose()V

    iget-object p1, p0, Lgf/o$a;->c:Lgf/o$b;

    invoke-virtual {p1}, Lgf/o$b;->p()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lgf/o$a;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/o$a;->d:Z

    iget-object v0, p0, Lgf/o$a;->c:Lgf/o$b;

    invoke-virtual {v0, p1}, Lgf/o$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
