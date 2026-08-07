.class public LPd/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public final b:LPd/c;

.field public final c:LPd/c;

.field public final d:LPd/c;

.field public final e:LPd/c;

.field public f:F

.field public g:F

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LPd/c;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, LPd/c;-><init>(FFF)V

    iput-object v0, p0, LPd/e;->b:LPd/c;

    .line 3
    new-instance v0, LPd/c;

    invoke-direct {v0, v1, v1, v1}, LPd/c;-><init>(FFF)V

    iput-object v0, p0, LPd/e;->c:LPd/c;

    .line 4
    new-instance v0, LPd/c;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2}, LPd/c;-><init>(FFF)V

    iput-object v0, p0, LPd/e;->d:LPd/c;

    .line 5
    new-instance v0, LPd/c;

    invoke-direct {v0, v2, v2, v2}, LPd/c;-><init>(FFF)V

    iput-object v0, p0, LPd/e;->e:LPd/c;

    .line 6
    iput v2, p0, LPd/e;->f:F

    .line 7
    iput v1, p0, LPd/e;->g:F

    return-void
.end method

.method public constructor <init>(LPd/e;)V
    .locals 6

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, LPd/c;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, LPd/c;-><init>(FFF)V

    iput-object v0, p0, LPd/e;->b:LPd/c;

    .line 18
    new-instance v2, LPd/c;

    invoke-direct {v2, v1, v1, v1}, LPd/c;-><init>(FFF)V

    iput-object v2, p0, LPd/e;->c:LPd/c;

    .line 19
    new-instance v3, LPd/c;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v4}, LPd/c;-><init>(FFF)V

    iput-object v3, p0, LPd/e;->d:LPd/c;

    .line 20
    new-instance v5, LPd/c;

    invoke-direct {v5, v4, v4, v4}, LPd/c;-><init>(FFF)V

    iput-object v5, p0, LPd/e;->e:LPd/c;

    .line 21
    iput v4, p0, LPd/e;->f:F

    .line 22
    iput v1, p0, LPd/e;->g:F

    .line 23
    iget-object v1, p1, LPd/e;->b:LPd/c;

    invoke-virtual {v0, v1}, LPd/c;->b(LPd/c;)V

    .line 24
    iget-object v0, p1, LPd/e;->c:LPd/c;

    invoke-virtual {v2, v0}, LPd/c;->b(LPd/c;)V

    .line 25
    iget-object v0, p1, LPd/e;->d:LPd/c;

    invoke-virtual {v3, v0}, LPd/c;->b(LPd/c;)V

    .line 26
    iget-object v0, p1, LPd/e;->e:LPd/c;

    invoke-virtual {v5, v0}, LPd/c;->b(LPd/c;)V

    .line 27
    iget v0, p1, LPd/e;->f:F

    iput v0, p0, LPd/e;->f:F

    .line 28
    iget v0, p1, LPd/e;->g:F

    iput v0, p0, LPd/e;->g:F

    .line 29
    iget-object v0, p1, LPd/e;->h:Ljava/lang/String;

    iput-object v0, p0, LPd/e;->h:Ljava/lang/String;

    .line 30
    iget-object v0, p1, LPd/e;->l:Ljava/lang/String;

    iput-object v0, p0, LPd/e;->i:Ljava/lang/String;

    .line 31
    iget-object v1, p1, LPd/e;->j:Ljava/lang/String;

    iput-object v1, p0, LPd/e;->j:Ljava/lang/String;

    .line 32
    iget-object p1, p1, LPd/e;->k:Ljava/lang/String;

    iput-object p1, p0, LPd/e;->k:Ljava/lang/String;

    .line 33
    iput-object v0, p0, LPd/e;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, LPd/c;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, LPd/c;-><init>(FFF)V

    iput-object v0, p0, LPd/e;->b:LPd/c;

    .line 10
    new-instance v0, LPd/c;

    invoke-direct {v0, v1, v1, v1}, LPd/c;-><init>(FFF)V

    iput-object v0, p0, LPd/e;->c:LPd/c;

    .line 11
    new-instance v0, LPd/c;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2}, LPd/c;-><init>(FFF)V

    iput-object v0, p0, LPd/e;->d:LPd/c;

    .line 12
    new-instance v0, LPd/c;

    invoke-direct {v0, v2, v2, v2}, LPd/c;-><init>(FFF)V

    iput-object v0, p0, LPd/e;->e:LPd/c;

    .line 13
    iput v2, p0, LPd/e;->f:F

    .line 14
    iput v1, p0, LPd/e;->g:F

    .line 15
    iput-object p1, p0, LPd/e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()LPd/c;
    .locals 1

    iget-object v0, p0, LPd/e;->b:LPd/c;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LPd/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public c()LPd/c;
    .locals 1

    iget-object v0, p0, LPd/e;->c:LPd/c;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LPd/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, LPd/e;->g:F

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LPd/e;->l:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LPd/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()LPd/c;
    .locals 1

    iget-object v0, p0, LPd/e;->d:LPd/c;

    return-object v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, LPd/e;->f:F

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LPd/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LPd/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public l()LPd/c;
    .locals 1

    iget-object v0, p0, LPd/e;->e:LPd/c;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LPd/e;->h:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LPd/e;->i:Ljava/lang/String;

    return-void
.end method

.method public o(F)V
    .locals 0

    iput p1, p0, LPd/e;->g:F

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LPd/e;->l:Ljava/lang/String;

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LPd/e;->a:Ljava/lang/String;

    return-void
.end method

.method public r(F)V
    .locals 0

    iput p1, p0, LPd/e;->f:F

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LPd/e;->k:Ljava/lang/String;

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LPd/e;->j:Ljava/lang/String;

    return-void
.end method
