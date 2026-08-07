.class public LE5/d$x;
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

    iput-object p1, p0, LE5/d$x;->d:LE5/d;

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

    new-instance p1, LE5/d$x$a;

    invoke-direct {p1, p0, p2}, LE5/d$x$a;-><init>(LE5/d$x;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V

    const/4 p2, 0x0

    invoke-static {p2, p1}, Lf8/c;->l(FLjava/lang/Runnable;)V

    return-void
.end method
