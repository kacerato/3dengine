.class public LC5/b$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN5/f$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/b$n;->onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le8/c;

.field public final synthetic b:LC5/b$n;


# direct methods
.method public constructor <init>(LC5/b$n;Le8/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$tbButton"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC5/b$n$a;->b:LC5/b$n;

    iput-object p2, p0, LC5/b$n$a;->a:Le8/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iget-object v0, p0, LC5/b$n$a;->b:LC5/b$n;

    iget-object v0, v0, LC5/b$n;->a:LC5/b;

    invoke-static {v0}, LC5/b;->I(LC5/b;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->W(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object p1, p0, LC5/b$n$a;->a:Le8/c;

    iget-object v0, p0, LC5/b$n$a;->b:LC5/b$n;

    iget-object v0, v0, LC5/b$n;->a:LC5/b;

    invoke-static {v0}, LC5/b;->I(LC5/b;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {p1, v0}, Le8/c;->c0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Le8/c;

    return-void
.end method
