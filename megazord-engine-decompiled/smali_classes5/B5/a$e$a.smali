.class public LB5/a$e$a;
.super LN5/i$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LB5/a$e;->onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LB5/a$e;


# direct methods
.method public constructor <init>(LB5/a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LB5/a$e$a;->a:LB5/a$e;

    invoke-direct {p0}, LN5/i$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LB5/a$e$a;->a:LB5/a$e;

    iget-object v0, v0, LB5/a$e;->a:LB5/a;

    invoke-static {v0}, LB5/a;->H(LB5/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    move-result-object v0

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushSize:F

    return-void
.end method

.method public get()F
    .locals 1

    iget-object v0, p0, LB5/a$e$a;->a:LB5/a$e;

    iget-object v0, v0, LB5/a$e;->a:LB5/a;

    invoke-static {v0}, LB5/a;->H(LB5/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushSize:F

    return v0
.end method

.method public getMax()F
    .locals 1

    const/high16 v0, 0x43fa0000    # 500.0f

    return v0
.end method

.method public getMin()F
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    return v0
.end method
