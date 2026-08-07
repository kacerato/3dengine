.class public LKd/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:LId/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LId/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:LKd/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LKd/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LId/i;LKd/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LId/i<",
            "TT;>;",
            "LKd/b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKd/f;->a:LId/i;

    iput-object p2, p0, LKd/f;->b:LKd/b;

    return-void
.end method


# virtual methods
.method public a(LId/p;)V
    .locals 2

    iget-object v0, p0, LKd/f;->b:LKd/b;

    iget-object v1, p0, LKd/f;->a:LId/i;

    invoke-virtual {v0, v1}, LKd/b;->e(LId/i;)LId/j;

    move-result-object v0

    check-cast v0, LId/c;

    invoke-virtual {v0, p1}, LId/c;->d(LId/p;)V

    iget-object p1, p0, LKd/f;->b:LKd/b;

    iget-object v0, p0, LKd/f;->a:LId/i;

    invoke-virtual {p1, v0}, LKd/b;->d(LId/i;)LId/A;

    move-result-object p1

    invoke-interface {p1}, LId/A;->c()V

    return-void
.end method
