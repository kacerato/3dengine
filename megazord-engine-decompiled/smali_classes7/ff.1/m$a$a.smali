.class public final Lff/m$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lff/m$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/v<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final c:J = -0x2a58ff0addf51744L


# instance fields
.field public final b:Lff/m$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lff/m$a<",
            "*TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lff/m$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lff/m$a<",
            "*TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lff/m$a$a;->b:Lff/m$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lff/m$a$a;->b:Lff/m$a;

    invoke-virtual {v0}, Lff/m$a;->c()V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, Lff/m$a$a;->b:Lff/m$a;

    invoke-virtual {v0, p1}, Lff/m$a;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-static {p0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 0

    invoke-static {p0, p1}, LYe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lff/m$a$a;->b:Lff/m$a;

    invoke-virtual {v0, p1}, Lff/m$a;->f(Ljava/lang/Throwable;)V

    return-void
.end method
