.class public LX0/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/a$d$f;


# annotations
.annotation build LT0/a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LX0/K$a;
    }
.end annotation


# static fields
.field public static final c:LX0/K;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, LX0/K;->a()LX0/K$a;

    move-result-object v0

    invoke-virtual {v0}, LX0/K$a;->a()LX0/K;

    move-result-object v0

    sput-object v0, LX0/K;->c:LX0/K;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;LX0/Q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX0/K;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()LX0/K$a;
    .locals 2
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LX0/K$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LX0/K$a;-><init>(LX0/P;)V

    return-object v0
.end method


# virtual methods
.method public final b()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, LX0/K;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "api"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, LX0/K;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, LX0/K;

    iget-object v0, p0, LX0/K;->b:Ljava/lang/String;

    iget-object p1, p1, LX0/K;->b:Ljava/lang/String;

    invoke-static {v0, p1}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LX0/K;->b:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LX0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
