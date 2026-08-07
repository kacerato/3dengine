.class public LM8/b$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM8/b;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LM8/b;


# direct methods
.method public constructor <init>(LM8/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LM8/b$j;->b:LM8/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    move-object/from16 v1, p0

    iget-object v0, v1, LM8/b$j;->b:LM8/b;

    const-string v2, "Building APK"

    const-string v3, "APK Build"

    invoke-static {v0, v2, v3}, LM8/b;->q(LM8/b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lo8/b;->f:LU8/a;

    iget-object v5, v4, LU8/a;->a:LV8/a;

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, LV8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/Builder/apk.apk"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, LU8/a;->a:LV8/a;

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, LV8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/Builder/keystore.jks"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, LU8/a;->a:LV8/a;

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, LV8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/Builder/key0.cer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v15, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, LU8/a;->a:LV8/a;

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, LV8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/Builder/key0.p8"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v10, "123456789"

    const-string v11, "key0"

    const-string v12, "123456789"

    new-instance v13, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, LU8/a;->a:LV8/a;

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, LV8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/Builder/offline_apk.apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v13, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, LU8/a;->a:LV8/a;

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v6}, LV8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/Builder/assets.zip"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    :try_start_0
    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Editor/Builder/app_release.zip"

    invoke-static {v4, v5, v0}, LM8/b;->U(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Editor/Builder/apkReleaseKeystore.jks"

    invoke-static {v4, v5, v2}, LM8/b;->U(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Editor/Builder/key0.cer"

    invoke-static {v4, v5, v15}, LM8/b;->U(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Editor/Builder/key0.p8"

    invoke-static {v4, v5, v14}, LM8/b;->U(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v16, "compiled/"

    iget-object v4, v1, LM8/b$j;->b:LM8/b;

    invoke-static {v4}, LM8/b;->r(LM8/b;)Ljava/lang/String;

    move-result-object v17

    iget-object v4, v1, LM8/b$j;->b:LM8/b;

    invoke-static {v4}, LM8/b;->s(LM8/b;)Ljava/lang/String;

    move-result-object v18

    iget-object v4, v1, LM8/b$j;->b:LM8/b;

    invoke-static {v4}, LM8/b;->t(LM8/b;)Ljava/io/File;

    move-result-object v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v9

    move-object v5, v0

    move-object v6, v13

    move-object v7, v2

    move-object/from16 v20, v2

    move v2, v8

    move-object v8, v14

    move-object/from16 v21, v9

    move-object v9, v15

    move-object/from16 v22, v13

    move-object/from16 v13, v16

    move-object/from16 v23, v14

    move-object/from16 v14, v17

    move-object/from16 v17, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    :try_start_1
    invoke-static/range {v4 .. v16}, LV3/d;->b(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    iget-object v4, v1, LM8/b$j;->b:LM8/b;

    const-string v5, "Done"

    invoke-static {v4, v5, v3}, LM8/b;->q(LM8/b;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lo8/b;->g:LM8/c;

    iget-object v3, v3, LM8/c;->a:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;

    const/4 v4, 0x3

    iput v4, v3, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;->status:I

    iget-object v3, v1, LM8/b$j;->b:LM8/b;

    invoke-static {v3}, LM8/b;->u(LM8/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".idsig"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, LM8/b$j$a;

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v3}, LM8/b$j$a;-><init>(LM8/b$j;Ljava/io/File;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v8

    iget-object v0, v1, LM8/b$j;->b:LM8/b;

    const-string v3, "APK Build Error"

    invoke-static {v0, v3}, LM8/b;->B(LM8/b;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v3, LM8/b$j$b;

    invoke-direct {v3, v1, v0}, LM8/b$j$b;-><init>(LM8/b$j;Ljava/lang/Exception;)V

    invoke-static {v3}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    iget-object v0, v1, LM8/b$j;->b:LM8/b;

    invoke-static {v0}, LM8/b;->u(LM8/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_1
    return-void
.end method
