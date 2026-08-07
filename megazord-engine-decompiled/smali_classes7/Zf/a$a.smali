.class public final LZf/a$a;
.super LZf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 2
    sget-object v4, LZf/a$b;->PRESENT:LZf/a$b;

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, LZf/a;-><init>(ZZILZf/a$b;Lkotlin/jvm/internal/x;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LZf/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final M()LZf/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, LZf/a;->a()LZf/a;

    move-result-object v0

    return-object v0
.end method

.method public final N()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, LZf/a;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public final O()LZf/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, LZf/a;->c()LZf/a;

    move-result-object v0

    return-object v0
.end method

.method public final P()LZf/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, LZf/a;->d()LZf/a;

    move-result-object v0

    return-object v0
.end method
