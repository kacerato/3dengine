.class public interface abstract Log/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Log/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Log/m$a;,
        Log/m$b;
    }
.end annotation


# virtual methods
.method public abstract L()Z
.end method

.method public abstract S()Z
.end method

.method public abstract getIndex()I
.end method

.method public abstract getKind()Log/m$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getType()Log/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
