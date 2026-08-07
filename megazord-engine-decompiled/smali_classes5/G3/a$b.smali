.class public final LG3/a$b;
.super LG3/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LG3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:LG3/f;

.field public e:LG3/d$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, LG3/d$a;-><init>()V

    return-void
.end method

.method public constructor <init>(LG3/d;)V
    .locals 1

    .line 3
    invoke-direct {p0}, LG3/d$a;-><init>()V

    .line 4
    invoke-virtual {p1}, LG3/d;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LG3/a$b;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, LG3/d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LG3/a$b;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, LG3/d;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LG3/a$b;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, LG3/d;->b()LG3/f;

    move-result-object v0

    iput-object v0, p0, LG3/a$b;->d:LG3/f;

    .line 8
    invoke-virtual {p1}, LG3/d;->e()LG3/d$b;

    move-result-object p1

    iput-object p1, p0, LG3/a$b;->e:LG3/d$b;

    return-void
.end method

.method public synthetic constructor <init>(LG3/d;LG3/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LG3/a$b;-><init>(LG3/d;)V

    return-void
.end method


# virtual methods
.method public a()LG3/d;
    .locals 8

    new-instance v7, LG3/a;

    iget-object v1, p0, LG3/a$b;->a:Ljava/lang/String;

    iget-object v2, p0, LG3/a$b;->b:Ljava/lang/String;

    iget-object v3, p0, LG3/a$b;->c:Ljava/lang/String;

    iget-object v4, p0, LG3/a$b;->d:LG3/f;

    iget-object v5, p0, LG3/a$b;->e:LG3/d$b;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, LG3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LG3/f;LG3/d$b;LG3/a$a;)V

    return-object v7
.end method

.method public b(LG3/f;)LG3/d$a;
    .locals 0

    iput-object p1, p0, LG3/a$b;->d:LG3/f;

    return-object p0
.end method

.method public c(Ljava/lang/String;)LG3/d$a;
    .locals 0

    iput-object p1, p0, LG3/a$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)LG3/d$a;
    .locals 0

    iput-object p1, p0, LG3/a$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e(LG3/d$b;)LG3/d$a;
    .locals 0

    iput-object p1, p0, LG3/a$b;->e:LG3/d$b;

    return-object p0
.end method

.method public f(Ljava/lang/String;)LG3/d$a;
    .locals 0

    iput-object p1, p0, LG3/a$b;->a:Ljava/lang/String;

    return-object p0
.end method
