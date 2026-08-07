.class public LIe/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LIe/g$b;
    }
.end annotation


# instance fields
.field public final a:LJe/c;

.field public final b:LNe/b;

.field public final c:LRe/a;

.field public final d:LIe/c;

.field public final e:LOe/a;

.field public final f:LNe/i;

.field public final g:LIe/k;


# direct methods
.method public constructor <init>(LIe/g$b;)V
    .locals 1
    .param p1    # LIe/g$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, LIe/g$b;->a(LIe/g$b;)LJe/c;

    move-result-object v0

    iput-object v0, p0, LIe/g;->a:LJe/c;

    .line 4
    invoke-static {p1}, LIe/g$b;->b(LIe/g$b;)LNe/b;

    move-result-object v0

    iput-object v0, p0, LIe/g;->b:LNe/b;

    .line 5
    invoke-static {p1}, LIe/g$b;->c(LIe/g$b;)LRe/a;

    move-result-object v0

    iput-object v0, p0, LIe/g;->c:LRe/a;

    .line 6
    invoke-static {p1}, LIe/g$b;->d(LIe/g$b;)LIe/c;

    move-result-object v0

    iput-object v0, p0, LIe/g;->d:LIe/c;

    .line 7
    invoke-static {p1}, LIe/g$b;->e(LIe/g$b;)LOe/a;

    move-result-object v0

    iput-object v0, p0, LIe/g;->e:LOe/a;

    .line 8
    invoke-static {p1}, LIe/g$b;->f(LIe/g$b;)LNe/i;

    move-result-object v0

    iput-object v0, p0, LIe/g;->f:LNe/i;

    .line 9
    invoke-static {p1}, LIe/g$b;->g(LIe/g$b;)LIe/k;

    move-result-object p1

    iput-object p1, p0, LIe/g;->g:LIe/k;

    return-void
.end method

.method public synthetic constructor <init>(LIe/g$b;LIe/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LIe/g;-><init>(LIe/g$b;)V

    return-void
.end method

.method public static b()LIe/g$b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LIe/g$b;

    invoke-direct {v0}, LIe/g$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()LNe/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LIe/g;->b:LNe/b;

    return-object v0
.end method

.method public c()LOe/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LIe/g;->e:LOe/a;

    return-object v0
.end method

.method public d()LNe/i;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LIe/g;->f:LNe/i;

    return-object v0
.end method

.method public e()LIe/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LIe/g;->d:LIe/c;

    return-object v0
.end method

.method public f()LIe/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LIe/g;->g:LIe/k;

    return-object v0
.end method

.method public g()LRe/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LIe/g;->c:LRe/a;

    return-object v0
.end method

.method public h()LJe/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LIe/g;->a:LJe/c;

    return-object v0
.end method
