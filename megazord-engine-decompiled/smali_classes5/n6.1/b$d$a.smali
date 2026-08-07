.class public Ln6/b$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln6/b$d;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln6/b$d;


# direct methods
.method public constructor <init>(Ln6/b$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ln6/b$d$a;->a:Ln6/b$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Ln6/b$d$a;->a:Ln6/b$d;

    iget-object v0, v0, Ln6/b$d;->a:Ln6/b$l;

    const-string v1, "Failed to download repository"

    invoke-interface {v0, v1}, Ln6/b$l;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zipFile"
        }
    .end annotation

    iget-object v0, p0, Ln6/b$d$a;->a:Ln6/b$d;

    iget-object v0, v0, Ln6/b$d;->a:Ln6/b$l;

    invoke-static {p1, v0}, Ln6/b;->i(Ljava/io/File;Ln6/b$l;)V

    return-void
.end method

.method public c(IJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "progress",
            "etaInMilliSeconds",
            "downloadedBytesPerSecond"
        }
    .end annotation

    return-void
.end method
