.class public Lx5/a;
.super Ll5/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ll5/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectedObject",
            "panel3DView"
        }
    .end annotation

    :try_start_0
    instance-of p1, p2, Lh5/d;

    if-eqz p1, :cond_0

    check-cast p2, Lh5/d;

    invoke-virtual {p2}, Lh5/d;->c2()Lz5/d;

    move-result-object p1

    invoke-virtual {p1}, Lz5/d;->d()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Lh5/a;
    .locals 1

    sget-object v0, Lh5/a;->MousePicker:Lh5/a;

    return-object v0
.end method
