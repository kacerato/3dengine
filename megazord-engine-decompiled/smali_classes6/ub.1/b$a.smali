.class public Lub/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lub/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lub/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lub/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public d:Lub/b$b;

.field public e:Lub/b$b;


# direct methods
.method public constructor <init>(Lub/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lub/b<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lub/b$a;-><init>(Lub/b;Z)V

    return-void
.end method

.method public constructor <init>(Lub/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "allowRemove"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lub/b<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lub/b$a;->b:Lub/b;

    .line 4
    iput-boolean p2, p0, Lub/b$a;->c:Z

    return-void
.end method


# virtual methods
.method public a()Lub/b$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lub/b$b<",
            "TT;>;"
        }
    .end annotation

    sget-boolean v0, Lub/e;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lub/b$b;

    iget-object v1, p0, Lub/b$a;->b:Lub/b;

    iget-boolean v2, p0, Lub/b$a;->c:Z

    invoke-direct {v0, v1, v2}, Lub/b$b;-><init>(Lub/b;Z)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lub/b$a;->d:Lub/b$b;

    if-nez v0, :cond_1

    new-instance v0, Lub/b$b;

    iget-object v1, p0, Lub/b$a;->b:Lub/b;

    iget-boolean v2, p0, Lub/b$a;->c:Z

    invoke-direct {v0, v1, v2}, Lub/b$b;-><init>(Lub/b;Z)V

    iput-object v0, p0, Lub/b$a;->d:Lub/b$b;

    new-instance v0, Lub/b$b;

    iget-object v1, p0, Lub/b$a;->b:Lub/b;

    iget-boolean v2, p0, Lub/b$a;->c:Z

    invoke-direct {v0, v1, v2}, Lub/b$b;-><init>(Lub/b;Z)V

    iput-object v0, p0, Lub/b$a;->e:Lub/b$b;

    :cond_1
    iget-object v0, p0, Lub/b$a;->d:Lub/b$b;

    iget-boolean v1, v0, Lub/b$b;->e:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iput v3, v0, Lub/b$b;->d:I

    iput-boolean v2, v0, Lub/b$b;->e:Z

    iget-object v1, p0, Lub/b$a;->e:Lub/b$b;

    iput-boolean v3, v1, Lub/b$b;->e:Z

    return-object v0

    :cond_2
    iget-object v1, p0, Lub/b$a;->e:Lub/b$b;

    iput v3, v1, Lub/b$b;->d:I

    iput-boolean v2, v1, Lub/b$b;->e:Z

    iput-boolean v3, v0, Lub/b$b;->e:Z

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lub/b$a;->a()Lub/b$b;

    move-result-object v0

    return-object v0
.end method
