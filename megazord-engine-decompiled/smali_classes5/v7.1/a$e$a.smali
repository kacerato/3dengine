.class public Lv7/a$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv7/a$e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lv7/a$e;


# direct methods
.method public constructor <init>(Lv7/a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lv7/a$e$a;->b:Lv7/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lv7/a$e$a;->b:Lv7/a$e;

    iget-object v0, v0, Lv7/a$e;->b:Lv7/a;

    invoke-static {v0}, Lv7/a;->h(Lv7/a;)Le8/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Le8/p;->z(IZ)V

    iget-object v0, p0, Lv7/a$e$a;->b:Lv7/a$e;

    iget-object v0, v0, Lv7/a$e;->b:Lv7/a;

    invoke-static {v0}, Lv7/a;->h(Lv7/a;)Le8/p;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Le8/p;->w(I)V

    return-void
.end method
