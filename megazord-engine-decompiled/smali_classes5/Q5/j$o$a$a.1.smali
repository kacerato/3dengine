.class public LQ5/j$o$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/j$o$a;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:F

.field public final synthetic c:LI7/a;

.field public final synthetic d:LQ5/j$o$a;


# direct methods
.method public constructor <init>(LQ5/j$o$a;FLI7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$strength",
            "val$progress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$o$a$a;->d:LQ5/j$o$a;

    iput p2, p0, LQ5/j$o$a$a;->b:F

    iput-object p3, p0, LQ5/j$o$a$a;->c:LI7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, LQ5/j$o$a$a;->d:LQ5/j$o$a;

    iget-object v0, v0, LQ5/j$o$a;->a:LQ5/j$o;

    iget-object v0, v0, LQ5/j$o;->a:Ljava/lang/String;

    invoke-static {v0}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lsb/a;

    iget v2, p0, LQ5/j$o$a$a;->b:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, LQ5/j$o$a$a;->d:LQ5/j$o$a;

    iget-object v4, v4, LQ5/j$o$a;->a:LQ5/j$o;

    iget-object v4, v4, LQ5/j$o;->a:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lmd/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_normal_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, LQ5/j$o$a$a;->b:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, LQ5/j$o$a$a$a;

    invoke-direct {v4, p0}, LQ5/j$o$a$a$a;-><init>(LQ5/j$o$a$a;)V

    invoke-direct {v1, v2, v0, v3, v4}, Lsb/a;-><init>(FLMb/g;Ljava/lang/String;Lsb/b;)V

    invoke-static {v1}, Lsb/c;->i(Lsb/a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->FAILED_TO_LOAD_TEXTURE:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LQ5/j$o$a$a;->d:LQ5/j$o$a;

    iget-object v1, v1, LQ5/j$o$a;->a:LQ5/j$o;

    iget-object v1, v1, LQ5/j$o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf8/c;->u0(Ljava/lang/String;)V

    iget-object v0, p0, LQ5/j$o$a$a;->c:LI7/a;

    invoke-virtual {v0}, LI7/a;->o1()V

    :goto_0
    return-void
.end method
