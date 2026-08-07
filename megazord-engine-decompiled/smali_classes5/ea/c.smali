.class public Lea/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile b:J

.field public volatile c:Lea/b;

.field public final d:Z

.field public final e:Ljava/lang/Class;

.field public final f:[Ljava/lang/Class;

.field public g:[Lea/d;

.field public volatile h:J

.field public volatile i:Z

.field public volatile j:I

.field public volatile k:F

.field public volatile l:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/Object;JLea/b;Z[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "referencedObject",
            "pointer",
            "destroyer",
            "canDestroyAsync",
            "destroyListenerClasses"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lea/c;->j:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lea/c;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lea/c;->e:Ljava/lang/Class;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lea/c;->a:Ljava/lang/ref/WeakReference;

    iput-wide p2, p0, Lea/c;->b:J

    iput-object p4, p0, Lea/c;->c:Lea/b;

    iput-boolean p5, p0, Lea/c;->d:Z

    iput-object p6, p0, Lea/c;->f:[Ljava/lang/Class;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "destroyer can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "referencedObject can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lea/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lea/c;->e:Ljava/lang/Class;

    return-object v0
.end method

.method public c()[Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lea/c;->f:[Ljava/lang/Class;

    return-object v0
.end method

.method public d()Lea/b;
    .locals 1

    iget-object v0, p0, Lea/c;->c:Lea/b;

    return-object v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lea/c;->h:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lea/c;->b:J

    return-wide v0
.end method

.method public g()[Lea/d;
    .locals 1

    iget-object v0, p0, Lea/c;->g:[Lea/d;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lea/c;->d:Z

    return v0
.end method

.method public i([Lea/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registeredDestroyListeners"
        }
    .end annotation

    iput-object p1, p0, Lea/c;->g:[Lea/d;

    return-void
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lea/c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
