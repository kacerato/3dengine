.class public La6/a$g$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La6/a$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La6/a$g;


# direct methods
.method public constructor <init>(La6/a$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, La6/a$g$g;->a:La6/a$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, La6/a$g$g;->a:La6/a$g;

    iget-object p1, p1, La6/a$g;->b:La6/a;

    invoke-static {p1}, La6/a;->r(La6/a;)La6/a$k;

    move-result-object p1

    invoke-interface {p1}, La6/a$k;->get()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lh7/c;->b2(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    goto :goto_0

    :cond_0
    const-string p1, "No texture attached!"

    invoke-static {p1}, Lf8/c;->u0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
