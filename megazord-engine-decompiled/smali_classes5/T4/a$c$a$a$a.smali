.class public LT4/a$c$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI7/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LT4/a$c$a$a;->b(Lr7/c$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lr7/c$g;

.field public final synthetic b:LT4/a$c$a$a;


# direct methods
.method public constructor <init>(LT4/a$c$a$a;Lr7/c$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$3",
            "val$dialogC"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LT4/a$c$a$a$a;->b:LT4/a$c$a$a;

    iput-object p2, p0, LT4/a$c$a$a$a;->a:Lr7/c$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LI7/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadingBar"
        }
    .end annotation

    iget-object v0, p0, LT4/a$c$a$a$a;->a:Lr7/c$g;

    invoke-interface {v0}, Lr7/c$g;->dismiss()V

    new-instance v0, LT4/a$c$a$a$a$a;

    invoke-direct {v0, p0, p1}, LT4/a$c$a$a$a$a;-><init>(LT4/a$c$a$a$a;LI7/a;)V

    invoke-static {v0}, Lga/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method
