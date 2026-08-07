.class public final Lgf/W0$b;
.super Lgf/W0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/W0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/W0$c<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final i:J = -0x63165c33f8fff493L


# direct methods
.method public constructor <init>(LTe/I;JLjava/util/concurrent/TimeUnit;LTe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lgf/W0$c;-><init>(LTe/I;JLjava/util/concurrent/TimeUnit;LTe/J;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Lgf/W0$c;->b:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lgf/W0$c;->f()V

    return-void
.end method
