.class public Ln6/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln6/b;->h0(Ljava/io/File;Ln6/b$l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Ln6/b$l;


# direct methods
.method public constructor <init>(Ljava/io/File;Ln6/b$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$zipFile",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ln6/b$e;->b:Ljava/io/File;

    iput-object p2, p0, Ln6/b$e;->c:Ln6/b$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ln6/b$e;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r;->h(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ln6/b$e$a;

    invoke-direct {v1, p0, v0}, Ln6/b$e$a;-><init>(Ln6/b$e;Ljava/util/List;)V

    invoke-static {v1}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
