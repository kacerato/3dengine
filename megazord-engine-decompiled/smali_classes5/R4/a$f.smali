.class public LR4/a$f;
.super LX7/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LR4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static final n:LX7/j;


# instance fields
.field public final m:LR4/a$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LR4/a$f$a;

    invoke-direct {v0}, LR4/a$f$a;-><init>()V

    sput-object v0, LR4/a$f;->n:LX7/j;

    return-void
.end method

.method public constructor <init>(LR4/a$e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    invoke-static {p1}, LR4/a$f;->v(LR4/a$e;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, LR4/a$f;->n:LX7/j;

    invoke-direct {p0, v0, v1}, LX7/i;-><init>(Ljava/lang/String;LX7/j;)V

    iput-object p1, p0, LR4/a$f;->m:LR4/a$e;

    if-eqz p1, :cond_0

    invoke-static {p1}, LR4/a$e;->d(LR4/a$e;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LY7/b;

    new-instance v1, LR4/a$f$b;

    invoke-direct {v1, p0, p1}, LR4/a$f$b;-><init>(LR4/a$f;LR4/a$e;)V

    invoke-direct {v0, v1}, LY7/b;-><init>(LY7/b$b;)V

    invoke-virtual {p0, v0}, LX7/i;->b(LY7/a;)LX7/i;

    :cond_0
    new-instance v0, LR4/a$f$c;

    invoke-direct {v0, p0, p1}, LR4/a$f$c;-><init>(LR4/a$f;LR4/a$e;)V

    iput-object v0, p0, LX7/i;->j:LX7/c;

    return-void
.end method

.method public static synthetic u(LR4/a$f;)LR4/a$e;
    .locals 0

    iget-object p0, p0, LR4/a$f;->m:LR4/a$e;

    return-object p0
.end method

.method public static v(LR4/a$e;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, LR4/a$e;->f(LR4/a$e;)LUc/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0}, LR4/a$e;->f(LR4/a$e;)LUc/b;

    move-result-object v1

    invoke-virtual {v1}, LUc/b;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-static {p0}, LR4/a$e;->a(LR4/a$e;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p0}, LR4/a$e;->a(LR4/a$e;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LR4/a$f;->m:LR4/a$e;

    if-eqz v0, :cond_0

    invoke-static {v0}, LR4/a$e;->a(LR4/a$e;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
