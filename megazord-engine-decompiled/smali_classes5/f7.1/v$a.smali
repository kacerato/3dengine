.class public Lf7/v$a;
.super Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf7/v;-><init>(Lf7/H;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lf7/v;


# direct methods
.method public constructor <init>(Lf7/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lf7/v$a;->d:Lf7/v;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "ShaderGraphPreview"

    return-object v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lf7/v$a;->d:Lf7/v;

    invoke-static {v0}, Lf7/v;->g(Lf7/v;)V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lf7/v$a;->d:Lf7/v;

    invoke-static {v0}, Lf7/v;->f(Lf7/v;)V

    return-void
.end method
