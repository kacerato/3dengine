.class public LM8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LM8/b$u;
    }
.end annotation


# static fields
.field public static final o:I = 0xe

.field public static final p:Ljava/lang/String; = "b"


# instance fields
.field public a:LM8/b$u;

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:LM8/a;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/io/File;

.field public final m:Z

.field public n:Lr7/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "worldZero"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LM8/b;->b:Z

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LM8/b;->c:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LM8/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LM8/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    invoke-static {}, Lf8/c;->h0()V

    .line 7
    iput-object p1, p0, LM8/b;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, LM8/b;->j:Ljava/lang/String;

    .line 9
    iput-object v0, p0, LM8/b;->k:Ljava/lang/String;

    .line 10
    iput-object v0, p0, LM8/b;->l:Ljava/io/File;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, LM8/b;->m:Z

    .line 12
    new-instance v1, LM8/a;

    invoke-direct {v1, p1, v0}, LM8/a;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, LM8/b;->h:LM8/a;

    .line 13
    new-instance p1, LM8/b$k;

    invoke-direct {p1, p0}, LM8/b$k;-><init>(LM8/b;)V

    const-string v0, "Building project"

    invoke-static {v0, p1}, Lr7/g;->r1(Ljava/lang/String;Lr7/g$c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLM8/b$u;)V
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
            "worldZero",
            "offlineAppTitle",
            "offlinePackageId",
            "generateVulkanShadersPreCache",
            "offlineCallback"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, LM8/b;->b:Z

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LM8/b;->c:Ljava/lang/Object;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LM8/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LM8/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    invoke-static {}, Lf8/c;->h0()V

    .line 20
    iput-object p1, p0, LM8/b;->i:Ljava/lang/String;

    .line 21
    iput-object p2, p0, LM8/b;->j:Ljava/lang/String;

    .line 22
    iput-object p3, p0, LM8/b;->k:Ljava/lang/String;

    .line 23
    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/_EDITOR/APP/Settings/Icon/512x.png"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, LM8/b;->l:Ljava/io/File;

    .line 24
    iput-boolean p4, p0, LM8/b;->m:Z

    .line 25
    iput-object p5, p0, LM8/b;->a:LM8/b$u;

    const/4 p2, 0x1

    .line 26
    iput-boolean p2, p0, LM8/b;->b:Z

    .line 27
    new-instance p2, LM8/a;

    invoke-direct {p2, p1, p4}, LM8/a;-><init>(Ljava/lang/String;Z)V

    iput-object p2, p0, LM8/b;->h:LM8/a;

    .line 28
    new-instance p1, LM8/b$m;

    invoke-direct {p1, p0}, LM8/b$m;-><init>(LM8/b;)V

    const-string p2, "Building project"

    invoke-static {p2, p1}, Lr7/g;->r1(Ljava/lang/String;Lr7/g$c;)V

    return-void
.end method

.method public static synthetic A(LM8/b;)V
    .locals 0

    invoke-virtual {p0}, LM8/b;->H()V

    return-void
.end method

