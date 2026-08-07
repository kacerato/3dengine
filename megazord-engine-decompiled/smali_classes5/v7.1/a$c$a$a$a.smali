.class public Lv7/a$c$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv7/a$c$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lv7/a$c$a$a;


# direct methods
.method public constructor <init>(Lv7/a$c$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Lv7/a$c$a$a$a;->b:Lv7/a$c$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lv7/a$c$a$a$a;->b:Lv7/a$c$a$a;

    iget-object v0, v0, Lv7/a$c$a$a;->b:Lv7/a$c$a;

    iget-object v0, v0, Lv7/a$c$a;->a:Lv7/a$c;

    iget-object v0, v0, Lv7/a$c;->a:Lv7/a;

    invoke-static {v0}, Lv7/a;->g(Lv7/a;)V

    return-void
.end method
