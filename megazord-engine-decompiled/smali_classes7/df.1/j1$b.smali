.class public final Ldf/j1$b;
.super Ldf/j1$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/j1;
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
        "Ldf/j1$c<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final j:J = -0x63165c33f8fff493L


# direct methods
.method public constructor <init>(LCi/c;JLjava/util/concurrent/TimeUnit;LTe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Ldf/j1$c;-><init>(LCi/c;JLjava/util/concurrent/TimeUnit;LTe/J;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Ldf/j1$c;->b:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Ldf/j1$c;->d()V

    return-void
.end method
