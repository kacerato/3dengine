.class public Lyb/e$a$d$b$a$a$a$a;
.super Lr7/c$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/e$a$d$b$a$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyb/e$a$d$b$a$a$a;


# direct methods
.method public constructor <init>(Lyb/e$a$d$b$a$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$5"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$d$b$a$a$a$a;->a:Lyb/e$a$d$b$a$a$a;

    invoke-direct {p0}, Lr7/c$h;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lr7/c$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-super {p0, p1}, Lr7/c$h;->b(Lr7/c$g;)V

    new-instance p1, Lyb/e$a$d$b$a$a$a$a$a;

    invoke-direct {p1, p0}, Lyb/e$a$d$b$a$a$a$a$a;-><init>(Lyb/e$a$d$b$a$a$a$a;)V

    invoke-static {p1}, Lc9/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
