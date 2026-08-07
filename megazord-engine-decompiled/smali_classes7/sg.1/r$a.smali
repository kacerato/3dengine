.class public final Lsg/r$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsg/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lsg/r;)Lsg/r$b;
    .locals 1
    .param p0    # Lsg/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lsg/r$b;

    invoke-direct {v0, p0}, Lsg/r$b;-><init>(Lsg/r;)V

    return-object v0
.end method
