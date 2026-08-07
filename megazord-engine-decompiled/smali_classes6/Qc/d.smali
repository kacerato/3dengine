.class public LQc/d;
.super LQc/b;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final d:Lea/b;


# direct methods
.method public constructor <init>(LQc/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-direct {p0, p1}, LQc/b;-><init>(LQc/b$a;)V

    new-instance p1, LQc/d$a;

    invoke-direct {p1, p0}, LQc/d$a;-><init>(LQc/d;)V

    iput-object p1, p0, LQc/d;->d:Lea/b;

    return-void
.end method

.method public static synthetic g(LQc/d;)LQc/b$a;
    .locals 0

    iget-object p0, p0, LQc/b;->a:LQc/b$a;

    return-object p0
.end method


# virtual methods
.method public a(LQc/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reference"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, LQc/c;->a()LPc/a;

    move-result-object v0

    iget-wide v1, p1, LQc/c;->b:J

    iget-object p1, p0, LQc/d;->d:Lea/b;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLea/b;Z)V

    return-void
.end method

.method public b(LPc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeBuffer"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    return-void
.end method
