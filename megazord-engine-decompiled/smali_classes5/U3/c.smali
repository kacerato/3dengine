.class public LU3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LU3/c$b;,
        LU3/c$a;
    }
.end annotation


# static fields
.field public static final a:I = 0xc

.field public static final b:I = 0x2

.field public static final c:I = 0xe

.field public static final d:F = 35.0f

.field public static e:LU3/c$b;

.field public static f:Lj5/b;

.field public static g:LU3/n;

.field public static h:LU3/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LU3/c$b;->Disable:LU3/c$b;

    sput-object v0, LU3/c;->e:LU3/c$b;

    const/4 v0, 0x0

    sput-object v0, LU3/c;->f:Lj5/b;

    sget-object v0, LU3/c$a;->Local:LU3/c$a;

    sput-object v0, LU3/c;->h:LU3/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LU3/c$b;
    .locals 1

    sget-object v0, LU3/c;->e:LU3/c$b;

    return-object v0
.end method

.method public static b()Lj5/b;
    .locals 1

    sget-object v0, LU3/c;->f:Lj5/b;

    return-object v0
.end method

.method public static c()LU3/c$a;
    .locals 1

    sget-object v0, LU3/c;->h:LU3/c$a;

    return-object v0
.end method

.method public static d(LU3/c$b;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "axis",
            "callTopbarListener",
            "callCustomAxisListener"
        }
    .end annotation

    sget-object v0, LU3/c;->e:LU3/c$b;

    if-eq v0, p0, :cond_3

    sput-object p0, LU3/c;->e:LU3/c$b;

    sget-object v0, LU3/c$b;->Custom:LU3/c$b;

    if-eq p0, v0, :cond_2

    sget-object p0, LU3/c;->f:Lj5/b;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lj5/b;->a:Lj5/a;

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p0}, Lj5/a;->b()V

    :cond_0
    sget-object p0, LU3/c;->f:Lj5/b;

    invoke-virtual {p0}, Lj5/b;->g()V

    sget-object p0, LU3/c;->f:Lj5/b;

    iget-object p0, p0, Lj5/b;->a:Lj5/a;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lj5/a;->a()V

    :cond_1
    const/4 p0, 0x0

    sput-object p0, LU3/c;->f:Lj5/b;

    :cond_2
    sget-object p0, LU3/c;->g:LU3/n;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p0}, LU3/n;->b()V

    :cond_3
    return-void
.end method

.method public static e(Lj5/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customAxis"
        }
    .end annotation

    sget-object v0, LU3/c;->f:Lj5/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj5/b;->g()V

    sget-object v0, LU3/c;->f:Lj5/b;

    iget-object v0, v0, Lj5/b;->a:Lj5/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lj5/a;->a()V

    :cond_0
    sput-object p0, LU3/c;->f:Lj5/b;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    sget-object p0, LU3/c$b;->Custom:LU3/c$b;

    invoke-static {p0, v0, v0}, LU3/c;->d(LU3/c$b;ZZ)V

    goto :goto_0

    :cond_1
    sget-object p0, LU3/c$b;->Disable:LU3/c$b;

    invoke-static {p0, v0, v0}, LU3/c;->d(LU3/c$b;ZZ)V

    :goto_0
    return-void
.end method
