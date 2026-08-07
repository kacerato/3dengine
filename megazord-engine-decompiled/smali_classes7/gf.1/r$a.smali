.class public final Lgf/r$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final h:J = 0x5df4ba2ba2d80afaL


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Lgf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/r<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Lgf/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/r$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:I

.field public f:J

.field public volatile g:Z


# direct methods
.method public constructor <init>(LTe/I;Lgf/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;",
            "Lgf/r<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lgf/r$a;->b:LTe/I;

    iput-object p2, p0, Lgf/r$a;->c:Lgf/r;

    iget-object p1, p2, Lgf/r;->g:Lgf/r$b;

    iput-object p1, p0, Lgf/r$a;->d:Lgf/r$b;

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lgf/r$a;->g:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lgf/r$a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/r$a;->g:Z

    iget-object v0, p0, Lgf/r$a;->c:Lgf/r;

    invoke-virtual {v0, p0}, Lgf/r;->n8(Lgf/r$a;)V

    :cond_0
    return-void
.end method
