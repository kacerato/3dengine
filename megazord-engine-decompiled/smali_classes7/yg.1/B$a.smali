.class public final Lyg/B$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyg/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lyg/B;Ljava/lang/Object;)Z
    .locals 0
    .param p0    # Lyg/B;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "Deprecated in the favour of \'trySend\' method"
        replaceWith = .subannotation LFf/g0;
            expression = "trySend(element).isSuccess"
            imports = {}
        .end subannotation
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lyg/B<",
            "-TE;>;TE;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lyg/E$a;->c(Lyg/E;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
