.class public Le9/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le9/a;->b(Le9/a$b;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Le9/a$b;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Le9/a;


# direct methods
.method public constructor <init>(Le9/a;Le9/a$b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener",
            "val$userData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Le9/a$a;->d:Le9/a;

    iput-object p2, p0, Le9/a$a;->b:Le9/a$b;

    iput-object p3, p0, Le9/a$a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Le9/a$a;->b:Le9/a$b;

    iget-object v1, p0, Le9/a$a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Le9/a$b;->onBackground(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Le9/a$a$a;

    invoke-direct {v1, p0, v0}, Le9/a$a$a;-><init>(Le9/a$a;Ljava/lang/Object;)V

    invoke-static {v1}, Lc9/a;->A(Ljava/lang/Runnable;)V

    return-void
.end method
