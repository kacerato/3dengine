.class public Lb6/c$j$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb6/c$j$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Lb6/c$j$a;


# direct methods
.method public constructor <init>(Lb6/c$j$a;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$increment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lb6/c$j$a$a;->c:Lb6/c$j$a;

    iput p2, p0, Lb6/c$j$a$a;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lb6/c$j$a$a;->c:Lb6/c$j$a;

    iget-object v0, v0, Lb6/c$j$a;->b:Lb6/c$j;

    iget-object v0, v0, Lb6/c$j;->c:Lb6/c;

    iget v1, p0, Lb6/c$j$a$a;->b:F

    invoke-static {}, Lc9/d;->e()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lb6/c;->v1(Lb6/c;F)V

    iget-object v0, p0, Lb6/c$j$a$a;->c:Lb6/c$j$a;

    iget-object v0, v0, Lb6/c$j$a;->b:Lb6/c$j;

    iget-object v0, v0, Lb6/c$j;->b:LJAVARuntime/Runnable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lc9/a;->A(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
