.class public Lmc/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmc/a;->g(Ljava/io/File;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:Lmc/a;


# direct methods
.method public constructor <init>(Lmc/a;Ljava/io/File;ILjava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$outputFile",
            "val$q",
            "val$doneRunnable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lmc/a$a;->d:Lmc/a;

    iput-object p2, p0, Lmc/a$a;->a:Ljava/io/File;

    iput p3, p0, Lmc/a$a;->b:I

    iput-object p4, p0, Lmc/a$a;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    new-instance v0, Lmc/a$a$a;

    invoke-direct {v0, p0, p1}, Lmc/a$a$a;-><init>(Lmc/a$a;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lua/c;->v(Ljava/lang/Runnable;)V

    return-void
.end method
