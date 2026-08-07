.class public Lw8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lw8/b;

.field public final c:Lw8/b;

.field public d:Ljava/lang/Class;

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "simulatedName"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw8/b;

    invoke-direct {v0}, Lw8/b;-><init>()V

    iput-object v0, p0, Lw8/a;->b:Lw8/b;

    new-instance v0, Lw8/b;

    invoke-direct {v0}, Lw8/b;-><init>()V

    iput-object v0, p0, Lw8/a;->c:Lw8/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lw8/a;->d:Ljava/lang/Class;

    iput-object p1, p0, Lw8/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lw8/b;
    .locals 1

    iget-object v0, p0, Lw8/a;->b:Lw8/b;

    return-object v0
.end method

.method public b()Lw8/b;
    .locals 1

    iget-object v0, p0, Lw8/a;->c:Lw8/b;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw8/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lw8/a;->d:Ljava/lang/Class;

    return-object v0
.end method
