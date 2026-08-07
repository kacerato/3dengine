.class public Lt6/f$i;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt6/f;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lt6/f;


# direct methods
.method public constructor <init>(Lt6/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lt6/f$i;->b:Lt6/f;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Lt6/f$i;->b:Lt6/f;

    invoke-static {p1}, Lt6/f;->B1(Lt6/f;)Lt6/b;

    move-result-object p1

    invoke-virtual {p1}, Lt6/b;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lt6/f$i;->b:Lt6/f;

    invoke-static {p1}, Lt6/f;->p1(Lt6/f;)Lt6/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lt6/b;->d(Z)V

    :cond_0
    iget-object p1, p0, Lt6/f$i;->b:Lt6/f;

    invoke-static {p1}, Lt6/f;->M1(Lt6/f;)V

    return-void
.end method
