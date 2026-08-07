.class public Lb6/e$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb6/e;->H1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb6/e;


# direct methods
.method public constructor <init>(Lb6/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lb6/e$i;->a:Lb6/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
    .locals 0
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

    iget-object p1, p0, Lb6/e$i;->a:Lb6/e;

    invoke-static {p1}, Lb6/e;->v1(Lb6/e;)F

    move-result p1

    iget-object p2, p0, Lb6/e$i;->a:Lb6/e;

    invoke-static {p2}, Lb6/e;->x1(Lb6/e;)F

    move-result p2

    add-float/2addr p1, p2

    iget-object p2, p0, Lb6/e$i;->a:Lb6/e;

    invoke-static {p2, p1}, Lb6/e;->w1(Lb6/e;F)V

    return-void
.end method
