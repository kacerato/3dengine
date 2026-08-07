.class public Lsb/a;
.super Lc9/f;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/Object;

.field public c:LMb/g;

.field public d:Lsb/b;

.field public e:F

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(FLMb/g;Ljava/lang/String;Lsb/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bias",
            "texture",
            "outputName",
            "genQueueListener"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lc9/f;-><init>()V

    .line 15
    iput p1, p0, Lsb/a;->e:F

    .line 16
    iput-object p2, p0, Lsb/a;->c:LMb/g;

    .line 17
    iput-object p4, p0, Lsb/a;->d:Lsb/b;

    .line 18
    iput-object p3, p0, Lsb/a;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(FLMb/g;Lsb/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bias",
            "texture",
            "genQueueListener"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lc9/f;-><init>()V

    .line 11
    iput p1, p0, Lsb/a;->e:F

    .line 12
    iput-object p2, p0, Lsb/a;->c:LMb/g;

    .line 13
    iput-object p3, p0, Lsb/a;->d:Lsb/b;

    return-void
.end method

.method public constructor <init>(LMb/g;Lsb/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "texture",
            "genQueueListener"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lc9/f;-><init>()V

    const/high16 v0, 0x42a00000    # 80.0f

    .line 7
    iput v0, p0, Lsb/a;->e:F

    .line 8
    iput-object p1, p0, Lsb/a;->c:LMb/g;

    .line 9
    iput-object p2, p0, Lsb/a;->d:Lsb/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;LMb/g;Lsb/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userData",
            "texture",
            "genQueueListener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lc9/f;-><init>()V

    const/high16 v0, 0x42a00000    # 80.0f

    .line 2
    iput v0, p0, Lsb/a;->e:F

    .line 3
    iput-object p1, p0, Lsb/a;->b:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lsb/a;->c:LMb/g;

    .line 5
    iput-object p3, p0, Lsb/a;->d:Lsb/b;

    return-void
.end method


# virtual methods
.method public getBias()F
    .locals 1

    iget v0, p0, Lsb/a;->e:F

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsb/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public setBias(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bias"
        }
    .end annotation

    iput p1, p0, Lsb/a;->e:F

    return-void
.end method
