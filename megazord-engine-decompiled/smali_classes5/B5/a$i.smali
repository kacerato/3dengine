.class public LB5/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LB5/a;->o(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LB5/a;


# direct methods
.method public constructor <init>(LB5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LB5/a$i;->a:LB5/a;

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

    iget-object p1, p0, LB5/a$i;->a:LB5/a;

    invoke-static {p1}, LB5/a;->H(LB5/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    move-result-object p1

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$C;->None:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$C;

    iput-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->c1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$C;

    iget-object p1, p0, LB5/a$i;->a:LB5/a;

    invoke-static {p1}, LB5/a;->I(LB5/a;)V

    :cond_0
    return-void
.end method
