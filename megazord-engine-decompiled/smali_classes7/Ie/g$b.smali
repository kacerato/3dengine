.class public LIe/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIe/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:LJe/c;

.field public b:LNe/b;

.field public c:LRe/a;

.field public d:LIe/c;

.field public e:LOe/a;

.field public f:LNe/i;

.field public g:LIe/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LIe/g$b;)LJe/c;
    .locals 0

    iget-object p0, p0, LIe/g$b;->a:LJe/c;

    return-object p0
.end method

.method public static synthetic b(LIe/g$b;)LNe/b;
    .locals 0

    iget-object p0, p0, LIe/g$b;->b:LNe/b;

    return-object p0
.end method

.method public static synthetic c(LIe/g$b;)LRe/a;
    .locals 0

    iget-object p0, p0, LIe/g$b;->c:LRe/a;

    return-object p0
.end method

.method public static synthetic d(LIe/g$b;)LIe/c;
    .locals 0

    iget-object p0, p0, LIe/g$b;->d:LIe/c;

    return-object p0
.end method

.method public static synthetic e(LIe/g$b;)LOe/a;
    .locals 0

    iget-object p0, p0, LIe/g$b;->e:LOe/a;

    return-object p0
.end method

.method public static synthetic f(LIe/g$b;)LNe/i;
    .locals 0

    iget-object p0, p0, LIe/g$b;->f:LNe/i;

    return-object p0
.end method

.method public static synthetic g(LIe/g$b;)LIe/k;
    .locals 0

    iget-object p0, p0, LIe/g$b;->g:LIe/k;

    return-object p0
.end method


# virtual methods
.method public h(LNe/b;)LIe/g$b;
    .locals 0
    .param p1    # LNe/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, LIe/g$b;->b:LNe/b;

    return-object p0
.end method

.method public i(LJe/c;LIe/k;)LIe/g;
    .locals 0
    .param p1    # LJe/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LIe/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, LIe/g$b;->a:LJe/c;

    iput-object p2, p0, LIe/g$b;->g:LIe/k;

    iget-object p1, p0, LIe/g$b;->b:LNe/b;

    if-nez p1, :cond_0

    invoke-static {}, LNe/b;->c()LNe/b;

    move-result-object p1

    iput-object p1, p0, LIe/g$b;->b:LNe/b;

    :cond_0
    iget-object p1, p0, LIe/g$b;->c:LRe/a;

    if-nez p1, :cond_1

    new-instance p1, LRe/b;

    invoke-direct {p1}, LRe/b;-><init>()V

    iput-object p1, p0, LIe/g$b;->c:LRe/a;

    :cond_1
    iget-object p1, p0, LIe/g$b;->d:LIe/c;

    if-nez p1, :cond_2

    new-instance p1, LIe/d;

    invoke-direct {p1}, LIe/d;-><init>()V

    iput-object p1, p0, LIe/g$b;->d:LIe/c;

    :cond_2
    iget-object p1, p0, LIe/g$b;->e:LOe/a;

    if-nez p1, :cond_3

    invoke-static {}, LOe/a;->a()LOe/a;

    move-result-object p1

    iput-object p1, p0, LIe/g$b;->e:LOe/a;

    :cond_3
    iget-object p1, p0, LIe/g$b;->f:LNe/i;

    if-nez p1, :cond_4

    new-instance p1, LNe/j;

    invoke-direct {p1}, LNe/j;-><init>()V

    iput-object p1, p0, LIe/g$b;->f:LNe/i;

    :cond_4
    new-instance p1, LIe/g;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, LIe/g;-><init>(LIe/g$b;LIe/g$a;)V

    return-object p1
.end method

.method public j(LOe/a;)LIe/g$b;
    .locals 0
    .param p1    # LOe/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, LIe/g$b;->e:LOe/a;

    return-object p0
.end method

.method public k(LNe/i;)LIe/g$b;
    .locals 0
    .param p1    # LNe/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, LIe/g$b;->f:LNe/i;

    return-object p0
.end method

.method public l(LIe/c;)LIe/g$b;
    .locals 0
    .param p1    # LIe/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, LIe/g$b;->d:LIe/c;

    return-object p0
.end method

.method public m(LRe/a;)LIe/g$b;
    .locals 0
    .param p1    # LRe/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, LIe/g$b;->c:LRe/a;

    return-object p0
.end method
