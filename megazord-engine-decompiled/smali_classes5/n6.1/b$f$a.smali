.class public Ln6/b$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln6/b$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ln6/b$f;


# direct methods
.method public constructor <init>(Ln6/b$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ln6/b$f$a;->b:Ln6/b$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ln6/b$f$a;->b:Ln6/b$f;

    iget-object v0, v0, Ln6/b$f;->d:Ln6/b$l;

    const-string v1, "Failed to load repository"

    invoke-interface {v0, v1}, Ln6/b$l;->a(Ljava/lang/String;)V

    return-void
.end method
