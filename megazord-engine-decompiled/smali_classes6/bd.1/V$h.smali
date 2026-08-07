.class public Lbd/V$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbd/V;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lbd/V;


# direct methods
.method public constructor <init>(Lbd/V;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lbd/V$h;->b:Lbd/V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lbd/V$h;->b:Lbd/V;

    invoke-static {v0}, Lbd/V;->b(Lbd/V;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbd/V$h;->b:Lbd/V;

    invoke-static {v0}, Lbd/V;->b(Lbd/V;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lbd/V$h;->b:Lbd/V;

    invoke-static {v0}, Lbd/V;->b(Lbd/V;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lbd/V$h;->b:Lbd/V;

    invoke-static {v0}, Lbd/V;->b(Lbd/V;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lbd/V$h;->b:Lbd/V;

    invoke-static {v0}, Lbd/V;->b(Lbd/V;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lbd/V$h;->b:Lbd/V;

    invoke-static {v0, v1}, Lbd/V;->c(Lbd/V;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    :cond_0
    return-void
.end method
