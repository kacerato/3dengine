.class public interface abstract Log/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Log/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Log/r$a;
    }
.end annotation


# virtual methods
.method public abstract g()Z
.end method

.method public abstract getArguments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Log/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract w()Log/f;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
