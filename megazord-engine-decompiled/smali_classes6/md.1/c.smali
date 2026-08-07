.class public Lmd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lmd/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmd/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "leftTag",
            "rightTag",
            "replaceInterface"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmd/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lmd/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lmd/c;->c:Lmd/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmd/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lmd/a;
    .locals 1

    iget-object v0, p0, Lmd/c;->c:Lmd/a;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmd/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftTag"
        }
    .end annotation

    iput-object p1, p0, Lmd/c;->a:Ljava/lang/String;

    return-void
.end method

.method public e(Lmd/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "replaceInterface"
        }
    .end annotation

    iput-object p1, p0, Lmd/c;->c:Lmd/a;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rightTag"
        }
    .end annotation

    iput-object p1, p0, Lmd/c;->b:Ljava/lang/String;

    return-void
.end method
