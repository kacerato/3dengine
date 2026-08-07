.class public interface abstract Lka/f;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract acceptsMultiTouch()Z
.end method

.method public abstract allowCaptureNewTouchs()Z
.end method

.method public abstract dispatchTouchWhenOutSideRect()Z
.end method

.method public abstract getController()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;
.end method

.method public abstract getControllerRect()Loa/c;
.end method

.method public abstract getLayer()I
.end method

.method public abstract getScreenRect()Loa/c;
.end method

.method public abstract isSelectedTouch(LMc/h;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation
.end method

.method public abstract onTouchEnter(LMc/h;ILka/c;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "touch",
            "idx",
            "callbacks"
        }
    .end annotation
.end method

.method public abstract onTouchExit(LMc/h;ILka/c;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "touch",
            "idx",
            "callbacks"
        }
    .end annotation
.end method

.method public abstract onlyDownInside()Z
.end method
