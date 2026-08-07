.class public LTg/a;
.super LTg/q;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:LUg/b;

.field public d:Ljava/lang/String;

.field public e:LUg/a;

.field public f:LUg/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LTg/q;-><init>()V

    sget-object v0, LQg/c;->AES_EXTRA_DATA_RECORD:LQg/c;

    invoke-virtual {p0, v0}, LTg/q;->b(LQg/c;)V

    const/4 v0, 0x7

    iput v0, p0, LTg/a;->b:I

    sget-object v0, LUg/b;->TWO:LUg/b;

    iput-object v0, p0, LTg/a;->c:LUg/b;

    const-string v0, "AE"

    iput-object v0, p0, LTg/a;->d:Ljava/lang/String;

    sget-object v0, LUg/a;->KEY_STRENGTH_256:LUg/a;

    iput-object v0, p0, LTg/a;->e:LUg/a;

    sget-object v0, LUg/d;->DEFLATE:LUg/d;

    iput-object v0, p0, LTg/a;->f:LUg/d;

    return-void
.end method


# virtual methods
.method public c()LUg/a;
    .locals 1

    iget-object v0, p0, LTg/a;->e:LUg/a;

    return-object v0
.end method

.method public d()LUg/b;
    .locals 1

    iget-object v0, p0, LTg/a;->c:LUg/b;

    return-object v0
.end method

.method public e()LUg/d;
    .locals 1

    iget-object v0, p0, LTg/a;->f:LUg/d;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, LTg/a;->b:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LTg/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h(LUg/a;)V
    .locals 0

    iput-object p1, p0, LTg/a;->e:LUg/a;

    return-void
.end method

.method public i(LUg/b;)V
    .locals 0

    iput-object p1, p0, LTg/a;->c:LUg/b;

    return-void
.end method

.method public j(LUg/d;)V
    .locals 0

    iput-object p1, p0, LTg/a;->f:LUg/d;

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, LTg/a;->b:I

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LTg/a;->d:Ljava/lang/String;

    return-void
.end method
