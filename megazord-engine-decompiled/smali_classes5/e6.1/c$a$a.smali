.class public Le6/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le6/c$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Le6/c$a;


# direct methods
.method public constructor <init>(Le6/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Le6/c$a$a;->b:Le6/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Ops!"

    const-string v1, "Unable to download additional content:no ethernet"

    invoke-static {v0, v1}, Lr7/i;->x1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Le6/c$a$a;->b:Le6/c$a;

    iget-object v0, v0, Le6/c$a;->c:Le6/c;

    invoke-virtual {v0}, Ld6/b;->b()V

    return-void
.end method
