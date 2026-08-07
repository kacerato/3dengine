.class public final LYc/b;
.super LYc/a;
.source "SourceFile"


# instance fields
.field public final F:Lad/c$e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lad/c$e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "sharedData"
        }
    .end annotation

    invoke-virtual {p2}, Lad/c$e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lad/c$e;->f()Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, LYc/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;)V

    iput-object p2, p0, LYc/b;->F:Lad/c$e;

    invoke-virtual {p2}, Lad/c$e;->d()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object p1

    invoke-virtual {p2}, Lad/c$e;->g()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->f0(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;I)V

    return-void
.end method


# virtual methods
.method public B0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Z()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
    .locals 1

    iget-object v0, p0, LYc/b;->F:Lad/c$e;

    invoke-virtual {v0}, Lad/c$e;->d()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object v0

    return-object v0
.end method
