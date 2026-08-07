.class public Lid/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/r;->b(Ljava/util/List;Lid/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lid/p<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lid/q;

.field public final synthetic b:Lid/r;


# direct methods
.method public constructor <init>(Lid/r;Lid/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lid/r$a;->b:Lid/r;

    iput-object p2, p0, Lid/r$a;->a:Lid/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lid/r$a;->a:Lid/q;

    invoke-interface {v0, p1}, Lid/q;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lid/r$a;->b:Lid/r;

    invoke-static {p1}, Lid/r;->a(Lid/r;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p1, 0x0

    return-object p1
.end method
