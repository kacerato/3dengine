.class public Lxd/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LAd/d;


# direct methods
.method public constructor <init>(LAd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "postAsyncResponse"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxd/d;->a:LAd/d;

    return-void
.end method

.method public static synthetic a(Lxd/d;[LAd/e;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lxd/d;->c([LAd/e;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lxd/d;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lxd/d;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final varargs c([LAd/e;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p1, LAd/e;->a:Ljava/lang/String;

    iget-object v1, p1, LAd/e;->b:Ljava/util/Map;

    iget-boolean p1, p1, LAd/e;->d:Z

    invoke-static {v0, v1, p1}, Lzd/a;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(LAd/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lxd/d$a;

    invoke-direct {v1, p0, p1}, Lxd/d$a;-><init>(Lxd/d;LAd/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p1, "PostAsync_NEV"

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, Lxd/d;->a:LAd/d;

    if-eqz v0, :cond_4

    const-string v0, "@no_ethernet@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "@errorcheckingconnection@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "@error@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, LAd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "status"

    invoke-static {v0, v1}, LAd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxd/d;->a:LAd/d;

    invoke-interface {v0, p1}, LAd/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lxd/d;->a:LAd/d;

    invoke-interface {v0, p1}, LAd/d;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lxd/d;->a:LAd/d;

    invoke-interface {v0, p1}, LAd/d;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lxd/d;->a:LAd/d;

    invoke-interface {v0, p1}, LAd/d;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lxd/d;->a:LAd/d;

    invoke-interface {v0, p1}, LAd/d;->b(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
