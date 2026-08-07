.class public final Lad/c$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lad/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

.field public final b:Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

.field public final c:Ljava/lang/String;

.field public final d:Lfd/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd/m<",
            "Ljava/lang/ref/WeakReference<",
            "LYc/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Sound/Imported/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lfd/m;

    invoke-direct {v0}, Lfd/m;-><init>()V

    iput-object v0, p0, Lad/c$e;->d:Lfd/m;

    .line 4
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Sound/Imported/f$a;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iput-object v0, p0, Lad/c$e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    .line 5
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Sound/Imported/f$a;->a:Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->b:Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    iput-object v0, p0, Lad/c$e;->b:Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    .line 6
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->a:Lcom/itsmagic/engine/Engines/Sound/Imported/b;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lad/c$e;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Sound/Imported/f$a;Lad/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lad/c$e;-><init>(Lcom/itsmagic/engine/Engines/Sound/Imported/f$a;)V

    return-void
.end method

.method public static synthetic a(Lad/c$e;)Lfd/m;
    .locals 0

    iget-object p0, p0, Lad/c$e;->d:Lfd/m;

    return-object p0
.end method

.method public static synthetic b(Lad/c$e;)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
    .locals 0

    iget-object p0, p0, Lad/c$e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    return-object p0
.end method


# virtual methods
.method public c(LYc/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emitter"
        }
    .end annotation

    iget-object v0, p0, Lad/c$e;->d:Lfd/m;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lad/c$e;->d:Lfd/m;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
    .locals 1

    iget-object v0, p0, Lad/c$e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lad/c$e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;
    .locals 1

    iget-object v0, p0, Lad/c$e;->b:Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lad/c$e;->b:Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->pcmFrames:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h(LYc/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emitter"
        }
    .end annotation

    iget-object v0, p0, Lad/c$e;->d:Lfd/m;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v1

    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_2

    move v3, v4

    :goto_2
    :try_start_0
    iget-object v5, p0, Lad/c$e;->d:Lfd/m;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lad/c$e;->d:Lfd/m;

    invoke-virtual {v5, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_0

    iget-object v4, p0, Lad/c$e;->d:Lfd/m;

    invoke-virtual {v4, v5}, Lfd/m;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Lgd/b;->H(I)I

    move-result v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
