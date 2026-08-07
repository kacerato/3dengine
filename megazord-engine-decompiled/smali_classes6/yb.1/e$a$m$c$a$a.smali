.class public Lyb/e$a$m$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI7/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/e$a$m$c$a;->a(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Lyb/e$a$m$c$a;


# direct methods
.method public constructor <init>(Lyb/e$a$m$c$a;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$3",
            "val$value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$m$c$a$a;->b:Lyb/e$a$m$c$a;

    iput p2, p0, Lyb/e$a$m$c$a$a;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LI7/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadingPanel"
        }
    .end annotation

    new-instance v0, Lyb/e$a$m$c$a$a$a;

    invoke-direct {v0, p0, p1}, Lyb/e$a$m$c$a$a$a;-><init>(Lyb/e$a$m$c$a$a;LI7/a;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
