.class public LQ7/b$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ7/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LQ7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LQ7/a;

.field public final synthetic c:LQ7/b;


# direct methods
.method public constructor <init>(LQ7/b;LQ7/a;)V
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

    iput-object p1, p0, LQ7/b$h;->c:LQ7/b;

    iput-object p2, p0, LQ7/b$h;->b:LQ7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    iget-object p1, p0, LQ7/b$h;->c:LQ7/b;

    invoke-virtual {p1}, LQ7/b;->l()V

    iget-object p1, p0, LQ7/b$h;->b:LQ7/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, LQ7/a;->onCancel()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LQ7/b$h;->c:LQ7/b;

    invoke-static {p1}, LQ7/b;->b(LQ7/b;)V

    :goto_0
    return-void
.end method
