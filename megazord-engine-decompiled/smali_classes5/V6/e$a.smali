.class public final LV6/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LV6/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LV6/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()LV6/e;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, LV6/e;->a()LV6/e;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, LV6/e;

    invoke-direct {v0}, LV6/e;-><init>()V

    sget-object v1, LV6/e;->a:LV6/e$a;

    invoke-static {v0}, LV6/e;->b(LV6/e;)V

    :cond_0
    return-object v0
.end method
