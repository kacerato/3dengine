.class public Lv7/a$l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv7/a$l;->b(Le8/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Le8/g;

.field public final synthetic c:Lv7/a$l;


# direct methods
.method public constructor <init>(Lv7/a$l;Le8/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$tbElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lv7/a$l$b;->c:Lv7/a$l;

    iput-object p2, p0, Lv7/a$l$b;->b:Le8/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lv7/a$l$b;->c:Lv7/a$l;

    iget-object v0, v0, Lv7/a$l;->b:Lv7/a;

    invoke-static {v0}, Lv7/a;->c(Lv7/a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lv7/a$l$b;->b:Le8/g;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lv7/a$l$b;->c:Lv7/a$l;

    iget-object v0, v0, Lv7/a$l;->b:Lv7/a;

    invoke-static {v0}, Lv7/a;->c(Lv7/a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lv7/a$l$b;->b:Le8/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lv7/a$l$b;->c:Lv7/a$l;

    iget-object v0, v0, Lv7/a$l;->b:Lv7/a;

    iget-object v1, p0, Lv7/a$l$b;->b:Le8/g;

    invoke-static {v0, v1}, Lv7/a;->d(Lv7/a;Le8/g;)V

    :cond_0
    return-void
.end method
