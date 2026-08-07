.class public final synthetic LQf/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/p;


# instance fields
.field public final synthetic b:[LQf/j;

.field public final synthetic c:Lkotlin/jvm/internal/m0$f;


# direct methods
.method public synthetic constructor <init>([LQf/j;Lkotlin/jvm/internal/m0$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQf/c;->b:[LQf/j;

    iput-object p2, p0, LQf/c;->c:Lkotlin/jvm/internal/m0$f;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LQf/c;->b:[LQf/j;

    iget-object v1, p0, LQf/c;->c:Lkotlin/jvm/internal/m0$f;

    check-cast p1, LFf/P0;

    check-cast p2, LQf/j$b;

    invoke-static {v0, v1, p1, p2}, LQf/e;->e([LQf/j;Lkotlin/jvm/internal/m0$f;LFf/P0;LQf/j$b;)LFf/P0;

    move-result-object p1

    return-object p1
.end method
