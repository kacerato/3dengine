.class public Lx6/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx6/a;->t1(Ljava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lx6/c;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lx6/a;


# direct methods
.method public constructor <init>(Lx6/a;Lx6/c;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$downloadProgress",
            "val$finalProjectTittle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lx6/a$b;->d:Lx6/a;

    iput-object p2, p0, Lx6/a$b;->b:Lx6/c;

    iput-object p3, p0, Lx6/a$b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lx6/a$b;->d:Lx6/a;

    iget-object v1, p0, Lx6/a$b;->b:Lx6/c;

    iget-object v2, p0, Lx6/a$b;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lx6/a;->p1(Lx6/a;Lx6/c;Ljava/lang/String;)V

    return-void
.end method
