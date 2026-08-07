.class public Lec/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lec/d;

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lec/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "mode"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lec/e;->h:Z

    .line 3
    iput-object p1, p0, Lec/e;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lec/e;->b:Lec/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lec/d;ZLjava/lang/String;Ljava/lang/String;)V
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
            "file",
            "mode",
            "changeFile",
            "newFolder",
            "newFile"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lec/e;->h:Z

    .line 7
    iput-object p1, p0, Lec/e;->a:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lec/e;->b:Lec/d;

    .line 9
    iput-boolean p3, p0, Lec/e;->d:Z

    .line 10
    iput-object p5, p0, Lec/e;->f:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lec/e;->e:Ljava/lang/String;

    return-void
.end method
