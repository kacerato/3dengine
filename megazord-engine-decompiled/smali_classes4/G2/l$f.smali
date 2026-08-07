.class public LG2/l$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LG2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:LG2/l$e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:LG2/l$e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:LG2/l$e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:LG2/l$e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LG2/l$e;LG2/l$e;LG2/l$e;LG2/l$e;)V
    .locals 0
    .param p1    # LG2/l$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LG2/l$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # LG2/l$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LG2/l$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LG2/l$f;->a:LG2/l$e;

    .line 4
    iput-object p2, p0, LG2/l$f;->b:LG2/l$e;

    .line 5
    iput-object p3, p0, LG2/l$f;->c:LG2/l$e;

    .line 6
    iput-object p4, p0, LG2/l$f;->d:LG2/l$e;

    return-void
.end method

.method public synthetic constructor <init>(LG2/l$e;LG2/l$e;LG2/l$e;LG2/l$e;LG2/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, LG2/l$f;-><init>(LG2/l$e;LG2/l$e;LG2/l$e;LG2/l$e;)V

    return-void
.end method

.method public static synthetic a(LG2/l$f;)LG2/l$e;
    .locals 0

    iget-object p0, p0, LG2/l$f;->a:LG2/l$e;

    return-object p0
.end method

.method public static synthetic b(LG2/l$f;)LG2/l$e;
    .locals 0

    iget-object p0, p0, LG2/l$f;->b:LG2/l$e;

    return-object p0
.end method

.method public static synthetic c(LG2/l$f;)LG2/l$e;
    .locals 0

    iget-object p0, p0, LG2/l$f;->c:LG2/l$e;

    return-object p0
.end method

.method public static synthetic d(LG2/l$f;)LG2/l$e;
    .locals 0

    iget-object p0, p0, LG2/l$f;->d:LG2/l$e;

    return-object p0
.end method
