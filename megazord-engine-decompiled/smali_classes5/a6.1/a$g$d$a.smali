.class public La6/a$g$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La6/a$g$d;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:La6/a$g$d;


# direct methods
.method public constructor <init>(La6/a$g$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, La6/a$g$d$a;->b:La6/a$g$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, La6/a$g$d$a;->b:La6/a$g$d;

    iget-object v0, v0, La6/a$g$d;->a:La6/a$g;

    iget-object v0, v0, La6/a$g;->b:La6/a;

    invoke-static {v0}, La6/a;->r(La6/a;)La6/a$k;

    move-result-object v0

    iget-object v1, p0, La6/a$g$d$a;->b:La6/a$g$d;

    iget-object v1, v1, La6/a$g$d;->a:La6/a$g;

    iget-object v1, v1, La6/a$g;->b:La6/a;

    invoke-static {v1}, La6/a;->w(La6/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, La6/a$k;->i(Ljava/lang/String;)Lqc/O1;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;-><init>()V

    iput-object v1, v0, Lqc/O1;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lqc/O1;->c:Z

    iput-boolean v1, v0, Lqc/O1;->a:Z

    iget-object v0, p0, La6/a$g$d$a;->b:La6/a$g$d;

    iget-object v0, v0, La6/a$g$d;->a:La6/a$g;

    iget-object v0, v0, La6/a$g;->b:La6/a;

    invoke-static {v0}, La6/a;->r(La6/a;)La6/a$k;

    move-result-object v0

    invoke-interface {v0}, La6/a$k;->k()V

    new-instance v0, La6/a$g$d$a$a;

    invoke-direct {v0, p0}, La6/a$g$d$a$a;-><init>(La6/a$g$d$a;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
