.class public Lc5/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Core/Components/GIAP/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/c;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc5/c;


# direct methods
.method public constructor <init>(Lc5/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lc5/c$d;->a:Lc5/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lc5/c$d;->a:Lc5/c;

    new-instance v1, Lc5/c$d$a;

    invoke-direct {v1, p0}, Lc5/c$d$a;-><init>(Lc5/c$d;)V

    const-string v2, "P1M"

    invoke-static {v0, v2, v1}, Lc5/c;->q1(Lc5/c;Ljava/lang/String;Lc5/c$e;)V

    iget-object v0, p0, Lc5/c$d;->a:Lc5/c;

    new-instance v1, Lc5/c$d$b;

    invoke-direct {v1, p0}, Lc5/c$d$b;-><init>(Lc5/c$d;)V

    const-string v2, "P1Y"

    invoke-static {v0, v2, v1}, Lc5/c;->q1(Lc5/c;Ljava/lang/String;Lc5/c$e;)V

    return-void
.end method
