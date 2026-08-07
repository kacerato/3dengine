.class public Lb6/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb6/e;->D1()V
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

    iput-object p1, p0, Lb6/e$d;->a:Lb6/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLandroid/view/View;Landroid/content/Context;Le8/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "v",
            "context",
            "tbToggle",
            "isFromUserAction"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb6/e$d;->a:Lb6/e;

    sget-object p2, Lb6/e$k;->X:Lb6/e$k;

    invoke-static {p1, p2}, Lb6/e;->o1(Lb6/e;Lb6/e$k;)Lb6/e$k;

    iget-object p1, p0, Lb6/e$d;->a:Lb6/e;

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p1, Lb6/e;->h0:F

    const p2, -0x3191d80b

    iput p2, p1, Lb6/e;->f0:F

    :cond_0
    return-void
.end method
