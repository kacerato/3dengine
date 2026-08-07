.class public LN5/f$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN5/f;->L1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LN5/f;


# direct methods
.method public constructor <init>(LN5/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LN5/f$i;->a:LN5/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "hasFocus"
        }
    .end annotation

    if-nez p2, :cond_1

    iget-object p1, p0, LN5/f$i;->a:LN5/f;

    invoke-static {p1}, LN5/f;->B1(LN5/f;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "#"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object p2, p0, LN5/f$i;->a:LN5/f;

    invoke-static {p2}, LN5/f;->u1(LN5/f;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->h0(Ljava/lang/String;)V

    iget-object p1, p0, LN5/f$i;->a:LN5/f;

    invoke-static {p1}, LN5/f;->u1(LN5/f;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p2

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, LN5/f;->w1(LN5/f;IZ)V

    :cond_1
    return-void
.end method
