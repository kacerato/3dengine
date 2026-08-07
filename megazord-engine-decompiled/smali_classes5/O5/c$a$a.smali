.class public LO5/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIb/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO5/c$a;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LO5/c$a;


# direct methods
.method public constructor <init>(LO5/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LO5/c$a$a;->a:LO5/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LO5/c$a$a;->a:LO5/c$a;

    iget-object v0, v0, LO5/c$a;->b:LO5/c;

    invoke-static {v0}, LO5/c;->s1(LO5/c;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, LO5/c$a$a;->a:LO5/c$a;

    iget-object v0, v0, LO5/c$a;->b:LO5/c;

    invoke-static {v0}, LO5/c;->t1(LO5/c;)V

    return-void
.end method
