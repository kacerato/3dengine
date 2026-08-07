.class public LQ5/j$J$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/j$J$a$a$a;->a(LI7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LI7/a;

.field public final synthetic c:LQ5/j$J$a$a$a;


# direct methods
.method public constructor <init>(LQ5/j$J$a$a$a;LI7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$3",
            "val$loading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$J$a$a$a$a;->c:LQ5/j$J$a$a$a;

    iput-object p2, p0, LQ5/j$J$a$a$a$a;->b:LI7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, LQ5/j$J$a$a$a$a;->c:LQ5/j$J$a$a$a;

    iget-object v0, v0, LQ5/j$J$a$a$a;->b:LQ5/j$J$a$a;

    iget-object v0, v0, LQ5/j$J$a$a;->c:LQ5/j$J$a;

    iget-object v0, v0, LQ5/j$J$a;->a:LQ5/j$J;

    iget-object v0, v0, LQ5/j$J;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->G1(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    new-instance v1, Lbc/h;

    invoke-direct {v1, v0}, Lbc/h;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    iget-object v0, p0, LQ5/j$J$a$a$a$a;->c:LQ5/j$J$a$a$a;

    iget-object v0, v0, LQ5/j$J$a$a$a;->b:LQ5/j$J$a$a;

    iget v0, v0, LQ5/j$J$a$a;->a:F

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-virtual {v1, v0, v2, v3}, Lbc/h;->D(FD)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LQ5/j$J$a$a$a$a;->c:LQ5/j$J$a$a$a;

    iget-object v2, v2, LQ5/j$J$a$a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LQ5/j$J$a$a$a$a;->c:LQ5/j$J$a$a$a;

    iget-object v2, v2, LQ5/j$J$a$a$a;->b:LQ5/j$J$a$a;

    iget-object v2, v2, LQ5/j$J$a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LQ5/j$J$a$a$a$a;->c:LQ5/j$J$a$a$a;

    iget-object v2, v2, LQ5/j$J$a$a$a;->b:LQ5/j$J$a$a;

    iget v2, v2, LQ5/j$J$a$a;->a:F

    const-string v3, "_"

    const/4 v4, 0x2

    invoke-static {v2, v4, v3}, Lmd/b;->q(FILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mesh"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->n(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->r(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Z

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SUCCESS:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf8/c;->u0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LQ5/j$J$a$a$a$a;->b:LI7/a;

    invoke-virtual {v0}, LI7/a;->o1()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->FAILED_PREFIX:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf8/c;->u0(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, LQ5/j$J$a$a$a$a;->b:LI7/a;

    invoke-virtual {v0}, LI7/a;->o1()V

    return-void

    :goto_0
    iget-object v1, p0, LQ5/j$J$a$a$a$a;->b:LI7/a;

    invoke-virtual {v1}, LI7/a;->o1()V

    throw v0
.end method
