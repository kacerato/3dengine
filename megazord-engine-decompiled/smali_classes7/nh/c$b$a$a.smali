.class public Lnh/c$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI7/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnh/c$b$a;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnh/c$b$a;


# direct methods
.method public constructor <init>(Lnh/c$b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lnh/c$b$a$a;->a:Lnh/c$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LI7/a;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loading"
        }
    .end annotation

    move-object/from16 v8, p0

    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v10, LJAVARuntime/AtomicFloat;

    invoke-direct {v10}, LJAVARuntime/AtomicFloat;-><init>()V

    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v11, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v12, Lbd/N;

    invoke-direct {v12}, Lbd/N;-><init>()V

    new-instance v13, Lnh/c$b$a$a$a;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v11

    move-object v4, v10

    move-object v5, v9

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lnh/c$b$a$a$a;-><init>(Lnh/c$b$a$a;Lbd/N;Ljava/util/concurrent/atomic/AtomicBoolean;LJAVARuntime/AtomicFloat;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-static {v13}, Lc6/b;->q1(Lc6/b$b;)V

    iget-object v0, v8, Lnh/c$b$a$a;->a:Lnh/c$b$a;

    iget-object v1, v0, Lnh/c$b$a;->b:Lnh/c$b;

    iget-object v1, v1, Lnh/c$b;->a:Lnh/c$e;

    iget-object v0, v0, Lnh/c$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    invoke-interface {v1, v0}, Lnh/c$e;->b(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;)V

    iget-object v0, v8, Lnh/c$b$a$a;->a:Lnh/c$b$a;

    iget-object v13, v0, Lnh/c$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-object v0, v0, Lnh/c$b$a;->b:Lnh/c$b;

    iget-object v14, v0, Lnh/c$b;->b:Ljava/io/File;

    new-instance v15, Lnh/c$b$a$a$b;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, p1

    move-object v4, v12

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lnh/c$b$a$a$b;-><init>(Lnh/c$b$a$a;Ljava/util/concurrent/atomic/AtomicBoolean;LI7/a;Lbd/N;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;LJAVARuntime/AtomicFloat;)V

    invoke-static {v13, v14, v15}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->startImportOf(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;Ljava/io/File;Lnh/a;)V

    return-void
.end method