.method public static synthetic B(LM8/b;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, LM8/b;->Y(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic C(LM8/b;)V
    .locals 0

    invoke-virtual {p0}, LM8/b;->I()V

    return-void
.end method

.method public static U(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "assetFileName",
            "outFile"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, v1

    move-object v1, p0

    move-object p0, v3

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v3, v1

    move-object v1, p0

    move-object p0, v3

    goto :goto_2

    :cond_1
    :goto_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 p2, 0x1000

    :try_start_2
    new-array p2, p2, [B

    :goto_1
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object v1, p0

    move-object p0, p1

    move-object p1, p2

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v1, p0

    move-object p0, p1

    move-object p1, p2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    const/4 p0, 0x1

    return p0

    :catchall_2
    move-exception p1

    move-object p0, v1

    goto :goto_3

    :catch_4
    move-exception p1

    move-object p0, v1

    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_3
    if-eqz p0, :cond_4

    :try_start_7
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_4
    return v0

    :catchall_3
    move-exception p1

    :goto_3
    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :cond_5
    if-eqz p0, :cond_6

    :try_start_9
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    :cond_6
    throw p1
.end method

.method public static synthetic a(LM8/b;)Lr7/g;
    .locals 0

    iget-object p0, p0, LM8/b;->n:Lr7/g;

    return-object p0
.end method

.method public static synthetic b(LM8/b;Lr7/g;)Lr7/g;
    .locals 0

    iput-object p1, p0, LM8/b;->n:Lr7/g;

    return-object p1
.end method

.method public static synthetic c(LM8/b;)V
    .locals 0

    invoke-virtual {p0}, LM8/b;->a0()V

    return-void
.end method

.method public static synthetic d(LM8/b;)V
    .locals 0

    invoke-virtual {p0}, LM8/b;->J()V

    return-void
.end method

.method public static synthetic e(LM8/b;)V
    .locals 0

    invoke-virtual {p0}, LM8/b;->K()V

    return-void
.end method

.method public static synthetic f(LM8/b;)V
    .locals 0

    invoke-virtual {p0}, LM8/b;->L()V

    return-void
.end method

.method public static synthetic g(LM8/b;)V
    .locals 0

    invoke-virtual {p0}, LM8/b;->M()V

    return-void
.end method

.method public static synthetic h(LM8/b;)V
    .locals 0

    invoke-virtual {p0}, LM8/b;->N()V

    return-void
.end method

.method public static synthetic i(LM8/b;)V
    .locals 0

    invoke-virtual {p0}, LM8/b;->O()V

    return-void
.end method

.method public static synthetic j(LM8/b;)V
    .locals 0

    invoke-virtual {p0}, LM8/b;->P()V

    return-void
.end method

.method public static synthetic k(LM8/b;)V
    .locals 0

    invoke-virtual {p0}, LM8/b;->Q()V

    return-void
.end method

.method public static synthetic l(LM8/b;)LM8/a;
    .locals 0

    iget-object p0, p0, LM8/b;->h:LM8/a;

    return-object p0
.end method

.method public static synthetic m(LM8/b;)V
    .locals 0

    invoke-virtual {p0}, LM8/b;->R()V

    return-void
.end method

.method public static synthetic n(LM8/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, LM8/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic o(LM8/b;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LM8/b;->Z(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic p(LM8/b;)V
    .locals 0

    invoke-virtual {p0}, LM8/b;->D()V

    return-void
.end method

.method public static synthetic q(LM8/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LM8/b;->c0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic r(LM8/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LM8/b;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic s(LM8/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LM8/b;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic t(LM8/b;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, LM8/b;->l:Ljava/io/File;

    return-object p0
.end method

.method public static synthetic u(LM8/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, LM8/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic v(LM8/b;)LM8/b$u;
    .locals 0

    iget-object p0, p0, LM8/b;->a:LM8/b$u;

    return-object p0
.end method

.method public static synthetic w(LM8/b;)V
    .locals 0

    invoke-virtual {p0}, LM8/b;->T()V

    return-void
.end method

.method public static synthetic x(LM8/b;)V
    .locals 0

    invoke-virtual {p0}, LM8/b;->S()V

    return-void
.end method

.method public static synthetic y(LM8/b;)V
    .locals 0

    invoke-virtual {p0}, LM8/b;->E()V

    return-void
.end method

.method public static synthetic z(LM8/b;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, LM8/b;->b0(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final D()V
    .locals 3

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v0

    const-string v1, "14/14 Deleting builder files"

    invoke-virtual {p0, v1}, LM8/b;->b0(Ljava/lang/String;)V

    iget-object v1, p0, LM8/b;->h:LM8/a;

    new-instance v2, LM8/b$i;

    invoke-direct {v2, p0}, LM8/b$i;-><init>(LM8/b;)V

    invoke-virtual {v1, v2, v0}, LM8/a;->k(LM8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final E()V
    .locals 0

    invoke-virtual {p0}, LM8/b;->F()V

    return-void
.end method

.method public final F()V
    .locals 0

    invoke-virtual {p0}, LM8/b;->G()V

    return-void
.end method

.method public final G()V
    .locals 3

    const-string v0, "3/14 Copy project files"

    invoke-virtual {p0, v0}, LM8/b;->b0(Ljava/lang/String;)V

    iget-object v0, p0, LM8/b;->h:LM8/a;

    new-instance v1, LM8/b$q;

    invoke-direct {v1, p0}, LM8/b$q;-><init>(LM8/b;)V

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LM8/a;->h(LM8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final H()V
    .locals 3

    const-string v0, "4/14 Deleting unecessary"

    invoke-virtual {p0, v0}, LM8/b;->b0(Ljava/lang/String;)V

    iget-object v0, p0, LM8/b;->h:LM8/a;

    new-instance v1, LM8/b$r;

    invoke-direct {v1, p0}, LM8/b$r;-><init>(LM8/b;)V

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LM8/a;->p(LM8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final I()V
    .locals 3

    const-string v0, "5/14 Preparing world zero"

    invoke-virtual {p0, v0}, LM8/b;->b0(Ljava/lang/String;)V

    iget-object v0, p0, LM8/b;->h:LM8/a;

    new-instance v1, LM8/b$s;

    invoke-direct {v1, p0}, LM8/b$s;-><init>(LM8/b;)V

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LM8/a;->w(LM8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final J()V
    .locals 3

    const-string v0, "6/14 Constructing dictionary"

    invoke-virtual {p0, v0}, LM8/b;->b0(Ljava/lang/String;)V

    iget-object v0, p0, LM8/b;->h:LM8/a;

    new-instance v1, LM8/b$t;

    invoke-direct {v1, p0}, LM8/b$t;-><init>(LM8/b;)V

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LM8/a;->t(LM8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final K()V
    .locals 3

    const-string v0, "7/14 Renaming files"

    invoke-virtual {p0, v0}, LM8/b;->b0(Ljava/lang/String;)V

    iget-object v0, p0, LM8/b;->h:LM8/a;

    new-instance v1, LM8/b$a;

    invoke-direct {v1, p0}, LM8/b$a;-><init>(LM8/b;)V

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LM8/a;->y(LM8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final L()V
    .locals 3

    const-string v0, "8/14 Renaming usages"

    invoke-virtual {p0, v0}, LM8/b;->b0(Ljava/lang/String;)V

    iget-object v0, p0, LM8/b;->h:LM8/a;

    new-instance v1, LM8/b$b;

    invoke-direct {v1, p0}, LM8/b$b;-><init>(LM8/b;)V

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LM8/a;->f(LM8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final M()V
    .locals 3

    const-string v0, "8/14 Copying java runtime"

    invoke-virtual {p0, v0}, LM8/b;->b0(Ljava/lang/String;)V

    iget-object v0, p0, LM8/b;->h:LM8/a;

    new-instance v1, LM8/b$c;

    invoke-direct {v1, p0}, LM8/b$c;-><init>(LM8/b;)V

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LM8/a;->j(LM8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final N()V
    .locals 3

    const-string v0, "9/14 Building resources"

    invoke-virtual {p0, v0}, LM8/b;->b0(Ljava/lang/String;)V

    iget-object v0, p0, LM8/b;->h:LM8/a;

    new-instance v1, LM8/b$d;

    invoke-direct {v1, p0}, LM8/b$d;-><init>(LM8/b;)V

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LM8/a;->d(LM8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final O()V
    .locals 3

    const-string v0, "10/14 Deleting Folders"

    invoke-virtual {p0, v0}, LM8/b;->b0(Ljava/lang/String;)V

    iget-object v0, p0, LM8/b;->h:LM8/a;

    new-instance v1, LM8/b$e;

    invoke-direct {v1, p0}, LM8/b$e;-><init>(LM8/b;)V

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LM8/a;->m(LM8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final P()V
    .locals 3

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v0

    const-string v1, "11/14 Deleting unused filed"

    invoke-virtual {p0, v1}, LM8/b;->b0(Ljava/lang/String;)V

    iget-object v1, p0, LM8/b;->h:LM8/a;

    new-instance v2, LM8/b$f;

    invoke-direct {v2, p0, v0}, LM8/b$f;-><init>(LM8/b;Landroid/content/Context;)V

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, LM8/a;->q(LM8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final Q()V
    .locals 3

    iget-boolean v0, p0, LM8/b;->m:Z

    if-eqz v0, :cond_0

    const-string v0, "12/14 Building shaders"

    invoke-virtual {p0, v0}, LM8/b;->b0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "12/14 Skipping shader pre-cache"

    invoke-virtual {p0, v0}, LM8/b;->b0(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, LM8/b;->h:LM8/a;

    new-instance v1, LM8/b$g;

    invoke-direct {v1, p0}, LM8/b$g;-><init>(LM8/b;)V

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LM8/a;->e(LM8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final R()V
    .locals 3

    const-string v0, "13/14 Preparing APK"

    invoke-virtual {p0, v0}, LM8/b;->b0(Ljava/lang/String;)V

    iget-object v0, p0, LM8/b;->h:LM8/a;

    new-instance v1, LM8/b$h;

    invoke-direct {v1, p0}, LM8/b$h;-><init>(LM8/b;)V

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LM8/a;->g(LM8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final S()V
    .locals 3

    const-string v0, "Deleting builder files"

    invoke-virtual {p0, v0}, LM8/b;->b0(Ljava/lang/String;)V

    sget-object v0, Lo8/b;->g:LM8/c;

    iget-object v1, v0, LM8/c;->a:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;->localProjectName:Ljava/lang/String;

    iget-object v0, v0, LM8/c;->a:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;

    iget-object v1, p0, LM8/b;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;->worldZero:Ljava/lang/String;

    iget-object v0, p0, LM8/b;->h:LM8/a;

    new-instance v1, LM8/b$p;

    invoke-direct {v1, p0}, LM8/b$p;-><init>(LM8/b;)V

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LM8/a;->k(LM8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final T()V
    .locals 4

    iget-boolean v0, p0, LM8/b;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, LM8/b$j;

    invoke-direct {v0, p0}, LM8/b$j;-><init>(LM8/b;)V

    const-string v1, "BuilderService-OfflineApk"

    invoke-virtual {p0, v1, v0}, LM8/b;->Z(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lo8/b;->g:LM8/c;

    iget-object v2, v1, LM8/c;->a:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;

    if-eqz v2, :cond_1

    const-string v2, "Uploading assets"

    const-string v3, "Cloud build"

    invoke-virtual {p0, v2, v3}, LM8/b;->c0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, LM8/c;->a:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;

    new-instance v3, LM8/b$l;

    invoke-direct {v3, p0}, LM8/b$l;-><init>(LM8/b;)V

    invoke-virtual {v1, v2, v3, v0}, LM8/c;->e(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;LM8/d;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LM8/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method public V()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LM8/b;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LM8/b;->d:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public W()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LM8/b;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LM8/b;->e:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public X()Z
    .locals 1

    iget-object v0, p0, LM8/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final Y(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iget-object v0, p0, LM8/b;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, LM8/b;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, LM8/b;->e:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LM8/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, LM8/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final Z(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "threadName",
            "runnable"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a0()V
    .locals 2

    new-instance v0, LGb/b;

    new-instance v1, LM8/b$n;

    invoke-direct {v1, p0}, LM8/b$n;-><init>(LM8/b;)V

    invoke-direct {v0, v1}, LGb/b;-><init>(LGb/b$a;)V

    invoke-static {v0}, Lc9/a;->H(LGb/b;)V

    new-instance v0, LM8/b$o;

    invoke-direct {v0, p0}, LM8/b$o;-><init>(LM8/b;)V

    const-string v1, "BuilderService-Start"

    invoke-virtual {p0, v1, v0}, LM8/b;->Z(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iget-object v0, p0, LM8/b;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, LM8/b;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, LM8/b;->e:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "sub"
        }
    .end annotation

    iget-object v0, p0, LM8/b;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, LM8/b;->d:Ljava/lang/String;

    iput-object p2, p0, LM8/b;->e:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
