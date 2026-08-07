.class public final Lcom/google/android/filament/utils/a$e;
.super LTf/q;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation runtime LTf/f;
    c = "com.google.android.filament.utils.ModelViewer$loadModelGltfAsync$1"
    f = "ModelViewer.kt"
    i = {}
    l = {
        0xed
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/filament/utils/a;->M(Ljava/nio/Buffer;Leg/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTf/q;",
        "Leg/p<",
        "Lwg/S;",
        "LQf/f<",
        "-",
        "LFf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/google/android/filament/utils/a;

.field public final synthetic d:Leg/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/l<",
            "Ljava/lang/String;",
            "Ljava/nio/Buffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/filament/utils/a;Leg/l;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/filament/utils/a;",
            "Leg/l<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/nio/Buffer;",
            ">;",
            "LQf/f<",
            "-",
            "Lcom/google/android/filament/utils/a$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/filament/utils/a$e;->c:Lcom/google/android/filament/utils/a;

    iput-object p2, p0, Lcom/google/android/filament/utils/a$e;->d:Leg/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, LTf/q;-><init>(ILQf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LQf/f;)LQf/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "LQf/f<",
            "*>;)",
            "LQf/f<",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/google/android/filament/utils/a$e;

    iget-object v0, p0, Lcom/google/android/filament/utils/a$e;->c:Lcom/google/android/filament/utils/a;

    iget-object v1, p0, Lcom/google/android/filament/utils/a$e;->d:Leg/l;

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/filament/utils/a$e;-><init>(Lcom/google/android/filament/utils/a;Leg/l;LQf/f;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lwg/S;

    check-cast p2, LQf/f;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/filament/utils/a$e;->invoke(Lwg/S;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lwg/S;LQf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/S;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/filament/utils/a$e;->create(Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    check-cast p1, Lcom/google/android/filament/utils/a$e;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, p2}, Lcom/google/android/filament/utils/a$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/filament/utils/a$e;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/filament/utils/a$e;->c:Lcom/google/android/filament/utils/a;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/a;->v()Lcom/google/android/filament/gltfio/FilamentAsset;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/filament/utils/a$e;->d:Leg/l;

    iput v2, p0, Lcom/google/android/filament/utils/a$e;->b:I

    invoke-static {p1, v1, v3, p0}, Lcom/google/android/filament/utils/a;->c(Lcom/google/android/filament/utils/a;Lcom/google/android/filament/gltfio/FilamentAsset;Leg/l;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
