.class public LYb/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYb/c;->s(Ljava/io/File;LYb/a;LYb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LYb/c$g;


# direct methods
.method public constructor <init>(LYb/c$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LYb/c$f;->a:LYb/c$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setProgress(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, LYb/c$f;->a:LYb/c$g;

    invoke-interface {v0, p1}, LYb/c$g;->setProgress(F)V

    return-void
.end method
