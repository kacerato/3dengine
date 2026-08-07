.class public interface abstract Lh9/m;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCls()Ljava/lang/Class;
.end method

.method public abstract getFullName()Ljava/lang/String;
.end method

.method public abstract getInspector(Landroid/content/Context;Lh9/k;Ljava/lang/String;Lh9/q;)LW5/b;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "constructor",
            "tittle",
            "userPointer"
        }
    .end annotation
.end method

.method public abstract isRestorable()Z
.end method

.method public abstract newInstance(Lh9/q;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userPointer"
        }
    .end annotation
.end method

.method public abstract restore(Lcom/itsmagic/engine/Engines/Utils/Variable;Lh9/q;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variable",
            "userPointer"
        }
    .end annotation
.end method

.method public abstract save(Ljava/lang/String;Ljava/lang/Object;Lh9/q;)Lcom/itsmagic/engine/Engines/Utils/Variable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "value",
            "userPointer"
        }
    .end annotation
.end method
