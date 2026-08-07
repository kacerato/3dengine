.class public Lbd/V$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbd/V;->z(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lbd/V;


# direct methods
.method public constructor <init>(Lbd/V;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$action",
            "val$keyCode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lbd/V$f;->d:Lbd/V;

    iput p2, p0, Lbd/V$f;->b:I

    iput p3, p0, Lbd/V$f;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    new-instance v13, Landroid/view/KeyEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v5, p0, Lbd/V$f;->b:I

    iget v6, p0, Lbd/V$f;->c:I

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    iget-object v0, p0, Lbd/V$f;->d:Lbd/V;

    invoke-static {v0}, Lbd/V;->b(Lbd/V;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method
