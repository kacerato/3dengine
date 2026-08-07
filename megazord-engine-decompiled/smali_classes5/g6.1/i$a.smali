.class public Lg6/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg6/i;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg6/i;


# direct methods
.method public constructor <init>(Lg6/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lg6/i$a;->a:Lg6/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    iget-object v0, p0, Lg6/i$a;->a:Lg6/i;

    invoke-virtual {v0, p1}, Lf6/b;->n(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    new-instance v0, Lg6/i$a$a;

    invoke-direct {v0, p0, p1}, Lg6/i$a$a;-><init>(Lg6/i$a;Ljava/lang/String;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lg6/i$a;->a:Lg6/i;

    const-string v1, "Ops!"

    invoke-virtual {v0, v1}, Lf6/b;->o(Ljava/lang/String;)V

    iget-object v0, p0, Lg6/i$a;->a:Lg6/i;

    invoke-virtual {v0, p1}, Lf6/b;->n(Ljava/lang/String;)V

    iget-object p1, p0, Lg6/i$a;->a:Lg6/i;

    invoke-virtual {p1}, Lf6/b;->b()V

    return-void
.end method

.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lg6/i$a;->a:Lg6/i;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lf6/b;->o(Ljava/lang/String;)V

    iget-object v0, p0, Lg6/i$a;->a:Lg6/i;

    invoke-virtual {v0}, Lf6/b;->b()V

    return-void
.end method
