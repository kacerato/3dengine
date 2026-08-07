.class public final LEg/J$a;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements Leg/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LEg/J;->a(Leg/l;Ljava/lang/Object;LQf/j;)Leg/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "Leg/l<",
        "Ljava/lang/Throwable;",
        "LFf/P0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Leg/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/l<",
            "TE;",
            "LFf/P0;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final synthetic d:LQf/j;


# direct methods
.method public constructor <init>(Leg/l;Ljava/lang/Object;LQf/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/l<",
            "-TE;",
            "LFf/P0;",
            ">;TE;",
            "LQf/j;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, LEg/J$a;->b:Leg/l;

    iput-object p2, p0, LEg/J$a;->c:Ljava/lang/Object;

    iput-object p3, p0, LEg/J$a;->d:LQf/j;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LEg/J$a;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, LEg/J$a;->b:Leg/l;

    iget-object v0, p0, LEg/J$a;->c:Ljava/lang/Object;

    iget-object v1, p0, LEg/J$a;->d:LQf/j;

    invoke-static {p1, v0, v1}, LEg/J;->b(Leg/l;Ljava/lang/Object;LQf/j;)V

    return-void
.end method
