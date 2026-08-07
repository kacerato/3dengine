.class public final Ldf/i1$b;
.super Ldf/i1$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/i1;
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
        "Ldf/i1$c<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final h:J = -0x2a0bdab9530de829L


# direct methods
.method public constructor <init>(LCi/c;LCi/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;",
            "LCi/b<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ldf/i1$c;-><init>(LCi/c;LCi/b;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Ldf/i1$c;->b:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    return-void
.end method

.method public f()V
    .locals 0

    invoke-virtual {p0}, Ldf/i1$c;->d()V

    return-void
.end method
