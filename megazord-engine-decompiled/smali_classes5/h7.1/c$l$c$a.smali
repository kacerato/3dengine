.class public Lh7/c$l$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/c$l$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lh7/c$l$c;


# direct methods
.method public constructor <init>(Lh7/c$l$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lh7/c$l$c$a;->b:Lh7/c$l$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lh7/c$l$c$a;->b:Lh7/c$l$c;

    iget-object v0, v0, Lh7/c$l$c;->c:Lh7/c$l;

    iget-object v0, v0, Lh7/c$l;->c:Lh7/c;

    invoke-static {v0}, Lh7/c;->s1(Lh7/c;)V

    return-void
.end method
