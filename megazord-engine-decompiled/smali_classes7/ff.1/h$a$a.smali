.class public final Lff/h$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/N;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lff/h$a;
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
        "LTe/N<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final d:J = 0x6f9e30e36197ffc7L


# instance fields
.field public final b:Lff/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lff/h$a<",
            "*TR;>;"
        }
    .end annotation
.end field

.field public volatile c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lff/h$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lff/h$a<",
            "*TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lff/h$a$a;->b:Lff/h$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {p0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iput-object p1, p0, Lff/h$a$a;->c:Ljava/lang/Object;

    iget-object p1, p0, Lff/h$a$a;->b:Lff/h$a;

    invoke-virtual {p1}, Lff/h$a;->c()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 0

    invoke-static {p0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lff/h$a$a;->b:Lff/h$a;

    invoke-virtual {v0, p0, p1}, Lff/h$a;->d(Lff/h$a$a;Ljava/lang/Throwable;)V

    return-void
.end method
