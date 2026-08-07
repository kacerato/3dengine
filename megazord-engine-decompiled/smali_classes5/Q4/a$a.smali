.class public LQ4/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ4/a;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LQ4/a;


# direct methods
.method public constructor <init>(LQ4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LQ4/a$a;->a:LQ4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    iget-object p1, p0, LQ4/a$a;->a:LQ4/a;

    invoke-static {p1}, LQ4/a;->o1(LQ4/a;)LP7/f;

    move-result-object p1

    invoke-virtual {p1}, LP7/f;->getCameraCenterWorld()Landroid/graphics/PointF;

    move-result-object p1

    new-instance p2, LP7/c;

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p3, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    const-string p1, "New Entry"

    invoke-direct {p2, p1, p3}, LP7/c;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iget-object p1, p0, LQ4/a$a;->a:LQ4/a;

    invoke-static {p1}, LQ4/a;->o1(LQ4/a;)LP7/f;

    move-result-object p1

    invoke-virtual {p1, p2}, LP7/f;->k(LP7/c;)V

    return-void
.end method
