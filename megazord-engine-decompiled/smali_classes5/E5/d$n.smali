.class public LE5/d$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE5/d;->Q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;FIZLcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LE5/d;


# direct methods
.method public constructor <init>(LE5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LE5/d$n;->b:LE5/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LE5/d$n;->b:LE5/d;

    sget-object v1, LE5/c;->AnchorSelection:LE5/c;

    invoke-static {v0, v1}, LE5/d;->G(LE5/d;LE5/c;)LE5/c;

    iget-object v0, p0, LE5/d$n;->b:LE5/d;

    sget-object v1, LE5/a;->Bottom:LE5/a;

    invoke-static {v0, v1}, LE5/d;->I(LE5/d;LE5/a;)LE5/a;

    return-void
.end method
