.class public LMc/e;
.super Lbd/m;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public g:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public p:F

.field public q:I

.field public r:LJAVARuntime/KeyboardButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lbd/m;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LMc/e;->d:Z

    iput-boolean v0, p0, LMc/e;->e:Z

    iput-boolean v0, p0, LMc/e;->g:Z

    iput-boolean v0, p0, LMc/e;->i:Z

    iput-boolean v0, p0, LMc/e;->j:Z

    iput-boolean v0, p0, LMc/e;->l:Z

    iput-boolean v0, p0, LMc/e;->m:Z

    iput-boolean v0, p0, LMc/e;->n:Z

    return-void
.end method


# virtual methods
.method public r()I
    .locals 1

    iget v0, p0, LMc/e;->q:I

    return v0
.end method

.method public s()LJAVARuntime/KeyboardButton;
    .locals 1

    iget-object v0, p0, LMc/e;->r:LJAVARuntime/KeyboardButton;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/KeyboardButton;

    invoke-direct {v0, p0}, LJAVARuntime/KeyboardButton;-><init>(LMc/e;)V

    iput-object v0, p0, LMc/e;->r:LJAVARuntime/KeyboardButton;

    :cond_0
    return-object v0
.end method
