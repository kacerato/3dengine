.class public LQc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQc/b$a;
    }
.end annotation


# static fields
.field public static b:Z = false

.field public static final c:Ljava/lang/String; = "BufferCleaner"


# instance fields
.field public final a:LQc/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQc/b;->a:LQc/b$a;

    return-void
.end method


# virtual methods
.method public a(LQc/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reference"
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Override this method!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(LPc/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeBuffer"
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Override this method!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(LPc/a;)LQc/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeBuffer"
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Override this method!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    sget-boolean v0, LQc/b;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "BufferCleaner"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public e()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Override this method!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()V
    .locals 0

    return-void
.end method
