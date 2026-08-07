.class public final Lyg/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LEg/T;

    const-string v1, "NO_ELEMENT"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyg/f;->a:LEg/T;

    return-void
.end method

.method public static final a(I)Lyg/d;
    .locals 1
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "BroadcastChannel is deprecated in the favour of SharedFlow and StateFlow, and is no longer supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lyg/d<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/a1;
    .end annotation

    const/4 v0, -0x2

    if-eq p0, v0, :cond_3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    new-instance v0, Lyg/e;

    invoke-direct {v0, p0}, Lyg/e;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported UNLIMITED capacity for BroadcastChannel"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported 0 capacity for BroadcastChannel"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v0, Lyg/v;

    invoke-direct {v0}, Lyg/v;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Lyg/e;

    sget-object p0, Lyg/l;->P0:Lyg/l$b;

    invoke-virtual {p0}, Lyg/l$b;->a()I

    move-result p0

    invoke-direct {v0, p0}, Lyg/e;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method public static final synthetic b()LEg/T;
    .locals 1

    sget-object v0, Lyg/f;->a:LEg/T;

    return-object v0
.end method
