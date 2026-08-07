.class public final LGg/h;
.super LGg/j;
.source "SourceFile"


# static fields
.field public static final a:LGg/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LGg/h;

    invoke-direct {v0}, LGg/h;-><init>()V

    sput-object v0, LGg/h;->a:LGg/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LGg/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
