.class public LE5/d$w;
.super LE5/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE5/d;->u(Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:LE5/d;


# direct methods
.method public constructor <init>(LE5/d;ILMb/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "iconPadding",
            "textureInstance"
        }
    .end annotation

    iput-object p1, p0, LE5/d$w;->d:LE5/d;

    invoke-direct {p0, p2, p3}, LE5/b;-><init>(ILMb/p;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "rect"
        }
    .end annotation

    new-instance p2, LE5/d$w$a;

    invoke-direct {p2, p0, p1}, LE5/d$w$a;-><init>(LE5/d$w;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    const/4 p1, 0x0

    invoke-static {p1, p2}, Lf8/c;->l(FLjava/lang/Runnable;)V

    return-void
.end method
